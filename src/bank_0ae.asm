; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0ae", ROMX[$4000], BANK[$ae]

    db $ae

    db $10                                        ; $4001: $10

Call_0ae_4002:
    inc bc                                        ; $4002: $03
    xor d                                         ; $4003: $aa
    ld [bc], a                                    ; $4004: $02
    ld d, b                                       ; $4005: $50
    nop                                           ; $4006: $00
    ld bc, $fe30                                  ; $4007: $01 $30 $fe
    ld [bc], a                                    ; $400a: $02
    nop                                           ; $400b: $00
    ld bc, $fcfc                                  ; $400c: $01 $fc $fc
    nop                                           ; $400f: $00
    nop                                           ; $4010: $00
    pop af                                        ; $4011: $f1
    ld a, [c]                                     ; $4012: $f2
    rst $20                                       ; $4013: $e7
    add sp, $0f                                   ; $4014: $e8 $0f
    ld [$401f], sp                                ; $4016: $08 $1f $40
    nop                                           ; $4019: $00
    rra                                           ; $401a: $1f
    ret nc                                        ; $401b: $d0

    ccf                                           ; $401c: $3f
    sub b                                         ; $401d: $90
    cp a                                          ; $401e: $bf
    add b                                         ; $401f: $80
    nop                                           ; $4020: $00
    nop                                           ; $4021: $00
    nop                                           ; $4022: $00
    and $07                                       ; $4023: $e6 $07
    di                                            ; $4025: $f3
    inc bc                                        ; $4026: $03
    ld sp, hl                                     ; $4027: $f9
    inc bc                                        ; $4028: $03
    db $fd                                        ; $4029: $fd
    ld bc, $fd00                                  ; $402a: $01 $00 $fd
    ld bc, $01fc                                  ; $402d: $01 $fc $01
    db $fc                                        ; $4030: $fc
    cp $c3                                        ; $4031: $fe $c3
    rst $38                                       ; $4033: $ff
    nop                                           ; $4034: $00
    ld [bc], a                                    ; $4035: $02
    inc a                                         ; $4036: $3c
    ld bc, $1884                                  ; $4037: $01 $84 $18
    ret nc                                        ; $403a: $d0

    inc e                                         ; $403b: $1c
    call c, $0e00                                 ; $403c: $dc $00 $0e
    db $ec                                        ; $403f: $ec
    ld [c], a                                     ; $4040: $e2
    ld c, $e0                                     ; $4041: $0e $e0
    ld c, $ff                                     ; $4043: $0e $ff
    nop                                           ; $4045: $00
    nop                                           ; $4046: $00
    rra                                           ; $4047: $1f
    nop                                           ; $4048: $00
    rst $28                                       ; $4049: $ef
    rrca                                          ; $404a: $0f
    rrca                                          ; $404b: $0f
    rst $08                                       ; $404c: $cf
    and b                                         ; $404d: $a0
    ret nz                                        ; $404e: $c0

    inc bc                                        ; $404f: $03
    add b                                         ; $4050: $80
    ret nz                                        ; $4051: $c0

    ld c, h                                       ; $4052: $4c
    ldh [$0e], a                                  ; $4053: $e0 $0e
    ret nz                                        ; $4055: $c0

    ld d, b                                       ; $4056: $50
    jr c, jr_0ae_4063                             ; $4057: $38 $0a

    sbc b                                         ; $4059: $98
    add b                                         ; $405a: $80
    ld b, a                                       ; $405b: $47

Jump_0ae_405c:
    nop                                           ; $405c: $00
    ld hl, sp+$05                                 ; $405d: $f8 $05
    db $fc                                        ; $405f: $fc
    db $f4                                        ; $4060: $f4
    pop af                                        ; $4061: $f1
    db $f4                                        ; $4062: $f4

jr_0ae_4063:
    pop af                                        ; $4063: $f1
    nop                                           ; $4064: $00
    pop af                                        ; $4065: $f1
    db $f4                                        ; $4066: $f4
    ldh a, [$f6]                                  ; $4067: $f0 $f6
    ld b, $f6                                     ; $4069: $06 $f6
    ccf                                           ; $406b: $3f
    add b                                         ; $406c: $80
    inc b                                         ; $406d: $04
    cp b                                          ; $406e: $b8
    ccf                                           ; $406f: $3f
    or b                                          ; $4070: $b0
    ccf                                           ; $4071: $3f
    ccf                                           ; $4072: $3f
    dec b                                         ; $4073: $05
    ld [$1f90], sp                                ; $4074: $08 $90 $1f
    ld [bc], a                                    ; $4077: $02
    ret nc                                        ; $4078: $d0

    rrca                                          ; $4079: $0f
    ld c, b                                       ; $407a: $48
    cp $fc                                        ; $407b: $fe $fc
    ld b, $02                                     ; $407d: $06 $02
    nop                                           ; $407f: $00
    db $fc                                        ; $4080: $fc
    nop                                           ; $4081: $00
    add [hl]                                      ; $4082: $86
    db $fc                                        ; $4083: $fc
    inc b                                         ; $4084: $04
    ld bc, $75fd                                  ; $4085: $01 $fd $75
    adc c                                         ; $4088: $89
    ld hl, sp+$00                                 ; $4089: $f8 $00
    ei                                            ; $408b: $fb
    rrca                                          ; $408c: $0f
    pop hl                                        ; $408d: $e1
    rrca                                          ; $408e: $0f
    ldh [rIF], a                                  ; $408f: $e0 $0f
    xor $0e                                       ; $4091: $ee $0e
    nop                                           ; $4093: $00
    xor $1d                                       ; $4094: $ee $1d
    pop de                                        ; $4096: $d1
    ld e, $c0                                     ; $4097: $1e $c0
    sbc $c0                                       ; $4099: $de $c0
    sbc [hl]                                      ; $409b: $9e
    nop                                           ; $409c: $00
    and b                                         ; $409d: $a0
    rrca                                          ; $409e: $0f
    ld b, b                                       ; $409f: $40
    ld h, h                                       ; $40a0: $64
    ld h, b                                       ; $40a1: $60
    ld h, c                                       ; $40a2: $61
    add hl, bc                                    ; $40a3: $09
    ld hl, $0c00                                  ; $40a4: $21 $00 $0c
    ret nc                                        ; $40a7: $d0

    inc d                                         ; $40a8: $14
    or b                                          ; $40a9: $b0
    and [hl]                                      ; $40aa: $a6
    or [hl]                                       ; $40ab: $b6
    and b                                         ; $40ac: $a0
    ld h, $00                                     ; $40ad: $26 $00
    stop                                          ; $40af: $10 $00
    rst $38                                       ; $40b1: $ff
    ld b, b                                       ; $40b2: $40
    ccf                                           ; $40b3: $3f
    sbc a                                         ; $40b4: $9f
    ccf                                           ; $40b5: $3f
    ld b, a                                       ; $40b6: $47
    nop                                           ; $40b7: $00
    rra                                           ; $40b8: $1f
    ldh [$cc], a                                  ; $40b9: $e0 $cc
    and b                                         ; $40bb: $a0
    xor [hl]                                      ; $40bc: $ae
    call nc, Call_0ae_4607                        ; $40bd: $d4 $07 $46
    ld b, b                                       ; $40c0: $40
    rlca                                          ; $40c1: $07
    add b                                         ; $40c2: $80
    ld d, b                                       ; $40c3: $50
    add b                                         ; $40c4: $80
    ret nz                                        ; $40c5: $c0

    ld b, b                                       ; $40c6: $40
    rlca                                          ; $40c7: $07

Jump_0ae_40c8:
    ld a, [c]                                     ; $40c8: $f2
    rst $20                                       ; $40c9: $e7
    nop                                           ; $40ca: $00
    ldh a, [$c3]                                  ; $40cb: $f0 $c3
    ldh a, [$63]                                  ; $40cd: $f0 $63
    ld [hl], b                                    ; $40cf: $70
    pop hl                                        ; $40d0: $e1

jr_0ae_40d1:
    ldh a, [$29]                                  ; $40d1: $f0 $29
    nop                                           ; $40d3: $00
    pop bc                                        ; $40d4: $c1
    inc l                                         ; $40d5: $2c
    ret nz                                        ; $40d6: $c0

    ldh [$ce], a                                  ; $40d7: $e0 $ce
    rrca                                          ; $40d9: $0f
    ld h, h                                       ; $40da: $64
    ld [hl], l                                    ; $40db: $75
    nop                                           ; $40dc: $00
    ld [hl], d                                    ; $40dd: $72
    jr c, @-$46                                   ; $40de: $38 $b8

    call z, $cb1c                                 ; $40e0: $cc $1c $cb
    cpl                                           ; $40e3: $2f
    inc d                                         ; $40e4: $14
    nop                                           ; $40e5: $00
    ldh a, [$84]                                  ; $40e6: $f0 $84
    ldh a, [$0c]                                  ; $40e8: $f0 $0c
    inc [hl]                                      ; $40ea: $34
    ldh a, [$03]                                  ; $40eb: $f0 $03
    ret nz                                        ; $40ed: $c0

    nop                                           ; $40ee: $00
    ld b, b                                       ; $40ef: $40
    ld hl, $181e                                  ; $40f0: $21 $1e $18
    ld a, d                                       ; $40f3: $7a
    ld b, b                                       ; $40f4: $40
    add d                                         ; $40f5: $82
    nop                                           ; $40f6: $00
    nop                                           ; $40f7: $00
    add d                                         ; $40f8: $82
    jr jr_0ae_40d1                                ; $40f9: $18 $d6

    add $8c                                       ; $40fb: $c6 $8c
    ld a, [hl-]                                   ; $40fd: $3a

jr_0ae_40fe:
    inc b                                         ; $40fe: $04
    ld a, d                                       ; $40ff: $7a
    nop                                           ; $4100: $00
    ld b, [hl]                                    ; $4101: $46
    ld a, [hl-]                                   ; $4102: $3a
    inc b                                         ; $4103: $04
    ld a, l                                       ; $4104: $7d
    ld h, l                                       ; $4105: $65
    ld [bc], a                                    ; $4106: $02
    dec b                                         ; $4107: $05
    ld d, $00                                     ; $4108: $16 $00
    jr @-$3e                                      ; $410a: $18 $c0

    and d                                         ; $410c: $a2
    ld b, b                                       ; $410d: $40
    ld b, $c0                                     ; $410e: $06 $c0
    ld h, a                                       ; $4110: $67
    ldh [rP1], a                                  ; $4111: $e0 $00
    ld h, a                                       ; $4113: $67
    ld [hl], a                                    ; $4114: $77
    ld [hl], b                                    ; $4115: $70
    adc a                                         ; $4116: $8f
    and b                                         ; $4117: $a0
    adc a                                         ; $4118: $8f
    ldh [$8f], a                                  ; $4119: $e0 $8f
    db $10                                        ; $411b: $10
    ret nz                                        ; $411c: $c0

    sbc a                                         ; $411d: $9f
    add b                                         ; $411e: $80
    xor [hl]                                      ; $411f: $ae
    nop                                           ; $4120: $00
    ld bc, $00fe                                  ; $4121: $01 $fe $00
    nop                                           ; $4124: $00
    nop                                           ; $4125: $00
    rst $38                                       ; $4126: $ff
    add a                                         ; $4127: $87
    nop                                           ; $4128: $00
    inc bc                                        ; $4129: $03
    jr c, jr_0ae_419d                             ; $412a: $38 $71

    ld e, h                                       ; $412c: $5c
    ld [$1b00], sp                                ; $412d: $08 $00 $1b
    jr nz, jr_0ae_4179                            ; $4130: $20 $47

    ld b, b                                       ; $4132: $40
    and b                                         ; $4133: $a0
    jr c, jr_0ae_40fe                             ; $4134: $38 $c8

    scf                                           ; $4136: $37
    nop                                           ; $4137: $00
    ld e, e                                       ; $4138: $5b
    add hl, de                                    ; $4139: $19
    add a                                         ; $413a: $87
    dec b                                         ; $413b: $05
    db $e3                                        ; $413c: $e3
    dec b                                         ; $413d: $05
    di                                            ; $413e: $f3
    jp Jump_000_0400                              ; $413f: $c3 $00 $04


    pop de                                        ; $4142: $d1
    db $10                                        ; $4143: $10
    ld h, b                                       ; $4144: $60
    ld c, a                                       ; $4145: $4f
    ld h, a                                       ; $4146: $67
    ld d, a                                       ; $4147: $57
    ld h, a                                       ; $4148: $67
    inc b                                         ; $4149: $04
    ld d, a                                       ; $414a: $57
    ldh a, [$c7]                                  ; $414b: $f0 $c7
    ldh a, [$cb]                                  ; $414d: $f0 $cb
    ld [bc], a                                    ; $414f: $02
    nop                                           ; $4150: $00
    db $eb                                        ; $4151: $eb
    db $10                                        ; $4152: $10
    ld [bc], a                                    ; $4153: $02
    dec bc                                        ; $4154: $0b
    ld e, $06                                     ; $4155: $1e $06
    push bc                                       ; $4157: $c5
    dec b                                         ; $4158: $05
    ldh a, [$57]                                  ; $4159: $f0 $57
    ld bc, $00fc                                  ; $415b: $01 $fc $00
    ld bc, $03f0                                  ; $415e: $01 $f0 $03
    adc $02                                       ; $4161: $ce $02
    ld [hl+], a                                   ; $4163: $22
    cp h                                          ; $4164: $bc
    ld a, [hl]                                    ; $4165: $7e
    nop                                           ; $4166: $00
    ld bc, $3e42                                  ; $4167: $01 $42 $3e
    rst $38                                       ; $416a: $ff
    pop bc                                        ; $416b: $c1
    ld sp, hl                                     ; $416c: $f9
    add hl, de                                    ; $416d: $19

jr_0ae_416e:
    ld [hl], b                                    ; $416e: $70
    nop                                           ; $416f: $00
    ld d, $16                                     ; $4170: $16 $16
    ld h, $02                                     ; $4172: $26 $02
    ld d, [hl]                                    ; $4174: $56
    ld e, c                                       ; $4175: $59
    add hl, hl                                    ; $4176: $29
    inc c                                         ; $4177: $0c
    nop                                           ; $4178: $00

jr_0ae_4179:
    inc c                                         ; $4179: $0c
    dec de                                        ; $417a: $1b
    ret                                           ; $417b: $c9


    call nc, $c110                                ; $417c: $d4 $10 $c1
    ld e, l                                       ; $417f: $5d
    sbc e                                         ; $4180: $9b
    nop                                           ; $4181: $00
    cpl                                           ; $4182: $2f
    ld c, c                                       ; $4183: $49
    ld sp, $0171                                  ; $4184: $31 $71 $01
    ld l, b                                       ; $4187: $68
    ld c, h                                       ; $4188: $4c
    cp a                                          ; $4189: $bf
    nop                                           ; $418a: $00
    add b                                         ; $418b: $80
    ld b, $80                                     ; $418c: $06 $80
    jr c, @-$4e                                   ; $418e: $38 $b0

jr_0ae_4190:
    ld a, $be                                     ; $4190: $3e $be
    add b                                         ; $4192: $80
    nop                                           ; $4193: $00
    cp [hl]                                       ; $4194: $be
    add c                                         ; $4195: $81
    cp h                                          ; $4196: $bc
    inc a                                         ; $4197: $3c
    add c                                         ; $4198: $81
    dec a                                         ; $4199: $3d
    ld bc, $0067                                  ; $419a: $01 $67 $00

jr_0ae_419d:
    jr nc, jr_0ae_416e                            ; $419d: $30 $cf

    ldh [$6f], a                                  ; $419f: $e0 $6f
    ld h, b                                       ; $41a1: $60
    rrca                                          ; $41a2: $0f
    ret nz                                        ; $41a3: $c0

    ld b, e                                       ; $41a4: $43
    nop                                           ; $41a5: $00
    add e                                         ; $41a6: $83
    inc e                                         ; $41a7: $1c
    call c, Call_000_1ec0                         ; $41a8: $dc $c0 $1e
    add b                                         ; $41ab: $80
    sbc [hl]                                      ; $41ac: $9e
    call z, $c000                                 ; $41ad: $cc $00 $c0
    jp nz, $80d8                                  ; $41b0: $c2 $d8 $80

    xor h                                         ; $41b3: $ac
    jr nc, @+$2a                                  ; $41b4: $30 $28

    ld [hl], b                                    ; $41b6: $70
    nop                                           ; $41b7: $00
    ld h, h                                       ; $41b8: $64
    ld h, b                                       ; $41b9: $60
    ld c, h                                       ; $41ba: $4c
    ld [$d807], sp                                ; $41bb: $08 $07 $d8
    rst $00                                       ; $41be: $c7

jr_0ae_41bf:
    inc d                                         ; $41bf: $14
    nop                                           ; $41c0: $00
    dec c                                         ; $41c1: $0d
    ld sp, hl                                     ; $41c2: $f9
    db $e4                                        ; $41c3: $e4
    ld sp, hl                                     ; $41c4: $f9
    db $f4                                        ; $41c5: $f4
    inc c                                         ; $41c6: $0c
    ld b, $0c                                     ; $41c7: $06 $0c
    nop                                           ; $41c9: $00
    ld b, $04                                     ; $41ca: $06 $04
    ld [bc], a                                    ; $41cc: $02
    dec b                                         ; $41cd: $05
    inc bc                                        ; $41ce: $03
    ld b, $03                                     ; $41cf: $06 $03
    ld [hl+], a                                   ; $41d1: $22
    nop                                           ; $41d2: $00
    ld e, $3c                                     ; $41d3: $1e $3c
    ld e, [hl]                                    ; $41d5: $5e
    inc a                                         ; $41d6: $3c
    ld e, d                                       ; $41d7: $5a
    ld [$1e64], sp                                ; $41d8: $08 $64 $1e
    nop                                           ; $41db: $00
    inc a                                         ; $41dc: $3c
    ld a, $0f                                     ; $41dd: $3e $0f
    rra                                           ; $41df: $1f
    ld l, a                                       ; $41e0: $6f

jr_0ae_41e1:
    ld l, a                                       ; $41e1: $6f
    ld [hl], b                                    ; $41e2: $70
    ld b, c                                       ; $41e3: $41
    nop                                           ; $41e4: $00
    jr c, jr_0ae_422c                             ; $41e5: $38 $45

    inc a                                         ; $41e7: $3c
    dec b                                         ; $41e8: $05

jr_0ae_41e9:
    add hl, sp                                    ; $41e9: $39
    add c                                         ; $41ea: $81
    dec e                                         ; $41eb: $1d
    pop bc                                        ; $41ec: $c1
    nop                                           ; $41ed: $00
    add hl, de                                    ; $41ee: $19
    ld h, b                                       ; $41ef: $60
    add $66                                       ; $41f0: $c6 $66
    ld h, b                                       ; $41f2: $60
    ld [hl], d                                    ; $41f3: $72
    jr @+$19                                      ; $41f4: $18 $17

    nop                                           ; $41f6: $00
    ld a, [bc]                                    ; $41f7: $0a
    ld de, $1a0d                                  ; $41f8: $11 $0d $1a
    inc d                                         ; $41fb: $14
    sbc b                                         ; $41fc: $98
    sub h                                         ; $41fd: $94
    adc b                                         ; $41fe: $88
    nop                                           ; $41ff: $00

Jump_0ae_4200:
    add h                                         ; $4200: $84
    adc b                                         ; $4201: $88
    inc b                                         ; $4202: $04
    sub b                                         ; $4203: $90
    adc h                                         ; $4204: $8c
    ld [hl+], a                                   ; $4205: $22
    inc b                                         ; $4206: $04
    inc a                                         ; $4207: $3c
    nop                                           ; $4208: $00
    add c                                         ; $4209: $81
    cp h                                          ; $420a: $bc
    add b                                         ; $420b: $80
    jr c, jr_0ae_4190                             ; $420c: $38 $82

    adc d                                         ; $420e: $8a
    add d                                         ; $420f: $82
    ld b, b                                       ; $4210: $40
    nop                                           ; $4211: $00
    or d                                          ; $4212: $b2
    ld d, b                                       ; $4213: $50
    ld a, [hl-]                                   ; $4214: $3a
    ld h, c                                       ; $4215: $61
    jr jr_0ae_41e1                                ; $4216: $18 $c9

    ldh a, [rSB]                                  ; $4218: $f0 $01
    nop                                           ; $421a: $00
    inc a                                         ; $421b: $3c
    ld bc, $7a7d                                  ; $421c: $01 $7d $7a
    inc bc                                        ; $421f: $03
    ld hl, sp+$03                                 ; $4220: $f8 $03
    ldh a, [rP1]                                  ; $4222: $f0 $00
    ld [bc], a                                    ; $4224: $02
    db $f4                                        ; $4225: $f4
    inc b                                         ; $4226: $04
    ldh [$0c], a                                  ; $4227: $e0 $0c
    ld [$3008], a                                 ; $4229: $ea $08 $30

jr_0ae_422c:
    nop                                           ; $422c: $00
    jr c, jr_0ae_41bf                             ; $422d: $38 $90

    jr @-$7e                                      ; $422f: $18 $80

    adc a                                         ; $4231: $8f
    ld b, b                                       ; $4232: $40
    rrca                                          ; $4233: $0f
    rlca                                          ; $4234: $07
    nop                                           ; $4235: $00
    ld b, a                                       ; $4236: $47
    dec de                                        ; $4237: $1b
    ld b, e                                       ; $4238: $43
    call nc, $8ee0                                ; $4239: $d4 $e0 $8e
    ldh [rSC], a                                  ; $423c: $e0 $02
    ld bc, $0201                                  ; $423e: $01 $01 $02
    ld bc, $0103                                  ; $4241: $01 $03 $01
    nop                                           ; $4244: $00
    ld bc, $0003                                  ; $4245: $01 $03 $00
    add b                                         ; $4248: $80
    ld [bc], a                                    ; $4249: $02
    nop                                           ; $424a: $00
    nop                                           ; $424b: $00
    nop                                           ; $424c: $00
    ld l, [hl]                                    ; $424d: $6e
    ld [hl], c                                    ; $424e: $71
    jr jr_0ae_41e9                                ; $424f: $18 $98

    dec bc                                        ; $4251: $0b
    nop                                           ; $4252: $00
    add h                                         ; $4253: $84
    ld c, $9d                                     ; $4254: $0e $9d
    rra                                           ; $4256: $1f
    adc [hl]                                      ; $4257: $8e
    ret nc                                        ; $4258: $d0

    rst $08                                       ; $4259: $cf
    ret c                                         ; $425a: $d8

    nop                                           ; $425b: $00
    rst $00                                       ; $425c: $c7
    add $da                                       ; $425d: $c6 $da
    ld h, d                                       ; $425f: $62
    nop                                           ; $4260: $00
    ld h, [hl]                                    ; $4261: $66
    ld h, d                                       ; $4262: $62
    inc [hl]                                      ; $4263: $34
    nop                                           ; $4264: $00
    ld l, $1c                                     ; $4265: $2e $1c
    add e                                         ; $4267: $83
    ld [$4bcb], sp                                ; $4268: $08 $cb $4b
    adc b                                         ; $426b: $88
    jp nz, RST_00                                 ; $426c: $c2 $00 $00

    ld [hl], d                                    ; $426f: $72
    add d                                         ; $4270: $82
    ld [hl], h                                    ; $4271: $74
    ldh a, [$78]                                  ; $4272: $f0 $78
    ld hl, sp+$07                                 ; $4274: $f8 $07
    nop                                           ; $4276: $00
    ld a, e                                       ; $4277: $7b
    inc e                                         ; $4278: $1c
    ld h, b                                       ; $4279: $60

jr_0ae_427a:
    inc e                                         ; $427a: $1c
    ld h, c                                       ; $427b: $61
    ld e, h                                       ; $427c: $5c
    ld h, b                                       ; $427d: $60
    jr jr_0ae_4280                                ; $427e: $18 $00

jr_0ae_4280:
    add b                                         ; $4280: $80
    sub b                                         ; $4281: $90
    pop bc                                        ; $4282: $c1
    ld sp, $74f0                                  ; $4283: $31 $f0 $74
    ld [hl+], a                                   ; $4286: $22
    ld h, [hl]                                    ; $4287: $66
    nop                                           ; $4288: $00
    add b                                         ; $4289: $80
    ld h, d                                       ; $428a: $62
    ld c, b                                       ; $428b: $48
    xor $b4                                       ; $428c: $ee $b4
    adc $96                                       ; $428e: $ce $96
    call z, $8800                                 ; $4290: $cc $00 $88
    call z, $dac5                                 ; $4293: $cc $c5 $da
    jr jr_0ae_422c                                ; $4296: $18 $94

    ld de, $0085                                  ; $4298: $11 $85 $00
    ld hl, $210d                                  ; $429b: $21 $0d $21
    ret nz                                        ; $429e: $c0

    call $1bc0                                    ; $429f: $cd $c0 $1b
    dec de                                        ; $42a2: $1b
    nop                                           ; $42a3: $00
    sbc b                                         ; $42a4: $98
    dec sp                                        ; $42a5: $3b
    cp c                                          ; $42a6: $b9
    ld a, [hl+]                                   ; $42a7: $2a
    ldh [$2d], a                                  ; $42a8: $e0 $2d
    ldh [$c4], a                                  ; $42aa: $e0 $c4
    ld bc, $8024                                  ; $42ac: $01 $24 $80
    ld a, e                                       ; $42af: $7b
    nop                                           ; $42b0: $00
    add b                                         ; $42b1: $80
    add b                                         ; $42b2: $80
    nop                                           ; $42b3: $00
    ld a, l                                       ; $42b4: $7d
    ld [bc], a                                    ; $42b5: $02
    add b                                         ; $42b6: $80
    ld c, a                                       ; $42b7: $4f
    ld [hl], d                                    ; $42b8: $72
    db $e4                                        ; $42b9: $e4
    add sp, -$14                                  ; $42ba: $e8 $ec
    dec c                                         ; $42bc: $0d
    ld l, b                                       ; $42bd: $68
    add hl, bc                                    ; $42be: $09
    ldh a, [rP1]                                  ; $42bf: $f0 $00
    add e                                         ; $42c1: $83
    ldh a, [$80]                                  ; $42c2: $f0 $80
    ld hl, $381e                                  ; $42c4: $21 $1e $38
    daa                                           ; $42c7: $27
    rrca                                          ; $42c8: $0f
    nop                                           ; $42c9: $00
    inc sp                                        ; $42ca: $33
    ld a, [$8502]                                 ; $42cb: $fa $02 $85
    ld a, c                                       ; $42ce: $79
    pop bc                                        ; $42cf: $c1
    dec a                                         ; $42d0: $3d
    jp nz, Jump_0ae_7c00                          ; $42d1: $c2 $00 $7c

Jump_0ae_42d4:
    nop                                           ; $42d4: $00
    nop                                           ; $42d5: $00
    db $e3                                        ; $42d6: $e3
    inc hl                                        ; $42d7: $23
    ld sp, $0fc1                                  ; $42d8: $31 $c1 $0f
    nop                                           ; $42db: $00
    pop af                                        ; $42dc: $f1
    sub c                                         ; $42dd: $91
    ld b, b                                       ; $42de: $40

jr_0ae_42df:
    ld b, l                                       ; $42df: $45
    inc b                                         ; $42e0: $04
    adc l                                         ; $42e1: $8d
    sub e                                         ; $42e2: $93
    call c, $c200                                 ; $42e3: $dc $00 $c2
    nop                                           ; $42e6: $00
    nop                                           ; $42e7: $00
    pop hl                                        ; $42e8: $e1
    ld a, a                                       ; $42e9: $7f
    ldh a, [$cf]                                  ; $42ea: $f0 $cf
    inc e                                         ; $42ec: $1c
    nop                                           ; $42ed: $00
    inc de                                        ; $42ee: $13
    inc e                                         ; $42ef: $1c
    jr nz, jr_0ae_427a                            ; $42f0: $20 $88

    jp nz, $e656                                  ; $42f2: $c2 $56 $e6

    or h                                          ; $42f5: $b4
    nop                                           ; $42f6: $00
    ld c, h                                       ; $42f7: $4c
    nop                                           ; $42f8: $00
    nop                                           ; $42f9: $00
    ld a, [hl]                                    ; $42fa: $7e
    db $d3                                        ; $42fb: $d3
    add e                                         ; $42fc: $83
    ld b, h                                       ; $42fd: $44
    rst $00                                       ; $42fe: $c7
    nop                                           ; $42ff: $00
    jp hl                                         ; $4300: $e9


    halt                                          ; $4301: $76
    ld [hl], e                                    ; $4302: $73
    ld [hl], h                                    ; $4303: $74
    ld [hl], a                                    ; $4304: $77
    ld a, [c]                                     ; $4305: $f2
    ld b, $e6                                     ; $4306: $06 $e6
    nop                                           ; $4308: $00
    ld c, $03                                     ; $4309: $0e $03
    dec c                                         ; $430b: $0d
    rst $20                                       ; $430c: $e7
    dec de                                        ; $430d: $1b
    inc c                                         ; $430e: $0c
    ldh a, [rNR32]                                ; $430f: $f0 $1c
    ld b, b                                       ; $4311: $40
    db $e4                                        ; $4312: $e4
    or b                                          ; $4313: $b0
    ld l, d                                       ; $4314: $6a
    db $10                                        ; $4315: $10
    inc bc                                        ; $4316: $03
    add $02                                       ; $4317: $c6 $02
    ld b, h                                       ; $4319: $44
    nop                                           ; $431a: $00
    ld bc, $ff30                                  ; $431b: $01 $30 $ff
    nop                                           ; $431e: $00
    cp $02                                        ; $431f: $fe $02
    nop                                           ; $4321: $00
    db $fc                                        ; $4322: $fc
    nop                                           ; $4323: $00
    nop                                           ; $4324: $00
    dec b                                         ; $4325: $05
    db $fc                                        ; $4326: $fc
    inc b                                         ; $4327: $04
    db $fc                                        ; $4328: $fc
    nop                                           ; $4329: $00
    db $fc                                        ; $432a: $fc
    inc bc                                        ; $432b: $03
    ld [c], a                                     ; $432c: $e2
    nop                                           ; $432d: $00
    ld [$2707], sp                                ; $432e: $08 $07 $27
    dec a                                         ; $4331: $3d
    inc bc                                        ; $4332: $03
    ld h, l                                       ; $4333: $65
    nop                                           ; $4334: $00
    nop                                           ; $4335: $00
    nop                                           ; $4336: $00
    cp $7c                                        ; $4337: $fe $7c
    ld [$0207], sp                                ; $4339: $08 $07 $02
    rlca                                          ; $433c: $07
    rst $38                                       ; $433d: $ff
    ld b, $00                                     ; $433e: $06 $00
    dec c                                         ; $4340: $0d
    ei                                            ; $4341: $fb
    dec e                                         ; $4342: $1d
    ld sp, hl                                     ; $4343: $f9
    ld a, [hl+]                                   ; $4344: $2a
    rlc e                                         ; $4345: $cb $03
    ccf                                           ; $4347: $3f
    nop                                           ; $4348: $00
    inc bc                                        ; $4349: $03
    dec e                                         ; $434a: $1d
    adc $0f                                       ; $434b: $ce $0f
    ldh [$86], a                                  ; $434d: $e0 $86
    ret                                           ; $434f: $c9


    pop af                                        ; $4350: $f1
    ld [bc], a                                    ; $4351: $02
    inc b                                         ; $4352: $04
    adc a                                         ; $4353: $8f
    inc d                                         ; $4354: $14
    jr c, jr_0ae_43be                             ; $4355: $38 $67

    ld [hl+], a                                   ; $4357: $22
    dec sp                                        ; $4358: $3b
    jr jr_0ae_439b                                ; $4359: $18 $40

    nop                                           ; $435b: $00
    ccf                                           ; $435c: $3f
    jr nz, jr_0ae_42df                            ; $435d: $20 $80

    ld sp, $8391                                  ; $435f: $31 $91 $83
    ret nz                                        ; $4362: $c0

    inc bc                                        ; $4363: $03
    nop                                           ; $4364: $00
    add b                                         ; $4365: $80
    nop                                           ; $4366: $00
    rst $30                                       ; $4367: $f7
    inc c                                         ; $4368: $0c
    rst $30                                       ; $4369: $f7
    db $10                                        ; $436a: $10
    ld [$0008], sp                                ; $436b: $08 $08 $00
    jr jr_0ae_4373                                ; $436e: $18 $03

    db $e3                                        ; $4370: $e3
    add a                                         ; $4371: $87
    scf                                           ; $4372: $37

jr_0ae_4373:
    and b                                         ; $4373: $a0
    cpl                                           ; $4374: $2f
    add b                                         ; $4375: $80
    ld h, d                                       ; $4376: $62
    rra                                           ; $4377: $1f
    ld h, b                                       ; $4378: $60
    jr c, @+$6c                                   ; $4379: $38 $6a

jr_0ae_437b:
    jr jr_0ae_437b                                ; $437b: $18 $fe

    nop                                           ; $437d: $00
    db $fd                                        ; $437e: $fd
    ld l, b                                       ; $437f: $68
    nop                                           ; $4380: $00
    nop                                           ; $4381: $00
    nop                                           ; $4382: $00
    cp $01                                        ; $4383: $fe $01
    db $fc                                        ; $4385: $fc
    inc bc                                        ; $4386: $03
    nop                                           ; $4387: $00
    ld b, $03                                     ; $4388: $06 $03
    ldh a, [rP1]                                  ; $438a: $f0 $00
    ld a, [c]                                     ; $438c: $f2
    rrca                                          ; $438d: $0f
    ld [de], a                                    ; $438e: $12
    ccf                                           ; $438f: $3f
    ld b, $78                                     ; $4390: $06 $78
    ld b, a                                       ; $4392: $47
    jp $2e00                                      ; $4393: $c3 $00 $2e


    add b                                         ; $4396: $80
    sbc [hl]                                      ; $4397: $9e
    ld de, $1539                                  ; $4398: $11 $39 $15

jr_0ae_439b:
    ld l, a                                       ; $439b: $6f
    xor e                                         ; $439c: $ab
    nop                                           ; $439d: $00
    ret nz                                        ; $439e: $c0

    jp Jump_000_0c0f                              ; $439f: $c3 $0f $0c


    call c, $cacc                                 ; $43a2: $dc $cc $ca
    nop                                           ; $43a5: $00
    nop                                           ; $43a6: $00
    add hl, bc                                    ; $43a7: $09
    add hl, sp                                    ; $43a8: $39
    rlca                                          ; $43a9: $07
    db $f4                                        ; $43aa: $f4
    ld c, e                                       ; $43ab: $4b
    ldh [rSVBK], a                                ; $43ac: $e0 $70
    inc b                                         ; $43ae: $04
    nop                                           ; $43af: $00
    ld b, $1f                                     ; $43b0: $06 $1f
    jp nz, $c37f                                  ; $43b2: $c2 $7f $c3

    push hl                                       ; $43b5: $e5
    add d                                         ; $43b6: $82
    nop                                           ; $43b7: $00
    nop                                           ; $43b8: $00
    ld e, e                                       ; $43b9: $5b
    ld e, e                                       ; $43ba: $5b
    db $e4                                        ; $43bb: $e4
    add a                                         ; $43bc: $87
    ld c, b                                       ; $43bd: $48

jr_0ae_43be:
    rst $18                                       ; $43be: $df
    ld d, b                                       ; $43bf: $50
    ld a, a                                       ; $43c0: $7f
    nop                                           ; $43c1: $00
    and b                                         ; $43c2: $a0
    ld b, a                                       ; $43c3: $47
    ld e, [hl]                                    ; $43c4: $5e
    and c                                         ; $43c5: $a1
    db $fc                                        ; $43c6: $fc
    ld [hl+], a                                   ; $43c7: $22
    ld a, h                                       ; $43c8: $7c
    ld l, [hl]                                    ; $43c9: $6e
    nop                                           ; $43ca: $00
    ldh [$2f], a                                  ; $43cb: $e0 $2f
    and b                                         ; $43cd: $a0
    or c                                          ; $43ce: $b1
    add b                                         ; $43cf: $80
    call nz, $e634                                ; $43d0: $c4 $34 $e6
    nop                                           ; $43d3: $00
    ld b, $9f                                     ; $43d4: $06 $9f
    ld e, a                                       ; $43d6: $5f
    rst $08                                       ; $43d7: $cf
    cpl                                           ; $43d8: $2f
    ldh [$b0], a                                  ; $43d9: $e0 $b0
    ld [hl], b                                    ; $43db: $70
    nop                                           ; $43dc: $00
    add b                                         ; $43dd: $80
    inc a                                         ; $43de: $3c
    inc b                                         ; $43df: $04
    adc b                                         ; $43e0: $88
    add d                                         ; $43e1: $82
    dec b                                         ; $43e2: $05
    ld [$4040], sp                                ; $43e3: $08 $40 $40
    ld a, e                                       ; $43e6: $7b
    adc $30                                       ; $43e7: $ce $30
    rst $38                                       ; $43e9: $ff
    rra                                           ; $43ea: $1f
    adc a                                         ; $43eb: $8f
    and b                                         ; $43ec: $a0
    cpl                                           ; $43ed: $2f
    and b                                         ; $43ee: $a0
    nop                                           ; $43ef: $00
    cpl                                           ; $43f0: $2f
    pop af                                        ; $43f1: $f1
    or $18                                        ; $43f2: $f6 $18
    rra                                           ; $43f4: $1f
    ld a, [hl-]                                   ; $43f5: $3a
    inc [hl]                                      ; $43f6: $34
    ld [hl], b                                    ; $43f7: $70
    nop                                           ; $43f8: $00
    ld l, b                                       ; $43f9: $68
    ldh a, [$e0]                                  ; $43fa: $f0 $e0
    ld [hl+], a                                   ; $43fc: $22
    jp nz, $c224                                  ; $43fd: $c2 $24 $c2

    db $ec                                        ; $4400: $ec
    nop                                           ; $4401: $00
    add $17                                       ; $4402: $c6 $17
    sbc $54                                       ; $4404: $de $54
    sbc c                                         ; $4406: $99
    ld c, b                                       ; $4407: $48
    add h                                         ; $4408: $84
    and h                                         ; $4409: $a4
    nop                                           ; $440a: $00
    ld a, [hl+]                                   ; $440b: $2a
    sub h                                         ; $440c: $94
    ld a, [de]                                    ; $440d: $1a
    ld e, b                                       ; $440e: $58
    ld e, $58                                     ; $440f: $1e $58
    ld a, [de]                                    ; $4411: $1a
    inc e                                         ; $4412: $1c
    nop                                           ; $4413: $00
    ld l, b                                       ; $4414: $68
    call nz, $8146                                ; $4415: $c4 $46 $81
    ret nz                                        ; $4418: $c0

    db $e3                                        ; $4419: $e3

jr_0ae_441a:
    pop hl                                        ; $441a: $e1
    ret nz                                        ; $441b: $c0

    nop                                           ; $441c: $00
    and c                                         ; $441d: $a1
    ld a, [hl+]                                   ; $441e: $2a
    ld a, [de]                                    ; $441f: $1a
    adc b                                         ; $4420: $88
    ld c, e                                       ; $4421: $4b
    ldh [rDIV], a                                 ; $4422: $e0 $04
    jp z, Jump_000_3a00                           ; $4424: $ca $00 $3a

    ld l, h                                       ; $4427: $6c
    pop de                                        ; $4428: $d1
    ld c, h                                       ; $4429: $4c
    ld d, c                                       ; $442a: $51
    and d                                         ; $442b: $a2
    ld a, [de]                                    ; $442c: $1a
    ld d, h                                       ; $442d: $54
    nop                                           ; $442e: $00
    and h                                         ; $442f: $a4
    ret c                                         ; $4430: $d8

    jp Jump_000_2620                              ; $4431: $c3 $20 $26


    add hl, de                                    ; $4434: $19
    ret c                                         ; $4435: $d8

    cpl                                           ; $4436: $2f
    nop                                           ; $4437: $00
    xor b                                         ; $4438: $a8
    sub a                                         ; $4439: $97
    ld h, e                                       ; $443a: $63
    db $d3                                        ; $443b: $d3
    dec bc                                        ; $443c: $0b
    ld [hl+], a                                   ; $443d: $22
    ld sp, hl                                     ; $443e: $f9
    and b                                         ; $443f: $a0
    nop                                           ; $4440: $00
    ld a, b                                       ; $4441: $78
    ld e, e                                       ; $4442: $5b
    and b                                         ; $4443: $a0
    cp e                                          ; $4444: $bb
    ret nz                                        ; $4445: $c0

    add hl, de                                    ; $4446: $19
    and d                                         ; $4447: $a2
    ld e, e                                       ; $4448: $5b
    nop                                           ; $4449: $00
    ld l, b                                       ; $444a: $68
    dec de                                        ; $444b: $1b
    add e                                         ; $444c: $83
    adc b                                         ; $444d: $88
    jp $ebe3                                      ; $444e: $c3 $e3 $eb


    inc sp                                        ; $4451: $33
    nop                                           ; $4452: $00
    ld h, e                                       ; $4453: $63

Call_0ae_4454:
    ret nc                                        ; $4454: $d0

    inc de                                        ; $4455: $13
    add sp, $09                                   ; $4456: $e8 $09
    jr nc, jr_0ae_441a                            ; $4458: $30 $c0

    add hl, sp                                    ; $445a: $39
    nop                                           ; $445b: $00
    pop bc                                        ; $445c: $c1
    adc a                                         ; $445d: $8f
    cpl                                           ; $445e: $2f
    adc a                                         ; $445f: $8f
    ccf                                           ; $4460: $3f
    add b                                         ; $4461: $80
    add h                                         ; $4462: $84
    add [hl]                                      ; $4463: $86
    nop                                           ; $4464: $00
    adc b                                         ; $4465: $88
    add e                                         ; $4466: $83
    rlca                                          ; $4467: $07
    pop bc                                        ; $4468: $c1
    rlca                                          ; $4469: $07
    ret nz                                        ; $446a: $c0

    rlca                                          ; $446b: $07
    ld h, h                                       ; $446c: $64
    nop                                           ; $446d: $00
    rlca                                          ; $446e: $07
    halt                                          ; $446f: $76
    ld c, b                                       ; $4470: $48
    ld e, b                                       ; $4471: $58
    ld b, a                                       ; $4472: $47
    ld d, b                                       ; $4473: $50
    ld c, h                                       ; $4474: $4c
    jr c, jr_0ae_4477                             ; $4475: $38 $00

jr_0ae_4477:
    inc d                                         ; $4477: $14
    jr nc, jr_0ae_44a2                            ; $4478: $30 $28

    nop                                           ; $447a: $00
    inc e                                         ; $447b: $1c
    ld a, b                                       ; $447c: $78
    ld e, b                                       ; $447d: $58
    ld [$7000], sp                                ; $447e: $08 $00 $70
    ld e, $4c                                     ; $4481: $1e $4c
    inc bc                                        ; $4483: $03
    jp nz, $8401                                  ; $4484: $c2 $01 $84

    inc e                                         ; $4487: $1c
    nop                                           ; $4488: $00
    inc h                                         ; $4489: $24
    inc a                                         ; $448a: $3c
    ld b, [hl]                                    ; $448b: $46
    ld a, c                                       ; $448c: $79
    ld b, $fa                                     ; $448d: $06 $fa
    add l                                         ; $448f: $85
    call $3e00                                    ; $4490: $cd $00 $3e
    pop hl                                        ; $4493: $e1
    add hl, de                                    ; $4494: $19
    ldh [$98], a                                  ; $4495: $e0 $98
    ld hl, sp+$03                                 ; $4497: $f8 $03
    rlca                                          ; $4499: $07
    nop                                           ; $449a: $00
    pop af                                        ; $449b: $f1
    rrca                                          ; $449c: $0f
    ld bc, $c7e0                                  ; $449d: $01 $e0 $c7
    xor $0f                                       ; $44a0: $ee $0f

jr_0ae_44a2:
    ld b, b                                       ; $44a2: $40
    nop                                           ; $44a3: $00
    sbc $20                                       ; $44a4: $de $20
    ld [$6707], sp                                ; $44a6: $08 $07 $67
    ld b, [hl]                                    ; $44a9: $46
    ld h, c                                       ; $44aa: $61
    jr jr_0ae_44ad                                ; $44ab: $18 $00

jr_0ae_44ad:
    ld b, a                                       ; $44ad: $47
    dec d                                         ; $44ae: $15
    add e                                         ; $44af: $83
    ld b, e                                       ; $44b0: $43
    pop bc                                        ; $44b1: $c1
    ld a, [hl-]                                   ; $44b2: $3a
    xor e                                         ; $44b3: $ab
    ld e, b                                       ; $44b4: $58
    nop                                           ; $44b5: $00
    inc hl                                        ; $44b6: $23
    jp c, $f04a                                   ; $44b7: $da $4a $f0

    rla                                           ; $44ba: $17
    inc bc                                        ; $44bb: $03
    ccf                                           ; $44bc: $3f
    rrca                                          ; $44bd: $0f
    nop                                           ; $44be: $00
    and d                                         ; $44bf: $a2
    ld b, $60                                     ; $44c0: $06 $60
    ld [hl], c                                    ; $44c2: $71
    add hl, de                                    ; $44c3: $19
    ld [$0b6c], sp                                ; $44c4: $08 $6c $0b
    nop                                           ; $44c7: $00
    ld h, e                                       ; $44c8: $63
    ld h, c                                       ; $44c9: $61
    ld a, b                                       ; $44ca: $78
    add c                                         ; $44cb: $81
    inc a                                         ; $44cc: $3c
    dec c                                         ; $44cd: $0d
    call z, Call_000_000d                         ; $44ce: $cc $0d $00
    db $ec                                        ; $44d1: $ec
    pop hl                                        ; $44d2: $e1
    ldh a, [$c1]                                  ; $44d3: $f0 $c1
    or b                                          ; $44d5: $b0
    sbc c                                         ; $44d6: $99
    cp b                                          ; $44d7: $b8
    ld hl, $2c00                                  ; $44d8: $21 $00 $2c
    ld [bc], a                                    ; $44db: $02
    add l                                         ; $44dc: $85
    jp z, $e885                                   ; $44dd: $ca $85 $e8

    add $e8                                       ; $44e0: $c6 $e8
    nop                                           ; $44e2: $00
    db $e4                                        ; $44e3: $e4
    adc h                                         ; $44e4: $8c
    ld d, h                                       ; $44e5: $54
    call z, $cf10                                 ; $44e6: $cc $10 $cf
    rla                                           ; $44e9: $17
    rst $08                                       ; $44ea: $cf
    ld de, $1c17                                  ; $44eb: $11 $17 $1c
    ld h, h                                       ; $44ee: $64
    ld [bc], a                                    ; $44ef: $02
    db $10                                        ; $44f0: $10
    ld h, l                                       ; $44f1: $65
    dec e                                         ; $44f2: $1d
    ld h, l                                       ; $44f3: $65
    ld b, $08                                     ; $44f4: $06 $08
    nop                                           ; $44f6: $00
    ld e, h                                       ; $44f7: $5c

jr_0ae_44f8:
    ld h, l                                       ; $44f8: $65
    cp h                                          ; $44f9: $bc
    ld [hl], b                                    ; $44fa: $70
    dec d                                         ; $44fb: $15
    jp hl                                         ; $44fc: $e9


    ld bc, $00ed                                  ; $44fd: $01 $ed $00
    ret z                                         ; $4500: $c8

    db $e4                                        ; $4501: $e4
    pop bc                                        ; $4502: $c1

Jump_0ae_4503:
    halt                                          ; $4503: $76
    dec hl                                        ; $4504: $2b
    or b                                          ; $4505: $b0
    cp d                                          ; $4506: $ba
    halt                                          ; $4507: $76
    nop                                           ; $4508: $00
    inc d                                         ; $4509: $14
    inc sp                                        ; $450a: $33
    ld b, c                                       ; $450b: $41
    dec a                                         ; $450c: $3d
    dec de                                        ; $450d: $1b
    ld a, [$e227]                                 ; $450e: $fa $27 $e2
    nop                                           ; $4511: $00
    dec [hl]                                      ; $4512: $35
    ld [de], a                                    ; $4513: $12
    ld d, b                                       ; $4514: $50
    sub a                                         ; $4515: $97
    add a                                         ; $4516: $87
    inc de                                        ; $4517: $13
    dec b                                         ; $4518: $05
    inc de                                        ; $4519: $13
    nop                                           ; $451a: $00
    inc bc                                        ; $451b: $03
    inc bc                                        ; $451c: $03
    or b                                          ; $451d: $b0
    ld h, [hl]                                    ; $451e: $66
    ldh [$2c], a                                  ; $451f: $e0 $2c
    ldh [$d1], a                                  ; $4521: $e0 $d1
    nop                                           ; $4523: $00
    jr nz, jr_0ae_44f8                            ; $4524: $20 $d2

    ld [c], a                                     ; $4526: $e2
    rst $30                                       ; $4527: $f7
    cp $e7                                        ; $4528: $fe $e7
    cp $02                                        ; $452a: $fe $02
    nop                                           ; $452c: $00
    db $fc                                        ; $452d: $fc
    dec b                                         ; $452e: $05
    ldh [$ab], a                                  ; $452f: $e0 $ab
    db $eb                                        ; $4531: $eb
    ldh [$8a], a                                  ; $4532: $e0 $8a
    add hl, bc                                    ; $4534: $09
    nop                                           ; $4535: $00
    adc d                                         ; $4536: $8a
    ld [hl], c                                    ; $4537: $71

jr_0ae_4538:
    ret nz                                        ; $4538: $c0

    nop                                           ; $4539: $00
    ldh a, [$28]                                  ; $453a: $f0 $28
    ld [c], a                                     ; $453c: $e2
    db $e4                                        ; $453d: $e4
    nop                                           ; $453e: $00
    jr nc, jr_0ae_4574                            ; $453f: $30 $33

    adc c                                         ; $4541: $89
    ld c, c                                       ; $4542: $49
    or l                                          ; $4543: $b5
    ld b, l                                       ; $4544: $45
    ldh [$90], a                                  ; $4545: $e0 $90
    nop                                           ; $4547: $00
    db $fc                                        ; $4548: $fc
    ldh [$8a], a                                  ; $4549: $e0 $8a
    ld d, $05                                     ; $454b: $16 $05
    inc bc                                        ; $454d: $03
    ld a, b                                       ; $454e: $78
    add b                                         ; $454f: $80
    nop                                           ; $4550: $00
    ld b, [hl]                                    ; $4551: $46
    ldh [$8f], a                                  ; $4552: $e0 $8f
    scf                                           ; $4554: $37
    adc a                                         ; $4555: $8f
    or a                                          ; $4556: $b7
    sbc a                                         ; $4557: $9f
    xor a                                         ; $4558: $af
    nop                                           ; $4559: $00
    rra                                           ; $455a: $1f
    ld l, a                                       ; $455b: $6f
    ld h, b                                       ; $455c: $60
    ld e, a                                       ; $455d: $5f
    ld h, b                                       ; $455e: $60
    ld e, a                                       ; $455f: $5f
    jr nz, @-$3e                                  ; $4560: $20 $c0

    nop                                           ; $4562: $00
    ld h, b                                       ; $4563: $60
    ret nz                                        ; $4564: $c0

    inc e                                         ; $4565: $1c
    dec h                                         ; $4566: $25
    inc c                                         ; $4567: $0c
    dec [hl]                                      ; $4568: $35
    jr jr_0ae_456c                                ; $4569: $18 $01

    nop                                           ; $456b: $00

jr_0ae_456c:
    nop                                           ; $456c: $00
    ret nz                                        ; $456d: $c0

    jr jr_0ae_4538                                ; $456e: $18 $c8

    inc c                                         ; $4570: $0c
    ldh [rTAC], a                                 ; $4571: $e0 $07
    pop af                                        ; $4573: $f1

jr_0ae_4574:
    nop                                           ; $4574: $00
    ei                                            ; $4575: $fb
    ld hl, sp+$14                                 ; $4576: $f8 $14
    ld [$645c], sp                                ; $4578: $08 $5c $64
    jp hl                                         ; $457b: $e9


    pop de                                        ; $457c: $d1
    nop                                           ; $457d: $00
    inc bc                                        ; $457e: $03
    ld [hl], a                                    ; $457f: $77
    ld h, a                                       ; $4580: $67
    ld [hl-], a                                   ; $4581: $32
    xor e                                         ; $4582: $ab
    ld h, h                                       ; $4583: $64
    rla                                           ; $4584: $17
    ld [$c000], sp                                ; $4585: $08 $00 $c0
    ld c, a                                       ; $4588: $4f
    add hl, de                                    ; $4589: $19
    add e                                         ; $458a: $83
    inc e                                         ; $458b: $1c
    ld sp, $e8bd                                  ; $458c: $31 $bd $e8
    nop                                           ; $458f: $00
    ld a, h                                       ; $4590: $7c
    ret nc                                        ; $4591: $d0

    ld hl, sp-$50                                 ; $4592: $f8 $b0
    ld a, [$c00b]                                 ; $4594: $fa $0b $c0
    rlca                                          ; $4597: $07
    nop                                           ; $4598: $00
    inc bc                                        ; $4599: $03
    inc e                                         ; $459a: $1c
    ld a, [bc]                                    ; $459b: $0a
    pop af                                        ; $459c: $f1
    adc d                                         ; $459d: $8a
    ld a, d                                       ; $459e: $7a
    ldh a, [$f8]                                  ; $459f: $f0 $f8
    nop                                           ; $45a1: $00
    ld hl, sp-$0f                                 ; $45a2: $f8 $f1
    ld a, b                                       ; $45a4: $78
    ld sp, hl                                     ; $45a5: $f9
    ld a, h                                       ; $45a6: $7c
    add hl, sp                                    ; $45a7: $39
    add b                                         ; $45a8: $80
    inc a                                         ; $45a9: $3c
    nop                                           ; $45aa: $00
    and b                                         ; $45ab: $a0
    ld a, $c8                                     ; $45ac: $3e $c8
    dec bc                                        ; $45ae: $0b
    nop                                           ; $45af: $00
    ld h, e                                       ; $45b0: $63
    ldh [$f8], a                                  ; $45b1: $e0 $f8
    nop                                           ; $45b3: $00
    ld a, [c]                                     ; $45b4: $f2
    inc a                                         ; $45b5: $3c
    ld b, $1a                                     ; $45b6: $06 $1a
    rlca                                          ; $45b8: $07
    add hl, de                                    ; $45b9: $19
    inc bc                                        ; $45ba: $03
    dec e                                         ; $45bb: $1d
    nop                                           ; $45bc: $00
    inc bc                                        ; $45bd: $03
    dec e                                         ; $45be: $1d
    ret c                                         ; $45bf: $d8

    ret z                                         ; $45c0: $c8

    cp h                                          ; $45c1: $bc
    add c                                         ; $45c2: $81
    ld a, h                                       ; $45c3: $7c
    ld bc, $fc00                                  ; $45c4: $01 $00 $fc
    and c                                         ; $45c7: $a1
    dec c                                         ; $45c8: $0d
    ld [hl], c                                    ; $45c9: $71
    inc bc                                        ; $45ca: $03
    cp d                                          ; $45cb: $ba
    add d                                         ; $45cc: $82
    sbc c                                         ; $45cd: $99
    nop                                           ; $45ce: $00
    add c                                         ; $45cf: $81
    jp c, $80c0                                   ; $45d0: $da $c0 $80

    ld b, b                                       ; $45d3: $40
    add b                                         ; $45d4: $80
    ld b, b                                       ; $45d5: $40
    ret nz                                        ; $45d6: $c0

    ld [bc], a                                    ; $45d7: $02
    add b                                         ; $45d8: $80
    nop                                           ; $45d9: $00
    nop                                           ; $45da: $00
    add b                                         ; $45db: $80
    add b                                         ; $45dc: $80
    nop                                           ; $45dd: $00
    ld b, $00                                     ; $45de: $06 $00
    nop                                           ; $45e0: $00
    jr @-$02                                      ; $45e1: $18 $fc

    db $fd                                        ; $45e3: $fd
    cp $9a                                        ; $45e4: $fe $9a
    ld [bc], a                                    ; $45e6: $02
    and [hl]                                      ; $45e7: $a6
    ld a, [hl-]                                   ; $45e8: $3a
    ldh [rP1], a                                  ; $45e9: $e0 $00
    nop                                           ; $45eb: $00
    nop                                           ; $45ec: $00
    ld c, $e0                                     ; $45ed: $0e $e0
    adc [hl]                                      ; $45ef: $8e
    ldh a, [$86]                                  ; $45f0: $f0 $86
    ldh a, [$80]                                  ; $45f2: $f0 $80
    ld hl, $1e00                                  ; $45f4: $21 $00 $1e
    jr c, jr_0ae_4620                             ; $45f7: $38 $27

    rrca                                          ; $45f9: $0f
    inc sp                                        ; $45fa: $33
    ld b, a                                       ; $45fb: $47
    ld a, c                                       ; $45fc: $79
    rra                                           ; $45fd: $1f
    nop                                           ; $45fe: $00
    ld a, h                                       ; $45ff: $7c
    ret nz                                        ; $4600: $c0

    add b                                         ; $4601: $80
    ld a, [hl]                                    ; $4602: $7e
    jp nz, RST_00                                 ; $4603: $c2 $00 $00

    db $e3                                        ; $4606: $e3

Call_0ae_4607:
    nop                                           ; $4607: $00
    inc hl                                        ; $4608: $23
    ld sp, $0fc1                                  ; $4609: $31 $c1 $0f
    pop af                                        ; $460c: $f1
    adc [hl]                                      ; $460d: $8e
    ld e, $8e                                     ; $460e: $1e $8e
    nop                                           ; $4610: $00
    ld c, $88                                     ; $4611: $0e $88
    ld c, $04                                     ; $4613: $0e $04
    ld [bc], a                                    ; $4615: $02
    nop                                           ; $4616: $00
    nop                                           ; $4617: $00
    pop hl                                        ; $4618: $e1
    nop                                           ; $4619: $00
    ld a, a                                       ; $461a: $7f
    ldh a, [$cf]                                  ; $461b: $f0 $cf
    inc e                                         ; $461d: $1c
    inc de                                        ; $461e: $13
    db $fc                                        ; $461f: $fc

jr_0ae_4620:
    jp VBlankInterrupt                            ; $4620: $c3 $40 $00


    ld b, c                                       ; $4623: $41
    ld a, d                                       ; $4624: $7a
    ld b, [hl]                                    ; $4625: $46
    ld hl, sp-$79                                 ; $4626: $f8 $87
    nop                                           ; $4628: $00
    nop                                           ; $4629: $00
    ld a, [hl]                                    ; $462a: $7e
    nop                                           ; $462b: $00
    db $d3                                        ; $462c: $d3
    add e                                         ; $462d: $83
    ld b, h                                       ; $462e: $44
    rst $00                                       ; $462f: $c7
    jp hl                                         ; $4630: $e9


    rlca                                          ; $4631: $07
    call nz, Call_000_0027                        ; $4632: $c4 $27 $00
    ldh [$e0], a                                  ; $4635: $e0 $e0
    add $60                                       ; $4637: $c6 $60
    ld c, $03                                     ; $4639: $0e $03
    dec c                                         ; $463b: $0d
    rst $20                                       ; $463c: $e7
    inc b                                         ; $463d: $04
    dec de                                        ; $463e: $1b

jr_0ae_463f:
    inc c                                         ; $463f: $0c
    ldh a, [rNR32]                                ; $4640: $f0 $1c
    db $e4                                        ; $4642: $e4
    and b                                         ; $4643: $a0
    ld l, d                                       ; $4644: $6a
    db $10                                        ; $4645: $10
    inc bc                                        ; $4646: $03
    ld c, l                                       ; $4647: $4d
    ld [bc], a                                    ; $4648: $02
    ld h, b                                       ; $4649: $60
    nop                                           ; $464a: $00
    ld bc, $23f8                                  ; $464b: $01 $f8 $23
    ld [$01fe], sp                                ; $464e: $08 $fe $01
    db $fc                                        ; $4651: $fc
    inc bc                                        ; $4652: $03
    ld hl, sp+$00                                 ; $4653: $f8 $00
    ld b, $e0                                     ; $4655: $06 $e0
    call c, Call_000_00c1                         ; $4657: $dc $c1 $00
    rst $20                                       ; $465a: $e7
    jr jr_0ae_4620                                ; $465b: $18 $c3

    nop                                           ; $465d: $00
    inc a                                         ; $465e: $3c
    add c                                         ; $465f: $81
    ld h, [hl]                                    ; $4660: $66

jr_0ae_4661:
    nop                                           ; $4661: $00
    jr jr_0ae_463f                                ; $4662: $18 $db

    inc a                                         ; $4664: $3c
    inc e                                         ; $4665: $1c
    ld [$5e3f], sp                                ; $4666: $08 $3f $5e
    ccf                                           ; $4669: $3f
    ld e, [hl]                                    ; $466a: $5e
    ld b, b                                       ; $466b: $40
    ld [$00ff], sp                                ; $466c: $08 $ff $00
    ld a, a                                       ; $466f: $7f
    nop                                           ; $4670: $00
    nop                                           ; $4671: $00

jr_0ae_4672:
    add b                                         ; $4672: $80
    ccf                                           ; $4673: $3f
    ret nz                                        ; $4674: $c0

    rra                                           ; $4675: $1f
    ld h, b                                       ; $4676: $60
    ld h, a                                       ; $4677: $67
    cp b                                          ; $4678: $b8
    ld [hl], b                                    ; $4679: $70
    dec sp                                        ; $467a: $3b
    ld d, b                                       ; $467b: $50
    ld hl, sp+$58                                 ; $467c: $f8 $58
    ld e, b                                       ; $467e: $58
    ld e, h                                       ; $467f: $5c
    jr nz, jr_0ae_4672                            ; $4680: $20 $f0

    ld c, $e0                                     ; $4682: $0e $e0
    jr jr_0ae_4686                                ; $4684: $18 $00

jr_0ae_4686:
    ret nz                                        ; $4686: $c0

    jr nc, jr_0ae_4689                            ; $4687: $30 $00

jr_0ae_4689:
    ldh [rP1], a                                  ; $4689: $e0 $00
    or b                                          ; $468b: $b0
    add e                                         ; $468c: $83
    ld h, e                                       ; $468d: $63
    inc b                                         ; $468e: $04
    rrca                                          ; $468f: $0f
    jp Jump_000_0f0f                              ; $4690: $c3 $0f $0f


    inc sp                                        ; $4693: $33
    ld [bc], a                                    ; $4694: $02
    nop                                           ; $4695: $00
    inc bc                                        ; $4696: $03
    inc c                                         ; $4697: $0c
    nop                                           ; $4698: $00
    inc bc                                        ; $4699: $03
    inc a                                         ; $469a: $3c
    dec sp                                        ; $469b: $3b
    call z, $cf3f                                 ; $469c: $cc $3f $cf
    cpl                                           ; $469f: $2f
    ldh a, [rP1]                                  ; $46a0: $f0 $00
    scf                                           ; $46a2: $37
    ld hl, sp+$39                                 ; $46a3: $f8 $39
    ret nz                                        ; $46a5: $c0

    ld a, $ff                                     ; $46a6: $3e $ff
    ld a, a                                       ; $46a8: $7f
    nop                                           ; $46a9: $00
    nop                                           ; $46aa: $00
    ld a, a                                       ; $46ab: $7f
    rst $38                                       ; $46ac: $ff
    ld hl, sp-$3f                                 ; $46ad: $f8 $c1
    dec c                                         ; $46af: $0d
    ldh a, [rTMA]                                 ; $46b0: $f0 $06
    dec de                                        ; $46b2: $1b
    nop                                           ; $46b3: $00
    db $e3                                        ; $46b4: $e3
    inc c                                         ; $46b5: $0c
    ldh a, [$f9]                                  ; $46b6: $f0 $f9
    rrca                                          ; $46b8: $0f
    ld a, a                                       ; $46b9: $7f
    ld b, $3d                                     ; $46ba: $06 $3d
    db $10                                        ; $46bc: $10
    or e                                          ; $46bd: $b3
    sbc l                                         ; $46be: $9d
    dec sp                                        ; $46bf: $3b
    ld a, h                                       ; $46c0: $7c
    ld [$8000], sp                                ; $46c1: $08 $00 $80
    ldh a, [rNR41]                                ; $46c4: $f0 $20
    ld bc, $c707                                  ; $46c6: $01 $07 $c7
    rra                                           ; $46c9: $1f
    add b                                         ; $46ca: $80
    cp h                                          ; $46cb: $bc
    sbc h                                         ; $46cc: $9c
    ld a, b                                       ; $46cd: $78
    add b                                         ; $46ce: $80
    ld d, b                                       ; $46cf: $50
    ret nz                                        ; $46d0: $c0

    sbc b                                         ; $46d1: $98
    ld [$185c], sp                                ; $46d2: $08 $5c $18
    ret c                                         ; $46d5: $d8

    ret nz                                        ; $46d6: $c0

    jr nc, jr_0ae_46da                            ; $46d7: $30 $01

    inc bc                                        ; $46d9: $03

jr_0ae_46da:
    ld h, c                                       ; $46da: $61
    inc b                                         ; $46db: $04
    rlca                                          ; $46dc: $07
    ld h, b                                       ; $46dd: $60
    rrca                                          ; $46de: $0f
    jr nz, jr_0ae_4661                            ; $46df: $20 $80

    pop af                                        ; $46e1: $f1
    nop                                           ; $46e2: $00
    jr jr_0ae_474d                                ; $46e3: $18 $68

    nop                                           ; $46e5: $00
    ld [hl], h                                    ; $46e6: $74
    ld a, b                                       ; $46e7: $78
    ldh [$9c], a                                  ; $46e8: $e0 $9c
    jp nz, $e03e                                  ; $46ea: $c2 $3e $e0

    ld a, $00                                     ; $46ed: $3e $00
    ld l, a                                       ; $46ef: $6f

Call_0ae_46f0:
    adc h                                         ; $46f0: $8c
    jr c, jr_0ae_4727                             ; $46f1: $38 $34

    rlca                                          ; $46f3: $07
    dec sp                                        ; $46f4: $3b
    rrca                                          ; $46f5: $0f
    inc sp                                        ; $46f6: $33
    nop                                           ; $46f7: $00
    ld c, a                                       ; $46f8: $4f
    ccf                                           ; $46f9: $3f
    rst $08                                       ; $46fa: $cf
    or a                                          ; $46fb: $b7
    halt                                          ; $46fc: $76
    rlca                                          ; $46fd: $07
    dec b                                         ; $46fe: $05
    ld l, $00                                     ; $46ff: $2e $00
    ld b, $06                                     ; $4701: $06 $06
    rrca                                          ; $4703: $0f
    rra                                           ; $4704: $1f
    pop hl                                        ; $4705: $e1
    inc bc                                        ; $4706: $03

Call_0ae_4707:
    ldh a, [$0c]                                  ; $4707: $f0 $0c
    nop                                           ; $4709: $00
    adc [hl]                                      ; $470a: $8e
    ld a, a                                       ; $470b: $7f
    ld a, a                                       ; $470c: $7f
    ccf                                           ; $470d: $3f
    ldh [rIE], a                                  ; $470e: $e0 $ff
    add b                                         ; $4710: $80
    ret nz                                        ; $4711: $c0

    nop                                           ; $4712: $00
    inc l                                         ; $4713: $2c
    ld e, $db                                     ; $4714: $1e $db
    ld d, $db                                     ; $4716: $16 $db
    ld [hl], $84                                  ; $4718: $36 $84
    ld l, b                                       ; $471a: $68
    nop                                           ; $471b: $00
    inc bc                                        ; $471c: $03
    ld bc, $5807                                  ; $471d: $01 $07 $58
    ld e, a                                       ; $4720: $5f
    daa                                           ; $4721: $27
    ld hl, sp-$78                                 ; $4722: $f8 $88
    nop                                           ; $4724: $00
    ret nc                                        ; $4725: $d0

    rst $00                                       ; $4726: $c7

jr_0ae_4727:
    ld [hl], b                                    ; $4727: $70
    ld sp, $666f                                  ; $4728: $31 $6f $66
    ld d, b                                       ; $472b: $50
    ld c, a                                       ; $472c: $4f
    nop                                           ; $472d: $00
    and h                                         ; $472e: $a4
    sbc a                                         ; $472f: $9f
    and l                                         ; $4730: $a5
    ld h, c                                       ; $4731: $61
    call z, Call_0ae_7bc0                         ; $4732: $cc $c0 $7b
    ld c, [hl]                                    ; $4735: $4e
    jr nz, jr_0ae_4753                            ; $4736: $20 $1b

    and [hl]                                      ; $4738: $a6
    ld hl, sp+$00                                 ; $4739: $f8 $00
    adc a                                         ; $473b: $8f
    jr nc, @-$4e                                  ; $473c: $30 $b0

    sbc b                                         ; $473e: $98
    ld e, b                                       ; $473f: $58
    nop                                           ; $4740: $00
    ldh [$cc], a                                  ; $4741: $e0 $cc
    ldh a, [$66]                                  ; $4743: $f0 $66
    ld [hl], b                                    ; $4745: $70
    ld b, $71                                     ; $4746: $06 $71
    dec b                                         ; $4748: $05
    nop                                           ; $4749: $00
    rra                                           ; $474a: $1f
    db $10                                        ; $474b: $10
    rrca                                          ; $474c: $0f

jr_0ae_474d:
    scf                                           ; $474d: $37
    rlca                                          ; $474e: $07
    jr c, jr_0ae_4790                             ; $474f: $38 $3f

    pop de                                        ; $4751: $d1
    nop                                           ; $4752: $00

jr_0ae_4753:
    rrca                                          ; $4753: $0f
    jp nz, $0fe1                                  ; $4754: $c2 $e1 $0f

    ldh [$03], a                                  ; $4757: $e0 $03
    ret nz                                        ; $4759: $c0

    ldh a, [rP1]                                  ; $475a: $f0 $00
    rlca                                          ; $475c: $07
    reti                                          ; $475d: $d9


    inc a                                         ; $475e: $3c
    inc sp                                        ; $475f: $33
    ld a, h                                       ; $4760: $7c
    ld c, e                                       ; $4761: $4b
    cp $3d                                        ; $4762: $fe $3d
    nop                                           ; $4764: $00
    ld a, a                                       ; $4765: $7f
    rra                                           ; $4766: $1f
    ld [hl], c                                    ; $4767: $71
    ld c, [hl]                                    ; $4768: $4e
    cp b                                          ; $4769: $b8
    and a                                         ; $476a: $a7
    rrca                                          ; $476b: $0f
    rst $10                                       ; $476c: $d7
    nop                                           ; $476d: $00
    ld [$0707], sp                                ; $476e: $08 $07 $07
    sbc e                                         ; $4771: $9b
    dec e                                         ; $4772: $1d
    add l                                         ; $4773: $85
    ret nz                                        ; $4774: $c0

    add e                                         ; $4775: $83
    nop                                           ; $4776: $00
    ret nz                                        ; $4777: $c0

    rst $00                                       ; $4778: $c7
    and c                                         ; $4779: $a1
    ld b, a                                       ; $477a: $47
    add $a0                                       ; $477b: $c6 $a0
    pop bc                                        ; $477d: $c1
    ld sp, $1e00                                  ; $477e: $31 $00 $1e
    add $3c                                       ; $4781: $c6 $3c
    call z, $c17d                                 ; $4783: $cc $7d $c1
    ei                                            ; $4786: $fb
    add d                                         ; $4787: $82
    nop                                           ; $4788: $00
    or d                                          ; $4789: $b2
    ld a, e                                       ; $478a: $7b
    or d                                          ; $478b: $b2
    ld [hl], e                                    ; $478c: $73
    pop af                                        ; $478d: $f1
    add h                                         ; $478e: $84
    pop af                                        ; $478f: $f1

jr_0ae_4790:
    add h                                         ; $4790: $84
    nop                                           ; $4791: $00
    jp $ff54                                      ; $4792: $c3 $54 $ff


    cp a                                          ; $4795: $bf
    cp a                                          ; $4796: $bf
    and c                                         ; $4797: $a1
    or [hl]                                       ; $4798: $b6
    inc de                                        ; $4799: $13
    nop                                           ; $479a: $00
    dec de                                        ; $479b: $1b
    add e                                         ; $479c: $83
    inc b                                         ; $479d: $04
    push hl                                       ; $479e: $e5
    ld a, [c]                                     ; $479f: $f2
    call nc, $c1f0                                ; $47a0: $d4 $f0 $c1
    nop                                           ; $47a3: $00
    inc de                                        ; $47a4: $13
    and c                                         ; $47a5: $a1
    rla                                           ; $47a6: $17
    ld sp, $e88e                                  ; $47a7: $31 $8e $e8
    adc [hl]                                      ; $47aa: $8e
    add sp, $00                                   ; $47ab: $e8 $00
    inc c                                         ; $47ad: $0c
    call nz, $881c                                ; $47ae: $c4 $1c $88
    jr c, jr_0ae_4813                             ; $47b1: $38 $60

    ld [hl], d                                    ; $47b3: $72
    jp nz, Jump_0ae_7020                          ; $47b4: $c2 $20 $70

    ld h, c                                       ; $47b7: $61
    ld [bc], a                                    ; $47b8: $02
    nop                                           ; $47b9: $00
    inc bc                                        ; $47ba: $03
    ldh a, [$83]                                  ; $47bb: $f0 $83
    add e                                         ; $47bd: $83
    ld [hl], e                                    ; $47be: $73
    nop                                           ; $47bf: $00
    sub e                                         ; $47c0: $93
    ld h, e                                       ; $47c1: $63
    db $e4                                        ; $47c2: $e4
    inc c                                         ; $47c3: $0c
    call nc, $c81c                                ; $47c4: $d4 $1c $c8
    or b                                          ; $47c7: $b0
    nop                                           ; $47c8: $00
    db $fc                                        ; $47c9: $fc
    add h                                         ; $47ca: $84
    ld a, h                                       ; $47cb: $7c
    ld c, a                                       ; $47cc: $4f
    inc [hl]                                      ; $47cd: $34
    inc sp                                        ; $47ce: $33
    rlca                                          ; $47cf: $07
    inc b                                         ; $47d0: $04
    nop                                           ; $47d1: $00
    ld hl, sp-$05                                 ; $47d2: $f8 $fb
    ei                                            ; $47d4: $fb
    ld hl, sp+$01                                 ; $47d5: $f8 $01
    db $fc                                        ; $47d7: $fc
    rlca                                          ; $47d8: $07
    ld l, e                                       ; $47d9: $6b
    nop                                           ; $47da: $00
    ld [hl], h                                    ; $47db: $74
    ld [hl], e                                    ; $47dc: $73
    dec de                                        ; $47dd: $1b
    sbc b                                         ; $47de: $98
    dec c                                         ; $47df: $0d
    adc h                                         ; $47e0: $8c
    add a                                         ; $47e1: $87
    rlca                                          ; $47e2: $07
    nop                                           ; $47e3: $00
    dec bc                                        ; $47e4: $0b
    dec sp                                        ; $47e5: $3b
    ld a, b                                       ; $47e6: $78
    nop                                           ; $47e7: $00
    jr nc, @+$4a                                  ; $47e8: $30 $48

    rst $20                                       ; $47ea: $e7
    rla                                           ; $47eb: $17
    nop                                           ; $47ec: $00
    ldh a, [rNR22]                                ; $47ed: $f0 $17
    ldh a, [rTAC]                                 ; $47ef: $f0 $07
    ldh a, [$37]                                  ; $47f1: $f0 $37
    ld h, b                                       ; $47f3: $60
    and a                                         ; $47f4: $a7
    nop                                           ; $47f5: $00
    ld d, e                                       ; $47f6: $53
    ld c, b                                       ; $47f7: $48

Jump_0ae_47f8:
    dec d                                         ; $47f8: $15
    jr @+$0e                                      ; $47f9: $18 $0c

    dec [hl]                                      ; $47fb: $35
    ld l, l                                       ; $47fc: $6d
    pop hl                                        ; $47fd: $e1
    ld [$e02c], sp                                ; $47fe: $08 $2c $e0
    ldh [$4c], a                                  ; $4801: $e0 $4c
    ld [bc], a                                    ; $4803: $02
    nop                                           ; $4804: $00
    add hl, hl                                    ; $4805: $29
    ldh [$29], a                                  ; $4806: $e0 $29
    nop                                           ; $4808: $00
    pop bc                                        ; $4809: $c1
    add hl, hl                                    ; $480a: $29
    ret nz                                        ; $480b: $c0

    ld a, [hl-]                                   ; $480c: $3a
    pop hl                                        ; $480d: $e1
    ld [c], a                                     ; $480e: $e2
    ld [c], a                                     ; $480f: $e2
    db $e4                                        ; $4810: $e4
    nop                                           ; $4811: $00
    inc c                                         ; $4812: $0c

jr_0ae_4813:
    add sp, -$61                                  ; $4813: $e8 $9f
    ret c                                         ; $4815: $d8

    adc a                                         ; $4816: $8f
    sub b                                         ; $4817: $90
    sbc a                                         ; $4818: $9f

jr_0ae_4819:
    jr nc, jr_0ae_481b                            ; $4819: $30 $00

jr_0ae_481b:
    rra                                           ; $481b: $1f
    ld hl, $621e                                  ; $481c: $21 $1e $62
    ldh [$6e], a                                  ; $481f: $e0 $6e
    adc c                                         ; $4821: $89
    dec d                                         ; $4822: $15
    nop                                           ; $4823: $00
    ld sp, $e27a                                  ; $4824: $31 $7a $e2
    db $f4                                        ; $4827: $f4
    inc l                                         ; $4828: $2c
    add sp, $5f                                   ; $4829: $e8 $5f
    db $d3                                        ; $482b: $d3
    nop                                           ; $482c: $00
    ld b, $08                                     ; $482d: $06 $08
    ld h, h                                       ; $482f: $64
    ld l, b                                       ; $4830: $68
    jp nz, $821e                                  ; $4831: $c2 $1e $82

    ld e, $00                                     ; $4834: $1e $00
    ld c, [hl]                                    ; $4836: $4e
    ld h, d                                       ; $4837: $62
    add [hl]                                      ; $4838: $86
    or $f0                                        ; $4839: $f6 $f0

jr_0ae_483b:
    ld [$6870], a                                 ; $483b: $ea $70 $68

jr_0ae_483e:
    nop                                           ; $483e: $00
    jr c, jr_0ae_4859                             ; $483f: $38 $18

jr_0ae_4841:
    jr jr_0ae_481b                                ; $4841: $18 $d8

    ld bc, $01fc                                  ; $4843: $01 $fc $01
    db $fc                                        ; $4846: $fc

jr_0ae_4847:
    ld d, $00                                     ; $4847: $16 $00
    cp $fe                                        ; $4849: $fe $fe
    cp c                                          ; $484b: $b9
    ld bc, $f8fe                                  ; $484c: $01 $fe $f8
    ld bc, $023e                                  ; $484f: $01 $3e $02
    jr nc, jr_0ae_4876                            ; $4852: $30 $22

    add b                                         ; $4854: $80
    nop                                           ; $4855: $00
    ld [bc], a                                    ; $4856: $02
    jr jr_0ae_4819                                ; $4857: $18 $c0

jr_0ae_4859:
    nop                                           ; $4859: $00
    ld b, b                                       ; $485a: $40
    ld [bc], a                                    ; $485b: $02
    nop                                           ; $485c: $00
    ld b, $40                                     ; $485d: $06 $40
    ld a, [bc]                                    ; $485f: $0a
    or a                                          ; $4860: $b7
    ld bc, $0306                                  ; $4861: $01 $06 $03
    ld [hl-], a                                   ; $4864: $32
    nop                                           ; $4865: $00

jr_0ae_4866:
    jr nc, jr_0ae_489a                            ; $4866: $30 $32

    nop                                           ; $4868: $00
    scf                                           ; $4869: $37
    scf                                           ; $486a: $37
    jr nc, jr_0ae_4878                            ; $486b: $30 $0b

    jr c, jr_0ae_4847                             ; $486d: $38 $d8

    ld a, [de]                                    ; $486f: $1a
    jr nz, jr_0ae_4872                            ; $4870: $20 $00

jr_0ae_4872:
    ld [hl+], a                                   ; $4872: $22
    or b                                          ; $4873: $b0
    or d                                          ; $4874: $b2
    or h                                          ; $4875: $b4

jr_0ae_4876:
    db $10                                        ; $4876: $10
    ld [hl], d                                    ; $4877: $72

jr_0ae_4878:
    inc [hl]                                      ; $4878: $34
    ldh a, [rP1]                                  ; $4879: $f0 $00
    halt                                          ; $487b: $76
    rlca                                          ; $487c: $07
    or $01                                        ; $487d: $f6 $01
    ld hl, sp+$0c                                 ; $487f: $f8 $0c
    ld a, h                                       ; $4881: $7c
    sub c                                         ; $4882: $91
    nop                                           ; $4883: $00
    ld [hl], b                                    ; $4884: $70
    pop bc                                        ; $4885: $c1
    ldh [rSB], a                                  ; $4886: $e0 $01
    ret nz                                        ; $4888: $c0

    ld [c], a                                     ; $4889: $e2
    db $e3                                        ; $488a: $e3
    add e                                         ; $488b: $83
    nop                                           ; $488c: $00
    inc bc                                        ; $488d: $03
    add d                                         ; $488e: $82
    adc h                                         ; $488f: $8c
    ld b, a                                       ; $4890: $47
    ld a, c                                       ; $4891: $79
    ld h, h                                       ; $4892: $64
    dec c                                         ; $4893: $0d
    ld h, h                                       ; $4894: $64
    nop                                           ; $4895: $00
    add l                                         ; $4896: $85
    add b                                         ; $4897: $80
    ld [hl], b                                    ; $4898: $70
    add [hl]                                      ; $4899: $86

jr_0ae_489a:
    ld [hl], h                                    ; $489a: $74
    ld [hl], c                                    ; $489b: $71
    and [hl]                                      ; $489c: $a6
    ld h, e                                       ; $489d: $63
    nop                                           ; $489e: $00
    and h                                         ; $489f: $a4
    ld c, a                                       ; $48a0: $4f
    ld c, [hl]                                    ; $48a1: $4e
    ld b, [hl]                                    ; $48a2: $46
    ld e, b                                       ; $48a3: $58
    jr nz, jr_0ae_4866                            ; $48a4: $20 $c0

    jr nc, jr_0ae_48a8                            ; $48a6: $30 $00

jr_0ae_48a8:
    ret nc                                        ; $48a8: $d0

    ret nz                                        ; $48a9: $c0

    ldh a, [$c0]                                  ; $48aa: $f0 $c0
    jr nc, jr_0ae_490e                            ; $48ac: $30 $60

    rrca                                          ; $48ae: $0f
    add b                                         ; $48af: $80
    jr nc, jr_0ae_4841                            ; $48b0: $30 $8f

    ccf                                           ; $48b2: $3f
    call c, $a109                                 ; $48b3: $dc $09 $a1
    ld h, d                                       ; $48b6: $62
    ld h, b                                       ; $48b7: $60
    nop                                           ; $48b8: $00
    jr nz, jr_0ae_483b                            ; $48b9: $20 $80

    nop                                           ; $48bb: $00
    jr nz, jr_0ae_483e                            ; $48bc: $20 $80

    jr nc, @-$7e                                  ; $48be: $30 $80

    db $10                                        ; $48c0: $10
    ret nz                                        ; $48c1: $c0

    rra                                           ; $48c2: $1f
    ret nz                                        ; $48c3: $c0

    add e                                         ; $48c4: $83
    ld [hl], e                                    ; $48c5: $73
    nop                                           ; $48c6: $00
    nop                                           ; $48c7: $00
    dec c                                         ; $48c8: $0d
    inc a                                         ; $48c9: $3c
    ld c, $32                                     ; $48ca: $0e $32
    ld l, $0a                                     ; $48cc: $2e $0a
    add [hl]                                      ; $48ce: $86
    ld a, [bc]                                    ; $48cf: $0a
    add b                                         ; $48d0: $80
    call z, Call_000_3c0a                         ; $48d1: $cc $0a $3c
    ret nz                                        ; $48d4: $c0

    rra                                           ; $48d5: $1f
    db $e3                                        ; $48d6: $e3
    jr nz, @+$21                                  ; $48d7: $20 $1f

    sbc a                                         ; $48d9: $9f
    ret nz                                        ; $48da: $c0

    rst $20                                       ; $48db: $e7
    ld bc, $089e                                  ; $48dc: $01 $9e $08
    rst $38                                       ; $48df: $ff
    nop                                           ; $48e0: $00
    ld a, h                                       ; $48e1: $7c
    ld h, d                                       ; $48e2: $62
    ld hl, sp-$7c                                 ; $48e3: $f8 $84
    ld [$ec1c], sp                                ; $48e5: $08 $1c $ec
    ldh a, [rNR10]                                ; $48e8: $f0 $10
    db $10                                        ; $48ea: $10
    jr z, jr_0ae_4905                             ; $48eb: $28 $18

    inc d                                         ; $48ed: $14
    jr c, jr_0ae_48f0                             ; $48ee: $38 $00

jr_0ae_48f0:
    jr nz, @+$72                                  ; $48f0: $20 $70

    ld l, h                                       ; $48f2: $6c
    ret nz                                        ; $48f3: $c0

    ld hl, sp+$08                                 ; $48f4: $f8 $08
    dec bc                                        ; $48f6: $0b
    ld hl, sp+$38                                 ; $48f7: $f8 $38
    inc bc                                        ; $48f9: $03
    inc bc                                        ; $48fa: $03
    cp d                                          ; $48fb: $ba
    ld [de], a                                    ; $48fc: $12
    jr c, jr_0ae_4917                             ; $48fd: $38 $18

    ld [$102b], sp                                ; $48ff: $08 $2b $10
    inc bc                                        ; $4902: $03
    ld a, b                                       ; $4903: $78
    ld [bc], a                                    ; $4904: $02

jr_0ae_4905:
    ld b, c                                       ; $4905: $41
    nop                                           ; $4906: $00
    ld bc, $01b8                                  ; $4907: $01 $b8 $01
    ld bc, $0102                                  ; $490a: $01 $02 $01
    inc bc                                        ; $490d: $03

jr_0ae_490e:
    jr nz, jr_0ae_4910                            ; $490e: $20 $00

jr_0ae_4910:
    nop                                           ; $4910: $00
    rra                                           ; $4911: $1f
    rra                                           ; $4912: $1f
    add hl, hl                                    ; $4913: $29
    ld l, a                                       ; $4914: $6f
    ld b, b                                       ; $4915: $40
    add a                                         ; $4916: $87

jr_0ae_4917:
    adc $c8                                       ; $4917: $ce $c8
    nop                                           ; $4919: $00
    sub c                                         ; $491a: $91
    sub b                                         ; $491b: $90
    adc c                                         ; $491c: $89
    sub b                                         ; $491d: $90
    nop                                           ; $491e: $00
    rst $20                                       ; $491f: $e7
    rst $20                                       ; $4920: $e7
    dec de                                        ; $4921: $1b
    nop                                           ; $4922: $00
    db $e3                                        ; $4923: $e3
    ldh [$3c], a                                  ; $4924: $e0 $3c
    db $fc                                        ; $4926: $fc
    ld a, [de]                                    ; $4927: $1a
    pop bc                                        ; $4928: $c1
    ccf                                           ; $4929: $3f
    ldh [rDIV], a                                 ; $492a: $e0 $04
    add e                                         ; $492c: $83
    ret nz                                        ; $492d: $c0

    ret                                           ; $492e: $c9


    and c                                         ; $492f: $a1
    sbc h                                         ; $4930: $9c
    ld b, b                                       ; $4931: $40
    ld [$00ff], sp                                ; $4932: $08 $ff $00
    nop                                           ; $4935: $00
    ld a, a                                       ; $4936: $7f
    nop                                           ; $4937: $00
    nop                                           ; $4938: $00
    add b                                         ; $4939: $80
    ldh a, [$60]                                  ; $493a: $f0 $60
    ld [$70f0], sp                                ; $493c: $08 $f0 $70
    ei                                            ; $493f: $fb
    jr nc, jr_0ae_494a                            ; $4940: $30 $08

    inc bc                                        ; $4942: $03
    ld hl, sp+$75                                 ; $4943: $f8 $75

jr_0ae_4945:
    jr c, jr_0ae_4945                             ; $4945: $38 $fe

    inc bc                                        ; $4947: $03
    ld b, $05                                     ; $4948: $06 $05

jr_0ae_494a:
    nop                                           ; $494a: $00
    ld b, $09                                     ; $494b: $06 $09
    rrca                                          ; $494d: $0f
    dec de                                        ; $494e: $1b
    dec e                                         ; $494f: $1d
    inc de                                        ; $4950: $13
    dec e                                         ; $4951: $1d
    inc c                                         ; $4952: $0c
    nop                                           ; $4953: $00
    dec de                                        ; $4954: $1b
    inc e                                         ; $4955: $1c
    ld a, [hl-]                                   ; $4956: $3a
    ret c                                         ; $4957: $d8

    db $f4                                        ; $4958: $f4
    xor c                                         ; $4959: $a9
    xor [hl]                                      ; $495a: $ae
    ld de, $1e00                                  ; $495b: $11 $00 $1e
    dec de                                        ; $495e: $1b
    inc b                                         ; $495f: $04
    rra                                           ; $4960: $1f
    ld e, $0e                                     ; $4961: $1e $0e
    ld [hl], c                                    ; $4963: $71
    ld d, b                                       ; $4964: $50
    nop                                           ; $4965: $00
    ld h, b                                       ; $4966: $60
    ret                                           ; $4967: $c9


    or b                                          ; $4968: $b0
    ld a, h                                       ; $4969: $7c
    rlca                                          ; $496a: $07
    ld a, $3f                                     ; $496b: $3e $3f
    inc a                                         ; $496d: $3c
    nop                                           ; $496e: $00
    sbc h                                         ; $496f: $9c
    add c                                         ; $4970: $81
    add hl, de                                    ; $4971: $19
    jp $26e4                                      ; $4972: $c3 $e4 $26


    ld sp, hl                                     ; $4975: $f9
    jr c, jr_0ae_4978                             ; $4976: $38 $00

jr_0ae_4978:
    db $fc                                        ; $4978: $fc
    jp $e23f                                      ; $4979: $c3 $3f $e2


    ld a, [hl]                                    ; $497c: $7e
    rlca                                          ; $497d: $07
    db $f4                                        ; $497e: $f4
    rst $20                                       ; $497f: $e7
    nop                                           ; $4980: $00
    db $e4                                        ; $4981: $e4
    db $f4                                        ; $4982: $f4
    db $e3                                        ; $4983: $e3
    di                                            ; $4984: $f3
    add b                                         ; $4985: $80
    db $10                                        ; $4986: $10
    ldh [rNR24], a                                ; $4987: $e0 $19
    nop                                           ; $4989: $00

jr_0ae_498a:
    pop hl                                        ; $498a: $e1
    ld a, a                                       ; $498b: $7f
    rra                                           ; $498c: $1f
    inc a                                         ; $498d: $3c
    rst $38                                       ; $498e: $ff
    nop                                           ; $498f: $00
    add b                                         ; $4990: $80
    add b                                         ; $4991: $80
    nop                                           ; $4992: $00
    ld b, b                                       ; $4993: $40
    ld a, a                                       ; $4994: $7f
    cp a                                          ; $4995: $bf
    rst $08                                       ; $4996: $cf
    rrca                                          ; $4997: $0f
    jr nc, jr_0ae_49a1                            ; $4998: $30 $07

    adc b                                         ; $499a: $88
    ld b, $83                                     ; $499b: $06 $83
    ret nz                                        ; $499d: $c0

    ld b, h                                       ; $499e: $44
    ret nz                                        ; $499f: $c0

    ld b, e                                       ; $49a0: $43

jr_0ae_49a1:
    ret nc                                        ; $49a1: $d0

    ld c, b                                       ; $49a2: $48
    sbc b                                         ; $49a3: $98
    ld [$0001], sp                                ; $49a4: $08 $01 $00
    db $fc                                        ; $49a7: $fc
    ld [bc], a                                    ; $49a8: $02
    ldh a, [$0d]                                  ; $49a9: $f0 $0d
    pop hl                                        ; $49ab: $e1
    db $10                                        ; $49ac: $10
    inc bc                                        ; $49ad: $03
    inc hl                                        ; $49ae: $23
    nop                                           ; $49af: $00
    rrca                                          ; $49b0: $0f
    inc c                                         ; $49b1: $0c
    ld l, a                                       ; $49b2: $6f
    ld b, $65                                     ; $49b3: $06 $65
    inc hl                                        ; $49b5: $23
    rlca                                          ; $49b6: $07
    jr jr_0ae_49b9                                ; $49b7: $18 $00

jr_0ae_49b9:
    inc [hl]                                      ; $49b9: $34
    jr jr_0ae_49f0                                ; $49ba: $18 $34

    jr nc, jr_0ae_4a36                            ; $49bc: $30 $78

    jr nc, jr_0ae_4a08                            ; $49be: $30 $48

    and b                                         ; $49c0: $a0
    nop                                           ; $49c1: $00
    ret nc                                        ; $49c2: $d0

    and b                                         ; $49c3: $a0
    db $d3                                        ; $49c4: $d3
    and b                                         ; $49c5: $a0
    rst $10                                       ; $49c6: $d7
    jr nz, jr_0ae_498a                            ; $49c7: $20 $c1

    ld a, l                                       ; $49c9: $7d
    nop                                           ; $49ca: $00
    ld c, a                                       ; $49cb: $4f
    ld [hl], c                                    ; $49cc: $71
    ld [hl], d                                    ; $49cd: $72
    dec b                                         ; $49ce: $05
    ld b, $3c                                     ; $49cf: $06 $3c
    inc hl                                        ; $49d1: $23
    inc a                                         ; $49d2: $3c
    nop                                           ; $49d3: $00
    ld bc, $bc80                                  ; $49d4: $01 $80 $bc
    cp h                                          ; $49d7: $bc
    and b                                         ; $49d8: $a0
    ret nz                                        ; $49d9: $c0

    ld [bc], a                                    ; $49da: $02
    db $e4                                        ; $49db: $e4
    nop                                           ; $49dc: $00
    ld a, d                                       ; $49dd: $7a
    add a                                         ; $49de: $87
    jr jr_0ae_4a29                                ; $49df: $18 $48

    rst $18                                       ; $49e1: $df
    srl h                                         ; $49e2: $cb $3c
    add a                                         ; $49e4: $87
    nop                                           ; $49e5: $00
    halt                                          ; $49e6: $76
    adc $36                                       ; $49e7: $ce $36
    ld h, b                                       ; $49e9: $60
    db $fc                                        ; $49ea: $fc
    ld hl, $fc70                                  ; $49eb: $21 $70 $fc
    nop                                           ; $49ee: $00
    add c                                         ; $49ef: $81

jr_0ae_49f0:
    db $fc                                        ; $49f0: $fc
    nop                                           ; $49f1: $00

jr_0ae_49f2:
    ld [hl], h                                    ; $49f2: $74
    db $fc                                        ; $49f3: $fc
    ld h, c                                       ; $49f4: $61
    sbc h                                         ; $49f5: $9c
    rst $30                                       ; $49f6: $f7
    nop                                           ; $49f7: $00
    ld l, e                                       ; $49f8: $6b
    ld d, $0e                                     ; $49f9: $16 $0e
    inc b                                         ; $49fb: $04
    ld h, h                                       ; $49fc: $64
    call nc, $8034                                ; $49fd: $d4 $34 $80
    ld b, b                                       ; $4a00: $40
    inc b                                         ; $4a01: $04
    rst $28                                       ; $4a02: $ef
    nop                                           ; $4a03: $00
    nop                                           ; $4a04: $00

jr_0ae_4a05:
    ret nz                                        ; $4a05: $c0

    ld a, a                                       ; $4a06: $7f
    ld b, b                                       ; $4a07: $40

jr_0ae_4a08:
    add b                                         ; $4a08: $80
    ld a, h                                       ; $4a09: $7c
    nop                                           ; $4a0a: $00
    inc a                                         ; $4a0b: $3c
    inc e                                         ; $4a0c: $1c
    ret nz                                        ; $4a0d: $c0

    rrca                                          ; $4a0e: $0f
    adc b                                         ; $4a0f: $88
    add b                                         ; $4a10: $80
    ccf                                           ; $4a11: $3f
    ld b, b                                       ; $4a12: $40
    nop                                           ; $4a13: $00
    rrca                                          ; $4a14: $0f
    or b                                          ; $4a15: $b0
    add a                                         ; $4a16: $87
    ret z                                         ; $4a17: $c8

    jp $f004                                      ; $4a18: $c3 $04 $f0


    ld b, $80                                     ; $4a1b: $06 $80
    ld [bc], a                                    ; $4a1d: $02
    nop                                           ; $4a1e: $00
    dec b                                         ; $4a1f: $05
    pop af                                        ; $4a20: $f1
    jr nz, jr_0ae_4a26                            ; $4a21: $20 $03

    daa                                           ; $4a23: $27
    rrca                                          ; $4a24: $0f
    inc de                                        ; $4a25: $13

jr_0ae_4a26:
    nop                                           ; $4a26: $00
    rlca                                          ; $4a27: $07
    dec b                                         ; $4a28: $05

jr_0ae_4a29:
    inc d                                         ; $4a29: $14
    inc bc                                        ; $4a2a: $03
    db $10                                        ; $4a2b: $10
    db $e3                                        ; $4a2c: $e3
    add sp, -$1d                                  ; $4a2d: $e8 $e3
    nop                                           ; $4a2f: $00
    add sp, -$18                                  ; $4a30: $e8 $e8
    db $e3                                        ; $4a32: $e3
    ld e, $ce                                     ; $4a33: $1e $ce
    rlca                                          ; $4a35: $07

jr_0ae_4a36:
    nop                                           ; $4a36: $00
    adc b                                         ; $4a37: $88
    nop                                           ; $4a38: $00
    ld hl, sp+$0c                                 ; $4a39: $f8 $0c
    ldh a, [$0e]                                  ; $4a3b: $f0 $0e
    ld a, [c]                                     ; $4a3d: $f2
    ld c, $fc                                     ; $4a3e: $0e $fc
    db $fc                                        ; $4a40: $fc
    nop                                           ; $4a41: $00
    ld hl, sp-$08                                 ; $4a42: $f8 $f8
    or $f8                                        ; $4a44: $f6 $f8
    cpl                                           ; $4a46: $2f
    jr nc, jr_0ae_4ab1                            ; $4a47: $30 $68

    ld h, c                                       ; $4a49: $61
    nop                                           ; $4a4a: $00
    ld e, c                                       ; $4a4b: $59
    ld h, b                                       ; $4a4c: $60
    inc hl                                        ; $4a4d: $23
    ld b, b                                       ; $4a4e: $40
    rrca                                          ; $4a4f: $0f
    ld b, a                                       ; $4a50: $47
    ret c                                         ; $4a51: $d8

    adc [hl]                                      ; $4a52: $8e
    nop                                           ; $4a53: $00
    sub b                                         ; $4a54: $90
    ld c, $32                                     ; $4a55: $0e $32
    ld [de], a                                    ; $4a57: $12
    ld h, b                                       ; $4a58: $60
    pop hl                                        ; $4a59: $e1
    reti                                          ; $4a5a: $d9


    or $00                                        ; $4a5b: $f6 $00
    add [hl]                                      ; $4a5d: $86
    add sp, $09                                   ; $4a5e: $e8 $09
    sbc $40                                       ; $4a60: $de $40
    add e                                         ; $4a62: $83
    or b                                          ; $4a63: $b0
    dec c                                         ; $4a64: $0d
    nop                                           ; $4a65: $00
    ld h, c                                       ; $4a66: $61
    ld [de], a                                    ; $4a67: $12
    ret nz                                        ; $4a68: $c0

    dec bc                                        ; $4a69: $0b
    jr nz, jr_0ae_49f2                            ; $4a6a: $20 $86

    and h                                         ; $4a6c: $a4
    inc c                                         ; $4a6d: $0c
    nop                                           ; $4a6e: $00
    ld c, b                                       ; $4a6f: $48
    jr jr_0ae_4a05                                ; $4a70: $18 $93

    daa                                           ; $4a72: $27
    inc sp                                        ; $4a73: $33
    rlca                                          ; $4a74: $07
    inc bc                                        ; $4a75: $03
    ld a, b                                       ; $4a76: $78
    nop                                           ; $4a77: $00
    ld [hl], e                                    ; $4a78: $73
    ret nz                                        ; $4a79: $c0

    rlca                                          ; $4a7a: $07
    inc a                                         ; $4a7b: $3c
    dec sp                                        ; $4a7c: $3b
    rra                                           ; $4a7d: $1f
    ld e, $00                                     ; $4a7e: $1e $00
    nop                                           ; $4a80: $00
    inc b                                         ; $4a81: $04
    ld [c], a                                     ; $4a82: $e2
    ld [de], a                                    ; $4a83: $12
    ld a, [$fd03]                                 ; $4a84: $fa $03 $fd
    ld bc, $00fc                                  ; $4a87: $01 $fc $00
    ld [c], a                                     ; $4a8a: $e2
    cp $d9                                        ; $4a8b: $fe $d9
    ld sp, $d1e5                                  ; $4a8d: $31 $e5 $d1
    dec [hl]                                      ; $4a90: $35
    ldh a, [rP1]                                  ; $4a91: $f0 $00
    sbc b                                         ; $4a93: $98
    ld [hl], b                                    ; $4a94: $70
    ld e, b                                       ; $4a95: $58
    jr nc, jr_0ae_4b0b                            ; $4a96: $30 $73

    sub b                                         ; $4a98: $90
    scf                                           ; $4a99: $37
    ret nz                                        ; $4a9a: $c0

    nop                                           ; $4a9b: $00
    ld d, a                                       ; $4a9c: $57
    ld h, b                                       ; $4a9d: $60
    ld h, a                                       ; $4a9e: $67
    add sp, -$1d                                  ; $4a9f: $e8 $e3
    rlca                                          ; $4aa1: $07
    di                                            ; $4aa2: $f3
    rlca                                          ; $4aa3: $07
    ld [bc], a                                    ; $4aa4: $02
    di                                            ; $4aa5: $f3
    db $f4                                        ; $4aa6: $f4
    pop af                                        ; $4aa7: $f1
    ld a, [$02f8]                                 ; $4aa8: $fa $f8 $02
    ld [bc], a                                    ; $4aab: $02
    nop                                           ; $4aac: $00
    ld bc, $fc00                                  ; $4aad: $01 $00 $fc
    ld h, b                                       ; $4ab0: $60

jr_0ae_4ab1:
    sbc h                                         ; $4ab1: $9c
    db $fc                                        ; $4ab2: $fc
    ld a, [$eff0]                                 ; $4ab3: $fa $f0 $ef
    ld [bc], a                                    ; $4ab6: $02
    nop                                           ; $4ab7: $00
    ld b, $f2                                     ; $4ab8: $06 $f2
    ld e, $1d                                     ; $4aba: $1e $1d
    call nz, $c419                                ; $4abc: $c4 $19 $c4
    jr jr_0ae_4ac1                                ; $4abf: $18 $00

jr_0ae_4ac1:
    ld [hl], e                                    ; $4ac1: $73
    inc e                                         ; $4ac2: $1c
    ld h, l                                       ; $4ac3: $65
    jr c, jr_0ae_4b37                             ; $4ac4: $38 $71

    ld [hl-], a                                   ; $4ac6: $32
    pop hl                                        ; $4ac7: $e1
    ld [hl], b                                    ; $4ac8: $70
    nop                                           ; $4ac9: $00
    sub e                                         ; $4aca: $93

jr_0ae_4acb:
    ld h, b                                       ; $4acb: $60
    and e                                         ; $4acc: $a3
    ld h, b                                       ; $4acd: $60
    and a                                         ; $4ace: $a7
    ldh [$67], a                                  ; $4acf: $e0 $67
    rrca                                          ; $4ad1: $0f
    nop                                           ; $4ad2: $00
    inc c                                         ; $4ad3: $0c
    dec h                                         ; $4ad4: $25
    xor c                                         ; $4ad5: $a9
    add l                                         ; $4ad6: $85
    sbc b                                         ; $4ad7: $98
    adc e                                         ; $4ad8: $8b
    ld sp, $00ca                                  ; $4ad9: $31 $ca $00
    jr c, jr_0ae_4b34                             ; $4adc: $38 $56

    ld [hl], b                                    ; $4ade: $70
    inc c                                         ; $4adf: $0c
    nop                                           ; $4ae0: $00
    db $10                                        ; $4ae1: $10
    sbc a                                         ; $4ae2: $9f
    inc a                                         ; $4ae3: $3c
    nop                                           ; $4ae4: $00
    ld [c], a                                     ; $4ae5: $e2
    adc b                                         ; $4ae6: $88
    rra                                           ; $4ae7: $1f
    nop                                           ; $4ae8: $00
    ld [hl], b                                    ; $4ae9: $70
    rrca                                          ; $4aea: $0f
    rlca                                          ; $4aeb: $07
    rrca                                          ; $4aec: $0f
    nop                                           ; $4aed: $00
    rla                                           ; $4aee: $17
    ld e, b                                       ; $4aef: $58
    ld b, a                                       ; $4af0: $47
    pop de                                        ; $4af1: $d1
    adc $3f                                       ; $4af2: $ce $3f
    daa                                           ; $4af4: $27
    cp $00                                        ; $4af5: $fe $00
    ret                                           ; $4af7: $c9


    add e                                         ; $4af8: $83
    db $fd                                        ; $4af9: $fd
    ld b, a                                       ; $4afa: $47
    ld a, c                                       ; $4afb: $79
    cpl                                           ; $4afc: $2f
    ld sp, $00bf                                  ; $4afd: $31 $bf $00
    daa                                           ; $4b00: $27
    and a                                         ; $4b01: $a7
    ccf                                           ; $4b02: $3f
    xor [hl]                                      ; $4b03: $ae
    ld a, $00                                     ; $4b04: $3e $00
    ld e, $c0                                     ; $4b06: $1e $c0
    nop                                           ; $4b08: $00
    sbc h                                         ; $4b09: $9c
    rla                                           ; $4b0a: $17

jr_0ae_4b0b:
    ld h, a                                       ; $4b0b: $67
    ld b, a                                       ; $4b0c: $47
    scf                                           ; $4b0d: $37
    ret z                                         ; $4b0e: $c8

    cp b                                          ; $4b0f: $b8
    ret z                                         ; $4b10: $c8

    jr nz, jr_0ae_4acb                            ; $4b11: $20 $b8

    ld [hl], b                                    ; $4b13: $70
    ld [bc], a                                    ; $4b14: $02
    ld [$7098], sp                                ; $4b15: $08 $98 $70
    sbc b                                         ; $4b18: $98
    ld bc, $03fc                                  ; $4b19: $01 $fc $03
    ld bc, $00fc                                  ; $4b1c: $01 $fc $00
    cp $fe                                        ; $4b1f: $fe $fe
    nop                                           ; $4b21: $00
    ld [bc], a                                    ; $4b22: $02
    ld [$0109], sp                                ; $4b23: $08 $09 $01
    nop                                           ; $4b26: $00
    nop                                           ; $4b27: $00
    dec de                                        ; $4b28: $1b
    ld [hl], l                                    ; $4b29: $75
    ld d, $3f                                     ; $4b2a: $16 $3f
    adc h                                         ; $4b2c: $8c
    cp d                                          ; $4b2d: $ba
    sub c                                         ; $4b2e: $91
    nop                                           ; $4b2f: $00
    xor c                                         ; $4b30: $a9
    and e                                         ; $4b31: $a3
    sub e                                         ; $4b32: $93
    ld c, c                                       ; $4b33: $49

jr_0ae_4b34:
    adc $1b                                       ; $4b34: $ce $1b
    ld d, h                                       ; $4b36: $54

jr_0ae_4b37:
    rla                                           ; $4b37: $17
    nop                                           ; $4b38: $00
    ld c, a                                       ; $4b39: $4f
    ld e, $d8                                     ; $4b3a: $1e $d8
    inc a                                         ; $4b3c: $3c
    ld [hl-], a                                   ; $4b3d: $32
    ld a, b                                       ; $4b3e: $78
    ld h, l                                       ; $4b3f: $65
    ld a, c                                       ; $4b40: $79
    nop                                           ; $4b41: $00
    add b                                         ; $4b42: $80
    ld hl, sp+$0a                                 ; $4b43: $f8 $0a
    ldh a, [rNR22]                                ; $4b45: $f0 $17
    ldh a, [$37]                                  ; $4b47: $f0 $37
    rst $20                                       ; $4b49: $e7
    nop                                           ; $4b4a: $00
    ldh [rNR32], a                                ; $4b4b: $e0 $1c
    ld a, b                                       ; $4b4d: $78
    jr c, @-$06                                   ; $4b4e: $38 $f8

    ld hl, sp-$3d                                 ; $4b50: $f8 $c3
    ldh a, [rP1]                                  ; $4b52: $f0 $00
    jp nz, Jump_000_0dc5                          ; $4b54: $c2 $c5 $0d

    dec c                                         ; $4b57: $0d
    ccf                                           ; $4b58: $3f
    sub [hl]                                      ; $4b59: $96
    xor c                                         ; $4b5a: $a9
    sub [hl]                                      ; $4b5b: $96
    nop                                           ; $4b5c: $00
    and d                                         ; $4b5d: $a2
    ld c, a                                       ; $4b5e: $4f
    ld c, h                                       ; $4b5f: $4c
    jr c, jr_0ae_4b80                             ; $4b60: $38 $1e

    ld hl, sp+$76                                 ; $4b62: $f8 $76
    jr nc, jr_0ae_4b66                            ; $4b64: $30 $00

jr_0ae_4b66:
    inc l                                         ; $4b66: $2c
    ld e, b                                       ; $4b67: $58
    add sp, -$22                                  ; $4b68: $e8 $de
    ld l, [hl]                                    ; $4b6a: $6e
    adc h                                         ; $4b6b: $8c
    inc [hl]                                      ; $4b6c: $34
    jp nz, Jump_000_1e00                          ; $4b6d: $c2 $00 $1e

    sbc h                                         ; $4b70: $9c
    add b                                         ; $4b71: $80
    inc e                                         ; $4b72: $1c
    ld bc, $3e07                                  ; $4b73: $01 $07 $3e
    rrca                                          ; $4b76: $0f
    nop                                           ; $4b77: $00
    inc a                                         ; $4b78: $3c
    inc bc                                        ; $4b79: $03
    ld sp, $2107                                  ; $4b7a: $31 $07 $21
    inc hl                                        ; $4b7d: $23
    inc a                                         ; $4b7e: $3c
    ld h, a                                       ; $4b7f: $67

jr_0ae_4b80:
    nop                                           ; $4b80: $00
    ld a, b                                       ; $4b81: $78
    adc b                                         ; $4b82: $88
    ld a, b                                       ; $4b83: $78
    sub b                                         ; $4b84: $90
    ld [hl], b                                    ; $4b85: $70
    ldh [$30], a                                  ; $4b86: $e0 $30
    ldh [rP1], a                                  ; $4b88: $e0 $00
    jr nc, @-$3e                                  ; $4b8a: $30 $c0

    ld h, b                                       ; $4b8c: $60
    ret nz                                        ; $4b8d: $c0

    ld h, b                                       ; $4b8e: $60
    add b                                         ; $4b8f: $80
    ld b, b                                       ; $4b90: $40
    add b                                         ; $4b91: $80
    ld d, b                                       ; $4b92: $50
    ret nz                                        ; $4b93: $c0

    and b                                         ; $4b94: $a0
    ld a, [de]                                    ; $4b95: $1a
    ld [$32a7], sp                                ; $4b96: $08 $a7 $32
    rrca                                          ; $4b99: $0f
    ld c, [hl]                                    ; $4b9a: $4e
    rrca                                          ; $4b9b: $0f
    ld l, $00                                     ; $4b9c: $2e $00
    rrca                                          ; $4b9e: $0f
    inc l                                         ; $4b9f: $2c
    and b                                         ; $4ba0: $a0
    add a                                         ; $4ba1: $87
    ret nc                                        ; $4ba2: $d0

    ret nz                                        ; $4ba3: $c0

    rra                                           ; $4ba4: $1f
    ret nz                                        ; $4ba5: $c0

    ld b, b                                       ; $4ba6: $40
    nop                                           ; $4ba7: $00
    ld e, $00                                     ; $4ba8: $1e $00
    db $e3                                        ; $4baa: $e3
    db $e4                                        ; $4bab: $e4
    rlca                                          ; $4bac: $07
    call nz, $c407                                ; $4bad: $c4 $07 $c4
    jr nc, @-$7b                                  ; $4bb0: $30 $83

    db $fc                                        ; $4bb2: $fc
    add [hl]                                      ; $4bb3: $86
    ld a, [bc]                                    ; $4bb4: $0a
    call z, Call_000_160a                         ; $4bb5: $cc $0a $16
    add b                                         ; $4bb8: $80
    ld e, d                                       ; $4bb9: $5a
    ret nz                                        ; $4bba: $c0

    ld [$2b8b], sp                                ; $4bbb: $08 $8b $2b
    add b                                         ; $4bbe: $80

jr_0ae_4bbf:
    jr nc, jr_0ae_4bd1                            ; $4bbf: $30 $10

    jr @+$01                                      ; $4bc1: $18 $ff

    nop                                           ; $4bc3: $00
    ld c, $01                                     ; $4bc4: $0e $01
    ld [c], a                                     ; $4bc6: $e2
    ld b, $66                                     ; $4bc7: $06 $66
    nop                                           ; $4bc9: $00
    or $c1                                        ; $4bca: $f6 $c1
    add b                                         ; $4bcc: $80
    db $10                                        ; $4bcd: $10
    jr z, jr_0ae_4bd0                             ; $4bce: $28 $00

jr_0ae_4bd0:
    rrca                                          ; $4bd0: $0f

jr_0ae_4bd1:
    scf                                           ; $4bd1: $37
    ld c, $36                                     ; $4bd2: $0e $36
    inc e                                         ; $4bd4: $1c
    ld h, [hl]                                    ; $4bd5: $66
    jr jr_0ae_4c3c                                ; $4bd6: $18 $64

    rlca                                          ; $4bd8: $07
    jr jr_0ae_4bf6                                ; $4bd9: $18 $1b

    ld hl, sp+$03                                 ; $4bdb: $f8 $03
    inc bc                                        ; $4bdd: $03
    cp d                                          ; $4bde: $ba
    ld [bc], a                                    ; $4bdf: $02
    add hl, de                                    ; $4be0: $19
    nop                                           ; $4be1: $00
    inc bc                                        ; $4be2: $03
    ld d, e                                       ; $4be3: $53
    db $10                                        ; $4be4: $10
    inc bc                                        ; $4be5: $03
    ld [hl], d                                    ; $4be6: $72
    ld [bc], a                                    ; $4be7: $02
    ld h, b                                       ; $4be8: $60
    nop                                           ; $4be9: $00
    ld bc, $23f8                                  ; $4bea: $01 $f8 $23
    ld [$01fe], sp                                ; $4bed: $08 $fe $01
    db $fc                                        ; $4bf0: $fc
    inc bc                                        ; $4bf1: $03
    ld a, [$0600]                                 ; $4bf2: $fa $00 $06
    db $e4                                        ; $4bf5: $e4

jr_0ae_4bf6:
    db $10                                        ; $4bf6: $10
    ld e, $00                                     ; $4bf7: $1e $00
    rst $20                                       ; $4bf9: $e7
    jr jr_0ae_4bbf                                ; $4bfa: $18 $c3

    nop                                           ; $4bfc: $00
    inc b                                         ; $4bfd: $04
    ld a, h                                       ; $4bfe: $7c
    ldh a, [$6e]                                  ; $4bff: $f0 $6e
    ld a, c                                       ; $4c01: $79
    ld c, a                                       ; $4c02: $4f
    add hl, sp                                    ; $4c03: $39
    rlca                                          ; $4c04: $07
    ld [$783e], sp                                ; $4c05: $08 $3e $78
    nop                                           ; $4c08: $00
    ld a, [hl]                                    ; $4c09: $7e
    ld b, b                                       ; $4c0a: $40
    ld [$00ff], sp                                ; $4c0b: $08 $ff $00
    ld a, a                                       ; $4c0e: $7f
    nop                                           ; $4c0f: $00
    nop                                           ; $4c10: $00
    add b                                         ; $4c11: $80
    ccf                                           ; $4c12: $3f
    ret nz                                        ; $4c13: $c0

    rra                                           ; $4c14: $1f
    ld h, a                                       ; $4c15: $67
    add a                                         ; $4c16: $87
    dec sp                                        ; $4c17: $3b

jr_0ae_4c18:
    ld h, b                                       ; $4c18: $60
    ld b, e                                       ; $4c19: $43
    ld d, b                                       ; $4c1a: $50
    ld hl, sp+$72                                 ; $4c1b: $f8 $72
    jr z, jr_0ae_4c20                             ; $4c1d: $28 $01

    nop                                           ; $4c1f: $00

jr_0ae_4c20:
    ld b, $01                                     ; $4c20: $06 $01
    rst $30                                       ; $4c22: $f7
    ld b, b                                       ; $4c23: $40
    ld hl, sp+$5c                                 ; $4c24: $f8 $5c
    jr jr_0ae_4c18                                ; $4c26: $18 $f0

jr_0ae_4c28:
    rst $30                                       ; $4c28: $f7
    rst $00                                       ; $4c29: $c7
    ld hl, sp-$1d                                 ; $4c2a: $f8 $e3
    db $dd                                        ; $4c2c: $dd
    nop                                           ; $4c2d: $00
    inc e                                         ; $4c2e: $1c
    db $ec                                        ; $4c2f: $ec
    inc a                                         ; $4c30: $3c
    db $fc                                        ; $4c31: $fc
    jr z, jr_0ae_4c68                             ; $4c32: $28 $34

    ld b, e                                       ; $4c34: $43
    ld d, b                                       ; $4c35: $50
    nop                                           ; $4c36: $00
    add [hl]                                      ; $4c37: $86
    and b                                         ; $4c38: $a0
    ret nz                                        ; $4c39: $c0

    nop                                           ; $4c3a: $00
    dec l                                         ; $4c3b: $2d

jr_0ae_4c3c:
    call $008e                                    ; $4c3c: $cd $8e $00
    nop                                           ; $4c3f: $00
    inc h                                         ; $4c40: $24
    ld c, $54                                     ; $4c41: $0e $54
    inc sp                                        ; $4c43: $33
    ld h, b                                       ; $4c44: $60
    jr nz, jr_0ae_4c28                            ; $4c45: $20 $e1

    ld c, a                                       ; $4c47: $4f
    nop                                           ; $4c48: $00
    db $ed                                        ; $4c49: $ed
    ld [c], a                                     ; $4c4a: $e2
    ld bc, $700d                                  ; $4c4b: $01 $0d $70
    add b                                         ; $4c4e: $80
    ld [$006e], sp                                ; $4c4f: $08 $6e $00
    adc d                                         ; $4c52: $8a
    jp nc, $d288                                  ; $4c53: $d2 $88 $d2

    dec c                                         ; $4c56: $0d
    add c                                         ; $4c57: $81
    ld b, $00                                     ; $4c58: $06 $00
    nop                                           ; $4c5a: $00
    inc bc                                        ; $4c5b: $03
    add b                                         ; $4c5c: $80
    nop                                           ; $4c5d: $00
    add b                                         ; $4c5e: $80
    ld a, a                                       ; $4c5f: $7f
    ld a, a                                       ; $4c60: $7f
    cp a                                          ; $4c61: $bf
    ret nz                                        ; $4c62: $c0

    ld [$0f80], sp                                ; $4c63: $08 $80 $0f
    ld [hl], b                                    ; $4c66: $70
    inc de                                        ; $4c67: $13

jr_0ae_4c68:
    ld a, h                                       ; $4c68: $7c
    jr nz, jr_0ae_4c7a                            ; $4c69: $20 $0f

    ld [hl], b                                    ; $4c6b: $70
    rlca                                          ; $4c6c: $07
    inc bc                                        ; $4c6d: $03
    sbc b                                         ; $4c6e: $98
    add e                                         ; $4c6f: $83
    inc c                                         ; $4c70: $0c
    ldh [$f7], a                                  ; $4c71: $e0 $f7
    ldh a, [$d0]                                  ; $4c73: $f0 $d0
    ld c, b                                       ; $4c75: $48
    sbc b                                         ; $4c76: $98
    ld [$f000], sp                                ; $4c77: $08 $00 $f0

jr_0ae_4c7a:
    ldh a, [$03]                                  ; $4c7a: $f0 $03
    ldh a, [$0e]                                  ; $4c7c: $f0 $0e
    ldh [$c1], a                                  ; $4c7e: $e0 $c1
    ret c                                         ; $4c80: $d8

    nop                                           ; $4c81: $00
    rlca                                          ; $4c82: $07
    jr nc, jr_0ae_4c94                            ; $4c83: $30 $0f

    ld h, b                                       ; $4c85: $60
    rrca                                          ; $4c86: $0f
    ld h, c                                       ; $4c87: $61
    adc [hl]                                      ; $4c88: $8e
    and b                                         ; $4c89: $a0
    nop                                           ; $4c8a: $00
    ret nc                                        ; $4c8b: $d0

    ret nz                                        ; $4c8c: $c0

    nop                                           ; $4c8d: $00
    ld h, b                                       ; $4c8e: $60
    inc c                                         ; $4c8f: $0c
    call nz, $8c12                                ; $4c90: $c4 $12 $8c
    nop                                           ; $4c93: $00

jr_0ae_4c94:
    ld [hl+], a                                   ; $4c94: $22
    ld e, $46                                     ; $4c95: $1e $46
    ld a, [hl-]                                   ; $4c97: $3a
    ld b, [hl]                                    ; $4c98: $46
    ld a, [hl-]                                   ; $4c99: $3a
    ld [hl], h                                    ; $4c9a: $74
    inc e                                         ; $4c9b: $1c
    nop                                           ; $4c9c: $00
    daa                                           ; $4c9d: $27
    ld b, $8f                                     ; $4c9e: $06 $8f
    ret z                                         ; $4ca0: $c8

    rla                                           ; $4ca1: $17
    ldh a, [$97]                                  ; $4ca2: $f0 $97
    ld h, a                                       ; $4ca4: $67
    nop                                           ; $4ca5: $00

jr_0ae_4ca6:
    sub a                                         ; $4ca6: $97
    ld h, a                                       ; $4ca7: $67
    sub d                                         ; $4ca8: $92
    ldh a, [$b1]                                  ; $4ca9: $f0 $b1
    ldh a, [$81]                                  ; $4cab: $f0 $81
    add c                                         ; $4cad: $81
    nop                                           ; $4cae: $00
    cp $00                                        ; $4caf: $fe $00
    db $fc                                        ; $4cb1: $fc
    or [hl]                                       ; $4cb2: $b6
    add [hl]                                      ; $4cb3: $86
    ld a, d                                       ; $4cb4: $7a
    db $f4                                        ; $4cb5: $f4
    cp $00                                        ; $4cb6: $fe $00
    ld a, b                                       ; $4cb8: $78
    or [hl]                                       ; $4cb9: $b6
    ld bc, $dbff                                  ; $4cba: $01 $ff $db
    dec h                                         ; $4cbd: $25
    sbc l                                         ; $4cbe: $9d
    ld b, a                                       ; $4cbf: $47
    nop                                           ; $4cc0: $00
    inc c                                         ; $4cc1: $0c
    ld [hl], a                                    ; $4cc2: $77
    rlca                                          ; $4cc3: $07
    add hl, bc                                    ; $4cc4: $09
    ld a, [c]                                     ; $4cc5: $f2
    inc bc                                        ; $4cc6: $03
    ld a, h                                       ; $4cc7: $7c
    nop                                           ; $4cc8: $00
    nop                                           ; $4cc9: $00
    ccf                                           ; $4cca: $3f
    nop                                           ; $4ccb: $00
    rra                                           ; $4ccc: $1f
    sbc a                                         ; $4ccd: $9f
    ret nz                                        ; $4cce: $c0

    sbc a                                         ; $4ccf: $9f
    ret nz                                        ; $4cd0: $c0

    xor a                                         ; $4cd1: $af
    nop                                           ; $4cd2: $00
    ld hl, sp+$01                                 ; $4cd3: $f8 $01
    cp $80                                        ; $4cd5: $fe $80
    rra                                           ; $4cd7: $1f
    add b                                         ; $4cd8: $80
    adc a                                         ; $4cd9: $8f
    ldh [rNR23], a                                ; $4cda: $e0 $18
    scf                                           ; $4cdc: $37
    jr c, jr_0ae_4ca6                             ; $4cdd: $38 $c7

    ld a, [$7c10]                                 ; $4cdf: $fa $10 $7c
    db $10                                        ; $4ce2: $10
    ld [hl], a                                    ; $4ce3: $77
    sbc b                                         ; $4ce4: $98
    dec de                                        ; $4ce5: $1b
    nop                                           ; $4ce6: $00
    ldh [$0c], a                                  ; $4ce7: $e0 $0c
    ldh a, [rTMA]                                 ; $4ce9: $f0 $06
    or $06                                        ; $4ceb: $f6 $06
    db $f4                                        ; $4ced: $f4
    dec b                                         ; $4cee: $05
    nop                                           ; $4cef: $00
    adc [hl]                                      ; $4cf0: $8e
    and b                                         ; $4cf1: $a0
    add [hl]                                      ; $4cf2: $86
    or b                                          ; $4cf3: $b0
    add $d0                                       ; $4cf4: $c6 $d0
    add $d0                                       ; $4cf6: $c6 $d0
    nop                                           ; $4cf8: $00
    jp nz, $e8d8                                  ; $4cf9: $c2 $d8 $e8

    ld [c], a                                     ; $4cfc: $e2
    add sp, -$1e                                  ; $4cfd: $e8 $e2
    ld a, [bc]                                    ; $4cff: $0a
    ld [c], a                                     ; $4d00: $e2
    nop                                           ; $4d01: $00
    ld [hl], a                                    ; $4d02: $77
    dec e                                         ; $4d03: $1d
    halt                                          ; $4d04: $76
    inc e                                         ; $4d05: $1c
    halt                                          ; $4d06: $76
    ld b, b                                       ; $4d07: $40
    ld [hl], e                                    ; $4d08: $73
    ld c, c                                       ; $4d09: $49
    nop                                           ; $4d0a: $00
    ld [hl], e                                    ; $4d0b: $73
    ld h, h                                       ; $4d0c: $64
    ld h, e                                       ; $4d0d: $63
    ld h, h                                       ; $4d0e: $64
    ld e, c                                       ; $4d0f: $59
    ld b, h                                       ; $4d10: $44
    add hl, sp                                    ; $4d11: $39
    dec de                                        ; $4d12: $1b
    nop                                           ; $4d13: $00
    ld c, c                                       ; $4d14: $49
    ld sp, $344d                                  ; $4d15: $31 $4d $34
    ld b, a                                       ; $4d18: $47
    ld a, e                                       ; $4d19: $7b
    inc a                                         ; $4d1a: $3c
    ld e, d                                       ; $4d1b: $5a
    nop                                           ; $4d1c: $00
    db $10                                        ; $4d1d: $10
    jr nc, jr_0ae_4d2f                            ; $4d1e: $30 $0f

    add [hl]                                      ; $4d20: $86
    rrca                                          ; $4d21: $0f
    add a                                         ; $4d22: $87
    ld c, h                                       ; $4d23: $4c
    jp $bd00                                      ; $4d24: $c3 $00 $bd


    ld h, [hl]                                    ; $4d27: $66
    sbc c                                         ; $4d28: $99
    ld b, d                                       ; $4d29: $42
    db $db                                        ; $4d2a: $db
    ld [c], a                                     ; $4d2b: $e2
    jp hl                                         ; $4d2c: $e9


    ld e, e                                       ; $4d2d: $5b
    nop                                           ; $4d2e: $00

jr_0ae_4d2f:
    ld l, l                                       ; $4d2f: $6d
    ld [$5a65], sp                                ; $4d30: $08 $65 $5a
    dec [hl]                                      ; $4d33: $35
    and l                                         ; $4d34: $a5
    ld d, l                                       ; $4d35: $55
    add h                                         ; $4d36: $84
    nop                                           ; $4d37: $00
    xor a                                         ; $4d38: $af
    ret nz                                        ; $4d39: $c0

    rst $20                                       ; $4d3a: $e7
    ret nz                                        ; $4d3b: $c0

    scf                                           ; $4d3c: $37
    sub b                                         ; $4d3d: $90
    scf                                           ; $4d3e: $37
    or b                                          ; $4d3f: $b0
    nop                                           ; $4d40: $00
    ret nc                                        ; $4d41: $d0

    rla                                           ; $4d42: $17
    ret nc                                        ; $4d43: $d0

    rla                                           ; $4d44: $17
    rst $20                                       ; $4d45: $e7
    scf                                           ; $4d46: $37
    db $e3                                        ; $4d47: $e3
    dec sp                                        ; $4d48: $3b
    add b                                         ; $4d49: $80
    ld h, b                                       ; $4d4a: $60
    add hl, de                                    ; $4d4b: $19
    nop                                           ; $4d4c: $00
    nop                                           ; $4d4d: $00
    db $fd                                        ; $4d4e: $fd
    db $fc                                        ; $4d4f: $fc
    ld bc, $fcfc                                  ; $4d50: $01 $fc $fc
    nop                                           ; $4d53: $00
    db $fd                                        ; $4d54: $fd
    ld bc, $f400                                  ; $4d55: $01 $00 $f4
    dec b                                         ; $4d58: $05
    db $ec                                        ; $4d59: $ec
    dec c                                         ; $4d5a: $0d
    db $e3                                        ; $4d5b: $e3
    ld bc, $e30b                                  ; $4d5c: $01 $0b $e3
    dec bc                                        ; $4d5f: $0b
    dec de                                        ; $4d60: $1b
    jp $c717                                      ; $4d61: $c3 $17 $c7


    ld [bc], a                                    ; $4d64: $02
    ld [$0c04], sp                                ; $4d65: $08 $04 $0c
    ldh [rTIMA], a                                ; $4d68: $e0 $05
    pop af                                        ; $4d6a: $f1
    inc b                                         ; $4d6b: $04
    ld a, e                                       ; $4d6c: $7b
    nop                                           ; $4d6d: $00
    ld bc, $00f8                                  ; $4d6e: $01 $f8 $00
    ld hl, sp-$07                                 ; $4d71: $f8 $f9
    ld sp, hl                                     ; $4d73: $f9
    ld a, [$0705]                                 ; $4d74: $fa $05 $07
    jr c, @+$3c                                   ; $4d77: $38 $3a

    nop                                           ; $4d79: $00
    ld [hl], d                                    ; $4d7a: $72
    ld [hl], c                                    ; $4d7b: $71
    call z, Call_000_05ef                         ; $4d7c: $cc $ef $05

jr_0ae_4d7f:
    call nz, $9029                                ; $4d7f: $c4 $29 $90
    nop                                           ; $4d82: $00
    jr nc, jr_0ae_4dce                            ; $4d83: $30 $49

    ld h, h                                       ; $4d85: $64
    inc d                                         ; $4d86: $14
    and b                                         ; $4d87: $a0
    ld b, [hl]                                    ; $4d88: $46
    ld h, h                                       ; $4d89: $64
    ld h, e                                       ; $4d8a: $63
    nop                                           ; $4d8b: $00
    adc h                                         ; $4d8c: $8c
    rrca                                          ; $4d8d: $0f
    db $e4                                        ; $4d8e: $e4
    rlca                                          ; $4d8f: $07
    ld h, h                                       ; $4d90: $64
    ld [hl+], a                                   ; $4d91: $22
    ld bc, $0018                                  ; $4d92: $01 $18 $00
    or c                                          ; $4d95: $b1
    ld l, c                                       ; $4d96: $69
    push de                                       ; $4d97: $d5
    cp c                                          ; $4d98: $b9
    xor b                                         ; $4d99: $a8
    add h                                         ; $4d9a: $84
    ld h, a                                       ; $4d9b: $67
    and d                                         ; $4d9c: $a2
    nop                                           ; $4d9d: $00
    daa                                           ; $4d9e: $27
    jp nz, $0703                                  ; $4d9f: $c2 $03 $07

    and a                                         ; $4da2: $a7
    ld b, a                                       ; $4da3: $47
    ld de, $00f0                                  ; $4da4: $11 $f0 $00
    sbc c                                         ; $4da7: $99
    ld l, b                                       ; $4da8: $68
    adc e                                         ; $4da9: $8b
    ld a, [$bacb]                                 ; $4daa: $fa $cb $ba
    jr jr_0ae_4d7f                                ; $4dad: $18 $d0

    nop                                           ; $4daf: $00
    inc e                                         ; $4db0: $1c
    pop de                                        ; $4db1: $d1
    add $0e                                       ; $4db2: $c6 $0e
    add $0e                                       ; $4db4: $c6 $0e
    ld b, $c0                                     ; $4db6: $06 $c0
    nop                                           ; $4db8: $00
    ld d, $90                                     ; $4db9: $16 $90
    add sp, $7a                                   ; $4dbb: $e8 $7a
    xor d                                         ; $4dbd: $aa
    ld [de], a                                    ; $4dbe: $12
    ld bc, $0002                                  ; $4dbf: $01 $02 $00
    add c                                         ; $4dc2: $81
    add d                                         ; $4dc3: $82
    jp $0382                                      ; $4dc4: $c3 $82 $03


    ld h, d                                       ; $4dc7: $62
    ld b, d                                       ; $4dc8: $42
    ld [hl-], a                                   ; $4dc9: $32
    nop                                           ; $4dca: $00
    ld b, d                                       ; $4dcb: $42
    ld [hl-], a                                   ; $4dcc: $32
    inc sp                                        ; $4dcd: $33

jr_0ae_4dce:
    ld b, e                                       ; $4dce: $43
    rlca                                          ; $4dcf: $07
    inc bc                                        ; $4dd0: $03
    or b                                          ; $4dd1: $b0
    add a                                         ; $4dd2: $87
    nop                                           ; $4dd3: $00
    and b                                         ; $4dd4: $a0
    adc a                                         ; $4dd5: $8f
    and b                                         ; $4dd6: $a0
    adc a                                         ; $4dd7: $8f
    ld h, b                                       ; $4dd8: $60
    rrca                                          ; $4dd9: $0f
    ld b, b                                       ; $4dda: $40
    rra                                           ; $4ddb: $1f
    nop                                           ; $4ddc: $00
    ld b, b                                       ; $4ddd: $40
    ld e, a                                       ; $4dde: $5f
    ret nz                                        ; $4ddf: $c0

    ld e, a                                       ; $4de0: $5f
    nop                                           ; $4de1: $00
    ccf                                           ; $4de2: $3f
    rrca                                          ; $4de3: $0f
    add hl, bc                                    ; $4de4: $09
    nop                                           ; $4de5: $00
    dec c                                         ; $4de6: $0d
    add hl, bc                                    ; $4de7: $09
    ld c, $0b                                     ; $4de8: $0e $0b
    dec bc                                        ; $4dea: $0b
    ld c, $13                                     ; $4deb: $0e $13
    ld a, [de]                                    ; $4ded: $1a
    nop                                           ; $4dee: $00
    call z, $8fcd                                 ; $4def: $cc $cd $8f
    add b                                         ; $4df2: $80
    cp a                                          ; $4df3: $bf
    pop hl                                        ; $4df4: $e1
    xor b                                         ; $4df5: $a8
    push hl                                       ; $4df6: $e5
    nop                                           ; $4df7: $00
    rrca                                          ; $4df8: $0f
    sbc h                                         ; $4df9: $9c
    adc e                                         ; $4dfa: $8b
    reti                                          ; $4dfb: $d9


    ld c, e                                       ; $4dfc: $4b
    call nz, $d757                                ; $4dfd: $c4 $57 $d7
    nop                                           ; $4e00: $00
    nop                                           ; $4e01: $00
    ld c, $7e                                     ; $4e02: $0e $7e
    sbc l                                         ; $4e04: $9d
    ld b, h                                       ; $4e05: $44
    inc a                                         ; $4e06: $3c
    xor d                                         ; $4e07: $aa
    ld b, $00                                     ; $4e08: $06 $00
    add [hl]                                      ; $4e0a: $86
    ld b, h                                       ; $4e0b: $44
    nop                                           ; $4e0c: $00
    ret nz                                        ; $4e0d: $c0

    xor $68                                       ; $4e0e: $ee $68
    adc h                                         ; $4e10: $8c
    adc d                                         ; $4e11: $8a
    nop                                           ; $4e12: $00
    nop                                           ; $4e13: $00
    ld h, [hl]                                    ; $4e14: $66
    rst $38                                       ; $4e15: $ff
    ldh a, [$f3]                                  ; $4e16: $f0 $f3
    add b                                         ; $4e18: $80
    rst $08                                       ; $4e19: $cf
    or [hl]                                       ; $4e1a: $b6
    nop                                           ; $4e1b: $00
    dec b                                         ; $4e1c: $05
    dec b                                         ; $4e1d: $05
    jr c, jr_0ae_4e78                             ; $4e1e: $38 $58

    ld a, h                                       ; $4e20: $7c
    sbc b                                         ; $4e21: $98
    ld a, h                                       ; $4e22: $7c
    cp d                                          ; $4e23: $ba
    nop                                           ; $4e24: $00
    ld a, h                                       ; $4e25: $7c
    cp d                                          ; $4e26: $ba
    inc e                                         ; $4e27: $1c
    add d                                         ; $4e28: $82
    call z, Call_000_38d2                         ; $4e29: $cc $d2 $38
    sbc d                                         ; $4e2c: $9a
    nop                                           ; $4e2d: $00
    ld [$7080], sp                                ; $4e2e: $08 $80 $70
    jr nc, jr_0ae_4ea7                            ; $4e31: $30 $74

    jr jr_0ae_4e42                                ; $4e33: $18 $0d

    ld [hl], c                                    ; $4e35: $71
    nop                                           ; $4e36: $00
    dec c                                         ; $4e37: $0d
    ld [hl], b                                    ; $4e38: $70
    dec e                                         ; $4e39: $1d
    ld b, $18                                     ; $4e3a: $06 $18
    add hl, sp                                    ; $4e3c: $39
    ld h, h                                       ; $4e3d: $64
    ld d, a                                       ; $4e3e: $57
    nop                                           ; $4e3f: $00
    ld h, b                                       ; $4e40: $60
    ld d, c                                       ; $4e41: $51

jr_0ae_4e42:
    ld b, l                                       ; $4e42: $45
    scf                                           ; $4e43: $37
    ld b, $23                                     ; $4e44: $06 $23
    ld c, b                                       ; $4e46: $48
    adc [hl]                                      ; $4e47: $8e
    nop                                           ; $4e48: $00
    dec a                                         ; $4e49: $3d
    and $50                                       ; $4e4a: $e6 $50
    xor a                                         ; $4e4c: $af
    and a                                         ; $4e4d: $a7
    ld h, c                                       ; $4e4e: $61
    ccf                                           ; $4e4f: $3f
    add b                                         ; $4e50: $80
    jr nz, jr_0ae_4e92                            ; $4e51: $20 $3f

    add b                                         ; $4e53: $80
    rst $18                                       ; $4e54: $df
    ld bc, $8000                                  ; $4e55: $01 $00 $80
    rst $38                                       ; $4e58: $ff
    add b                                         ; $4e59: $80
    rrca                                          ; $4e5a: $0f
    nop                                           ; $4e5b: $00
    adc [hl]                                      ; $4e5c: $8e
    halt                                          ; $4e5d: $76

jr_0ae_4e5e:
    ld e, [hl]                                    ; $4e5e: $5e
    ld h, [hl]                                    ; $4e5f: $66
    add d                                         ; $4e60: $82
    sbc [hl]                                      ; $4e61: $9e
    rla                                           ; $4e62: $17
    rrca                                          ; $4e63: $0f
    ld [$0f00], sp                                ; $4e64: $08 $00 $0f
    rlca                                          ; $4e67: $07
    inc c                                         ; $4e68: $0c
    xor b                                         ; $4e69: $a8
    ld a, [hl+]                                   ; $4e6a: $2a
    ld a, h                                       ; $4e6b: $7c
    jr c, jr_0ae_4e5e                             ; $4e6c: $38 $f0

    nop                                           ; $4e6e: $00
    ld [hl], b                                    ; $4e6f: $70
    ccf                                           ; $4e70: $3f
    jp $ff00                                      ; $4e71: $c3 $00 $ff


    ret nc                                        ; $4e74: $d0

    ret nz                                        ; $4e75: $c0

    rra                                           ; $4e76: $1f
    nop                                           ; $4e77: $00

jr_0ae_4e78:
    ret nz                                        ; $4e78: $c0

    nop                                           ; $4e79: $00
    ret nz                                        ; $4e7a: $c0

    nop                                           ; $4e7b: $00
    nop                                           ; $4e7c: $00
    ld h, b                                       ; $4e7d: $60
    pop af                                        ; $4e7e: $f1
    add b                                         ; $4e7f: $80
    inc b                                         ; $4e80: $04
    ld a, h                                       ; $4e81: $7c
    ldh a, [$cf]                                  ; $4e82: $f0 $cf
    sbc a                                         ; $4e84: $9f
    ldh [rNR52], a                                ; $4e85: $e0 $26
    add hl, de                                    ; $4e87: $19
    nop                                           ; $4e88: $00
    nop                                           ; $4e89: $00
    ld bc, $cad6                                  ; $4e8a: $01 $d6 $ca
    inc l                                         ; $4e8d: $2c
    inc [hl]                                      ; $4e8e: $34
    inc a                                         ; $4e8f: $3c
    and c                                         ; $4e90: $a1
    ld a, b                                       ; $4e91: $78

jr_0ae_4e92:
    ld [hl], $21                                  ; $4e92: $36 $21
    nop                                           ; $4e94: $00
    rst $38                                       ; $4e95: $ff
    nop                                           ; $4e96: $00
    ret nz                                        ; $4e97: $c0

    ret nz                                        ; $4e98: $c0

    xor a                                         ; $4e99: $af
    ld h, c                                       ; $4e9a: $61
    rst $08                                       ; $4e9b: $cf
    jr nz, @+$22                                  ; $4e9c: $20 $20

    rst $30                                       ; $4e9e: $f7
    add a                                         ; $4e9f: $87
    db $10                                        ; $4ea0: $10
    jr z, jr_0ae_4ea3                             ; $4ea1: $28 $00

jr_0ae_4ea3:
    rrca                                          ; $4ea3: $0f
    rra                                           ; $4ea4: $1f
    db $e3                                        ; $4ea5: $e3
    rrca                                          ; $4ea6: $0f

jr_0ae_4ea7:
    nop                                           ; $4ea7: $00
    di                                            ; $4ea8: $f3
    nop                                           ; $4ea9: $00
    inc bc                                        ; $4eaa: $03
    ld [$f803], sp                                ; $4eab: $08 $03 $f8
    inc bc                                        ; $4eae: $03
    inc bc                                        ; $4eaf: $03
    add b                                         ; $4eb0: $80
    cp d                                          ; $4eb1: $ba
    ld [bc], a                                    ; $4eb2: $02
    db $f4                                        ; $4eb3: $f4
    adc h                                         ; $4eb4: $8c
    nop                                           ; $4eb5: $00
    ld hl, sp+$07                                 ; $4eb6: $f8 $07
    rst $30                                       ; $4eb8: $f7
    rst $08                                       ; $4eb9: $cf
    ld b, b                                       ; $4eba: $40
    rrca                                          ; $4ebb: $0f
    ld [$102b], sp                                ; $4ebc: $08 $2b $10
    inc bc                                        ; $4ebf: $03
    adc e                                         ; $4ec0: $8b
    ld [bc], a                                    ; $4ec1: $02
    ld h, b                                       ; $4ec2: $60
    nop                                           ; $4ec3: $00
    ld bc, $23f8                                  ; $4ec4: $01 $f8 $23
    ld [$0703], sp                                ; $4ec7: $08 $03 $07
    ld bc, $f0ff                                  ; $4eca: $01 $ff $f0
    nop                                           ; $4ecd: $00
    ldh a, [$ce]                                  ; $4ece: $f0 $ce
    ld h, b                                       ; $4ed0: $60
    nop                                           ; $4ed1: $00
    inc a                                         ; $4ed2: $3c
    inc a                                         ; $4ed3: $3c
    ld h, d                                       ; $4ed4: $62
    ld a, h                                       ; $4ed5: $7c
    nop                                           ; $4ed6: $00
    ld bc, $e7fe                                  ; $4ed7: $01 $fe $e7
    pop bc                                        ; $4eda: $c1
    ld e, e                                       ; $4edb: $5b
    jp Jump_000_003c                              ; $4edc: $c3 $3c $00


    ld [$00fe], sp                                ; $4edf: $08 $fe $00
    db $fc                                        ; $4ee2: $fc
    ld sp, hl                                     ; $4ee3: $f9
    ld b, b                                       ; $4ee4: $40
    jr @+$42                                      ; $4ee5: $18 $40

    add b                                         ; $4ee7: $80
    ldh [rSB], a                                  ; $4ee8: $e0 $01
    ret nz                                        ; $4eea: $c0

    ldh a, [rTMA]                                 ; $4eeb: $f0 $06
    rlca                                          ; $4eed: $07
    inc b                                         ; $4eee: $04
    rla                                           ; $4eef: $17
    push hl                                       ; $4ef0: $e5
    ld d, b                                       ; $4ef1: $50
    jr nc, @+$03                                  ; $4ef2: $30 $01

    ldh a, [$f0]                                  ; $4ef4: $f0 $f0
    db $ec                                        ; $4ef6: $ec
    adc b                                         ; $4ef7: $88
    ldh a, [rNR32]                                ; $4ef8: $f0 $1c
    ldh [$60], a                                  ; $4efa: $e0 $60
    ret z                                         ; $4efc: $c8

    nop                                           ; $4efd: $00
    ld bc, $0300                                  ; $4efe: $01 $00 $03
    inc bc                                        ; $4f01: $03
    nop                                           ; $4f02: $00
    nop                                           ; $4f03: $00
    ld [bc], a                                    ; $4f04: $02
    ld bc, $0500                                  ; $4f05: $01 $00 $05
    inc bc                                        ; $4f08: $03
    inc e                                         ; $4f09: $1c
    rlca                                          ; $4f0a: $07
    inc a                                         ; $4f0b: $3c
    rlca                                          ; $4f0c: $07
    ld a, b                                       ; $4f0d: $78
    dec de                                        ; $4f0e: $1b
    nop                                           ; $4f0f: $00
    ld [hl], b                                    ; $4f10: $70
    ld sp, $e028                                  ; $4f11: $31 $28 $e0
    sbc b                                         ; $4f14: $98
    rra                                           ; $4f15: $1f
    ld a, a                                       ; $4f16: $7f
    ld a, h                                       ; $4f17: $7c
    nop                                           ; $4f18: $00
    ldh a, [$cf]                                  ; $4f19: $f0 $cf
    ld h, b                                       ; $4f1b: $60
    and b                                         ; $4f1c: $a0
    ret nz                                        ; $4f1d: $c0

    ld b, b                                       ; $4f1e: $40
    rra                                           ; $4f1f: $1f
    ldh [rP1], a                                  ; $4f20: $e0 $00
    jr c, jr_0ae_4f5c                             ; $4f22: $38 $38

    ccf                                           ; $4f24: $3f
    call c, $f0e8                                 ; $4f25: $dc $e8 $f0
    rlca                                          ; $4f28: $07
    rst $38                                       ; $4f29: $ff
    nop                                           ; $4f2a: $00
    ldh a, [$cf]                                  ; $4f2b: $f0 $cf
    ld bc, $1b01                                  ; $4f2d: $01 $01 $1b
    rst $38                                       ; $4f30: $ff
    ret nz                                        ; $4f31: $c0

    add b                                         ; $4f32: $80
    nop                                           ; $4f33: $00
    dec c                                         ; $4f34: $0d
    rst $10                                       ; $4f35: $d7
    dec e                                         ; $4f36: $1d
    xor d                                         ; $4f37: $aa
    ld e, $32                                     ; $4f38: $1e $32
    inc c                                         ; $4f3a: $0c
    adc l                                         ; $4f3b: $8d
    nop                                           ; $4f3c: $00
    ldh a, [$e1]                                  ; $4f3d: $f0 $e1
    db $fc                                        ; $4f3f: $fc
    inc a                                         ; $4f40: $3c
    ldh a, [$8f]                                  ; $4f41: $f0 $8f
    inc e                                         ; $4f43: $1c
    inc bc                                        ; $4f44: $03
    nop                                           ; $4f45: $00
    ld b, a                                       ; $4f46: $47
    add a                                         ; $4f47: $87
    ld sp, $f8c1                                  ; $4f48: $31 $c1 $f8
    db $e4                                        ; $4f4b: $e4
    jr c, @-$3a                                   ; $4f4c: $38 $c4

    nop                                           ; $4f4e: $00
    add sp, $18                                   ; $4f4f: $e8 $18
    ld hl, sp+$08                                 ; $4f51: $f8 $08
    ld sp, hl                                     ; $4f53: $f9
    ret                                           ; $4f54: $c9


    ld a, $e6                                     ; $4f55: $3e $e6
    ld a, [bc]                                    ; $4f57: $0a
    ldh [$ec], a                                  ; $4f58: $e0 $ec
    ldh a, [$36]                                  ; $4f5a: $f0 $36

jr_0ae_4f5c:
    ret nc                                        ; $4f5c: $d0

    ld c, b                                       ; $4f5d: $48
    ld a, a                                       ; $4f5e: $7f
    ld [bc], a                                    ; $4f5f: $02
    nop                                           ; $4f60: $00
    ld b, $00                                     ; $4f61: $06 $00
    ld bc, $0619                                  ; $4f63: $01 $19 $06
    inc [hl]                                      ; $4f66: $34
    scf                                           ; $4f67: $37
    db $10                                        ; $4f68: $10
    ld [hl], c                                    ; $4f69: $71
    dec d                                         ; $4f6a: $15
    nop                                           ; $4f6b: $00
    pop af                                        ; $4f6c: $f1
    adc $e0                                       ; $4f6d: $ce $e0
    rst $08                                       ; $4f6f: $cf
    ldh [$e0], a                                  ; $4f70: $e0 $e0

jr_0ae_4f72:
    rst $08                                       ; $4f72: $cf
    inc e                                         ; $4f73: $1c
    nop                                           ; $4f74: $00
    add b                                         ; $4f75: $80
    ld a, a                                       ; $4f76: $7f
    ld bc, $c03f                                  ; $4f77: $01 $3f $c0
    ret nz                                        ; $4f7a: $c0

    ld c, a                                       ; $4f7b: $4f
    ldh a, [rP1]                                  ; $4f7c: $f0 $00
    db $10                                        ; $4f7e: $10
    ld b, d                                       ; $4f7f: $42
    ld [hl], b                                    ; $4f80: $70
    sbc a                                         ; $4f81: $9f
    ld [de], a                                    ; $4f82: $12
    ld b, $e0                                     ; $4f83: $06 $e0
    ld [bc], a                                    ; $4f85: $02
    nop                                           ; $4f86: $00
    dec a                                         ; $4f87: $3d
    jr c, jr_0ae_4fb1                             ; $4f88: $38 $27

    rlca                                          ; $4f8a: $07
    nop                                           ; $4f8b: $00
    add b                                         ; $4f8c: $80
    nop                                           ; $4f8d: $00
    ld c, b                                       ; $4f8e: $48
    nop                                           ; $4f8f: $00
    ld hl, sp-$4c                                 ; $4f90: $f8 $b4
    ld c, h                                       ; $4f92: $4c
    ldh [$9c], a                                  ; $4f93: $e0 $9c
    ret nc                                        ; $4f95: $d0

    ret z                                         ; $4f96: $c8

    jr nc, jr_0ae_4f99                            ; $4f97: $30 $00

jr_0ae_4f99:
    and b                                         ; $4f99: $a0
    ld c, $8e                                     ; $4f9a: $0e $8e
    nop                                           ; $4f9c: $00
    inc bc                                        ; $4f9d: $03
    dec c                                         ; $4f9e: $0d
    ld bc, $002a                                  ; $4f9f: $01 $2a $00
    inc h                                         ; $4fa2: $24
    ld h, b                                       ; $4fa3: $60
    ld c, d                                       ; $4fa4: $4a
    ld a, b                                       ; $4fa5: $78
    ld h, c                                       ; $4fa6: $61
    ld d, d                                       ; $4fa7: $52
    ld c, l                                       ; $4fa8: $4d
    ret c                                         ; $4fa9: $d8

    nop                                           ; $4faa: $00
    ld a, h                                       ; $4fab: $7c
    ld h, d                                       ; $4fac: $62
    sub e                                         ; $4fad: $93
    inc c                                         ; $4fae: $0c
    jr nc, jr_0ae_4f72                            ; $4faf: $30 $c1

jr_0ae_4fb1:
    jp nz, Jump_000_00dc                          ; $4fb1: $c2 $dc $00

    ccf                                           ; $4fb4: $3f
    cp d                                          ; $4fb5: $ba
    ld a, e                                       ; $4fb6: $7b
    ldh a, [$8a]                                  ; $4fb7: $f0 $8a
    or b                                          ; $4fb9: $b0
    adc b                                         ; $4fba: $88
    ld h, e                                       ; $4fbb: $63
    nop                                           ; $4fbc: $00
    dec de                                        ; $4fbd: $1b
    ld sp, $980d                                  ; $4fbe: $31 $0d $98
    add [hl]                                      ; $4fc1: $86
    ld c, h                                       ; $4fc2: $4c
    ld b, e                                       ; $4fc3: $43
    cpl                                           ; $4fc4: $2f
    nop                                           ; $4fc5: $00
    add sp, $37                                   ; $4fc6: $e8 $37
    db $f4                                        ; $4fc8: $f4
    add hl, hl                                    ; $4fc9: $29
    inc a                                         ; $4fca: $3c
    ld a, b                                       ; $4fcb: $78
    and [hl]                                      ; $4fcc: $a6
    sbc a                                         ; $4fcd: $9f
    nop                                           ; $4fce: $00
    cp a                                          ; $4fcf: $bf
    cp a                                          ; $4fd0: $bf
    add a                                         ; $4fd1: $87
    or a                                          ; $4fd2: $b7
    adc e                                         ; $4fd3: $8b
    add hl, de                                    ; $4fd4: $19
    rlca                                          ; $4fd5: $07
    inc c                                         ; $4fd6: $0c
    nop                                           ; $4fd7: $00
    dec bc                                        ; $4fd8: $0b
    add $01                                       ; $4fd9: $c6 $01
    db $e4                                        ; $4fdb: $e4
    rlca                                          ; $4fdc: $07
    db $f4                                        ; $4fdd: $f4
    rlca                                          ; $4fde: $07
    ld h, b                                       ; $4fdf: $60
    nop                                           ; $4fe0: $00
    ld c, a                                       ; $4fe1: $4f
    ld [hl], b                                    ; $4fe2: $70
    rla                                           ; $4fe3: $17
    ld [hl], b                                    ; $4fe4: $70
    rla                                           ; $4fe5: $17
    rlca                                          ; $4fe6: $07
    scf                                           ; $4fe7: $37
    dec bc                                        ; $4fe8: $0b
    ld b, b                                       ; $4fe9: $40
    inc sp                                        ; $4fea: $33
    ld [bc], a                                    ; $4feb: $02
    nop                                           ; $4fec: $00
    inc de                                        ; $4fed: $13
    jr jr_0ae_5003                                ; $4fee: $18 $13

    inc bc                                        ; $4ff0: $03
    ld [c], a                                     ; $4ff1: $e2
    ld a, $00                                     ; $4ff2: $3e $00
    or $3e                                        ; $4ff4: $f6 $3e
    ldh [$c0], a                                  ; $4ff6: $e0 $c0
    rra                                           ; $4ff8: $1f
    pop bc                                        ; $4ff9: $c1
    rra                                           ; $4ffa: $1f
    ld e, $00                                     ; $4ffb: $1e $00
    sbc b                                         ; $4ffd: $98
    jr c, @-$66                                   ; $4ffe: $38 $98

    add e                                         ; $5000: $83
    jr c, jr_0ae_5025                             ; $5001: $38 $22

jr_0ae_5003:
    ld a, [de]                                    ; $5003: $1a
    ld a, d                                       ; $5004: $7a
    nop                                           ; $5005: $00
    inc bc                                        ; $5006: $03
    inc [hl]                                      ; $5007: $34
    ld b, l                                       ; $5008: $45
    ld bc, $c30d                                  ; $5009: $01 $0d $c3
    inc bc                                        ; $500c: $03
    stop                                          ; $500d: $10 $00
    rlca                                          ; $500f: $07
    ldh a, [rPCM12]                               ; $5010: $f0 $76
    ld a, [c]                                     ; $5012: $f2
    ld b, $d2                                     ; $5013: $06 $d2
    call z, Call_000_00d0                         ; $5015: $cc $d0 $00
    adc a                                         ; $5018: $8f
    ld c, b                                       ; $5019: $48
    ld b, a                                       ; $501a: $47
    ld h, a                                       ; $501b: $67
    ld l, b                                       ; $501c: $68
    daa                                           ; $501d: $27
    ld c, a                                       ; $501e: $4f
    inc hl                                        ; $501f: $23
    nop                                           ; $5020: $00
    rla                                           ; $5021: $17
    call nc, $b7ef                                ; $5022: $d4 $ef $b7

jr_0ae_5025:
    xor e                                         ; $5025: $ab
    ld b, c                                       ; $5026: $41
    ret nz                                        ; $5027: $c0

    nop                                           ; $5028: $00
    nop                                           ; $5029: $00
    rst $38                                       ; $502a: $ff
    rra                                           ; $502b: $1f
    ccf                                           ; $502c: $3f
    add e                                         ; $502d: $83
    ld b, a                                       ; $502e: $47
    ld c, $f8                                     ; $502f: $0e $f8
    inc a                                         ; $5031: $3c
    nop                                           ; $5032: $00
    ldh a, [$3c]                                  ; $5033: $f0 $3c
    ldh a, [$e0]                                  ; $5035: $f0 $e0
    ld b, c                                       ; $5037: $41
    jp nc, $92aa                                  ; $5038: $d2 $aa $92

jr_0ae_503b:
    nop                                           ; $503b: $00
    ld [hl+], a                                   ; $503c: $22
    or h                                          ; $503d: $b4
    ld b, h                                       ; $503e: $44
    xor b                                         ; $503f: $a8
    ld l, b                                       ; $5040: $68
    jr z, jr_0ae_508b                             ; $5041: $28 $48

    ld e, h                                       ; $5043: $5c
    nop                                           ; $5044: $00
    sbc h                                         ; $5045: $9c
    ret nz                                        ; $5046: $c0

    ccf                                           ; $5047: $3f
    add b                                         ; $5048: $80
    ld hl, sp-$20                                 ; $5049: $f8 $e0
    ld a, [$00fc]                                 ; $504b: $fa $fc $00
    ld [$f40e], sp                                ; $504e: $08 $0e $f4
    cp $00                                        ; $5051: $fe $00
    inc bc                                        ; $5053: $03
    di                                            ; $5054: $f3
    rrca                                          ; $5055: $0f
    nop                                           ; $5056: $00
    db $e3                                        ; $5057: $e3
    rra                                           ; $5058: $1f
    rlca                                          ; $5059: $07
    rra                                           ; $505a: $1f
    rst $00                                       ; $505b: $c7
    inc e                                         ; $505c: $1c
    ld de, $001c                                  ; $505d: $11 $1c $00
    dec b                                         ; $5060: $05
    inc c                                         ; $5061: $0c
    dec b                                         ; $5062: $05
    inc c                                         ; $5063: $0c
    ld b, $0c                                     ; $5064: $06 $0c
    ld b, $04                                     ; $5066: $06 $04
    nop                                           ; $5068: $00
    ld [bc], a                                    ; $5069: $02
    dec b                                         ; $506a: $05
    inc bc                                        ; $506b: $03
    ld b, $03                                     ; $506c: $06 $03
    ld c, e                                       ; $506e: $4b
    ld a, b                                       ; $506f: $78
    ld [hl], h                                    ; $5070: $74
    nop                                           ; $5071: $00
    inc hl                                        ; $5072: $23
    ld [hl], b                                    ; $5073: $70
    ld h, a                                       ; $5074: $67
    ld h, a                                       ; $5075: $67
    ld [hl], b                                    ; $5076: $70
    daa                                           ; $5077: $27
    ld [hl], b                                    ; $5078: $70
    ld hl, sp+$00                                 ; $5079: $f8 $00
    adc a                                         ; $507b: $8f
    ld a, h                                       ; $507c: $7c
    rlca                                          ; $507d: $07
    ld a, h                                       ; $507e: $7c
    rlca                                          ; $507f: $07
    ldh a, [rDIV]                                 ; $5080: $f0 $04
    ei                                            ; $5082: $fb
    nop                                           ; $5083: $00
    rrca                                          ; $5084: $0f
    ld a, [$f40e]                                 ; $5085: $fa $0e $f4
    ld c, $f1                                     ; $5088: $0e $f1
    inc c                                         ; $508a: $0c

jr_0ae_508b:
    inc b                                         ; $508b: $04
    nop                                           ; $508c: $00
    rst $30                                       ; $508d: $f7
    ld bc, $fcfe                                  ; $508e: $01 $fe $fc
    ld hl, sp+$06                                 ; $5091: $f8 $06
    jr jr_0ae_50ff                                ; $5093: $18 $6a

    nop                                           ; $5095: $00
    inc c                                         ; $5096: $0c
    ld a, [c]                                     ; $5097: $f2
    inc e                                         ; $5098: $1c
    ld hl, sp+$0e                                 ; $5099: $f8 $0e
    db $fc                                        ; $509b: $fc
    inc e                                         ; $509c: $1c
    pop bc                                        ; $509d: $c1
    nop                                           ; $509e: $00
    ld e, a                                       ; $509f: $5f
    nop                                           ; $50a0: $00
    ld [hl], b                                    ; $50a1: $70
    rra                                           ; $50a2: $1f
    ret nc                                        ; $50a3: $d0

    ld bc, $7a03                                  ; $50a4: $01 $03 $7a
    nop                                           ; $50a7: $00
    ld b, $85                                     ; $50a8: $06 $85
    pop af                                        ; $50aa: $f1
    adc e                                         ; $50ab: $8b
    ld h, b                                       ; $50ac: $60
    ld d, e                                       ; $50ad: $53
    call nc, Call_000_0083                        ; $50ae: $d4 $83 $00
    inc c                                         ; $50b1: $0c
    ld b, $78                                     ; $50b2: $06 $78
    adc [hl]                                      ; $50b4: $8e
    or b                                          ; $50b5: $b0
    add a                                         ; $50b6: $87
    add b                                         ; $50b7: $80
    ld a, a                                       ; $50b8: $7f
    jr nz, jr_0ae_503b                            ; $50b9: $20 $80

    ld a, a                                       ; $50bb: $7f
    dec sp                                        ; $50bc: $3b
    ld bc, $807f                                  ; $50bd: $01 $7f $80
    ccf                                           ; $50c0: $3f
    cp a                                          ; $50c1: $bf
    ld e, $00                                     ; $50c2: $1e $00
    ld e, [hl]                                    ; $50c4: $5e
    ld e, $6e                                     ; $50c5: $1e $6e
    adc b                                         ; $50c7: $88
    or b                                          ; $50c8: $b0
    adc b                                         ; $50c9: $88
    or b                                          ; $50ca: $b0
    sub b                                         ; $50cb: $90
    nop                                           ; $50cc: $00
    and b                                         ; $50cd: $a0

jr_0ae_50ce:
    db $10                                        ; $50ce: $10
    ld h, b                                       ; $50cf: $60
    ld h, b                                       ; $50d0: $60
    ld e, a                                       ; $50d1: $5f
    ld h, b                                       ; $50d2: $60
    ld e, a                                       ; $50d3: $5f
    jr nz, jr_0ae_50d6                            ; $50d4: $20 $00

jr_0ae_50d6:
    ret nz                                        ; $50d6: $c0

    ld h, b                                       ; $50d7: $60
    ret nz                                        ; $50d8: $c0

    ld [bc], a                                    ; $50d9: $02
    ld bc, $0102                                  ; $50da: $01 $02 $01
    inc bc                                        ; $50dd: $03
    jr jr_0ae_50e1                                ; $50de: $18 $01

    nop                                           ; $50e0: $00

jr_0ae_50e1:
    ld bc, $0003                                  ; $50e1: $01 $03 $00
    ret nz                                        ; $50e4: $c0

    ld bc, $0000                                  ; $50e5: $01 $00 $00

Call_0ae_50e8:
    ld a, [hl]                                    ; $50e8: $7e
    nop                                           ; $50e9: $00
    dec b                                         ; $50ea: $05
    dec a                                         ; $50eb: $3d
    or c                                          ; $50ec: $b1
    dec a                                         ; $50ed: $3d
    or c                                          ; $50ee: $b1
    ccf                                           ; $50ef: $3f
    add e                                         ; $50f0: $83
    dec a                                         ; $50f1: $3d
    nop                                           ; $50f2: $00
    add h                                         ; $50f3: $84
    inc e                                         ; $50f4: $1c
    ret c                                         ; $50f5: $d8

    dec e                                         ; $50f6: $1d
    ret c                                         ; $50f7: $d8

    rra                                           ; $50f8: $1f
    call c, $00f0                                 ; $50f9: $dc $f0 $00
    db $e3                                        ; $50fc: $e3
    ldh [$2f], a                                  ; $50fd: $e0 $2f

jr_0ae_50ff:
    ld [bc], a                                    ; $50ff: $02
    ld a, $f9                                     ; $5100: $3e $f9
    dec b                                         ; $5102: $05
    ld a, [c]                                     ; $5103: $f2
    nop                                           ; $5104: $00
    ld a, [bc]                                    ; $5105: $0a
    inc h                                         ; $5106: $24
    push bc                                       ; $5107: $c5
    sbc d                                         ; $5108: $9a
    jr @+$74                                      ; $5109: $18 $72

    ld [hl+], a                                   ; $510b: $22
    and b                                         ; $510c: $a0
    nop                                           ; $510d: $00
    add b                                         ; $510e: $80
    ld b, b                                       ; $510f: $40
    rra                                           ; $5110: $1f
    ccf                                           ; $5111: $3f
    sbc [hl]                                      ; $5112: $9e
    ld a, a                                       ; $5113: $7f
    ld a, a                                       ; $5114: $7f
    ret nz                                        ; $5115: $c0

    nop                                           ; $5116: $00
    cp a                                          ; $5117: $bf
    ld b, b                                       ; $5118: $40
    ccf                                           ; $5119: $3f
    ld b, c                                       ; $511a: $41
    ccf                                           ; $511b: $3f
    add c                                         ; $511c: $81
    cp $e0                                        ; $511d: $fe $e0
    nop                                           ; $511f: $00
    inc a                                         ; $5120: $3c
    ld a, c                                       ; $5121: $79
    add hl, de                                    ; $5122: $19
    ccf                                           ; $5123: $3f
    ccf                                           ; $5124: $3f
    add b                                         ; $5125: $80
    rra                                           ; $5126: $1f
    cp $00                                        ; $5127: $fe $00
    ld a, $e8                                     ; $5129: $3e $e8
    dec hl                                        ; $512b: $2b
    ldh [$c3], a                                  ; $512c: $e0 $c3
    ldh [$c7], a                                  ; $512e: $e0 $c7
    ld c, $00                                     ; $5130: $0e $00
    ret nz                                        ; $5132: $c0

    dec b                                         ; $5133: $05
    ret                                           ; $5134: $c9


    call $8df8                                    ; $5135: $cd $f8 $8d
    ld hl, sp-$7b                                 ; $5138: $f8 $85
    nop                                           ; $513a: $00
    ld [hl], l                                    ; $513b: $75
    db $d3                                        ; $513c: $d3
    ld l, e                                       ; $513d: $6b
    di                                            ; $513e: $f3
    dec de                                        ; $513f: $1b
    db $e3                                        ; $5140: $e3
    dec de                                        ; $5141: $1b
    ret nz                                        ; $5142: $c0

    nop                                           ; $5143: $00
    add b                                         ; $5144: $80
    ld b, b                                       ; $5145: $40
    add b                                         ; $5146: $80
    ld b, b                                       ; $5147: $40
    ret nz                                        ; $5148: $c0

    add b                                         ; $5149: $80
    nop                                           ; $514a: $00
    nop                                           ; $514b: $00
    jr nc, jr_0ae_50ce                            ; $514c: $30 $80

    add b                                         ; $514e: $80
    sub [hl]                                      ; $514f: $96
    ld bc, $7a9e                                  ; $5150: $01 $9e $7a
    ld c, $ec                                     ; $5153: $0e $ec
    rrca                                          ; $5155: $0f
    ld [c], a                                     ; $5156: $e2
    nop                                           ; $5157: $00
    rlca                                          ; $5158: $07
    ld h, h                                       ; $5159: $64
    rlca                                          ; $515a: $07
    ld [hl], h                                    ; $515b: $74
    nop                                           ; $515c: $00
    ld [hl], b                                    ; $515d: $70
    ld hl, $001e                                  ; $515e: $21 $1e $00
    jr c, jr_0ae_518a                             ; $5161: $38 $27

    rrca                                          ; $5163: $0f
    inc sp                                        ; $5164: $33
    ldh [rTIMA], a                                ; $5165: $e0 $05
    push bc                                       ; $5167: $c5
    dec h                                         ; $5168: $25
    nop                                           ; $5169: $00
    add c                                         ; $516a: $81
    ld h, a                                       ; $516b: $67
    db $e4                                        ; $516c: $e4
    jp RST_00                                     ; $516d: $c3 $00 $00


    db $e3                                        ; $5170: $e3
    inc hl                                        ; $5171: $23
    nop                                           ; $5172: $00
    ld sp, $0fc1                                  ; $5173: $31 $c1 $0f
    pop af                                        ; $5176: $f1
    cp $ff                                        ; $5177: $fe $ff
    cp $fc                                        ; $5179: $fe $fc
    nop                                           ; $517b: $00
    cp $fc                                        ; $517c: $fe $fc
    db $fc                                        ; $517e: $fc
    cp $00                                        ; $517f: $fe $00
    nop                                           ; $5181: $00
    pop hl                                        ; $5182: $e1
    ld a, a                                       ; $5183: $7f
    nop                                           ; $5184: $00
    ldh a, [$cf]                                  ; $5185: $f0 $cf
    inc e                                         ; $5187: $1c
    inc de                                        ; $5188: $13
    adc a                                         ; $5189: $8f

jr_0ae_518a:
    ld c, $8c                                     ; $518a: $0e $8c
    dec bc                                        ; $518c: $0b
    ld [$c0cf], sp                                ; $518d: $08 $cf $c0
    ret nz                                        ; $5190: $c0

    rst $08                                       ; $5191: $cf
    xor d                                         ; $5192: $aa
    nop                                           ; $5193: $00
    db $d3                                        ; $5194: $d3
    add e                                         ; $5195: $83
    ld b, h                                       ; $5196: $44
    nop                                           ; $5197: $00
    rst $00                                       ; $5198: $c7
    jp hl                                         ; $5199: $e9


    pop hl                                        ; $519a: $e1
    inc de                                        ; $519b: $13
    di                                            ; $519c: $f3
    rlca                                          ; $519d: $07
    ldh a, [rTMA]                                 ; $519e: $f0 $06
    nop                                           ; $51a0: $00
    ldh [$2e], a                                  ; $51a1: $e0 $2e
    inc bc                                        ; $51a3: $03
    dec c                                         ; $51a4: $0d
    rst $20                                       ; $51a5: $e7
    dec de                                        ; $51a6: $1b
    inc c                                         ; $51a7: $0c
    ldh a, [rNR41]                                ; $51a8: $f0 $20
    inc e                                         ; $51aa: $1c
    db $e4                                        ; $51ab: $e4
    nop                                           ; $51ac: $00
    ld l, e                                       ; $51ad: $6b
    db $10                                        ; $51ae: $10
    inc bc                                        ; $51af: $03
    ld a, b                                       ; $51b0: $78
    ld [bc], a                                    ; $51b1: $02
    ld b, b                                       ; $51b2: $40
    nop                                           ; $51b3: $00
    ld bc, $00f8                                  ; $51b4: $01 $f8 $00
    inc bc                                        ; $51b7: $03
    nop                                           ; $51b8: $00
    rst $38                                       ; $51b9: $ff
    db $fc                                        ; $51ba: $fc
    db $fc                                        ; $51bb: $fc
    nop                                           ; $51bc: $00
    db $fd                                        ; $51bd: $fd
    ld a, [$e6f9]                                 ; $51be: $fa $f9 $e6
    ldh [$c1], a                                  ; $51c1: $e0 $c1
    call c, Call_000_0007                         ; $51c3: $dc $07 $00
    ld b, a                                       ; $51c6: $47
    ld h, e                                       ; $51c7: $63
    rrca                                          ; $51c8: $0f
    inc d                                         ; $51c9: $14
    ld h, b                                       ; $51ca: $60
    inc sp                                        ; $51cb: $33
    inc bc                                        ; $51cc: $03
    sbc b                                         ; $51cd: $98

jr_0ae_51ce:
    ld bc, $03a3                                  ; $51ce: $01 $a3 $03
    rr l                                          ; $51d1: $cb $1d
    call c, Call_000_18d8                         ; $51d3: $dc $d8 $18
    ld b, b                                       ; $51d6: $40
    ld [$ff00], sp                                ; $51d7: $08 $00 $ff
    nop                                           ; $51da: $00
    ld a, a                                       ; $51db: $7f
    nop                                           ; $51dc: $00
    add b                                         ; $51dd: $80
    ccf                                           ; $51de: $3f
    ret nz                                        ; $51df: $c0

    rra                                           ; $51e0: $1f
    inc c                                         ; $51e1: $0c
    ld h, b                                       ; $51e2: $60
    ld h, e                                       ; $51e3: $63
    ld [$5001], sp                                ; $51e4: $08 $01 $50
    ld hl, sp+$52                                 ; $51e7: $f8 $52
    db $10                                        ; $51e9: $10
    rst $38                                       ; $51ea: $ff
    dec c                                         ; $51eb: $0d
    ld bc, $0ffc                                  ; $51ec: $01 $fc $0f
    scf                                           ; $51ef: $37
    db $10                                        ; $51f0: $10
    ld l, l                                       ; $51f1: $6d
    inc bc                                        ; $51f2: $03
    ld sp, hl                                     ; $51f3: $f9
    ld sp, $0000                                  ; $51f4: $31 $00 $00
    cp $01                                        ; $51f7: $fe $01
    db $fc                                        ; $51f9: $fc
    ld [hl], e                                    ; $51fa: $73
    ldh a, [rSC]                                  ; $51fb: $f0 $02
    db $fc                                        ; $51fd: $fc
    ld hl, sp+$00                                 ; $51fe: $f8 $00
    jr c, jr_0ae_51ce                             ; $5200: $38 $cc

    ld b, $32                                     ; $5202: $06 $32
    jp Jump_000_3003                              ; $5204: $c3 $03 $30


    adc a                                         ; $5207: $8f
    nop                                           ; $5208: $00
    ldh [$df], a                                  ; $5209: $e0 $df
    jp nz, Jump_0ae_405c                          ; $520b: $c2 $5c $40

    ld l, $60                                     ; $520e: $2e $60
    ld c, [hl]                                    ; $5210: $4e
    nop                                           ; $5211: $00
    ld h, b                                       ; $5212: $60
    dec c                                         ; $5213: $0d
    ld h, c                                       ; $5214: $61
    ld h, c                                       ; $5215: $61
    ld l, l                                       ; $5216: $6d
    ld d, $d1                                     ; $5217: $16 $d1
    rlca                                          ; $5219: $07
    nop                                           ; $521a: $00
    pop hl                                        ; $521b: $e1
    jp z, $d51f                                   ; $521c: $ca $1f $d5

    rra                                           ; $521f: $1f
    rst $08                                       ; $5220: $cf
    rrca                                          ; $5221: $0f
    ld h, b                                       ; $5222: $60
    nop                                           ; $5223: $00
    rrca                                          ; $5224: $0f
    db $f4                                        ; $5225: $f4
    add h                                         ; $5226: $84
    ldh a, [$85]                                  ; $5227: $f0 $85
    sub $cc                                       ; $5229: $d6 $cc
    ld [c], a                                     ; $522b: $e2
    nop                                           ; $522c: $00
    ldh [$d0], a                                  ; $522d: $e0 $d0
    ldh [$cb], a                                  ; $522f: $e0 $cb
    ldh a, [$82]                                  ; $5231: $f0 $82
    ld sp, hl                                     ; $5233: $f9
    ld l, e                                       ; $5234: $6b
    nop                                           ; $5235: $00
    ld hl, sp+$07                                 ; $5236: $f8 $07
    nop                                           ; $5238: $00
    rlca                                          ; $5239: $07
    ld h, c                                       ; $523a: $61
    ld a, a                                       ; $523b: $7f
    nop                                           ; $523c: $00
    rra                                           ; $523d: $1f
    nop                                           ; $523e: $00
    nop                                           ; $523f: $00
    xor a                                         ; $5240: $af
    rst $08                                       ; $5241: $cf
    ld l, a                                       ; $5242: $6f
    rrca                                          ; $5243: $0f
    add a                                         ; $5244: $87
    rlca                                          ; $5245: $07
    inc bc                                        ; $5246: $03
    ld b, $e3                                     ; $5247: $06 $e3
    ret nc                                        ; $5249: $d0

    ldh a, [$5c]                                  ; $524a: $f0 $5c
    ld [hl], b                                    ; $524c: $70
    ret nc                                        ; $524d: $d0

    ld c, b                                       ; $524e: $48
    sbc b                                         ; $524f: $98
    ld [$0007], sp                                ; $5250: $08 $07 $00
    sub a                                         ; $5253: $97
    inc de                                        ; $5254: $13
    inc e                                         ; $5255: $1c
    daa                                           ; $5256: $27
    jr c, jr_0ae_5288                             ; $5257: $38 $2f

    jr c, @+$19                                   ; $5259: $38 $17

    nop                                           ; $525b: $00
    jr nc, jr_0ae_52bc                            ; $525c: $30 $5e

    ld [hl], b                                    ; $525e: $70
    inc c                                         ; $525f: $0c
    ld h, c                                       ; $5260: $61
    dec c                                         ; $5261: $0d
    ld h, e                                       ; $5262: $63
    dec b                                         ; $5263: $05
    nop                                           ; $5264: $00
    db $fd                                        ; $5265: $fd
    ldh [$fe], a                                  ; $5266: $e0 $fe
    ld sp, hl                                     ; $5268: $f9
    rrca                                          ; $5269: $0f
    ld hl, sp-$65                                 ; $526a: $f8 $9b
    jr c, jr_0ae_526e                             ; $526c: $38 $00

jr_0ae_526e:
    ld a, [hl-]                                   ; $526e: $3a
    ld hl, sp-$30                                 ; $526f: $f8 $d0
    ldh a, [rTAC]                                 ; $5271: $f0 $07
    push bc                                       ; $5273: $c5
    ld h, $a1                                     ; $5274: $26 $a1
    nop                                           ; $5276: $00
    add hl, hl                                    ; $5277: $29
    ld a, h                                       ; $5278: $7c
    call $8b28                                    ; $5279: $cd $28 $8b
    dec hl                                        ; $527c: $2b
    ld [hl-], a                                   ; $527d: $32
    cp [hl]                                       ; $527e: $be
    nop                                           ; $527f: $00
    ld [hl], $90                                  ; $5280: $36 $90
    cp [hl]                                       ; $5282: $be
    add b                                         ; $5283: $80
    rrca                                          ; $5284: $0f
    sub a                                         ; $5285: $97
    ldh a, [$f8]                                  ; $5286: $f0 $f8

jr_0ae_5288:
    nop                                           ; $5288: $00
    add c                                         ; $5289: $81
    cp $80                                        ; $528a: $fe $80
    ld [hl], d                                    ; $528c: $72
    db $fc                                        ; $528d: $fc
    ld h, a                                       ; $528e: $67
    ld hl, sp+$10                                 ; $528f: $f8 $10
    nop                                           ; $5291: $00
    rla                                           ; $5292: $17
    ld [hl], b                                    ; $5293: $70
    rla                                           ; $5294: $17
    rst $08                                       ; $5295: $cf
    ldh [$03], a                                  ; $5296: $e0 $03
    add b                                         ; $5298: $80
    ret nz                                        ; $5299: $c0

    nop                                           ; $529a: $00
    ld h, b                                       ; $529b: $60
    ld h, b                                       ; $529c: $60
    or b                                          ; $529d: $b0
    sub e                                         ; $529e: $93
    ld h, d                                       ; $529f: $62
    ld c, e                                       ; $52a0: $4b
    ld [hl-], a                                   ; $52a1: $32
    stop                                          ; $52a2: $10 $00
    ld a, b                                       ; $52a4: $78
    sbc b                                         ; $52a5: $98
    inc l                                         ; $52a6: $2c
    jp z, $c41c                                   ; $52a7: $ca $1c $c4

    ld e, $0e                                     ; $52aa: $1e $0e
    nop                                           ; $52ac: $00
    ld h, b                                       ; $52ad: $60
    rrca                                          ; $52ae: $0f
    ld b, h                                       ; $52af: $44
    ld de, $2100                                  ; $52b0: $11 $00 $21
    inc l                                         ; $52b3: $2c
    ld h, c                                       ; $52b4: $61
    nop                                           ; $52b5: $00
    dec c                                         ; $52b6: $0d
    pop bc                                        ; $52b7: $c1
    ld e, l                                       ; $52b8: $5d
    inc a                                         ; $52b9: $3c
    add l                                         ; $52ba: $85
    inc a                                         ; $52bb: $3c

jr_0ae_52bc:
    dec c                                         ; $52bc: $0d
    ccf                                           ; $52bd: $3f
    nop                                           ; $52be: $00
    add b                                         ; $52bf: $80
    rrca                                          ; $52c0: $0f
    ret nz                                        ; $52c1: $c0

    or b                                          ; $52c2: $b0
    scf                                           ; $52c3: $37
    sbc b                                         ; $52c4: $98
    sbc e                                         ; $52c5: $9b
    ld h, b                                       ; $52c6: $60
    nop                                           ; $52c7: $00
    call z, Call_0ae_46f0                         ; $52c8: $cc $f0 $46
    or b                                          ; $52cb: $b0
    ld [hl], $b0                                  ; $52cc: $36 $b0
    inc [hl]                                      ; $52ce: $34
    dec e                                         ; $52cf: $1d
    nop                                           ; $52d0: $00
    ld h, e                                       ; $52d1: $63
    ld e, h                                       ; $52d2: $5c
    ld h, e                                       ; $52d3: $63
    ld e, h                                       ; $52d4: $5c
    ld l, e                                       ; $52d5: $6b
    inc a                                         ; $52d6: $3c
    dec hl                                        ; $52d7: $2b
    inc a                                         ; $52d8: $3c
    nop                                           ; $52d9: $00
    dec hl                                        ; $52da: $2b
    db $e4                                        ; $52db: $e4
    db $e3                                        ; $52dc: $e3
    db $e4                                        ; $52dd: $e4
    db $e3                                        ; $52de: $e3
    inc e                                         ; $52df: $1c
    inc de                                        ; $52e0: $13
    add [hl]                                      ; $52e1: $86
    nop                                           ; $52e2: $00
    ld [$f498], sp                                ; $52e3: $08 $98 $f4
    add hl, sp                                    ; $52e6: $39
    ld hl, sp-$79                                 ; $52e7: $f8 $87
    ld b, l                                       ; $52e9: $45
    add a                                         ; $52ea: $87
    nop                                           ; $52eb: $00
    inc sp                                        ; $52ec: $33
    or b                                          ; $52ed: $b0
    add e                                         ; $52ee: $83
    ld [hl], d                                    ; $52ef: $72
    inc bc                                        ; $52f0: $03
    add e                                         ; $52f1: $83
    pop af                                        ; $52f2: $f1
    dec bc                                        ; $52f3: $0b
    nop                                           ; $52f4: $00
    ld l, b                                       ; $52f5: $68
    ret c                                         ; $52f6: $d8

    ld l, c                                       ; $52f7: $69
    jp nc, Jump_0ae_6390                          ; $52f8: $d2 $90 $63

    and l                                         ; $52fb: $a5
    ld c, $00                                     ; $52fc: $0e $00
    db $eb                                        ; $52fe: $eb
    adc a                                         ; $52ff: $8f
    ld a, [c]                                     ; $5300: $f2
    ld [bc], a                                    ; $5301: $02
    db $fc                                        ; $5302: $fc
    ld de, $f0e1                                  ; $5303: $11 $e1 $f0
    nop                                           ; $5306: $00
    ld [$0cfe], sp                                ; $5307: $08 $fe $0c
    ld hl, sp+$00                                 ; $530a: $f8 $00
    ld [hl], b                                    ; $530c: $70
    halt                                          ; $530d: $76
    ld b, $00                                     ; $530e: $06 $00
    ld [bc], a                                    ; $5310: $02
    ld b, $0b                                     ; $5311: $06 $0b
    ldh a, [$83]                                  ; $5313: $f0 $83
    jr nc, jr_0ae_5318                            ; $5315: $30 $01

    db $e4                                        ; $5317: $e4

jr_0ae_5318:
    nop                                           ; $5318: $00
    db $eb                                        ; $5319: $eb
    ld [hl+], a                                   ; $531a: $22
    add hl, hl                                    ; $531b: $29
    dec b                                         ; $531c: $05
    add l                                         ; $531d: $85
    rlca                                          ; $531e: $07

Jump_0ae_531f:
    sbc [hl]                                      ; $531f: $9e
    ld [hl], b                                    ; $5320: $70
    nop                                           ; $5321: $00
    ld h, e                                       ; $5322: $63
    jr c, jr_0ae_535e                             ; $5323: $38 $39

    inc e                                         ; $5325: $1c
    sbc h                                         ; $5326: $9c
    add h                                         ; $5327: $84
    ld b, h                                       ; $5328: $44
    nop                                           ; $5329: $00
    nop                                           ; $532a: $00
    ld h, h                                       ; $532b: $64
    jr jr_0ae_537a                                ; $532c: $18 $4c

    add $98                                       ; $532e: $c6 $98
    ld h, [hl]                                    ; $5330: $66
    ld b, $38                                     ; $5331: $06 $38
    nop                                           ; $5333: $00
    add b                                         ; $5334: $80
    ld e, b                                       ; $5335: $58
    add $d7                                       ; $5336: $c6 $d7
    ld b, $09                                     ; $5338: $06 $09
    jr nz, jr_0ae_5341                            ; $533a: $20 $05

    nop                                           ; $533c: $00
    ld sp, $210d                                  ; $533d: $31 $0d $21
    ld h, e                                       ; $5340: $63

jr_0ae_5341:
    dec bc                                        ; $5341: $0b
    ld h, e                                       ; $5342: $63
    dec bc                                        ; $5343: $0b
    ld e, b                                       ; $5344: $58
    nop                                           ; $5345: $00
    ld b, e                                       ; $5346: $43
    db $10                                        ; $5347: $10
    rlca                                          ; $5348: $07
    add a                                         ; $5349: $87
    rla                                           ; $534a: $17
    rst $00                                       ; $534b: $c7
    rlca                                          ; $534c: $07
    inc e                                         ; $534d: $1c
    add b                                         ; $534e: $80
    rst $18                                       ; $534f: $df
    ld [$86df], sp                                ; $5350: $08 $df $86
    ld sp, hl                                     ; $5353: $f9
    ld a, [$02f8]                                 ; $5354: $fa $f8 $02
    ld hl, sp+$00                                 ; $5357: $f8 $00
    inc bc                                        ; $5359: $03
    ld hl, sp+$01                                 ; $535a: $f8 $01
    db $fc                                        ; $535c: $fc
    add c                                         ; $535d: $81

jr_0ae_535e:
    ldh a, [$82]                                  ; $535e: $f0 $82
    halt                                          ; $5360: $76
    nop                                           ; $5361: $00
    add c                                         ; $5362: $81
    ld a, a                                       ; $5363: $7f
    ccf                                           ; $5364: $3f
    ld b, a                                       ; $5365: $47
    ld a, b                                       ; $5366: $78
    ld l, a                                       ; $5367: $6f
    and c                                         ; $5368: $a1
    ld c, $00                                     ; $5369: $0e $00
    ld [hl-], a                                   ; $536b: $32
    inc a                                         ; $536c: $3c
    add hl, bc                                    ; $536d: $09
    jr jr_0ae_53bc                                ; $536e: $18 $4c

    add e                                         ; $5370: $83
    jr c, jr_0ae_53c2                             ; $5371: $38 $4f

    nop                                           ; $5373: $00
    nop                                           ; $5374: $00
    ccf                                           ; $5375: $3f
    ld e, [hl]                                    ; $5376: $5e
    pop hl                                        ; $5377: $e1
    ld b, b                                       ; $5378: $40
    ret nz                                        ; $5379: $c0

jr_0ae_537a:
    jr z, @+$10                                   ; $537a: $28 $0e

    nop                                           ; $537c: $00
    ld l, c                                       ; $537d: $69
    rrca                                          ; $537e: $0f
    rrca                                          ; $537f: $0f
    ld l, b                                       ; $5380: $68
    adc b                                         ; $5381: $88
    inc c                                         ; $5382: $0c
    pop bc                                        ; $5383: $c1
    add hl, bc                                    ; $5384: $09
    nop                                           ; $5385: $00
    sub c                                         ; $5386: $91
    sub b                                         ; $5387: $90
    db $10                                        ; $5388: $10
    call z, Call_000_3fcc                         ; $5389: $cc $cc $3f
    add hl, bc                                    ; $538c: $09
    ld [bc], a                                    ; $538d: $02
    nop                                           ; $538e: $00
    ld b, c                                       ; $538f: $41
    ld hl, $0e68                                  ; $5390: $21 $68 $0e
    ld h, c                                       ; $5393: $61
    rrca                                          ; $5394: $0f
    add e                                         ; $5395: $83
    add a                                         ; $5396: $87
    nop                                           ; $5397: $00
    inc c                                         ; $5398: $0c
    adc e                                         ; $5399: $8b
    ld h, h                                       ; $539a: $64
    ld d, e                                       ; $539b: $53
    dec b                                         ; $539c: $05
    scf                                           ; $539d: $37
    add l                                         ; $539e: $85
    ld b, $00                                     ; $539f: $06 $00
    rst $00                                       ; $53a1: $c7
    ld h, c                                       ; $53a2: $61
    ld d, $14                                     ; $53a3: $16 $14
    jr c, jr_0ae_53d6                             ; $53a5: $38 $2f

    sub b                                         ; $53a7: $90
    and a                                         ; $53a8: $a7
    nop                                           ; $53a9: $00
    add a                                         ; $53aa: $87
    dec bc                                        ; $53ab: $0b
    sub e                                         ; $53ac: $93
    inc bc                                        ; $53ad: $03
    xor b                                         ; $53ae: $a8
    sub c                                         ; $53af: $91
    inc c                                         ; $53b0: $0c
    jr nc, jr_0ae_53b3                            ; $53b1: $30 $00

jr_0ae_53b3:
    ld c, [hl]                                    ; $53b3: $4e
    inc [hl]                                      ; $53b4: $34
    ld h, c                                       ; $53b5: $61
    rra                                           ; $53b6: $1f
    ldh [$c7], a                                  ; $53b7: $e0 $c7
    ldh a, [$83]                                  ; $53b9: $f0 $83
    nop                                           ; $53bb: $00

jr_0ae_53bc:
    ld hl, sp-$5c                                 ; $53bc: $f8 $a4
    sbc h                                         ; $53be: $9c
    ld h, [hl]                                    ; $53bf: $66
    cp e                                          ; $53c0: $bb
    push de                                       ; $53c1: $d5

jr_0ae_53c2:
    ld a, e                                       ; $53c2: $7b
    or l                                          ; $53c3: $b5
    nop                                           ; $53c4: $00
    rst $38                                       ; $53c5: $ff
    ld h, c                                       ; $53c6: $61
    ld e, a                                       ; $53c7: $5f
    ld [hl], c                                    ; $53c8: $71
    dec b                                         ; $53c9: $05
    db $fc                                        ; $53ca: $fc
    ei                                            ; $53cb: $fb
    ld hl, sp+$01                                 ; $53cc: $f8 $01
    cp $fd                                        ; $53ce: $fe $fd
    cp $01                                        ; $53d0: $fe $01
    cp $00                                        ; $53d2: $fe $00
    cp $f8                                        ; $53d4: $fe $f8

jr_0ae_53d6:
    ld bc, $1c80                                  ; $53d6: $01 $80 $1c
    ld [bc], a                                    ; $53d9: $02
    ld e, b                                       ; $53da: $58
    ld a, [de]                                    ; $53db: $1a
    ret nc                                        ; $53dc: $d0

    ld [$ff88], sp                                ; $53dd: $08 $88 $ff
    sbc $00                                       ; $53e0: $de $00
    ccf                                           ; $53e2: $3f
    add b                                         ; $53e3: $80
    rra                                           ; $53e4: $1f
    pop bc                                        ; $53e5: $c1
    rra                                           ; $53e6: $1f
    ld b, c                                       ; $53e7: $41
    ld b, c                                       ; $53e8: $41
    rra                                           ; $53e9: $1f
    nop                                           ; $53ea: $00
    ld c, $4e                                     ; $53eb: $0e $4e
    ld [hl], b                                    ; $53ed: $70
    ldh a, [rNR44]                                ; $53ee: $f0 $23
    ldh [rIF], a                                  ; $53f0: $e0 $0f
    ret nc                                        ; $53f2: $d0

    nop                                           ; $53f3: $00
    rra                                           ; $53f4: $1f
    inc bc                                        ; $53f5: $03
    ret c                                         ; $53f6: $d8

    add a                                         ; $53f7: $87
    ldh [rNR23], a                                ; $53f8: $e0 $18
    ld h, e                                       ; $53fa: $63
    dec e                                         ; $53fb: $1d
    nop                                           ; $53fc: $00
    cp $f8                                        ; $53fd: $fe $f8
    rst $20                                       ; $53ff: $e7
    rst $30                                       ; $5400: $f7
    ld bc, $fee1                                  ; $5401: $01 $e1 $fe
    ld sp, hl                                     ; $5404: $f9
    nop                                           ; $5405: $00
    ld a, h                                       ; $5406: $7c
    add h                                         ; $5407: $84
    inc bc                                        ; $5408: $03
    db $fd                                        ; $5409: $fd
    sbc [hl]                                      ; $540a: $9e
    ld a, a                                       ; $540b: $7f
    ld l, $1f                                     ; $540c: $2e $1f
    nop                                           ; $540e: $00
    add e                                         ; $540f: $83
    jp $a4e7                                      ; $5410: $c3 $e7 $a4


    inc bc                                        ; $5413: $03
    inc de                                        ; $5414: $13
    inc bc                                        ; $5415: $03
    stop                                          ; $5416: $10 $00
    ret nz                                        ; $5418: $c0

    ld b, b                                       ; $5419: $40
    ldh [$0e], a                                  ; $541a: $e0 $0e
    call c, $981c                                 ; $541c: $dc $1c $98
    dec de                                        ; $541f: $1b
    nop                                           ; $5420: $00
    jr nz, jr_0ae_5442                            ; $5421: $20 $1f

    adc [hl]                                      ; $5423: $8e
    add b                                         ; $5424: $80
    ld a, [hl]                                    ; $5425: $7e
    sbc d                                         ; $5426: $9a
    ld a, l                                       ; $5427: $7d
    adc l                                         ; $5428: $8d
    nop                                           ; $5429: $00
    db $eb                                        ; $542a: $eb
    sub b                                         ; $542b: $90
    ld h, c                                       ; $542c: $61
    ld e, b                                       ; $542d: $58
    add hl, de                                    ; $542e: $19
    add hl, sp                                    ; $542f: $39
    inc b                                         ; $5430: $04
    sbc b                                         ; $5431: $98
    nop                                           ; $5432: $00
    ld h, b                                       ; $5433: $60
    ld l, $c0                                     ; $5434: $2e $c0
    sbc $f2                                       ; $5436: $de $f2
    adc $f4                                       ; $5438: $ce $f4
    inc c                                         ; $543a: $0c
    nop                                           ; $543b: $00
    ld l, b                                       ; $543c: $68
    sbc b                                         ; $543d: $98
    ld [hl], b                                    ; $543e: $70
    sbc b                                         ; $543f: $98
    ldh [$30], a                                  ; $5440: $e0 $30

jr_0ae_5442:
    ldh [$c0], a                                  ; $5442: $e0 $c0
    add b                                         ; $5444: $80
    and b                                         ; $5445: $a0

jr_0ae_5446:
    ld l, d                                       ; $5446: $6a
    ld h, b                                       ; $5447: $60
    rrca                                          ; $5448: $0f
    adc a                                         ; $5449: $8f
    and b                                         ; $544a: $a0
    adc a                                         ; $544b: $8f
    and b                                         ; $544c: $a0
    or b                                          ; $544d: $b0
    ld [bc], a                                    ; $544e: $02
    add a                                         ; $544f: $87
    ret nc                                        ; $5450: $d0

    ret nz                                        ; $5451: $c0

    rra                                           ; $5452: $1f
    ret nz                                        ; $5453: $c0

    nop                                           ; $5454: $00
    ld e, $00                                     ; $5455: $1e $00
    jr nc, jr_0ae_5475                            ; $5457: $30 $1c

    cpl                                           ; $5459: $2f
    rra                                           ; $545a: $1f
    add e                                         ; $545b: $83
    ld [bc], a                                    ; $545c: $02
    ld [$0a86], sp                                ; $545d: $08 $86 $0a
    call z, $970a                                 ; $5460: $cc $0a $97
    rrca                                          ; $5463: $0f
    ld [bc], a                                    ; $5464: $02
    inc h                                         ; $5465: $24
    jp $d7e0                                      ; $5466: $c3 $e0 $d7


    ld hl, sp-$20                                 ; $5469: $f8 $e0
    db $10                                        ; $546b: $10
    jr @+$01                                      ; $546c: $18 $ff

jr_0ae_546e:
    nop                                           ; $546e: $00
    nop                                           ; $546f: $00
    inc bc                                        ; $5470: $03
    add c                                         ; $5471: $81
    inc bc                                        ; $5472: $03
    pop bc                                        ; $5473: $c1
    sbc b                                         ; $5474: $98

jr_0ae_5475:
    ld de, $403c                                  ; $5475: $11 $3c $40
    jr c, jr_0ae_548a                             ; $5478: $38 $10

    jr z, jr_0ae_5446                             ; $547a: $28 $ca

    ld b, [hl]                                    ; $547c: $46
    jp nc, $984e                                  ; $547d: $d2 $4e $98

    adc $03                                       ; $5480: $ce $03
    db $10                                        ; $5482: $10
    xor h                                         ; $5483: $ac
    ld [$f803], sp                                ; $5484: $08 $03 $f8
    inc bc                                        ; $5487: $03
    ret c                                         ; $5488: $d8

    ld [bc], a                                    ; $5489: $02

jr_0ae_548a:
    rst $38                                       ; $548a: $ff
    ld [hl], d                                    ; $548b: $72
    db $10                                        ; $548c: $10
    inc bc                                        ; $548d: $03
    and d                                         ; $548e: $a2
    ld [bc], a                                    ; $548f: $02
    ld h, b                                       ; $5490: $60
    nop                                           ; $5491: $00
    ld bc, $23f8                                  ; $5492: $01 $f8 $23
    ld [$01fe], sp                                ; $5495: $08 $fe $01
    db $fc                                        ; $5498: $fc
    inc bc                                        ; $5499: $03
    ld hl, sp+$00                                 ; $549a: $f8 $00
    ld b, $e0                                     ; $549c: $06 $e0
    pop bc                                        ; $549e: $c1
    call c, $e700                                 ; $549f: $dc $00 $e7
    jr @-$3b                                      ; $54a2: $18 $c3

    nop                                           ; $54a4: $00
    inc a                                         ; $54a5: $3c
    add c                                         ; $54a6: $81
    ld h, [hl]                                    ; $54a7: $66
    nop                                           ; $54a8: $00
    jr jr_0ae_546e                                ; $54a9: $18 $c3

    dec a                                         ; $54ab: $3d
    add hl, bc                                    ; $54ac: $09
    nop                                           ; $54ad: $00
    db $e4                                        ; $54ae: $e4
    nop                                           ; $54af: $00
    ldh [$33], a                                  ; $54b0: $e0 $33
    rrca                                          ; $54b2: $0f
    rrca                                          ; $54b3: $0f
    ld a, [hl-]                                   ; $54b4: $3a
    scf                                           ; $54b5: $37
    nop                                           ; $54b6: $00
    ld a, [hl-]                                   ; $54b7: $3a
    dec c                                         ; $54b8: $0d
    ld b, $1b                                     ; $54b9: $06 $1b
    ld e, d                                       ; $54bb: $5a
    ld c, [hl]                                    ; $54bc: $4e
    add sp, -$5a                                  ; $54bd: $e8 $a6
    nop                                           ; $54bf: $00
    ld b, c                                       ; $54c0: $41
    ld d, h                                       ; $54c1: $54
    add c                                         ; $54c2: $81
    sbc b                                         ; $54c3: $98
    rra                                           ; $54c4: $1f
    rra                                           ; $54c5: $1f
    ldh [$08], a                                  ; $54c6: $e0 $08
    nop                                           ; $54c8: $00
    db $e3                                        ; $54c9: $e3
    ld a, [hl+]                                   ; $54ca: $2a
    ld a, l                                       ; $54cb: $7d
    ld b, l                                       ; $54cc: $45
    ld b, h                                       ; $54cd: $44
    ld [hl], h                                    ; $54ce: $74
    ld a, h                                       ; $54cf: $7c
    ld a, d                                       ; $54d0: $7a
    nop                                           ; $54d1: $00
    xor $0a                                       ; $54d2: $ee $0a
    pop bc                                        ; $54d4: $c1
    ld a, [de]                                    ; $54d5: $1a
    nop                                           ; $54d6: $00
    rst $38                                       ; $54d7: $ff
    ld b, b                                       ; $54d8: $40
    ccf                                           ; $54d9: $3f
    nop                                           ; $54da: $00
    ccf                                           ; $54db: $3f
    cp a                                          ; $54dc: $bf
    ccf                                           ; $54dd: $3f
    adc a                                         ; $54de: $8f
    rrca                                          ; $54df: $0f
    ccf                                           ; $54e0: $3f
    cpl                                           ; $54e1: $2f
    rrca                                          ; $54e2: $0f
    inc c                                         ; $54e3: $0c
    rrca                                          ; $54e4: $0f
    rst $08                                       ; $54e5: $cf
    ld l, a                                       ; $54e6: $6f
    rrca                                          ; $54e7: $0f
    ld e, b                                       ; $54e8: $58
    ld l, b                                       ; $54e9: $68
    add b                                         ; $54ea: $80
    nop                                           ; $54eb: $00
    rlca                                          ; $54ec: $07
    inc bc                                        ; $54ed: $03
    nop                                           ; $54ee: $00
    dec c                                         ; $54ef: $0d
    inc bc                                        ; $54f0: $03
    inc b                                         ; $54f1: $04
    inc c                                         ; $54f2: $0c
    inc b                                         ; $54f3: $04
    ld bc, $391d                                  ; $54f4: $01 $1d $39
    nop                                           ; $54f7: $00
    ld bc, $3a39                                  ; $54f8: $01 $39 $3a
    inc bc                                        ; $54fb: $03
    nop                                           ; $54fc: $00
    scf                                           ; $54fd: $37
    ld d, b                                       ; $54fe: $50
    ld bc, $f000                                  ; $54ff: $01 $00 $f0
    ld c, $66                                     ; $5502: $0e $66
    rrca                                          ; $5504: $0f
    inc bc                                        ; $5505: $03
    pop hl                                        ; $5506: $e1
    ld c, $f0                                     ; $5507: $0e $f0
    nop                                           ; $5509: $00
    ld h, a                                       ; $550a: $67
    ld hl, sp+$7b                                 ; $550b: $f8 $7b
    dec de                                        ; $550d: $1b
    rlc d                                         ; $550e: $cb $02
    ld [c], a                                     ; $5510: $e2
    db $fc                                        ; $5511: $fc
    nop                                           ; $5512: $00
    ld b, $f8                                     ; $5513: $06 $f8
    ld [bc], a                                    ; $5515: $02
    inc bc                                        ; $5516: $03
    ld a, c                                       ; $5517: $79
    inc bc                                        ; $5518: $03
    or e                                          ; $5519: $b3
    ld d, h                                       ; $551a: $54
    nop                                           ; $551b: $00
    add b                                         ; $551c: $80
    add [hl]                                      ; $551d: $86
    ld b, [hl]                                    ; $551e: $46
    cp d                                          ; $551f: $ba
    sbc d                                         ; $5520: $9a
    ld e, $42                                     ; $5521: $1e $42
    ld b, c                                       ; $5523: $41
    nop                                           ; $5524: $00
    ld l, [hl]                                    ; $5525: $6e
    and b                                         ; $5526: $a0
    ld c, b                                       ; $5527: $48
    rst $20                                       ; $5528: $e7
    add b                                         ; $5529: $80
    inc c                                         ; $552a: $0c
    dec bc                                        ; $552b: $0b
    sub $00                                       ; $552c: $d6 $00
    ld a, [c]                                     ; $552e: $f2
    sbc b                                         ; $552f: $98
    ldh a, [$28]                                  ; $5530: $f0 $28
    ld e, [hl]                                    ; $5532: $5e
    ld b, h                                       ; $5533: $44
    ld h, e                                       ; $5534: $63
    sub h                                         ; $5535: $94
    nop                                           ; $5536: $00
    rra                                           ; $5537: $1f
    call nz, Call_0ae_601f                        ; $5538: $c4 $1f $60
    ld a, [de]                                    ; $553b: $1a
    and b                                         ; $553c: $a0
    sbc b                                         ; $553d: $98
    add b                                         ; $553e: $80
    nop                                           ; $553f: $00
    or b                                          ; $5540: $b0
    rst $00                                       ; $5541: $c7
    ldh [$3f], a                                  ; $5542: $e0 $3f
    ld e, a                                       ; $5544: $5f
    rra                                           ; $5545: $1f
    ld e, a                                       ; $5546: $5f
    cp a                                          ; $5547: $bf
    nop                                           ; $5548: $00
    add b                                         ; $5549: $80
    cp a                                          ; $554a: $bf
    ret nz                                        ; $554b: $c0

    ret nz                                        ; $554c: $c0

    add b                                         ; $554d: $80
    ld b, b                                       ; $554e: $40
    add b                                         ; $554f: $80
    add b                                         ; $5550: $80
    db $10                                        ; $5551: $10
    ld a, a                                       ; $5552: $7f
    nop                                           ; $5553: $00
    ld a, a                                       ; $5554: $7f
    cp b                                          ; $5555: $b8
    nop                                           ; $5556: $00
    pop af                                        ; $5557: $f1
    ld c, $e0                                     ; $5558: $0e $e0
    ret c                                         ; $555a: $d8

    nop                                           ; $555b: $00
    ret nz                                        ; $555c: $c0

    jr nc, jr_0ae_5565                            ; $555d: $30 $06

    ld h, c                                       ; $555f: $61
    rrca                                          ; $5560: $0f
    ld h, c                                       ; $5561: $61
    rrca                                          ; $5562: $0f
    and b                                         ; $5563: $a0
    nop                                           ; $5564: $00

jr_0ae_5565:
    adc [hl]                                      ; $5565: $8e
    ld [hl], b                                    ; $5566: $70
    ld [hl], b                                    ; $5567: $70
    ld h, b                                       ; $5568: $60
    sub h                                         ; $5569: $94
    ld [hl], b                                    ; $556a: $70
    sbc b                                         ; $556b: $98
    ld h, b                                       ; $556c: $60
    nop                                           ; $556d: $00
    inc bc                                        ; $556e: $03
    inc b                                         ; $556f: $04
    rlca                                          ; $5570: $07
    rrca                                          ; $5571: $0f
    call nz, $ce0f                                ; $5572: $c4 $0f $ce
    rst $08                                       ; $5575: $cf
    nop                                           ; $5576: $00
    rrca                                          ; $5577: $0f
    ld a, b                                       ; $5578: $78
    add hl, bc                                    ; $5579: $09
    jr c, jr_0ae_55a5                             ; $557a: $38 $29

    ld h, [hl]                                    ; $557c: $66
    ld l, e                                       ; $557d: $6b
    jr z, jr_0ae_5580                             ; $557e: $28 $00

jr_0ae_5580:
    ld b, $8c                                     ; $5580: $06 $8c
    add d                                         ; $5582: $82
    ld c, $c2                                     ; $5583: $0e $c2
    add [hl]                                      ; $5585: $86
    ld [c], a                                     ; $5586: $e2
    ld h, $00                                     ; $5587: $26 $00
    ldh [$80], a                                  ; $5589: $e0 $80
    ld b, [hl]                                    ; $558b: $46
    adc h                                         ; $558c: $8c
    ld c, b                                       ; $558d: $48
    call nz, $00c2                                ; $558e: $c4 $c2 $00
    nop                                           ; $5591: $00
    rlca                                          ; $5592: $07
    inc d                                         ; $5593: $14
    ld d, e                                       ; $5594: $53
    sub h                                         ; $5595: $94
    ld d, d                                       ; $5596: $52
    ld e, b                                       ; $5597: $58
    ret nz                                        ; $5598: $c0

    jr jr_0ae_559b                                ; $5599: $18 $00

jr_0ae_559b:
    ret nz                                        ; $559b: $c0

    rst $18                                       ; $559c: $df
    db $10                                        ; $559d: $10
    jp $ba39                                      ; $559e: $c3 $39 $ba


    db $fc                                        ; $55a1: $fc
    jr jr_0ae_55a4                                ; $55a2: $18 $00

jr_0ae_55a4:
    ld [hl], b                                    ; $55a4: $70

jr_0ae_55a5:
    inc b                                         ; $55a5: $04
    ld bc, $d984                                  ; $55a6: $01 $84 $d9
    inc c                                         ; $55a9: $0c
    ld l, c                                       ; $55aa: $69
    dec c                                         ; $55ab: $0d
    nop                                           ; $55ac: $00
    add hl, bc                                    ; $55ad: $09
    ld b, b                                       ; $55ae: $40
    add b                                         ; $55af: $80
    ld b, $03                                     ; $55b0: $06 $03
    pop hl                                        ; $55b2: $e1
    rlca                                          ; $55b3: $07
    ld [hl], b                                    ; $55b4: $70
    nop                                           ; $55b5: $00
    ld b, e                                       ; $55b6: $43
    xor b                                         ; $55b7: $a8
    jr c, jr_0ae_55e2                             ; $55b8: $38 $28

    jp c, Jump_000_1b33                           ; $55ba: $da $33 $1b

    reti                                          ; $55bd: $d9


    nop                                           ; $55be: $00
    ei                                            ; $55bf: $fb
    add b                                         ; $55c0: $80
    ccf                                           ; $55c1: $3f
    ret nz                                        ; $55c2: $c0

    adc a                                         ; $55c3: $8f
    jr nc, @+$09                                  ; $55c4: $30 $07

    sbc b                                         ; $55c6: $98
    nop                                           ; $55c7: $00
    add e                                         ; $55c8: $83
    and b                                         ; $55c9: $a0
    ld c, h                                       ; $55ca: $4c
    ret nc                                        ; $55cb: $d0

    ld h, $40                                     ; $55cc: $26 $40
    ld [hl], $21                                  ; $55ce: $36 $21
    nop                                           ; $55d0: $00
    dec d                                         ; $55d1: $15
    and b                                         ; $55d2: $a0
    adc a                                         ; $55d3: $8f
    or b                                          ; $55d4: $b0
    add a                                         ; $55d5: $87
    ret nc                                        ; $55d6: $d0

    rst $00                                       ; $55d7: $c7
    ret nc                                        ; $55d8: $d0

    inc b                                         ; $55d9: $04
    rst $00                                       ; $55da: $c7
    ret c                                         ; $55db: $d8

    jp $e3e8                                      ; $55dc: $c3 $e8 $e3


    ld [bc], a                                    ; $55df: $02
    nop                                           ; $55e0: $00
    ld [c], a                                     ; $55e1: $e2

jr_0ae_55e2:
    ld c, a                                       ; $55e2: $4f
    jr nz, @+$21                                  ; $55e3: $20 $1f

    rra                                           ; $55e5: $1f
    inc bc                                        ; $55e6: $03
    nop                                           ; $55e7: $00
    ccf                                           ; $55e8: $3f
    sbc a                                         ; $55e9: $9f
    ccf                                           ; $55ea: $3f
    cp a                                          ; $55eb: $bf
    ld b, b                                       ; $55ec: $40
    nop                                           ; $55ed: $00
    ld a, a                                       ; $55ee: $7f
    ld a, h                                       ; $55ef: $7c
    ld b, e                                       ; $55f0: $43
    inc sp                                        ; $55f1: $33
    rrca                                          ; $55f2: $0f
    ld h, $e0                                     ; $55f3: $26 $e0
    jr nc, jr_0ae_55f7                            ; $55f5: $30 $00

jr_0ae_55f7:
    or d                                          ; $55f7: $b2
    ld [hl-], a                                   ; $55f8: $32
    or h                                          ; $55f9: $b4
    add d                                         ; $55fa: $82
    rlca                                          ; $55fb: $07
    jp nz, $e407                                  ; $55fc: $c2 $07 $e4

    nop                                           ; $55ff: $00
    ld b, $f2                                     ; $5600: $06 $f2
    ld [bc], a                                    ; $5602: $02
    ldh a, [rNR23]                                ; $5603: $f0 $18

jr_0ae_5605:
    ld e, c                                       ; $5605: $59
    push bc                                       ; $5606: $c5
    ld a, [de]                                    ; $5607: $1a
    nop                                           ; $5608: $00
    jp Jump_000_3907                              ; $5609: $c3 $07 $39


    rlca                                          ; $560c: $07
    ld sp, $2834                                  ; $560d: $31 $34 $28
    ld h, b                                       ; $5610: $60
    nop                                           ; $5611: $00
    ld sp, $9767                                  ; $5612: $31 $67 $97
    rst $28                                       ; $5615: $ef
    rrca                                          ; $5616: $0f
    inc bc                                        ; $5617: $03
    ld [$00c0], sp                                ; $5618: $08 $c0 $00
    jp nz, $0183                                  ; $561b: $c2 $83 $01

    ld sp, $f225                                  ; $561e: $31 $25 $f2
    sub h                                         ; $5621: $94
    ld [$0500], a                                 ; $5622: $ea $00 $05
    push hl                                       ; $5625: $e5
    ld l, e                                       ; $5626: $6b
    ldh [$ce], a                                  ; $5627: $e0 $ce
    ld a, b                                       ; $5629: $78
    jr z, jr_0ae_5648                             ; $562a: $28 $1c

    nop                                           ; $562c: $00
    inc h                                         ; $562d: $24
    ret z                                         ; $562e: $c8

    ld b, h                                       ; $562f: $44
    ld a, [hl+]                                   ; $5630: $2a
    inc h                                         ; $5631: $24
    dec b                                         ; $5632: $05
    nop                                           ; $5633: $00
    ld h, b                                       ; $5634: $60
    nop                                           ; $5635: $00
    ld b, e                                       ; $5636: $43
    sbc d                                         ; $5637: $9a
    add h                                         ; $5638: $84

jr_0ae_5639:
    ld b, b                                       ; $5639: $40
    jr nc, jr_0ae_564c                            ; $563a: $30 $10

    db $10                                        ; $563c: $10
    jp nz, Jump_0ae_4200                          ; $563d: $c2 $00 $42

    adc b                                         ; $5640: $88
    ld b, $00                                     ; $5641: $06 $00
    jr c, jr_0ae_5605                             ; $5643: $38 $c0

    inc bc                                        ; $5645: $03
    or b                                          ; $5646: $b0
    nop                                           ; $5647: $00

jr_0ae_5648:
    scf                                           ; $5648: $37
    ld d, b                                       ; $5649: $50
    jr nc, @+$32                                  ; $564a: $30 $30

jr_0ae_564c:
    or b                                          ; $564c: $b0
    db $ec                                        ; $564d: $ec
    ldh [rDIV], a                                 ; $564e: $e0 $04
    nop                                           ; $5650: $00
    ldh a, [rTIMA]                                ; $5651: $f0 $05
    pop af                                        ; $5653: $f1
    rlca                                          ; $5654: $07
    pop af                                        ; $5655: $f1
    ld [bc], a                                    ; $5656: $02
    ld hl, sp+$02                                 ; $5657: $f8 $02
    db $10                                        ; $5659: $10
    ld hl, sp+$03                                 ; $565a: $f8 $03
    ld hl, sp-$5a                                 ; $565c: $f8 $a6
    ld bc, $5807                                  ; $565e: $01 $07 $58
    ld l, b                                       ; $5661: $68
    ld [bc], a                                    ; $5662: $02
    nop                                           ; $5663: $00
    db $fc                                        ; $5664: $fc
    ld e, h                                       ; $5665: $5c
    db $db                                        ; $5666: $db
    ld bc, $3d00                                  ; $5667: $01 $00 $3d
    jp Jump_000_0081                              ; $566a: $c3 $81 $00


    nop                                           ; $566d: $00
    ld [hl-], a                                   ; $566e: $32
    ld e, $f8                                     ; $566f: $1e $f8
    add hl, de                                    ; $5671: $19
    pop hl                                        ; $5672: $e1
    ld hl, sp+$75                                 ; $5673: $f8 $75
    nop                                           ; $5675: $00
    ld a, h                                       ; $5676: $7c
    ld sp, $190c                                  ; $5677: $31 $0c $19
    add l                                         ; $567a: $85
    ldh [$4c], a                                  ; $567b: $e0 $4c
    ld [hl], b                                    ; $567d: $70
    nop                                           ; $567e: $00
    inc h                                         ; $567f: $24
    ld [hl], b                                    ; $5680: $70
    db $10                                        ; $5681: $10
    rst $08                                       ; $5682: $cf
    rrca                                          ; $5683: $0f
    sbc a                                         ; $5684: $9f
    ld e, a                                       ; $5685: $5f
    cp b                                          ; $5686: $b8
    nop                                           ; $5687: $00
    ccf                                           ; $5688: $3f
    jr nc, jr_0ae_56c7                            ; $5689: $30 $3c

    ld [hl], e                                    ; $568b: $73
    ld bc, $07cc                                  ; $568c: $01 $cc $07
    nop                                           ; $568f: $00
    nop                                           ; $5690: $00
    jr c, jr_0ae_5639                             ; $5691: $38 $a6

    ld b, [hl]                                    ; $5693: $46
    ret                                           ; $5694: $c9


    db $10                                        ; $5695: $10
    rst $00                                       ; $5696: $c7
    rlca                                          ; $5697: $07
    jr jr_0ae_569a                                ; $5698: $18 $00

jr_0ae_569a:
    inc l                                         ; $569a: $2c
    ld [hl], c                                    ; $569b: $71
    ld b, c                                       ; $569c: $41
    ld c, e                                       ; $569d: $4b
    adc e                                         ; $569e: $8b
    dec sp                                        ; $569f: $3b
    dec sp                                        ; $56a0: $3b
    ld d, h                                       ; $56a1: $54
    nop                                           ; $56a2: $00
    di                                            ; $56a3: $f3
    ldh a, [$f7]                                  ; $56a4: $f0 $f7
    ret nz                                        ; $56a6: $c0

    inc c                                         ; $56a7: $0c
    inc a                                         ; $56a8: $3c
    inc a                                         ; $56a9: $3c
    add c                                         ; $56aa: $81
    nop                                           ; $56ab: $00
    db $fd                                        ; $56ac: $fd
    jp nz, $fc3c                                  ; $56ad: $c2 $3c $fc

    ld a, $c2                                     ; $56b0: $3e $c2
    inc a                                         ; $56b2: $3c
    jp nz, Jump_0ae_7e00                          ; $56b3: $c2 $00 $7e

    cp $3c                                        ; $56b6: $fe $3c
    ld b, b                                       ; $56b8: $40
    rlca                                          ; $56b9: $07
    ld b, b                                       ; $56ba: $40
    ld c, a                                       ; $56bb: $4f
    and b                                         ; $56bc: $a0
    nop                                           ; $56bd: $00
    xor a                                         ; $56be: $af
    and b                                         ; $56bf: $a0
    cpl                                           ; $56c0: $2f
    ld e, a                                       ; $56c1: $5f
    sbc a                                         ; $56c2: $9f
    ld e, a                                       ; $56c3: $5f
    sbc a                                         ; $56c4: $9f
    ret nz                                        ; $56c5: $c0

    nop                                           ; $56c6: $00

jr_0ae_56c7:
    rst $18                                       ; $56c7: $df
    ret nz                                        ; $56c8: $c0

    ld e, a                                       ; $56c9: $5f
    ld bc, $01fc                                  ; $56ca: $01 $fc $01
    db $fc                                        ; $56cd: $fc
    nop                                           ; $56ce: $00

jr_0ae_56cf:
    jr nz, jr_0ae_56cf                            ; $56cf: $20 $fe

    cp $b9                                        ; $56d1: $fe $b9
    ld bc, $00fe                                  ; $56d3: $01 $fe $00
    db $fc                                        ; $56d6: $fc
    inc bc                                        ; $56d7: $03
    ld sp, hl                                     ; $56d8: $f9
    nop                                           ; $56d9: $00
    ld hl, sp+$31                                 ; $56da: $f8 $31
    ld a, $21                                     ; $56dc: $3e $21
    rra                                           ; $56de: $1f
    jr nz, @+$21                                  ; $56df: $20 $1f

    dec sp                                        ; $56e1: $3b
    nop                                           ; $56e2: $00
    ld b, h                                       ; $56e3: $44
    ld l, c                                       ; $56e4: $69
    rra                                           ; $56e5: $1f
    ld d, [hl]                                    ; $56e6: $56
    dec a                                         ; $56e7: $3d
    ld d, l                                       ; $56e8: $55
    ld l, [hl]                                    ; $56e9: $6e
    sub l                                         ; $56ea: $95
    nop                                           ; $56eb: $00
    ld a, $30                                     ; $56ec: $3e $30
    inc bc                                        ; $56ee: $03
    cp [hl]                                       ; $56ef: $be
    jr nc, @+$13                                  ; $56f0: $30 $11

    pop bc                                        ; $56f2: $c1
    ld h, b                                       ; $56f3: $60
    nop                                           ; $56f4: $00
    rst $00                                       ; $56f5: $c7
    ld l, b                                       ; $56f6: $68
    ld b, e                                       ; $56f7: $43
    ld a, [hl+]                                   ; $56f8: $2a
    ld h, d                                       ; $56f9: $62
    pop bc                                        ; $56fa: $c1
    ld de, $0030                                  ; $56fb: $11 $30 $00
    ld de, $0286                                  ; $56fe: $11 $86 $02
    ld h, h                                       ; $5701: $64
    ld hl, $357c                                  ; $5702: $21 $7c $35
    ld l, e                                       ; $5705: $6b
    nop                                           ; $5706: $00
    jr nz, jr_0ae_5772                            ; $5707: $20 $69

    ld [hl+], a                                   ; $5709: $22
    db $e3                                        ; $570a: $e3
    and h                                         ; $570b: $a4
    rlca                                          ; $570c: $07
    dec d                                         ; $570d: $15
    rlca                                          ; $570e: $07
    nop                                           ; $570f: $00
    dec l                                         ; $5710: $2d
    or h                                          ; $5711: $b4
    rst $00                                       ; $5712: $c7
    bit 4, h                                      ; $5713: $cb $64
    ld c, b                                       ; $5715: $48
    and b                                         ; $5716: $a0
    reti                                          ; $5717: $d9


    nop                                           ; $5718: $00
    add hl, bc                                    ; $5719: $09
    ld d, c                                       ; $571a: $51
    call z, $91c8                                 ; $571b: $cc $c8 $91
    inc sp                                        ; $571e: $33
    sub e                                         ; $571f: $93
    and a                                         ; $5720: $a7
    nop                                           ; $5721: $00
    and [hl]                                      ; $5722: $a6
    ld a, h                                       ; $5723: $7c
    cp $86                                        ; $5724: $fe $86
    db $fc                                        ; $5726: $fc
    db $fc                                        ; $5727: $fc
    add l                                         ; $5728: $85
    db $fc                                        ; $5729: $fc
    nop                                           ; $572a: $00
    adc c                                         ; $572b: $89
    ld hl, sp-$07                                 ; $572c: $f8 $f9
    ret nz                                        ; $572e: $c0

    add e                                         ; $572f: $83
    add b                                         ; $5730: $80
    sbc c                                         ; $5731: $99
    jr nz, jr_0ae_5784                            ; $5732: $20 $50

    ld e, $64                                     ; $5734: $1e $64
    nop                                           ; $5736: $00
    rra                                           ; $5737: $1f
    ld l, b                                       ; $5738: $68
    ld [$9fc0], sp                                ; $5739: $08 $c0 $9f
    ret nz                                        ; $573c: $c0

    rra                                           ; $573d: $1f
    nop                                           ; $573e: $00
    ld e, a                                       ; $573f: $5f
    ret nz                                        ; $5740: $c0

    cp a                                          ; $5741: $bf
    add b                                         ; $5742: $80
    push af                                       ; $5743: $f5
    ld a, [c]                                     ; $5744: $f2
    inc c                                         ; $5745: $0c
    db $e4                                        ; $5746: $e4
    jr nz, jr_0ae_5749                            ; $5747: $20 $00

jr_0ae_5749:
    di                                            ; $5749: $f3
    and [hl]                                      ; $574a: $a6
    ld a, [hl-]                                   ; $574b: $3a
    ld a, [bc]                                    ; $574c: $0a
    jr nz, jr_0ae_56cf                            ; $574d: $20 $80

    add b                                         ; $574f: $80
    and b                                         ; $5750: $a0
    ld [$b081], sp                                ; $5751: $08 $81 $b0
    add e                                         ; $5754: $83
    ret nc                                        ; $5755: $d0

    daa                                           ; $5756: $27
    nop                                           ; $5757: $00
    nop                                           ; $5758: $00
    ret nz                                        ; $5759: $c0

    nop                                           ; $575a: $00
    nop                                           ; $575b: $00
    nop                                           ; $575c: $00
    ld h, b                                       ; $575d: $60
    or a                                          ; $575e: $b7
    jr nz, jr_0ae_5761                            ; $575f: $20 $00

jr_0ae_5761:
    ret nc                                        ; $5761: $d0

    ldh [$8f], a                                  ; $5762: $e0 $8f
    ld [$006f], sp                                ; $5764: $08 $6f $00
    nop                                           ; $5767: $00
    rst $38                                       ; $5768: $ff
    rl d                                          ; $5769: $cb $12
    dec hl                                        ; $576b: $2b
    adc $0f                                       ; $576c: $ce $0f
    inc b                                         ; $576e: $04
    ret z                                         ; $576f: $c8

    rra                                           ; $5770: $1f
    ret nc                                        ; $5771: $d0

jr_0ae_5772:
    ld d, $dd                                     ; $5772: $16 $dd
    db $10                                        ; $5774: $10
    jr @+$01                                      ; $5775: $18 $ff

    nop                                           ; $5777: $00
    ld bc, $2e47                                  ; $5778: $01 $47 $2e
    inc hl                                        ; $577b: $23
    ld b, b                                       ; $577c: $40
    ld h, h                                       ; $577d: $64
    ld b, $7e                                     ; $577e: $06 $7e
    inc c                                         ; $5780: $0c
    db $10                                        ; $5781: $10
    add b                                         ; $5782: $80
    inc h                                         ; $5783: $24

jr_0ae_5784:
    db $10                                        ; $5784: $10
    ld a, b                                       ; $5785: $78
    dec b                                         ; $5786: $05
    ld [hl], c                                    ; $5787: $71
    dec b                                         ; $5788: $05
    pop hl                                        ; $5789: $e1
    dec c                                         ; $578a: $0d
    pop hl                                        ; $578b: $e1
    inc b                                         ; $578c: $04
    ld [$f803], sp                                ; $578d: $08 $03 $f8
    inc bc                                        ; $5790: $03
    inc bc                                        ; $5791: $03
    inc [hl]                                      ; $5792: $34
    nop                                           ; $5793: $00
    ccf                                           ; $5794: $3f
    ld b, b                                       ; $5795: $40
    ret nz                                        ; $5796: $c0

    jr c, jr_0ae_57b1                             ; $5797: $38 $18

    ld [$102b], sp                                ; $5799: $08 $2b $10
    inc bc                                        ; $579c: $03
    adc b                                         ; $579d: $88
    ld [bc], a                                    ; $579e: $02
    ld b, b                                       ; $579f: $40
    nop                                           ; $57a0: $00
    ld bc, $fff0                                  ; $57a1: $01 $f0 $ff
    nop                                           ; $57a4: $00
    cp $00                                        ; $57a5: $fe $00
    db $fd                                        ; $57a7: $fd
    db $fd                                        ; $57a8: $fd
    nop                                           ; $57a9: $00
    ld sp, hl                                     ; $57aa: $f9
    db $fc                                        ; $57ab: $fc
    ld a, [bc]                                    ; $57ac: $0a
    add hl, bc                                    ; $57ad: $09
    jr nz, jr_0ae_57d7                            ; $57ae: $20 $27

    ld b, b                                       ; $57b0: $40

jr_0ae_57b1:
    ld c, h                                       ; $57b1: $4c
    nop                                           ; $57b2: $00
    nop                                           ; $57b3: $00
    ldh [$1f], a                                  ; $57b4: $e0 $1f
    adc a                                         ; $57b6: $8f
    ld [hl], b                                    ; $57b7: $70
    inc a                                         ; $57b8: $3c
    ret nz                                        ; $57b9: $c0

    sbc h                                         ; $57ba: $9c
    nop                                           ; $57bb: $00
    inc e                                         ; $57bc: $1c
    jp nz, $a380                                  ; $57bd: $c2 $80 $a3

    rra                                           ; $57c0: $1f
    adc h                                         ; $57c1: $8c
    ld [hl], b                                    ; $57c2: $70
    jr z, jr_0ae_57c5                             ; $57c3: $28 $00

jr_0ae_57c5:
    nop                                           ; $57c5: $00
    inc bc                                        ; $57c6: $03
    db $fc                                        ; $57c7: $fc
    adc b                                         ; $57c8: $88
    db $ec                                        ; $57c9: $ec
    ld a, [c]                                     ; $57ca: $f2
    xor a                                         ; $57cb: $af
    or b                                          ; $57cc: $b0
    ld [bc], a                                    ; $57cd: $02
    add hl, bc                                    ; $57ce: $09
    ld [hl], $fc                                  ; $57cf: $36 $fc
    cp $03                                        ; $57d1: $fe $03
    db $fd                                        ; $57d3: $fd
    ld [hl-], a                                   ; $57d4: $32
    jr z, @+$41                                   ; $57d5: $28 $3f

jr_0ae_57d7:
    nop                                           ; $57d7: $00
    nop                                           ; $57d8: $00
    sbc a                                         ; $57d9: $9f
    ld e, a                                       ; $57da: $5f
    ld e, a                                       ; $57db: $5f
    rra                                           ; $57dc: $1f
    rrca                                          ; $57dd: $0f
    xor a                                         ; $57de: $af
    rst $08                                       ; $57df: $cf
    ld b, d                                       ; $57e0: $42
    cpl                                           ; $57e1: $2f
    ld h, b                                       ; $57e2: $60
    ret z                                         ; $57e3: $c8

    ld bc, $0000                                  ; $57e4: $01 $00 $00
    inc bc                                        ; $57e7: $03
    inc bc                                        ; $57e8: $03
    ld [$0006], sp                                ; $57e9: $08 $06 $00
    rlca                                          ; $57ec: $07
    add hl, de                                    ; $57ed: $19
    rlca                                          ; $57ee: $07
    ld [hl-], a                                   ; $57ef: $32
    ld c, $61                                     ; $57f0: $0e $61
    ld a, b                                       ; $57f2: $78
    rst $00                                       ; $57f3: $c7
    nop                                           ; $57f4: $00
    ldh a, [$af]                                  ; $57f5: $f0 $af
    ld h, b                                       ; $57f7: $60
    pop bc                                        ; $57f8: $c1
    ret c                                         ; $57f9: $d8

    inc de                                        ; $57fa: $13
    ret nz                                        ; $57fb: $c0

    rlca                                          ; $57fc: $07
    nop                                           ; $57fd: $00
    jp $1f17                                      ; $57fe: $c3 $17 $1f


    jp z, $3112                                   ; $5801: $ca $12 $31

    add c                                         ; $5804: $81
    ld hl, $5100                                  ; $5805: $21 $00 $51

Jump_0ae_5808:
    ld h, b                                       ; $5808: $60
    ld hl, $e223                                  ; $5809: $21 $23 $e2
    rrca                                          ; $580c: $0f
    add b                                         ; $580d: $80
    inc sp                                        ; $580e: $33
    nop                                           ; $580f: $00
    inc a                                         ; $5810: $3c
    ld h, b                                       ; $5811: $60
    scf                                           ; $5812: $37
    add hl, hl                                    ; $5813: $29
    ld c, a                                       ; $5814: $4f
    ld sp, $474d                                  ; $5815: $31 $4d $47
    nop                                           ; $5818: $00
    jr c, @-$7e                                   ; $5819: $38 $80

    rst $38                                       ; $581b: $ff
    db $f4                                        ; $581c: $f4
    ld hl, sp+$18                                 ; $581d: $f8 $18
    db $e4                                        ; $581f: $e4
    db $fc                                        ; $5820: $fc
    nop                                           ; $5821: $00
    inc b                                         ; $5822: $04
    ld hl, sp-$72                                 ; $5823: $f8 $8e
    jr nz, jr_0ae_5827                            ; $5825: $20 $00

jr_0ae_5827:
    ld h, h                                       ; $5827: $64
    inc e                                         ; $5828: $1c
    ldh [rP1], a                                  ; $5829: $e0 $00
    ld d, h                                       ; $582b: $54
    add sp, -$23                                  ; $582c: $e8 $dd
    ld c, a                                       ; $582e: $4f
    cpl                                           ; $582f: $2f
    rla                                           ; $5830: $17
    daa                                           ; $5831: $27
    jr nc, jr_0ae_5834                            ; $5832: $30 $00

jr_0ae_5834:
    ld d, a                                       ; $5834: $57
    ld [hl], b                                    ; $5835: $70
    rlca                                          ; $5836: $07
    ld b, a                                       ; $5837: $47
    ld h, e                                       ; $5838: $63
    rrca                                          ; $5839: $0f
    ld hl, $104e                                  ; $583a: $21 $4e $10
    rrca                                          ; $583d: $0f
    ld b, a                                       ; $583e: $47
    rla                                           ; $583f: $17
    ret nc                                        ; $5840: $d0

    ld d, b                                       ; $5841: $50
    add b                                         ; $5842: $80
    ret nz                                        ; $5843: $c0

    nop                                           ; $5844: $00
    rlca                                          ; $5845: $07
    nop                                           ; $5846: $00
    ld b, $07                                     ; $5847: $06 $07
    inc e                                         ; $5849: $1c
    ld c, $3c                                     ; $584a: $0e $3c
    add hl, bc                                    ; $584c: $09
    ld [hl], c                                    ; $584d: $71
    rst $10                                       ; $584e: $d7
    nop                                           ; $584f: $00
    daa                                           ; $5850: $27
    adc a                                         ; $5851: $8f
    ld l, a                                       ; $5852: $6f
    adc a                                         ; $5853: $8f
    ld l, a                                       ; $5854: $6f
    ldh [rVBK], a                                 ; $5855: $e0 $4f
    rra                                           ; $5857: $1f
    nop                                           ; $5858: $00
    add b                                         ; $5859: $80
    nop                                           ; $585a: $00
    ld a, a                                       ; $585b: $7f
    rst $38                                       ; $585c: $ff
    nop                                           ; $585d: $00
    ld e, [hl]                                    ; $585e: $5e
    and c                                         ; $585f: $a1
    nop                                           ; $5860: $00
    nop                                           ; $5861: $00
    nop                                           ; $5862: $00
    cp $fe                                        ; $5863: $fe $fe
    db $fc                                        ; $5865: $fc
    ld bc, $f802                                  ; $5866: $01 $02 $f8
    ld h, b                                       ; $5869: $60
    nop                                           ; $586a: $00
    ld b, c                                       ; $586b: $41
    ld h, b                                       ; $586c: $60
    ld [hl], c                                    ; $586d: $71
    ld [hl], b                                    ; $586e: $70
    jr nz, jr_0ae_58a9                            ; $586f: $20 $38

    adc b                                         ; $5871: $88
    jr jr_0ae_5874                                ; $5872: $18 $00

jr_0ae_5874:
    nop                                           ; $5874: $00
    inc c                                         ; $5875: $0c
    jr z, jr_0ae_58bc                             ; $5876: $28 $44

    ld h, $d5                                     ; $5878: $26 $d5
    add a                                         ; $587a: $87
    ccf                                           ; $587b: $3f
    nop                                           ; $587c: $00
    add b                                         ; $587d: $80
    sbc a                                         ; $587e: $9f
    ret nz                                        ; $587f: $c0

    rra                                           ; $5880: $1f
    rst $38                                       ; $5881: $ff
    rla                                           ; $5882: $17
    ld a, [hl]                                    ; $5883: $7e
    ld [bc], a                                    ; $5884: $02
    nop                                           ; $5885: $00
    ld a, $91                                     ; $5886: $3e $91
    rrca                                          ; $5888: $0f
    rst $08                                       ; $5889: $cf
    rlca                                          ; $588a: $07
    ld h, c                                       ; $588b: $61
    rla                                           ; $588c: $17
    add sp, $00                                   ; $588d: $e8 $00
    inc d                                         ; $588f: $14
    xor c                                         ; $5890: $a9
    ld d, l                                       ; $5891: $55
    jr @+$05                                      ; $5892: $18 $03

    ret nc                                        ; $5894: $d0

    ret nz                                        ; $5895: $c0

    jr nc, jr_0ae_5898                            ; $5896: $30 $00

jr_0ae_5898:
    jr nc, jr_0ae_58fa                            ; $5898: $30 $60

    and b                                         ; $589a: $a0
    add b                                         ; $589b: $80
    ret nz                                        ; $589c: $c0

    add b                                         ; $589d: $80
    nop                                           ; $589e: $00
    sbc b                                         ; $589f: $98
    nop                                           ; $58a0: $00
    add c                                         ; $58a1: $81
    ld a, $00                                     ; $58a2: $3e $00

Jump_0ae_58a4:
    nop                                           ; $58a4: $00
    ccf                                           ; $58a5: $3f
    ret nz                                        ; $58a6: $c0

    ld e, a                                       ; $58a7: $5f
    ret nz                                        ; $58a8: $c0

jr_0ae_58a9:
    nop                                           ; $58a9: $00
    sbc a                                         ; $58aa: $9f
    ld b, b                                       ; $58ab: $40
    rra                                           ; $58ac: $1f
    ld b, b                                       ; $58ad: $40
    ld e, a                                       ; $58ae: $5f
    ret nz                                        ; $58af: $c0

    rra                                           ; $58b0: $1f
    ldh [rP1], a                                  ; $58b1: $e0 $00
    add b                                         ; $58b3: $80
    ld h, b                                       ; $58b4: $60
    ld hl, sp+$70                                 ; $58b5: $f8 $70
    inc c                                         ; $58b7: $0c
    sub h                                         ; $58b8: $94
    ld c, $0f                                     ; $58b9: $0e $0f
    nop                                           ; $58bb: $00

jr_0ae_58bc:
    ld [c], a                                     ; $58bc: $e2
    rlca                                          ; $58bd: $07
    ld a, [c]                                     ; $58be: $f2
    rlca                                          ; $58bf: $07
    di                                            ; $58c0: $f3
    rlca                                          ; $58c1: $07
    ld a, [c]                                     ; $58c2: $f2
    ld h, b                                       ; $58c3: $60
    nop                                           ; $58c4: $00
    ld c, a                                       ; $58c5: $4f
    scf                                           ; $58c6: $37
    ld b, a                                       ; $58c7: $47
    ld [hl], a                                    ; $58c8: $77
    rlca                                          ; $58c9: $07
    jr nc, jr_0ae_58f3                            ; $58ca: $30 $27

    jr c, jr_0ae_58ce                             ; $58cc: $38 $00

jr_0ae_58ce:
    inc hl                                        ; $58ce: $23
    jr c, jr_0ae_58f4                             ; $58cf: $38 $23

    jr jr_0ae_58d5                                ; $58d1: $18 $02

    ld hl, sp-$1f                                 ; $58d3: $f8 $e1

jr_0ae_58d5:
    ld b, $00                                     ; $58d5: $06 $00
    ld a, [c]                                     ; $58d7: $f2
    inc c                                         ; $58d8: $0c
    add sp, $0c                                   ; $58d9: $e8 $0c
    add sp, $0d                                   ; $58db: $e8 $0d
    add sp, $0c                                   ; $58dd: $e8 $0c
    nop                                           ; $58df: $00
    add b                                         ; $58e0: $80
    ld h, d                                       ; $58e1: $62
    ld b, c                                       ; $58e2: $41
    add b                                         ; $58e3: $80
    ld h, a                                       ; $58e4: $67
    ld l, b                                       ; $58e5: $68
    add a                                         ; $58e6: $87
    ld a, [$6b08]                                 ; $58e7: $fa $08 $6b
    or c                                          ; $58ea: $b1
    cp b                                          ; $58eb: $b8
    or b                                          ; $58ec: $b0
    ld [bc], a                                    ; $58ed: $02
    nop                                           ; $58ee: $00
    db $10                                        ; $58ef: $10
    add hl, hl                                    ; $58f0: $29
    add b                                         ; $58f1: $80
    nop                                           ; $58f2: $00

jr_0ae_58f3:
    ret nz                                        ; $58f3: $c0

jr_0ae_58f4:
    ldh [$d0], a                                  ; $58f4: $e0 $d0
    ldh a, [$c8]                                  ; $58f6: $f0 $c8
    cp [hl]                                       ; $58f8: $be
    add [hl]                                      ; $58f9: $86

jr_0ae_58fa:
    ld e, [hl]                                    ; $58fa: $5e
    nop                                           ; $58fb: $00
    ret nz                                        ; $58fc: $c0

    ld c, [hl]                                    ; $58fd: $4e
    ret nz                                        ; $58fe: $c0

    ld l, $60                                     ; $58ff: $2e $60
    scf                                           ; $5901: $37
    ld b, c                                       ; $5902: $41
    rla                                           ; $5903: $17
    nop                                           ; $5904: $00
    ld h, l                                       ; $5905: $65
    inc hl                                        ; $5906: $23
    jr c, jr_0ae_58bc                             ; $5907: $38 $b3

    cp c                                          ; $5909: $b9
    nop                                           ; $590a: $00
    ld bc, $0005                                  ; $590b: $01 $05 $00
    ld b, $00                                     ; $590e: $06 $00
    db $10                                        ; $5910: $10
    dec c                                         ; $5911: $0d
    inc h                                         ; $5912: $24
    ld h, b                                       ; $5913: $60
    ld b, $61                                     ; $5914: $06 $61
    nop                                           ; $5916: $00
    rlca                                          ; $5917: $07
    ld b, e                                       ; $5918: $43
    ld [hl], b                                    ; $5919: $70
    inc bc                                        ; $591a: $03
    ld d, c                                       ; $591b: $51
    cp a                                          ; $591c: $bf
    ccf                                           ; $591d: $3f
    nop                                           ; $591e: $00
    ld b, b                                       ; $591f: $40

jr_0ae_5920:
    ld a, a                                       ; $5920: $7f
    or d                                          ; $5921: $b2
    nop                                           ; $5922: $00
    add b                                         ; $5923: $80
    cp a                                          ; $5924: $bf
    add b                                         ; $5925: $80
    rra                                           ; $5926: $1f
    add b                                         ; $5927: $80
    ret nz                                        ; $5928: $c0

    nop                                           ; $5929: $00
    ld e, a                                       ; $592a: $5f
    ldh [$ef], a                                  ; $592b: $e0 $ef
    ld a, [c]                                     ; $592d: $f2
    ld b, $ea                                     ; $592e: $06 $ea
    ld b, $e2                                     ; $5930: $06 $e2
    nop                                           ; $5932: $00
    ld c, $e0                                     ; $5933: $0e $e0
    inc c                                         ; $5935: $0c
    inc e                                         ; $5936: $1c
    ret nc                                        ; $5937: $d0

    inc e                                         ; $5938: $1c
    ret nc                                        ; $5939: $d0

    jr jr_0ae_58bc                                ; $593a: $18 $80

    ld [bc], a                                    ; $593c: $02
    nop                                           ; $593d: $00
    db $fc                                        ; $593e: $fc
    pop hl                                        ; $593f: $e1
    inc e                                         ; $5940: $1c
    dec b                                         ; $5941: $05
    inc c                                         ; $5942: $0c
    dec b                                         ; $5943: $05
    db $fc                                        ; $5944: $fc
    ld b, b                                       ; $5945: $40
    ld a, [c]                                     ; $5946: $f2
    ld [bc], a                                    ; $5947: $02
    nop                                           ; $5948: $00
    ld a, [$fbfc]                                 ; $5949: $fa $fc $fb
    ld b, $03                                     ; $594c: $06 $03
    rst $38                                       ; $594e: $ff
    nop                                           ; $594f: $00
    jr nc, jr_0ae_5920                            ; $5950: $30 $ce

    db $f4                                        ; $5952: $f4
    call nz, Call_000_37b0                        ; $5953: $c4 $b0 $37
    rst $00                                       ; $5956: $c7
    ld d, $00                                     ; $5957: $16 $00
    add $1c                                       ; $5959: $c6 $1c
    db $e4                                        ; $595b: $e4
    rrca                                          ; $595c: $0f

jr_0ae_595d:
    ld h, e                                       ; $595d: $63
    ld h, a                                       ; $595e: $67
    ld [hl], b                                    ; $595f: $70
    ldh a, [rP1]                                  ; $5960: $f0 $00
    add h                                         ; $5962: $84
    inc c                                         ; $5963: $0c
    ld hl, sp+$25                                 ; $5964: $f8 $25
    pop af                                        ; $5966: $f1
    inc c                                         ; $5967: $0c
    dec b                                         ; $5968: $05
    inc c                                         ; $5969: $0c
    nop                                           ; $596a: $00
    inc c                                         ; $596b: $0c
    jr @+$1e                                      ; $596c: $18 $1c

    ld bc, $e178                                  ; $596e: $01 $78 $e1
    ld de, $0093                                  ; $5971: $11 $93 $00
    adc b                                         ; $5974: $88
    inc de                                        ; $5975: $13
    jr @+$05                                      ; $5976: $18 $03

    adc b                                         ; $5978: $88
    ret nz                                        ; $5979: $c0

    ldh [$f0], a                                  ; $597a: $e0 $f0
    nop                                           ; $597c: $00
    ld a, a                                       ; $597d: $7f
    rra                                           ; $597e: $1f
    ccf                                           ; $597f: $3f
    add b                                         ; $5980: $80
    adc a                                         ; $5981: $8f
    db $fc                                        ; $5982: $fc
    rra                                           ; $5983: $1f
    halt                                          ; $5984: $76
    nop                                           ; $5985: $00
    ld [hl], c                                    ; $5986: $71
    ld c, a                                       ; $5987: $4f
    ld c, c                                       ; $5988: $49
    jr jr_0ae_59a1                                ; $5989: $18 $16

    inc a                                         ; $598b: $3c
    ld h, $f0                                     ; $598c: $26 $f0
    nop                                           ; $598e: $00
    inc bc                                        ; $598f: $03
    add sp, $29                                   ; $5990: $e8 $29
    db $10                                        ; $5992: $10
    sub d                                         ; $5993: $92
    ld e, $f2                                     ; $5994: $1e $f2
    ldh [rP1], a                                  ; $5996: $e0 $00
    rst $20                                       ; $5998: $e7
    and b                                         ; $5999: $a0
    inc bc                                        ; $599a: $03
    jr nz, jr_0ae_59a0                            ; $599b: $20 $03

    inc c                                         ; $599d: $0c
    dec e                                         ; $599e: $1d
    db $e4                                        ; $599f: $e4

jr_0ae_59a0:
    nop                                           ; $59a0: $00

jr_0ae_59a1:
    ld hl, sp+$0e                                 ; $59a1: $f8 $0e
    cp b                                          ; $59a3: $b8
    add sp, -$1a                                  ; $59a4: $e8 $e6
    ld a, [bc]                                    ; $59a6: $0a
    inc b                                         ; $59a7: $04
    jr c, jr_0ae_59aa                             ; $59a8: $38 $00

jr_0ae_59aa:
    or b                                          ; $59aa: $b0
    jr c, jr_0ae_595d                             ; $59ab: $38 $b0

    ccf                                           ; $59ad: $3f
    rrca                                          ; $59ae: $0f
    ccf                                           ; $59af: $3f
    ld c, a                                       ; $59b0: $4f
    ccf                                           ; $59b1: $3f
    nop                                           ; $59b2: $00
    ld c, a                                       ; $59b3: $4f
    ld a, a                                       ; $59b4: $7f
    rra                                           ; $59b5: $1f
    ld h, b                                       ; $59b6: $60
    ret nz                                        ; $59b7: $c0

    ld h, b                                       ; $59b8: $60
    ldh [rSC], a                                  ; $59b9: $e0 $02
    ld [$0001], sp                                ; $59bb: $08 $01 $00
    inc bc                                        ; $59be: $03
    ld bc, $0005                                  ; $59bf: $01 $05 $00
    nop                                           ; $59c2: $00
    ld bc, $8001                                  ; $59c3: $01 $01 $80
    ret nz                                        ; $59c6: $c0

    add hl, bc                                    ; $59c7: $09
    nop                                           ; $59c8: $00
    ld b, b                                       ; $59c9: $40
    ld [hl], b                                    ; $59ca: $70
    cp d                                          ; $59cb: $ba
    ld a, [hl-]                                   ; $59cc: $3a
    cp b                                          ; $59cd: $b8
    dec sp                                        ; $59ce: $3b
    add b                                         ; $59cf: $80
    ld [bc], a                                    ; $59d0: $02
    ld [$c083], sp                                ; $59d1: $08 $83 $c0
    jp $83c0                                      ; $59d4: $c3 $c0 $83


    ret nz                                        ; $59d7: $c0

    nop                                           ; $59d8: $00
    nop                                           ; $59d9: $00
    call z, $021b                                 ; $59da: $cc $1b $02
    call nc, $940d                                ; $59dd: $d4 $0d $94
    inc c                                         ; $59e0: $0c
    sub h                                         ; $59e1: $94
    nop                                           ; $59e2: $00
    sbc b                                         ; $59e3: $98
    inc c                                         ; $59e4: $0c
    ld h, h                                       ; $59e5: $64
    inc l                                         ; $59e6: $2c
    ld d, h                                       ; $59e7: $54
    ld e, d                                       ; $59e8: $5a
    ld h, [hl]                                    ; $59e9: $66
    ld h, c                                       ; $59ea: $61
    nop                                           ; $59eb: $00
    ld e, [hl]                                    ; $59ec: $5e
    nop                                           ; $59ed: $00
    nop                                           ; $59ee: $00
    pop af                                        ; $59ef: $f1
    ld sp, $bfc0                                  ; $59f0: $31 $c0 $bf
    ld hl, $3f00                                  ; $59f3: $21 $00 $3f
    add b                                         ; $59f6: $80
    nop                                           ; $59f7: $00
    cp $3e                                        ; $59f8: $fe $3e
    ldh a, [rNR34]                                ; $59fa: $f0 $1e
    inc e                                         ; $59fc: $1c
    nop                                           ; $59fd: $00
    ld hl, sp+$18                                 ; $59fe: $f8 $18
    inc a                                         ; $5a00: $3c
    sub d                                         ; $5a01: $92
    ld h, d                                       ; $5a02: $62
    and $26                                       ; $5a03: $e6 $26
    stop                                          ; $5a05: $10 $00
    ld c, $c0                                     ; $5a07: $0e $c0
    cp [hl]                                       ; $5a09: $be
    cp $d0                                        ; $5a0a: $fe $d0
    inc b                                         ; $5a0c: $04
    db $fc                                        ; $5a0d: $fc
    ld h, b                                       ; $5a0e: $60
    nop                                           ; $5a0f: $00
    db $f4                                        ; $5a10: $f4
    ld b, c                                       ; $5a11: $41
    ldh [$e0], a                                  ; $5a12: $e0 $e0
    and c                                         ; $5a14: $a1
    ldh [$a1], a                                  ; $5a15: $e0 $a1
    add sp, $00                                   ; $5a17: $e8 $00
    adc c                                         ; $5a19: $89
    add sp, -$75                                  ; $5a1a: $e8 $8b
    add sp, -$75                                  ; $5a1c: $e8 $8b
    ldh a, [$93]                                  ; $5a1e: $f0 $93
    ld b, b                                       ; $5a20: $40
    dec bc                                        ; $5a21: $0b
    ret nz                                        ; $5a22: $c0

    ld b, b                                       ; $5a23: $40
    add b                                         ; $5a24: $80
    nop                                           ; $5a25: $00
    ld l, b                                       ; $5a26: $68
    ld bc, $be80                                  ; $5a27: $01 $80 $be
    ld bc, $0004                                  ; $5a2a: $01 $04 $00
    add b                                         ; $5a2d: $80
    sbc a                                         ; $5a2e: $9f
    ld [hl], d                                    ; $5a2f: $72
    jp Jump_000_07e0                              ; $5a30: $c3 $e0 $07


    push hl                                       ; $5a33: $e5
    rlca                                          ; $5a34: $07
    ld h, l                                       ; $5a35: $65
    ld h, l                                       ; $5a36: $65
    nop                                           ; $5a37: $00
    rla                                           ; $5a38: $17
    ld [hl], b                                    ; $5a39: $70
    nop                                           ; $5a3a: $00
    jr c, jr_0ae_5a44                             ; $5a3b: $38 $07

    ld a, $21                                     ; $5a3d: $3e $21
    add hl, sp                                    ; $5a3f: $39
    nop                                           ; $5a40: $00
    rlca                                          ; $5a41: $07
    ld e, d                                       ; $5a42: $5a
    ld h, [hl]                                    ; $5a43: $66

jr_0ae_5a44:
    ld h, $7c                                     ; $5a44: $26 $7c
    ld h, $76                                     ; $5a46: $26 $76
    ld h, $40                                     ; $5a48: $26 $40
    ld [hl], e                                    ; $5a4a: $73
    db $ed                                        ; $5a4b: $ed
    ld bc, $f070                                  ; $5a4c: $01 $70 $f0
    rst $28                                       ; $5a4f: $ef
    rra                                           ; $5a50: $1f
    ld hl, sp+$0e                                 ; $5a51: $f8 $0e
    nop                                           ; $5a53: $00
    or $0e                                        ; $5a54: $f6 $0e
    ld [hl], a                                    ; $5a56: $77
    ld b, $7b                                     ; $5a57: $06 $7b
    dec b                                         ; $5a59: $05
    ld a, e                                       ; $5a5a: $7b
    nop                                           ; $5a5b: $00
    nop                                           ; $5a5c: $00
    nop                                           ; $5a5d: $00
    db $dd                                        ; $5a5e: $dd
    ld a, $63                                     ; $5a5f: $3e $63
    and d                                         ; $5a61: $a2
    ld h, e                                       ; $5a62: $63
    and d                                         ; $5a63: $a2
    inc e                                         ; $5a64: $1c
    nop                                           ; $5a65: $00
    ldh [$bc], a                                  ; $5a66: $e0 $bc
    ret nz                                        ; $5a68: $c0

    ld c, l                                       ; $5a69: $4d
    ld sp, $6119                                  ; $5a6a: $31 $19 $61
    nop                                           ; $5a6d: $00
    nop                                           ; $5a6e: $00
    nop                                           ; $5a6f: $00
    ld sp, hl                                     ; $5a70: $f9
    rlca                                          ; $5a71: $07
    inc a                                         ; $5a72: $3c
    dec sp                                        ; $5a73: $3b
    inc a                                         ; $5a74: $3c
    dec sp                                        ; $5a75: $3b
    and [hl]                                      ; $5a76: $a6
    nop                                           ; $5a77: $00
    pop hl                                        ; $5a78: $e1
    and l                                         ; $5a79: $a5
    ld [c], a                                     ; $5a7a: $e2
    ld b, [hl]                                    ; $5a7b: $46
    and [hl]                                      ; $5a7c: $a6
    ld c, [hl]                                    ; $5a7d: $4e
    xor h                                         ; $5a7e: $ac
    ld b, $01                                     ; $5a7f: $06 $01
    ld c, $1c                                     ; $5a81: $0e $1c
    ldh a, [$3c]                                  ; $5a83: $f0 $3c
    call nz, $cc3c                                ; $5a85: $c4 $3c $cc
    nop                                           ; $5a88: $00
    ld l, e                                       ; $5a89: $6b
    db $10                                        ; $5a8a: $10
    inc bc                                        ; $5a8b: $03
    sbc l                                         ; $5a8c: $9d
    ld [bc], a                                    ; $5a8d: $02
    ld b, b                                       ; $5a8e: $40
    nop                                           ; $5a8f: $00
    ld bc, $0190                                  ; $5a90: $01 $90 $01
    db $fd                                        ; $5a93: $fd
    inc bc                                        ; $5a94: $03
    ld hl, sp+$07                                 ; $5a95: $f8 $07
    rlca                                          ; $5a97: $07
    ld [$060d], sp                                ; $5a98: $08 $0d $06
    rrca                                          ; $5a9b: $0f
    ldh [rNR41], a                                ; $5a9c: $e0 $20
    jr jr_0ae_5aa3                                ; $5a9e: $18 $03

    nop                                           ; $5aa0: $00
    ret nz                                        ; $5aa1: $c0

    nop                                           ; $5aa2: $00

jr_0ae_5aa3:
    add a                                         ; $5aa3: $87
    cpl                                           ; $5aa4: $2f
    rst $08                                       ; $5aa5: $cf
    ld c, b                                       ; $5aa6: $48
    adc [hl]                                      ; $5aa7: $8e
    dec c                                         ; $5aa8: $0d
    adc h                                         ; $5aa9: $8c
    inc a                                         ; $5aaa: $3c
    nop                                           ; $5aab: $00
    inc a                                         ; $5aac: $3c
    ld h, d                                       ; $5aad: $62
    ld a, h                                       ; $5aae: $7c
    ld bc, $e7fe                                  ; $5aaf: $01 $fe $e7
    pop bc                                        ; $5ab2: $c1
    ld e, e                                       ; $5ab3: $5b
    ld bc, $3cc3                                  ; $5ab4: $01 $c3 $3c
    nop                                           ; $5ab7: $00
    rst $38                                       ; $5ab8: $ff
    rst $38                                       ; $5ab9: $ff
    ld hl, sp+$04                                 ; $5aba: $f8 $04
    ld b, b                                       ; $5abc: $40
    jr jr_0ae_5abf                                ; $5abd: $18 $00

jr_0ae_5abf:
    ld b, b                                       ; $5abf: $40
    add b                                         ; $5ac0: $80
    ret nz                                        ; $5ac1: $c0

    jr nz, jr_0ae_5af4                            ; $5ac2: $20 $30

    ret nc                                        ; $5ac4: $d0

    ld h, b                                       ; $5ac5: $60
    nop                                           ; $5ac6: $00
    jr nc, @-$7e                                  ; $5ac7: $30 $80

    adc [hl]                                      ; $5ac9: $8e
    ld d, b                                       ; $5aca: $50
    sbc b                                         ; $5acb: $98
    ld h, [hl]                                    ; $5acc: $66
    adc b                                         ; $5acd: $88
    cp $fc                                        ; $5ace: $fe $fc
    ldh a, [$f1]                                  ; $5ad0: $f0 $f1
    nop                                           ; $5ad2: $00
    db $e4                                        ; $5ad3: $e4
    db $e3                                        ; $5ad4: $e3
    rlca                                          ; $5ad5: $07
    rst $20                                       ; $5ad6: $e7
    ldh [rP1], a                                  ; $5ad7: $e0 $00
    ldh a, [rP1]                                  ; $5ad9: $f0 $00
    nop                                           ; $5adb: $00
    ld hl, sp-$20                                 ; $5adc: $f8 $e0
    ld hl, sp-$3a                                 ; $5ade: $f8 $c6
    ld bc, $c718                                  ; $5ae0: $01 $18 $c7
    ret nz                                        ; $5ae3: $c0

    nop                                           ; $5ae4: $00
    ldh a, [$03]                                  ; $5ae5: $f0 $03
    inc bc                                        ; $5ae7: $03
    nop                                           ; $5ae8: $00
    ld bc, $1c0f                                  ; $5ae9: $01 $0f $1c
    ld [bc], a                                    ; $5aec: $02
    nop                                           ; $5aed: $00
    inc a                                         ; $5aee: $3c
    ld bc, $01fd                                  ; $5aef: $01 $fd $01
    cp $fe                                        ; $5af2: $fe $fe

jr_0ae_5af4:
    cp [hl]                                       ; $5af4: $be
    ld e, d                                       ; $5af5: $5a
    nop                                           ; $5af6: $00
    rst $38                                       ; $5af7: $ff
    nop                                           ; $5af8: $00
    add c                                         ; $5af9: $81
    inc bc                                        ; $5afa: $03
    add b                                         ; $5afb: $80
    dec sp                                        ; $5afc: $3b
    rrca                                          ; $5afd: $0f
    ld a, $00                                     ; $5afe: $3e $00
    rst $10                                       ; $5b00: $d7
    xor $27                                       ; $5b01: $ee $27
    sub $6e                                       ; $5b03: $d6 $6e
    ld h, h                                       ; $5b05: $64
    ret nz                                        ; $5b06: $c0

    ld [$1000], a                                 ; $5b07: $ea $00 $10
    nop                                           ; $5b0a: $00
    ld c, $1f                                     ; $5b0b: $0e $1f
    adc h                                         ; $5b0d: $8c
    rlca                                          ; $5b0e: $07
    db $f4                                        ; $5b0f: $f4
    inc bc                                        ; $5b10: $03
    nop                                           ; $5b11: $00
    or b                                          ; $5b12: $b0
    and e                                         ; $5b13: $a3
    db $fc                                        ; $5b14: $fc
    dec e                                         ; $5b15: $1d
    db $fc                                        ; $5b16: $fc
    add hl, bc                                    ; $5b17: $09
    add l                                         ; $5b18: $85
    ld a, c                                       ; $5b19: $79
    nop                                           ; $5b1a: $00
    dec b                                         ; $5b1b: $05
    add hl, de                                    ; $5b1c: $19

jr_0ae_5b1d:
    add b                                         ; $5b1d: $80
    nop                                           ; $5b1e: $00
    add b                                         ; $5b1f: $80
    nop                                           ; $5b20: $00
    ret nz                                        ; $5b21: $c0

    ld h, b                                       ; $5b22: $60
    nop                                           ; $5b23: $00
    ret nc                                        ; $5b24: $d0

    ld l, b                                       ; $5b25: $68
    cp h                                          ; $5b26: $bc
    inc [hl]                                      ; $5b27: $34
    ld e, $9a                                     ; $5b28: $1e $9a
    inc hl                                        ; $5b2a: $23
    inc l                                         ; $5b2b: $2c
    jr nz, jr_0ae_5b5f                            ; $5b2c: $20 $31

    ld [hl], $d0                                  ; $5b2e: $36 $d0
    ld d, b                                       ; $5b30: $50
    add b                                         ; $5b31: $80
    ret nz                                        ; $5b32: $c0

    ld b, b                                       ; $5b33: $40
    ret nc                                        ; $5b34: $d0

    rst $08                                       ; $5b35: $cf
    nop                                           ; $5b36: $00
    rra                                           ; $5b37: $1f
    jr nz, jr_0ae_5b79                            ; $5b38: $20 $3f

    jr nz, jr_0ae_5b5b                            ; $5b3a: $20 $1f

    jr nc, jr_0ae_5b5d                            ; $5b3c: $30 $1f

    ld a, b                                       ; $5b3e: $78
    nop                                           ; $5b3f: $00
    ld [hl], a                                    ; $5b40: $77
    rrca                                          ; $5b41: $0f
    ld [hl], a                                    ; $5b42: $77

jr_0ae_5b43:
    ld a, b                                       ; $5b43: $78
    ld [hl], a                                    ; $5b44: $77
    jr c, jr_0ae_5b43                             ; $5b45: $38 $fc

    dec c                                         ; $5b47: $0d
    nop                                           ; $5b48: $00
    ld a, [$fcfc]                                 ; $5b49: $fa $fc $fc
    cp $02                                        ; $5b4c: $fe $02
    nop                                           ; $5b4e: $00
    inc bc                                        ; $5b4f: $03
    dec b                                         ; $5b50: $05
    nop                                           ; $5b51: $00
    ldh a, [rNR24]                                ; $5b52: $f0 $19
    pop hl                                        ; $5b54: $e1
    jr nc, jr_0ae_5b1d                            ; $5b55: $30 $c6

    dec h                                         ; $5b57: $25
    add b                                         ; $5b58: $80
    nop                                           ; $5b59: $00
    nop                                           ; $5b5a: $00

jr_0ae_5b5b:
    cp $08                                        ; $5b5b: $fe $08

jr_0ae_5b5d:
    or $1c                                        ; $5b5d: $f6 $1c

jr_0ae_5b5f:
    ld [hl], a                                    ; $5b5f: $77
    inc e                                         ; $5b60: $1c
    halt                                          ; $5b61: $76
    inc e                                         ; $5b62: $1c
    nop                                           ; $5b63: $00
    ld b, [hl]                                    ; $5b64: $46
    db $10                                        ; $5b65: $10
    ld b, l                                       ; $5b66: $45
    ld de, $1342                                  ; $5b67: $11 $42 $13
    ld [$0000], sp                                ; $5b6a: $08 $00 $00
    sub $1b                                       ; $5b6d: $d6 $1b
    xor l                                         ; $5b6f: $ad
    ldh [$34], a                                  ; $5b70: $e0 $34
    ld l, e                                       ; $5b72: $6b
    ld e, a                                       ; $5b73: $5f
    rra                                           ; $5b74: $1f
    nop                                           ; $5b75: $00
    ld d, e                                       ; $5b76: $53
    sbc a                                         ; $5b77: $9f
    rrca                                          ; $5b78: $0f

jr_0ae_5b79:
    ld c, $80                                     ; $5b79: $0e $80
    ld h, b                                       ; $5b7b: $60
    ld c, l                                       ; $5b7c: $4d
    adc c                                         ; $5b7d: $89

jr_0ae_5b7e:
    nop                                           ; $5b7e: $00
    and [hl]                                      ; $5b7f: $a6
    or $76                                        ; $5b80: $f6 $76
    ldh a, [$c0]                                  ; $5b82: $f0 $c0

jr_0ae_5b84:
    call z, $d881                                 ; $5b84: $cc $81 $d8
    nop                                           ; $5b87: $00
    inc e                                         ; $5b88: $1c
    and c                                         ; $5b89: $a1
    ld a, c                                       ; $5b8a: $79
    ld h, d                                       ; $5b8b: $62
    ld [hl], e                                    ; $5b8c: $73
    ld b, c                                       ; $5b8d: $41
    cp b                                          ; $5b8e: $b8
    add c                                         ; $5b8f: $81
    inc b                                         ; $5b90: $04
    cp [hl]                                       ; $5b91: $be
    add b                                         ; $5b92: $80
    ccf                                           ; $5b93: $3f
    cp a                                          ; $5b94: $bf
    ccf                                           ; $5b95: $3f
    inc b                                         ; $5b96: $04
    nop                                           ; $5b97: $00
    rrca                                          ; $5b98: $0f
    nop                                           ; $5b99: $00
    nop                                           ; $5b9a: $00
    inc de                                        ; $5b9b: $13
    db $10                                        ; $5b9c: $10
    ld sp, $40ec                                  ; $5b9d: $31 $ec $40
    and b                                         ; $5ba0: $a0
    jr c, @-$36                                   ; $5ba1: $38 $c8

    nop                                           ; $5ba3: $00
    inc [hl]                                      ; $5ba4: $34
    ld c, b                                       ; $5ba5: $48
    sbc b                                         ; $5ba6: $98
    add [hl]                                      ; $5ba7: $86
    pop hl                                        ; $5ba8: $e1

jr_0ae_5ba9:
    rlca                                          ; $5ba9: $07
    push af                                       ; $5baa: $f5
    inc bc                                        ; $5bab: $03
    nop                                           ; $5bac: $00
    di                                            ; $5bad: $f3
    rlca                                          ; $5bae: $07
    di                                            ; $5baf: $f3
    inc bc                                        ; $5bb0: $03
    ld [hl], a                                    ; $5bb1: $77
    jr c, jr_0ae_5bec                             ; $5bb2: $38 $38

    rrca                                          ; $5bb4: $0f
    nop                                           ; $5bb5: $00
    jr c, jr_0ae_5bc3                             ; $5bb6: $38 $0b

    ret c                                         ; $5bb8: $d8

    rst $00                                       ; $5bb9: $c7
    ret nz                                        ; $5bba: $c0

    rst $08                                       ; $5bbb: $cf
    jr nz, jr_0ae_5b7e                            ; $5bbc: $20 $c0

    nop                                           ; $5bbe: $00
    jr jr_0ae_5ba9                                ; $5bbf: $18 $e8

    inc de                                        ; $5bc1: $13
    dec bc                                        ; $5bc2: $0b

jr_0ae_5bc3:
    and [hl]                                      ; $5bc3: $a6
    ld h, l                                       ; $5bc4: $65
    cp h                                          ; $5bc5: $bc
    ld a, d                                       ; $5bc6: $7a
    nop                                           ; $5bc7: $00
    db $fc                                        ; $5bc8: $fc
    cp d                                          ; $5bc9: $ba
    ld bc, $43dc                                  ; $5bca: $01 $dc $43
    ldh a, [$a7]                                  ; $5bcd: $f0 $a7
    ldh [rP1], a                                  ; $5bcf: $e0 $00
    rra                                           ; $5bd1: $1f
    ld bc, $00fe                                  ; $5bd2: $01 $fe $00
    inc c                                         ; $5bd5: $0c
    jr nz, jr_0ae_5b84                            ; $5bd6: $20 $ac

    jr nz, jr_0ae_5bda                            ; $5bd8: $20 $00

jr_0ae_5bda:
    adc [hl]                                      ; $5bda: $8e
    jr nz, jr_0ae_5c0c                            ; $5bdb: $20 $2f

    ld h, b                                       ; $5bdd: $60
    rra                                           ; $5bde: $1f
    ld b, b                                       ; $5bdf: $40
    ld e, a                                       ; $5be0: $5f
    ld b, b                                       ; $5be1: $40
    nop                                           ; $5be2: $00
    ld e, $80                                     ; $5be3: $1e $80
    cp [hl]                                       ; $5be5: $be
    add b                                         ; $5be6: $80
    call z, $881c                                 ; $5be7: $cc $1c $88
    inc hl                                        ; $5bea: $23
    nop                                           ; $5beb: $00

jr_0ae_5bec:
    dec [hl]                                      ; $5bec: $35
    inc sp                                        ; $5bed: $33
    sub b                                         ; $5bee: $90
    ld b, $11                                     ; $5bef: $06 $11
    ld de, $6007                                  ; $5bf1: $11 $07 $60
    nop                                           ; $5bf4: $00
    and b                                         ; $5bf5: $a0
    ld c, a                                       ; $5bf6: $4f
    xor b                                         ; $5bf7: $a8
    rst $00                                       ; $5bf8: $c7

jr_0ae_5bf9:
    ld bc, $2536                                  ; $5bf9: $01 $36 $25
    ld h, $00                                     ; $5bfc: $26 $00

jr_0ae_5bfe:
    add b                                         ; $5bfe: $80
    call nz, Call_000_0001                        ; $5bff: $c4 $01 $00
    inc e                                         ; $5c02: $1c
    ld hl, sp+$3c                                 ; $5c03: $f8 $3c
    adc $00                                       ; $5c05: $ce $00
    ld [hl+], a                                   ; $5c07: $22
    sbc [hl]                                      ; $5c08: $9e
    ld d, $8a                                     ; $5c09: $16 $8a
    sbc [hl]                                      ; $5c0b: $9e

jr_0ae_5c0c:
    ld [c], a                                     ; $5c0c: $e2
    add b                                         ; $5c0d: $80
    ret nz                                        ; $5c0e: $c0

    nop                                           ; $5c0f: $00
    dec b                                         ; $5c10: $05
    inc d                                         ; $5c11: $14
    ld b, e                                       ; $5c12: $43
    ret nz                                        ; $5c13: $c0

    rra                                           ; $5c14: $1f
    nop                                           ; $5c15: $00
    rst $38                                       ; $5c16: $ff
    nop                                           ; $5c17: $00
    nop                                           ; $5c18: $00
    ld [hl], a                                    ; $5c19: $77
    adc b                                         ; $5c1a: $88
    nop                                           ; $5c1b: $00
    nop                                           ; $5c1c: $00
    db $f4                                        ; $5c1d: $f4
    ld b, $e4                                     ; $5c1e: $06 $e4
    ld c, $00                                     ; $5c20: $0e $00
    ld c, $e2                                     ; $5c22: $0e $e2
    inc c                                         ; $5c24: $0c
    ldh [$d4], a                                  ; $5c25: $e0 $d4
    jr jr_0ae_5bf9                                ; $5c27: $18 $d0

    inc e                                         ; $5c29: $1c
    nop                                           ; $5c2a: $00
    ret nc                                        ; $5c2b: $d0

    jr jr_0ae_5bfe                                ; $5c2c: $18 $d0

    jr jr_0ae_5c41                                ; $5c2e: $18 $11

    dec c                                         ; $5c30: $0d
    dec b                                         ; $5c31: $05
    inc e                                         ; $5c32: $1c
    nop                                           ; $5c33: $00
    dec b                                         ; $5c34: $05
    inc c                                         ; $5c35: $0c
    inc c                                         ; $5c36: $0c
    ld b, $0c                                     ; $5c37: $06 $0c
    ld b, $04                                     ; $5c39: $06 $04
    ld [bc], a                                    ; $5c3b: $02

jr_0ae_5c3c:
    ld bc, $0305                                  ; $5c3c: $01 $05 $03
    ld b, $03                                     ; $5c3f: $06 $03

jr_0ae_5c41:
    cp $00                                        ; $5c41: $fe $00
    db $fc                                        ; $5c43: $fc
    inc a                                         ; $5c44: $3c
    ld bc, $0300                                  ; $5c45: $01 $00 $03
    ld a, [$f903]                                 ; $5c48: $fa $03 $f9
    ld hl, sp+$02                                 ; $5c4b: $f8 $02
    ld [hl], h                                    ; $5c4d: $74
    inc b                                         ; $5c4e: $04
    nop                                           ; $5c4f: $00
    inc b                                         ; $5c50: $04
    ld h, h                                       ; $5c51: $64
    ld a, $80                                     ; $5c52: $3e $80
    cp h                                          ; $5c54: $bc
    add b                                         ; $5c55: $80
    ld a, b                                       ; $5c56: $78
    ld bc, $7800                                  ; $5c57: $01 $00 $78
    ld [bc], a                                    ; $5c5a: $02
    ld a, c                                       ; $5c5b: $79
    ld bc, $181b                                  ; $5c5c: $01 $1b $18
    add e                                         ; $5c5f: $83
    ld b, b                                       ; $5c60: $40
    nop                                           ; $5c61: $00
    adc $24                                       ; $5c62: $ce $24
    ld h, a                                       ; $5c64: $67
    dec bc                                        ; $5c65: $0b
    nop                                           ; $5c66: $00
    db $10                                        ; $5c67: $10
    jr jr_0ae_5ca7                                ; $5c68: $18 $3d

    nop                                           ; $5c6a: $00
    cp a                                          ; $5c6b: $bf
    and b                                         ; $5c6c: $a0
    rra                                           ; $5c6d: $1f
    sub d                                         ; $5c6e: $92
    inc bc                                        ; $5c6f: $03
    sbc a                                         ; $5c70: $9f
    dec bc                                        ; $5c71: $0b
    inc bc                                        ; $5c72: $03
    nop                                           ; $5c73: $00
    add hl, bc                                    ; $5c74: $09
    ld h, c                                       ; $5c75: $61
    inc c                                         ; $5c76: $0c
    jp nc, Jump_0ae_606c                          ; $5c77: $d2 $6c $60

    jp hl                                         ; $5c7a: $e9


    dec hl                                        ; $5c7b: $2b
    nop                                           ; $5c7c: $00
    ld hl, sp+$3a                                 ; $5c7d: $f8 $3a
    ldh [rNR43], a                                ; $5c7f: $e0 $22
    db $e4                                        ; $5c81: $e4
    ld bc, $64e2                                  ; $5c82: $01 $e2 $64
    nop                                           ; $5c85: $00
    jp Jump_000_0064                              ; $5c86: $c3 $64 $00


    rst $38                                       ; $5c89: $ff
    ld a, a                                       ; $5c8a: $7f
    nop                                           ; $5c8b: $00
    ccf                                           ; $5c8c: $3f
    ccf                                           ; $5c8d: $3f
    nop                                           ; $5c8e: $00
    ccf                                           ; $5c8f: $3f
    add b                                         ; $5c90: $80
    add b                                         ; $5c91: $80
    ccf                                           ; $5c92: $3f
    add b                                         ; $5c93: $80
    cp a                                          ; $5c94: $bf
    ld a, [hl]                                    ; $5c95: $7e
    ld a, [hl]                                    ; $5c96: $7e
    nop                                           ; $5c97: $00
    ld a, [hl]                                    ; $5c98: $7e
    add b                                         ; $5c99: $80
    jr c, jr_0ae_5c3c                             ; $5c9a: $38 $a0

    jr c, @-$5e                                   ; $5c9c: $38 $a0

    jr nc, @-$5e                                  ; $5c9e: $30 $a0

    nop                                           ; $5ca0: $00
    ld [hl], b                                    ; $5ca1: $70
    ld h, b                                       ; $5ca2: $60
    ld h, b                                       ; $5ca3: $60
    ld e, a                                       ; $5ca4: $5f
    ld h, b                                       ; $5ca5: $60
    ld e, a                                       ; $5ca6: $5f

jr_0ae_5ca7:
    jr nz, @-$3e                                  ; $5ca7: $20 $c0

    nop                                           ; $5ca9: $00
    ld h, b                                       ; $5caa: $60
    ret nz                                        ; $5cab: $c0

    ld [bc], a                                    ; $5cac: $02
    ld bc, $0102                                  ; $5cad: $01 $02 $01
    inc bc                                        ; $5cb0: $03
    ld bc, $0020                                  ; $5cb1: $01 $20 $00
    ld bc, $0003                                  ; $5cb4: $01 $03 $00
    cp $01                                        ; $5cb7: $fe $01
    db $fc                                        ; $5cb9: $fc
    nop                                           ; $5cba: $00
    db $fc                                        ; $5cbb: $fc
    nop                                           ; $5cbc: $00
    add hl, bc                                    ; $5cbd: $09
    ld b, b                                       ; $5cbe: $40
    add e                                         ; $5cbf: $83
    sub b                                         ; $5cc0: $90
    add c                                         ; $5cc1: $81
    sub c                                         ; $5cc2: $91
    add b                                         ; $5cc3: $80
    add c                                         ; $5cc4: $81
    nop                                           ; $5cc5: $00
    dec bc                                        ; $5cc6: $0b
    adc b                                         ; $5cc7: $88
    add hl, de                                    ; $5cc8: $19
    ld bc, $5b03                                  ; $5cc9: $01 $03 $5b
    ld d, c                                       ; $5ccc: $51
    sub b                                         ; $5ccd: $90
    nop                                           ; $5cce: $00
    ld e, $9c                                     ; $5ccf: $1e $9c
    adc [hl]                                      ; $5cd1: $8e
    ld [hl-], a                                   ; $5cd2: $32
    inc e                                         ; $5cd3: $1c
    jr nz, @+$07                                  ; $5cd4: $20 $05

    add hl, sp                                    ; $5cd6: $39
    nop                                           ; $5cd7: $00
    adc c                                         ; $5cd8: $89
    ld sp, $81b9                                  ; $5cd9: $31 $b9 $81
    dec sp                                        ; $5cdc: $3b
    add e                                         ; $5cdd: $83
    jr nc, jr_0ae_5ce3                            ; $5cde: $30 $03

    nop                                           ; $5ce0: $00
    dec c                                         ; $5ce1: $0d
    ld h, l                                       ; $5ce2: $65

jr_0ae_5ce3:
    rrca                                          ; $5ce3: $0f
    db $e4                                        ; $5ce4: $e4
    call z, $820c                                 ; $5ce5: $cc $0c $82
    jr nz, jr_0ae_5cea                            ; $5ce8: $20 $00

jr_0ae_5cea:
    inc e                                         ; $5cea: $1c
    dec bc                                        ; $5ceb: $0b
    scf                                           ; $5cec: $37
    add hl, de                                    ; $5ced: $19
    ccf                                           ; $5cee: $3f
    dec e                                         ; $5cef: $1d
    inc hl                                        ; $5cf0: $23
    dec d                                         ; $5cf1: $15
    nop                                           ; $5cf2: $00
    add e                                         ; $5cf3: $83
    ld h, l                                       ; $5cf4: $65
    add e                                         ; $5cf5: $83
    ld b, c                                       ; $5cf6: $41
    inc de                                        ; $5cf7: $13
    ld de, $2093                                  ; $5cf8: $11 $93 $20
    nop                                           ; $5cfb: $00
    sub b                                         ; $5cfc: $90
    or [hl]                                       ; $5cfd: $b6
    add b                                         ; $5cfe: $80
    dec [hl]                                      ; $5cff: $35
    ld [hl-], a                                   ; $5d00: $32
    or b                                          ; $5d01: $b0
    add e                                         ; $5d02: $83
    add b                                         ; $5d03: $80
    nop                                           ; $5d04: $00
    add b                                         ; $5d05: $80
    ld a, $c1                                     ; $5d06: $3e $c1
    ld b, b                                       ; $5d08: $40
    add [hl]                                      ; $5d09: $86
    adc [hl]                                      ; $5d0a: $8e
    inc sp                                        ; $5d0b: $33
    rla                                           ; $5d0c: $17
    nop                                           ; $5d0d: $00
    ld d, c                                       ; $5d0e: $51
    or d                                          ; $5d0f: $b2
    add b                                         ; $5d10: $80
    ld h, c                                       ; $5d11: $61
    add c                                         ; $5d12: $81
    ld b, c                                       ; $5d13: $41
    nop                                           ; $5d14: $00
    ld bc, $c020                                  ; $5d15: $01 $20 $c0
    add b                                         ; $5d18: $80
    ld c, h                                       ; $5d19: $4c
    ld [bc], a                                    ; $5d1a: $02
    cp a                                          ; $5d1b: $bf
    nop                                           ; $5d1c: $00
    ld a, a                                       ; $5d1d: $7f
    ld a, a                                       ; $5d1e: $7f
    nop                                           ; $5d1f: $00
    jr nz, jr_0ae_5da1                            ; $5d20: $20 $7f

    nop                                           ; $5d22: $00
    add h                                         ; $5d23: $84
    ld [$fc01], sp                                ; $5d24: $08 $01 $fc
    db $fc                                        ; $5d27: $fc
    nop                                           ; $5d28: $00
    cp $50                                        ; $5d29: $fe $50
    nop                                           ; $5d2b: $00
    ld l, d                                       ; $5d2c: $6a
    nop                                           ; $5d2d: $00
    cp $aa                                        ; $5d2e: $fe $aa
    ld a, [de]                                    ; $5d30: $1a
    ld hl, $58c8                                  ; $5d31: $21 $c8 $58
    db $ec                                        ; $5d34: $ec
    nop                                           ; $5d35: $00
    sbc b                                         ; $5d36: $98
    ld hl, sp+$39                                 ; $5d37: $f8 $39
    add l                                         ; $5d39: $85
    ld d, b                                       ; $5d3a: $50
    inc b                                         ; $5d3b: $04
    inc b                                         ; $5d3c: $04
    inc bc                                        ; $5d3d: $03
    nop                                           ; $5d3e: $00
    jr nz, jr_0ae_5d80                            ; $5d3f: $20 $3f

    rrca                                          ; $5d41: $0f

jr_0ae_5d42:
    inc sp                                        ; $5d42: $33
    add b                                         ; $5d43: $80
    add a                                         ; $5d44: $87
    ldh [$87], a                                  ; $5d45: $e0 $87
    db $10                                        ; $5d47: $10
    ld b, b                                       ; $5d48: $40
    rrca                                          ; $5d49: $0f
    rra                                           ; $5d4a: $1f
    rst $00                                       ; $5d4b: $c7
    ld [bc], a                                    ; $5d4c: $02
    db $e3                                        ; $5d4d: $e3
    inc hl                                        ; $5d4e: $23
    ld sp, $00c1                                  ; $5d4f: $31 $c1 $00
    rrca                                          ; $5d52: $0f
    pop af                                        ; $5d53: $f1
    ld a, [bc]                                    ; $5d54: $0a
    ld [hl+], a                                   ; $5d55: $22
    ld [$0902], sp                                ; $5d56: $08 $02 $09
    pop bc                                        ; $5d59: $c1
    nop                                           ; $5d5a: $00
    rrca                                          ; $5d5b: $0f
    db $e3                                        ; $5d5c: $e3
    nop                                           ; $5d5d: $00
    nop                                           ; $5d5e: $00
    pop hl                                        ; $5d5f: $e1
    ld a, a                                       ; $5d60: $7f
    ldh a, [$cf]                                  ; $5d61: $f0 $cf
    nop                                           ; $5d63: $00
    inc e                                         ; $5d64: $1c
    inc de                                        ; $5d65: $13
    ld bc, $0437                                  ; $5d66: $01 $37 $04
    ld [$61ec], a                                 ; $5d69: $ea $ec $61
    nop                                           ; $5d6c: $00
    ret nz                                        ; $5d6d: $c0

    ld c, e                                       ; $5d6e: $4b
    nop                                           ; $5d6f: $00
    nop                                           ; $5d70: $00
    ld a, [hl]                                    ; $5d71: $7e
    db $d3                                        ; $5d72: $d3
    add e                                         ; $5d73: $83
    ld b, h                                       ; $5d74: $44
    nop                                           ; $5d75: $00
    rst $00                                       ; $5d76: $c7
    jp hl                                         ; $5d77: $e9


    ld b, e                                       ; $5d78: $43
    nop                                           ; $5d79: $00
    add d                                         ; $5d7a: $82
    ld h, d                                       ; $5d7b: $62
    jr nz, jr_0ae_5d42                            ; $5d7c: $20 $c4

    nop                                           ; $5d7e: $00
    ld h, d                                       ; $5d7f: $62

jr_0ae_5d80:
    add d                                         ; $5d80: $82
    inc bc                                        ; $5d81: $03
    dec c                                         ; $5d82: $0d
    rst $20                                       ; $5d83: $e7
    dec de                                        ; $5d84: $1b
    inc c                                         ; $5d85: $0c
    ldh a, [rNR23]                                ; $5d86: $f0 $18
    inc e                                         ; $5d88: $1c
    db $e4                                        ; $5d89: $e4
    ld a, a                                       ; $5d8a: $7f
    ld e, b                                       ; $5d8b: $58

jr_0ae_5d8c:
    ld bc, $4b04                                  ; $5d8c: $01 $04 $4b
    db $10                                        ; $5d8f: $10
    inc bc                                        ; $5d90: $03
    sub e                                         ; $5d91: $93
    ld [bc], a                                    ; $5d92: $02
    ld b, b                                       ; $5d93: $40
    nop                                           ; $5d94: $00
    ld bc, $0360                                  ; $5d95: $01 $60 $03
    dec b                                         ; $5d98: $05
    ld [c], a                                     ; $5d99: $e2
    pop hl                                        ; $5d9a: $e1
    pop af                                        ; $5d9b: $f1
    ld a, [c]                                     ; $5d9c: $f2
    nop                                           ; $5d9d: $00
    dec b                                         ; $5d9e: $05
    inc b                                         ; $5d9f: $04
    ld [bc], a                                    ; $5da0: $02

jr_0ae_5da1:
    ld b, $f2                                     ; $5da1: $06 $f2
    pop af                                        ; $5da3: $f1
    di                                            ; $5da4: $f3
    or $00                                        ; $5da5: $f6 $00
    inc bc                                        ; $5da7: $03
    ld sp, hl                                     ; $5da8: $f9
    add b                                         ; $5da9: $80
    ld b, b                                       ; $5daa: $40
    ld b, b                                       ; $5dab: $40
    ldh [$a0], a                                  ; $5dac: $e0 $a0
    ld d, b                                       ; $5dae: $50
    nop                                           ; $5daf: $00
    add b                                         ; $5db0: $80
    ld d, b                                       ; $5db1: $50
    pop hl                                        ; $5db2: $e1
    and b                                         ; $5db3: $a0
    jr nc, jr_0ae_5e16                            ; $5db4: $30 $60

    sbc b                                         ; $5db6: $98
    db $e4                                        ; $5db7: $e4
    nop                                           ; $5db8: $00
    ldh [rVBK], a                                 ; $5db9: $e0 $4f
    nop                                           ; $5dbb: $00
    rst $20                                       ; $5dbc: $e7
    dec de                                        ; $5dbd: $1b
    jp Jump_000_3300                              ; $5dbe: $c3 $00 $33


    nop                                           ; $5dc1: $00
    ld b, $03                                     ; $5dc2: $06 $03
    inc [hl]                                      ; $5dc4: $34
    jr c, jr_0ae_5e44                             ; $5dc5: $38 $7d

    ld d, c                                       ; $5dc7: $51
    add hl, bc                                    ; $5dc8: $09
    ld d, d                                       ; $5dc9: $52
    nop                                           ; $5dca: $00
    jr jr_0ae_5de8                                ; $5dcb: $18 $1b

    reti                                          ; $5dcd: $d9


    call nc, Call_000_0411                        ; $5dce: $d4 $11 $04
    ld a, [de]                                    ; $5dd1: $1a
    ld [$0000], sp                                ; $5dd2: $08 $00 $00
    ret nz                                        ; $5dd5: $c0

    cp b                                          ; $5dd6: $b8
    add h                                         ; $5dd7: $84
    inc l                                         ; $5dd8: $2c
    ccf                                           ; $5dd9: $3f
    pop hl                                        ; $5dda: $e1
    ld b, l                                       ; $5ddb: $45
    ld [$8653], sp                                ; $5ddc: $08 $53 $86
    ld a, a                                       ; $5ddf: $7f
    nop                                           ; $5de0: $00
    ld [bc], a                                    ; $5de1: $02
    db $10                                        ; $5de2: $10
    add b                                         ; $5de3: $80
    nop                                           ; $5de4: $00
    cp $03                                        ; $5de5: $fe $03
    ld [hl], b                                    ; $5de7: $70

jr_0ae_5de8:
    call z, $8adc                                 ; $5de8: $cc $dc $8a
    and b                                         ; $5deb: $a0
    jr jr_0ae_5e4e                                ; $5dec: $18 $60

    ld l, b                                       ; $5dee: $68
    ld [hl], b                                    ; $5def: $70
    ld h, b                                       ; $5df0: $60
    nop                                           ; $5df1: $00
    cp $01                                        ; $5df2: $fe $01
    db $fc                                        ; $5df4: $fc
    ld bc, $01f9                                  ; $5df5: $01 $f9 $01
    db $fc                                        ; $5df8: $fc
    nop                                           ; $5df9: $00
    nop                                           ; $5dfa: $00
    ldh a, [$0e]                                  ; $5dfb: $f0 $0e
    ldh [$d8], a                                  ; $5dfd: $e0 $d8
    pop bc                                        ; $5dff: $c1
    jr nc, @+$09                                  ; $5e00: $30 $07

    ldh [rP1], a                                  ; $5e02: $e0 $00
    db $ec                                        ; $5e04: $ec
    jr c, @-$7e                                   ; $5e05: $38 $80

    ret nz                                        ; $5e07: $c0

    adc $70                                       ; $5e08: $ce $70
    jr nz, jr_0ae_5d8c                            ; $5e0a: $20 $80

    nop                                           ; $5e0c: $00
    sbc [hl]                                      ; $5e0d: $9e
    ld h, b                                       ; $5e0e: $60
    nop                                           ; $5e0f: $00
    dec e                                         ; $5e10: $1d
    inc b                                         ; $5e11: $04
    ld [bc], a                                    ; $5e12: $02
    ld bc, $00c0                                  ; $5e13: $01 $c0 $00

jr_0ae_5e16:
    ld [bc], a                                    ; $5e16: $02
    ld h, $16                                     ; $5e17: $26 $16
    inc bc                                        ; $5e19: $03
    ld sp, $204c                                  ; $5e1a: $31 $4c $20
    jr nz, jr_0ae_5e1f                            ; $5e1d: $20 $00

jr_0ae_5e1f:
    ld h, e                                       ; $5e1f: $63
    sbc b                                         ; $5e20: $98
    ld c, b                                       ; $5e21: $48
    sub c                                         ; $5e22: $91
    sub [hl]                                      ; $5e23: $96
    ld [hl], b                                    ; $5e24: $70
    ld h, b                                       ; $5e25: $60
    ret                                           ; $5e26: $c9


    nop                                           ; $5e27: $00
    add [hl]                                      ; $5e28: $86
    push de                                       ; $5e29: $d5
    dec b                                         ; $5e2a: $05
    ld b, b                                       ; $5e2b: $40
    inc de                                        ; $5e2c: $13
    ld [hl], d                                    ; $5e2d: $72
    ld h, b                                       ; $5e2e: $60
    rla                                           ; $5e2f: $17
    nop                                           ; $5e30: $00
    sub $53                                       ; $5e31: $d6 $53
    or b                                          ; $5e33: $b0
    ld a, [$610b]                                 ; $5e34: $fa $0b $61
    ld bc, $00f2                                  ; $5e37: $01 $f2 $00
    xor d                                         ; $5e3a: $aa
    ld h, h                                       ; $5e3b: $64
    ld d, d                                       ; $5e3c: $52
    db $ec                                        ; $5e3d: $ec
    ld b, $8c                                     ; $5e3e: $06 $8c
    inc [hl]                                      ; $5e40: $34
    inc [hl]                                      ; $5e41: $34
    nop                                           ; $5e42: $00
    ld b, h                                       ; $5e43: $44

jr_0ae_5e44:
    ret c                                         ; $5e44: $d8

    add h                                         ; $5e45: $84
    ld l, b                                       ; $5e46: $68
    and h                                         ; $5e47: $a4
    ld a, b                                       ; $5e48: $78
    db $fc                                        ; $5e49: $fc
    ld a, b                                       ; $5e4a: $78
    ld b, h                                       ; $5e4b: $44
    or h                                          ; $5e4c: $b4
    ret nc                                        ; $5e4d: $d0

jr_0ae_5e4e:
    ld l, b                                       ; $5e4e: $68
    ld bc, $03fc                                  ; $5e4f: $01 $fc $03
    ld e, h                                       ; $5e52: $5c
    nop                                           ; $5e53: $00
    ld bc, $0018                                  ; $5e54: $01 $18 $00
    inc b                                         ; $5e57: $04
    scf                                           ; $5e58: $37
    ld l, h                                       ; $5e59: $6c
    ld h, a                                       ; $5e5a: $67
    ld c, h                                       ; $5e5b: $4c
    ld c, e                                       ; $5e5c: $4b
    adc h                                         ; $5e5d: $8c
    sub e                                         ; $5e5e: $93
    nop                                           ; $5e5f: $00
    add c                                         ; $5e60: $81
    add d                                         ; $5e61: $82
    rra                                           ; $5e62: $1f
    ld b, $7c                                     ; $5e63: $06 $7c
    sbc e                                         ; $5e65: $9b
    ldh a, [$03]                                  ; $5e66: $f0 $03
    nop                                           ; $5e68: $00
    jp Jump_0ae_58a4                              ; $5e69: $c3 $a4 $58


    add h                                         ; $5e6c: $84
    or d                                          ; $5e6d: $b2
    jr z, @+$12                                   ; $5e6e: $28 $10

    ld h, b                                       ; $5e70: $60
    nop                                           ; $5e71: $00
    or $12                                        ; $5e72: $f6 $12
    db $e4                                        ; $5e74: $e4
    inc c                                         ; $5e75: $0c
    ret                                           ; $5e76: $c9


    ld a, [de]                                    ; $5e77: $1a
    ld h, $a5                                     ; $5e78: $26 $a5
    nop                                           ; $5e7a: $00
    ld c, [hl]                                    ; $5e7b: $4e
    add hl, bc                                    ; $5e7c: $09
    adc h                                         ; $5e7d: $8c
    sub e                                         ; $5e7e: $93
    ld de, $e06e                                  ; $5e7f: $11 $6e $e0

jr_0ae_5e82:
    ret nz                                        ; $5e82: $c0

    nop                                           ; $5e83: $00
    sub c                                         ; $5e84: $91
    ld b, c                                       ; $5e85: $41
    cpl                                           ; $5e86: $2f
    ld b, b                                       ; $5e87: $40
    ld h, b                                       ; $5e88: $60
    cpl                                           ; $5e89: $2f
    ld h, b                                       ; $5e8a: $60
    rrca                                          ; $5e8b: $0f
    nop                                           ; $5e8c: $00
    jp nz, $9bed                                  ; $5e8d: $c2 $ed $9b

    cp l                                          ; $5e90: $bd
    ld [hl], $27                                  ; $5e91: $36 $27
    inc de                                        ; $5e93: $13
    rla                                           ; $5e94: $17
    nop                                           ; $5e95: $00
    jp nz, $e262                                  ; $5e96: $c2 $62 $e2

    ld e, d                                       ; $5e99: $5a

jr_0ae_5e9a:
    jp c, $89f8                                   ; $5e9a: $da $f8 $89

    ld a, [$0a00]                                 ; $5e9d: $fa $00 $0a
    di                                            ; $5ea0: $f3
    and $33                                       ; $5ea1: $e6 $33
    dec [hl]                                      ; $5ea3: $35
    or $e5                                        ; $5ea4: $f6 $e5
    db $e4                                        ; $5ea6: $e4
    nop                                           ; $5ea7: $00

jr_0ae_5ea8:
    ld h, d                                       ; $5ea8: $62
    sbc $11                                       ; $5ea9: $de $11
    adc a                                         ; $5eab: $8f
    jr z, @-$57                                   ; $5eac: $28 $a7

    inc d                                         ; $5eae: $14
    ld d, e                                       ; $5eaf: $53
    nop                                           ; $5eb0: $00
    ld b, e                                       ; $5eb1: $43
    ld e, b                                       ; $5eb2: $58

jr_0ae_5eb3:
    ld b, e                                       ; $5eb3: $43
    ld e, b                                       ; $5eb4: $58
    and c                                         ; $5eb5: $a1
    xor h                                         ; $5eb6: $ac
    ret nz                                        ; $5eb7: $c0

    add c                                         ; $5eb8: $81
    nop                                           ; $5eb9: $00
    nop                                           ; $5eba: $00
    nop                                           ; $5ebb: $00
    add b                                         ; $5ebc: $80
    nop                                           ; $5ebd: $00
    ret nz                                        ; $5ebe: $c0

    ld b, b                                       ; $5ebf: $40
    jr nz, jr_0ae_5e82                            ; $5ec0: $20 $c0

    nop                                           ; $5ec2: $00
    db $10                                        ; $5ec3: $10
    ldh a, [$08]                                  ; $5ec4: $f0 $08
    ldh a, [$f8]                                  ; $5ec6: $f0 $f8
    db $fc                                        ; $5ec8: $fc
    db $fc                                        ; $5ec9: $fc
    ld a, [hl]                                    ; $5eca: $7e
    nop                                           ; $5ecb: $00
    sbc b                                         ; $5ecc: $98
    add [hl]                                      ; $5ecd: $86
    ld [de], a                                    ; $5ece: $12
    ld l, $71                                     ; $5ecf: $2e $71
    inc c                                         ; $5ed1: $0c
    ld [hl], h                                    ; $5ed2: $74
    dec c                                         ; $5ed3: $0d
    nop                                           ; $5ed4: $00
    ld a, [$8a83]                                 ; $5ed5: $fa $83 $8a
    pop af                                        ; $5ed8: $f1
    adc d                                         ; $5ed9: $8a
    ld a, c                                       ; $5eda: $79
    add d                                         ; $5edb: $82
    ld [hl], c                                    ; $5edc: $71
    nop                                           ; $5edd: $00
    and e                                         ; $5ede: $a3
    ld b, c                                       ; $5edf: $41
    ld b, d                                       ; $5ee0: $42
    call z, Call_0ae_50e8                         ; $5ee1: $cc $e8 $50
    db $e3                                        ; $5ee4: $e3
    inc de                                        ; $5ee5: $13
    nop                                           ; $5ee6: $00
    rst $00                                       ; $5ee7: $c7
    daa                                           ; $5ee8: $27
    ld b, e                                       ; $5ee9: $43
    ret nz                                        ; $5eea: $c0

    ret                                           ; $5eeb: $c9


    ret nz                                        ; $5eec: $c0

    call c, VBlankInterrupt                       ; $5eed: $dc $40 $00
    nop                                           ; $5ef0: $00
    ld b, $70                                     ; $5ef1: $06 $70
    inc bc                                        ; $5ef3: $03
    inc e                                         ; $5ef4: $1c
    add hl, bc                                    ; $5ef5: $09
    inc c                                         ; $5ef6: $0c
    or $00                                        ; $5ef7: $f6 $00
    cp $13                                        ; $5ef9: $fe $13
    jp Jump_000_2a5c                              ; $5efb: $c3 $5c $2a


    call z, Call_0ae_798b                         ; $5efe: $cc $8b $79
    nop                                           ; $5f01: $00
    jp z, Jump_000_2319                           ; $5f02: $ca $19 $23

    ld c, e                                       ; $5f05: $4b
    xor b                                         ; $5f06: $a8
    jr z, jr_0ae_5e9a                             ; $5f07: $28 $91

    inc de                                        ; $5f09: $13
    nop                                           ; $5f0a: $00
    ld a, [de]                                    ; $5f0b: $1a
    ld d, e                                       ; $5f0c: $53
    add l                                         ; $5f0d: $85
    and b                                         ; $5f0e: $a0
    db $10                                        ; $5f0f: $10
    add b                                         ; $5f10: $80
    ld c, $4c                                     ; $5f11: $0e $4c
    nop                                           ; $5f13: $00
    call nz, $04c0                                ; $5f14: $c4 $c0 $04
    sub c                                         ; $5f17: $91
    inc c                                         ; $5f18: $0c
    add hl, de                                    ; $5f19: $19
    and d                                         ; $5f1a: $a2
    adc e                                         ; $5f1b: $8b
    nop                                           ; $5f1c: $00
    jr nz, jr_0ae_5ea8                            ; $5f1d: $20 $89

    or b                                          ; $5f1f: $b0
    add l                                         ; $5f20: $85
    add [hl]                                      ; $5f21: $86
    or b                                          ; $5f22: $b0
    inc de                                        ; $5f23: $13
    jr nc, jr_0ae_5f26                            ; $5f24: $30 $00

jr_0ae_5f26:
    add b                                         ; $5f26: $80
    ld c, [hl]                                    ; $5f27: $4e
    ccf                                           ; $5f28: $3f
    rra                                           ; $5f29: $1f
    ld a, [hl]                                    ; $5f2a: $7e
    ld h, c                                       ; $5f2b: $61
    nop                                           ; $5f2c: $00

jr_0ae_5f2d:
    cp b                                          ; $5f2d: $b8
    nop                                           ; $5f2e: $00
    add b                                         ; $5f2f: $80
    add b                                         ; $5f30: $80
    jr nz, jr_0ae_5eb3                            ; $5f31: $20 $80

    sbc a                                         ; $5f33: $9f
    sub b                                         ; $5f34: $90
    add b                                         ; $5f35: $80
    sbc a                                         ; $5f36: $9f
    nop                                           ; $5f37: $00
    jp nz, $61bc                                  ; $5f38: $c2 $bc $61

    ld e, a                                       ; $5f3b: $5f
    ld e, $a1                                     ; $5f3c: $1e $a1
    ld c, $51                                     ; $5f3e: $0e $51
    nop                                           ; $5f40: $00
    ld c, $c7                                     ; $5f41: $0e $c7
    inc l                                         ; $5f43: $2c
    ld b, $8e                                     ; $5f44: $06 $8e
    add h                                         ; $5f46: $84
    inc c                                         ; $5f47: $0c
    ret nz                                        ; $5f48: $c0

    nop                                           ; $5f49: $00
    ld b, [hl]                                    ; $5f4a: $46
    or l                                          ; $5f4b: $b5
    dec h                                         ; $5f4c: $25
    di                                            ; $5f4d: $f3
    and l                                         ; $5f4e: $a5
    ld [hl], e                                    ; $5f4f: $73
    add l                                         ; $5f50: $85
    or $00                                        ; $5f51: $f6 $00
    ld c, $7c                                     ; $5f53: $0e $7c
    ld [hl], b                                    ; $5f55: $70
    jr nc, jr_0ae_5f7c                            ; $5f56: $30 $24

    inc hl                                        ; $5f58: $23
    rrca                                          ; $5f59: $0f
    jr nz, jr_0ae_5f5c                            ; $5f5a: $20 $00

jr_0ae_5f5c:
    add d                                         ; $5f5c: $82

jr_0ae_5f5d:
    ld a, $06                                     ; $5f5d: $3e $06
    ld a, d                                       ; $5f5f: $7a
    halt                                          ; $5f60: $76
    ld a, [bc]                                    ; $5f61: $0a
    nop                                           ; $5f62: $00
    ld a, b                                       ; $5f63: $78
    nop                                           ; $5f64: $00
    ld h, l                                       ; $5f65: $65
    ld h, c                                       ; $5f66: $61
    add hl, bc                                    ; $5f67: $09
    nop                                           ; $5f68: $00
    add c                                         ; $5f69: $81
    adc h                                         ; $5f6a: $8c
    dec d                                         ; $5f6b: $15
    pop af                                        ; $5f6c: $f1
    nop                                           ; $5f6d: $00
    dec c                                         ; $5f6e: $0d
    inc b                                         ; $5f6f: $04
    inc [hl]                                      ; $5f70: $34
    jr nz, jr_0ae_5f2d                            ; $5f71: $20 $ba

    ld a, b                                       ; $5f73: $78
    add hl, de                                    ; $5f74: $19
    ld hl, sp+$00                                 ; $5f75: $f8 $00
    adc b                                         ; $5f77: $88
    ld hl, sp-$40                                 ; $5f78: $f8 $c0
    jr c, jr_0ae_5f5d                             ; $5f7a: $38 $e1

jr_0ae_5f7c:
    ld de, $12f3                                  ; $5f7c: $11 $f3 $12
    nop                                           ; $5f7f: $00
    rrca                                          ; $5f80: $0f
    ld l, a                                       ; $5f81: $6f
    rrca                                          ; $5f82: $0f
    and c                                         ; $5f83: $a1
    rrca                                          ; $5f84: $0f
    daa                                           ; $5f85: $27
    rrca                                          ; $5f86: $0f
    add h                                         ; $5f87: $84
    nop                                           ; $5f88: $00
    rrca                                          ; $5f89: $0f
    rst $20                                       ; $5f8a: $e7
    rrca                                          ; $5f8b: $0f
    rlca                                          ; $5f8c: $07
    ret nz                                        ; $5f8d: $c0

    rrca                                          ; $5f8e: $0f
    ret nz                                        ; $5f8f: $c0

    rst $00                                       ; $5f90: $c7
    nop                                           ; $5f91: $00
    sub l                                         ; $5f92: $95
    add hl, bc                                    ; $5f93: $09
    nop                                           ; $5f94: $00
    adc $27                                       ; $5f95: $ce $27
    jp nz, Jump_000_01f6                          ; $5f97: $c2 $f6 $01

    nop                                           ; $5f9a: $00
    rlca                                          ; $5f9b: $07
    ld hl, sp+$27                                 ; $5f9c: $f8 $27
    call nz, $dbe6                                ; $5f9e: $c4 $e6 $db
    nop                                           ; $5fa1: $00
    and $00                                       ; $5fa2: $e6 $00
    nop                                           ; $5fa4: $00
    rra                                           ; $5fa5: $1f
    cpl                                           ; $5fa6: $2f
    jr nz, jr_0ae_6019                            ; $5fa7: $20 $70

    ld d, d                                       ; $5fa9: $52
    ld h, b                                       ; $5faa: $60
    ld a, b                                       ; $5fab: $78
    nop                                           ; $5fac: $00
    inc a                                         ; $5fad: $3c
    inc b                                         ; $5fae: $04
    ld b, c                                       ; $5faf: $41
    ld a, l                                       ; $5fb0: $7d
    ld a, [hl-]                                   ; $5fb1: $3a
    ld b, $1c                                     ; $5fb2: $06 $1c
    inc bc                                        ; $5fb4: $03
    nop                                           ; $5fb5: $00
    ret nz                                        ; $5fb6: $c0

    rst $00                                       ; $5fb7: $c7
    sub b                                         ; $5fb8: $90
    rla                                           ; $5fb9: $17
    scf                                           ; $5fba: $37
    rlca                                          ; $5fbb: $07
    scf                                           ; $5fbc: $37
    add a                                         ; $5fbd: $87
    nop                                           ; $5fbe: $00
    jr nz, jr_0ae_5fe8                            ; $5fbf: $20 $27

    jr nz, jr_0ae_5fca                            ; $5fc1: $20 $07

    rrca                                          ; $5fc3: $0f
    rst $28                                       ; $5fc4: $ef
    ld l, a                                       ; $5fc5: $6f
    rrca                                          ; $5fc6: $0f
    nop                                           ; $5fc7: $00
    daa                                           ; $5fc8: $27
    inc sp                                        ; $5fc9: $33

jr_0ae_5fca:
    ret nc                                        ; $5fca: $d0

    add $e8                                       ; $5fcb: $c6 $e8
    ld [c], a                                     ; $5fcd: $e2
    dec b                                         ; $5fce: $05
    dec bc                                        ; $5fcf: $0b
    inc b                                         ; $5fd0: $04
    nop                                           ; $5fd1: $00
    rlca                                          ; $5fd2: $07
    cp $00                                        ; $5fd3: $fe $00
    rst $38                                       ; $5fd5: $ff
    dec a                                         ; $5fd6: $3d
    ld [bc], a                                    ; $5fd7: $02
    ld a, [bc]                                    ; $5fd8: $0a
    jr jr_0ae_5fdb                                ; $5fd9: $18 $00

jr_0ae_5fdb:
    dec b                                         ; $5fdb: $05
    inc c                                         ; $5fdc: $0c
    ld [de], a                                    ; $5fdd: $12
    ld [hl], $39                                  ; $5fde: $36 $39
    inc bc                                        ; $5fe0: $03
    dec h                                         ; $5fe1: $25
    jr jr_0ae_5fe4                                ; $5fe2: $18 $00

jr_0ae_5fe4:
    ld [hl], $0a                                  ; $5fe4: $36 $0a
    nop                                           ; $5fe6: $00
    ld e, [hl]                                    ; $5fe7: $5e

jr_0ae_5fe8:
    add hl, de                                    ; $5fe8: $19
    ld b, a                                       ; $5fe9: $47
    call nz, Call_000_00c7                        ; $5fea: $c4 $c7 $00
    ld [bc], a                                    ; $5fed: $02
    rlca                                          ; $5fee: $07
    ldh [rTAC], a                                 ; $5fef: $e0 $07
    ld c, [hl]                                    ; $5ff1: $4e
    cpl                                           ; $5ff2: $2f
    nop                                           ; $5ff3: $00
    add h                                         ; $5ff4: $84
    nop                                           ; $5ff5: $00
    nop                                           ; $5ff6: $00
    add b                                         ; $5ff7: $80
    ld e, h                                       ; $5ff8: $5c
    ret nz                                        ; $5ff9: $c0

    ld e, h                                       ; $5ffa: $5c
    ret nz                                        ; $5ffb: $c0

    ret nz                                        ; $5ffc: $c0

    ret nz                                        ; $5ffd: $c0

    nop                                           ; $5ffe: $00
    add b                                         ; $5fff: $80

Jump_0ae_6000:
    ld b, b                                       ; $6000: $40
    rra                                           ; $6001: $1f
    sbc a                                         ; $6002: $9f
    ccf                                           ; $6003: $3f
    nop                                           ; $6004: $00
    ld a, a                                       ; $6005: $7f
    ld a, a                                       ; $6006: $7f
    nop                                           ; $6007: $00
    ld a, h                                       ; $6008: $7c
    and e                                         ; $6009: $a3
    adc a                                         ; $600a: $8f
    db $fc                                        ; $600b: $fc
    ld e, $72                                     ; $600c: $1e $72
    add l                                         ; $600e: $85
    push bc                                       ; $600f: $c5
    nop                                           ; $6010: $00
    ld bc, $0b00                                  ; $6011: $01 $00 $0b
    inc sp                                        ; $6014: $33
    dec de                                        ; $6015: $1b
    db $e3                                        ; $6016: $e3
    db $fc                                        ; $6017: $fc
    ld sp, hl                                     ; $6018: $f9

jr_0ae_6019:
    nop                                           ; $6019: $00
    ld b, $18                                     ; $601a: $06 $18
    ld sp, hl                                     ; $601c: $f9
    ld [bc], a                                    ; $601d: $02
    add b                                         ; $601e: $80

Call_0ae_601f:
    add b                                         ; $601f: $80
    ld [bc], a                                    ; $6020: $02
    rrca                                          ; $6021: $0f
    nop                                           ; $6022: $00
    ldh [rP1], a                                  ; $6023: $e0 $00
    or $06                                        ; $6025: $f6 $06
    ldh a, [rSB]                                  ; $6027: $f0 $01
    ldh a, [$71]                                  ; $6029: $f0 $71
    nop                                           ; $602b: $00
    ld hl, sp+$38                                 ; $602c: $f8 $38
    ld a, [de]                                    ; $602e: $1a
    ld a, b                                       ; $602f: $78
    ld a, [hl-]                                   ; $6030: $3a
    ld hl, sp+$60                                 ; $6031: $f8 $60
    cpl                                           ; $6033: $2f
    sbc [hl]                                      ; $6034: $9e
    sub [hl]                                      ; $6035: $96
    nop                                           ; $6036: $00
    sbc a                                         ; $6037: $9f
    add b                                         ; $6038: $80
    ld [hl-], a                                   ; $6039: $32
    ld [$024a], sp                                ; $603a: $08 $4a $02
    ld h, d                                       ; $603d: $62
    ld [$5aa2], sp                                ; $603e: $08 $a2 $5a
    ld [$6700], sp                                ; $6041: $08 $00 $67
    add b                                         ; $6044: $80
    xor a                                         ; $6045: $af
    add d                                         ; $6046: $82
    xor l                                         ; $6047: $ad
    add l                                         ; $6048: $85
    or d                                          ; $6049: $b2
    ret nz                                        ; $604a: $c0

    nop                                           ; $604b: $00
    ret nc                                        ; $604c: $d0

    rra                                           ; $604d: $1f
    ret nz                                        ; $604e: $c0

    nop                                           ; $604f: $00

Jump_0ae_6050:
    ret nz                                        ; $6050: $c0

    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    ld e, h                                       ; $6053: $5c
    nop                                           ; $6054: $00
    ret nz                                        ; $6055: $c0

    inc e                                         ; $6056: $1c
    call c, $bc3d                                 ; $6057: $dc $3d $bc
    ld e, $7c                                     ; $605a: $1e $7c
    nop                                           ; $605c: $00
    add b                                         ; $605d: $80
    inc l                                         ; $605e: $2c
    jr nz, jr_0ae_60d1                            ; $605f: $20 $70

    inc hl                                        ; $6061: $23
    ret nz                                        ; $6062: $c0

    ld c, $1c                                     ; $6063: $0e $1c
    ld l, $7c                                     ; $6065: $2e $7c
    ld b, b                                       ; $6067: $40
    sbc [hl]                                      ; $6068: $9e
    db $10                                        ; $6069: $10
    jr @+$01                                      ; $606a: $18 $ff

Jump_0ae_606c:
    nop                                           ; $606c: $00
    inc bc                                        ; $606d: $03
    add b                                         ; $606e: $80
    sbc a                                         ; $606f: $9f
    add b                                         ; $6070: $80
    ld [$bf80], sp                                ; $6071: $08 $80 $bf
    add b                                         ; $6074: $80
    ccf                                           ; $6075: $3f
    db $10                                        ; $6076: $10
    jr z, jr_0ae_607f                             ; $6077: $28 $06

    ldh a, [rTIMA]                                ; $6079: $f0 $05
    nop                                           ; $607b: $00
    pop af                                        ; $607c: $f1
    dec b                                         ; $607d: $05
    pop af                                        ; $607e: $f1

jr_0ae_607f:
    dec c                                         ; $607f: $0d
    pop hl                                        ; $6080: $e1
    ld [$f803], sp                                ; $6081: $08 $03 $f8
    jr nz, jr_0ae_6089                            ; $6084: $20 $03

    inc bc                                        ; $6086: $03
    ld h, b                                       ; $6087: $60
    add b                                         ; $6088: $80

jr_0ae_6089:
    db $10                                        ; $6089: $10
    inc bc                                        ; $608a: $03
    jp z, $0102                                   ; $608b: $ca $02 $01

    ld bc, $0102                                  ; $608e: $01 $02 $01
    ld [bc], a                                    ; $6091: $02
    inc bc                                        ; $6092: $03
    dec b                                         ; $6093: $05
    ld b, $02                                     ; $6094: $06 $02
    nop                                           ; $6096: $00
    ld b, b                                       ; $6097: $40
    inc bc                                        ; $6098: $03
    ld [bc], a                                    ; $6099: $02
    db $10                                        ; $609a: $10
    jp $db7e                                      ; $609b: $c3 $7e $db


    inc a                                         ; $609e: $3c
    add d                                         ; $609f: $82
    ld b, e                                       ; $60a0: $43
    nop                                           ; $60a1: $00
    sbc h                                         ; $60a2: $9c
    ld b, b                                       ; $60a3: $40
    sbc a                                         ; $60a4: $9f
    ld b, h                                       ; $60a5: $44
    adc [hl]                                      ; $60a6: $8e
    ld h, h                                       ; $60a7: $64
    add a                                         ; $60a8: $87
    ld h, a                                       ; $60a9: $67
    nop                                           ; $60aa: $00

jr_0ae_60ab:
    ld [hl], b                                    ; $60ab: $70
    or a                                          ; $60ac: $b7
    ret nz                                        ; $60ad: $c0

    or b                                          ; $60ae: $b0
    ldh [rNR41], a                                ; $60af: $e0 $20
    ld a, b                                       ; $60b1: $78
    sbc b                                         ; $60b2: $98
    nop                                           ; $60b3: $00
    rst $38                                       ; $60b4: $ff
    ld a, h                                       ; $60b5: $7c
    rra                                           ; $60b6: $1f
    ld l, a                                       ; $60b7: $6f
    adc a                                         ; $60b8: $8f
    sbc c                                         ; $60b9: $99
    ld h, d                                       ; $60ba: $62
    ld l, $00                                     ; $60bb: $2e $00
    db $d3                                        ; $60bd: $d3
    sub l                                         ; $60be: $95
    inc a                                         ; $60bf: $3c

jr_0ae_60c0:
    inc a                                         ; $60c0: $3c
    ld h, d                                       ; $60c1: $62
    ld a, h                                       ; $60c2: $7c
    ld bc, $00fe                                  ; $60c3: $01 $fe $00
    rst $20                                       ; $60c6: $e7
    ret nz                                        ; $60c7: $c0

    db $db                                        ; $60c8: $db
    jr jr_0ae_60cb                                ; $60c9: $18 $00

jr_0ae_60cb:
    inc a                                         ; $60cb: $3c
    nop                                           ; $60cc: $00
    ld a, a                                       ; $60cd: $7f
    db $10                                        ; $60ce: $10
    ld a, a                                       ; $60cf: $7f
    sbc a                                         ; $60d0: $9f

jr_0ae_60d1:
    nop                                           ; $60d1: $00
    ld bc, $4010                                  ; $60d2: $01 $10 $40
    add b                                         ; $60d5: $80
    ret nz                                        ; $60d6: $c0

    ld h, b                                       ; $60d7: $60
    inc bc                                        ; $60d8: $03
    jr nz, jr_0ae_60ab                            ; $60d9: $20 $d0

    dec de                                        ; $60db: $1b
    ld h, a                                       ; $60dc: $67
    add l                                         ; $60dd: $85
    dec sp                                        ; $60de: $3b
    db $10                                        ; $60df: $10
    jr jr_0ae_60f6                                ; $60e0: $18 $14

    jr jr_0ae_60f3                                ; $60e2: $18 $0f

    ldh a, [$30]                                  ; $60e4: $f0 $30
    jr c, jr_0ae_60c0                             ; $60e6: $38 $d8

jr_0ae_60e8:
    db $10                                        ; $60e8: $10
    jr c, jr_0ae_6115                             ; $60e9: $38 $2a

    jr jr_0ae_6153                                ; $60eb: $18 $66

    nop                                           ; $60ed: $00
    ld [hl], c                                    ; $60ee: $71

jr_0ae_60ef:
    nop                                           ; $60ef: $00
    nop                                           ; $60f0: $00
    ld b, $05                                     ; $60f1: $06 $05

jr_0ae_60f3:
    inc c                                         ; $60f3: $0c
    dec bc                                        ; $60f4: $0b
    inc bc                                        ; $60f5: $03

jr_0ae_60f6:
    dec c                                         ; $60f6: $0d
    rlca                                          ; $60f7: $07
    dec de                                        ; $60f8: $1b
    nop                                           ; $60f9: $00
    ld c, $f0                                     ; $60fa: $0e $f0
    jr nc, jr_0ae_60d1                            ; $60fc: $30 $d3

    jr jr_0ae_60e8                                ; $60fe: $18 $e8

    inc e                                         ; $6100: $1c
    db $ec                                        ; $6101: $ec
    nop                                           ; $6102: $00
    ldh a, [$cc]                                  ; $6103: $f0 $cc
    ldh a, [$0e]                                  ; $6105: $f0 $0e
    add e                                         ; $6107: $83
    add b                                         ; $6108: $80
    ld b, h                                       ; $6109: $44
    add hl, sp                                    ; $610a: $39
    nop                                           ; $610b: $00
    add $80                                       ; $610c: $c6 $80
    ld [$7469], a                                 ; $610e: $ea $69 $74
    cp h                                          ; $6111: $bc
    dec e                                         ; $6112: $1d
    ld l, e                                       ; $6113: $6b
    nop                                           ; $6114: $00

jr_0ae_6115:
    add hl, sp                                    ; $6115: $39
    ld [hl], $0f                                  ; $6116: $36 $0f
    dec c                                         ; $6118: $0d
    add h                                         ; $6119: $84
    add l                                         ; $611a: $85
    ld b, c                                       ; $611b: $41
    ret nz                                        ; $611c: $c0

    nop                                           ; $611d: $00
    add c                                         ; $611e: $81
    add d                                         ; $611f: $82
    rst $38                                       ; $6120: $ff
    cp [hl]                                       ; $6121: $be
    add d                                         ; $6122: $82
    ld b, e                                       ; $6123: $43
    jr @+$0a                                      ; $6124: $18 $08

    nop                                           ; $6126: $00
    or b                                          ; $6127: $b0
    inc e                                         ; $6128: $1c
    ld b, b                                       ; $6129: $40
    jr jr_0ae_60ef                                ; $612a: $18 $c3

    ret nz                                        ; $612c: $c0

    ldh [rTAC], a                                 ; $612d: $e0 $07
    nop                                           ; $612f: $00

jr_0ae_6130:
    ld [hl], b                                    ; $6130: $70
    ld h, e                                       ; $6131: $63
    rst $00                                       ; $6132: $c7
    ld [$fe09], sp                                ; $6133: $08 $09 $fe
    inc b                                         ; $6136: $04
    inc bc                                        ; $6137: $03
    nop                                           ; $6138: $00
    dec bc                                        ; $6139: $0b
    jr jr_0ae_6130                                ; $613a: $18 $f4

    db $fd                                        ; $613c: $fd
    halt                                          ; $613d: $76
    nop                                           ; $613e: $00
    and e                                         ; $613f: $a3
    sub b                                         ; $6140: $90
    nop                                           ; $6141: $00
    add a                                         ; $6142: $87
    ld d, $20                                     ; $6143: $16 $20
    ldh a, [$f0]                                  ; $6145: $f0 $f0
    jr c, jr_0ae_61a9                             ; $6147: $38 $60

    ldh [rP1], a                                  ; $6149: $e0 $00
    jr c, @-$16                                   ; $614b: $38 $e8

    ld e, a                                       ; $614d: $5f
    inc hl                                        ; $614e: $23
    rrca                                          ; $614f: $0f
    sub c                                         ; $6150: $91
    rla                                           ; $6151: $17
    ld a, b                                       ; $6152: $78

jr_0ae_6153:
    jr nz, jr_0ae_615e                            ; $6153: $20 $09

    ld a, [hl]                                    ; $6155: $7e
    sub b                                         ; $6156: $90
    ld [$8060], sp                                ; $6157: $08 $60 $80
    ldh a, [$78]                                  ; $615a: $f0 $78
    sbc b                                         ; $615c: $98
    nop                                           ; $615d: $00

jr_0ae_615e:
    ld l, b                                       ; $615e: $68
    ld c, h                                       ; $615f: $4c
    or h                                          ; $6160: $b4
    cp b                                          ; $6161: $b8
    scf                                           ; $6162: $37
    jr @+$59                                      ; $6163: $18 $57

    dec c                                         ; $6165: $0d
    nop                                           ; $6166: $00
    pop af                                        ; $6167: $f1
    db $fc                                        ; $6168: $fc
    pop hl                                        ; $6169: $e1
    db $fc                                        ; $616a: $fc

Jump_0ae_616b:
    pop bc                                        ; $616b: $c1
    inc a                                         ; $616c: $3c
    ld b, c                                       ; $616d: $41
    inc e                                         ; $616e: $1c
    nop                                           ; $616f: $00
    jp hl                                         ; $6170: $e9


    pop hl                                        ; $6171: $e1
    set 4, d                                      ; $6172: $cb $e2
    jp z, $0ae2                                   ; $6174: $ca $e2 $0a

    add e                                         ; $6177: $83
    nop                                           ; $6178: $00
    ld a, [de]                                    ; $6179: $1a
    ld bc, $0779                                  ; $617a: $01 $79 $07
    ld b, b                                       ; $617d: $40
    nop                                           ; $617e: $00
    jr c, jr_0ae_61a7                             ; $617f: $38 $26

    nop                                           ; $6181: $00
    ld b, h                                       ; $6182: $44
    ld b, e                                       ; $6183: $43
    ld e, $c3                                     ; $6184: $1e $c3
    ld a, [hl]                                    ; $6186: $7e
    add e                                         ; $6187: $83
    cp h                                          ; $6188: $bc
    ld h, $00                                     ; $6189: $26 $00
    ld b, h                                       ; $618b: $44
    db $10                                        ; $618c: $10
    add c                                         ; $618d: $81
    ld h, b                                       ; $618e: $60
    ld h, [hl]                                    ; $618f: $66
    pop hl                                        ; $6190: $e1
    jr nc, jr_0ae_61e3                            ; $6191: $30 $50

    nop                                           ; $6193: $00
    ld b, [hl]                                    ; $6194: $46
    inc bc                                        ; $6195: $03
    inc de                                        ; $6196: $13
    ld h, e                                       ; $6197: $63
    inc bc                                        ; $6198: $03
    ld [hl], b                                    ; $6199: $70
    ld a, c                                       ; $619a: $79
    ld e, b                                       ; $619b: $58
    nop                                           ; $619c: $00
    adc b                                         ; $619d: $88
    adc h                                         ; $619e: $8c
    inc b                                         ; $619f: $04
    ld [hl], $04                                  ; $61a0: $36 $04
    ld hl, $4098                                  ; $61a2: $21 $98 $40
    nop                                           ; $61a5: $00
    nop                                           ; $61a6: $00

jr_0ae_61a7:
    ld [hl-], a                                   ; $61a7: $32
    add [hl]                                      ; $61a8: $86

jr_0ae_61a9:
    ld c, $68                                     ; $61a9: $0e $68
    inc c                                         ; $61ab: $0c
    ld b, b                                       ; $61ac: $40
    add hl, bc                                    ; $61ad: $09
    nop                                           ; $61ae: $00
    inc de                                        ; $61af: $13
    ld l, h                                       ; $61b0: $6c
    ld h, c                                       ; $61b1: $61
    ld d, h                                       ; $61b2: $54
    jr nc, jr_0ae_61b7                            ; $61b3: $30 $02

    ld [hl], b                                    ; $61b5: $70
    add e                                         ; $61b6: $83

jr_0ae_61b7:
    nop                                           ; $61b7: $00
    ldh a, [$83]                                  ; $61b8: $f0 $83
    and b                                         ; $61ba: $a0
    jp nz, $c189                                  ; $61bb: $c2 $89 $c1

jr_0ae_61be:
    ld e, c                                       ; $61be: $59
    add c                                         ; $61bf: $81
    nop                                           ; $61c0: $00
    add hl, sp                                    ; $61c1: $39
    and b                                         ; $61c2: $a0
    ld a, $c0                                     ; $61c3: $3e $c0
    sbc [hl]                                      ; $61c5: $9e
    ld h, b                                       ; $61c6: $60
    ld l, $2e                                     ; $61c7: $2e $2e
    nop                                           ; $61c9: $00
    inc c                                         ; $61ca: $0c
    inc b                                         ; $61cb: $04
    or [hl]                                       ; $61cc: $b6
    pop de                                        ; $61cd: $d1
    call nc, $c1da                                ; $61ce: $d4 $da $c1
    inc e                                         ; $61d1: $1c
    nop                                           ; $61d2: $00
    ld b, h                                       ; $61d3: $44
    inc e                                         ; $61d4: $1c
    call z, $805c                                 ; $61d5: $cc $5c $80
    ld e, $86                                     ; $61d8: $1e $86

jr_0ae_61da:
    inc l                                         ; $61da: $2c
    nop                                           ; $61db: $00
    adc e                                         ; $61dc: $8b
    inc [hl]                                      ; $61dd: $34
    add e                                         ; $61de: $83
    or a                                          ; $61df: $b7
    and e                                         ; $61e0: $a3
    inc hl                                        ; $61e1: $23
    or a                                          ; $61e2: $b7

jr_0ae_61e3:
    ld h, d                                       ; $61e3: $62
    nop                                           ; $61e4: $00
    ld a, [bc]                                    ; $61e5: $0a
    ld h, d                                       ; $61e6: $62
    ld [de], a                                    ; $61e7: $12
    ld b, d                                       ; $61e8: $42
    ld [hl-], a                                   ; $61e9: $32
    ld [hl-], a                                   ; $61ea: $32
    inc bc                                        ; $61eb: $03
    jr c, jr_0ae_61ee                             ; $61ec: $38 $00

jr_0ae_61ee:
    ld [$0b38], sp                                ; $61ee: $08 $38 $0b
    add hl, de                                    ; $61f1: $19
    ld a, [bc]                                    ; $61f2: $0a
    add hl, bc                                    ; $61f3: $09
    ld [de], a                                    ; $61f4: $12
    add e                                         ; $61f5: $83
    nop                                           ; $61f6: $00
    cp l                                          ; $61f7: $bd
    add a                                         ; $61f8: $87
    cp e                                          ; $61f9: $bb
    adc b                                         ; $61fa: $88
    or b                                          ; $61fb: $b0
    or e                                          ; $61fc: $b3
    sbc c                                         ; $61fd: $99
    ld h, c                                       ; $61fe: $61
    nop                                           ; $61ff: $00
    jr c, jr_0ae_627a                             ; $6200: $38 $78

    cp c                                          ; $6202: $b9
    ldh a, [rSVBK]                                ; $6203: $f0 $70
    pop hl                                        ; $6205: $e1
    ld bc, $0038                                  ; $6206: $01 $38 $00
    ld d, b                                       ; $6209: $50
    inc a                                         ; $620a: $3c
    and d                                         ; $620b: $a2
    rrca                                          ; $620c: $0f
    ld [$0040], sp                                ; $620d: $08 $40 $00
    rlca                                          ; $6210: $07
    nop                                           ; $6211: $00
    sbc a                                         ; $6212: $9f
    rst $00                                       ; $6213: $c7
    call z, Call_0ae_6761                         ; $6214: $cc $61 $67
    jr nc, jr_0ae_622c                            ; $6217: $30 $13

    ld de, $f100                                  ; $6219: $11 $00 $f1
    ld hl, $43dc                                  ; $621c: $21 $dc $43
    ldh [$27], a                                  ; $621f: $e0 $27
    jr nc, jr_0ae_61be                            ; $6221: $30 $9b

    nop                                           ; $6223: $00
    sbc h                                         ; $6224: $9c
    ldh [rSB], a                                  ; $6225: $e0 $01
    ldh [$03], a                                  ; $6227: $e0 $03
    ld [hl], l                                    ; $6229: $75
    sub a                                         ; $622a: $97
    ld a, [de]                                    ; $622b: $1a

jr_0ae_622c:
    nop                                           ; $622c: $00
    ld b, e                                       ; $622d: $43
    ld sp, $6950                                  ; $622e: $31 $50 $69
    dec c                                         ; $6231: $0d
    and c                                         ; $6232: $a1
    add hl, bc                                    ; $6233: $09
    nop                                           ; $6234: $00
    nop                                           ; $6235: $00
    and b                                         ; $6236: $a0
    sub b                                         ; $6237: $90
    jr nc, jr_0ae_61da                            ; $6238: $30 $a0

jr_0ae_623a:
    sub b                                         ; $623a: $90
    nop                                           ; $623b: $00
    ld d, b                                       ; $623c: $50
    ld hl, sp+$00                                 ; $623d: $f8 $00
    set 7, b                                      ; $623f: $cb $f8
    ld l, d                                       ; $6241: $6a
    ld hl, sp-$7e                                 ; $6242: $f8 $82
    ld hl, sp-$72                                 ; $6244: $f8 $8e
    ldh a, [rP1]                                  ; $6246: $f0 $00
    add [hl]                                      ; $6248: $86
    ld a, [c]                                     ; $6249: $f2
    add [hl]                                      ; $624a: $86
    ld [hl], d                                    ; $624b: $72
    ld b, $72                                     ; $624c: $06 $72
    ld b, $22                                     ; $624e: $06 $22
    nop                                           ; $6250: $00
    ld [hl], h                                    ; $6251: $74
    ld l, [hl]                                    ; $6252: $6e

jr_0ae_6253:
    jr nz, jr_0ae_627c                            ; $6253: $20 $27

    ld c, c                                       ; $6255: $49
    daa                                           ; $6256: $27
    ld c, e                                       ; $6257: $4b
    ld e, b                                       ; $6258: $58
    ld [$dc74], sp                                ; $6259: $08 $74 $dc
    ld [hl], b                                    ; $625c: $70
    xor b                                         ; $625d: $a8
    ld [bc], a                                    ; $625e: $02
    nop                                           ; $625f: $00
    dec c                                         ; $6260: $0d
    dec d                                         ; $6261: $15
    ld hl, sp+$00                                 ; $6262: $f8 $00
    push hl                                       ; $6264: $e5
    ld hl, sp-$0c                                 ; $6265: $f8 $f4
    inc c                                         ; $6267: $0c
    ld b, $0c                                     ; $6268: $06 $0c
    ld b, $04                                     ; $626a: $06 $04
    nop                                           ; $626c: $00
    ld [bc], a                                    ; $626d: $02
    dec b                                         ; $626e: $05
    inc bc                                        ; $626f: $03
    ld b, $03                                     ; $6270: $06 $03
    sbc b                                         ; $6272: $98
    ld e, $00                                     ; $6273: $1e $00
    nop                                           ; $6275: $00
    ccf                                           ; $6276: $3f
    sbc a                                         ; $6277: $9f
    ld a, a                                       ; $6278: $7f
    sbc a                                         ; $6279: $9f

jr_0ae_627a:
    ld a, a                                       ; $627a: $7f
    ld h, c                                       ; $627b: $61

jr_0ae_627c:
    pop hl                                        ; $627c: $e1
    jp $ac00                                      ; $627d: $c3 $00 $ac


    nop                                           ; $6280: $00
    ld b, c                                       ; $6281: $41
    jr jr_0ae_62ec                                ; $6282: $18 $68

    jr @+$0b                                      ; $6284: $18 $09

    nop                                           ; $6286: $00
    nop                                           ; $6287: $00
    adc h                                         ; $6288: $8c
    ret nz                                        ; $6289: $c0

    add d                                         ; $628a: $82
    xor c                                         ; $628b: $a9
    ld c, b                                       ; $628c: $48
    call nc, $e034                                ; $628d: $d4 $34 $e0
    nop                                           ; $6290: $00
    db $10                                        ; $6291: $10
    ld [c], a                                     ; $6292: $e2
    sbc d                                         ; $6293: $9a
    ld h, c                                       ; $6294: $61
    ld e, h                                       ; $6295: $5c
    inc [hl]                                      ; $6296: $34
    call nz, Call_000_0014                        ; $6297: $c4 $14 $00
    db $e4                                        ; $629a: $e4
    ld [hl], b                                    ; $629b: $70
    ld h, [hl]                                    ; $629c: $66
    jr nc, @+$28                                  ; $629d: $30 $26

    sub h                                         ; $629f: $94
    ld de, $0044                                  ; $62a0: $11 $44 $00
    ld h, b                                       ; $62a3: $60
    jr nz, jr_0ae_6307                            ; $62a4: $20 $61

    jr nc, jr_0ae_623a                            ; $62a6: $30 $92

    call nc, $12c0                                ; $62a8: $d4 $c0 $12
    nop                                           ; $62ab: $00
    ld b, $10                                     ; $62ac: $06 $10
    ld b, $11                                     ; $62ae: $06 $11
    rlca                                          ; $62b0: $07
    sub b                                         ; $62b1: $90
    add a                                         ; $62b2: $87

jr_0ae_62b3:
    sbc d                                         ; $62b3: $9a
    nop                                           ; $62b4: $00
    dec c                                         ; $62b5: $0d
    ldh a, [rSTAT]                                ; $62b6: $f0 $41
    ldh [rNR52], a                                ; $62b8: $e0 $26
    ld [hl], b                                    ; $62ba: $70
    inc h                                         ; $62bb: $24
    ld h, c                                       ; $62bc: $61
    nop                                           ; $62bd: $00
    dec h                                         ; $62be: $25
    ld h, c                                       ; $62bf: $61
    ld b, h                                       ; $62c0: $44
    ld [hl], c                                    ; $62c1: $71
    ld d, h                                       ; $62c2: $54
    dec b                                         ; $62c3: $05
    jr nc, jr_0ae_6253                            ; $62c4: $30 $8d

    nop                                           ; $62c6: $00
    xor b                                         ; $62c7: $a8
    add e                                         ; $62c8: $83
    add hl, bc                                    ; $62c9: $09
    add e                                         ; $62ca: $83
    adc c                                         ; $62cb: $89
    xor b                                         ; $62cc: $a8
    ret nc                                        ; $62cd: $d0

    xor b                                         ; $62ce: $a8
    nop                                           ; $62cf: $00
    ret nc                                        ; $62d0: $d0

    ld [hl], b                                    ; $62d1: $70
    ret c                                         ; $62d2: $d8

    ldh a, [$58]                                  ; $62d3: $f0 $58
    sbc b                                         ; $62d5: $98
    ld l, b                                       ; $62d6: $68
    ret c                                         ; $62d7: $d8

    inc b                                         ; $62d8: $04
    jr z, jr_0ae_62b3                             ; $62d9: $28 $d8

    or b                                          ; $62db: $b0
    sbc b                                         ; $62dc: $98
    or b                                          ; $62dd: $b0
    cpl                                           ; $62de: $2f
    ld [bc], a                                    ; $62df: $02
    ld bc, $1803                                  ; $62e0: $01 $03 $18
    ld bc, $0100                                  ; $62e3: $01 $00 $01
    inc bc                                        ; $62e6: $03
    nop                                           ; $62e7: $00
    ld [bc], a                                    ; $62e8: $02
    nop                                           ; $62e9: $00
    nop                                           ; $62ea: $00
    nop                                           ; $62eb: $00

jr_0ae_62ec:
    ccf                                           ; $62ec: $3f
    nop                                           ; $62ed: $00
    ld c, a                                       ; $62ee: $4f
    add b                                         ; $62ef: $80
    or b                                          ; $62f0: $b0
    add b                                         ; $62f1: $80
    rlca                                          ; $62f2: $07
    rlca                                          ; $62f3: $07
    add [hl]                                      ; $62f4: $86
    rrca                                          ; $62f5: $0f
    nop                                           ; $62f6: $00
    adc [hl]                                      ; $62f7: $8e
    sbc a                                         ; $62f8: $9f
    ld e, h                                       ; $62f9: $5c
    ld e, a                                       ; $62fa: $5f
    sbc b                                         ; $62fb: $98
    ret nz                                        ; $62fc: $c0

    sbc a                                         ; $62fd: $9f
    ld [hl-], a                                   ; $62fe: $32
    nop                                           ; $62ff: $00
    ld l, $0e                                     ; $6300: $2e $0e
    ld d, $07                                     ; $6302: $16 $07
    ld a, [bc]                                    ; $6304: $0a
    db $e4                                        ; $6305: $e4
    rlca                                          ; $6306: $07

jr_0ae_6307:
    ld a, [c]                                     ; $6307: $f2
    nop                                           ; $6308: $00
    inc sp                                        ; $6309: $33
    jp hl                                         ; $630a: $e9


    add hl, de                                    ; $630b: $19
    call $e63c                                    ; $630c: $cd $3c $e6
    inc e                                         ; $630f: $1c
    add sp, $00                                   ; $6310: $e8 $00
    ld [hl], b                                    ; $6312: $70
    ld [hl], h                                    ; $6313: $74
    inc l                                         ; $6314: $2c
    ld a, c                                       ; $6315: $79
    ld [hl], l                                    ; $6316: $75
    ld a, b                                       ; $6317: $78
    inc [hl]                                      ; $6318: $34
    and b                                         ; $6319: $a0
    nop                                           ; $631a: $00
    ld b, $b0                                     ; $631b: $06 $b0
    add d                                         ; $631d: $82
    dec sp                                        ; $631e: $3b
    and d                                         ; $631f: $a2
    ld e, l                                       ; $6320: $5d
    add c                                         ; $6321: $81
    ld d, $00                                     ; $6322: $16 $00
    db $f4                                        ; $6324: $f4
    ld [bc], a                                    ; $6325: $02
    and b                                         ; $6326: $a0
    inc bc                                        ; $6327: $03
    or l                                          ; $6328: $b5
    ld bc, $7175                                  ; $6329: $01 $75 $71
    nop                                           ; $632c: $00
    ld a, [c]                                     ; $632d: $f2
    di                                            ; $632e: $f3
    ldh a, [$72]                                  ; $632f: $f0 $72
    ld [hl], h                                    ; $6331: $74
    ld h, [hl]                                    ; $6332: $66
    ld h, b                                       ; $6333: $60
    dec de                                        ; $6334: $1b
    nop                                           ; $6335: $00
    ret c                                         ; $6336: $d8

    ld de, $0138                                  ; $6337: $11 $38 $01
    ld sp, $a903                                  ; $633a: $31 $03 $a9
    ld d, l                                       ; $633d: $55
    nop                                           ; $633e: $00
    inc e                                         ; $633f: $1c
    cp c                                          ; $6340: $b9
    add b                                         ; $6341: $80
    sbc c                                         ; $6342: $99
    dec d                                         ; $6343: $15
    and d                                         ; $6344: $a2
    ld a, [hl-]                                   ; $6345: $3a
    or b                                          ; $6346: $b0
    nop                                           ; $6347: $00
    ld l, b                                       ; $6348: $68
    or b                                          ; $6349: $b0
    add sp, -$50                                  ; $634a: $e8 $b0
    xor b                                         ; $634c: $a8
    or b                                          ; $634d: $b0
    xor b                                         ; $634e: $a8
    ld e, b                                       ; $634f: $58
    ld bc, $d8e8                                  ; $6350: $01 $e8 $d8
    ld l, b                                       ; $6353: $68
    ret nc                                        ; $6354: $d0

    ld h, b                                       ; $6355: $60
    ld d, b                                       ; $6356: $50
    ld h, b                                       ; $6357: $60
    ld b, b                                       ; $6358: $40
    ld l, d                                       ; $6359: $6a
    nop                                           ; $635a: $00
    ldh [$cf], a                                  ; $635b: $e0 $cf
    ldh [rIF], a                                  ; $635d: $e0 $0f
    ld h, b                                       ; $635f: $60
    ld c, a                                       ; $6360: $4f
    ldh a, [$87]                                  ; $6361: $f0 $87
    nop                                           ; $6363: $00
    ldh a, [$80]                                  ; $6364: $f0 $80
    ld hl, $381e                                  ; $6366: $21 $1e $38
    daa                                           ; $6369: $27
    rrca                                          ; $636a: $0f
    inc sp                                        ; $636b: $33
    nop                                           ; $636c: $00
    jp nz, Jump_000_3d3e                          ; $636d: $c2 $3e $3d

    rra                                           ; $6370: $1f
    ld a, $1f                                     ; $6371: $3e $1f
    ldh [$3f], a                                  ; $6373: $e0 $3f
    nop                                           ; $6375: $00
    nop                                           ; $6376: $00
    nop                                           ; $6377: $00
    db $e3                                        ; $6378: $e3
    inc hl                                        ; $6379: $23
    ld sp, $0fc1                                  ; $637a: $31 $c1 $0f
    pop af                                        ; $637d: $f1
    nop                                           ; $637e: $00
    sbc [hl]                                      ; $637f: $9e
    jp nz, Jump_0ae_531f                          ; $6380: $c2 $1f $53

    rst $18                                       ; $6383: $df
    add b                                         ; $6384: $80
    rra                                           ; $6385: $1f
    add b                                         ; $6386: $80
    nop                                           ; $6387: $00
    nop                                           ; $6388: $00
    nop                                           ; $6389: $00
    pop hl                                        ; $638a: $e1
    ld a, a                                       ; $638b: $7f
    ldh a, [$cf]                                  ; $638c: $f0 $cf
    inc e                                         ; $638e: $1c
    inc de                                        ; $638f: $13

Jump_0ae_6390:
    nop                                           ; $6390: $00
    ld h, [hl]                                    ; $6391: $66
    ld l, b                                       ; $6392: $68
    inc h                                         ; $6393: $24
    ld h, b                                       ; $6394: $60
    inc [hl]                                      ; $6395: $34
    dec b                                         ; $6396: $05
    or c                                          ; $6397: $b1
    inc bc                                        ; $6398: $03
    nop                                           ; $6399: $00
    nop                                           ; $639a: $00
    nop                                           ; $639b: $00
    ld a, [hl]                                    ; $639c: $7e
    db $d3                                        ; $639d: $d3
    add e                                         ; $639e: $83
    ld b, h                                       ; $639f: $44
    rst $00                                       ; $63a0: $c7
    jp hl                                         ; $63a1: $e9


    nop                                           ; $63a2: $00
    ld [hl], $24                                  ; $63a3: $36 $24
    ld b, a                                       ; $63a5: $47
    ld [hl], b                                    ; $63a6: $70
    ld h, l                                       ; $63a7: $65
    inc de                                        ; $63a8: $13
    ld l, b                                       ; $63a9: $68
    ld b, $00                                     ; $63aa: $06 $00
    inc bc                                        ; $63ac: $03
    dec c                                         ; $63ad: $0d
    rst $20                                       ; $63ae: $e7
    dec de                                        ; $63af: $1b
    inc c                                         ; $63b0: $0c
    ldh a, [rNR32]                                ; $63b1: $f0 $1c
    db $e4                                        ; $63b3: $e4
    nop                                           ; $63b4: $00
    rra                                           ; $63b5: $1f
    ld l, a                                       ; $63b6: $6f
    ccf                                           ; $63b7: $3f
    ld c, a                                       ; $63b8: $4f
    ldh [$90], a                                  ; $63b9: $e0 $90
    nop                                           ; $63bb: $00
    ldh a, [rLCDC]                                ; $63bc: $f0 $40

jr_0ae_63be:
    ret nz                                        ; $63be: $c0

    cp c                                          ; $63bf: $b9
    ld [hl+], a                                   ; $63c0: $22
    db $10                                        ; $63c1: $10
    inc bc                                        ; $63c2: $03
    sub [hl]                                      ; $63c3: $96
    ld [bc], a                                    ; $63c4: $02
    nop                                           ; $63c5: $00
    nop                                           ; $63c6: $00
    nop                                           ; $63c7: $00
    ld bc, $02fe                                  ; $63c8: $01 $fe $02
    db $fc                                        ; $63cb: $fc
    ld a, [c]                                     ; $63cc: $f2
    nop                                           ; $63cd: $00
    nop                                           ; $63ce: $00
    ld a, [c]                                     ; $63cf: $f2
    nop                                           ; $63d0: $00
    inc b                                         ; $63d1: $04
    ldh a, [rTMA]                                 ; $63d2: $f0 $06
    or d                                          ; $63d4: $b2
    add b                                         ; $63d5: $80
    add d                                         ; $63d6: $82
    nop                                           ; $63d7: $00
    nop                                           ; $63d8: $00
    nop                                           ; $63d9: $00
    ld a, a                                       ; $63da: $7f
    nop                                           ; $63db: $00
    ccf                                           ; $63dc: $3f
    nop                                           ; $63dd: $00
    rra                                           ; $63de: $1f
    ld e, a                                       ; $63df: $5f
    nop                                           ; $63e0: $00
    sbc a                                         ; $63e1: $9f
    ld e, a                                       ; $63e2: $5f
    ld h, b                                       ; $63e3: $60
    add hl, bc                                    ; $63e4: $09
    ld h, b                                       ; $63e5: $60
    ld hl, $6888                                  ; $63e6: $21 $88 $68
    ld b, b                                       ; $63e9: $40
    nop                                           ; $63ea: $00
    ld bc, $fe18                                  ; $63eb: $01 $18 $fe
    ld bc, $03fc                                  ; $63ee: $01 $fc $03
    ld hl, sp+$06                                 ; $63f1: $f8 $06
    nop                                           ; $63f3: $00
    ldh [$dc], a                                  ; $63f4: $e0 $dc
    pop bc                                        ; $63f6: $c1
    nop                                           ; $63f7: $00
    rst $20                                       ; $63f8: $e7
    jr jr_0ae_63be                                ; $63f9: $18 $c3

    inc a                                         ; $63fb: $3c
    nop                                           ; $63fc: $00
    add c                                         ; $63fd: $81
    ld h, [hl]                                    ; $63fe: $66
    nop                                           ; $63ff: $00
    jp RST_18                                     ; $6400: $c3 $18 $00


    inc a                                         ; $6403: $3c
    rst $38                                       ; $6404: $ff
    jr nz, jr_0ae_6407                            ; $6405: $20 $00

jr_0ae_6407:
    pop hl                                        ; $6407: $e1
    rra                                           ; $6408: $1f
    db $10                                        ; $6409: $10
    ld b, c                                       ; $640a: $41
    pop bc                                        ; $640b: $c1
    ld de, $1201                                  ; $640c: $11 $01 $12
    ld bc, $3a90                                  ; $640f: $01 $90 $3a
    sub d                                         ; $6412: $92
    jr jr_0ae_643f                                ; $6413: $18 $2a

    dec h                                         ; $6415: $25
    cpl                                           ; $6416: $2f
    jr nc, jr_0ae_6421                            ; $6417: $30 $08

    add b                                         ; $6419: $80
    ld b, d                                       ; $641a: $42

jr_0ae_641b:
    ld [$1fc0], sp                                ; $641b: $08 $c0 $1f
    ret nz                                        ; $641e: $c0

    ld c, a                                       ; $641f: $4f
    ret nz                                        ; $6420: $c0

jr_0ae_6421:
    rrca                                          ; $6421: $0f
    ldh [$c0], a                                  ; $6422: $e0 $c0
    db $10                                        ; $6424: $10
    db $10                                        ; $6425: $10
    inc b                                         ; $6426: $04
    ld c, b                                       ; $6427: $48
    ret nc                                        ; $6428: $d0

    jp $dac1                                      ; $6429: $c3 $c1 $da


    sbc $c0                                       ; $642c: $de $c0
    nop                                           ; $642e: $00
    adc $c1                                       ; $642f: $ce $c1
    db $e4                                        ; $6431: $e4
    db $eb                                        ; $6432: $eb
    ld b, $f2                                     ; $6433: $06 $f2
    ld [bc], a                                    ; $6435: $02
    ldh a, [rP1]                                  ; $6436: $f0 $00
    ld sp, hl                                     ; $6438: $f9
    ld bc, $c038                                  ; $6439: $01 $38 $c0
    ld [$49d0], sp                                ; $643c: $08 $d0 $49

jr_0ae_643f:
    sub c                                         ; $643f: $91
    nop                                           ; $6440: $00
    add b                                         ; $6441: $80
    add e                                         ; $6442: $83
    jr nz, jr_0ae_644b                            ; $6443: $20 $06

    ld b, c                                       ; $6445: $41
    ld [hl], b                                    ; $6446: $70
    jp $00f0                                      ; $6447: $c3 $f0 $00


    add e                                         ; $644a: $83

jr_0ae_644b:
    ld a, e                                       ; $644b: $7b
    or b                                          ; $644c: $b0
    add e                                         ; $644d: $83
    ld h, b                                       ; $644e: $60
    rrca                                          ; $644f: $0f
    ret nz                                        ; $6450: $c0

    ld e, $00                                     ; $6451: $1e $00
    inc a                                         ; $6453: $3c
    nop                                           ; $6454: $00
    ld hl, sp+$01                                 ; $6455: $f8 $01
    or $07                                        ; $6457: $f6 $07
    pop af                                        ; $6459: $f1
    inc bc                                        ; $645a: $03
    nop                                           ; $645b: $00
    ld a, [c]                                     ; $645c: $f2
    ld b, $ca                                     ; $645d: $06 $ca
    ld c, $01                                     ; $645f: $0e $01
    dec bc                                        ; $6461: $0b
    ld b, l                                       ; $6462: $45
    ld [bc], a                                    ; $6463: $02
    nop                                           ; $6464: $00
    and $58                                       ; $6465: $e6 $58

jr_0ae_6467:
    pop de                                        ; $6467: $d1
    sbc b                                         ; $6468: $98
    jr nc, jr_0ae_641b                            ; $6469: $30 $b0

    ld l, [hl]                                    ; $646b: $6e
    ld c, $00                                     ; $646c: $0e $00
    db $10                                        ; $646e: $10
    rra                                           ; $646f: $1f
    nop                                           ; $6470: $00
    rlca                                          ; $6471: $07
    ret c                                         ; $6472: $d8

    ld a, [bc]                                    ; $6473: $0a
    ld [hl], b                                    ; $6474: $70
    jp c, Jump_000_0400                           ; $6475: $da $00 $04

    ld [hl], b                                    ; $6478: $70
    add $d4                                       ; $6479: $c6 $d4
    adc d                                         ; $647b: $8a
    add h                                         ; $647c: $84
    add h                                         ; $647d: $84
    ret nz                                        ; $647e: $c0

    nop                                           ; $647f: $00
    ld h, b                                       ; $6480: $60
    halt                                          ; $6481: $76
    rrca                                          ; $6482: $0f
    rst $28                                       ; $6483: $ef
    daa                                           ; $6484: $27
    rst $00                                       ; $6485: $c7
    scf                                           ; $6486: $37
    add a                                         ; $6487: $87
    nop                                           ; $6488: $00
    rlca                                          ; $6489: $07
    and a                                         ; $648a: $a7
    add b                                         ; $648b: $80
    ld h, b                                       ; $648c: $60
    jr jr_0ae_6467                                ; $648d: $18 $d8

    ret nz                                        ; $648f: $c0

    adc h                                         ; $6490: $8c
    jr z, jr_0ae_64b3                             ; $6491: $28 $20

    ld b, a                                       ; $6493: $47
    ld [hl], b                                    ; $6494: $70
    ld c, b                                       ; $6495: $48
    rst $38                                       ; $6496: $ff
    call z, $fc00                                 ; $6497: $cc $00 $fc
    ld bc, $0003                                  ; $649a: $01 $03 $00
    pop af                                        ; $649d: $f1
    ld c, $e0                                     ; $649e: $0e $e0
    ret c                                         ; $64a0: $d8

    ret nz                                        ; $64a1: $c0

    jr nc, jr_0ae_64ab                            ; $64a2: $30 $07

    ld l, a                                       ; $64a4: $6f
    nop                                           ; $64a5: $00
    rrca                                          ; $64a6: $0f
    ld h, b                                       ; $64a7: $60
    rrca                                          ; $64a8: $0f
    and b                                         ; $64a9: $a0
    adc a                                         ; $64aa: $8f

jr_0ae_64ab:
    add e                                         ; $64ab: $83
    inc bc                                        ; $64ac: $03
    jr c, jr_0ae_64af                             ; $64ad: $38 $00

jr_0ae_64af:
    ld hl, $313c                                  ; $64af: $21 $3c $31
    db $fc                                        ; $64b2: $fc

jr_0ae_64b3:
    jp hl                                         ; $64b3: $e9


    ld a, h                                       ; $64b4: $7c
    ld bc, $005a                                  ; $64b5: $01 $5a $00
    inc h                                         ; $64b8: $24
    ld e, d                                       ; $64b9: $5a
    ld l, h                                       ; $64ba: $6c
    adc b                                         ; $64bb: $88
    or [hl]                                       ; $64bc: $b6
    and $0f                                       ; $64bd: $e6 $0f
    call nz, Call_000_0500                        ; $64bf: $c4 $00 $05
    call nz, Call_000_0b05                        ; $64c2: $c4 $05 $0b
    adc $5f                                       ; $64c5: $ce $5f
    sub $1d                                       ; $64c7: $d6 $1d
    nop                                           ; $64c9: $00
    ret c                                         ; $64ca: $d8

    dec b                                         ; $64cb: $05
    push bc                                       ; $64cc: $c5
    db $e4                                        ; $64cd: $e4
    ld l, h                                       ; $64ce: $6c
    add b                                         ; $64cf: $80
    and b                                         ; $64d0: $a0
    ldh a, [rP1]                                  ; $64d1: $f0 $00
    ldh [rNR13], a                                ; $64d3: $e0 $13
    inc c                                         ; $64d5: $0c
    ld [de], a                                    ; $64d6: $12
    ld e, $21                                     ; $64d7: $1e $21
    nop                                           ; $64d9: $00
    ld e, $00                                     ; $64da: $1e $00
    ccf                                           ; $64dc: $3f
    rra                                           ; $64dd: $1f
    cpl                                           ; $64de: $2f
    ccf                                           ; $64df: $3f
    rlca                                          ; $64e0: $07
    ld a, [de]                                    ; $64e1: $1a
    ld b, b                                       ; $64e2: $40
    ld a, [bc]                                    ; $64e3: $0a
    nop                                           ; $64e4: $00
    add d                                         ; $64e5: $82
    and b                                         ; $64e6: $a0
    sub b                                         ; $64e7: $90
    add d                                         ; $64e8: $82
    sub b                                         ; $64e9: $90
    ret nz                                        ; $64ea: $c0

    add $c0                                       ; $64eb: $c6 $c0
    nop                                           ; $64ed: $00
    ld d, $a0                                     ; $64ee: $16 $a0
    ld b, $e0                                     ; $64f0: $06 $e0
    xor $c8                                       ; $64f2: $ee $c8
    add hl, hl                                    ; $64f4: $29
    ld b, $00                                     ; $64f5: $06 $00
    ld b, $30                                     ; $64f7: $06 $30
    scf                                           ; $64f9: $37
    or b                                          ; $64fa: $b0
    rla                                           ; $64fb: $17
    ld hl, sp-$45                                 ; $64fc: $f8 $bb
    ld hl, sp+$00                                 ; $64fe: $f8 $00
    db $db                                        ; $6500: $db
    ret c                                         ; $6501: $d8

    ld a, e                                       ; $6502: $7b
    ld a, b                                       ; $6503: $78
    ld c, l                                       ; $6504: $4d
    add b                                         ; $6505: $80
    ccf                                           ; $6506: $3f
    ret nz                                        ; $6507: $c0

    nop                                           ; $6508: $00
    rrca                                          ; $6509: $0f
    ld [hl], a                                    ; $650a: $77
    rlca                                          ; $650b: $07
    dec de                                        ; $650c: $1b
    add e                                         ; $650d: $83
    inc c                                         ; $650e: $0c
    ldh [rTMA], a                                 ; $650f: $e0 $06
    nop                                           ; $6511: $00
    ldh a, [rTMA]                                 ; $6512: $f0 $06
    ldh a, [rTIMA]                                ; $6514: $f0 $05
    pop af                                        ; $6516: $f1
    and b                                         ; $6517: $a0
    adc a                                         ; $6518: $8f
    or b                                          ; $6519: $b0
    nop                                           ; $651a: $00
    add a                                         ; $651b: $87
    ret nc                                        ; $651c: $d0

    rst $00                                       ; $651d: $c7
    ret nc                                        ; $651e: $d0

    rst $00                                       ; $651f: $c7
    ret c                                         ; $6520: $d8

    jp Jump_000_00e8                              ; $6521: $c3 $e8 $00


    db $e3                                        ; $6524: $e3
    add sp, -$1d                                  ; $6525: $e8 $e3
    dec bc                                        ; $6527: $0b
    db $e3                                        ; $6528: $e3
    and d                                         ; $6529: $a2
    sbc h                                         ; $652a: $9c
    sbc h                                         ; $652b: $9c
    nop                                           ; $652c: $00
    and d                                         ; $652d: $a2
    ret nz                                        ; $652e: $c0

    ret z                                         ; $652f: $c8

    inc bc                                        ; $6530: $03
    db $e3                                        ; $6531: $e3
    rlca                                          ; $6532: $07
    db $eb                                        ; $6533: $eb
    db $e4                                        ; $6534: $e4
    nop                                           ; $6535: $00
    nop                                           ; $6536: $00
    db $ec                                        ; $6537: $ec
    rrca                                          ; $6538: $0f
    adc $d1                                       ; $6539: $ce $d1
    push hl                                       ; $653b: $e5
    dec b                                         ; $653c: $05
    ldh [rP1], a                                  ; $653d: $e0 $00
    nop                                           ; $653f: $00

jr_0ae_6540:
    pop de                                        ; $6540: $d1
    add hl, bc                                    ; $6541: $09
    ld de, $1129                                  ; $6542: $11 $29 $11
    ld hl, $0001                                  ; $6545: $21 $01 $00
    add hl, de                                    ; $6548: $19
    sub h                                         ; $6549: $94
    adc b                                         ; $654a: $88
    adc b                                         ; $654b: $88
    add [hl]                                      ; $654c: $86
    ldh [$f9], a                                  ; $654d: $e0 $f9
    ldh a, [rP1]                                  ; $654f: $f0 $00
    ld l, h                                       ; $6551: $6c
    jr nc, jr_0ae_6563                            ; $6552: $30 $0f

    ret c                                         ; $6554: $d8

    ld d, a                                       ; $6555: $57
    and b                                         ; $6556: $a0
    ld h, b                                       ; $6557: $60
    adc a                                         ; $6558: $8f
    nop                                           ; $6559: $00
    ld [hl], c                                    ; $655a: $71
    ld a, [hl]                                    ; $655b: $7e
    cp a                                          ; $655c: $bf
    nop                                           ; $655d: $00
    nop                                           ; $655e: $00
    ldh [$2f], a                                  ; $655f: $e0 $2f
    ldh [rP1], a                                  ; $6561: $e0 $00

jr_0ae_6563:
    rst $28                                       ; $6563: $ef
    ldh [$2f], a                                  ; $6564: $e0 $2f
    ret nz                                        ; $6566: $c0

    rst $08                                       ; $6567: $cf
    db $10                                        ; $6568: $10

jr_0ae_6569:
    rla                                           ; $6569: $17
    ld [$1300], sp                                ; $656a: $08 $00 $13
    ld [$e004], sp                                ; $656d: $08 $04 $e0
    xor $78                                       ; $6570: $ee $78

jr_0ae_6572:
    ld b, l                                       ; $6572: $45
    jr nc, jr_0ae_6575                            ; $6573: $30 $00

jr_0ae_6575:
    ld a, l                                       ; $6575: $7d
    or c                                          ; $6576: $b1
    db $10                                        ; $6577: $10
    add c                                         ; $6578: $81
    inc b                                         ; $6579: $04
    reti                                          ; $657a: $d9


    push bc                                       ; $657b: $c5
    call c, $c400                                 ; $657c: $dc $00 $c4
    inc bc                                        ; $657f: $03
    jp nz, $c503                                  ; $6580: $c2 $03 $c5

    dec b                                         ; $6583: $05
    pop af                                        ; $6584: $f1
    dec c                                         ; $6585: $0d
    jr nz, jr_0ae_6569                            ; $6586: $20 $e1

    dec bc                                        ; $6588: $0b
    ld e, b                                       ; $6589: $58
    nop                                           ; $658a: $00
    dec de                                        ; $658b: $1b
    jp $c717                                      ; $658c: $c3 $17 $c7


    ld d, b                                       ; $658f: $50
    nop                                           ; $6590: $00
    ld b, a                                       ; $6591: $47
    ld d, b                                       ; $6592: $50
    ld b, a                                       ; $6593: $47
    dec c                                         ; $6594: $0d
    pop hl                                        ; $6595: $e1
    dec b                                         ; $6596: $05
    pop af                                        ; $6597: $f1
    dec b                                         ; $6598: $05
    nop                                           ; $6599: $00
    pop af                                        ; $659a: $f1
    ld b, $f0                                     ; $659b: $06 $f0
    ld [bc], a                                    ; $659d: $02
    ld hl, sp+$02                                 ; $659e: $f8 $02
    ld hl, sp+$03                                 ; $65a0: $f8 $03
    nop                                           ; $65a2: $00
    ld hl, sp+$01                                 ; $65a3: $f8 $01
    db $fc                                        ; $65a5: $fc
    jp z, Jump_000_1bd4                           ; $65a6: $ca $d4 $1b

    jp nz, RST_00                                 ; $65a9: $c2 $00 $00

    ret nz                                        ; $65ac: $c0

    ld bc, $1ce0                                  ; $65ad: $01 $e0 $1c
    adc b                                         ; $65b0: $88
    inc c                                         ; $65b1: $0c
    jr nc, jr_0ae_65d2                            ; $65b2: $30 $1e

    nop                                           ; $65b4: $00
    ld h, d                                       ; $65b5: $62
    ld [bc], a                                    ; $65b6: $02
    ld a, h                                       ; $65b7: $7c
    add h                                         ; $65b8: $84
    add e                                         ; $65b9: $83
    add e                                         ; $65ba: $83
    add b                                         ; $65bb: $80
    nop                                           ; $65bc: $00
    nop                                           ; $65bd: $00
    jr c, jr_0ae_6540                             ; $65be: $38 $80

    cp a                                          ; $65c0: $bf
    ret nz                                        ; $65c1: $c0

    rra                                           ; $65c2: $1f
    rra                                           ; $65c3: $1f
    ret nz                                        ; $65c4: $c0

    ld e, a                                       ; $65c5: $5f
    add b                                         ; $65c6: $80
    sub l                                         ; $65c7: $95
    ld bc, $f20e                                  ; $65c8: $01 $0e $f2
    ld a, [c]                                     ; $65cb: $f2
    inc c                                         ; $65cc: $0c
    adc [hl]                                      ; $65cd: $8e
    ld [hl], b                                    ; $65ce: $70
    add b                                         ; $65cf: $80
    nop                                           ; $65d0: $00
    add b                                         ; $65d1: $80

jr_0ae_65d2:
    nop                                           ; $65d2: $00
    ld hl, sp-$0c                                 ; $65d3: $f8 $f4
    ldh a, [$e0]                                  ; $65d5: $f0 $e0
    ld [$00d0], sp                                ; $65d7: $08 $d0 $00
    ld e, $f2                                     ; $65da: $1e $f2
    ld b, $74                                     ; $65dc: $06 $74
    inc b                                         ; $65de: $04
    ld a, [c]                                     ; $65df: $f2
    ld bc, $000d                                  ; $65e0: $01 $0d $00
    inc bc                                        ; $65e3: $03
    rrca                                          ; $65e4: $0f
    ld h, b                                       ; $65e5: $60
    daa                                           ; $65e6: $27
    ld [hl], b                                    ; $65e7: $70
    rlca                                          ; $65e8: $07
    jr nc, jr_0ae_6572                            ; $65e9: $30 $87

    nop                                           ; $65eb: $00
    sub b                                         ; $65ec: $90
    nop                                           ; $65ed: $00
    rra                                           ; $65ee: $1f
    ld a, [bc]                                    ; $65ef: $0a
    inc e                                         ; $65f0: $1c
    ld [c], a                                     ; $65f1: $e2
    ld h, $f6                                     ; $65f2: $26 $f6
    nop                                           ; $65f4: $00
    ld b, $39                                     ; $65f5: $06 $39
    ld a, [$9819]                                 ; $65f7: $fa $19 $98
    ld e, h                                       ; $65fa: $5c
    call nc, $a008                                ; $65fb: $d4 $08 $a0
    jr c, @+$03                                   ; $65fe: $38 $01

    jr nz, jr_0ae_6638                            ; $6600: $20 $36

    ld bc, $0f60                                  ; $6602: $01 $60 $0f
    ld b, b                                       ; $6605: $40
    rra                                           ; $6606: $1f
    ld b, b                                       ; $6607: $40
    nop                                           ; $6608: $00
    rra                                           ; $6609: $1f
    ret nz                                        ; $660a: $c0

    rra                                           ; $660b: $1f
    add b                                         ; $660c: $80
    ccf                                           ; $660d: $3f
    ld bc, $01fc                                  ; $660e: $01 $fc $01
    dec b                                         ; $6611: $05
    db $fc                                        ; $6612: $fc
    nop                                           ; $6613: $00
    cp $fe                                        ; $6614: $fe $fe
    nop                                           ; $6616: $00
    ld [bc], a                                    ; $6617: $02
    ld [$1dff], sp                                ; $6618: $08 $ff $1d
    ld [bc], a                                    ; $661b: $02
    nop                                           ; $661c: $00
    ld a, [bc]                                    ; $661d: $0a
    halt                                          ; $661e: $76
    add b                                         ; $661f: $80
    cp h                                          ; $6620: $bc
    add c                                         ; $6621: $81
    cp b                                          ; $6622: $b8
    add e                                         ; $6623: $83
    cp b                                          ; $6624: $b8
    nop                                           ; $6625: $00
    add e                                         ; $6626: $83
    or h                                          ; $6627: $b4
    jp Jump_0ae_42d4                              ; $6628: $c3 $d4 $42


    ld d, l                                       ; $662b: $55
    ld d, $50                                     ; $662c: $16 $50
    nop                                           ; $662e: $00
    add c                                         ; $662f: $81
    ret nz                                        ; $6630: $c0

    ld c, [hl]                                    ; $6631: $4e
    ld [hl-], a                                   ; $6632: $32
    dec de                                        ; $6633: $1b
    dec a                                         ; $6634: $3d
    ld sp, hl                                     ; $6635: $f9
    ld [hl-], a                                   ; $6636: $32
    nop                                           ; $6637: $00

jr_0ae_6638:
    ldh [rNR22], a                                ; $6638: $e0 $17
    add $0c                                       ; $663a: $c6 $0c
    call c, Call_000_182c                         ; $663c: $dc $2c $18
    ld hl, sp+$00                                 ; $663f: $f8 $00
    and b                                         ; $6641: $a0
    sub h                                         ; $6642: $94
    add l                                         ; $6643: $85
    xor c                                         ; $6644: $a9
    inc bc                                        ; $6645: $03
    ld [$184b], sp                                ; $6646: $08 $4b $18
    add b                                         ; $6649: $80
    xor e                                         ; $664a: $ab
    nop                                           ; $664b: $00
    db $10                                        ; $664c: $10
    rrca                                          ; $664d: $0f
    rst $28                                       ; $664e: $ef
    rst $38                                       ; $664f: $ff
    ldh [$0b], a                                  ; $6650: $e0 $0b
    jr jr_0ae_6654                                ; $6652: $18 $00

jr_0ae_6654:
    adc c                                         ; $6654: $89
    inc c                                         ; $6655: $0c
    ret                                           ; $6656: $c9


    push bc                                       ; $6657: $c5
    pop bc                                        ; $6658: $c1
    push bc                                       ; $6659: $c5
    and $06                                       ; $665a: $e6 $06
    nop                                           ; $665c: $00
    ld [c], a                                     ; $665d: $e2
    ld b, $f2                                     ; $665e: $06 $f2
    db $f4                                        ; $6660: $f4
    ld a, [c]                                     ; $6661: $f2
    db $f4                                        ; $6662: $f4
    db $ec                                        ; $6663: $ec
    inc c                                         ; $6664: $0c
    nop                                           ; $6665: $00
    db $f4                                        ; $6666: $f4
    dec d                                         ; $6667: $15
    db $f4                                        ; $6668: $f4
    dec b                                         ; $6669: $05
    db $f4                                        ; $666a: $f4

jr_0ae_666b:
    dec b                                         ; $666b: $05
    pop af                                        ; $666c: $f1
    db $f4                                        ; $666d: $f4
    nop                                           ; $666e: $00
    di                                            ; $666f: $f3
    ldh a, [$f2]                                  ; $6670: $f0 $f2
    ldh a, [$a2]                                  ; $6672: $f0 $a2
    ldh a, [$80]                                  ; $6674: $f0 $80
    ccf                                           ; $6676: $3f
    inc e                                         ; $6677: $1c
    add b                                         ; $6678: $80
    ccf                                           ; $6679: $3f
    ld a, a                                       ; $667a: $7f
    add h                                         ; $667b: $84
    ld [bc], a                                    ; $667c: $02
    inc b                                         ; $667d: $04
    ld [$8801], sp                                ; $667e: $08 $01 $88
    rrca                                          ; $6681: $0f
    ld l, c                                       ; $6682: $69
    nop                                           ; $6683: $00
    rrca                                          ; $6684: $0f
    dec hl                                        ; $6685: $2b
    ld c, $2b                                     ; $6686: $0e $2b
    add a                                         ; $6688: $87
    or b                                          ; $6689: $b0
    ret nz                                        ; $668a: $c0

    ret nc                                        ; $668b: $d0

    nop                                           ; $668c: $00
    rra                                           ; $668d: $1f
    ret nz                                        ; $668e: $c0

    nop                                           ; $668f: $00
    ret nz                                        ; $6690: $c0

    nop                                           ; $6691: $00
    nop                                           ; $6692: $00
    sub [hl]                                      ; $6693: $96
    ld h, d                                       ; $6694: $62
    inc bc                                        ; $6695: $03
    ld l, h                                       ; $6696: $6c
    sub [hl]                                      ; $6697: $96
    ld a, b                                       ; $6698: $78
    nop                                           ; $6699: $00
    or [hl]                                       ; $669a: $b6
    ld a, h                                       ; $669b: $7c
    xor $09                                       ; $669c: $ee $09
    ld a, h                                       ; $669e: $7c
    ld [de], a                                    ; $669f: $12
    ld bc, $c0b0                                  ; $66a0: $01 $b0 $c0
    add b                                         ; $66a3: $80
    ccf                                           ; $66a4: $3f
    rst $00                                       ; $66a5: $c7
    ret nz                                        ; $66a6: $c0

    ld b, b                                       ; $66a7: $40
    db $10                                        ; $66a8: $10
    jr jr_0ae_66cb                                ; $66a9: $18 $20

    rst $38                                       ; $66ab: $ff
    nop                                           ; $66ac: $00
    sub [hl]                                      ; $66ad: $96
    ld bc, $06c4                                  ; $66ae: $01 $c4 $06
    and $06                                       ; $66b1: $e6 $06
    ldh [$88], a                                  ; $66b3: $e0 $88
    db $10                                        ; $66b5: $10
    jr z, @+$38                                   ; $66b6: $28 $36

    ldh a, [$64]                                  ; $66b8: $f0 $64
    and [hl]                                      ; $66ba: $a6
    ld bc, $e10d                                  ; $66bb: $01 $0d $e1
    ld [$030c], sp                                ; $66be: $08 $0c $03
    ld hl, sp+$03                                 ; $66c1: $f8 $03
    inc bc                                        ; $66c3: $03
    inc [hl]                                      ; $66c4: $34
    jr nz, jr_0ae_666b                            ; $66c5: $20 $a4

    ld c, d                                       ; $66c7: $4a
    db $10                                        ; $66c8: $10
    inc bc                                        ; $66c9: $03
    xor b                                         ; $66ca: $a8

jr_0ae_66cb:
    ld [bc], a                                    ; $66cb: $02
    ld b, b                                       ; $66cc: $40
    nop                                           ; $66cd: $00
    ld bc, $9fb8                                  ; $66ce: $01 $b8 $9f
    ld h, b                                       ; $66d1: $60
    ld c, [hl]                                    ; $66d2: $4e
    ld b, e                                       ; $66d3: $43
    inc hl                                        ; $66d4: $23
    ldh a, [rP1]                                  ; $66d5: $f0 $00
    nop                                           ; $66d7: $00
    ldh [$ee], a                                  ; $66d8: $e0 $ee
    pop bc                                        ; $66da: $c1
    sbc $03                                       ; $66db: $de $03
    dec e                                         ; $66dd: $1d
    rrca                                          ; $66de: $0f
    nop                                           ; $66df: $00
    ld h, e                                       ; $66e0: $63
    ldh [$de], a                                  ; $66e1: $e0 $de
    ld b, b                                       ; $66e3: $40
    jr nz, jr_0ae_66f2                            ; $66e4: $20 $0c

    sub h                                         ; $66e6: $94
    nop                                           ; $66e7: $00
    ld bc, $18e7                                  ; $66e8: $01 $e7 $18
    ld b, e                                       ; $66eb: $43
    inc a                                         ; $66ec: $3c

jr_0ae_66ed:
    ld bc, $0066                                  ; $66ed: $01 $66 $00
    ld b, $00                                     ; $66f0: $06 $00

jr_0ae_66f2:
    ld [$ff00], sp                                ; $66f2: $08 $00 $ff
    nop                                           ; $66f5: $00
    db $fc                                        ; $66f6: $fc
    ccf                                           ; $66f7: $3f
    jr jr_0ae_66ed                                ; $66f8: $18 $f3

    inc c                                         ; $66fa: $0c
    ld h, c                                       ; $66fb: $61
    nop                                           ; $66fc: $00
    ld b, $9a                                     ; $66fd: $06 $9a
    inc c                                         ; $66ff: $0c
    call nz, $6303                                ; $6700: $c4 $03 $63
    add e                                         ; $6703: $83
    dec sp                                        ; $6704: $3b
    add b                                         ; $6705: $80
    inc d                                         ; $6706: $14
    ld [$f0f3], sp                                ; $6707: $08 $f3 $f0
    rst $08                                       ; $670a: $cf
    ldh [$1f], a                                  ; $670b: $e0 $1f
    ret nz                                        ; $670d: $c0

    rra                                           ; $670e: $1f
    nop                                           ; $670f: $00
    ret nz                                        ; $6710: $c0

    ccf                                           ; $6711: $3f
    add b                                         ; $6712: $80
    ccf                                           ; $6713: $3f

jr_0ae_6714:
    add b                                         ; $6714: $80
    rst $38                                       ; $6715: $ff
    nop                                           ; $6716: $00
    ccf                                           ; $6717: $3f
    nop                                           ; $6718: $00
    nop                                           ; $6719: $00
    ret nz                                        ; $671a: $c0

    rst $08                                       ; $671b: $cf
    ldh a, [$e7]                                  ; $671c: $f0 $e7
    ei                                            ; $671e: $fb
    inc bc                                        ; $671f: $03
    ld sp, hl                                     ; $6720: $f9
    ld [bc], a                                    ; $6721: $02

jr_0ae_6722:
    inc bc                                        ; $6722: $03
    inc b                                         ; $6723: $04
    ld hl, sp+$0c                                 ; $6724: $f8 $0c
    db $f4                                        ; $6726: $f4
    nop                                           ; $6727: $00
    ld [hl], $00                                  ; $6728: $36 $00
    rst $20                                       ; $672a: $e7
    nop                                           ; $672b: $00
    db $10                                        ; $672c: $10
    ld [bc], a                                    ; $672d: $02
    jp $803c                                      ; $672e: $c3 $3c $80


    nop                                           ; $6731: $00
    ld a, [hl]                                    ; $6732: $7e
    ld [bc], a                                    ; $6733: $02
    nop                                           ; $6734: $00
    ld a, h                                       ; $6735: $7c
    ld b, [hl]                                    ; $6736: $46
    ld a, [hl-]                                   ; $6737: $3a
    rlca                                          ; $6738: $07
    rlca                                          ; $6739: $07
    dec bc                                        ; $673a: $0b
    rra                                           ; $673b: $1f
    dec b                                         ; $673c: $05
    nop                                           ; $673d: $00
    jr c, jr_0ae_67a1                             ; $673e: $38 $61

    ld a, b                                       ; $6740: $78
    ld h, b                                       ; $6741: $60
    ret nz                                        ; $6742: $c0

    dec de                                        ; $6743: $1b
    jp c, $001b                                   ; $6744: $da $1b $00

    db $db                                        ; $6747: $db
    ret nz                                        ; $6748: $c0

    ld e, e                                       ; $6749: $5b
    dec [hl]                                      ; $674a: $35
    res 0, l                                      ; $674b: $cb $85
    db $fc                                        ; $674d: $fc
    ld [de], a                                    ; $674e: $12
    nop                                           ; $674f: $00
    sbc [hl]                                      ; $6750: $9e
    ld [hl], $c0                                  ; $6751: $36 $c0
    jp z, Jump_000_00ba                           ; $6753: $ca $ba $00

    adc b                                         ; $6756: $88
    and h                                         ; $6757: $a4
    nop                                           ; $6758: $00
    add [hl]                                      ; $6759: $86
    sub b                                         ; $675a: $90
    xor d                                         ; $675b: $aa
    ld a, b                                       ; $675c: $78
    ld a, e                                       ; $675d: $7b
    or b                                          ; $675e: $b0
    scf                                           ; $675f: $37
    ld d, l                                       ; $6760: $55

Call_0ae_6761:
    nop                                           ; $6761: $00
    jp nz, Jump_0ae_616b                          ; $6762: $c2 $6b $61

    ld c, h                                       ; $6765: $4c
    ldh [rTAC], a                                 ; $6766: $e0 $07
    ld h, b                                       ; $6768: $60
    rlca                                          ; $6769: $07
    nop                                           ; $676a: $00
    ld h, b                                       ; $676b: $60
    inc hl                                        ; $676c: $23
    jr nz, jr_0ae_67af                            ; $676d: $20 $40

    inc c                                         ; $676f: $0c
    or b                                          ; $6770: $b0
    add h                                         ; $6771: $84
    cp b                                          ; $6772: $b8
    nop                                           ; $6773: $00
    add c                                         ; $6774: $81
    ld a, h                                       ; $6775: $7c
    ld bc, $01fd                                  ; $6776: $01 $fd $01
    db $fc                                        ; $6779: $fc
    ld bc, $81fe                                  ; $677a: $01 $fe $81
    add d                                         ; $677d: $82
    nop                                           ; $677e: $00
    nop                                           ; $677f: $00
    ccf                                           ; $6780: $3f
    jr nz, jr_0ae_6722                            ; $6781: $20 $9f

    jr nc, jr_0ae_6714                            ; $6783: $30 $8f

    ld l, d                                       ; $6785: $6a
    nop                                           ; $6786: $00
    nop                                           ; $6787: $00
    and b                                         ; $6788: $a0
    rst $18                                       ; $6789: $df
    db $10                                        ; $678a: $10
    adc a                                         ; $678b: $8f
    ld h, b                                       ; $678c: $60
    ld [hl], b                                    ; $678d: $70
    nop                                           ; $678e: $00
    inc e                                         ; $678f: $1c
    nop                                           ; $6790: $00
    db $e4                                        ; $6791: $e4
    inc a                                         ; $6792: $3c
    call nz, $8cf0                                ; $6793: $c4 $f0 $8c
    ldh [rNR32], a                                ; $6796: $e0 $1c
    ret nz                                        ; $6798: $c0

    nop                                           ; $6799: $00
    jr c, jr_0ae_67a2                             ; $679a: $38 $06

    or $0e                                        ; $679c: $f6 $0e
    pop hl                                        ; $679e: $e1
    inc d                                         ; $679f: $14
    ld [de], a                                    ; $67a0: $12

jr_0ae_67a1:
    ld a, [hl]                                    ; $67a1: $7e

jr_0ae_67a2:
    nop                                           ; $67a2: $00
    ld b, $81                                     ; $67a3: $06 $81
    cp h                                          ; $67a5: $bc
    jp nz, $c1c0                                  ; $67a6: $c2 $c0 $c1

    ret c                                         ; $67a9: $d8

    rlca                                          ; $67aa: $07
    nop                                           ; $67ab: $00
    jr nc, jr_0ae_67bd                            ; $67ac: $30 $0f

    ld l, a                                       ; $67ae: $6f

jr_0ae_67af:
    rrca                                          ; $67af: $0f
    ld l, c                                       ; $67b0: $69
    adc a                                         ; $67b1: $8f
    and b                                         ; $67b2: $a0
    ld b, h                                       ; $67b3: $44
    nop                                           ; $67b4: $00
    dec d                                         ; $67b5: $15
    ld b, $74                                     ; $67b6: $06 $74
    inc b                                         ; $67b8: $04
    ld h, h                                       ; $67b9: $64
    and [hl]                                      ; $67ba: $a6
    ld [hl], b                                    ; $67bb: $70

jr_0ae_67bc:
    add b                                         ; $67bc: $80

jr_0ae_67bd:
    nop                                           ; $67bd: $00
    ld de, $0382                                  ; $67be: $11 $82 $03
    add d                                         ; $67c1: $82
    inc bc                                        ; $67c2: $03
    or b                                          ; $67c3: $b0
    add hl, hl                                    ; $67c4: $29
    adc b                                         ; $67c5: $88
    nop                                           ; $67c6: $00
    and e                                         ; $67c7: $a3
    dec sp                                        ; $67c8: $3b
    add e                                         ; $67c9: $83
    rlca                                          ; $67ca: $07
    rst $00                                       ; $67cb: $c7
    ld a, a                                       ; $67cc: $7f
    ret nz                                        ; $67cd: $c0

    ld d, e                                       ; $67ce: $53
    nop                                           ; $67cf: $00
    add b                                         ; $67d0: $80
    dec [hl]                                      ; $67d1: $35
    jr c, jr_0ae_67bc                             ; $67d2: $38 $e8

    ld [hl], b                                    ; $67d4: $70
    ld [hl], $b0                                  ; $67d5: $36 $b0
    inc de                                        ; $67d7: $13
    nop                                           ; $67d8: $00
    jr nc, jr_0ae_67dd                            ; $67d9: $30 $02

    add b                                         ; $67db: $80
    ld [bc], a                                    ; $67dc: $02

jr_0ae_67dd:
    add b                                         ; $67dd: $80
    ld [hl], e                                    ; $67de: $73
    ldh a, [$93]                                  ; $67df: $f0 $93
    nop                                           ; $67e1: $00
    sub b                                         ; $67e2: $90
    and c                                         ; $67e3: $a1
    xor b                                         ; $67e4: $a8
    db $e4                                        ; $67e5: $e4

jr_0ae_67e6:
    ld c, l                                       ; $67e6: $4d
    rst $28                                       ; $67e7: $ef
    inc de                                        ; $67e8: $13
    ccf                                           ; $67e9: $3f
    nop                                           ; $67ea: $00
    nop                                           ; $67eb: $00
    ld e, a                                       ; $67ec: $5f
    ret nz                                        ; $67ed: $c0

    sbc $40                                       ; $67ee: $de $40
    inc a                                         ; $67f0: $3c
    ld bc, $00fa                                  ; $67f1: $01 $fa $00
    ld sp, hl                                     ; $67f4: $f9
    db $f4                                        ; $67f5: $f4
    di                                            ; $67f6: $f3
    pop hl                                        ; $67f7: $e1
    ld bc, $fffb                                  ; $67f8: $01 $fb $ff
    add b                                         ; $67fb: $80
    add b                                         ; $67fc: $80
    halt                                          ; $67fd: $76
    nop                                           ; $67fe: $00
    cpl                                           ; $67ff: $2f
    add hl, hl                                    ; $6800: $29
    inc bc                                        ; $6801: $03
    ret nc                                        ; $6802: $d0

    push af                                       ; $6803: $f5
    db $f4                                        ; $6804: $f4
    xor h                                         ; $6805: $ac
    nop                                           ; $6806: $00
    ld l, [hl]                                    ; $6807: $6e
    and e                                         ; $6808: $a3
    ld d, l                                       ; $6809: $55
    ld h, e                                       ; $680a: $63
    rra                                           ; $680b: $1f
    cp c                                          ; $680c: $b9
    add hl, sp                                    ; $680d: $39
    adc a                                         ; $680e: $8f
    nop                                           ; $680f: $00
    rrca                                          ; $6810: $0f
    ld d, a                                       ; $6811: $57
    daa                                           ; $6812: $27
    inc de                                        ; $6813: $13
    ld h, e                                       ; $6814: $63
    ld h, h                                       ; $6815: $64
    inc d                                         ; $6816: $14
    add [hl]                                      ; $6817: $86
    nop                                           ; $6818: $00
    ld [hl], $40                                  ; $6819: $36 $40
    ld b, $71                                     ; $681b: $06 $71
    dec b                                         ; $681d: $05
    adc a                                         ; $681e: $8f
    and b                                         ; $681f: $a0
    daa                                           ; $6820: $27
    nop                                           ; $6821: $00
    jr nz, jr_0ae_682d                            ; $6822: $20 $09

    jr jr_0ae_6872                                ; $6824: $18 $4c

    dec b                                         ; $6826: $05
    ld b, h                                       ; $6827: $44
    ld b, $03                                     ; $6828: $06 $03
    nop                                           ; $682a: $00
    ld h, $05                                     ; $682b: $26 $05

jr_0ae_682d:
    inc sp                                        ; $682d: $33
    inc bc                                        ; $682e: $03
    inc de                                        ; $682f: $13
    or d                                          ; $6830: $b2
    jr nz, jr_0ae_67e6                            ; $6831: $20 $b3

    nop                                           ; $6833: $00
    nop                                           ; $6834: $00
    or a                                          ; $6835: $b7
    nop                                           ; $6836: $00
    ld [hl], h                                    ; $6837: $74
    jp Jump_000_00ff                              ; $6838: $c3 $ff $00


    ld a, a                                       ; $683b: $7f
    nop                                           ; $683c: $00
    nop                                           ; $683d: $00
    ld a, h                                       ; $683e: $7c
    ret nz                                        ; $683f: $c0

    cp e                                          ; $6840: $bb
    add b                                         ; $6841: $80
    adc d                                         ; $6842: $8a
    ld b, h                                       ; $6843: $44
    ld hl, $7100                                  ; $6844: $21 $00 $71
    sbc a                                         ; $6847: $9f
    ccf                                           ; $6848: $3f
    sub d                                         ; $6849: $92
    ld e, $80                                     ; $684a: $1e $80
    ld bc, $0090                                  ; $684c: $01 $90 $00
    rra                                           ; $684f: $1f
    and b                                         ; $6850: $a0
    ccf                                           ; $6851: $3f
    jr nc, jr_0ae_685b                            ; $6852: $30 $07

    rst $08                                       ; $6854: $cf
    ccf                                           ; $6855: $3f
    sbc a                                         ; $6856: $9f
    nop                                           ; $6857: $00
    ld b, a                                       ; $6858: $47
    rra                                           ; $6859: $1f
    sbc a                                         ; $685a: $9f

jr_0ae_685b:
    rra                                           ; $685b: $1f
    ld e, [hl]                                    ; $685c: $5e
    sbc l                                         ; $685d: $9d
    ld b, e                                       ; $685e: $43
    sbc [hl]                                      ; $685f: $9e
    nop                                           ; $6860: $00
    ld b, c                                       ; $6861: $41

jr_0ae_6862:
    sbc h                                         ; $6862: $9c
    rra                                           ; $6863: $1f
    sbc b                                         ; $6864: $98
    ld sp, $bcc1                                  ; $6865: $31 $c1 $bc
    add c                                         ; $6868: $81
    nop                                           ; $6869: $00
    ld b, b                                       ; $686a: $40
    cp $83                                        ; $686b: $fe $83
    cp $e0                                        ; $686d: $fe $e0
    add e                                         ; $686f: $83
    ld e, [hl]                                    ; $6870: $5e
    ld b, c                                       ; $6871: $41

jr_0ae_6872:
    nop                                           ; $6872: $00
    ccf                                           ; $6873: $3f
    ld b, b                                       ; $6874: $40
    rra                                           ; $6875: $1f
    and e                                         ; $6876: $a3
    cp a                                          ; $6877: $bf
    add h                                         ; $6878: $84
    inc b                                         ; $6879: $04
    ret nz                                        ; $687a: $c0

    nop                                           ; $687b: $00
    ld [hl-], a                                   ; $687c: $32
    ccf                                           ; $687d: $3f
    jr nz, jr_0ae_688f                            ; $687e: $20 $0f

    ret z                                         ; $6880: $c8

    daa                                           ; $6881: $27
    rst $10                                       ; $6882: $d7
    rst $00                                       ; $6883: $c7
    nop                                           ; $6884: $00
    rlca                                          ; $6885: $07
    ccf                                           ; $6886: $3f
    ld sp, $f7f9                                  ; $6887: $31 $f9 $f7
    ld [hl], c                                    ; $688a: $71
    dec b                                         ; $688b: $05
    ld h, c                                       ; $688c: $61
    nop                                           ; $688d: $00
    dec c                                         ; $688e: $0d

jr_0ae_688f:
    ld h, e                                       ; $688f: $63
    dec bc                                        ; $6890: $0b
    ld h, e                                       ; $6891: $63
    dec bc                                        ; $6892: $0b
    sbc b                                         ; $6893: $98
    add e                                         ; $6894: $83
    sub b                                         ; $6895: $90
    nop                                           ; $6896: $00
    rlca                                          ; $6897: $07
    rst $00                                       ; $6898: $c7
    rla                                           ; $6899: $17
    rst $00                                       ; $689a: $c7
    rla                                           ; $689b: $17
    dec bc                                        ; $689c: $0b
    inc de                                        ; $689d: $13
    jp hl                                         ; $689e: $e9


    nop                                           ; $689f: $00
    ld [c], a                                     ; $68a0: $e2
    add sp, -$1b                                  ; $68a1: $e8 $e5
    ld a, [c]                                     ; $68a3: $f2
    db $f4                                        ; $68a4: $f4
    ld sp, hl                                     ; $68a5: $f9
    ld a, [$0001]                                 ; $68a6: $fa $01 $00
    ld hl, sp+$01                                 ; $68a9: $f8 $01
    ret z                                         ; $68ab: $c8

    jr nc, jr_0ae_6862                            ; $68ac: $30 $b4

    sub h                                         ; $68ae: $94
    rst $00                                       ; $68af: $c7
    ld d, b                                       ; $68b0: $50
    nop                                           ; $68b1: $00
    add $d0                                       ; $68b2: $c6 $d0
    add [hl]                                      ; $68b4: $86
    sub b                                         ; $68b5: $90
    rst $00                                       ; $68b6: $c7
    inc sp                                        ; $68b7: $33
    inc bc                                        ; $68b8: $03
    ld [hl], b                                    ; $68b9: $70

jr_0ae_68ba:
    nop                                           ; $68ba: $00
    inc bc                                        ; $68bb: $03
    cp b                                          ; $68bc: $b8
    add e                                         ; $68bd: $83
    add hl, de                                    ; $68be: $19
    add e                                         ; $68bf: $83
    adc b                                         ; $68c0: $88
    db $d3                                        ; $68c1: $d3
    inc b                                         ; $68c2: $04
    nop                                           ; $68c3: $00
    sbc c                                         ; $68c4: $99
    pop bc                                        ; $68c5: $c1
    cp [hl]                                       ; $68c6: $be
    add c                                         ; $68c7: $81
    cp $b0                                        ; $68c8: $fe $b0
    ld b, e                                       ; $68ca: $43
    pop hl                                        ; $68cb: $e1
    nop                                           ; $68cc: $00
    ld l, l                                       ; $68cd: $6d
    and a                                         ; $68ce: $a7
    sbc e                                         ; $68cf: $9b
    ld c, h                                       ; $68d0: $4c
    push hl                                       ; $68d1: $e5
    and [hl]                                      ; $68d2: $a6
    or b                                          ; $68d3: $b0
    jr nz, jr_0ae_68d6                            ; $68d4: $20 $00

jr_0ae_68d6:
    ei                                            ; $68d6: $fb
    db $db                                        ; $68d7: $db
    ld b, [hl]                                    ; $68d8: $46
    sub b                                         ; $68d9: $90
    xor a                                         ; $68da: $af
    rrca                                          ; $68db: $0f
    ld [hl], e                                    ; $68dc: $73
    rrca                                          ; $68dd: $0f
    nop                                           ; $68de: $00
    rst $30                                       ; $68df: $f7
    ld a, a                                       ; $68e0: $7f
    add a                                         ; $68e1: $87
    ccf                                           ; $68e2: $3f
    ld b, a                                       ; $68e3: $47
    ld hl, sp+$71                                 ; $68e4: $f8 $71
    db $fc                                        ; $68e6: $fc
    ld [bc], a                                    ; $68e7: $02
    ld hl, sp+$02                                 ; $68e8: $f8 $02
    cp $02                                        ; $68ea: $fe $02
    db $fc                                        ; $68ec: $fc
    ld [c], a                                     ; $68ed: $e2
    ld [bc], a                                    ; $68ee: $02
    nop                                           ; $68ef: $00
    db $fc                                        ; $68f0: $fc
    nop                                           ; $68f1: $00
    ld [c], a                                     ; $68f2: $e2
    ld hl, sp-$74                                 ; $68f3: $f8 $8c
    push bc                                       ; $68f5: $c5
    jr c, jr_0ae_68ba                             ; $68f6: $38 $c2

    ld a, $7e                                     ; $68f8: $3e $7e
    ld [$7f9e], sp                                ; $68fa: $08 $9e $7f
    ccf                                           ; $68fd: $3f
    ld h, b                                       ; $68fe: $60
    ld [bc], a                                    ; $68ff: $02
    nop                                           ; $6900: $00
    ld c, [hl]                                    ; $6901: $4e
    ld a, $4e                                     ; $6902: $3e $4e
    nop                                           ; $6904: $00
    ld a, $87                                     ; $6905: $3e $87
    scf                                           ; $6907: $37
    adc a                                         ; $6908: $8f
    cpl                                           ; $6909: $2f
    and b                                         ; $690a: $a0
    adc a                                         ; $690b: $8f
    ld h, b                                       ; $690c: $60
    ld [$400f], sp                                ; $690d: $08 $0f $40
    rra                                           ; $6910: $1f
    ld b, b                                       ; $6911: $40
    db $d3                                        ; $6912: $d3
    ld bc, $3f80                                  ; $6913: $01 $80 $3f
    ld [hl], c                                    ; $6916: $71
    ld bc, $21ed                                  ; $6917: $01 $ed $21
    sub l                                         ; $691a: $95
    nop                                           ; $691b: $00
    adc $fe                                       ; $691c: $ce $fe
    nop                                           ; $691e: $00
    ld [bc], a                                    ; $691f: $02
    ld [$7e80], sp                                ; $6920: $08 $80 $7e
    ld bc, $1900                                  ; $6923: $01 $00 $19
    ld b, e                                       ; $6926: $43
    add hl, bc                                    ; $6927: $09
    ld b, e                                       ; $6928: $43
    adc c                                         ; $6929: $89
    and c                                         ; $692a: $a1
    nop                                           ; $692b: $00
    add h                                         ; $692c: $84
    and c                                         ; $692d: $a1
    add b                                         ; $692e: $80
    sub b                                         ; $692f: $90
    jp nz, Jump_0ae_40c8                          ; $6930: $c2 $c8 $40

    ld c, h                                       ; $6933: $4c
    nop                                           ; $6934: $00
    ld d, b                                       ; $6935: $50
    ld b, h                                       ; $6936: $44
    ld b, b                                       ; $6937: $40
    di                                            ; $6938: $f3
    ccf                                           ; $6939: $3f
    cp h                                          ; $693a: $bc
    ccf                                           ; $693b: $3f
    cp h                                          ; $693c: $bc
    nop                                           ; $693d: $00
    add e                                         ; $693e: $83
    inc a                                         ; $693f: $3c
    add e                                         ; $6940: $83
    cp h                                          ; $6941: $bc
    and b                                         ; $6942: $a0
    sbc a                                         ; $6943: $9f
    add b                                         ; $6944: $80
    add a                                         ; $6945: $87
    nop                                           ; $6946: $00
    sub a                                         ; $6947: $97
    adc $3f                                       ; $6948: $ce $3f
    ld b, a                                       ; $694a: $47
    ccf                                           ; $694b: $3f
    add b                                         ; $694c: $80
    and b                                         ; $694d: $a0
    ccf                                           ; $694e: $3f
    nop                                           ; $694f: $00
    ld e, h                                       ; $6950: $5c
    jp $e8d7                                      ; $6951: $c3 $d7 $e8


    sub b                                         ; $6954: $90
    ldh [$85], a                                  ; $6955: $e0 $85
    and $00                                       ; $6957: $e6 $00
    rst $30                                       ; $6959: $f7
    add hl, bc                                    ; $695a: $09
    ld [$06f0], sp                                ; $695b: $08 $f0 $06
    ld a, [c]                                     ; $695e: $f2
    inc bc                                        ; $695f: $03
    rst $38                                       ; $6960: $ff
    nop                                           ; $6961: $00
    ld e, $e6                                     ; $6962: $1e $e6
    ld [c], a                                     ; $6964: $e2
    pop hl                                        ; $6965: $e1
    jr jr_0ae_697f                                ; $6966: $18 $17

    ld e, $1d                                     ; $6968: $1e $1d
    nop                                           ; $696a: $00
    ldh a, [rIF]                                  ; $696b: $f0 $0f
    ld a, [hl]                                    ; $696d: $7e
    ld a, $3c                                     ; $696e: $3e $3c
    dec e                                         ; $6970: $1d
    inc a                                         ; $6971: $3c
    ld hl, $1c00                                  ; $6972: $21 $00 $1c
    ld de, $8405                                  ; $6975: $11 $05 $84
    inc bc                                        ; $6978: $03
    and b                                         ; $6979: $a0
    ldh [$82], a                                  ; $697a: $e0 $82
    inc h                                         ; $697c: $24
    ldh a, [$82]                                  ; $697d: $f0 $82

jr_0ae_697f:
    inc sp                                        ; $697f: $33
    ld [bc], a                                    ; $6980: $02
    ccf                                           ; $6981: $3f
    ld a, a                                       ; $6982: $7f
    inc l                                         ; $6983: $2c
    ld bc, $007f                                  ; $6984: $01 $7f $00
    ld [bc], a                                    ; $6987: $02
    ld [hl], e                                    ; $6988: $73
    nop                                           ; $6989: $00
    inc c                                         ; $698a: $0c
    inc c                                         ; $698b: $0c
    inc e                                         ; $698c: $1c
    ld a, [de]                                    ; $698d: $1a
    and b                                         ; $698e: $a0
    ld l, d                                       ; $698f: $6a
    ld h, b                                       ; $6990: $60
    nop                                           ; $6991: $00
    ld h, [hl]                                    ; $6992: $66
    jr z, @+$25                                   ; $6993: $28 $23

    inc l                                         ; $6995: $2c
    ld hl, $3134                                  ; $6996: $21 $34 $31
    stop                                          ; $6999: $10 $00
    db $10                                        ; $699b: $10
    rra                                           ; $699c: $1f
    ret nz                                        ; $699d: $c0

    nop                                           ; $699e: $00
    ret nz                                        ; $699f: $c0

    nop                                           ; $69a0: $00
    nop                                           ; $69a1: $00
    ret nz                                        ; $69a2: $c0

    ld bc, $5160                                  ; $69a3: $01 $60 $51
    ld [hl], c                                    ; $69a6: $71
    ld h, c                                       ; $69a7: $61
    jr c, jr_0ae_6a1c                             ; $69a8: $38 $72

    ld c, $58                                     ; $69aa: $0e $58
    ld a, [bc]                                    ; $69ac: $0a
    add b                                         ; $69ad: $80
    call z, $7f0a                                 ; $69ae: $cc $0a $7f
    ld h, [hl]                                    ; $69b1: $66
    rst $08                                       ; $69b2: $cf
    ld [hl], $8d                                  ; $69b3: $36 $8d
    ld [hl], h                                    ; $69b5: $74
    call z, Call_000_3040                         ; $69b6: $cc $40 $30

jr_0ae_69b9:
    db $10                                        ; $69b9: $10

jr_0ae_69ba:
    jr @+$01                                      ; $69ba: $18 $ff

    nop                                           ; $69bc: $00
    rra                                           ; $69bd: $1f
    ldh [rNR24], a                                ; $69be: $e0 $19
    add sp, $08                                   ; $69c0: $e8 $08
    ld [$11f1], a                                 ; $69c2: $ea $f1 $11
    ld [c], a                                     ; $69c5: $e2
    db $10                                        ; $69c6: $10
    jr z, jr_0ae_69b9                             ; $69c7: $28 $f0

    ld d, [hl]                                    ; $69c9: $56
    ldh [rP1], a                                  ; $69ca: $e0 $00
    inc h                                         ; $69cc: $24
    inc d                                         ; $69cd: $14
    ret nc                                        ; $69ce: $d0

    ld l, h                                       ; $69cf: $6c
    ldh [$08], a                                  ; $69d0: $e0 $08
    inc bc                                        ; $69d2: $03
    ld hl, sp+$21                                 ; $69d3: $f8 $21
    inc bc                                        ; $69d5: $03
    inc bc                                        ; $69d6: $03
    jp nz, Jump_000_0c02                          ; $69d7: $c2 $02 $0c

    push hl                                       ; $69da: $e5
    nop                                           ; $69db: $00
    di                                            ; $69dc: $f3
    inc b                                         ; $69dd: $04
    ld c, e                                       ; $69de: $4b
    db $10                                        ; $69df: $10
    inc bc                                        ; $69e0: $03
    ld b, d                                       ; $69e1: $42
    ld [bc], a                                    ; $69e2: $02
    ld h, b                                       ; $69e3: $60
    nop                                           ; $69e4: $00
    ld bc, $23f8                                  ; $69e5: $01 $f8 $23
    ld [$01fe], sp                                ; $69e8: $08 $fe $01
    db $fc                                        ; $69eb: $fc
    inc bc                                        ; $69ec: $03
    ld hl, sp+$00                                 ; $69ed: $f8 $00
    ld b, $e0                                     ; $69ef: $06 $e0
    pop bc                                        ; $69f1: $c1
    call c, $e700                                 ; $69f2: $dc $00 $e7
    jr jr_0ae_69ba                                ; $69f5: $18 $c3

    inc c                                         ; $69f7: $0c
    inc a                                         ; $69f8: $3c
    add c                                         ; $69f9: $81
    ld h, [hl]                                    ; $69fa: $66
    nop                                           ; $69fb: $00
    ld b, $00                                     ; $69fc: $06 $00
    dec sp                                        ; $69fe: $3b
    jr nc, @+$01                                  ; $69ff: $30 $ff

    nop                                           ; $6a01: $00
    nop                                           ; $6a02: $00
    ld a, a                                       ; $6a03: $7f
    nop                                           ; $6a04: $00

jr_0ae_6a05:
    add b                                         ; $6a05: $80
    ccf                                           ; $6a06: $3f
    ret nz                                        ; $6a07: $c0

    rra                                           ; $6a08: $1f
    ld h, b                                       ; $6a09: $60
    ld h, b                                       ; $6a0a: $60
    jr c, @-$66                                   ; $6a0b: $38 $98

    jr z, jr_0ae_6a5f                             ; $6a0d: $28 $50

    ld hl, sp+$58                                 ; $6a0f: $f8 $58
    ld e, b                                       ; $6a11: $58
    ld e, h                                       ; $6a12: $5c
    jr nz, jr_0ae_6a05                            ; $6a13: $20 $f0

    ld c, $e0                                     ; $6a15: $0e $e0
    nop                                           ; $6a17: $00
    add hl, de                                    ; $6a18: $19
    jr jr_0ae_6a4e                                ; $6a19: $18 $33

    inc [hl]                                      ; $6a1b: $34

jr_0ae_6a1c:
    jp hl                                         ; $6a1c: $e9


    db $e3                                        ; $6a1d: $e3
    add e                                         ; $6a1e: $83
    or b                                          ; $6a1f: $b0
    nop                                           ; $6a20: $00
    rrca                                          ; $6a21: $0f
    ld h, b                                       ; $6a22: $60
    rrca                                          ; $6a23: $0f
    ret nz                                        ; $6a24: $c0

    rra                                           ; $6a25: $1f
    jr nc, jr_0ae_6a77                            ; $6a26: $30 $4f

    ld [hl], b                                    ; $6a28: $70
    ld bc, $b037                                  ; $6a29: $01 $37 $b0
    sub b                                         ; $6a2c: $90
    ret nc                                        ; $6a2d: $d0

    or $c0                                        ; $6a2e: $f6 $c0
    rst $38                                       ; $6a30: $ff
    inc hl                                        ; $6a31: $23
    nop                                           ; $6a32: $00
    ld b, b                                       ; $6a33: $40
    ld [bc], a                                    ; $6a34: $02
    ld a, [hl]                                    ; $6a35: $7e
    nop                                           ; $6a36: $00
    ld hl, sp+$01                                 ; $6a37: $f8 $01
    or $06                                        ; $6a39: $f6 $06
    rra                                           ; $6a3b: $1f
    ret nc                                        ; $6a3c: $d0

    nop                                           ; $6a3d: $00
    ccf                                           ; $6a3e: $3f
    nop                                           ; $6a3f: $00
    inc h                                         ; $6a40: $24
    inc e                                         ; $6a41: $1c
    ld d, $ee                                     ; $6a42: $16 $ee
    db $d3                                        ; $6a44: $d3
    dec hl                                        ; $6a45: $2b
    nop                                           ; $6a46: $00
    or b                                          ; $6a47: $b0

jr_0ae_6a48:
    ld c, h                                       ; $6a48: $4c
    adc a                                         ; $6a49: $8f
    cp d                                          ; $6a4a: $ba
    dec c                                         ; $6a4b: $0d
    jr c, jr_0ae_6aad                             ; $6a4c: $38 $5f

jr_0ae_6a4e:
    ld a, c                                       ; $6a4e: $79
    jr nz, jr_0ae_6a98                            ; $6a4f: $20 $47

    ld h, b                                       ; $6a51: $60
    ld a, h                                       ; $6a52: $7c
    jr nz, jr_0ae_6a64                            ; $6a53: $20 $0f

    ld [hl], a                                    ; $6a55: $77
    rlca                                          ; $6a56: $07
    dec de                                        ; $6a57: $1b
    add e                                         ; $6a58: $83
    ld c, $e0                                     ; $6a59: $0e $e0
    ld c, h                                       ; $6a5b: $4c
    and b                                         ; $6a5c: $a0
    rst $20                                       ; $6a5d: $e7
    ret nc                                        ; $6a5e: $d0

jr_0ae_6a5f:
    ld c, b                                       ; $6a5f: $48
    sbc b                                         ; $6a60: $98
    ld [$185c], sp                                ; $6a61: $08 $5c $18

jr_0ae_6a64:
    ld bc, $1808                                  ; $6a64: $01 $08 $18
    ld b, $36                                     ; $6a67: $06 $36
    ld h, e                                       ; $6a69: $63
    ld e, c                                       ; $6a6a: $59
    nop                                           ; $6a6b: $00
    cpl                                           ; $6a6c: $2f
    rrca                                          ; $6a6d: $0f
    adc h                                         ; $6a6e: $8c
    nop                                           ; $6a6f: $00
    sub e                                         ; $6a70: $93
    rrca                                          ; $6a71: $0f
    ld [hl], d                                    ; $6a72: $72
    rrca                                          ; $6a73: $0f
    pop af                                        ; $6a74: $f1
    ld hl, sp-$79                                 ; $6a75: $f8 $87

jr_0ae_6a77:
    ld a, b                                       ; $6a77: $78
    nop                                           ; $6a78: $00
    ccf                                           ; $6a79: $3f
    ccf                                           ; $6a7a: $3f
    and b                                         ; $6a7b: $a0
    dec hl                                        ; $6a7c: $2b

jr_0ae_6a7d:
    db $ed                                        ; $6a7d: $ed
    jr nc, jr_0ae_6a48                            ; $6a7e: $30 $c8

    ld h, b                                       ; $6a80: $60
    nop                                           ; $6a81: $00
    cp h                                          ; $6a82: $bc
    ld [hl+], a                                   ; $6a83: $22
    add hl, hl                                    ; $6a84: $29
    call nz, $c4f2                                ; $6a85: $c4 $f2 $c4
    ld hl, sp-$3c                                 ; $6a88: $f8 $c4
    nop                                           ; $6a8a: $00
    ret c                                         ; $6a8b: $d8

    ret nz                                        ; $6a8c: $c0

    adc a                                         ; $6a8d: $8f
    ld b, [hl]                                    ; $6a8e: $46
    ld bc, $0dc3                                  ; $6a8f: $01 $c3 $0d
    sbc [hl]                                      ; $6a92: $9e
    nop                                           ; $6a93: $00
    rra                                           ; $6a94: $1f
    ld d, b                                       ; $6a95: $50
    ld a, [de]                                    ; $6a96: $1a
    inc e                                         ; $6a97: $1c

jr_0ae_6a98:
    ld a, l                                       ; $6a98: $7d
    ld bc, $8320                                  ; $6a99: $01 $20 $83
    nop                                           ; $6a9c: $00
    adc b                                         ; $6a9d: $88
    ld [bc], a                                    ; $6a9e: $02
    ret c                                         ; $6a9f: $d8

    sub h                                         ; $6aa0: $94
    ld d, l                                       ; $6aa1: $55
    add c                                         ; $6aa2: $81
    ld b, c                                       ; $6aa3: $41
    inc de                                        ; $6aa4: $13
    nop                                           ; $6aa5: $00
    ld b, c                                       ; $6aa6: $41
    add hl, de                                    ; $6aa7: $19
    ret nc                                        ; $6aa8: $d0

    adc h                                         ; $6aa9: $8c
    jr z, @+$18                                   ; $6aaa: $28 $16

    inc h                                         ; $6aac: $24

jr_0ae_6aad:
    ld h, b                                       ; $6aad: $60
    nop                                           ; $6aae: $00
    ld l, c                                       ; $6aaf: $69
    inc e                                         ; $6ab0: $1c
    ret nz                                        ; $6ab1: $c0

    cp c                                          ; $6ab2: $b9
    add a                                         ; $6ab3: $87
    ld a, a                                       ; $6ab4: $7f
    ld b, [hl]                                    ; $6ab5: $46
    ret nc                                        ; $6ab6: $d0

    nop                                           ; $6ab7: $00
    ld [hl], c                                    ; $6ab8: $71
    sbc [hl]                                      ; $6ab9: $9e
    ld [de], a                                    ; $6aba: $12
    rlca                                          ; $6abb: $07
    pop de                                        ; $6abc: $d1
    ld [hl+], a                                   ; $6abd: $22
    ld c, l                                       ; $6abe: $4d
    inc bc                                        ; $6abf: $03
    ld bc, $01f3                                  ; $6ac0: $01 $f3 $01
    ret nc                                        ; $6ac3: $d0

    inc c                                         ; $6ac4: $0c
    inc c                                         ; $6ac5: $0c
    sub $23                                       ; $6ac6: $d6 $23
    ld a, h                                       ; $6ac8: $7c
    ld [$7000], sp                                ; $6ac9: $08 $00 $70
    rlca                                          ; $6acc: $07
    sub b                                         ; $6acd: $90
    sub e                                         ; $6ace: $93
    inc b                                         ; $6acf: $04
    ld a, b                                       ; $6ad0: $78
    inc e                                         ; $6ad1: $1c
    ld h, b                                       ; $6ad2: $60
    nop                                           ; $6ad3: $00
    jr c, jr_0ae_6ad6                             ; $6ad4: $38 $00

jr_0ae_6ad6:
    inc de                                        ; $6ad6: $13
    dec c                                         ; $6ad7: $0d
    inc hl                                        ; $6ad8: $23
    dec bc                                        ; $6ad9: $0b
    ld sp, $0005                                  ; $6ada: $31 $05 $00
    db $10                                        ; $6add: $10
    rlca                                          ; $6ade: $07
    rlca                                          ; $6adf: $07
    ld de, $1a03                                  ; $6ae0: $11 $03 $1a
    add hl, bc                                    ; $6ae3: $09
    pop hl                                        ; $6ae4: $e1
    nop                                           ; $6ae5: $00
    ld [$e3e2], sp                                ; $6ae6: $08 $e2 $e3
    add sp, $07                                   ; $6ae9: $e8 $07
    ld sp, hl                                     ; $6aeb: $f9
    pop hl                                        ; $6aec: $e1
    rst $18                                       ; $6aed: $df
    nop                                           ; $6aee: $00
    ld [hl], b                                    ; $6aef: $70
    ld a, [hl+]                                   ; $6af0: $2a
    ld b, b                                       ; $6af1: $40
    add b                                         ; $6af2: $80
    ld [c], a                                     ; $6af3: $e2
    sbc h                                         ; $6af4: $9c
    ldh [$2c], a                                  ; $6af5: $e0 $2c
    nop                                           ; $6af7: $00
    ld a, b                                       ; $6af8: $78
    jr jr_0ae_6a7d                                ; $6af9: $18 $82

    inc de                                        ; $6afb: $13
    inc hl                                        ; $6afc: $23
    sbc l                                         ; $6afd: $9d
    ld [bc], a                                    ; $6afe: $02
    inc a                                         ; $6aff: $3c
    ld bc, $bce0                                  ; $6b00: $01 $e0 $bc
    ldh [$98], a                                  ; $6b03: $e0 $98
    ret nz                                        ; $6b05: $c0

    or b                                          ; $6b06: $b0
    sub b                                         ; $6b07: $90
    db $f4                                        ; $6b08: $f4
    nop                                           ; $6b09: $00
    nop                                           ; $6b0a: $00
    ld e, $c0                                     ; $6b0b: $1e $c0
    inc de                                        ; $6b0d: $13
    dec c                                         ; $6b0e: $0d
    ld hl, $311e                                  ; $6b0f: $21 $1e $31
    ld l, $00                                     ; $6b12: $2e $00
    jr c, jr_0ae_6b3c                             ; $6b14: $38 $26

    inc e                                         ; $6b16: $1c
    ld [$0201], sp                                ; $6b17: $08 $01 $02
    inc bc                                        ; $6b1a: $03
    ld b, $00                                     ; $6b1b: $06 $00
    inc c                                         ; $6b1d: $0c
    rlca                                          ; $6b1e: $07
    ld h, b                                       ; $6b1f: $60
    inc bc                                        ; $6b20: $03
    ld c, h                                       ; $6b21: $4c
    ld c, $15                                     ; $6b22: $0e $15

jr_0ae_6b24:
    pop de                                        ; $6b24: $d1
    nop                                           ; $6b25: $00
    dec b                                         ; $6b26: $05
    pop hl                                        ; $6b27: $e1
    ld b, $60                                     ; $6b28: $06 $60
    add e                                         ; $6b2a: $83
    or l                                          ; $6b2b: $b5
    rst $20                                       ; $6b2c: $e7
    and h                                         ; $6b2d: $a4
    nop                                           ; $6b2e: $00

jr_0ae_6b2f:
    ld a, [c]                                     ; $6b2f: $f2
    ld d, e                                       ; $6b30: $53
    ld b, e                                       ; $6b31: $43
    push bc                                       ; $6b32: $c5
    ld d, e                                       ; $6b33: $53
    db $ed                                        ; $6b34: $ed
    db $10                                        ; $6b35: $10
    and [hl]                                      ; $6b36: $a6
    nop                                           ; $6b37: $00
    xor b                                         ; $6b38: $a8
    ld [hl], d                                    ; $6b39: $72
    dec de                                        ; $6b3a: $1b
    ld h, b                                       ; $6b3b: $60

jr_0ae_6b3c:
    ld c, c                                       ; $6b3c: $49
    jr z, jr_0ae_6b2f                             ; $6b3d: $28 $f0

    ld [hl], b                                    ; $6b3f: $70
    nop                                           ; $6b40: $00
    sub h                                         ; $6b41: $94
    sbc c                                         ; $6b42: $99
    cp [hl]                                       ; $6b43: $be
    jr nz, jr_0ae_6b24                            ; $6b44: $20 $de

    ld e, [hl]                                    ; $6b46: $5e
    rlca                                          ; $6b47: $07
    inc bc                                        ; $6b48: $03
    nop                                           ; $6b49: $00
    rrca                                          ; $6b4a: $0f
    rrca                                          ; $6b4b: $0f
    sbc c                                         ; $6b4c: $99
    add hl, de                                    ; $6b4d: $19
    or b                                          ; $6b4e: $b0
    sub b                                         ; $6b4f: $90
    ld c, a                                       ; $6b50: $4f
    xor a                                         ; $6b51: $af
    nop                                           ; $6b52: $00
    ld e, b                                       ; $6b53: $58
    sbc [hl]                                      ; $6b54: $9e
    pop hl                                        ; $6b55: $e1
    db $ec                                        ; $6b56: $ec
    inc b                                         ; $6b57: $04
    db $f4                                        ; $6b58: $f4
    dec b                                         ; $6b59: $05
    db $f4                                        ; $6b5a: $f4
    nop                                           ; $6b5b: $00
    ld b, $05                                     ; $6b5c: $06 $05
    ld [bc], a                                    ; $6b5e: $02
    ld [bc], a                                    ; $6b5f: $02
    ld [bc], a                                    ; $6b60: $02
    ld hl, sp+$03                                 ; $6b61: $f8 $03
    ld hl, sp+$00                                 ; $6b63: $f8 $00
    ld bc, $e4fc                                  ; $6b65: $01 $fc $e4
    daa                                           ; $6b68: $27
    inc bc                                        ; $6b69: $03
    add a                                         ; $6b6a: $87
    add e                                         ; $6b6b: $83
    rlca                                          ; $6b6c: $07
    nop                                           ; $6b6d: $00
    adc h                                         ; $6b6e: $8c
    rrca                                          ; $6b6f: $0f
    ld b, [hl]                                    ; $6b70: $46
    ld b, $c0                                     ; $6b71: $06 $c0
    add b                                         ; $6b73: $80
    ld b, c                                       ; $6b74: $41
    ld e, b                                       ; $6b75: $58
    ld bc, $3801                                  ; $6b76: $01 $01 $38
    dec de                                        ; $6b79: $1b
    jp $93a0                                      ; $6b7a: $c3 $a0 $93


    sbc c                                         ; $6b7d: $99
    push hl                                       ; $6b7e: $e5

jr_0ae_6b7f:
    ld bc, $6600                                  ; $6b7f: $01 $00 $66
    ld h, c                                       ; $6b82: $61
    dec bc                                        ; $6b83: $0b
    db $e3                                        ; $6b84: $e3
    rra                                           ; $6b85: $1f
    jp $bfc0                                      ; $6b86: $c3 $c0 $bf


    nop                                           ; $6b89: $00
    sub a                                         ; $6b8a: $97
    sbc b                                         ; $6b8b: $98
    cpl                                           ; $6b8c: $2f
    jr nc, @+$2a                                  ; $6b8d: $30 $28

    scf                                           ; $6b8f: $37
    dec bc                                        ; $6b90: $0b
    inc d                                         ; $6b91: $14
    nop                                           ; $6b92: $00
    add b                                         ; $6b93: $80
    ld b, b                                       ; $6b94: $40
    ret nz                                        ; $6b95: $c0

    jp hl                                         ; $6b96: $e9


    ld [de], a                                    ; $6b97: $12
    sbc $42                                       ; $6b98: $de $42
    add c                                         ; $6b9a: $81
    nop                                           ; $6b9b: $00
    ld [hl], b                                    ; $6b9c: $70
    or b                                          ; $6b9d: $b0
    ld c, $c2                                     ; $6b9e: $0e $c2
    pop af                                        ; $6ba0: $f1
    and $c0                                       ; $6ba1: $e6 $c0
    call z, $3800                                 ; $6ba3: $cc $00 $38
    daa                                           ; $6ba6: $27
    ld sp, hl                                     ; $6ba7: $f9
    rlca                                          ; $6ba8: $07
    ld a, [hl]                                    ; $6ba9: $7e
    ld [bc], a                                    ; $6baa: $02
    add hl, de                                    ; $6bab: $19
    add c                                         ; $6bac: $81
    nop                                           ; $6bad: $00
    cp b                                          ; $6bae: $b8
    ld e, c                                       ; $6baf: $59
    inc a                                         ; $6bb0: $3c
    ld hl, $b1f8                                  ; $6bb1: $21 $f8 $b1
    nop                                           ; $6bb4: $00
    ld bc, $7200                                  ; $6bb5: $01 $00 $72
    inc bc                                        ; $6bb8: $03
    ld [hl], d                                    ; $6bb9: $72
    ld [bc], a                                    ; $6bba: $02
    jr nc, @-$5e                                  ; $6bbb: $30 $a0

    jr nc, jr_0ae_6b7f                            ; $6bbd: $30 $c0

    nop                                           ; $6bbf: $00
    ld e, [hl]                                    ; $6bc0: $5e
    add b                                         ; $6bc1: $80
    ld hl, $8081                                  ; $6bc2: $21 $81 $80
    rrca                                          ; $6bc5: $0f
    jr nz, @+$31                                  ; $6bc6: $20 $2f

    nop                                           ; $6bc8: $00
    ld b, b                                       ; $6bc9: $40
    rra                                           ; $6bca: $1f
    ld b, b                                       ; $6bcb: $40
    rra                                           ; $6bcc: $1f
    ret nz                                        ; $6bcd: $c0

    rra                                           ; $6bce: $1f
    add b                                         ; $6bcf: $80
    ccf                                           ; $6bd0: $3f
    ld bc, $fc01                                  ; $6bd1: $01 $01 $fc
    ld bc, $00fc                                  ; $6bd4: $01 $fc $00
    cp $fe                                        ; $6bd7: $fe $fe
    cp c                                          ; $6bd9: $b9
    ld bc, $fe40                                  ; $6bda: $01 $40 $fe
    ld hl, sp+$01                                 ; $6bdd: $f8 $01
    nop                                           ; $6bdf: $00
    nop                                           ; $6be0: $00
    ld hl, $de3c                                  ; $6be1: $21 $3c $de
    inc a                                         ; $6be4: $3c
    nop                                           ; $6be5: $00
    ld e, h                                       ; $6be6: $5c
    ld a, [hl]                                    ; $6be7: $7e
    ld e, $60                                     ; $6be8: $1e $60
    or e                                          ; $6bea: $b3
    ret nz                                        ; $6beb: $c0

    add d                                         ; $6bec: $82
    ld [hl], e                                    ; $6bed: $73
    nop                                           ; $6bee: $00
    ld b, d                                       ; $6bef: $42
    ld [hl-], a                                   ; $6bf0: $32
    ld d, b                                       ; $6bf1: $50
    ld b, a                                       ; $6bf2: $47

jr_0ae_6bf3:
    add b                                         ; $6bf3: $80
    cp a                                          ; $6bf4: $bf
    ccf                                           ; $6bf5: $3f
    jr nz, jr_0ae_6bf8                            ; $6bf6: $20 $00

jr_0ae_6bf8:
    cpl                                           ; $6bf8: $2f
    jp hl                                         ; $6bf9: $e9


    db $10                                        ; $6bfa: $10
    ldh [$39], a                                  ; $6bfb: $e0 $39
    ld bc, $c31f                                  ; $6bfd: $01 $1f $c3
    nop                                           ; $6c00: $00
    dec e                                         ; $6c01: $1d
    ld b, c                                       ; $6c02: $41
    inc bc                                        ; $6c03: $03
    db $fd                                        ; $6c04: $fd
    sub h                                         ; $6c05: $94
    inc d                                         ; $6c06: $14
    ld c, [hl]                                    ; $6c07: $4e
    jr z, jr_0ae_6c0e                             ; $6c08: $28 $04

    dec bc                                        ; $6c0a: $0b
    add sp, -$59                                  ; $6c0b: $e8 $a7
    add b                                         ; $6c0d: $80

jr_0ae_6c0e:
    push af                                       ; $6c0e: $f5
    ld l, c                                       ; $6c0f: $69
    ld [bc], a                                    ; $6c10: $02
    and h                                         ; $6c11: $a4
    ld [bc], a                                    ; $6c12: $02
    nop                                           ; $6c13: $00
    nop                                           ; $6c14: $00
    nop                                           ; $6c15: $00
    and e                                         ; $6c16: $a3
    ld b, e                                       ; $6c17: $43
    jr z, jr_0ae_6c2a                             ; $6c18: $28 $10

    adc l                                         ; $6c1a: $8d
    adc h                                         ; $6c1b: $8c
    nop                                           ; $6c1c: $00
    ldh a, [$33]                                  ; $6c1d: $f0 $33
    or $0f                                        ; $6c1f: $f6 $0f
    ret nz                                        ; $6c21: $c0

    nop                                           ; $6c22: $00
    rlca                                          ; $6c23: $07
    rst $20                                       ; $6c24: $e7
    nop                                           ; $6c25: $00
    ld [bc], a                                    ; $6c26: $02
    ld hl, sp-$3a                                 ; $6c27: $f8 $c6
    ret nz                                        ; $6c29: $c0

jr_0ae_6c2a:
    ld e, h                                       ; $6c2a: $5c
    ld b, c                                       ; $6c2b: $41
    ld bc, $003c                                  ; $6c2c: $01 $3c $00
    and c                                         ; $6c2f: $a1
    xor h                                         ; $6c30: $ac
    ld sp, $2309                                  ; $6c31: $31 $09 $23
    ld c, $b1                                     ; $6c34: $0e $b1
    sub d                                         ; $6c36: $92
    ld bc, $a4e2                                  ; $6c37: $01 $e2 $a4
    add b                                         ; $6c3a: $80
    ccf                                           ; $6c3b: $3f
    add b                                         ; $6c3c: $80
    ccf                                           ; $6c3d: $3f
    ld a, a                                       ; $6c3e: $7f
    ld d, b                                       ; $6c3f: $50
    ld [bc], a                                    ; $6c40: $02
    add h                                         ; $6c41: $84
    inc b                                         ; $6c42: $04
    ld [$7f80], sp                                ; $6c43: $08 $80 $7f
    ret nz                                        ; $6c46: $c0

    rst $18                                       ; $6c47: $df
    and b                                         ; $6c48: $a0
    ld l, d                                       ; $6c49: $6a
    jr nc, jr_0ae_6c6d                            ; $6c4a: $30 $21

    nop                                           ; $6c4c: $00
    db $10                                        ; $6c4d: $10
    jr c, jr_0ae_6c68                             ; $6c4e: $38 $18

    nop                                           ; $6c50: $00
    jr z, jr_0ae_6bf3                             ; $6c51: $28 $a0

    db $10                                        ; $6c53: $10
    ret nz                                        ; $6c54: $c0

    nop                                           ; $6c55: $00
    rra                                           ; $6c56: $1f
    ret nz                                        ; $6c57: $c0

    nop                                           ; $6c58: $00
    ret nz                                        ; $6c59: $c0

    nop                                           ; $6c5a: $00

jr_0ae_6c5b:
    nop                                           ; $6c5b: $00
    inc bc                                        ; $6c5c: $03
    pop hl                                        ; $6c5d: $e1
    rlca                                          ; $6c5e: $07
    inc bc                                        ; $6c5f: $03
    ei                                            ; $6c60: $fb
    rlca                                          ; $6c61: $07
    inc de                                        ; $6c62: $13
    add sp, -$08                                  ; $6c63: $e8 $f8
    ld bc, $088e                                  ; $6c65: $01 $8e $08

jr_0ae_6c68:
    cp $59                                        ; $6c68: $fe $59
    sbc b                                         ; $6c6a: $98
    sbc d                                         ; $6c6b: $9a
    ld a, [bc]                                    ; $6c6c: $0a

jr_0ae_6c6d:
    db $fc                                        ; $6c6d: $fc
    dec b                                         ; $6c6e: $05
    jr jr_0ae_6c99                                ; $6c6f: $18 $28

    db $10                                        ; $6c71: $10
    jr jr_0ae_6c5b                                ; $6c72: $18 $e7

    daa                                           ; $6c74: $27
    ldh a, [rP1]                                  ; $6c75: $f0 $00
    inc b                                         ; $6c77: $04
    dec b                                         ; $6c78: $05
    pop af                                        ; $6c79: $f1
    dec c                                         ; $6c7a: $0d
    pop hl                                        ; $6c7b: $e1
    ld [$f803], sp                                ; $6c7c: $08 $03 $f8
    jr nz, jr_0ae_6c84                            ; $6c7f: $20 $03

    inc bc                                        ; $6c81: $03
    cp d                                          ; $6c82: $ba
    ld [bc], a                                    ; $6c83: $02

jr_0ae_6c84:
    sbc a                                         ; $6c84: $9f
    add b                                         ; $6c85: $80
    cpl                                           ; $6c86: $2f
    ldh [$8f], a                                  ; $6c87: $e0 $8f
    ld b, b                                       ; $6c89: $40
    jr nz, jr_0ae_6cc8                            ; $6c8a: $20 $3c

    jr c, @+$12                                   ; $6c8c: $38 $10

    inc bc                                        ; $6c8e: $03
    rst $00                                       ; $6c8f: $c7
    ld [bc], a                                    ; $6c90: $02
    nop                                           ; $6c91: $00
    nop                                           ; $6c92: $00
    nop                                           ; $6c93: $00
    ld a, a                                       ; $6c94: $7f
    ld a, a                                       ; $6c95: $7f
    ld b, a                                       ; $6c96: $47
    ld a, c                                       ; $6c97: $79
    rlca                                          ; $6c98: $07

jr_0ae_6c99:
    ld a, e                                       ; $6c99: $7b
    nop                                           ; $6c9a: $00
    nop                                           ; $6c9b: $00
    rrca                                          ; $6c9c: $0f
    ld b, $09                                     ; $6c9d: $06 $09
    rlca                                          ; $6c9f: $07
    ld c, $07                                     ; $6ca0: $0e $07
    ld c, $00                                     ; $6ca2: $0e $00
    db $f4                                        ; $6ca4: $f4
    ld a, [c]                                     ; $6ca5: $f2
    add hl, bc                                    ; $6ca6: $09
    ld a, [bc]                                    ; $6ca7: $0a
    inc c                                         ; $6ca8: $0c
    dec c                                         ; $6ca9: $0d
    add b                                         ; $6caa: $80
    stop                                          ; $6cab: $10 $00
    call z, Call_000_0f0e                         ; $6cad: $cc $0e $0f
    daa                                           ; $6cb0: $27
    rlca                                          ; $6cb1: $07
    pop bc                                        ; $6cb2: $c1
    ld h, e                                       ; $6cb3: $63
    add $00                                       ; $6cb4: $c6 $00
    inc e                                         ; $6cb6: $1c
    scf                                           ; $6cb7: $37
    adc b                                         ; $6cb8: $88
    ret nz                                        ; $6cb9: $c0

    ld l, b                                       ; $6cba: $68
    ret z                                         ; $6cbb: $c8

    ld b, e                                       ; $6cbc: $43
    jr z, jr_0ae_6cbf                             ; $6cbd: $28 $00

jr_0ae_6cbf:
    inc hl                                        ; $6cbf: $23
    dec bc                                        ; $6cc0: $0b
    ld c, $04                                     ; $6cc1: $0e $04
    dec c                                         ; $6cc3: $0d
    pop bc                                        ; $6cc4: $c1
    dec c                                         ; $6cc5: $0d
    jp hl                                         ; $6cc6: $e9


    nop                                           ; $6cc7: $00

jr_0ae_6cc8:
    ld e, h                                       ; $6cc8: $5c
    inc e                                         ; $6cc9: $1c
    ld c, $6e                                     ; $6cca: $0e $6e
    sub a                                         ; $6ccc: $97
    and [hl]                                      ; $6ccd: $a6
    add a                                         ; $6cce: $87
    jr nz, jr_0ae_6cd1                            ; $6ccf: $20 $00

jr_0ae_6cd1:
    add e                                         ; $6cd1: $83
    db $10                                        ; $6cd2: $10
    ldh [$c0], a                                  ; $6cd3: $e0 $c0
    inc e                                         ; $6cd5: $1c
    db $e4                                        ; $6cd6: $e4
    rlca                                          ; $6cd7: $07
    ld sp, hl                                     ; $6cd8: $f9
    ld b, b                                       ; $6cd9: $40
    nop                                           ; $6cda: $00
    ld bc, $4010                                  ; $6cdb: $01 $10 $40
    add b                                         ; $6cde: $80
    ret nz                                        ; $6cdf: $c0

    jr nz, jr_0ae_6d12                            ; $6ce0: $20 $30

    ret nc                                        ; $6ce2: $d0

    nop                                           ; $6ce3: $00
    ld a, h                                       ; $6ce4: $7c
    nop                                           ; $6ce5: $00

jr_0ae_6ce6:
    dec c                                         ; $6ce6: $0d
    inc sp                                        ; $6ce7: $33
    rst $38                                       ; $6ce8: $ff
    nop                                           ; $6ce9: $00
    cp a                                          ; $6cea: $bf
    nop                                           ; $6ceb: $00
    nop                                           ; $6cec: $00
    jr nz, @-$3f                                  ; $6ced: $20 $bf

    ld h, b                                       ; $6cef: $60
    ccf                                           ; $6cf0: $3f
    jr nz, jr_0ae_6d33                            ; $6cf1: $20 $40

    add b                                         ; $6cf3: $80
    ldh [$0c], a                                  ; $6cf4: $e0 $0c
    ret nz                                        ; $6cf6: $c0

    ldh [$c0], a                                  ; $6cf7: $e0 $c0
    ld h, b                                       ; $6cf9: $60
    jr nz, jr_0ae_6d14                            ; $6cfa: $20 $18

    ld b, $38                                     ; $6cfc: $06 $38
    rlca                                          ; $6cfe: $07
    ld c, $00                                     ; $6cff: $0e $00
    ld [$0c0f], sp                                ; $6d01: $08 $0f $0c
    dec bc                                        ; $6d04: $0b
    ld hl, sp-$06                                 ; $6d05: $f8 $fa
    ld sp, hl                                     ; $6d07: $f9
    ld hl, sp+$00                                 ; $6d08: $f8 $00
    ld bc, $03f8                                  ; $6d0a: $01 $f8 $03
    rst $30                                       ; $6d0d: $f7
    ld bc, $6307                                  ; $6d0e: $01 $07 $63
    ld [hl], h                                    ; $6d11: $74

jr_0ae_6d12:
    nop                                           ; $6d12: $00
    add hl, bc                                    ; $6d13: $09

jr_0ae_6d14:
    add hl, de                                    ; $6d14: $19
    inc c                                         ; $6d15: $0c
    ld [hl], $61                                  ; $6d16: $36 $61
    di                                            ; $6d18: $f3
    add c                                         ; $6d19: $81
    nop                                           ; $6d1a: $00
    nop                                           ; $6d1b: $00
    jr c, jr_0ae_6ce6                             ; $6d1c: $38 $c8

    and $06                                       ; $6d1e: $e6 $06
    adc [hl]                                      ; $6d20: $8e
    ld b, $05                                     ; $6d21: $06 $05
    pop af                                        ; $6d23: $f1
    nop                                           ; $6d24: $00
    sbc b                                         ; $6d25: $98
    ld [hl], b                                    ; $6d26: $70
    ld c, h                                       ; $6d27: $4c
    jr c, jr_0ae_6d4a                             ; $6d28: $38 $20

    inc e                                         ; $6d2a: $1c
    ld e, b                                       ; $6d2b: $58
    sub $00                                       ; $6d2c: $d6 $00
    ld b, b                                       ; $6d2e: $40
    ldh [$03], a                                  ; $6d2f: $e0 $03
    jr nz, jr_0ae_6d3f                            ; $6d31: $20 $0c

jr_0ae_6d33:
    dec b                                         ; $6d33: $05
    inc de                                        ; $6d34: $13
    cp $00                                        ; $6d35: $fe $00
    inc bc                                        ; $6d37: $03
    rra                                           ; $6d38: $1f
    nop                                           ; $6d39: $00
    ld h, b                                       ; $6d3a: $60
    ld h, [hl]                                    ; $6d3b: $66
    cp h                                          ; $6d3c: $bc
    ld h, $58                                     ; $6d3d: $26 $58

jr_0ae_6d3f:
    nop                                           ; $6d3f: $00
    dec [hl]                                      ; $6d40: $35
    dec b                                         ; $6d41: $05
    inc bc                                        ; $6d42: $03
    add d                                         ; $6d43: $82
    sub e                                         ; $6d44: $93
    adc l                                         ; $6d45: $8d
    adc h                                         ; $6d46: $8c
    adc a                                         ; $6d47: $8f
    nop                                           ; $6d48: $00
    ld b, [hl]                                    ; $6d49: $46

jr_0ae_6d4a:
    pop hl                                        ; $6d4a: $e1
    rlca                                          ; $6d4b: $07
    rst $28                                       ; $6d4c: $ef
    rrca                                          ; $6d4d: $0f
    ld d, $1c                                     ; $6d4e: $16 $1c
    ld [hl], b                                    ; $6d50: $70
    nop                                           ; $6d51: $00
    add c                                         ; $6d52: $81
    ld h, c                                       ; $6d53: $61
    jp nz, $010e                                  ; $6d54: $c2 $0e $01

    rra                                           ; $6d57: $1f
    ret nc                                        ; $6d58: $d0

    or b                                          ; $6d59: $b0
    nop                                           ; $6d5a: $00
    ret nz                                        ; $6d5b: $c0

    and b                                         ; $6d5c: $a0
    ld h, b                                       ; $6d5d: $60
    and b                                         ; $6d5e: $a0
    nop                                           ; $6d5f: $00
    ldh [rTAC], a                                 ; $6d60: $e0 $07
    db $e3                                        ; $6d62: $e3
    ld [bc], a                                    ; $6d63: $02
    rra                                           ; $6d64: $1f
    add c                                         ; $6d65: $81
    add e                                         ; $6d66: $83
    adc h                                         ; $6d67: $8c
    pop bc                                        ; $6d68: $c1
    ld b, [hl]                                    ; $6d69: $46
    ld [hl], b                                    ; $6d6a: $70
    ld d, b                                       ; $6d6b: $50
    add b                                         ; $6d6c: $80
    nop                                           ; $6d6d: $00
    ret nz                                        ; $6d6e: $c0

    ld b, b                                       ; $6d6f: $40
    rlca                                          ; $6d70: $07
    ld c, $2f                                     ; $6d71: $0e $2f
    inc sp                                        ; $6d73: $33
    ld a, $27                                     ; $6d74: $3e $27
    nop                                           ; $6d76: $00
    db $10                                        ; $6d77: $10
    inc hl                                        ; $6d78: $23
    and b                                         ; $6d79: $a0
    add a                                         ; $6d7a: $87
    ret nz                                        ; $6d7b: $c0

    set 4, b                                      ; $6d7c: $cb $e0
    call nz, Call_000_0f00                        ; $6d7e: $c4 $00 $0f
    jp hl                                         ; $6d81: $e9


    nop                                           ; $6d82: $00
    ld h, b                                       ; $6d83: $60
    ld bc, $0373                                  ; $6d84: $01 $73 $03
    ld bc, $f900                                  ; $6d87: $01 $00 $f9
    ld a, [$f9f8]                                 ; $6d8a: $fa $f8 $f9
    ld hl, sp+$00                                 ; $6d8d: $f8 $00
    ld a, [c]                                     ; $6d8f: $f2
    inc bc                                        ; $6d90: $03
    nop                                           ; $6d91: $00
    inc bc                                        ; $6d92: $03
    rrca                                          ; $6d93: $0f
    ld bc, $c009                                  ; $6d94: $01 $09 $c0
    jp hl                                         ; $6d97: $e9


    ldh [$c9], a                                  ; $6d98: $e0 $c9
    nop                                           ; $6d9a: $00
    call nz, $a40d                                ; $6d9b: $c4 $0d $a4
    scf                                           ; $6d9e: $37
    ld b, b                                       ; $6d9f: $40
    inc hl                                        ; $6da0: $23
    ret c                                         ; $6da1: $d8

    sbc d                                         ; $6da2: $9a
    nop                                           ; $6da3: $00
    ld b, h                                       ; $6da4: $44
    ret c                                         ; $6da5: $d8

    inc a                                         ; $6da6: $3c
    adc h                                         ; $6da7: $8c

jr_0ae_6da8:
    jr c, @-$7b                                   ; $6da8: $38 $83

    add b                                         ; $6daa: $80
    jr nc, jr_0ae_6dad                            ; $6dab: $30 $00

jr_0ae_6dad:
    daa                                           ; $6dad: $27
    ld h, h                                       ; $6dae: $64
    rrca                                          ; $6daf: $0f
    ld d, a                                       ; $6db0: $57
    db $10                                        ; $6db1: $10
    jr c, jr_0ae_6dec                             ; $6db2: $38 $38

    ld d, a                                       ; $6db4: $57
    nop                                           ; $6db5: $00
    ld a, b                                       ; $6db6: $78
    jr nc, jr_0ae_6dcc                            ; $6db7: $30 $13

    dec c                                         ; $6db9: $0d
    ret                                           ; $6dba: $c9


    rrca                                          ; $6dbb: $0f
    or c                                          ; $6dbc: $b1
    ld h, d                                       ; $6dbd: $62
    nop                                           ; $6dbe: $00
    inc b                                         ; $6dbf: $04
    inc e                                         ; $6dc0: $1c
    push bc                                       ; $6dc1: $c5
    rlca                                          ; $6dc2: $07
    ld a, e                                       ; $6dc3: $7b
    ld [$0891], sp                                ; $6dc4: $08 $91 $08
    nop                                           ; $6dc7: $00
    ld h, h                                       ; $6dc8: $64
    inc b                                         ; $6dc9: $04
    and b                                         ; $6dca: $a0
    ld b, c                                       ; $6dcb: $41

jr_0ae_6dcc:
    sub b                                         ; $6dcc: $90
    ldh [rSVBK], a                                ; $6dcd: $e0 $70
    add sp, $00                                   ; $6dcf: $e8 $00
    ld [hl], h                                    ; $6dd1: $74
    add sp, $34                                   ; $6dd2: $e8 $34
    ld [hl], b                                    ; $6dd4: $70
    inc d                                         ; $6dd5: $14
    adc b                                         ; $6dd6: $88
    call nz, Call_000_00a0                        ; $6dd7: $c4 $a0 $00
    ldh [$d0], a                                  ; $6dda: $e0 $d0
    ld b, b                                       ; $6ddc: $40
    and b                                         ; $6ddd: $a0
    jr c, jr_0ae_6da8                             ; $6dde: $38 $c8

    scf                                           ; $6de0: $37
    ld c, e                                       ; $6de1: $4b
    nop                                           ; $6de2: $00
    add hl, de                                    ; $6de3: $19
    rlca                                          ; $6de4: $07
    rlca                                          ; $6de5: $07
    db $e3                                        ; $6de6: $e3
    rlca                                          ; $6de7: $07
    pop af                                        ; $6de8: $f1
    rlca                                          ; $6de9: $07
    db $f4                                        ; $6dea: $f4
    nop                                           ; $6deb: $00

jr_0ae_6dec:
    rlca                                          ; $6dec: $07
    db $f4                                        ; $6ded: $f4
    inc bc                                        ; $6dee: $03
    ld h, d                                       ; $6def: $62
    or b                                          ; $6df0: $b0
    ret nz                                        ; $6df1: $c0

    or b                                          ; $6df2: $b0
    ret nz                                        ; $6df3: $c0

    nop                                           ; $6df4: $00
    ldh a, [$c4]                                  ; $6df5: $f0 $c4
    ld hl, sp-$3e                                 ; $6df7: $f8 $c2
    jr c, jr_0ae_6e05                             ; $6df9: $38 $0a

    jr jr_0ae_6e07                                ; $6dfb: $18 $0a

    nop                                           ; $6dfd: $00
    ld [de], a                                    ; $6dfe: $12
    ld a, [bc]                                    ; $6dff: $0a
    add hl, de                                    ; $6e00: $19
    and a                                         ; $6e01: $a7
    call z, Call_0ae_77c3                         ; $6e02: $cc $c3 $77

jr_0ae_6e05:
    ld [hl], b                                    ; $6e05: $70
    nop                                           ; $6e06: $00

jr_0ae_6e07:
    jr c, jr_0ae_6e14                             ; $6e07: $38 $0b

    inc a                                         ; $6e09: $3c
    inc c                                         ; $6e0a: $0c
    jr c, jr_0ae_6e2c                             ; $6e0b: $38 $1f

    inc a                                         ; $6e0d: $3c
    rlca                                          ; $6e0e: $07
    nop                                           ; $6e0f: $00
    db $10                                        ; $6e10: $10
    db $10                                        ; $6e11: $10
    ld [hl-], a                                   ; $6e12: $32
    xor h                                         ; $6e13: $ac

jr_0ae_6e14:
    ld l, $b6                                     ; $6e14: $2e $b6
    ld [hl], $3a                                  ; $6e16: $36 $3a
    nop                                           ; $6e18: $00
    ld h, $1c                                     ; $6e19: $26 $1c
    ld de, $070f                                  ; $6e1b: $11 $0f $07
    ld [$e2c1], sp                                ; $6e1e: $08 $c1 $e2
    nop                                           ; $6e21: $00
    ld c, h                                       ; $6e22: $4c
    inc a                                         ; $6e23: $3c
    ld h, e                                       ; $6e24: $63
    rlca                                          ; $6e25: $07
    ld h, b                                       ; $6e26: $60
    add hl, de                                    ; $6e27: $19
    ld [hl], b                                    ; $6e28: $70
    ld a, $00                                     ; $6e29: $3e $00
    ld a, b                                       ; $6e2b: $78

jr_0ae_6e2c:
    ccf                                           ; $6e2c: $3f
    ld b, b                                       ; $6e2d: $40
    ccf                                           ; $6e2e: $3f
    ld h, d                                       ; $6e2f: $62
    ld e, a                                       ; $6e30: $5f
    and e                                         ; $6e31: $a3
    ccf                                           ; $6e32: $3f
    nop                                           ; $6e33: $00
    db $10                                        ; $6e34: $10
    rrca                                          ; $6e35: $0f
    add [hl]                                      ; $6e36: $86
    ld h, [hl]                                    ; $6e37: $66
    adc a                                         ; $6e38: $8f
    ld l, a                                       ; $6e39: $6f
    jr nz, @+$11                                  ; $6e3a: $20 $0f

    nop                                           ; $6e3c: $00
    ldh [$f7], a                                  ; $6e3d: $e0 $f7
    ret nc                                        ; $6e3f: $d0

    sub $e1                                       ; $6e40: $d6 $e1
    call z, Call_000_1dc1                         ; $6e42: $cc $c1 $1d
    nop                                           ; $6e45: $00
    ld bc, $5881                                  ; $6e46: $01 $81 $58
    ld [hl], b                                    ; $6e49: $70
    ld e, $32                                     ; $6e4a: $1e $32
    ld [bc], a                                    ; $6e4c: $02
    ld e, $00                                     ; $6e4d: $1e $00
    inc bc                                        ; $6e4f: $03
    dec c                                         ; $6e50: $0d
    inc bc                                        ; $6e51: $03
    pop hl                                        ; $6e52: $e1
    ld bc, $0172                                  ; $6e53: $01 $72 $01
    ld a, c                                       ; $6e56: $79
    nop                                           ; $6e57: $00
    ld bc, $f27c                                  ; $6e58: $01 $7c $f2
    ld b, $ea                                     ; $6e5b: $06 $ea
    ld c, $e8                                     ; $6e5d: $0e $e8
    ld c, $00                                     ; $6e5f: $0e $00
    ld l, b                                       ; $6e61: $68
    inc c                                         ; $6e62: $0c
    jr jr_0ae_6e7c                                ; $6e63: $18 $17

    inc e                                         ; $6e65: $1c
    inc de                                        ; $6e66: $13
    jr jr_0ae_6e80                                ; $6e67: $18 $17

    nop                                           ; $6e69: $00
    jr jr_0ae_6e83                                ; $6e6a: $18 $17

    db $10                                        ; $6e6c: $10
    inc c                                         ; $6e6d: $0c
    inc e                                         ; $6e6e: $1c
    inc b                                         ; $6e6f: $04
    inc c                                         ; $6e70: $0c
    dec b                                         ; $6e71: $05
    nop                                           ; $6e72: $00
    inc c                                         ; $6e73: $0c

jr_0ae_6e74:
    ld b, $0c                                     ; $6e74: $06 $0c
    ld b, $04                                     ; $6e76: $06 $04
    ld [bc], a                                    ; $6e78: $02

jr_0ae_6e79:
    dec b                                         ; $6e79: $05
    inc bc                                        ; $6e7a: $03

jr_0ae_6e7b:
    nop                                           ; $6e7b: $00

jr_0ae_6e7c:
    ld b, $03                                     ; $6e7c: $06 $03
    dec c                                         ; $6e7e: $0d
    ld [bc], a                                    ; $6e7f: $02

jr_0ae_6e80:
    ld b, a                                       ; $6e80: $47
    ccf                                           ; $6e81: $3f
    inc a                                         ; $6e82: $3c

jr_0ae_6e83:
    jp Jump_0ae_6000                              ; $6e83: $c3 $00 $60


    sbc a                                         ; $6e86: $9f
    and b                                         ; $6e87: $a0
    and b                                         ; $6e88: $a0
    nop                                           ; $6e89: $00
    ld b, b                                       ; $6e8a: $40
    inc bc                                        ; $6e8b: $03
    dec b                                         ; $6e8c: $05
    nop                                           ; $6e8d: $00
    dec bc                                        ; $6e8e: $0b
    inc c                                         ; $6e8f: $0c
    add h                                         ; $6e90: $84
    rlca                                          ; $6e91: $07
    jr jr_0ae_6e74                                ; $6e92: $18 $e0

    ldh [$fe], a                                  ; $6e94: $e0 $fe
    nop                                           ; $6e96: $00
    ld hl, sp-$01                                 ; $6e97: $f8 $ff
    inc a                                         ; $6e99: $3c
    rra                                           ; $6e9a: $1f
    rrca                                          ; $6e9b: $0f
    rlca                                          ; $6e9c: $07
    inc bc                                        ; $6e9d: $03
    di                                            ; $6e9e: $f3
    nop                                           ; $6e9f: $00
    dec b                                         ; $6ea0: $05
    db $fc                                        ; $6ea1: $fc
    ld b, $03                                     ; $6ea2: $06 $03
    ld hl, sp+$58                                 ; $6ea4: $f8 $58

jr_0ae_6ea6:
    ccf                                           ; $6ea6: $3f
    ccf                                           ; $6ea7: $3f
    nop                                           ; $6ea8: $00
    rra                                           ; $6ea9: $1f
    add b                                         ; $6eaa: $80
    ldh [$27], a                                  ; $6eab: $e0 $27
    ldh a, [rNR10]                                ; $6ead: $f0 $10
    ret z                                         ; $6eaf: $c8

    jr c, jr_0ae_6eb2                             ; $6eb0: $38 $00

jr_0ae_6eb2:
    db $e4                                        ; $6eb2: $e4
    inc e                                         ; $6eb3: $1c
    ld a, [de]                                    ; $6eb4: $1a
    inc bc                                        ; $6eb5: $03
    ld a, d                                       ; $6eb6: $7a
    inc bc                                        ; $6eb7: $03
    db $f4                                        ; $6eb8: $f4
    dec b                                         ; $6eb9: $05
    db $10                                        ; $6eba: $10
    db $ec                                        ; $6ebb: $ec
    dec c                                         ; $6ebc: $0d
    dec e                                         ; $6ebd: $1d
    ld l, l                                       ; $6ebe: $6d
    nop                                           ; $6ebf: $00
    nop                                           ; $6ec0: $00
    ld e, b                                       ; $6ec1: $58
    ld h, e                                       ; $6ec2: $63
    jp c, Jump_0ae_7d00                           ; $6ec3: $da $00 $7d

    ld bc, $803e                                  ; $6ec6: $01 $3e $80
    add b                                         ; $6ec9: $80
    adc [hl]                                      ; $6eca: $8e
    sub b                                         ; $6ecb: $90
    rst $00                                       ; $6ecc: $c7
    nop                                           ; $6ecd: $00
    sub b                                         ; $6ece: $90
    sub e                                         ; $6ecf: $93
    ld d, h                                       ; $6ed0: $54
    ld de, $d0c6                                  ; $6ed1: $11 $c6 $d0
    ld d, b                                       ; $6ed4: $50
    ld c, d                                       ; $6ed5: $4a
    nop                                           ; $6ed6: $00
    jr c, jr_0ae_6e79                             ; $6ed7: $38 $a0

    jr c, jr_0ae_6e7b                             ; $6ed9: $38 $a0

jr_0ae_6edb:
    jr nc, @-$5e                                  ; $6edb: $30 $a0

    ld [hl], b                                    ; $6edd: $70
    ld h, b                                       ; $6ede: $60
    nop                                           ; $6edf: $00
    ld h, b                                       ; $6ee0: $60
    ld e, a                                       ; $6ee1: $5f
    ld h, b                                       ; $6ee2: $60
    ld e, a                                       ; $6ee3: $5f
    jr nz, jr_0ae_6ea6                            ; $6ee4: $20 $c0

    ld h, b                                       ; $6ee6: $60
    ret nz                                        ; $6ee7: $c0

    nop                                           ; $6ee8: $00
    ld [bc], a                                    ; $6ee9: $02
    ld bc, $0102                                  ; $6eea: $01 $02 $01
    inc bc                                        ; $6eed: $03
    ld bc, $0100                                  ; $6eee: $01 $00 $01
    ret nz                                        ; $6ef1: $c0

    inc bc                                        ; $6ef2: $03
    nop                                           ; $6ef3: $00
    ld [bc], a                                    ; $6ef4: $02
    nop                                           ; $6ef5: $00
    nop                                           ; $6ef6: $00
    nop                                           ; $6ef7: $00
    rra                                           ; $6ef8: $1f
    db $10                                        ; $6ef9: $10
    add b                                         ; $6efa: $80
    rra                                           ; $6efb: $1f
    nop                                           ; $6efc: $00
    and b                                         ; $6efd: $a0
    ccf                                           ; $6efe: $3f
    ccf                                           ; $6eff: $3f
    add a                                         ; $6f00: $87
    ccf                                           ; $6f01: $3f
    adc a                                         ; $6f02: $8f
    ld e, a                                       ; $6f03: $5f
    ret nz                                        ; $6f04: $c0

    nop                                           ; $6f05: $00
    sbc a                                         ; $6f06: $9f
    ret nz                                        ; $6f07: $c0

    ret nz                                        ; $6f08: $c0

    sbc a                                         ; $6f09: $9f
    nop                                           ; $6f0a: $00
    cp $f2                                        ; $6f0b: $fe $f2
    ld a, [c]                                     ; $6f0d: $f2
    nop                                           ; $6f0e: $00
    adc a                                         ; $6f0f: $8f
    ld [hl], b                                    ; $6f10: $70
    ret nz                                        ; $6f11: $c0

    db $fc                                        ; $6f12: $fc
    ld a, h                                       ; $6f13: $7c
    add e                                         ; $6f14: $83
    ld a, [hl]                                    ; $6f15: $7e
    ld h, [hl]                                    ; $6f16: $66
    nop                                           ; $6f17: $00
    jp nz, Jump_0ae_7cbc                          ; $6f18: $c2 $bc $7c

    ld b, h                                       ; $6f1b: $44
    ldh a, [$8c]                                  ; $6f1c: $f0 $8c
    ld a, b                                       ; $6f1e: $78
    ld b, [hl]                                    ; $6f1f: $46
    nop                                           ; $6f20: $00
    cp b                                          ; $6f21: $b8
    add [hl]                                      ; $6f22: $86
    sbc h                                         ; $6f23: $9c
    add e                                         ; $6f24: $83
    rrca                                          ; $6f25: $0f
    db $d3                                        ; $6f26: $d3
    rrca                                          ; $6f27: $0f
    pop hl                                        ; $6f28: $e1
    ld b, b                                       ; $6f29: $40
    rlca                                          ; $6f2a: $07
    ld [bc], a                                    ; $6f2b: $02
    nop                                           ; $6f2c: $00
    and c                                         ; $6f2d: $a1
    ld [hl], d                                    ; $6f2e: $72
    ld hl, $06b4                                  ; $6f2f: $21 $b4 $06
    ld [hl+], a                                   ; $6f32: $22
    nop                                           ; $6f33: $00
    inc b                                         ; $6f34: $04
    ld h, h                                       ; $6f35: $64
    add d                                         ; $6f36: $82
    adc b                                         ; $6f37: $88
    and [hl]                                      ; $6f38: $a6
    jr nz, jr_0ae_6edb                            ; $6f39: $20 $a0

    ld b, $00                                     ; $6f3b: $06 $00
    cp c                                          ; $6f3d: $b9
    dec l                                         ; $6f3e: $2d
    ld a, [bc]                                    ; $6f3f: $0a
    ld [$8c84], sp                                ; $6f40: $08 $84 $8c
    ld c, d                                       ; $6f43: $4a
    call nz, Call_0ae_7400                        ; $6f44: $c4 $00 $74
    or d                                          ; $6f47: $b2
    add h                                         ; $6f48: $84
    jp nz, $e6e4                                  ; $6f49: $c2 $e4 $e6

    ld a, [bc]                                    ; $6f4c: $0a
    cp $00                                        ; $6f4d: $fe $00
    dec b                                         ; $6f4f: $05
    db $fc                                        ; $6f50: $fc
    ret nz                                        ; $6f51: $c0

    add b                                         ; $6f52: $80
    ld b, b                                       ; $6f53: $40
    add b                                         ; $6f54: $80
    ld b, b                                       ; $6f55: $40
    ret nz                                        ; $6f56: $c0

    ld c, h                                       ; $6f57: $4c
    add b                                         ; $6f58: $80
    cp h                                          ; $6f59: $bc
    ld bc, $0080                                  ; $6f5a: $01 $80 $00
    ld b, $00                                     ; $6f5d: $06 $00
    ld [bc], a                                    ; $6f5f: $02
    ld [hl], b                                    ; $6f60: $70
    ldh [$cf], a                                  ; $6f61: $e0 $cf
    nop                                           ; $6f63: $00
    ldh [rIF], a                                  ; $6f64: $e0 $0f
    ld h, b                                       ; $6f66: $60
    ld c, a                                       ; $6f67: $4f
    add a                                         ; $6f68: $87
    ldh a, [$80]                                  ; $6f69: $f0 $80
    ldh a, [rP1]                                  ; $6f6b: $f0 $00
    ld hl, $381e                                  ; $6f6d: $21 $1e $38
    daa                                           ; $6f70: $27
    rrca                                          ; $6f71: $0f
    inc sp                                        ; $6f72: $33
    add $ba                                       ; $6f73: $c6 $ba
    nop                                           ; $6f75: $00
    ld a, b                                       ; $6f76: $78
    add h                                         ; $6f77: $84
    db $fc                                        ; $6f78: $fc
    ld a, d                                       ; $6f79: $7a
    ld a, e                                       ; $6f7a: $7b
    db $fc                                        ; $6f7b: $fc
    nop                                           ; $6f7c: $00
    nop                                           ; $6f7d: $00
    nop                                           ; $6f7e: $00
    db $e3                                        ; $6f7f: $e3
    inc hl                                        ; $6f80: $23
    ld sp, $0fc1                                  ; $6f81: $31 $c1 $0f
    pop af                                        ; $6f84: $f1
    db $f4                                        ; $6f85: $f4
    rlca                                          ; $6f86: $07
    nop                                           ; $6f87: $00
    ldh a, [$03]                                  ; $6f88: $f0 $03
    ldh a, [$03]                                  ; $6f8a: $f0 $03
    ld a, [$000b]                                 ; $6f8c: $fa $0b $00
    nop                                           ; $6f8f: $00
    nop                                           ; $6f90: $00
    pop hl                                        ; $6f91: $e1
    ld a, a                                       ; $6f92: $7f
    ldh a, [$cf]                                  ; $6f93: $f0 $cf
    inc e                                         ; $6f95: $1c
    inc de                                        ; $6f96: $13
    dec b                                         ; $6f97: $05
    sub c                                         ; $6f98: $91
    nop                                           ; $6f99: $00
    ld b, l                                       ; $6f9a: $45
    pop bc                                        ; $6f9b: $c1
    call nz, $c05d                                ; $6f9c: $c4 $5d $c0
    add hl, de                                    ; $6f9f: $19
    nop                                           ; $6fa0: $00
    nop                                           ; $6fa1: $00
    nop                                           ; $6fa2: $00
    ld a, [hl]                                    ; $6fa3: $7e
    db $d3                                        ; $6fa4: $d3
    add e                                         ; $6fa5: $83
    ld b, h                                       ; $6fa6: $44
    rst $00                                       ; $6fa7: $c7
    jp hl                                         ; $6fa8: $e9


    di                                            ; $6fa9: $f3
    ld hl, sp+$00                                 ; $6faa: $f8 $00
    rst $20                                       ; $6fac: $e7
    ldh a, [$e2]                                  ; $6fad: $f0 $e2
    ld h, $e6                                     ; $6faf: $26 $e6
    ld c, $03                                     ; $6fb1: $0e $03
    dec c                                         ; $6fb3: $0d
    ld [bc], a                                    ; $6fb4: $02
    rst $20                                       ; $6fb5: $e7

jr_0ae_6fb6:
    dec de                                        ; $6fb6: $1b
    inc c                                         ; $6fb7: $0c
    ldh a, [rNR32]                                ; $6fb8: $f0 $1c
    db $e4                                        ; $6fba: $e4
    and b                                         ; $6fbb: $a0
    ld l, d                                       ; $6fbc: $6a
    db $10                                        ; $6fbd: $10
    inc bc                                        ; $6fbe: $03
    call nc, Call_0ae_4002                        ; $6fbf: $d4 $02 $40
    nop                                           ; $6fc2: $00
    ld bc, $fe38                                  ; $6fc3: $01 $38 $fe
    ld bc, $fcfc                                  ; $6fc6: $01 $fc $fc
    nop                                           ; $6fc9: $00
    stop                                          ; $6fca: $10 $00
    ldh [$e1], a                                  ; $6fcc: $e0 $e1
    and $c9                                       ; $6fce: $e6 $c9
    jp nz, Jump_000_3d03                          ; $6fd0: $c2 $03 $3d

    nop                                           ; $6fd3: $00
    nop                                           ; $6fd4: $00
    ld a, a                                       ; $6fd5: $7f
    ld l, a                                       ; $6fd6: $6f
    xor b                                         ; $6fd7: $a8
    ld a, $10                                     ; $6fd8: $3e $10
    ld a, h                                       ; $6fda: $7c
    ld a, b                                       ; $6fdb: $78
    ldh a, [rP1]                                  ; $6fdc: $f0 $00
    nop                                           ; $6fde: $00
    inc b                                         ; $6fdf: $04
    ld sp, $8d8c                                  ; $6fe0: $31 $8c $8d
    inc b                                         ; $6fe3: $04
    ld c, b                                       ; $6fe4: $48
    di                                            ; $6fe5: $f3
    nop                                           ; $6fe6: $00
    jp hl                                         ; $6fe7: $e9


    reti                                          ; $6fe8: $d9


    dec de                                        ; $6fe9: $1b
    nop                                           ; $6fea: $00
    nop                                           ; $6feb: $00
    or b                                          ; $6fec: $b0
    ld b, b                                       ; $6fed: $40
    nop                                           ; $6fee: $00
    nop                                           ; $6fef: $00
    rst $20                                       ; $6ff0: $e7
    jr jr_0ae_6fb6                                ; $6ff1: $18 $c3

    inc a                                         ; $6ff3: $3c
    add c                                         ; $6ff4: $81
    ld h, b                                       ; $6ff5: $60
    nop                                           ; $6ff6: $00
    ld b, b                                       ; $6ff7: $40
    nop                                           ; $6ff8: $00
    ld b, b                                       ; $6ff9: $40
    dec bc                                        ; $6ffa: $0b
    dec c                                         ; $6ffb: $0d
    inc de                                        ; $6ffc: $13
    scf                                           ; $6ffd: $37
    ld b, a                                       ; $6ffe: $47
    rlca                                          ; $6fff: $07
    rst $38                                       ; $7000: $ff
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    cp $00                                        ; $7003: $fe $00
    push af                                       ; $7005: $f5
    db $f4                                        ; $7006: $f4
    ld h, b                                       ; $7007: $60
    ld h, c                                       ; $7008: $61
    dec bc                                        ; $7009: $0b
    nop                                           ; $700a: $00
    add hl, bc                                    ; $700b: $09
    rrca                                          ; $700c: $0f
    rst $00                                       ; $700d: $c7
    ldh [$63], a                                  ; $700e: $e0 $63
    jr jr_0ae_7023                                ; $7010: $18 $11

    rra                                           ; $7012: $1f
    nop                                           ; $7013: $00
    ccf                                           ; $7014: $3f
    and c                                         ; $7015: $a1
    ld hl, $828d                                  ; $7016: $21 $8d $82
    cp a                                          ; $7019: $bf
    sbc [hl]                                      ; $701a: $9e
    cp h                                          ; $701b: $bc
    ld bc, $f8fc                                  ; $701c: $01 $fc $f8
    nop                                           ; $701f: $00

Jump_0ae_7020:
    ld hl, sp+$0e                                 ; $7020: $f8 $0e
    sbc h                                         ; $7022: $9c

jr_0ae_7023:
    rlca                                          ; $7023: $07
    ld h, b                                       ; $7024: $60
    stop                                          ; $7025: $10 $00
    ld a, a                                       ; $7027: $7f
    ld b, b                                       ; $7028: $40
    ccf                                           ; $7029: $3f
    rst $38                                       ; $702a: $ff
    nop                                           ; $702b: $00
    ld a, a                                       ; $702c: $7f
    nop                                           ; $702d: $00
    nop                                           ; $702e: $00
    nop                                           ; $702f: $00
    rra                                           ; $7030: $1f
    ret nz                                        ; $7031: $c0

    sbc a                                         ; $7032: $9f
    db $fc                                        ; $7033: $fc
    nop                                           ; $7034: $00
    nop                                           ; $7035: $00
    db $fc                                        ; $7036: $fc
    ld bc, $0288                                  ; $7037: $01 $88 $02
    ld [$fcfd], sp                                ; $703a: $08 $fd $fc
    nop                                           ; $703d: $00
    inc c                                         ; $703e: $0c
    nop                                           ; $703f: $00
    cp $f8                                        ; $7040: $fe $f8
    ld b, c                                       ; $7042: $41
    nop                                           ; $7043: $00
    ld [hl-], a                                   ; $7044: $32
    jp nz, $aa7a                                  ; $7045: $c2 $7a $aa

    ret c                                         ; $7048: $d8

    add c                                         ; $7049: $81
    adc h                                         ; $704a: $8c
    add c                                         ; $704b: $81
    nop                                           ; $704c: $00
    ld bc, $310c                                  ; $704d: $01 $0c $31
    inc [hl]                                      ; $7050: $34
    ld bc, $0be1                                  ; $7051: $01 $e1 $0b
    ld a, [c]                                     ; $7054: $f2
    nop                                           ; $7055: $00
    add b                                         ; $7056: $80
    ld c, a                                       ; $7057: $4f
    ld [hl-], a                                   ; $7058: $32
    dec d                                         ; $7059: $15
    inc sp                                        ; $705a: $33
    jr nc, jr_0ae_705d                            ; $705b: $30 $00

jr_0ae_705d:
    ld a, b                                       ; $705d: $78
    nop                                           ; $705e: $00
    ld l, h                                       ; $705f: $6c
    inc h                                         ; $7060: $24
    ld b, h                                       ; $7061: $44
    ld d, b                                       ; $7062: $50
    ld b, h                                       ; $7063: $44
    ld d, b                                       ; $7064: $50
    add $10                                       ; $7065: $c6 $10
    nop                                           ; $7067: $00
    adc l                                         ; $7068: $8d
    ld hl, $6349                                  ; $7069: $21 $49 $63
    ld [hl+], a                                   ; $706c: $22
    ld h, [hl]                                    ; $706d: $66
    ld c, b                                       ; $706e: $48
    ld c, h                                       ; $706f: $4c
    nop                                           ; $7070: $00
    ret c                                         ; $7071: $d8

    ld c, b                                       ; $7072: $48
    pop de                                        ; $7073: $d1
    set 2, e                                      ; $7074: $cb $d3
    add [hl]                                      ; $7076: $86
    add d                                         ; $7077: $82
    cp h                                          ; $7078: $bc
    nop                                           ; $7079: $00
    nop                                           ; $707a: $00
    ccf                                           ; $707b: $3f
    ld l, a                                       ; $707c: $6f
    rra                                           ; $707d: $1f
    db $fc                                        ; $707e: $fc
    inc bc                                        ; $707f: $03
    add b                                         ; $7080: $80
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    ld h, b                                       ; $7083: $60
    ld a, b                                       ; $7084: $78
    ld hl, $83e0                                  ; $7085: $21 $e0 $83
    add b                                         ; $7088: $80
    inc de                                        ; $7089: $13
    cpl                                           ; $708a: $2f
    nop                                           ; $708b: $00
    inc bc                                        ; $708c: $03
    ld hl, $981f                                  ; $708d: $21 $1f $98
    rlca                                          ; $7090: $07
    ret nz                                        ; $7091: $c0

    ldh [$61], a                                  ; $7092: $e0 $61
    nop                                           ; $7094: $00
    db $10                                        ; $7095: $10
    ld bc, $73f8                                  ; $7096: $01 $f8 $73
    ld hl, sp-$0d                                 ; $7099: $f8 $f3
    rrca                                          ; $709b: $0f
    rst $28                                       ; $709c: $ef
    nop                                           ; $709d: $00
    or a                                          ; $709e: $b7
    rlca                                          ; $709f: $07
    add b                                         ; $70a0: $80
    adc a                                         ; $70a1: $8f
    ret nz                                        ; $70a2: $c0

    sbc a                                         ; $70a3: $9f
    ret nz                                        ; $70a4: $c0

    rra                                           ; $70a5: $1f
    nop                                           ; $70a6: $00
    ret nz                                        ; $70a7: $c0

    rst $18                                       ; $70a8: $df
    rra                                           ; $70a9: $1f
    rst $18                                       ; $70aa: $df
    sbc a                                         ; $70ab: $9f
    ld e, a                                       ; $70ac: $5f
    ld bc, $00fc                                  ; $70ad: $01 $fc $00
    inc bc                                        ; $70b0: $03
    ldh a, [rP1]                                  ; $70b1: $f0 $00
    ldh [rTAC], a                                 ; $70b3: $e0 $07
    dec b                                         ; $70b5: $05
    jr jr_0ae_70d7                                ; $70b6: $18 $1f

    nop                                           ; $70b8: $00
    jr nz, jr_0ae_70bb                            ; $70b9: $20 $00

jr_0ae_70bb:
    ld b, c                                       ; $70bb: $41
    ld b, e                                       ; $70bc: $43
    adc e                                         ; $70bd: $8b
    add l                                         ; $70be: $85
    ld bc, $0080                                  ; $70bf: $01 $80 $00
    inc c                                         ; $70c2: $0c
    ld [$f201], sp                                ; $70c3: $08 $01 $f2
    ld sp, hl                                     ; $70c6: $f9
    ldh a, [$0c]                                  ; $70c7: $f0 $0c
    scf                                           ; $70c9: $37
    nop                                           ; $70ca: $00
    ld e, $2f                                     ; $70cb: $1e $2f
    rst $38                                       ; $70cd: $ff
    rst $38                                       ; $70ce: $ff

jr_0ae_70cf:
    scf                                           ; $70cf: $37
    rrca                                          ; $70d0: $0f
    ld b, b                                       ; $70d1: $40
    inc d                                         ; $70d2: $14
    nop                                           ; $70d3: $00
    ld b, h                                       ; $70d4: $44
    ld b, [hl]                                    ; $70d5: $46
    inc h                                         ; $70d6: $24

jr_0ae_70d7:
    ld c, $b4                                     ; $70d7: $0e $b4
    add b                                         ; $70d9: $80
    ld e, h                                       ; $70da: $5c
    pop bc                                        ; $70db: $c1
    nop                                           ; $70dc: $00
    pop hl                                        ; $70dd: $e1
    ldh [$f0], a                                  ; $70de: $e0 $f0
    ld sp, hl                                     ; $70e0: $f9
    dec c                                         ; $70e1: $0d
    sub h                                         ; $70e2: $94
    inc hl                                        ; $70e3: $23
    cp l                                          ; $70e4: $bd
    nop                                           ; $70e5: $00
    ld b, b                                       ; $70e6: $40
    cp [hl]                                       ; $70e7: $be
    cp $fd                                        ; $70e8: $fe $fd
    ldh [$c1], a                                  ; $70ea: $e0 $c1
    ret nz                                        ; $70ec: $c0

    and c                                         ; $70ed: $a1
    nop                                           ; $70ee: $00
    add b                                         ; $70ef: $80
    ld b, b                                       ; $70f0: $40
    add e                                         ; $70f1: $83
    nop                                           ; $70f2: $00
    and l                                         ; $70f3: $a5
    inc a                                         ; $70f4: $3c
    inc a                                         ; $70f5: $3c
    ld a, h                                       ; $70f6: $7c
    nop                                           ; $70f7: $00
    ld b, c                                       ; $70f8: $41
    or d                                          ; $70f9: $b2
    adc h                                         ; $70fa: $8c
    inc c                                         ; $70fb: $0c
    ld h, b                                       ; $70fc: $60
    add b                                         ; $70fd: $80
    ldh a, [$87]                                  ; $70fe: $f0 $87
    nop                                           ; $7100: $00
    ld e, b                                       ; $7101: $58
    ld h, c                                       ; $7102: $61
    dec d                                         ; $7103: $15
    inc e                                         ; $7104: $1c
    add hl, bc                                    ; $7105: $09
    adc h                                         ; $7106: $8c
    ld hl, sp+$53                                 ; $7107: $f8 $53
    nop                                           ; $7109: $00
    jr c, jr_0ae_713d                             ; $710a: $38 $31

    jr jr_0ae_70cf                                ; $710c: $18 $c1

    ld c, b                                       ; $710e: $48
    ld b, b                                       ; $710f: $40
    ld hl, sp-$15                                 ; $7110: $f8 $eb
    nop                                           ; $7112: $00
    add sp, $23                                   ; $7113: $e8 $23
    ld hl, sp+$1b                                 ; $7115: $f8 $1b
    ld hl, sp+$1b                                 ; $7117: $f8 $1b
    rra                                           ; $7119: $1f
    add b                                         ; $711a: $80
    nop                                           ; $711b: $00
    rrca                                          ; $711c: $0f
    nop                                           ; $711d: $00
    ld [hl], b                                    ; $711e: $70
    rlca                                          ; $711f: $07
    jr jr_0ae_7125                                ; $7120: $18 $03

    inc c                                         ; $7122: $0c
    ldh [rP1], a                                  ; $7123: $e0 $00

jr_0ae_7125:
    ld b, $f0                                     ; $7125: $06 $f0
    ld b, $f0                                     ; $7127: $06 $f0
    dec b                                         ; $7129: $05
    pop af                                        ; $712a: $f1
    cp b                                          ; $712b: $b8
    add b                                         ; $712c: $80
    nop                                           ; $712d: $00
    ld d, b                                       ; $712e: $50
    ld h, $31                                     ; $712f: $26 $31
    ld h, h                                       ; $7131: $64
    pop bc                                        ; $7132: $c1
    ld b, d                                       ; $7133: $42
    sbc b                                         ; $7134: $98
    dec de                                        ; $7135: $1b
    nop                                           ; $7136: $00
    add hl, bc                                    ; $7137: $09
    ld l, d                                       ; $7138: $6a
    inc bc                                        ; $7139: $03
    ld [c], a                                     ; $713a: $e2
    ld [c], a                                     ; $713b: $e2
    db $e4                                        ; $713c: $e4

jr_0ae_713d:
    ld [bc], a                                    ; $713d: $02
    ld h, a                                       ; $713e: $67
    nop                                           ; $713f: $00
    call nz, $a80e                                ; $7140: $c4 $0e $a8
    inc c                                         ; $7143: $0c
    ld a, [bc]                                    ; $7144: $0a
    ld e, b                                       ; $7145: $58
    ld [de], a                                    ; $7146: $12
    sub b                                         ; $7147: $90
    ld [bc], a                                    ; $7148: $02
    rlca                                          ; $7149: $07
    dec h                                         ; $714a: $25
    ld b, $24                                     ; $714b: $06 $24
    and h                                         ; $714d: $a4
    and d                                         ; $714e: $a2
    ld [hl], b                                    ; $714f: $70
    ld bc, $0032                                  ; $7150: $01 $32 $00
    jr c, jr_0ae_7178                             ; $7153: $38 $23

    add hl, bc                                    ; $7155: $09
    ld l, [hl]                                    ; $7156: $6e
    ld b, c                                       ; $7157: $41
    ld a, $40                                     ; $7158: $3e $40
    ld [hl], e                                    ; $715a: $73
    nop                                           ; $715b: $00
    ld [hl], e                                    ; $715c: $73
    db $10                                        ; $715d: $10
    ld c, c                                       ; $715e: $49
    ld sp, $271e                                  ; $715f: $31 $1e $27
    inc d                                         ; $7162: $14
    ld [hl], a                                    ; $7163: $77
    nop                                           ; $7164: $00
    ld b, a                                       ; $7165: $47
    ld a, b                                       ; $7166: $78
    cp $00                                        ; $7167: $fe $00
    ld c, a                                       ; $7169: $4f
    jp z, $a73e                                   ; $716a: $ca $3e $a7

    nop                                           ; $716d: $00
    adc l                                         ; $716e: $8d
    ld a, b                                       ; $716f: $78
    ld a, l                                       ; $7170: $7d
    ld [hl], b                                    ; $7171: $70
    ld h, [hl]                                    ; $7172: $66
    and d                                         ; $7173: $a2
    ld h, d                                       ; $7174: $62
    add b                                         ; $7175: $80
    nop                                           ; $7176: $00
    xor d                                         ; $7177: $aa

jr_0ae_7178:
    jp nz, $e0ac                                  ; $7178: $c2 $ac $e0

    adc [hl]                                      ; $717b: $8e
    ret nz                                        ; $717c: $c0

    adc [hl]                                      ; $717d: $8e
    ret nz                                        ; $717e: $c0

    nop                                           ; $717f: $00
    ld c, [hl]                                    ; $7180: $4e
    ret nz                                        ; $7181: $c0

    rrca                                          ; $7182: $0f
    add b                                         ; $7183: $80
    add sp, $0b                                   ; $7184: $e8 $0b
    add sp, $0b                                   ; $7186: $e8 $0b
    nop                                           ; $7188: $00
    db $e3                                        ; $7189: $e3
    dec bc                                        ; $718a: $0b
    pop hl                                        ; $718b: $e1

Call_0ae_718c:
    add hl, bc                                    ; $718c: $09
    db $ed                                        ; $718d: $ed
    add hl, hl                                    ; $718e: $29
    jp c, $001e                                   ; $718f: $da $1e $00

    ld d, $d8                                     ; $7192: $16 $d8
    ld d, $d9                                     ; $7194: $16 $d9
    dec b                                         ; $7196: $05
    pop af                                        ; $7197: $f1
    dec c                                         ; $7198: $0d
    pop hl                                        ; $7199: $e1

jr_0ae_719a:
    add b                                         ; $719a: $80
    ld de, $8300                                  ; $719b: $11 $00 $83
    inc bc                                        ; $719e: $03
    ld [hl], e                                    ; $719f: $73
    ld d, e                                       ; $71a0: $53
    xor e                                         ; $71a1: $ab
    ret c                                         ; $71a2: $d8

    inc de                                        ; $71a3: $13
    nop                                           ; $71a4: $00
    ld [$e24b], sp                                ; $71a5: $08 $4b $e2
    db $e4                                        ; $71a8: $e4
    pop af                                        ; $71a9: $f1
    db $f4                                        ; $71aa: $f4
    pop af                                        ; $71ab: $f1
    db $f4                                        ; $71ac: $f4
    nop                                           ; $71ad: $00
    ld [bc], a                                    ; $71ae: $02
    ldh a, [rSC]                                  ; $71af: $f0 $02
    ld hl, sp-$07                                 ; $71b1: $f8 $f9
    ld hl, sp-$08                                 ; $71b3: $f8 $f8
    ei                                            ; $71b5: $fb
    nop                                           ; $71b6: $00
    rlca                                          ; $71b7: $07
    rst $30                                       ; $71b8: $f7
    and c                                         ; $71b9: $a1
    and [hl]                                      ; $71ba: $a6
    rlca                                          ; $71bb: $07
    call nc, $f407                                ; $71bc: $d4 $07 $f4
    nop                                           ; $71bf: $00
    adc [hl]                                      ; $71c0: $8e
    adc d                                         ; $71c1: $8a
    inc l                                         ; $71c2: $2c
    ld hl, $0bc8                                  ; $71c3: $21 $c8 $0b
    ret z                                         ; $71c6: $c8

    ld a, [bc]                                    ; $71c7: $0a
    nop                                           ; $71c8: $00
    ret c                                         ; $71c9: $d8

    ld a, [de]                                    ; $71ca: $1a
    ld h, [hl]                                    ; $71cb: $66
    ld e, d                                       ; $71cc: $5a
    ld e, $a9                                     ; $71cd: $1e $a9
    ld c, $97                                     ; $71cf: $0e $97
    nop                                           ; $71d1: $00
    rrca                                          ; $71d2: $0f
    ld [$288f], sp                                ; $71d3: $08 $8f $28
    and e                                         ; $71d6: $a3
    inc h                                         ; $71d7: $24
    inc bc                                        ; $71d8: $03
    jr nz, jr_0ae_71db                            ; $71d9: $20 $00

jr_0ae_71db:
    inc bc                                        ; $71db: $03
    dec hl                                        ; $71dc: $2b
    ld [c], a                                     ; $71dd: $e2
    pop af                                        ; $71de: $f1
    add l                                         ; $71df: $85
    cp $fa                                        ; $71e0: $fe $fa
    ld a, h                                       ; $71e2: $7c
    nop                                           ; $71e3: $00
    ret nz                                        ; $71e4: $c0

    inc a                                         ; $71e5: $3c
    sbc b                                         ; $71e6: $98
    ld a, h                                       ; $71e7: $7c
    jr jr_0ae_719a                                ; $71e8: $18 $b0

    and c                                         ; $71ea: $a1
    jr jr_0ae_71ed                                ; $71eb: $18 $00

jr_0ae_71ed:
    pop hl                                        ; $71ed: $e1
    ld a, b                                       ; $71ee: $78
    nop                                           ; $71ef: $00
    adc l                                         ; $71f0: $8d
    inc de                                        ; $71f1: $13
    ld a, [bc]                                    ; $71f2: $0a
    ld d, $05                                     ; $71f3: $16 $05
    nop                                           ; $71f5: $00
    ld e, h                                       ; $71f6: $5c
    ld c, l                                       ; $71f7: $4d
    sbc b                                         ; $71f8: $98
    ld de, $0180                                  ; $71f9: $11 $80 $01
    add b                                         ; $71fc: $80
    add c                                         ; $71fd: $81
    nop                                           ; $71fe: $00
    and b                                         ; $71ff: $a0
    add l                                         ; $7200: $85
    rlca                                          ; $7201: $07
    jp Jump_0ae_4503                              ; $7202: $c3 $03 $45


    ld b, h                                       ; $7205: $44
    inc bc                                        ; $7206: $03
    nop                                           ; $7207: $00
    and $e1                                       ; $7208: $e6 $e1
    and d                                         ; $720a: $a2
    add c                                         ; $720b: $81
    ld [hl-], a                                   ; $720c: $32
    add b                                         ; $720d: $80
    jr c, @-$7e                                   ; $720e: $38 $80

    nop                                           ; $7210: $00
    dec a                                         ; $7211: $3d
    add c                                         ; $7212: $81
    ld l, b                                       ; $7213: $68
    ldh [rNR23], a                                ; $7214: $e0 $18
    ret z                                         ; $7216: $c8

    ret z                                         ; $7217: $c8

    jr jr_0ae_721a                                ; $7218: $18 $00

jr_0ae_721a:
    adc b                                         ; $721a: $88
    jr c, jr_0ae_7260                             ; $721b: $38 $43

    inc sp                                        ; $721d: $33
    inc de                                        ; $721e: $13
    ld h, e                                       ; $721f: $63
    ldh [$03], a                                  ; $7220: $e0 $03
    nop                                           ; $7222: $00
    add sp, $0b                                   ; $7223: $e8 $0b
    rlca                                          ; $7225: $07
    push af                                       ; $7226: $f5
    dec b                                         ; $7227: $05
    pop af                                        ; $7228: $f1
    ld bc, $00f1                                  ; $7229: $01 $f1 $00
    rlca                                          ; $722c: $07
    or $07                                        ; $722d: $f6 $07
    or $f1                                        ; $722f: $f6 $f1
    or $f1                                        ; $7231: $f6 $f1
    db $f4                                        ; $7233: $f4
    nop                                           ; $7234: $00
    ld bc, $c807                                  ; $7235: $01 $07 $c8
    ld a, [bc]                                    ; $7238: $0a
    ldh [$c2], a                                  ; $7239: $e0 $c2
    ldh a, [$e2]                                  ; $723b: $f0 $e2
    nop                                           ; $723d: $00
    ld hl, sp+$1a                                 ; $723e: $f8 $1a
    ld hl, sp+$02                                 ; $7240: $f8 $02
    inc bc                                        ; $7242: $03
    ld a, [$d903]                                 ; $7243: $fa $03 $d9
    nop                                           ; $7246: $00
    db $ec                                        ; $7247: $ec
    dec l                                         ; $7248: $2d
    ld hl, $340b                                  ; $7249: $21 $0b $34
    ld bc, $1015                                  ; $724c: $01 $15 $10
    nop                                           ; $724f: $00
    db $10                                        ; $7250: $10
    sub h                                         ; $7251: $94
    jr jr_0ae_7296                                ; $7252: $18 $42

    ld c, b                                       ; $7254: $48
    ld d, h                                       ; $7255: $54
    ld h, b                                       ; $7256: $60
    sbc h                                         ; $7257: $9c
    nop                                           ; $7258: $00
    inc a                                         ; $7259: $3c
    add b                                         ; $725a: $80
    adc c                                         ; $725b: $89
    db $10                                        ; $725c: $10
    adc c                                         ; $725d: $89
    sub b                                         ; $725e: $90
    sbc b                                         ; $725f: $98

jr_0ae_7260:
    add c                                         ; $7260: $81
    nop                                           ; $7261: $00
    ret c                                         ; $7262: $d8

    adc l                                         ; $7263: $8d
    inc d                                         ; $7264: $14
    call z, $c814                                 ; $7265: $cc $14 $c8
    sub a                                         ; $7268: $97
    ld e, e                                       ; $7269: $5b
    nop                                           ; $726a: $00
    sub e                                         ; $726b: $93
    ld e, h                                       ; $726c: $5c
    ld hl, $618d                                  ; $726d: $21 $8d $61
    dec c                                         ; $7270: $0d
    ld l, b                                       ; $7271: $68
    add hl, bc                                    ; $7272: $09
    nop                                           ; $7273: $00
    ld l, b                                       ; $7274: $68
    dec bc                                        ; $7275: $0b
    push af                                       ; $7276: $f5
    scf                                           ; $7277: $37
    ret nz                                        ; $7278: $c0

    add $0c                                       ; $7279: $c6 $0c
    ld [bc], a                                    ; $727b: $02
    nop                                           ; $727c: $00
    dec e                                         ; $727d: $1d
    pop hl                                        ; $727e: $e1
    jp Jump_0ae_47f8                              ; $727f: $c3 $f8 $47


    ld [hl], b                                    ; $7282: $70
    rrca                                          ; $7283: $0f
    ld b, a                                       ; $7284: $47
    nop                                           ; $7285: $00
    rra                                           ; $7286: $1f
    rra                                           ; $7287: $1f
    ld b, b                                       ; $7288: $40
    ld a, a                                       ; $7289: $7f
    add c                                         ; $728a: $81
    cp $fc                                        ; $728b: $fe $fc
    ld b, $00                                     ; $728d: $06 $00
    ldh a, [$39]                                  ; $728f: $f0 $39
    dec hl                                        ; $7291: $2b
    jp $c30b                                      ; $7292: $c3 $0b $c3


    ret z                                         ; $7295: $c8

jr_0ae_7296:
    jp $c800                                      ; $7296: $c3 $00 $c8


    add e                                         ; $7299: $83
    ld d, e                                       ; $729a: $53
    add e                                         ; $729b: $83
    and a                                         ; $729c: $a7
    rla                                           ; $729d: $17
    jr nc, jr_0ae_72b7                            ; $729e: $30 $17

    ld b, $60                                     ; $72a0: $06 $60
    cpl                                           ; $72a2: $2f
    inc bc                                        ; $72a3: $03
    ld bc, $62fc                                  ; $72a4: $01 $fc $62
    ld [bc], a                                    ; $72a7: $02
    and [hl]                                      ; $72a8: $a6
    ld a, [hl-]                                   ; $72a9: $3a
    ldh a, [rP1]                                  ; $72aa: $f0 $00
    ld sp, $6df0                                  ; $72ac: $31 $f0 $6d
    jr jr_0ae_72c5                                ; $72af: $18 $14

    add [hl]                                      ; $72b1: $86
    add b                                         ; $72b2: $80
    ret nz                                        ; $72b3: $c0

    nop                                           ; $72b4: $00
    ret nc                                        ; $72b5: $d0

    rra                                           ; $72b6: $1f

jr_0ae_72b7:
    ret nz                                        ; $72b7: $c0

    nop                                           ; $72b8: $00
    ret nz                                        ; $72b9: $c0

    nop                                           ; $72ba: $00
    nop                                           ; $72bb: $00
    ld e, l                                       ; $72bc: $5d
    nop                                           ; $72bd: $00
    pop bc                                        ; $72be: $c1
    ld [$93c1], sp                                ; $72bf: $08 $c1 $93
    ld a, [c]                                     ; $72c2: $f2
    ld h, a                                       ; $72c3: $67
    ld e, b                                       ; $72c4: $58

jr_0ae_72c5:
    nop                                           ; $72c5: $00
    jr nz, jr_0ae_72c8                            ; $72c6: $20 $00

jr_0ae_72c8:
    rst $38                                       ; $72c8: $ff
    rl d                                          ; $72c9: $cb $12
    rst $08                                       ; $72cb: $cf
    sub [hl]                                      ; $72cc: $96
    add a                                         ; $72cd: $87
    res 0, e                                      ; $72ce: $cb $83
    db $10                                        ; $72d0: $10
    ld b, l                                       ; $72d1: $45
    add b                                         ; $72d2: $80
    ld bc, $1810                                  ; $72d3: $01 $10 $18
    rst $38                                       ; $72d6: $ff
    nop                                           ; $72d7: $00
    ld sp, hl                                     ; $72d8: $f9
    db $fc                                        ; $72d9: $fc
    ld b, $f8                                     ; $72da: $06 $f8
    ld hl, sp-$10                                 ; $72dc: $f8 $f0
    pop af                                        ; $72de: $f1
    ldh [$88], a                                  ; $72df: $e0 $88
    ld [bc], a                                    ; $72e1: $02
    db $10                                        ; $72e2: $10
    jr @-$7c                                      ; $72e3: $18 $82

    nop                                           ; $72e5: $00
    ld sp, $6b07                                  ; $72e6: $31 $07 $6b
    sub b                                         ; $72e9: $90
    adc [hl]                                      ; $72ea: $8e
    ret nz                                        ; $72eb: $c0

    or b                                          ; $72ec: $b0
    ld [$0308], sp                                ; $72ed: $08 $08 $03
    ld hl, sp+$03                                 ; $72f0: $f8 $03
    inc bc                                        ; $72f2: $03
    inc [hl]                                      ; $72f3: $34
    nop                                           ; $72f4: $00
    ret nz                                        ; $72f5: $c0

    ld c, a                                       ; $72f6: $4f
    nop                                           ; $72f7: $00
    jr nc, jr_0ae_7319                            ; $72f8: $30 $1f

    ld a, a                                       ; $72fa: $7f
    inc a                                         ; $72fb: $3c
    jr nz, jr_0ae_730a                            ; $72fc: $20 $0c

    dec bc                                        ; $72fe: $0b
    db $10                                        ; $72ff: $10
    inc bc                                        ; $7300: $03
    ld [hl], h                                    ; $7301: $74
    ld [bc], a                                    ; $7302: $02
    ld d, b                                       ; $7303: $50
    nop                                           ; $7304: $00
    ld bc, $f958                                  ; $7305: $01 $58 $f9
    db $10                                        ; $7308: $10
    ld b, b                                       ; $7309: $40

jr_0ae_730a:
    cp $01                                        ; $730a: $fe $01
    db $fc                                        ; $730c: $fc
    ld bc, $fd40                                  ; $730d: $01 $40 $fd
    inc c                                         ; $7310: $0c
    jr c, jr_0ae_738d                             ; $7311: $38 $7a

    ld a, b                                       ; $7313: $78
    ld h, h                                       ; $7314: $64
    ld h, c                                       ; $7315: $61
    inc e                                         ; $7316: $1c
    ld b, b                                       ; $7317: $40
    nop                                           ; $7318: $00

jr_0ae_7319:
    rst $20                                       ; $7319: $e7
    nop                                           ; $731a: $00
    adc d                                         ; $731b: $8a
    jr jr_0ae_7383                                ; $731c: $18 $65

    ld e, l                                       ; $731e: $5d
    inc sp                                        ; $731f: $33
    dec l                                         ; $7320: $2d
    nop                                           ; $7321: $00
    ld c, $19                                     ; $7322: $0e $19
    ldh a, [$78]                                  ; $7324: $f0 $78
    ldh a, [$ba]                                  ; $7326: $f0 $ba
    ld bc, $0032                                  ; $7328: $01 $32 $00
    nop                                           ; $732b: $00
    rst $38                                       ; $732c: $ff
    ret nz                                        ; $732d: $c0

    adc a                                         ; $732e: $8f
    add b                                         ; $732f: $80
    cp a                                          ; $7330: $bf
    add b                                         ; $7331: $80
    cpl                                           ; $7332: $2f
    nop                                           ; $7333: $00
    rrca                                          ; $7334: $0f
    adc a                                         ; $7335: $8f
    adc a                                         ; $7336: $8f
    ld a, a                                       ; $7337: $7f
    ld [hl], b                                    ; $7338: $70
    jr nz, jr_0ae_735b                            ; $7339: $20 $20

    ld [hl], b                                    ; $733b: $70
    jp nz, Jump_0ae_6050                          ; $733c: $c2 $50 $60

    rrca                                          ; $733f: $0f
    ld [hl], b                                    ; $7340: $70
    ld [bc], a                                    ; $7341: $02
    ld hl, sp+$01                                 ; $7342: $f8 $01
    db $fd                                        ; $7344: $fd
    ld e, b                                       ; $7345: $58
    nop                                           ; $7346: $00
    ld sp, hl                                     ; $7347: $f9
    nop                                           ; $7348: $00
    dec b                                         ; $7349: $05
    pop af                                        ; $734a: $f1
    inc c                                         ; $734b: $0c
    rrca                                          ; $734c: $0f
    dec d                                         ; $734d: $15
    ld c, $c2                                     ; $734e: $0e $c2
    call z, $0100                                 ; $7350: $cc $00 $01
    db $fc                                        ; $7353: $fc
    inc bc                                        ; $7354: $03
    ld e, b                                       ; $7355: $58
    add d                                         ; $7356: $82
    ld a, [bc]                                    ; $7357: $0a
    add d                                         ; $7358: $82
    add d                                         ; $7359: $82
    nop                                           ; $735a: $00

jr_0ae_735b:
    ld [c], a                                     ; $735b: $e2
    ret z                                         ; $735c: $c8

    ld b, $c0                                     ; $735d: $06 $c0
    ld sp, $0135                                  ; $735f: $31 $35 $01
    dec b                                         ; $7362: $05
    nop                                           ; $7363: $00
    jr nc, jr_0ae_7366                            ; $7364: $30 $00

jr_0ae_7366:
    inc c                                         ; $7366: $0c
    ld l, h                                       ; $7367: $6c
    rra                                           ; $7368: $1f
    ret nc                                        ; $7369: $d0

    dec bc                                        ; $736a: $0b
    rla                                           ; $736b: $17
    nop                                           ; $736c: $00
    nop                                           ; $736d: $00
    ld c, $f0                                     ; $736e: $0e $f0
    ldh a, [$3f]                                  ; $7370: $f0 $3f
    ret nz                                        ; $7372: $c0

    ld a, a                                       ; $7373: $7f
    sbc [hl]                                      ; $7374: $9e
    nop                                           ; $7375: $00
    ld b, $01                                     ; $7376: $06 $01
    ld c, $09                                     ; $7378: $0e $09
    add b                                         ; $737a: $80
    add a                                         ; $737b: $87
    ret nz                                        ; $737c: $c0

    rlca                                          ; $737d: $07
    nop                                           ; $737e: $00
    ld d, e                                       ; $737f: $53
    inc hl                                        ; $7380: $23
    pop hl                                        ; $7381: $e1
    add hl, sp                                    ; $7382: $39

jr_0ae_7383:
    ld c, $35                                     ; $7383: $0e $35
    inc bc                                        ; $7385: $03
    push bc                                       ; $7386: $c5
    nop                                           ; $7387: $00
    xor b                                         ; $7388: $a8
    jr z, jr_0ae_735b                             ; $7389: $28 $d0

    ld d, $c0                                     ; $738b: $16 $c0

jr_0ae_738d:
    inc bc                                        ; $738d: $03
    db $e4                                        ; $738e: $e4
    add b                                         ; $738f: $80
    nop                                           ; $7390: $00
    pop bc                                        ; $7391: $c1
    and b                                         ; $7392: $a0
    jp c, Jump_000_23ac                           ; $7393: $da $ac $23

    ld d, [hl]                                    ; $7396: $56
    add d                                         ; $7397: $82
    ld [hl], a                                    ; $7398: $77
    nop                                           ; $7399: $00
    rst $38                                       ; $739a: $ff
    nop                                           ; $739b: $00
    ld a, a                                       ; $739c: $7f
    nop                                           ; $739d: $00
    add b                                         ; $739e: $80
    ccf                                           ; $739f: $3f
    ret nz                                        ; $73a0: $c0

    rrca                                          ; $73a1: $0f
    ld bc, $7707                                  ; $73a2: $01 $07 $77
    add e                                         ; $73a5: $83
    dec de                                        ; $73a6: $1b
    ld l, h                                       ; $73a7: $6c
    ld h, b                                       ; $73a8: $60
    rlca                                          ; $73a9: $07
    add b                                         ; $73aa: $80
    ld d, b                                       ; $73ab: $50
    add b                                         ; $73ac: $80
    inc e                                         ; $73ad: $1c
    ld [$ece2], sp                                ; $73ae: $08 $e2 $ec
    ret                                           ; $73b1: $c9


    ret nz                                        ; $73b2: $c0

    pop hl                                        ; $73b3: $e1
    db $e4                                        ; $73b4: $e4
    ld bc, $0800                                  ; $73b5: $01 $00 $08
    inc bc                                        ; $73b8: $03
    ld sp, $0666                                  ; $73b9: $31 $66 $06
    ld h, b                                       ; $73bc: $60
    ld bc, $00a0                                  ; $73bd: $01 $a0 $00
    adc a                                         ; $73c0: $8f
    call nz, $ecc0                                ; $73c1: $c4 $c0 $ec
    ld h, b                                       ; $73c4: $60
    ld c, b                                       ; $73c5: $48
    add b                                         ; $73c6: $80
    ld a, [bc]                                    ; $73c7: $0a
    nop                                           ; $73c8: $00
    ld c, b                                       ; $73c9: $48
    add hl, bc                                    ; $73ca: $09
    ld [$c218], sp                                ; $73cb: $08 $18 $c2
    db $10                                        ; $73ce: $10
    rst $10                                       ; $73cf: $d7
    stop                                          ; $73d0: $10 $00
    sub $01                                       ; $73d2: $d6 $01
    ld c, $1d                                     ; $73d4: $0e $1d
    inc bc                                        ; $73d6: $03
    ld bc, $2031                                  ; $73d7: $01 $31 $20
    nop                                           ; $73da: $00
    ld l, $08                                     ; $73db: $2e $08
    db $10                                        ; $73dd: $10
    dec e                                         ; $73de: $1d
    dec b                                         ; $73df: $05
    ld c, d                                       ; $73e0: $4a
    ld [hl+], a                                   ; $73e1: $22
    ld h, b                                       ; $73e2: $60
    nop                                           ; $73e3: $00
    ld b, b                                       ; $73e4: $40
    nop                                           ; $73e5: $00
    sbc h                                         ; $73e6: $9c
    ld l, [hl]                                    ; $73e7: $6e
    rrca                                          ; $73e8: $0f
    ld h, b                                       ; $73e9: $60
    ld b, a                                       ; $73ea: $47
    or b                                          ; $73eb: $b0
    nop                                           ; $73ec: $00
    sub b                                         ; $73ed: $90
    ld de, $13af                                  ; $73ee: $11 $af $13
    ld bc, $6862                                  ; $73f1: $01 $62 $68
    ldh [rP1], a                                  ; $73f4: $e0 $00
    rst $30                                       ; $73f6: $f7
    add b                                         ; $73f7: $80
    ld a, h                                       ; $73f8: $7c
    add hl, de                                    ; $73f9: $19
    ld bc, $c001                                  ; $73fa: $01 $01 $c0
    jr nc, jr_0ae_73ff                            ; $73fd: $30 $00

jr_0ae_73ff:
    xor h                                         ; $73ff: $ac

Call_0ae_7400:
jr_0ae_7400:
    ld c, [hl]                                    ; $7400: $4e
    ld l, $27                                     ; $7401: $2e $27
    ld b, a                                       ; $7403: $47
    pop bc                                        ; $7404: $c1
    ret nz                                        ; $7405: $c0

jr_0ae_7406:
    db $10                                        ; $7406: $10
    ld a, [bc]                                    ; $7407: $0a
    jr @-$06                                      ; $7408: $18 $f8

    ld bc, $58fe                                  ; $740a: $01 $fe $58
    nop                                           ; $740d: $00
    nop                                           ; $740e: $00
    halt                                          ; $740f: $76
    nop                                           ; $7410: $00
    ccf                                           ; $7411: $3f
    inc b                                         ; $7412: $04
    add b                                         ; $7413: $80
    rst $18                                       ; $7414: $df
    rra                                           ; $7415: $1f
    ld l, a                                       ; $7416: $6f
    adc a                                         ; $7417: $8f
    ld a, h                                       ; $7418: $7c
    ld [$0777], sp                                ; $7419: $08 $77 $07
    nop                                           ; $741c: $00
    dec de                                        ; $741d: $1b
    add e                                         ; $741e: $83
    ldh [$0c], a                                  ; $741f: $e0 $0c
    ldh a, [rTMA]                                 ; $7421: $f0 $06
    ldh a, [rTMA]                                 ; $7423: $f0 $06
    nop                                           ; $7425: $00
    pop af                                        ; $7426: $f1
    dec b                                         ; $7427: $05
    and b                                         ; $7428: $a0
    adc a                                         ; $7429: $8f
    or b                                          ; $742a: $b0
    add [hl]                                      ; $742b: $86
    ret nc                                        ; $742c: $d0

    call nz, Call_000_0500                        ; $742d: $c4 $00 $05
    inc d                                         ; $7430: $14
    inc bc                                        ; $7431: $03
    ld a, [de]                                    ; $7432: $1a
    inc bc                                        ; $7433: $03
    ld a, [bc]                                    ; $7434: $0a
    inc bc                                        ; $7435: $03
    ld a, [bc]                                    ; $7436: $0a
    nop                                           ; $7437: $00
    pop hl                                        ; $7438: $e1
    add sp, $10                                   ; $7439: $e8 $10
    add [hl]                                      ; $743b: $86
    ld h, e                                       ; $743c: $63
    jr nz, jr_0ae_7454                            ; $743d: $20 $15

    call z, $a100                                 ; $743f: $cc $00 $a1
    dec e                                         ; $7442: $1d
    add b                                         ; $7443: $80
    db $fc                                        ; $7444: $fc
    ld hl, sp-$2c                                 ; $7445: $f8 $d4
    sub d                                         ; $7447: $92
    ld c, $00                                     ; $7448: $0e $00
    ld b, $b8                                     ; $744a: $06 $b8
    inc d                                         ; $744c: $14
    jr jr_0ae_7467                                ; $744d: $18 $18

    ld c, $83                                     ; $744f: $0e $83
    dec c                                         ; $7451: $0d
    nop                                           ; $7452: $00
    inc de                                        ; $7453: $13

jr_0ae_7454:
    ret c                                         ; $7454: $d8

    ld b, $c6                                     ; $7455: $06 $c6
    inc c                                         ; $7457: $0c
    ld c, $09                                     ; $7458: $0e $09
    ld d, $00                                     ; $745a: $16 $00
    ld bc, $74c0                                  ; $745c: $01 $c0 $74
    and $75                                       ; $745f: $e6 $75
    inc h                                         ; $7461: $24
    dec hl                                        ; $7462: $2b
    ld c, [hl]                                    ; $7463: $4e
    nop                                           ; $7464: $00
    add b                                         ; $7465: $80
    cp h                                          ; $7466: $bc

jr_0ae_7467:
    ld b, h                                       ; $7467: $44
    rlca                                          ; $7468: $07
    ldh a, [rNR41]                                ; $7469: $f0 $20
    and d                                         ; $746b: $a2
    ld d, l                                       ; $746c: $55
    nop                                           ; $746d: $00
    ld a, [de]                                    ; $746e: $1a
    dec e                                         ; $746f: $1d
    inc e                                         ; $7470: $1c
    add h                                         ; $7471: $84
    jr c, jr_0ae_7400                             ; $7472: $38 $8c

    jr nc, jr_0ae_7406                            ; $7474: $30 $90

    nop                                           ; $7476: $00
    nop                                           ; $7477: $00
    db $10                                        ; $7478: $10
    ld h, b                                       ; $7479: $60
    ld b, [hl]                                    ; $747a: $46
    pop af                                        ; $747b: $f1
    sub h                                         ; $747c: $94
    dec d                                         ; $747d: $15
    pop bc                                        ; $747e: $c1
    nop                                           ; $747f: $00
    ld c, e                                       ; $7480: $4b
    ld hl, $4770                                  ; $7481: $21 $70 $47
    ld [$2913], sp                                ; $7484: $08 $13 $29
    inc e                                         ; $7487: $1c
    nop                                           ; $7488: $00
    inc d                                         ; $7489: $14
    ld h, $42                                     ; $748a: $26 $42
    inc hl                                        ; $748c: $23
    or c                                          ; $748d: $b1
    ret                                           ; $748e: $c9


    ld e, h                                       ; $748f: $5c
    db $fc                                        ; $7490: $fc
    nop                                           ; $7491: $00
    call nc, $f176                                ; $7492: $d4 $76 $f1
    dec b                                         ; $7495: $05
    pop hl                                        ; $7496: $e1
    dec c                                         ; $7497: $0d
    db $e3                                        ; $7498: $e3
    dec bc                                        ; $7499: $0b
    nop                                           ; $749a: $00
    db $e3                                        ; $749b: $e3
    dec bc                                        ; $749c: $0b
    ld b, e                                       ; $749d: $43
    inc bc                                        ; $749e: $03
    dec de                                        ; $749f: $1b
    add e                                         ; $74a0: $83
    inc de                                        ; $74a1: $13
    ld c, e                                       ; $74a2: $4b
    nop                                           ; $74a3: $00
    ld sp, $e109                                  ; $74a4: $31 $09 $e1
    add sp, -$0f                                  ; $74a7: $e8 $f1
    db $f4                                        ; $74a9: $f4
    ldh a, [$f4]                                  ; $74aa: $f0 $f4
    ld [$f006], sp                                ; $74ac: $08 $06 $f0
    ld [bc], a                                    ; $74af: $02
    ld hl, sp+$02                                 ; $74b0: $f8 $02
    ld [$00fc], sp                                ; $74b2: $08 $fc $00
    ld b, $00                                     ; $74b5: $06 $00
    cp h                                          ; $74b7: $bc
    db $f4                                        ; $74b8: $f4
    ld a, [hl-]                                   ; $74b9: $3a
    db $e4                                        ; $74ba: $e4
    ld c, b                                       ; $74bb: $48
    ld [$261a], sp                                ; $74bc: $08 $1a $26
    nop                                           ; $74bf: $00
    nop                                           ; $74c0: $00
    inc a                                         ; $74c1: $3c
    ld h, $1c                                     ; $74c2: $26 $1c
    dec sp                                        ; $74c4: $3b
    sub l                                         ; $74c5: $95
    adc c                                         ; $74c6: $89
    inc b                                         ; $74c7: $04
    nop                                           ; $74c8: $00
    call nz, $e101                                ; $74c9: $c4 $01 $e1
    inc bc                                        ; $74cc: $03
    ld a, [c]                                     ; $74cd: $f2
    rlca                                          ; $74ce: $07
    ld [c], a                                     ; $74cf: $e2
    nop                                           ; $74d0: $00
    nop                                           ; $74d1: $00
    ld hl, sp-$15                                 ; $74d2: $f8 $eb
    inc de                                        ; $74d4: $13
    pop hl                                        ; $74d5: $e1
    add hl, de                                    ; $74d6: $19
    ld hl, sp+$09                                 ; $74d7: $f8 $09
    rlc b                                         ; $74d9: $cb $00
    adc c                                         ; $74db: $89
    and a                                         ; $74dc: $a7
    ld h, d                                       ; $74dd: $62
    ld h, e                                       ; $74de: $63
    xor [hl]                                      ; $74df: $ae
    jr z, jr_0ae_74f4                             ; $74e0: $28 $12

    ld b, [hl]                                    ; $74e2: $46
    nop                                           ; $74e3: $00
    ld h, [hl]                                    ; $74e4: $66
    ld e, b                                       ; $74e5: $58
    ld b, b                                       ; $74e6: $40
    nop                                           ; $74e7: $00
    add $0b                                       ; $74e8: $c6 $0b
    sub d                                         ; $74ea: $92
    add sp, $00                                   ; $74eb: $e8 $00
    adc c                                         ; $74ed: $89
    ld b, d                                       ; $74ee: $42
    add h                                         ; $74ef: $84
    pop bc                                        ; $74f0: $c1
    rrca                                          ; $74f1: $0f
    ld d, b                                       ; $74f2: $50
    ld e, a                                       ; $74f3: $5f

jr_0ae_74f4:
    rlca                                          ; $74f4: $07
    nop                                           ; $74f5: $00
    jr nz, jr_0ae_750b                            ; $74f6: $20 $13

    ldh a, [$7a]                                  ; $74f8: $f0 $7a
    add hl, de                                    ; $74fa: $19
    ld a, h                                       ; $74fb: $7c
    dec a                                         ; $74fc: $3d
    ld a, e                                       ; $74fd: $7b
    nop                                           ; $74fe: $00
    rst $00                                       ; $74ff: $c7
    ld [hl], h                                    ; $7500: $74
    xor b                                         ; $7501: $a8
    ld b, e                                       ; $7502: $43
    ld e, b                                       ; $7503: $58
    rlca                                          ; $7504: $07
    add b                                         ; $7505: $80
    add b                                         ; $7506: $80
    nop                                           ; $7507: $00
    cp a                                          ; $7508: $bf
    ret nz                                        ; $7509: $c0

    sbc [hl]                                      ; $750a: $9e

jr_0ae_750b:
    ld e, $c0                                     ; $750b: $1e $c0
    ld e, [hl]                                    ; $750d: $5e
    ret nz                                        ; $750e: $c0

    sbc h                                         ; $750f: $9c
    nop                                           ; $7510: $00
    nop                                           ; $7511: $00
    ld b, b                                       ; $7512: $40
    ld b, $02                                     ; $7513: $06 $02
    dec sp                                        ; $7515: $3b
    ld h, e                                       ; $7516: $63
    rra                                           ; $7517: $1f
    ld a, [de]                                    ; $7518: $1a
    nop                                           ; $7519: $00
    ld [de], a                                    ; $751a: $12
    ld a, $3c                                     ; $751b: $3e $3c
    and $44                                       ; $751d: $e6 $44
    inc b                                         ; $751f: $04
    dec b                                         ; $7520: $05
    db $fc                                        ; $7521: $fc
    ld [$fc00], sp                                ; $7522: $08 $00 $fc
    nop                                           ; $7525: $00
    cp $02                                        ; $7526: $fe $02
    ld b, b                                       ; $7528: $40
    add l                                         ; $7529: $85
    add b                                         ; $752a: $80
    add d                                         ; $752b: $82
    nop                                           ; $752c: $00
    inc bc                                        ; $752d: $03
    ld [bc], a                                    ; $752e: $02
    add e                                         ; $752f: $83
    ld b, b                                       ; $7530: $40
    add e                                         ; $7531: $83
    ld [bc], a                                    ; $7532: $02
    jp Jump_000_00c7                              ; $7533: $c3 $c7 $00


    ld b, a                                       ; $7536: $47
    call nz, $4f07                                ; $7537: $c4 $07 $4f
    cpl                                           ; $753a: $2f
    ld hl, sp+$09                                 ; $753b: $f8 $09
    push af                                       ; $753d: $f5

jr_0ae_753e:
    nop                                           ; $753e: $00
    dec c                                         ; $753f: $0d
    push af                                       ; $7540: $f5
    dec c                                         ; $7541: $0d
    db $f4                                        ; $7542: $f4
    ld hl, sp-$0c                                 ; $7543: $f8 $f4
    ld hl, sp-$04                                 ; $7545: $f8 $fc
    nop                                           ; $7547: $00
    push hl                                       ; $7548: $e5
    ld hl, sp-$1b                                 ; $7549: $f8 $e5
    pop hl                                        ; $754b: $e1
    add hl, de                                    ; $754c: $19
    sbc c                                         ; $754d: $99
    inc de                                        ; $754e: $13
    sbc b                                         ; $754f: $98
    nop                                           ; $7550: $00
    dec bc                                        ; $7551: $0b
    ret c                                         ; $7552: $d8

    ld d, e                                       ; $7553: $53
    call nz, Call_0ae_4707                        ; $7554: $c4 $07 $47
    and a                                         ; $7557: $a7
    ld h, e                                       ; $7558: $63
    nop                                           ; $7559: $00
    sub e                                         ; $755a: $93
    ld c, c                                       ; $755b: $49
    push bc                                       ; $755c: $c5
    call $ba41                                    ; $755d: $cd $41 $ba
    add [hl]                                      ; $7560: $86
    cp h                                          ; $7561: $bc
    nop                                           ; $7562: $00
    ld [bc], a                                    ; $7563: $02
    rra                                           ; $7564: $1f
    add d                                         ; $7565: $82
    ld e, a                                       ; $7566: $5f
    add c                                         ; $7567: $81
    sbc a                                         ; $7568: $9f
    ret nz                                        ; $7569: $c0

    adc a                                         ; $756a: $8f
    nop                                           ; $756b: $00
    ret nz                                        ; $756c: $c0

    ret nz                                        ; $756d: $c0

    rrca                                          ; $756e: $0f
    ldh [$2f], a                                  ; $756f: $e0 $2f
    ld a, $be                                     ; $7571: $3e $be
    dec a                                         ; $7573: $3d
    nop                                           ; $7574: $00
    inc a                                         ; $7575: $3c
    ld bc, $017c                                  ; $7576: $01 $7c $01

jr_0ae_7579:
    ld a, h                                       ; $7579: $7c
    ld a, l                                       ; $757a: $7d
    ld a, h                                       ; $757b: $7c
    inc bc                                        ; $757c: $03
    nop                                           ; $757d: $00
    ld a, b                                       ; $757e: $78
    ld a, [hl-]                                   ; $757f: $3a
    cp b                                          ; $7580: $b8
    ld a, [hl-]                                   ; $7581: $3a
    cp b                                          ; $7582: $b8
    dec [hl]                                      ; $7583: $35
    or c                                          ; $7584: $b1
    ld sp, $b103                                  ; $7585: $31 $03 $b1
    ld [hl], e                                    ; $7588: $73
    nop                                           ; $7589: $00
    ld h, a                                       ; $758a: $67
    nop                                           ; $758b: $00
    ld l, a                                       ; $758c: $6f
    ret c                                         ; $758d: $d8

    ld bc, $19c4                                  ; $758e: $01 $c4 $19
    add b                                         ; $7591: $80
    and d                                         ; $7592: $a2
    ld e, d                                       ; $7593: $5a
    ld c, a                                       ; $7594: $4f
    dec sp                                        ; $7595: $3b
    ccf                                           ; $7596: $3f
    add a                                         ; $7597: $87
    rrca                                          ; $7598: $0f
    add a                                         ; $7599: $87
    and b                                         ; $759a: $a0
    nop                                           ; $759b: $00
    add a                                         ; $759c: $87
    ret nc                                        ; $759d: $d0

    ret nz                                        ; $759e: $c0

    rra                                           ; $759f: $1f
    ret nz                                        ; $75a0: $c0

    nop                                           ; $75a1: $00
    ret nz                                        ; $75a2: $c0

    nop                                           ; $75a3: $00
    nop                                           ; $75a4: $00
    nop                                           ; $75a5: $00
    pop hl                                        ; $75a6: $e1
    add hl, de                                    ; $75a7: $19
    ldh a, [$09]                                  ; $75a8: $f0 $09
    ld a, [c]                                     ; $75aa: $f2
    dec bc                                        ; $75ab: $0b
    ld sp, hl                                     ; $75ac: $f9
    ld b, b                                       ; $75ad: $40
    inc bc                                        ; $75ae: $03
    ld a, [hl+]                                   ; $75af: $2a
    jr z, jr_0ae_753e                             ; $75b0: $28 $8c

    ld c, c                                       ; $75b2: $49
    adc h                                         ; $75b3: $8c
    ld c, c                                       ; $75b4: $49
    add l                                         ; $75b5: $85
    ld b, c                                       ; $75b6: $41
    ld hl, $41a3                                  ; $75b7: $21 $a3 $41
    ld a, [hl-]                                   ; $75ba: $3a
    jr @+$01                                      ; $75bb: $18 $ff

    nop                                           ; $75bd: $00
    ldh [$2f], a                                  ; $75be: $e0 $2f
    ld [bc], a                                    ; $75c0: $02
    nop                                           ; $75c1: $00
    db $10                                        ; $75c2: $10
    daa                                           ; $75c3: $27
    ldh [$27], a                                  ; $75c4: $e0 $27
    db $10                                        ; $75c6: $10
    jr z, jr_0ae_7579                             ; $75c7: $28 $b0

    ld [hl], $b0                                  ; $75c9: $36 $b0
    inc [hl]                                      ; $75cb: $34
    nop                                           ; $75cc: $00
    add h                                         ; $75cd: $84
    or b                                          ; $75ce: $b0
    adc h                                         ; $75cf: $8c
    and b                                         ; $75d0: $a0

jr_0ae_75d1:
    ld [$f803], sp                                ; $75d1: $08 $03 $f8
    inc bc                                        ; $75d4: $03
    ld b, b                                       ; $75d5: $40
    inc bc                                        ; $75d6: $03
    ld e, [hl]                                    ; $75d7: $5e
    ld [hl], b                                    ; $75d8: $70
    nop                                           ; $75d9: $00
    nop                                           ; $75da: $00
    db $10                                        ; $75db: $10
    inc bc                                        ; $75dc: $03
    ld h, [hl]                                    ; $75dd: $66
    ld [bc], a                                    ; $75de: $02
    ld b, b                                       ; $75df: $40
    nop                                           ; $75e0: $00
    ld bc, $fff0                                  ; $75e1: $01 $f0 $ff
    nop                                           ; $75e4: $00
    or $08                                        ; $75e5: $f6 $08
    ld bc, $00f0                                  ; $75e7: $01 $f0 $00
    dec bc                                        ; $75ea: $0b
    add sp, $19                                   ; $75eb: $e8 $19
    ld a, [de]                                    ; $75ed: $1a
    dec de                                        ; $75ee: $1b
    jr c, jr_0ae_7613                             ; $75ef: $38 $22

    jr c, jr_0ae_75f3                             ; $75f1: $38 $00

jr_0ae_75f3:
    rst $20                                       ; $75f3: $e7
    nop                                           ; $75f4: $00
    inc bc                                        ; $75f5: $03
    ld [hl], b                                    ; $75f6: $70
    ld [hl], b                                    ; $75f7: $70
    nop                                           ; $75f8: $00
    ld d, b                                       ; $75f9: $50
    ld h, h                                       ; $75fa: $64
    nop                                           ; $75fb: $00
    ld d, b                                       ; $75fc: $50
    halt                                          ; $75fd: $76
    ld [hl], h                                    ; $75fe: $74
    ld d, d                                       ; $75ff: $52
    adc a                                         ; $7600: $8f
    reti                                          ; $7601: $d9


    dec bc                                        ; $7602: $0b
    ld e, c                                       ; $7603: $59
    and b                                         ; $7604: $a0
    ld b, b                                       ; $7605: $40
    ld [$0280], sp                                ; $7606: $08 $80 $02
    ld [$c040], sp                                ; $7609: $08 $40 $c0
    or b                                          ; $760c: $b0
    ret nz                                        ; $760d: $c0

    and b                                         ; $760e: $a0
    jr nc, jr_0ae_75d1                            ; $760f: $30 $c0

    xor b                                         ; $7611: $a8
    ld d, b                                       ; $7612: $50

jr_0ae_7613:
    ld hl, sp+$54                                 ; $7613: $f8 $54

jr_0ae_7615:
    jr jr_0ae_7615                                ; $7615: $18 $fe

    nop                                           ; $7617: $00
    nop                                           ; $7618: $00
    ld hl, sp+$08                                 ; $7619: $f8 $08
    ld b, $f4                                     ; $761b: $06 $f4
    ld b, $02                                     ; $761d: $06 $02
    add b                                         ; $761f: $80
    nop                                           ; $7620: $00
    cp $01                                        ; $7621: $fe $01
    db $fc                                        ; $7623: $fc
    nop                                           ; $7624: $00
    inc bc                                        ; $7625: $03
    ldh a, [$ef]                                  ; $7626: $f0 $ef
    pop hl                                        ; $7628: $e1
    ret nz                                        ; $7629: $c0

    jr @-$58                                      ; $762a: $18 $a6

    ld h, [hl]                                    ; $762c: $66
    nop                                           ; $762d: $00
    ld h, b                                       ; $762e: $60
    ld l, l                                       ; $762f: $6d
    jr nz, jr_0ae_766a                            ; $7630: $20 $38

jr_0ae_7632:
    ld hl, $4138                                  ; $7632: $21 $38 $41
    ld a, [bc]                                    ; $7635: $0a
    nop                                           ; $7636: $00
    ld h, e                                       ; $7637: $63
    ld b, b                                       ; $7638: $40
    ld h, d                                       ; $7639: $62
    pop hl                                        ; $763a: $e1
    ld [c], a                                     ; $763b: $e2
    add sp, -$20                                  ; $763c: $e8 $e0
    add sp, $00                                   ; $763e: $e8 $00
    ldh [$c4], a                                  ; $7640: $e0 $c4
    nop                                           ; $7642: $00
    ld [hl], b                                    ; $7643: $70
    inc [hl]                                      ; $7644: $34
    ld [hl], b                                    ; $7645: $70
    ld b, h                                       ; $7646: $44
    ld [hl], b                                    ; $7647: $70
    nop                                           ; $7648: $00
    ld b, [hl]                                    ; $7649: $46
    ld [hl], h                                    ; $764a: $74
    ld [hl-], a                                   ; $764b: $32
    ld [hl], b                                    ; $764c: $70
    jr nc, jr_0ae_76bf                            ; $764d: $30 $70

    jr nc, jr_0ae_76b2                            ; $764f: $30 $61

    nop                                           ; $7651: $00
    cp d                                          ; $7652: $ba
    adc e                                         ; $7653: $8b
    inc l                                         ; $7654: $2c
    call z, $c606                                 ; $7655: $cc $06 $c6
    db $d3                                        ; $7658: $d3
    ret nz                                        ; $7659: $c0

    nop                                           ; $765a: $00
    sub b                                         ; $765b: $90
    add h                                         ; $765c: $84
    dec sp                                        ; $765d: $3b
    add e                                         ; $765e: $83
    dec sp                                        ; $765f: $3b
    add e                                         ; $7660: $83
    jr c, jr_0ae_76ae                             ; $7661: $38 $4b

    nop                                           ; $7663: $00
    jr c, jr_0ae_76b1                             ; $7664: $38 $4b

    rst $38                                       ; $7666: $ff
    nop                                           ; $7667: $00
    ld a, a                                       ; $7668: $7f
    nop                                           ; $7669: $00

jr_0ae_766a:
    add b                                         ; $766a: $80
    ccf                                           ; $766b: $3f

jr_0ae_766c:
    nop                                           ; $766c: $00
    ret nz                                        ; $766d: $c0

    rrca                                          ; $766e: $0f
    ld [hl], a                                    ; $766f: $77
    rlca                                          ; $7670: $07
    dec de                                        ; $7671: $1b
    add e                                         ; $7672: $83
    db $ec                                        ; $7673: $ec
    ldh [rNR41], a                                ; $7674: $e0 $20
    rlca                                          ; $7676: $07
    ldh a, [$ba]                                  ; $7677: $f0 $ba
    ld e, b                                       ; $7679: $58

jr_0ae_767a:
    ld a, a                                       ; $767a: $7f
    nop                                           ; $767b: $00
    inc bc                                        ; $767c: $03
    inc b                                         ; $767d: $04
    ld a, [de]                                    ; $767e: $1a
    nop                                           ; $767f: $00
    ld hl, $3c19                                  ; $7680: $21 $19 $3c
    jp c, Jump_000_00c4                           ; $7683: $da $c4 $00

    jr nz, @+$65                                  ; $7686: $20 $63

    nop                                           ; $7688: $00
    dec bc                                        ; $7689: $0b
    ld h, a                                       ; $768a: $67
    nop                                           ; $768b: $00
    ld l, $27                                     ; $768c: $2e $27
    ld [hl], c                                    ; $768e: $71
    inc h                                         ; $768f: $24
    jp hl                                         ; $7690: $e9


    nop                                           ; $7691: $00
    ret c                                         ; $7692: $d8

    push af                                       ; $7693: $f5
    ret z                                         ; $7694: $c8

    ld a, [hl-]                                   ; $7695: $3a
    inc e                                         ; $7696: $1c
    dec e                                         ; $7697: $1d
    ld e, $cf                                     ; $7698: $1e $cf
    nop                                           ; $769a: $00
    ld b, c                                       ; $769b: $41
    rst $20                                       ; $769c: $e7
    adc b                                         ; $769d: $88
    ld h, a                                       ; $769e: $67
    scf                                           ; $769f: $37
    ldh [$85], a                                  ; $76a0: $e0 $85
    ld [c], a                                     ; $76a2: $e2
    nop                                           ; $76a3: $00
    ld b, $e2                                     ; $76a4: $06 $e2
    ld c, $e2                                     ; $76a6: $0e $e2
    ld c, $65                                     ; $76a8: $0e $65
    dec c                                         ; $76aa: $0d
    or c                                          ; $76ab: $b1
    nop                                           ; $76ac: $00
    dec a                                         ; $76ad: $3d

jr_0ae_76ae:
    cp c                                          ; $76ae: $b9
    jr c, jr_0ae_7632                             ; $76af: $38 $81

jr_0ae_76b1:
    db $10                                        ; $76b1: $10

jr_0ae_76b2:
    inc b                                         ; $76b2: $04
    adc [hl]                                      ; $76b3: $8e
    ld bc, $cc00                                  ; $76b4: $01 $00 $cc
    ld [hl+], a                                   ; $76b7: $22
    inc hl                                        ; $76b8: $23
    ei                                            ; $76b9: $fb

jr_0ae_76ba:
    ld [bc], a                                    ; $76ba: $02
    ld [hl], h                                    ; $76bb: $74
    dec b                                         ; $76bc: $05
    xor h                                         ; $76bd: $ac
    nop                                           ; $76be: $00

jr_0ae_76bf:
    adc l                                         ; $76bf: $8d
    call c, $ac24                                 ; $76c0: $dc $24 $ac
    inc h                                         ; $76c3: $24
    inc a                                         ; $76c4: $3c
    ld c, l                                       ; $76c5: $4d
    inc a                                         ; $76c6: $3c
    nop                                           ; $76c7: $00
    dec c                                         ; $76c8: $0d
    add c                                         ; $76c9: $81
    dec a                                         ; $76ca: $3d
    add c                                         ; $76cb: $81
    dec a                                         ; $76cc: $3d
    add b                                         ; $76cd: $80
    inc a                                         ; $76ce: $3c
    add b                                         ; $76cf: $80
    nop                                           ; $76d0: $00
    cp h                                          ; $76d1: $bc
    jr nz, jr_0ae_76d4                            ; $76d2: $20 $00

jr_0ae_76d4:
    ld bc, $0109                                  ; $76d4: $01 $09 $01
    ld hl, sp+$30                                 ; $76d7: $f8 $30
    nop                                           ; $76d9: $00
    cp $30                                        ; $76da: $fe $30
    sub a                                         ; $76dc: $97
    jr c, jr_0ae_767a                             ; $76dd: $38 $9b

    jr c, jr_0ae_766c                             ; $76df: $38 $8b

    jr c, jr_0ae_76e7                             ; $76e1: $38 $04

    dec bc                                        ; $76e3: $0b
    sbc b                                         ; $76e4: $98
    dec hl                                        ; $76e5: $2b
    sbc b                                         ; $76e6: $98

jr_0ae_76e7:
    xor c                                         ; $76e7: $a9
    ld a, h                                       ; $76e8: $7c
    ld [$0770], sp                                ; $76e9: $08 $70 $07
    nop                                           ; $76ec: $00
    sbc b                                         ; $76ed: $98
    add e                                         ; $76ee: $83
    nop                                           ; $76ef: $00
    ldh [rNR30], a                                ; $76f0: $e0 $1a
    ret nz                                        ; $76f2: $c0

    ld a, [hl-]                                   ; $76f3: $3a
    or d                                          ; $76f4: $b2
    nop                                           ; $76f5: $00
    inc [hl]                                      ; $76f6: $34
    or h                                          ; $76f7: $b4
    inc l                                         ; $76f8: $2c
    ld [hl+], a                                   ; $76f9: $22
    or b                                          ; $76fa: $b0
    add c                                         ; $76fb: $81
    ret nc                                        ; $76fc: $d0

    rst $00                                       ; $76fd: $c7
    ld [bc], a                                    ; $76fe: $02
    ret nc                                        ; $76ff: $d0

    rst $00                                       ; $7700: $c7
    ret c                                         ; $7701: $d8

    jp $e3e8                                      ; $7702: $c3 $e8 $e3


    ld [bc], a                                    ; $7705: $02
    ld [$0005], sp                                ; $7706: $08 $05 $00
    adc e                                         ; $7709: $8b
    ld bc, $67a3                                  ; $770a: $01 $a3 $67
    ld c, a                                       ; $770d: $4f
    ld c, a                                       ; $770e: $4f
    ld l, [hl]                                    ; $770f: $6e
    ld c, [hl]                                    ; $7710: $4e
    nop                                           ; $7711: $00
    ld c, l                                       ; $7712: $4d
    ld b, $5a                                     ; $7713: $06 $5a
    inc b                                         ; $7715: $04
    ld e, b                                       ; $7716: $58
    ld c, b                                       ; $7717: $48
    jr z, jr_0ae_76ba                             ; $7718: $28 $a0

    nop                                           ; $771a: $00
    ld hl, $b114                                  ; $771b: $21 $14 $b1
    ld hl, $10b4                                  ; $771e: $21 $b4 $10
    dec b                                         ; $7721: $05
    ld d, c                                       ; $7722: $51
    nop                                           ; $7723: $00
    ld b, l                                       ; $7724: $45
    sub b                                         ; $7725: $90
    call nz, Call_0ae_4454                        ; $7726: $c4 $54 $44
    inc d                                         ; $7729: $14
    inc h                                         ; $772a: $24
    call c, Call_000_2000                         ; $772b: $dc $00 $20
    xor l                                         ; $772e: $ad
    call c, Call_0ae_718c                         ; $772f: $dc $8c $71
    inc h                                         ; $7732: $24
    ld hl, $0089                                  ; $7733: $21 $89 $00
    db $fd                                        ; $7736: $fd
    ld [hl], c                                    ; $7737: $71
    nop                                           ; $7738: $00
    ld bc, $f885                                  ; $7739: $01 $85 $f8
    inc b                                         ; $773c: $04
    ret                                           ; $773d: $c9


    nop                                           ; $773e: $00
    sub d                                         ; $773f: $92
    ld [hl+], a                                   ; $7740: $22
    sub h                                         ; $7741: $94
    xor h                                         ; $7742: $ac
    or h                                          ; $7743: $b4
    jr nz, @-$62                                  ; $7744: $20 $9c

    jr nz, jr_0ae_7748                            ; $7746: $20 $00

jr_0ae_7748:
    jr nz, jr_0ae_775a                            ; $7748: $20 $10

    rrca                                          ; $774a: $0f
    jr z, jr_0ae_7774                             ; $774b: $28 $27

    and a                                         ; $774d: $a7
    and b                                         ; $774e: $a0
    jr nc, jr_0ae_7751                            ; $774f: $30 $00

jr_0ae_7751:
    jr z, jr_0ae_7785                             ; $7751: $28 $32

    ld a, [hl+]                                   ; $7753: $2a
    jr @+$2b                                      ; $7754: $18 $29

    add hl, de                                    ; $7756: $19
    ld a, [bc]                                    ; $7757: $0a
    ccf                                           ; $7758: $3f
    nop                                           ; $7759: $00

jr_0ae_775a:
    add hl, sp                                    ; $775a: $39
    nop                                           ; $775b: $00
    rst $38                                       ; $775c: $ff
    rst $38                                       ; $775d: $ff
    di                                            ; $775e: $f3
    ld [de], a                                    ; $775f: $12
    pop hl                                        ; $7760: $e1
    ld de, $6500                                  ; $7761: $11 $00 $65
    and b                                         ; $7764: $a0
    ld c, b                                       ; $7765: $48
    rst $00                                       ; $7766: $c7
    cp d                                          ; $7767: $ba
    sbc [hl]                                      ; $7768: $9e
    ld l, a                                       ; $7769: $6f
    adc c                                         ; $776a: $89
    nop                                           ; $776b: $00
    ld sp, $c125                                  ; $776c: $31 $25 $c1
    ld a, $c2                                     ; $776f: $3e $c2
    db $fc                                        ; $7771: $fc
    inc a                                         ; $7772: $3c
    db $ec                                        ; $7773: $ec

jr_0ae_7774:
    nop                                           ; $7774: $00
    pop hl                                        ; $7775: $e1
    db $f4                                        ; $7776: $f4
    pop af                                        ; $7777: $f1
    db $f4                                        ; $7778: $f4
    pop af                                        ; $7779: $f1
    ld b, $f0                                     ; $777a: $06 $f0
    ld [bc], a                                    ; $777c: $02
    nop                                           ; $777d: $00
    ld hl, sp+$02                                 ; $777e: $f8 $02
    ld hl, sp+$03                                 ; $7780: $f8 $03

jr_0ae_7782:
    ld hl, sp+$01                                 ; $7782: $f8 $01
    db $fc                                        ; $7784: $fc

jr_0ae_7785:
    ld b, b                                       ; $7785: $40
    nop                                           ; $7786: $00
    jr nc, @+$32                                  ; $7787: $30 $30

    ld d, b                                       ; $7789: $50
    jr nc, jr_0ae_77dc                            ; $778a: $30 $50

    ld [hl], b                                    ; $778c: $70
    db $10                                        ; $778d: $10
    jr jr_0ae_7790                                ; $778e: $18 $00

jr_0ae_7790:
    jr c, jr_0ae_77cf                             ; $7790: $38 $3d

    dec c                                         ; $7792: $0d
    cpl                                           ; $7793: $2f
    rla                                           ; $7794: $17
    jr nc, jr_0ae_77c6                            ; $7795: $30 $2f

    inc d                                         ; $7797: $14
    nop                                           ; $7798: $00
    inc h                                         ; $7799: $24
    inc [hl]                                      ; $779a: $34
    dec b                                         ; $779b: $05
    inc [hl]                                      ; $779c: $34
    dec b                                         ; $779d: $05
    ld [hl], c                                    ; $779e: $71
    ld b, l                                       ; $779f: $45
    ldh a, [rP1]                                  ; $77a0: $f0 $00
    push bc                                       ; $77a2: $c5
    inc h                                         ; $77a3: $24
    ld d, h                                       ; $77a4: $54
    ld d, h                                       ; $77a5: $54
    add h                                         ; $77a6: $84
    sub c                                         ; $77a7: $91
    dec b                                         ; $77a8: $05
    ld [hl], e                                    ; $77a9: $73
    nop                                           ; $77aa: $00
    ld b, e                                       ; $77ab: $43
    ld bc, $6cff                                  ; $77ac: $01 $ff $6c
    sbc h                                         ; $77af: $9c
    reti                                          ; $77b0: $d9


    rra                                           ; $77b1: $1f
    add a                                         ; $77b2: $87
    ld b, b                                       ; $77b3: $40
    ld a, c                                       ; $77b4: $79
    ld a, [$0201]                                 ; $77b5: $fa $01 $02
    ldh [$c2], a                                  ; $77b8: $e0 $c2
    or e                                          ; $77ba: $b3
    or b                                          ; $77bb: $b0
    or b                                          ; $77bc: $b0
    nop                                           ; $77bd: $00
    cp h                                          ; $77be: $bc
    ld a, [hl-]                                   ; $77bf: $3a
    inc c                                         ; $77c0: $0c
    ld a, [hl-]                                   ; $77c1: $3a
    inc [hl]                                      ; $77c2: $34

Call_0ae_77c3:
    dec bc                                        ; $77c3: $0b
    dec a                                         ; $77c4: $3d
    inc hl                                        ; $77c5: $23

jr_0ae_77c6:
    nop                                           ; $77c6: $00
    dec d                                         ; $77c7: $15
    scf                                           ; $77c8: $37
    and c                                         ; $77c9: $a1
    rra                                           ; $77ca: $1f
    adc l                                         ; $77cb: $8d
    ccf                                           ; $77cc: $3f
    ldh [rP1], a                                  ; $77cd: $e0 $00

jr_0ae_77cf:
    jr nz, jr_0ae_77d1                            ; $77cf: $20 $00

jr_0ae_77d1:
    ld bc, $0002                                  ; $77d1: $01 $02 $00
    inc bc                                        ; $77d4: $03
    nop                                           ; $77d5: $00
    ld [bc], a                                    ; $77d6: $02
    ld bc, $0003                                  ; $77d7: $01 $03 $00
    ld [bc], a                                    ; $77da: $02
    add [hl]                                      ; $77db: $86

jr_0ae_77dc:
    add a                                         ; $77dc: $87
    jr nc, jr_0ae_77e6                            ; $77dd: $30 $07

    and b                                         ; $77df: $a0
    adc a                                         ; $77e0: $8f
    adc a                                         ; $77e1: $8f
    nop                                           ; $77e2: $00
    cpl                                           ; $77e3: $2f
    adc a                                         ; $77e4: $8f
    cpl                                           ; $77e5: $2f

jr_0ae_77e6:
    add b                                         ; $77e6: $80
    sbc a                                         ; $77e7: $9f
    add b                                         ; $77e8: $80
    rra                                           ; $77e9: $1f
    rra                                           ; $77ea: $1f
    nop                                           ; $77eb: $00
    add b                                         ; $77ec: $80
    ccf                                           ; $77ed: $3f
    nop                                           ; $77ee: $00
    ld bc, $01fc                                  ; $77ef: $01 $fc $01
    db $fc                                        ; $77f2: $fc
    nop                                           ; $77f3: $00

jr_0ae_77f4:
    jr z, jr_0ae_77f4                             ; $77f4: $28 $fe

    cp $c0                                        ; $77f6: $fe $c0
    ld bc, $1afe                                  ; $77f8: $01 $fe $1a
    ld [bc], a                                    ; $77fb: $02
    nop                                           ; $77fc: $00
    nop                                           ; $77fd: $00
    ccf                                           ; $77fe: $3f
    nop                                           ; $77ff: $00
    jr nc, jr_0ae_7782                            ; $7800: $30 $80

    ld e, $a0                                     ; $7802: $1e $a0
    daa                                           ; $7804: $27
    or b                                          ; $7805: $b0
    jr nc, @-$7e                                  ; $7806: $30 $80

    nop                                           ; $7808: $00
    ld a, $c0                                     ; $7809: $3e $c0
    ld e, $40                                     ; $780b: $1e $40
    ld e, $40                                     ; $780d: $1e $40
    rra                                           ; $780f: $1f
    pop hl                                        ; $7810: $e1
    nop                                           ; $7811: $00
    adc h                                         ; $7812: $8c
    ret                                           ; $7813: $c9


    inc e                                         ; $7814: $1c
    sbc c                                         ; $7815: $99
    inc e                                         ; $7816: $1c
    add hl, bc                                    ; $7817: $09
    ld a, h                                       ; $7818: $7c
    dec e                                         ; $7819: $1d
    nop                                           ; $781a: $00
    db $fc                                        ; $781b: $fc
    ld b, l                                       ; $781c: $45
    db $fc                                        ; $781d: $fc
    dec b                                         ; $781e: $05
    db $fc                                        ; $781f: $fc
    dec b                                         ; $7820: $05
    ld a, h                                       ; $7821: $7c
    ldh [rP1], a                                  ; $7822: $e0 $00
    ld [bc], a                                    ; $7824: $02
    db $ec                                        ; $7825: $ec
    ld a, [bc]                                    ; $7826: $0a
    add sp, $22                                   ; $7827: $e8 $22
    ldh [rNR43], a                                ; $7829: $e0 $22
    ldh [rP1], a                                  ; $782b: $e0 $00
    add $f0                                       ; $782d: $c6 $f0
    add $f0                                       ; $782f: $c6 $f0

jr_0ae_7831:
    ld d, $e0                                     ; $7831: $16 $e0
    ld [bc], a                                    ; $7833: $02
    dec de                                        ; $7834: $1b
    nop                                           ; $7835: $00
    adc b                                         ; $7836: $88
    add hl, bc                                    ; $7837: $09
    ret z                                         ; $7838: $c8

    jp nz, $e30f                                  ; $7839: $c2 $0f $e3

    rlca                                          ; $783c: $07
    ldh [rP1], a                                  ; $783d: $e0 $00
    jr nc, jr_0ae_7831                            ; $783f: $30 $f0

    jr c, @-$3e                                   ; $7841: $38 $c0

    ld hl, sp-$38                                 ; $7843: $f8 $c8
    ldh a, [$03]                                  ; $7845: $f0 $03
    nop                                           ; $7847: $00
    add c                                         ; $7848: $81
    ld b, $86                                     ; $7849: $06 $86
    db $fc                                        ; $784b: $fc
    inc c                                         ; $784c: $0c
    ld [hl], c                                    ; $784d: $71
    pop af                                        ; $784e: $f1
    dec b                                         ; $784f: $05
    jr nz, jr_0ae_7856                            ; $7850: $20 $04

    inc bc                                        ; $7852: $03
    jp nz, Jump_000_0200                          ; $7853: $c2 $00 $02

jr_0ae_7856:
    ld hl, sp+$3f                                 ; $7856: $f8 $3f
    nop                                           ; $7858: $00
    ccf                                           ; $7859: $3f
    ldh [$d2], a                                  ; $785a: $e0 $d2
    ld bc, $1802                                  ; $785c: $01 $02 $18
    sbc h                                         ; $785f: $9c
    adc d                                         ; $7860: $8a
    ld h, b                                       ; $7861: $60
    rrca                                          ; $7862: $0f
    and b                                         ; $7863: $a0
    adc a                                         ; $7864: $8f
    and b                                         ; $7865: $a0
    nop                                           ; $7866: $00
    adc [hl]                                      ; $7867: $8e
    ld [hl], $86                                  ; $7868: $36 $86
    db $10                                        ; $786a: $10
    ret nz                                        ; $786b: $c0

    rra                                           ; $786c: $1f
    ret nz                                        ; $786d: $c0

    nop                                           ; $786e: $00
    nop                                           ; $786f: $00
    ret nz                                        ; $7870: $c0

    nop                                           ; $7871: $00
    nop                                           ; $7872: $00
    dec b                                         ; $7873: $05
    inc a                                         ; $7874: $3c
    ld de, $d138                                  ; $7875: $11 $38 $d1
    add hl, de                                    ; $7878: $19
    jr jr_0ae_78c6                                ; $7879: $18 $4b

    adc d                                         ; $787b: $8a

Jump_0ae_787c:
    xor b                                         ; $787c: $a8
    ld a, [bc]                                    ; $787d: $0a
    call z, $ec0a                                 ; $787e: $cc $0a $ec
    ld [hl+], a                                   ; $7881: $22
    ld l, [hl]                                    ; $7882: $6e
    nop                                           ; $7883: $00
    db $10                                        ; $7884: $10
    ld [bc], a                                    ; $7885: $02
    ldh a, [rNR21]                                ; $7886: $f0 $16
    db $10                                        ; $7888: $10
    jr @+$01                                      ; $7889: $18 $ff

    nop                                           ; $788b: $00

jr_0ae_788c:
    sub a                                         ; $788c: $97
    ld h, a                                       ; $788d: $67
    ld [bc], a                                    ; $788e: $02
    add a                                         ; $788f: $87
    ld h, a                                       ; $7890: $67
    adc b                                         ; $7891: $88
    ld l, b                                       ; $7892: $68
    adc b                                         ; $7893: $88
    ld l, b                                       ; $7894: $68
    db $10                                        ; $7895: $10
    jr z, jr_0ae_789e                             ; $7896: $28 $06

    nop                                           ; $7898: $00
    ldh a, [rTIMA]                                ; $7899: $f0 $05
    pop af                                        ; $789b: $f1
    dec b                                         ; $789c: $05
    pop af                                        ; $789d: $f1

jr_0ae_789e:
    dec c                                         ; $789e: $0d
    pop hl                                        ; $789f: $e1
    ld [$030c], sp                                ; $78a0: $08 $0c $03
    ld hl, sp+$03                                 ; $78a3: $f8 $03
    inc bc                                        ; $78a5: $03
    inc [hl]                                      ; $78a6: $34
    jr nz, jr_0ae_78ad                            ; $78a7: $20 $04

    ld c, e                                       ; $78a9: $4b
    db $10                                        ; $78aa: $10
    inc bc                                        ; $78ab: $03
    ld h, h                                       ; $78ac: $64

jr_0ae_78ad:
    ld [bc], a                                    ; $78ad: $02
    ld c, c                                       ; $78ae: $49
    nop                                           ; $78af: $00
    ld bc, $0350                                  ; $78b0: $01 $50 $03
    inc bc                                        ; $78b3: $03
    db $10                                        ; $78b4: $10
    ld e, b                                       ; $78b5: $58
    nop                                           ; $78b6: $00
    add b                                         ; $78b7: $80
    jr nz, jr_0ae_78da                            ; $78b8: $20 $20

    nop                                           ; $78ba: $00
    cp $01                                        ; $78bb: $fe $01
    db $fc                                        ; $78bd: $fc
    inc bc                                        ; $78be: $03
    ld hl, sp+$06                                 ; $78bf: $f8 $06
    ldh [$dc], a                                  ; $78c1: $e0 $dc
    nop                                           ; $78c3: $00
    pop bc                                        ; $78c4: $c1
    nop                                           ; $78c5: $00

jr_0ae_78c6:
    rst $20                                       ; $78c6: $e7
    jr jr_0ae_788c                                ; $78c7: $18 $c3

    inc a                                         ; $78c9: $3c
    add c                                         ; $78ca: $81
    ld h, [hl]                                    ; $78cb: $66
    nop                                           ; $78cc: $00
    nop                                           ; $78cd: $00
    jp RST_18                                     ; $78ce: $c3 $18 $00


    inc a                                         ; $78d1: $3c
    nop                                           ; $78d2: $00
    nop                                           ; $78d3: $00
    inc b                                         ; $78d4: $04
    add b                                         ; $78d5: $80
    ccf                                           ; $78d6: $3f
    db $10                                        ; $78d7: $10
    rst $38                                       ; $78d8: $ff
    nop                                           ; $78d9: $00

jr_0ae_78da:
    ld a, a                                       ; $78da: $7f
    nop                                           ; $78db: $00
    add b                                         ; $78dc: $80
    ccf                                           ; $78dd: $3f
    ret nz                                        ; $78de: $c0

    ld b, $1f                                     ; $78df: $06 $1f
    ld h, a                                       ; $78e1: $67
    rlca                                          ; $78e2: $07
    dec sp                                        ; $78e3: $3b
    add e                                         ; $78e4: $83
    ld b, b                                       ; $78e5: $40
    ld h, b                                       ; $78e6: $60
    rrca                                          ; $78e7: $0f
    ld [hl], b                                    ; $78e8: $70
    dec b                                         ; $78e9: $05
    ld [bc], a                                    ; $78ea: $02
    inc bc                                        ; $78eb: $03
    rlca                                          ; $78ec: $07
    add hl, bc                                    ; $78ed: $09
    inc bc                                        ; $78ee: $03
    inc c                                         ; $78ef: $0c
    inc b                                         ; $78f0: $04
    ld l, c                                       ; $78f1: $69

jr_0ae_78f2:
    jr z, jr_0ae_78f2                             ; $78f2: $28 $fe

    nop                                           ; $78f4: $00
    ld b, b                                       ; $78f5: $40
    add b                                         ; $78f6: $80
    ld a, $de                                     ; $78f7: $3e $de
    db $fc                                        ; $78f9: $fc
    dec a                                         ; $78fa: $3d
    inc sp                                        ; $78fb: $33
    ldh a, [rP1]                                  ; $78fc: $f0 $00
    ld a, a                                       ; $78fe: $7f
    ldh [$f0], a                                  ; $78ff: $e0 $f0
    rst $08                                       ; $7901: $cf
    ld [hl], b                                    ; $7902: $70
    rrca                                          ; $7903: $0f
    adc a                                         ; $7904: $8f
    sub a                                         ; $7905: $97
    nop                                           ; $7906: $00
    or b                                          ; $7907: $b0
    add e                                         ; $7908: $83
    ld l, a                                       ; $7909: $6f
    rrca                                          ; $790a: $0f
    ret nz                                        ; $790b: $c0

    rra                                           ; $790c: $1f
    nop                                           ; $790d: $00
    ccf                                           ; $790e: $3f
    nop                                           ; $790f: $00
    ld d, b                                       ; $7910: $50
    xor a                                         ; $7911: $af
    rst $38                                       ; $7912: $ff

jr_0ae_7913:
    ld a, a                                       ; $7913: $7f
    ret nz                                        ; $7914: $c0

    ld a, $c1                                     ; $7915: $3e $c1
    dec a                                         ; $7917: $3d
    add b                                         ; $7918: $80
    and b                                         ; $7919: $a0
    db $10                                        ; $791a: $10
    ldh [$1f], a                                  ; $791b: $e0 $1f
    jp $a986                                      ; $791d: $c3 $86 $a9


    dec h                                         ; $7920: $25
    ld b, d                                       ; $7921: $42
    nop                                           ; $7922: $00
    nop                                           ; $7923: $00
    ld c, $d0                                     ; $7924: $0e $d0
    ret nz                                        ; $7926: $c0

    dec c                                         ; $7927: $0d
    pop bc                                        ; $7928: $c1
    ld b, $f0                                     ; $7929: $06 $f0
    nop                                           ; $792b: $00
    jp $e0f8                                      ; $792c: $c3 $f8 $e0


    inc a                                         ; $792f: $3c
    ldh [$e7], a                                  ; $7930: $e0 $e7
    ld hl, sp+$3b                                 ; $7932: $f8 $3b
    ld [$1de1], sp                                ; $7934: $08 $e1 $1d
    ld sp, $7c4d                                  ; $7937: $31 $4d $7c
    jr nz, jr_0ae_794b                            ; $793a: $20 $0f

    ld [hl], a                                    ; $793c: $77
    rlca                                          ; $793d: $07
    inc bc                                        ; $793e: $03
    dec de                                        ; $793f: $1b
    add e                                         ; $7940: $83
    db $ec                                        ; $7941: $ec
    ldh [rTAC], a                                 ; $7942: $e0 $07
    ldh a, [$d0]                                  ; $7944: $f0 $d0
    ld c, b                                       ; $7946: $48
    sbc b                                         ; $7947: $98
    ld [$b880], sp                                ; $7948: $08 $80 $b8

jr_0ae_794b:
    nop                                           ; $794b: $00
    ldh a, [$0e]                                  ; $794c: $f0 $0e
    ldh [$c0], a                                  ; $794e: $e0 $c0
    rst $18                                       ; $7950: $df
    ld [$0037], sp                                ; $7951: $08 $37 $00
    inc c                                         ; $7954: $0c
    ld h, e                                       ; $7955: $63
    rrca                                          ; $7956: $0f
    ld l, b                                       ; $7957: $68
    daa                                           ; $7958: $27
    rrca                                          ; $7959: $0f
    add b                                         ; $795a: $80
    sbc a                                         ; $795b: $9f
    nop                                           ; $795c: $00
    ld a, a                                       ; $795d: $7f
    ccf                                           ; $795e: $3f
    ccf                                           ; $795f: $3f
    cp a                                          ; $7960: $bf
    rra                                           ; $7961: $1f
    adc $84                                       ; $7962: $ce $84
    ldh [rP1], a                                  ; $7964: $e0 $00
    ret nz                                        ; $7966: $c0

    or c                                          ; $7967: $b1
    add b                                         ; $7968: $80

jr_0ae_7969:
    ld a, a                                       ; $7969: $7f
    jr nz, jr_0ae_7973                            ; $796a: $20 $07

    jp $0033                                      ; $796c: $c3 $33 $00


    add hl, bc                                    ; $796f: $09
    pop hl                                        ; $7970: $e1
    inc e                                         ; $7971: $1c
    ret nz                                        ; $7972: $c0

jr_0ae_7973:
    ld bc, $0641                                  ; $7973: $01 $41 $06
    db $eb                                        ; $7976: $eb
    nop                                           ; $7977: $00
    jr jr_0ae_7913                                ; $7978: $18 $99

    ld [hl], c                                    ; $797a: $71
    ld h, e                                       ; $797b: $63
    ld [c], a                                     ; $797c: $e2
    add e                                         ; $797d: $83
    ld [$0006], a                                 ; $797e: $ea $06 $00
    push bc                                       ; $7981: $c5
    inc bc                                        ; $7982: $03
    cp b                                          ; $7983: $b8
    cp e                                          ; $7984: $bb
    ld b, l                                       ; $7985: $45
    ld b, h                                       ; $7986: $44
    inc hl                                        ; $7987: $23
    dec bc                                        ; $7988: $0b
    nop                                           ; $7989: $00
    ld [hl+], a                                   ; $798a: $22

Call_0ae_798b:
    ld c, e                                       ; $798b: $4b
    cp c                                          ; $798c: $b9
    add e                                         ; $798d: $83
    nop                                           ; $798e: $00
    pop bc                                        ; $798f: $c1
    ret c                                         ; $7990: $d8

    add $00                                       ; $7991: $c6 $00
    jr jr_0ae_799b                                ; $7993: $18 $06

    adc [hl]                                      ; $7995: $8e
    cp d                                          ; $7996: $ba
    jp $71d5                                      ; $7997: $c3 $d5 $71


    rst $30                                       ; $799a: $f7

jr_0ae_799b:
    nop                                           ; $799b: $00

jr_0ae_799c:
    or b                                          ; $799c: $b0
    dec b                                         ; $799d: $05
    ld de, $86c9                                  ; $799e: $11 $c9 $86
    jr nz, jr_0ae_799c                            ; $79a1: $20 $f9

    ld hl, sp+$00                                 ; $79a3: $f8 $00
    nop                                           ; $79a5: $00
    cp $00                                        ; $79a6: $fe $00
    rst $38                                       ; $79a8: $ff
    ld a, a                                       ; $79a9: $7f
    nop                                           ; $79aa: $00
    ld a, a                                       ; $79ab: $7f
    ld a, a                                       ; $79ac: $7f
    ld [bc], a                                    ; $79ad: $02
    add b                                         ; $79ae: $80
    ccf                                           ; $79af: $3f
    ld b, b                                       ; $79b0: $40
    ldh [$c0], a                                  ; $79b1: $e0 $c0
    ld h, b                                       ; $79b3: $60
    ld a, h                                       ; $79b4: $7c
    ld [$0070], sp                                ; $79b5: $08 $70 $00
    rlca                                          ; $79b8: $07
    sbc b                                         ; $79b9: $98
    add e                                         ; $79ba: $83
    inc c                                         ; $79bb: $0c
    ldh [rTMA], a                                 ; $79bc: $e0 $06
    ldh a, [rTMA]                                 ; $79be: $f0 $06
    nop                                           ; $79c0: $00
    ldh a, [rTIMA]                                ; $79c1: $f0 $05
    pop af                                        ; $79c3: $f1
    jr nz, jr_0ae_79d5                            ; $79c4: $20 $0f

    or b                                          ; $79c6: $b0
    add a                                         ; $79c7: $87
    ret nc                                        ; $79c8: $d0

    ld bc, $10c7                                  ; $79c9: $01 $c7 $10
    ld b, $19                                     ; $79cc: $06 $19
    inc bc                                        ; $79ce: $03
    add sp, -$1e                                  ; $79cf: $e8 $e2
    ld [bc], a                                    ; $79d1: $02
    nop                                           ; $79d2: $00
    nop                                           ; $79d3: $00
    db $e3                                        ; $79d4: $e3

jr_0ae_79d5:
    ld [hl], a                                    ; $79d5: $77
    rlca                                          ; $79d6: $07
    ld hl, sp+$3c                                 ; $79d7: $f8 $3c
    jr nc, jr_0ae_7969                            ; $79d9: $30 $8e

    inc e                                         ; $79db: $1c
    nop                                           ; $79dc: $00
    dec c                                         ; $79dd: $0d
    jr @+$0d                                      ; $79de: $18 $0b

    ld c, c                                       ; $79e0: $49
    rst $20                                       ; $79e1: $e7
    ldh [rP1], a                                  ; $79e2: $e0 $00
    ld e, $00                                     ; $79e4: $1e $00
    ldh [$c0], a                                  ; $79e6: $e0 $c0
    dec bc                                        ; $79e8: $0b
    ld a, [c]                                     ; $79e9: $f2
    jp z, $9ee0                                   ; $79ea: $ca $e0 $9e

    add hl, sp                                    ; $79ed: $39
    nop                                           ; $79ee: $00
    ld hl, sp-$01                                 ; $79ef: $f8 $ff
    pop af                                        ; $79f1: $f1
    ld [hl], a                                    ; $79f2: $77
    adc c                                         ; $79f3: $89
    nop                                           ; $79f4: $00
    nop                                           ; $79f5: $00

jr_0ae_79f6:
    add hl, bc                                    ; $79f6: $09
    nop                                           ; $79f7: $00
    sub $49                                       ; $79f8: $d6 $49
    or c                                          ; $79fa: $b1
    jp nz, Jump_0ae_787c                          ; $79fb: $c2 $7c $78

    rra                                           ; $79fe: $1f
    and $00                                       ; $79ff: $e6 $00
    db $fd                                        ; $7a01: $fd
    dec [hl]                                      ; $7a02: $35
    ret                                           ; $7a03: $c9


    ld l, c                                       ; $7a04: $69
    ld bc, $2621                                  ; $7a05: $01 $21 $26
    inc b                                         ; $7a08: $04
    nop                                           ; $7a09: $00
    ret c                                         ; $7a0a: $d8

    pop bc                                        ; $7a0b: $c1
    ld e, b                                       ; $7a0c: $58
    jr z, jr_0ae_7a3d                             ; $7a0d: $28 $2e

    ccf                                           ; $7a0f: $3f
    xor h                                         ; $7a10: $ac
    rra                                           ; $7a11: $1f
    nop                                           ; $7a12: $00
    jp nc, $e90f                                  ; $7a13: $d2 $0f $e9

    ld [hl], $f7                                  ; $7a16: $36 $f7
    or h                                          ; $7a18: $b4
    add hl, sp                                    ; $7a19: $39
    dec h                                         ; $7a1a: $25
    nop                                           ; $7a1b: $00
    jr c, jr_0ae_7a7e                             ; $7a1c: $38 $60

    cpl                                           ; $7a1e: $2f
    jr nc, jr_0ae_7a38                            ; $7a1f: $30 $17

    jr jr_0ae_7a2e                                ; $7a21: $18 $0b

    ld l, h                                       ; $7a23: $6c
    nop                                           ; $7a24: $00
    ld b, l                                       ; $7a25: $45
    ld [hl], h                                    ; $7a26: $74
    ld hl, $d1d0                                  ; $7a27: $21 $d0 $d1
    rlca                                          ; $7a2a: $07
    call nz, Call_000_0037                        ; $7a2b: $c4 $37 $00

jr_0ae_7a2e:
    or h                                          ; $7a2e: $b4
    dec b                                         ; $7a2f: $05
    pop af                                        ; $7a30: $f1
    dec c                                         ; $7a31: $0d
    pop hl                                        ; $7a32: $e1
    dec bc                                        ; $7a33: $0b
    db $e3                                        ; $7a34: $e3
    dec bc                                        ; $7a35: $0b
    inc b                                         ; $7a36: $04
    db $e3                                        ; $7a37: $e3

jr_0ae_7a38:
    dec de                                        ; $7a38: $1b
    jp $c717                                      ; $7a39: $c3 $17 $c7


    ld [bc], a                                    ; $7a3c: $02

jr_0ae_7a3d:
    ld [$e1ec], sp                                ; $7a3d: $08 $ec $e1
    nop                                           ; $7a40: $00
    db $f4                                        ; $7a41: $f4
    pop af                                        ; $7a42: $f1
    db $f4                                        ; $7a43: $f4
    pop af                                        ; $7a44: $f1
    ld b, $f0                                     ; $7a45: $06 $f0
    ld [bc], a                                    ; $7a47: $02
    ld hl, sp+$00                                 ; $7a48: $f8 $00
    ld [bc], a                                    ; $7a4a: $02
    ld hl, sp+$03                                 ; $7a4b: $f8 $03
    ld hl, sp+$01                                 ; $7a4d: $f8 $01
    db $fc                                        ; $7a4f: $fc
    db $fd                                        ; $7a50: $fd
    ld bc, $0300                                  ; $7a51: $01 $00 $03
    ld a, [$f407]                                 ; $7a54: $fa $07 $f4
    rlca                                          ; $7a57: $07
    ld [c], a                                     ; $7a58: $e2
    ld c, $e4                                     ; $7a59: $0e $e4
    nop                                           ; $7a5b: $00
    dec e                                         ; $7a5c: $1d
    pop bc                                        ; $7a5d: $c1
    dec de                                        ; $7a5e: $1b
    ld b, e                                       ; $7a5f: $43
    rrca                                          ; $7a60: $0f
    jr c, jr_0ae_79f6                             ; $7a61: $38 $93

    inc sp                                        ; $7a63: $33
    nop                                           ; $7a64: $00
    sub e                                         ; $7a65: $93
    and e                                         ; $7a66: $a3
    sub b                                         ; $7a67: $90
    and c                                         ; $7a68: $a1
    stop                                          ; $7a69: $10 $00
    rrca                                          ; $7a6b: $0f
    adc $00                                       ; $7a6c: $ce $00
    rlca                                          ; $7a6e: $07
    jp $8011                                      ; $7a6f: $c3 $11 $80


    cp b                                          ; $7a72: $b8
    nop                                           ; $7a73: $00
    ld hl, sp-$1d                                 ; $7a74: $f8 $e3
    nop                                           ; $7a76: $00
    ret nz                                        ; $7a77: $c0

    inc bc                                        ; $7a78: $03
    add a                                         ; $7a79: $87
    cp h                                          ; $7a7a: $bc
    dec a                                         ; $7a7b: $3d
    nop                                           ; $7a7c: $00
    add b                                         ; $7a7d: $80

jr_0ae_7a7e:
    dec a                                         ; $7a7e: $3d
    nop                                           ; $7a7f: $00
    ld bc, $05bd                                  ; $7a80: $01 $bd $05
    cp c                                          ; $7a83: $b9
    jr c, jr_0ae_7a86                             ; $7a84: $38 $00

jr_0ae_7a86:
    ld h, l                                       ; $7a86: $65
    reti                                          ; $7a87: $d9


    nop                                           ; $7a88: $00
    inc e                                         ; $7a89: $1c
    call nz, $0cdc                                ; $7a8a: $c4 $dc $0c
    ret nc                                        ; $7a8d: $d0

    inc de                                        ; $7a8e: $13
    pop bc                                        ; $7a8f: $c1
    ld bc, $c000                                  ; $7a90: $01 $00 $c0
    adc $12                                       ; $7a93: $ce $12
    inc c                                         ; $7a95: $0c
    or b                                          ; $7a96: $b0
    adc [hl]                                      ; $7a97: $8e
    ld bc, $0038                                  ; $7a98: $01 $38 $00
    jr c, @+$7e                                   ; $7a9b: $38 $7c

    inc a                                         ; $7a9d: $3c
    jr jr_0ae_7ade                                ; $7a9e: $18 $3e

    ld a, h                                       ; $7aa0: $7c
    ld b, d                                       ; $7aa1: $42
    ld a, h                                       ; $7aa2: $7c
    nop                                           ; $7aa3: $00
    ld h, d                                       ; $7aa4: $62
    ld e, h                                       ; $7aa5: $5c
    ld [c], a                                     ; $7aa6: $e2
    call c, $dce2                                 ; $7aa7: $dc $e2 $dc
    scf                                           ; $7aaa: $37
    add a                                         ; $7aab: $87
    nop                                           ; $7aac: $00
    cpl                                           ; $7aad: $2f
    adc a                                         ; $7aae: $8f
    and b                                         ; $7aaf: $a0
    adc a                                         ; $7ab0: $8f
    ld h, b                                       ; $7ab1: $60
    rrca                                          ; $7ab2: $0f
    ld b, b                                       ; $7ab3: $40
    rra                                           ; $7ab4: $1f
    nop                                           ; $7ab5: $00
    ld b, b                                       ; $7ab6: $40
    rra                                           ; $7ab7: $1f
    ret nz                                        ; $7ab8: $c0

    rra                                           ; $7ab9: $1f
    add b                                         ; $7aba: $80
    ccf                                           ; $7abb: $3f
    ld bc, $07fc                                  ; $7abc: $01 $fc $07
    ld bc, $00fc                                  ; $7abf: $01 $fc $00
    cp $fe                                        ; $7ac2: $fe $fe
    dec b                                         ; $7ac4: $05
    ld bc, $0107                                  ; $7ac5: $01 $07 $01
    dec a                                         ; $7ac8: $3d
    ld [bc], a                                    ; $7ac9: $02
    nop                                           ; $7aca: $00
    rrca                                          ; $7acb: $0f
    jr c, jr_0ae_7a7e                             ; $7acc: $38 $b0

    ccf                                           ; $7ace: $3f
    or c                                          ; $7acf: $b1
    ccf                                           ; $7ad0: $3f
    add b                                         ; $7ad1: $80
    ld e, $00                                     ; $7ad2: $1e $00
    add d                                         ; $7ad4: $82
    ld e, $cc                                     ; $7ad5: $1e $cc
    dec c                                         ; $7ad7: $0d
    ld c, l                                       ; $7ad8: $4d
    inc c                                         ; $7ad9: $0c
    ld c, c                                       ; $7ada: $49
    ld [$8300], sp                                ; $7adb: $08 $00 $83

jr_0ae_7ade:
    or e                                          ; $7ade: $b3
    jr nc, jr_0ae_7b58                            ; $7adf: $30 $77

    ld h, d                                       ; $7ae1: $62
    ld [hl], l                                    ; $7ae2: $75
    sbc [hl]                                      ; $7ae3: $9e
    ld e, b                                       ; $7ae4: $58
    nop                                           ; $7ae5: $00
    ld l, $b8                                     ; $7ae6: $2e $b8
    sub [hl]                                      ; $7ae8: $96
    db $fc                                        ; $7ae9: $fc
    add [hl]                                      ; $7aea: $86
    db $f4                                        ; $7aeb: $f4
    add [hl]                                      ; $7aec: $86
    or h                                          ; $7aed: $b4
    nop                                           ; $7aee: $00
    rlca                                          ; $7aef: $07
    add b                                         ; $7af0: $80
    cpl                                           ; $7af1: $2f
    and e                                         ; $7af2: $a3
    adc h                                         ; $7af3: $8c
    xor e                                         ; $7af4: $ab
    ld c, h                                       ; $7af5: $4c
    dec hl                                        ; $7af6: $2b
    nop                                           ; $7af7: $00
    rlca                                          ; $7af8: $07
    ld h, e                                       ; $7af9: $63
    rlca                                          ; $7afa: $07
    ld h, e                                       ; $7afb: $63
    ld [hl], h                                    ; $7afc: $74
    rla                                           ; $7afd: $17
    or $15                                        ; $7afe: $f6 $15
    nop                                           ; $7b00: $00
    rra                                           ; $7b01: $1f
    xor [hl]                                      ; $7b02: $ae
    rra                                           ; $7b03: $1f
    and e                                         ; $7b04: $a3
    cpl                                           ; $7b05: $2f
    sbc a                                         ; $7b06: $9f
    ld sp, $008f                                  ; $7b07: $31 $8f $00
    ccf                                           ; $7b0a: $3f
    and b                                         ; $7b0b: $a0
    ld e, a                                       ; $7b0c: $5f
    ret nc                                        ; $7b0d: $d0

    sub b                                         ; $7b0e: $90
    ld e, a                                       ; $7b0f: $5f
    sbc b                                         ; $7b10: $98
    ld e, a                                       ; $7b11: $5f
    nop                                           ; $7b12: $00
    ld e, $1c                                     ; $7b13: $1e $1c
    sbc h                                         ; $7b15: $9c
    dec c                                         ; $7b16: $0d
    ld hl, $71bc                                  ; $7b17: $21 $bc $71
    db $fc                                        ; $7b1a: $fc
    nop                                           ; $7b1b: $00
    adc l                                         ; $7b1c: $8d
    call c, $d883                                 ; $7b1d: $dc $83 $d8
    ld [hl+], a                                   ; $7b20: $22
    ld hl, sp+$22                                 ; $7b21: $f8 $22
    ld hl, sp+$0e                                 ; $7b23: $f8 $0e
    add b                                         ; $7b25: $80
    ccf                                           ; $7b26: $3f
    add b                                         ; $7b27: $80
    ccf                                           ; $7b28: $3f
    ld e, [hl]                                    ; $7b29: $5e
    ld bc, $1002                                  ; $7b2a: $01 $02 $10
    ld c, h                                       ; $7b2d: $4c
    adc d                                         ; $7b2e: $8a
    ld l, c                                       ; $7b2f: $69
    nop                                           ; $7b30: $00
    ld a, [bc]                                    ; $7b31: $0a
    inc hl                                        ; $7b32: $23
    add hl, hl                                    ; $7b33: $29
    inc hl                                        ; $7b34: $23
    dec hl                                        ; $7b35: $2b
    inc sp                                        ; $7b36: $33
    or b                                          ; $7b37: $b0
    stop                                          ; $7b38: $10 $00
    ret nc                                        ; $7b3a: $d0

    rra                                           ; $7b3b: $1f
    ret nz                                        ; $7b3c: $c0

    nop                                           ; $7b3d: $00
    ret nz                                        ; $7b3e: $c0

    nop                                           ; $7b3f: $00
    nop                                           ; $7b40: $00
    adc [hl]                                      ; $7b41: $8e
    inc bc                                        ; $7b42: $03
    adc b                                         ; $7b43: $88
    ld a, [hl-]                                   ; $7b44: $3a
    sbc h                                         ; $7b45: $9c
    ld [de], a                                    ; $7b46: $12
    inc a                                         ; $7b47: $3c
    ld b, e                                       ; $7b48: $43
    jr z, @+$04                                   ; $7b49: $28 $02

    adc [hl]                                      ; $7b4b: $8e
    ld [$0000], sp                                ; $7b4c: $08 $00 $00
    nop                                           ; $7b4f: $00
    or $07                                        ; $7b50: $f6 $07
    ld a, [c]                                     ; $7b52: $f2
    inc bc                                        ; $7b53: $03
    ld [hl], b                                    ; $7b54: $70
    db $e3                                        ; $7b55: $e3
    jr nz, @+$7a                                  ; $7b56: $20 $78

jr_0ae_7b58:
    ld sp, $1810                                  ; $7b58: $31 $10 $18
    rst $38                                       ; $7b5b: $ff
    nop                                           ; $7b5c: $00
    ret nz                                        ; $7b5d: $c0

    add a                                         ; $7b5e: $87
    ret nz                                        ; $7b5f: $c0

    inc b                                         ; $7b60: $04
    and e                                         ; $7b61: $a3
    scf                                           ; $7b62: $37
    sub $f1                                       ; $7b63: $d6 $f1
    ld bc, $2810                                  ; $7b65: $01 $10 $28
    ld b, $d0                                     ; $7b68: $06 $d0
    nop                                           ; $7b6a: $00
    dec b                                         ; $7b6b: $05
    pop de                                        ; $7b6c: $d1

jr_0ae_7b6d:
    dec b                                         ; $7b6d: $05
    pop de                                        ; $7b6e: $d1
    dec c                                         ; $7b6f: $0d
    add c                                         ; $7b70: $81
    ld [$7003], sp                                ; $7b71: $08 $03 $70
    ld hl, sp-$13                                 ; $7b74: $f8 $ed
    ld [bc], a                                    ; $7b76: $02
    inc [hl]                                      ; $7b77: $34
    jr jr_0ae_7b7e                                ; $7b78: $18 $04

    ld c, e                                       ; $7b7a: $4b
    db $10                                        ; $7b7b: $10
    inc bc                                        ; $7b7c: $03
    add b                                         ; $7b7d: $80

jr_0ae_7b7e:
    ld [bc], a                                    ; $7b7e: $02
    ld h, b                                       ; $7b7f: $60
    nop                                           ; $7b80: $00
    ld bc, $23f8                                  ; $7b81: $01 $f8 $23
    ld [$0703], sp                                ; $7b84: $08 $03 $07
    ld bc, $f0ff                                  ; $7b87: $01 $ff $f0
    nop                                           ; $7b8a: $00
    ldh a, [$ce]                                  ; $7b8b: $f0 $ce
    ld [hl], h                                    ; $7b8d: $74
    dec c                                         ; $7b8e: $0d
    inc a                                         ; $7b8f: $3c
    inc a                                         ; $7b90: $3c
    ld h, d                                       ; $7b91: $62
    ld a, h                                       ; $7b92: $7c
    nop                                           ; $7b93: $00
    dec b                                         ; $7b94: $05

jr_0ae_7b95:
    and $cb                                       ; $7b95: $e6 $cb
    jr jr_0ae_7b6d                                ; $7b97: $18 $d4

    add hl, bc                                    ; $7b99: $09
    inc b                                         ; $7b9a: $04
    inc b                                         ; $7b9b: $04
    ld [$4232], sp                                ; $7b9c: $08 $32 $42
    jr @+$22                                      ; $7b9f: $18 $20

    ld b, b                                       ; $7ba1: $40
    jr jr_0ae_7be4                                ; $7ba2: $18 $40

    add b                                         ; $7ba4: $80
    ldh [rSB], a                                  ; $7ba5: $e0 $01
    ccf                                           ; $7ba7: $3f
    ret nz                                        ; $7ba8: $c0

    jp Jump_0ae_5808                              ; $7ba9: $c3 $08 $58


    jr jr_0ae_7bbe                                ; $7bac: $18 $10

    ld d, b                                       ; $7bae: $50
    ld e, b                                       ; $7baf: $58
    ld b, d                                       ; $7bb0: $42
    add b                                         ; $7bb1: $80
    ld e, a                                       ; $7bb2: $5f
    ret nc                                        ; $7bb3: $d0

    ld bc, $0300                                  ; $7bb4: $01 $00 $03
    inc bc                                        ; $7bb7: $03
    ld e, e                                       ; $7bb8: $5b
    nop                                           ; $7bb9: $00
    nop                                           ; $7bba: $00
    nop                                           ; $7bbb: $00
    ld b, $07                                     ; $7bbc: $06 $07

jr_0ae_7bbe:
    inc e                                         ; $7bbe: $1c
    rlca                                          ; $7bbf: $07

Call_0ae_7bc0:
    jr c, @+$10                                   ; $7bc0: $38 $0e

    ld h, b                                       ; $7bc2: $60
    add hl, de                                    ; $7bc3: $19
    nop                                           ; $7bc4: $00
    ret nz                                        ; $7bc5: $c0

jr_0ae_7bc6:
    or a                                          ; $7bc6: $b7
    ldh [$2f], a                                  ; $7bc7: $e0 $2f
    jp nc, $ec32                                  ; $7bc9: $d2 $32 $ec

    ld h, b                                       ; $7bcc: $60
    nop                                           ; $7bcd: $00
    ret c                                         ; $7bce: $d8

    jp Jump_000_0233                              ; $7bcf: $c3 $33 $02


    ldh [$0c], a                                  ; $7bd2: $e0 $0c
    ld b, $da                                     ; $7bd4: $06 $da
    nop                                           ; $7bd6: $00
    ld e, $86                                     ; $7bd7: $1e $86
    nop                                           ; $7bd9: $00
    add b                                         ; $7bda: $80
    inc d                                         ; $7bdb: $14
    ld e, b                                       ; $7bdc: $58
    ret nz                                        ; $7bdd: $c0

    ld a, [hl]                                    ; $7bde: $7e
    nop                                           ; $7bdf: $00
    ret nz                                        ; $7be0: $c0

    jr z, @-$36                                   ; $7be1: $28 $c8

    db $ec                                        ; $7be3: $ec

jr_0ae_7be4:
    call z, Call_000_08ec                         ; $7be4: $cc $ec $08
    ret nc                                        ; $7be7: $d0

    nop                                           ; $7be8: $00
    inc de                                        ; $7be9: $13
    nop                                           ; $7bea: $00
    add hl, sp                                    ; $7beb: $39
    ld a, $11                                     ; $7bec: $3e $11
    ld [$5723], sp                                ; $7bee: $08 $23 $57
    nop                                           ; $7bf1: $00
    res 0, h                                      ; $7bf2: $cb $84
    ccf                                           ; $7bf4: $3f
    rst $10                                       ; $7bf5: $d7

jr_0ae_7bf6:
    jr nz, jr_0ae_7bc6                            ; $7bf6: $20 $ce

    dec bc                                        ; $7bf8: $0b
    dec d                                         ; $7bf9: $15
    jr nz, jr_0ae_7bf6                            ; $7bfa: $20 $fa

    add hl, sp                                    ; $7bfc: $39
    cp [hl]                                       ; $7bfd: $be
    nop                                           ; $7bfe: $00
    ld a, a                                       ; $7bff: $7f

Jump_0ae_7c00:
    ret nz                                        ; $7c00: $c0

    cp a                                          ; $7c01: $bf
    ret nz                                        ; $7c02: $c0

    and b                                         ; $7c03: $a0
    nop                                           ; $7c04: $00
    sub b                                         ; $7c05: $90
    add sp, $4b                                   ; $7c06: $e8 $4b
    scf                                           ; $7c08: $37
    dec b                                         ; $7c09: $05
    dec de                                        ; $7c0a: $1b
    ld c, h                                       ; $7c0b: $4c
    cpl                                           ; $7c0c: $2f
    jr nz, jr_0ae_7b95                            ; $7c0d: $20 $86

    scf                                           ; $7c0f: $37
    ld a, a                                       ; $7c10: $7f
    ld e, b                                       ; $7c11: $58
    ret nz                                        ; $7c12: $c0

    ld b, b                                       ; $7c13: $40
    ld b, $01                                     ; $7c14: $06 $01
    add hl, de                                    ; $7c16: $19
    nop                                           ; $7c17: $00
    ld e, $3a                                     ; $7c18: $1e $3a
    inc [hl]                                      ; $7c1a: $34
    ld [hl], c                                    ; $7c1b: $71
    ld l, b                                       ; $7c1c: $68
    rst $30                                       ; $7c1d: $f7
    ldh [$6c], a                                  ; $7c1e: $e0 $6c
    nop                                           ; $7c20: $00
    ret nz                                        ; $7c21: $c0

    xor l                                         ; $7c22: $ad
    pop bc                                        ; $7c23: $c1
    nop                                           ; $7c24: $00
    add e                                         ; $7c25: $83
    add b                                         ; $7c26: $80
    rra                                           ; $7c27: $1f
    nop                                           ; $7c28: $00
    nop                                           ; $7c29: $00
    ld a, a                                       ; $7c2a: $7f
    rst $38                                       ; $7c2b: $ff
    inc [hl]                                      ; $7c2c: $34
    rst $38                                       ; $7c2d: $ff
    nop                                           ; $7c2e: $00
    dec de                                        ; $7c2f: $1b
    inc c                                         ; $7c30: $0c
    call $ec00                                    ; $7c31: $cd $00 $ec
    ldh [$f0], a                                  ; $7c34: $e0 $f0
    ld c, a                                       ; $7c36: $4f
    add b                                         ; $7c37: $80
    rra                                           ; $7c38: $1f
    ld l, h                                       ; $7c39: $6c
    inc [hl]                                      ; $7c3a: $34
    nop                                           ; $7c3b: $00
    inc d                                         ; $7c3c: $14
    ld bc, $e0c0                                  ; $7c3d: $01 $c0 $e0
    jp hl                                         ; $7c40: $e9


    add sp, -$1f                                  ; $7c41: $e8 $e1
    inc d                                         ; $7c43: $14
    nop                                           ; $7c44: $00
    pop bc                                        ; $7c45: $c1
    dec d                                         ; $7c46: $15
    db $10                                        ; $7c47: $10
    sbc h                                         ; $7c48: $9c
    jr c, @-$4e                                   ; $7c49: $38 $b0

    ret nz                                        ; $7c4b: $c0

    nop                                           ; $7c4c: $00
    nop                                           ; $7c4d: $00
    ld [bc], a                                    ; $7c4e: $02
    cp d                                          ; $7c4f: $ba
    ld d, [hl]                                    ; $7c50: $56
    ld [hl-], a                                   ; $7c51: $32
    xor d                                         ; $7c52: $aa
    call c, $bd62                                 ; $7c53: $dc $62 $bd
    nop                                           ; $7c56: $00
    ld b, e                                       ; $7c57: $43
    nop                                           ; $7c58: $00
    db $fc                                        ; $7c59: $fc
    dec b                                         ; $7c5a: $05
    adc c                                         ; $7c5b: $89
    dec bc                                        ; $7c5c: $0b
    ld d, e                                       ; $7c5d: $53
    adc l                                         ; $7c5e: $8d
    nop                                           ; $7c5f: $00
    ld h, c                                       ; $7c60: $61
    call nz, $c2a8                                ; $7c61: $c4 $a8 $c2
    ld [hl], h                                    ; $7c64: $74
    ld [hl], d                                    ; $7c65: $72
    ld b, b                                       ; $7c66: $40
    ld bc, $c100                                  ; $7c67: $01 $00 $c1
    rra                                           ; $7c6a: $1f
    pop bc                                        ; $7c6b: $c1
    ld e, $1e                                     ; $7c6c: $1e $1e
    jr c, @+$03                                   ; $7c6e: $38 $01

    cp $00                                        ; $7c70: $fe $00
    nop                                           ; $7c72: $00
    or $10                                        ; $7c73: $f6 $10
    and $3e                                       ; $7c75: $e6 $3e
    ld bc, $c107                                  ; $7c77: $01 $07 $c1
    nop                                           ; $7c7a: $00
    nop                                           ; $7c7b: $00
    inc bc                                        ; $7c7c: $03
    rst $38                                       ; $7c7d: $ff

jr_0ae_7c7e:
    ld bc, $4000                                  ; $7c7e: $01 $00 $40
    and b                                         ; $7c81: $a0
    jr c, jr_0ae_7c84                             ; $7c82: $38 $00

jr_0ae_7c84:
    ret z                                         ; $7c84: $c8

    ld l, h                                       ; $7c85: $6c
    ld d, e                                       ; $7c86: $53
    sub b                                         ; $7c87: $90
    add b                                         ; $7c88: $80
    ld b, $c0                                     ; $7c89: $06 $c0
    dec bc                                        ; $7c8b: $0b
    nop                                           ; $7c8c: $00
    ldh [$4c], a                                  ; $7c8d: $e0 $4c
    add d                                         ; $7c8f: $82
    call nz, $5900                                ; $7c90: $c4 $00 $59
    ld b, b                                       ; $7c93: $40
    ld a, l                                       ; $7c94: $7d
    nop                                           ; $7c95: $00
    dec e                                         ; $7c96: $1d
    nop                                           ; $7c97: $00
    ld de, $1016                                  ; $7c98: $11 $16 $10
    nop                                           ; $7c9b: $00
    jr jr_0ae_7c7e                                ; $7c9c: $18 $e0

    nop                                           ; $7c9e: $00
    ld a, [$e2ec]                                 ; $7c9f: $fa $ec $e2
    inc bc                                        ; $7ca2: $03
    dec c                                         ; $7ca3: $0d
    rra                                           ; $7ca4: $1f
    sbc a                                         ; $7ca5: $9f
    ret nz                                        ; $7ca6: $c0

    nop                                           ; $7ca7: $00
    nop                                           ; $7ca8: $00
    sub c                                         ; $7ca9: $91
    dec b                                         ; $7caa: $05
    ld de, $3105                                  ; $7cab: $11 $05 $31
    dec b                                         ; $7cae: $05
    ld [hl-], a                                   ; $7caf: $32
    nop                                           ; $7cb0: $00
    sub b                                         ; $7cb1: $90
    inc de                                        ; $7cb2: $13
    sub d                                         ; $7cb3: $92
    sbc c                                         ; $7cb4: $99
    add hl, de                                    ; $7cb5: $19
    ld sp, $c251                                  ; $7cb6: $31 $51 $c2
    nop                                           ; $7cb9: $00
    cp e                                          ; $7cba: $bb
    add h                                         ; $7cbb: $84

Jump_0ae_7cbc:
    ld [hl], b                                    ; $7cbc: $70
    ld bc, $19d9                                  ; $7cbd: $01 $d9 $19
    or b                                          ; $7cc0: $b0
    jr c, jr_0ae_7cc3                             ; $7cc1: $38 $00

jr_0ae_7cc3:
    and b                                         ; $7cc3: $a0
    ld [hl-], a                                   ; $7cc4: $32
    ld a, [hl+]                                   ; $7cc5: $2a
    jr nc, jr_0ae_7cde                            ; $7cc6: $30 $16

    adc b                                         ; $7cc8: $88
    ld [hl], e                                    ; $7cc9: $73
    ld h, e                                       ; $7cca: $63
    nop                                           ; $7ccb: $00
    rlca                                          ; $7ccc: $07
    add b                                         ; $7ccd: $80
    inc c                                         ; $7cce: $0c
    or b                                          ; $7ccf: $b0
    sub b                                         ; $7cd0: $90
    sub b                                         ; $7cd1: $90
    ld b, e                                       ; $7cd2: $43
    rlca                                          ; $7cd3: $07
    nop                                           ; $7cd4: $00
    add a                                         ; $7cd5: $87
    inc h                                         ; $7cd6: $24
    rlca                                          ; $7cd7: $07
    ld c, d                                       ; $7cd8: $4a
    inc sp                                        ; $7cd9: $33
    add c                                         ; $7cda: $81
    add b                                         ; $7cdb: $80
    ld d, e                                       ; $7cdc: $53
    nop                                           ; $7cdd: $00

jr_0ae_7cde:
    ld [hl], b                                    ; $7cde: $70
    ld de, $9170                                  ; $7cdf: $11 $70 $91
    ld [hl], h                                    ; $7ce2: $74
    ld h, h                                       ; $7ce3: $64
    sub b                                         ; $7ce4: $90
    ld b, $00                                     ; $7ce5: $06 $00
    ld a, [c]                                     ; $7ce7: $f2
    ld [hl], h                                    ; $7ce8: $74
    ld a, [c]                                     ; $7ce9: $f2
    ld b, [hl]                                    ; $7cea: $46
    add b                                         ; $7ceb: $80
    ld a, c                                       ; $7cec: $79
    ld bc, $0038                                  ; $7ced: $01 $38 $00
    add b                                         ; $7cf0: $80
    add hl, sp                                    ; $7cf1: $39
    add e                                         ; $7cf2: $83
    inc [hl]                                      ; $7cf3: $34
    add a                                         ; $7cf4: $87
    or e                                          ; $7cf5: $b3
    add a                                         ; $7cf6: $87
    scf                                           ; $7cf7: $37
    nop                                           ; $7cf8: $00
    rlca                                          ; $7cf9: $07
    scf                                           ; $7cfa: $37
    rlca                                          ; $7cfb: $07
    ld h, $0f                                     ; $7cfc: $26 $0f
    ret nz                                        ; $7cfe: $c0

    pop bc                                        ; $7cff: $c1

Jump_0ae_7d00:
    ld a, [hl+]                                   ; $7d00: $2a
    nop                                           ; $7d01: $00
    dec b                                         ; $7d02: $05
    ld l, c                                       ; $7d03: $69
    rlca                                          ; $7d04: $07
    ld l, e                                       ; $7d05: $6b
    rlca                                          ; $7d06: $07
    ld e, b                                       ; $7d07: $58
    rla                                           ; $7d08: $17
    ld e, h                                       ; $7d09: $5c
    nop                                           ; $7d0a: $00
    inc de                                        ; $7d0b: $13
    ld c, a                                       ; $7d0c: $4f
    rla                                           ; $7d0d: $17
    ld c, a                                       ; $7d0e: $4f
    rla                                           ; $7d0f: $17
    rla                                           ; $7d10: $17
    dec de                                        ; $7d11: $1b
    jr jr_0ae_7d14                                ; $7d12: $18 $00

jr_0ae_7d14:
    dec e                                         ; $7d14: $1d
    jr jr_0ae_7d3c                                ; $7d15: $18 $25

    dec e                                         ; $7d17: $1d
    adc b                                         ; $7d18: $88
    dec e                                         ; $7d19: $1d
    add b                                         ; $7d1a: $80
    inc e                                         ; $7d1b: $1c
    nop                                           ; $7d1c: $00
    call c, $c001                                 ; $7d1d: $dc $01 $c0
    ld bc, $18c1                                  ; $7d20: $01 $c1 $18
    add hl, de                                    ; $7d23: $19
    dec b                                         ; $7d24: $05
    nop                                           ; $7d25: $00
    add hl, de                                    ; $7d26: $19
    ld bc, $1c1d                                  ; $7d27: $01 $1d $1c
    dec c                                         ; $7d2a: $0d
    inc c                                         ; $7d2b: $0c
    dec l                                         ; $7d2c: $2d
    ld hl, $2500                                  ; $7d2d: $21 $00 $25
    dec h                                         ; $7d30: $25
    ld hl, $3110                                  ; $7d31: $21 $10 $31
    ld a, [hl+]                                   ; $7d34: $2a
    ld h, $0c                                     ; $7d35: $26 $0c
    nop                                           ; $7d37: $00
    ld e, b                                       ; $7d38: $58
    inc c                                         ; $7d39: $0c
    ld e, c                                       ; $7d3a: $59
    dec c                                         ; $7d3b: $0d

jr_0ae_7d3c:
    ld [$800d], sp                                ; $7d3c: $08 $0d $80
    and b                                         ; $7d3f: $a0
    nop                                           ; $7d40: $00
    adc l                                         ; $7d41: $8d
    and b                                         ; $7d42: $a0
    and c                                         ; $7d43: $a1
    and b                                         ; $7d44: $a0
    add c                                         ; $7d45: $81
    sub h                                         ; $7d46: $94
    db $ed                                        ; $7d47: $ed
    cp h                                          ; $7d48: $bc
    nop                                           ; $7d49: $00
    ld b, b                                       ; $7d4a: $40
    ld c, $f2                                     ; $7d4b: $0e $f2
    ld a, [hl]                                    ; $7d4d: $7e
    add d                                         ; $7d4e: $82
    ld b, $fe                                     ; $7d4f: $06 $fe
    ld a, [hl]                                    ; $7d51: $7e
    nop                                           ; $7d52: $00
    db $fc                                        ; $7d53: $fc
    ld b, $fa                                     ; $7d54: $06 $fa
    inc e                                         ; $7d56: $1c
    db $e4                                        ; $7d57: $e4
    ld a, [bc]                                    ; $7d58: $0a
    add $ca                                       ; $7d59: $c6 $ca
    nop                                           ; $7d5b: $00
    adc [hl]                                      ; $7d5c: $8e
    ld c, $c4                                     ; $7d5d: $0e $c4
    inc c                                         ; $7d5f: $0c
    sbc [hl]                                      ; $7d60: $9e
    ld d, $0a                                     ; $7d61: $16 $0a
    ld d, $00                                     ; $7d63: $16 $00
    ld a, [bc]                                    ; $7d65: $0a
    inc e                                         ; $7d66: $1c
    jr c, jr_0ae_7d81                             ; $7d67: $38 $18

    dec a                                         ; $7d69: $3d
    ld c, $87                                     ; $7d6a: $0e $87
    ld c, [hl]                                    ; $7d6c: $4e
    nop                                           ; $7d6d: $00
    add a                                         ; $7d6e: $87
    ld c, [hl]                                    ; $7d6f: $4e
    add $44                                       ; $7d70: $c6 $44
    sub [hl]                                      ; $7d72: $96
    call nz, $9414                                ; $7d73: $c4 $14 $94
    ld bc, $c050                                  ; $7d76: $01 $50 $c0
    ret nc                                        ; $7d79: $d0

    ret z                                         ; $7d7a: $c8

    sub b                                         ; $7d7b: $90
    rra                                           ; $7d7c: $1f
    daa                                           ; $7d7d: $27
    ld [bc], a                                    ; $7d7e: $02
    nop                                           ; $7d7f: $00
    nop                                           ; $7d80: $00

jr_0ae_7d81:
    cpl                                           ; $7d81: $2f
    rra                                           ; $7d82: $1f
    ld l, a                                       ; $7d83: $6f
    ld h, b                                       ; $7d84: $60
    ld e, a                                       ; $7d85: $5f
    ld h, b                                       ; $7d86: $60
    ld e, a                                       ; $7d87: $5f
    jr nz, @+$12                                  ; $7d88: $20 $10

    ret nz                                        ; $7d8a: $c0

    ld h, b                                       ; $7d8b: $60
    ret nz                                        ; $7d8c: $c0

    ld h, h                                       ; $7d8d: $64
    nop                                           ; $7d8e: $00
    pop hl                                        ; $7d8f: $e1
    inc bc                                        ; $7d90: $03
    db $f4                                        ; $7d91: $f4
    nop                                           ; $7d92: $00
    jr z, @+$03                                   ; $7d93: $28 $01

    ld bc, $01be                                  ; $7d95: $01 $be $01
    ld bc, $023d                                  ; $7d98: $01 $3d $02
    db $10                                        ; $7d9b: $10
    ld hl, $0031                                  ; $7d9c: $21 $31 $00
    sub b                                         ; $7d9f: $90
    ld de, $0b90                                  ; $7da0: $11 $90 $0b
    sbc d                                         ; $7da3: $9a
    sub a                                         ; $7da4: $97
    adc h                                         ; $7da5: $8c
    ld e, $00                                     ; $7da6: $1e $00
    ret nc                                        ; $7da8: $d0

    ld e, $da                                     ; $7da9: $1e $da
    ld b, h                                       ; $7dab: $44
    add h                                         ; $7dac: $84
    ld h, b                                       ; $7dad: $60
    ld bc, $0020                                  ; $7dae: $01 $20 $00
    ld h, b                                       ; $7db1: $60
    jr z, jr_0ae_7df4                             ; $7db2: $28 $40

    ld c, b                                       ; $7db4: $48
    ld d, b                                       ; $7db5: $50
    ld c, b                                       ; $7db6: $48
    ld d, h                                       ; $7db7: $54
    sbc [hl]                                      ; $7db8: $9e
    nop                                           ; $7db9: $00
    ld d, b                                       ; $7dba: $50
    ld d, d                                       ; $7dbb: $52
    sub h                                         ; $7dbc: $94
    sbc d                                         ; $7dbd: $9a
    ld c, $38                                     ; $7dbe: $0e $38
    ld sp, hl                                     ; $7dc0: $f9
    pop af                                        ; $7dc1: $f1
    nop                                           ; $7dc2: $00
    ldh a, [rSC]                                  ; $7dc3: $f0 $02
    ld bc, $1318                                  ; $7dc5: $01 $18 $13
    ld a, [hl-]                                   ; $7dc8: $3a
    ld hl, $007a                                  ; $7dc9: $21 $7a $00
    ld b, e                                       ; $7dcc: $43
    ld c, b                                       ; $7dcd: $48
    ld sp, $3158                                  ; $7dce: $31 $58 $31
    and l                                         ; $7dd1: $a5
    inc a                                         ; $7dd2: $3c
    and d                                         ; $7dd3: $a2
    nop                                           ; $7dd4: $00
    dec sp                                        ; $7dd5: $3b
    cp d                                          ; $7dd6: $ba
    add hl, hl                                    ; $7dd7: $29
    or [hl]                                       ; $7dd8: $b6
    dec h                                         ; $7dd9: $25
    sub [hl]                                      ; $7dda: $96
    ld de, $004c                                  ; $7ddb: $11 $4c $00
    bit 1, a                                      ; $7dde: $cb $4f
    pop bc                                        ; $7de0: $c1
    ld c, [hl]                                    ; $7de1: $4e
    add b                                         ; $7de2: $80
    adc b                                         ; $7de3: $88
    ret nc                                        ; $7de4: $d0

    adc c                                         ; $7de5: $89
    nop                                           ; $7de6: $00
    pop de                                        ; $7de7: $d1
    adc c                                         ; $7de8: $89
    or c                                          ; $7de9: $b1
    add c                                         ; $7dea: $81
    add hl, sp                                    ; $7deb: $39
    add hl, de                                    ; $7dec: $19
    jr c, jr_0ae_7df2                             ; $7ded: $38 $03

    nop                                           ; $7def: $00
    jr nc, jr_0ae_7df5                            ; $7df0: $30 $03

jr_0ae_7df2:
    ld [hl], d                                    ; $7df2: $72
    inc bc                                        ; $7df3: $03

jr_0ae_7df4:
    ld h, c                                       ; $7df4: $61

jr_0ae_7df5:
    ret nz                                        ; $7df5: $c0

    add b                                         ; $7df6: $80
    ld b, b                                       ; $7df7: $40
    ld [de], a                                    ; $7df8: $12
    add b                                         ; $7df9: $80
    ld b, b                                       ; $7dfa: $40
    ret nz                                        ; $7dfb: $c0

    jr c, jr_0ae_7e00                             ; $7dfc: $38 $02

    add b                                         ; $7dfe: $80
    add b                                         ; $7dff: $80

Jump_0ae_7e00:
jr_0ae_7e00:
    ld a, $92                                     ; $7e00: $3e $92
    ld hl, $c900                                  ; $7e02: $21 $00 $c9
    db $ec                                        ; $7e05: $ec
    pop bc                                        ; $7e06: $c1
    ld h, h                                       ; $7e07: $64
    ld h, c                                       ; $7e08: $61
    ldh a, [$81]                                  ; $7e09: $f0 $81
    ldh a, [rP1]                                  ; $7e0b: $f0 $00
    add b                                         ; $7e0d: $80
    ld hl, $381e                                  ; $7e0e: $21 $1e $38
    daa                                           ; $7e11: $27
    rrca                                          ; $7e12: $0f
    inc sp                                        ; $7e13: $33
    cp d                                          ; $7e14: $ba
    nop                                           ; $7e15: $00
    ld a, $a8                                     ; $7e16: $3e $a8
    adc h                                         ; $7e18: $8c
    inc [hl]                                      ; $7e19: $34
    ld [$7538], sp                                ; $7e1a: $08 $38 $75
    nop                                           ; $7e1d: $00
    nop                                           ; $7e1e: $00
    nop                                           ; $7e1f: $00
    db $e3                                        ; $7e20: $e3
    inc hl                                        ; $7e21: $23
    ld sp, $0fc1                                  ; $7e22: $31 $c1 $0f
    pop af                                        ; $7e25: $f1
    ret                                           ; $7e26: $c9


    nop                                           ; $7e27: $00
    or b                                          ; $7e28: $b0
    ret                                           ; $7e29: $c9


    or c                                          ; $7e2a: $b1
    ret z                                         ; $7e2b: $c8

    or b                                          ; $7e2c: $b0
    ret c                                         ; $7e2d: $d8

    jr z, jr_0ae_7e30                             ; $7e2e: $28 $00

jr_0ae_7e30:
    nop                                           ; $7e30: $00
    nop                                           ; $7e31: $00
    pop hl                                        ; $7e32: $e1
    ld a, a                                       ; $7e33: $7f
    ldh a, [$cf]                                  ; $7e34: $f0 $cf
    inc e                                         ; $7e36: $1c
    inc de                                        ; $7e37: $13
    ld l, $00                                     ; $7e38: $2e $00
    add sp, $2e                                   ; $7e3a: $e8 $2e
    ret z                                         ; $7e3c: $c8

    ldh [rDMA], a                                 ; $7e3d: $e0 $46
    ld h, b                                       ; $7e3f: $60
    ld h, $00                                     ; $7e40: $26 $00
    nop                                           ; $7e42: $00
    nop                                           ; $7e43: $00
    ld a, [hl]                                    ; $7e44: $7e
    db $d3                                        ; $7e45: $d3
    add e                                         ; $7e46: $83
    ld b, h                                       ; $7e47: $44
    rst $00                                       ; $7e48: $c7
    jp hl                                         ; $7e49: $e9


    ld b, $00                                     ; $7e4a: $06 $00
    inc bc                                        ; $7e4c: $03
    sub h                                         ; $7e4d: $94
    sub a                                         ; $7e4e: $97
    ld a, [c]                                     ; $7e4f: $f2
    ld b, $e6                                     ; $7e50: $06 $e6
    ld c, $03                                     ; $7e52: $0e $03
    ld bc, $e70d                                  ; $7e54: $01 $0d $e7
    dec de                                        ; $7e57: $1b
    inc c                                         ; $7e58: $0c
    ldh a, [rNR32]                                ; $7e59: $f0 $1c
    db $e4                                        ; $7e5b: $e4
    nop                                           ; $7e5c: $00
    ld l, e                                       ; $7e5d: $6b
    ldh a, [rP1]                                  ; $7e5e: $f0 $00
    adc h                                         ; $7e60: $8c
    nop                                           ; $7e61: $00
    ld d, b                                       ; $7e62: $50
    nop                                           ; $7e63: $00
    ld bc, $8080                                  ; $7e64: $01 $80 $80

jr_0ae_7e67:
    ld [bc], a                                    ; $7e67: $02
    ld [$c040], sp                                ; $7e68: $08 $40 $c0
    nop                                           ; $7e6b: $00
    ret nz                                        ; $7e6c: $c0

    db $10                                        ; $7e6d: $10
    ld hl, $8061                                  ; $7e6e: $21 $61 $80

jr_0ae_7e71:
    jr nz, jr_0ae_7e7b                            ; $7e71: $20 $08

    ld h, b                                       ; $7e73: $60
    db $10                                        ; $7e74: $10
    ld h, b                                       ; $7e75: $60
    nop                                           ; $7e76: $00
    nop                                           ; $7e77: $00
    ld h, b                                       ; $7e78: $60
    add b                                         ; $7e79: $80
    and b                                         ; $7e7a: $a0

jr_0ae_7e7b:
    ld d, c                                       ; $7e7b: $51
    and b                                         ; $7e7c: $a0
    db $10                                        ; $7e7d: $10
    db $10                                        ; $7e7e: $10
    and b                                         ; $7e7f: $a0
    add b                                         ; $7e80: $80
    jr nc, jr_0ae_7ea3                            ; $7e81: $30 $20

    inc b                                         ; $7e83: $04
    inc b                                         ; $7e84: $04
    nop                                           ; $7e85: $00
    db $fc                                        ; $7e86: $fc
    ld bc, $0440                                  ; $7e87: $01 $40 $04
    jr nz, jr_0ae_7ecc                            ; $7e8a: $20 $40

    db $10                                        ; $7e8c: $10
    ld b, b                                       ; $7e8d: $40
    jr c, jr_0ae_7e71                             ; $7e8e: $38 $e1

    ld [de], a                                    ; $7e90: $12
    ld [hl], b                                    ; $7e91: $70
    add hl, bc                                    ; $7e92: $09
    ld e, b                                       ; $7e93: $58
    ld b, c                                       ; $7e94: $41
    inc h                                         ; $7e95: $24
    ld d, b                                       ; $7e96: $50
    jr c, jr_0ae_7e67                             ; $7e97: $38 $ce

    ld sp, $0a84                                  ; $7e99: $31 $84 $0a
    add h                                         ; $7e9c: $84
    ld a, $10                                     ; $7e9d: $3e $10
    nop                                           ; $7e9f: $00
    ld b, b                                       ; $7ea0: $40
    and b                                         ; $7ea1: $a0
    add b                                         ; $7ea2: $80

jr_0ae_7ea3:
    ld b, b                                       ; $7ea3: $40
    nop                                           ; $7ea4: $00
    nop                                           ; $7ea5: $00
    jr nc, @+$4a                                  ; $7ea6: $30 $48

    jr nz, @+$12                                  ; $7ea8: $20 $10

    nop                                           ; $7eaa: $00
    cpl                                           ; $7eab: $2f
    jr jr_0ae_7eb5                                ; $7eac: $18 $07

    ld [$0403], sp                                ; $7eae: $08 $03 $04
    dec b                                         ; $7eb1: $05
    ld bc, $0402                                  ; $7eb2: $01 $02 $04

jr_0ae_7eb5:
    ld bc, $0804                                  ; $7eb5: $01 $04 $08
    inc b                                         ; $7eb8: $04
    ld [$0003], sp                                ; $7eb9: $08 $03 $00
    ld [bc], a                                    ; $7ebc: $02
    inc b                                         ; $7ebd: $04
    ld [$0800], sp                                ; $7ebe: $08 $00 $08
    db $10                                        ; $7ec1: $10
    jr jr_0ae_7efe                                ; $7ec2: $18 $3a

    jr nz, @+$73                                  ; $7ec4: $20 $71

    nop                                           ; $7ec6: $00
    ld [bc], a                                    ; $7ec7: $02
    ld [hl-], a                                   ; $7ec8: $32
    add hl, bc                                    ; $7ec9: $09
    ld a, [de]                                    ; $7eca: $1a
    inc h                                         ; $7ecb: $24

jr_0ae_7ecc:
    inc e                                         ; $7ecc: $1c
    ld [bc], a                                    ; $7ecd: $02
    inc c                                         ; $7ece: $0c
    nop                                           ; $7ecf: $00
    db $10                                        ; $7ed0: $10
    ld [$0004], sp                                ; $7ed1: $08 $04 $00
    ld [$0000], sp                                ; $7ed4: $08 $00 $00
    db $10                                        ; $7ed7: $10
    ld b, d                                       ; $7ed8: $42
    jr nz, @+$38                                  ; $7ed9: $20 $36

    ld [$0010], sp                                ; $7edb: $08 $10 $00
    jr jr_0ae_7f01                                ; $7ede: $18 $21

    xor d                                         ; $7ee0: $aa
    jr jr_0ae_7f33                                ; $7ee1: $18 $50

    nop                                           ; $7ee3: $00
    jr nz, @+$72                                  ; $7ee4: $20 $70

    nop                                           ; $7ee6: $00
    ld b, b                                       ; $7ee7: $40
    db $10                                        ; $7ee8: $10
    ld b, b                                       ; $7ee9: $40
    nop                                           ; $7eea: $00
    ld hl, sp+$40                                 ; $7eeb: $f8 $40
    dec b                                         ; $7eed: $05
    cp d                                          ; $7eee: $ba
    jr @+$4e                                      ; $7eef: $18 $4c

    ld [de], a                                    ; $7ef1: $12

jr_0ae_7ef2:
    ld b, [hl]                                    ; $7ef2: $46
    add hl, bc                                    ; $7ef3: $09
    ld b, e                                       ; $7ef4: $43
    inc b                                         ; $7ef5: $04
    inc d                                         ; $7ef6: $14
    ld b, c                                       ; $7ef7: $41
    add d                                         ; $7ef8: $82
    ret nz                                        ; $7ef9: $c0

    jr nz, jr_0ae_7f1c                            ; $7efa: $20 $20

jr_0ae_7efc:
    add h                                         ; $7efc: $84
    ld [bc], a                                    ; $7efd: $02

jr_0ae_7efe:
    ld [$8602], sp                                ; $7efe: $08 $02 $86

jr_0ae_7f01:
    inc e                                         ; $7f01: $1c
    ld bc, $0483                                  ; $7f02: $01 $83 $04
    rst $00                                       ; $7f05: $c7
    nop                                           ; $7f06: $00
    db $dd                                        ; $7f07: $dd
    nop                                           ; $7f08: $00
    ld a, $10                                     ; $7f09: $3e $10
    jr nz, jr_0ae_7f2d                            ; $7f0b: $20 $20

    db $10                                        ; $7f0d: $10
    ld d, b                                       ; $7f0e: $50
    ret nz                                        ; $7f0f: $c0

    jr nz, jr_0ae_7efc                            ; $7f10: $20 $ea

    jr @-$0e                                      ; $7f12: $18 $f0

    nop                                           ; $7f14: $00
    add [hl]                                      ; $7f15: $86
    nop                                           ; $7f16: $00
    ld d, b                                       ; $7f17: $50
    nop                                           ; $7f18: $00
    ld bc, $8080                                  ; $7f19: $01 $80 $80

jr_0ae_7f1c:
    ld [bc], a                                    ; $7f1c: $02
    ld [$c040], sp                                ; $7f1d: $08 $40 $c0
    nop                                           ; $7f20: $00
    ret nz                                        ; $7f21: $c0

    db $10                                        ; $7f22: $10
    ld hl, $8061                                  ; $7f23: $21 $61 $80

jr_0ae_7f26:
    jr nz, jr_0ae_7f30                            ; $7f26: $20 $08

    ld h, b                                       ; $7f28: $60
    db $10                                        ; $7f29: $10
    ld h, b                                       ; $7f2a: $60
    nop                                           ; $7f2b: $00
    nop                                           ; $7f2c: $00

jr_0ae_7f2d:
    ld h, b                                       ; $7f2d: $60
    add b                                         ; $7f2e: $80
    and b                                         ; $7f2f: $a0

jr_0ae_7f30:
    ld d, c                                       ; $7f30: $51
    and b                                         ; $7f31: $a0
    db $10                                        ; $7f32: $10

jr_0ae_7f33:
    db $10                                        ; $7f33: $10
    and b                                         ; $7f34: $a0
    add b                                         ; $7f35: $80
    jr nc, @+$22                                  ; $7f36: $30 $20

    inc b                                         ; $7f38: $04
    inc b                                         ; $7f39: $04
    nop                                           ; $7f3a: $00
    db $fc                                        ; $7f3b: $fc
    ld bc, $0440                                  ; $7f3c: $01 $40 $04
    jr nz, @+$42                                  ; $7f3f: $20 $40

    db $10                                        ; $7f41: $10
    ld b, b                                       ; $7f42: $40
    jr c, jr_0ae_7f26                             ; $7f43: $38 $e1

    ld [de], a                                    ; $7f45: $12
    ld [hl], b                                    ; $7f46: $70
    add hl, bc                                    ; $7f47: $09
    ld e, b                                       ; $7f48: $58
    ld b, c                                       ; $7f49: $41
    inc h                                         ; $7f4a: $24
    ld d, b                                       ; $7f4b: $50
    jr c, jr_0ae_7f1c                             ; $7f4c: $38 $ce

    ld sp, $0a84                                  ; $7f4e: $31 $84 $0a
    add h                                         ; $7f51: $84
    ld e, a                                       ; $7f52: $5f
    ld b, b                                       ; $7f53: $40
    ld [$4830], sp                                ; $7f54: $08 $30 $48
    stop                                          ; $7f57: $10 $00
    cpl                                           ; $7f59: $2f
    jr jr_0ae_7f63                                ; $7f5a: $18 $07

    ld [$0003], sp                                ; $7f5c: $08 $03 $00
    inc b                                         ; $7f5f: $04
    dec b                                         ; $7f60: $05
    ld [bc], a                                    ; $7f61: $02
    inc b                                         ; $7f62: $04

jr_0ae_7f63:
    ld bc, $0804                                  ; $7f63: $01 $04 $08
    inc b                                         ; $7f66: $04
    ld b, b                                       ; $7f67: $40
    ld [$0003], sp                                ; $7f68: $08 $03 $00
    inc b                                         ; $7f6b: $04
    ld [$0800], sp                                ; $7f6c: $08 $00 $08
    db $10                                        ; $7f6f: $10
    jr jr_0ae_7ef2                                ; $7f70: $18 $80

    ld a, [hl-]                                   ; $7f72: $3a
    jr nz, @+$73                                  ; $7f73: $20 $71

    ld [bc], a                                    ; $7f75: $02
    ld [hl-], a                                   ; $7f76: $32
    add hl, bc                                    ; $7f77: $09
    ld a, [de]                                    ; $7f78: $1a
    inc h                                         ; $7f79: $24
    inc e                                         ; $7f7a: $1c
    nop                                           ; $7f7b: $00
    ld [bc], a                                    ; $7f7c: $02
    inc c                                         ; $7f7d: $0c
    db $10                                        ; $7f7e: $10
    ld [$0004], sp                                ; $7f7f: $08 $04 $00
    ld [$1000], sp                                ; $7f82: $08 $00 $10
    nop                                           ; $7f85: $00
    db $10                                        ; $7f86: $10
    jr nz, @+$38                                  ; $7f87: $20 $36

    ld [$0010], sp                                ; $7f89: $08 $10 $00
    jr jr_0ae_7faf                                ; $7f8c: $18 $21

    add b                                         ; $7f8e: $80
    xor d                                         ; $7f8f: $aa
    jr @+$52                                      ; $7f90: $18 $50

    jr nz, @+$72                                  ; $7f92: $20 $70

    nop                                           ; $7f94: $00
    ld b, b                                       ; $7f95: $40
    db $10                                        ; $7f96: $10
    ld b, b                                       ; $7f97: $40
    stop                                          ; $7f98: $10 $00
    ld hl, sp+$05                                 ; $7f9a: $f8 $05
    cp d                                          ; $7f9c: $ba
    jr @+$4e                                      ; $7f9d: $18 $4c

    ld [de], a                                    ; $7f9f: $12
    ld b, [hl]                                    ; $7fa0: $46
    add hl, bc                                    ; $7fa1: $09
    dec b                                         ; $7fa2: $05
    ld b, e                                       ; $7fa3: $43
    inc b                                         ; $7fa4: $04
    ld b, c                                       ; $7fa5: $41
    add d                                         ; $7fa6: $82
    ret nz                                        ; $7fa7: $c0

    jr nz, @+$22                                  ; $7fa8: $20 $20

jr_0ae_7faa:
    add h                                         ; $7faa: $84
    ld [bc], a                                    ; $7fab: $02
    ld [$0207], sp                                ; $7fac: $08 $07 $02

jr_0ae_7faf:
    add [hl]                                      ; $7faf: $86
    ld bc, $0483                                  ; $7fb0: $01 $83 $04
    rst $00                                       ; $7fb3: $c7
    nop                                           ; $7fb4: $00
    db $dd                                        ; $7fb5: $dd
    nop                                           ; $7fb6: $00
    ld a, $10                                     ; $7fb7: $3e $10
    inc b                                         ; $7fb9: $04
    jr nz, @+$22                                  ; $7fba: $20 $20

    ld d, b                                       ; $7fbc: $50
    ret nz                                        ; $7fbd: $c0

    jr nz, jr_0ae_7faa                            ; $7fbe: $20 $ea

    db $18                                        ; $7fc0: $18

    db $14, $00, $12, $00, $1b, $00, $7f, $00, $01, $f8, $23, $f8, $45, $f8, $67, $f8
    db $89, $f8, $ab, $f8, $cd, $f8, $ff, $ef, $f8, $11, $f9, $33, $f9, $55, $f9, $77
    db $f9, $99, $f9, $bb, $f9, $dd, $f9, $f5, $ff, $f9, $21, $fa, $43, $fa, $65, $c2
    db $01, $01, $80, $02, $01, $80, $60, $03, $01, $f8, $23, $10

    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
