; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

Call_00f_4000:
    ld b, $00                                     ; $4000: $06 $00

Call_00f_4002:
    ld hl, $0000                                  ; $4002: $21 $00 $00
    rrca                                          ; $4005: $0f
    jr nc, jr_00f_4009                            ; $4006: $30 $01

    add hl, bc                                    ; $4008: $09

jr_00f_4009:
    sla c                                         ; $4009: $cb $21
    rl b                                          ; $400b: $cb $10
    rrca                                          ; $400d: $0f
    jr nc, jr_00f_4011                            ; $400e: $30 $01

    add hl, bc                                    ; $4010: $09

jr_00f_4011:
    sla c                                         ; $4011: $cb $21
    rl b                                          ; $4013: $cb $10
    rrca                                          ; $4015: $0f
    jr nc, jr_00f_4019                            ; $4016: $30 $01

    add hl, bc                                    ; $4018: $09

jr_00f_4019:
    sla c                                         ; $4019: $cb $21
    rl b                                          ; $401b: $cb $10
    rrca                                          ; $401d: $0f
    jr nc, jr_00f_4021                            ; $401e: $30 $01

    add hl, bc                                    ; $4020: $09

jr_00f_4021:
    sla c                                         ; $4021: $cb $21
    rl b                                          ; $4023: $cb $10
    rrca                                          ; $4025: $0f
    jr nc, jr_00f_4029                            ; $4026: $30 $01

    add hl, bc                                    ; $4028: $09

jr_00f_4029:
    sla c                                         ; $4029: $cb $21
    rl b                                          ; $402b: $cb $10
    rrca                                          ; $402d: $0f
    jr nc, jr_00f_4031                            ; $402e: $30 $01

    add hl, bc                                    ; $4030: $09

jr_00f_4031:
    sla c                                         ; $4031: $cb $21
    rl b                                          ; $4033: $cb $10
    rrca                                          ; $4035: $0f
    jr nc, jr_00f_4039                            ; $4036: $30 $01

    add hl, bc                                    ; $4038: $09

jr_00f_4039:
    sla c                                         ; $4039: $cb $21
    rl b                                          ; $403b: $cb $10
    rrca                                          ; $403d: $0f
    ret nc                                        ; $403e: $d0

    add hl, bc                                    ; $403f: $09
    ret                                           ; $4040: $c9


Call_00f_4041:
    push de                                       ; $4041: $d5
    ld e, l                                       ; $4042: $5d
    ld d, h                                       ; $4043: $54
    ld hl, $0000                                  ; $4044: $21 $00 $00
    xor a                                         ; $4047: $af
    ld [$dff9], a                                 ; $4048: $ea $f9 $df
    ld [$dffa], a                                 ; $404b: $ea $fa $df
    ld [$dffb], a                                 ; $404e: $ea $fb $df
    ld [$dffc], a                                 ; $4051: $ea $fc $df
    ld a, $10                                     ; $4054: $3e $10

jr_00f_4056:
    ld [$dffd], a                                 ; $4056: $ea $fd $df
    rr b                                          ; $4059: $cb $18
    rr c                                          ; $405b: $cb $19
    jr nc, jr_00f_4088                            ; $405d: $30 $29

    add hl, de                                    ; $405f: $19
    push hl                                       ; $4060: $e5
    ld a, [$dffb]                                 ; $4061: $fa $fb $df
    ld l, a                                       ; $4064: $6f
    ld a, [$dff9]                                 ; $4065: $fa $f9 $df
    adc l                                         ; $4068: $8d
    ld [$dff9], a                                 ; $4069: $ea $f9 $df
    ld a, [$dffc]                                 ; $406c: $fa $fc $df
    ld l, a                                       ; $406f: $6f
    ld a, [$dffa]                                 ; $4070: $fa $fa $df
    adc l                                         ; $4073: $8d
    ld [$dffa], a                                 ; $4074: $ea $fa $df
    pop hl                                        ; $4077: $e1
    ld a, [$dff9]                                 ; $4078: $fa $f9 $df
    adc $00                                       ; $407b: $ce $00
    ld [$dff9], a                                 ; $407d: $ea $f9 $df
    ld a, [$dffa]                                 ; $4080: $fa $fa $df
    adc $00                                       ; $4083: $ce $00
    ld [$dffa], a                                 ; $4085: $ea $fa $df

jr_00f_4088:
    sla e                                         ; $4088: $cb $23
    rl d                                          ; $408a: $cb $12
    ld a, [$dffb]                                 ; $408c: $fa $fb $df
    rla                                           ; $408f: $17
    ld [$dffb], a                                 ; $4090: $ea $fb $df
    ld a, [$dffc]                                 ; $4093: $fa $fc $df
    rla                                           ; $4096: $17
    ld [$dffc], a                                 ; $4097: $ea $fc $df
    ld a, [$dffd]                                 ; $409a: $fa $fd $df
    dec a                                         ; $409d: $3d
    jr nz, jr_00f_4056                            ; $409e: $20 $b6

    ld a, [$dff9]                                 ; $40a0: $fa $f9 $df
    ld c, a                                       ; $40a3: $4f
    ld a, [$dffa]                                 ; $40a4: $fa $fa $df
    ld b, a                                       ; $40a7: $47
    pop de                                        ; $40a8: $d1
    ret                                           ; $40a9: $c9


Call_00f_40aa:
    push de                                       ; $40aa: $d5
    call Call_00f_40b0                            ; $40ab: $cd $b0 $40
    pop de                                        ; $40ae: $d1
    ret                                           ; $40af: $c9


Call_00f_40b0:
    call Call_00f_418d                            ; $40b0: $cd $8d $41
    jr z, jr_00f_411a                             ; $40b3: $28 $65

    ld a, b                                       ; $40b5: $78
    or c                                          ; $40b6: $b1
    jr z, jr_00f_4121                             ; $40b7: $28 $68

    ld a, l                                       ; $40b9: $7d
    ld [$dff9], a                                 ; $40ba: $ea $f9 $df
    ld a, h                                       ; $40bd: $7c
    ld [$dffa], a                                 ; $40be: $ea $fa $df
    ld a, c                                       ; $40c1: $79
    ld [$dffb], a                                 ; $40c2: $ea $fb $df
    ld a, b                                       ; $40c5: $78
    ld [$dffc], a                                 ; $40c6: $ea $fc $df
    ld e, $0f                                     ; $40c9: $1e $0f
    ld a, $01                                     ; $40cb: $3e $01
    ld [$dffd], a                                 ; $40cd: $ea $fd $df
    xor a                                         ; $40d0: $af
    ld [$dffe], a                                 ; $40d1: $ea $fe $df
    ld a, [$dff9]                                 ; $40d4: $fa $f9 $df
    ld l, a                                       ; $40d7: $6f
    ld a, [$dffa]                                 ; $40d8: $fa $fa $df
    ld h, a                                       ; $40db: $67
    ld a, [$dffb]                                 ; $40dc: $fa $fb $df

jr_00f_40df:
    ld c, a                                       ; $40df: $4f
    ld a, [$dffc]                                 ; $40e0: $fa $fc $df
    ld b, a                                       ; $40e3: $47
    call Call_00f_418d                            ; $40e4: $cd $8d $41
    jr c, jr_00f_4128                             ; $40e7: $38 $3f

    ld a, [$dffb]                                 ; $40e9: $fa $fb $df
    sla a                                         ; $40ec: $cb $27
    ld [$dffb], a                                 ; $40ee: $ea $fb $df
    ld a, [$dffc]                                 ; $40f1: $fa $fc $df
    rla                                           ; $40f4: $17
    ld [$dffc], a                                 ; $40f5: $ea $fc $df
    ld a, [$dffd]                                 ; $40f8: $fa $fd $df
    sla a                                         ; $40fb: $cb $27
    ld [$dffd], a                                 ; $40fd: $ea $fd $df
    ld a, [$dffe]                                 ; $4100: $fa $fe $df
    rla                                           ; $4103: $17
    ld [$dffe], a                                 ; $4104: $ea $fe $df
    ld a, e                                       ; $4107: $7b
    dec a                                         ; $4108: $3d
    ld e, a                                       ; $4109: $5f
    bit 7, a                                      ; $410a: $cb $7f
    jr z, jr_00f_40df                             ; $410c: $28 $d1

    ld hl, $0000                                  ; $410e: $21 $00 $00
    ld a, [$dff9]                                 ; $4111: $fa $f9 $df
    ld c, a                                       ; $4114: $4f
    ld a, [$dffa]                                 ; $4115: $fa $fa $df
    ld b, a                                       ; $4118: $47
    ret                                           ; $4119: $c9


jr_00f_411a:
    ld hl, $0001                                  ; $411a: $21 $01 $00
    ld bc, $0000                                  ; $411d: $01 $00 $00
    ret                                           ; $4120: $c9


jr_00f_4121:
    ld hl, $0000                                  ; $4121: $21 $00 $00
    ld bc, $0000                                  ; $4124: $01 $00 $00
    ret                                           ; $4127: $c9


jr_00f_4128:
    xor a                                         ; $4128: $af
    ld e, a                                       ; $4129: $5f
    ld d, a                                       ; $412a: $57

jr_00f_412b:
    ld a, [$dffe]                                 ; $412b: $fa $fe $df
    srl a                                         ; $412e: $cb $3f
    ld [$dffe], a                                 ; $4130: $ea $fe $df
    ld b, a                                       ; $4133: $47
    ld a, [$dffd]                                 ; $4134: $fa $fd $df
    rra                                           ; $4137: $1f
    ld [$dffd], a                                 ; $4138: $ea $fd $df
    or b                                          ; $413b: $b0
    jr z, jr_00f_4182                             ; $413c: $28 $44

    ld a, [$dffc]                                 ; $413e: $fa $fc $df
    srl a                                         ; $4141: $cb $3f
    ld [$dffc], a                                 ; $4143: $ea $fc $df
    ld a, [$dffb]                                 ; $4146: $fa $fb $df
    rra                                           ; $4149: $1f
    ld [$dffb], a                                 ; $414a: $ea $fb $df
    ld a, [$dff9]                                 ; $414d: $fa $f9 $df
    ld l, a                                       ; $4150: $6f
    ld a, [$dffa]                                 ; $4151: $fa $fa $df
    ld h, a                                       ; $4154: $67
    ld a, [$dffb]                                 ; $4155: $fa $fb $df
    ld c, a                                       ; $4158: $4f
    ld a, [$dffc]                                 ; $4159: $fa $fc $df
    ld b, a                                       ; $415c: $47
    call Call_00f_418d                            ; $415d: $cd $8d $41
    jr c, jr_00f_412b                             ; $4160: $38 $c9

    ld a, c                                       ; $4162: $79
    cpl                                           ; $4163: $2f
    add $01                                       ; $4164: $c6 $01
    ld c, a                                       ; $4166: $4f
    ld a, b                                       ; $4167: $78
    cpl                                           ; $4168: $2f
    adc $00                                       ; $4169: $ce $00
    ld b, a                                       ; $416b: $47
    add hl, bc                                    ; $416c: $09
    ld a, l                                       ; $416d: $7d
    ld [$dff9], a                                 ; $416e: $ea $f9 $df
    ld a, h                                       ; $4171: $7c
    ld [$dffa], a                                 ; $4172: $ea $fa $df
    ld a, [$dffd]                                 ; $4175: $fa $fd $df
    ld l, a                                       ; $4178: $6f
    ld a, [$dffe]                                 ; $4179: $fa $fe $df
    ld h, a                                       ; $417c: $67
    add hl, de                                    ; $417d: $19
    ld e, l                                       ; $417e: $5d
    ld d, h                                       ; $417f: $54
    jr jr_00f_412b                                ; $4180: $18 $a9

jr_00f_4182:
    ld l, e                                       ; $4182: $6b
    ld h, d                                       ; $4183: $62
    ld a, [$dff9]                                 ; $4184: $fa $f9 $df
    ld c, a                                       ; $4187: $4f
    ld a, [$dffa]                                 ; $4188: $fa $fa $df
    ld b, a                                       ; $418b: $47
    ret                                           ; $418c: $c9


Call_00f_418d:
    ld a, h                                       ; $418d: $7c
    cp b                                          ; $418e: $b8
    ret c                                         ; $418f: $d8

    jr z, jr_00f_4195                             ; $4190: $28 $03

    xor a                                         ; $4192: $af
    inc a                                         ; $4193: $3c
    ret                                           ; $4194: $c9


jr_00f_4195:
    ld a, l                                       ; $4195: $7d
    cp c                                          ; $4196: $b9
    ret                                           ; $4197: $c9


Call_00f_4198:
    ld a, h                                       ; $4198: $7c
    cp d                                          ; $4199: $ba
    ret c                                         ; $419a: $d8

    jr z, jr_00f_41a0                             ; $419b: $28 $03

    xor a                                         ; $419d: $af
    inc a                                         ; $419e: $3c
    ret                                           ; $419f: $c9


jr_00f_41a0:
    ld a, l                                       ; $41a0: $7d
    cp e                                          ; $41a1: $bb
    ret                                           ; $41a2: $c9


Call_00f_41a3:
    ld a, [$df03]                                 ; $41a3: $fa $03 $df
    rla                                           ; $41a6: $17
    jr c, jr_00f_41ab                             ; $41a7: $38 $02

    xor $e9                                       ; $41a9: $ee $e9

jr_00f_41ab:
    ld [$df03], a                                 ; $41ab: $ea $03 $df
    ret                                           ; $41ae: $c9


Call_00f_41af:
    call Call_00f_41a3                            ; $41af: $cd $a3 $41
    cp b                                          ; $41b2: $b8
    ret c                                         ; $41b3: $d8

jr_00f_41b4:
    sub b                                         ; $41b4: $90
    cp b                                          ; $41b5: $b8
    jr nc, jr_00f_41b4                            ; $41b6: $30 $fc

    ret                                           ; $41b8: $c9


Call_00f_41b9:
    push bc                                       ; $41b9: $c5
    inc h                                         ; $41ba: $24
    dec h                                         ; $41bb: $25
    jr z, jr_00f_41db                             ; $41bc: $28 $1d

    ld b, h                                       ; $41be: $44
    call Call_00f_41af                            ; $41bf: $cd $af $41
    cp h                                          ; $41c2: $bc
    ld h, a                                       ; $41c3: $67
    jr nc, jr_00f_41d4                            ; $41c4: $30 $0e

    ld a, [$df03]                                 ; $41c6: $fa $03 $df
    rla                                           ; $41c9: $17
    jr c, jr_00f_41ce                             ; $41ca: $38 $02

    xor $e9                                       ; $41cc: $ee $e9

jr_00f_41ce:
    ld [$df03], a                                 ; $41ce: $ea $03 $df
    ld l, a                                       ; $41d1: $6f
    pop bc                                        ; $41d2: $c1
    ret                                           ; $41d3: $c9


jr_00f_41d4:
    ld b, l                                       ; $41d4: $45
    call Call_00f_41af                            ; $41d5: $cd $af $41
    ld l, a                                       ; $41d8: $6f
    pop bc                                        ; $41d9: $c1
    ret                                           ; $41da: $c9


jr_00f_41db:
    inc l                                         ; $41db: $2c
    dec l                                         ; $41dc: $2d
    jr nz, jr_00f_41e1                            ; $41dd: $20 $02

    pop bc                                        ; $41df: $c1
    ret                                           ; $41e0: $c9


jr_00f_41e1:
    ld b, a                                       ; $41e1: $47
    call Call_00f_41af                            ; $41e2: $cd $af $41
    ld l, a                                       ; $41e5: $6f
    pop bc                                        ; $41e6: $c1
    ret                                           ; $41e7: $c9


Call_00f_41e8:
    xor a                                         ; $41e8: $af
    ld [$dfa6], a                                 ; $41e9: $ea $a6 $df

Call_00f_41ec:
    xor a                                         ; $41ec: $af
    ld [$df74], a                                 ; $41ed: $ea $74 $df

jr_00f_41f0:
    push af                                       ; $41f0: $f5
    ld [$df9c], a                                 ; $41f1: $ea $9c $df
    ld c, a                                       ; $41f4: $4f
    ld b, $00                                     ; $41f5: $06 $00
    xor a                                         ; $41f7: $af
    ld hl, $df9d                                  ; $41f8: $21 $9d $df
    add hl, bc                                    ; $41fb: $09
    ld [hl], a                                    ; $41fc: $77
    sla c                                         ; $41fd: $cb $21
    ld hl, $df7e                                  ; $41ff: $21 $7e $df
    add hl, bc                                    ; $4202: $09
    ld [hl+], a                                   ; $4203: $22
    ld [hl], a                                    ; $4204: $77
    call Call_00f_48df                            ; $4205: $cd $df $48
    call Call_00f_4712                            ; $4208: $cd $12 $47
    pop af                                        ; $420b: $f1
    inc a                                         ; $420c: $3c
    cp $04                                        ; $420d: $fe $04
    jr nz, jr_00f_41f0                            ; $420f: $20 $df

    ret                                           ; $4211: $c9


    xor a                                         ; $4212: $af
    ld [$df02], a                                 ; $4213: $ea $02 $df
    call Call_00f_41e8                            ; $4216: $cd $e8 $41
    xor a                                         ; $4219: $af
    ldh [rNR52], a                                ; $421a: $e0 $26
    ret                                           ; $421c: $c9


    di                                            ; $421d: $f3
    push af                                       ; $421e: $f5
    push hl                                       ; $421f: $e5
    ld a, [$df04]                                 ; $4220: $fa $04 $df
    cp $81                                        ; $4223: $fe $81
    jr nz, jr_00f_423a                            ; $4225: $20 $13

    ld hl, $ff4d                                  ; $4227: $21 $4d $ff
    bit 7, [hl]                                   ; $422a: $cb $7e
    jr z, jr_00f_423a                             ; $422c: $28 $0c

    call Call_00f_4288                            ; $422e: $cd $88 $42
    pop hl                                        ; $4231: $e1
    pop af                                        ; $4232: $f1
    call Call_00f_423c                            ; $4233: $cd $3c $42
    call Call_00f_4288                            ; $4236: $cd $88 $42
    ret                                           ; $4239: $c9


jr_00f_423a:
    pop hl                                        ; $423a: $e1
    pop af                                        ; $423b: $f1

Call_00f_423c:
    di                                            ; $423c: $f3
    ld [$df75], a                                 ; $423d: $ea $75 $df
    ld a, l                                       ; $4240: $7d
    ld [$df76], a                                 ; $4241: $ea $76 $df
    ld a, h                                       ; $4244: $7c
    ld [$df77], a                                 ; $4245: $ea $77 $df
    ld a, e                                       ; $4248: $7b
    ld [$dffe], a                                 ; $4249: $ea $fe $df
    push bc                                       ; $424c: $c5
    call Call_00f_41ec                            ; $424d: $cd $ec $41
    xor a                                         ; $4250: $af
    ldh [rNR52], a                                ; $4251: $e0 $26
    ld a, $80                                     ; $4253: $3e $80
    ldh [rNR52], a                                ; $4255: $e0 $26
    ld a, $77                                     ; $4257: $3e $77
    ldh [rNR50], a                                ; $4259: $e0 $24
    ld a, $33                                     ; $425b: $3e $33
    ldh [rNR51], a                                ; $425d: $e0 $25
    ld a, $c0                                     ; $425f: $3e $c0
    ldh [rNR11], a                                ; $4261: $e0 $11
    ldh [rNR21], a                                ; $4263: $e0 $16
    ld a, $f0                                     ; $4265: $3e $f0
    ldh [rNR12], a                                ; $4267: $e0 $12
    ldh [rNR22], a                                ; $4269: $e0 $17
    ld a, $ff                                     ; $426b: $3e $ff
    ldh [rNR13], a                                ; $426d: $e0 $13
    ldh [rNR23], a                                ; $426f: $e0 $18
    ld a, $87                                     ; $4271: $3e $87
    ldh [rNR14], a                                ; $4273: $e0 $14
    ldh [rNR24], a                                ; $4275: $e0 $19
    pop bc                                        ; $4277: $c1
    call Call_000_3c73                            ; $4278: $cd $73 $3c
    xor a                                         ; $427b: $af
    ldh [rNR52], a                                ; $427c: $e0 $26
    ld a, $80                                     ; $427e: $3e $80
    ldh [rNR52], a                                ; $4280: $e0 $26
    ld a, $77                                     ; $4282: $3e $77
    ldh [rNR50], a                                ; $4284: $e0 $24
    ei                                            ; $4286: $fb
    ret                                           ; $4287: $c9


Call_00f_4288:
    ld hl, $ff4d                                  ; $4288: $21 $4d $ff
    set 0, [hl]                                   ; $428b: $cb $c6
    ldh a, [rIE]                                  ; $428d: $f0 $ff
    ld l, a                                       ; $428f: $6f
    xor a                                         ; $4290: $af
    ldh [rIE], a                                  ; $4291: $e0 $ff
    ldh [rIF], a                                  ; $4293: $e0 $0f
    ld a, $30                                     ; $4295: $3e $30
    ldh [rP1], a                                  ; $4297: $e0 $00
    stop                                          ; $4299: $10 $00
    nop                                           ; $429b: $00
    ld a, l                                       ; $429c: $7d
    ldh [rIE], a                                  ; $429d: $e0 $ff
    ret                                           ; $429f: $c9


    push hl                                       ; $42a0: $e5
    push af                                       ; $42a1: $f5
    push bc                                       ; $42a2: $c5
    push de                                       ; $42a3: $d5
    xor a                                         ; $42a4: $af
    ld [$df9f], a                                 ; $42a5: $ea $9f $df
    ld b, $ff                                     ; $42a8: $06 $ff
    ld c, $02                                     ; $42aa: $0e $02
    ld hl, $0000                                  ; $42ac: $21 $00 $00
    inc a                                         ; $42af: $3c
    ld [$dffe], a                                 ; $42b0: $ea $fe $df
    call Call_00f_4e4b                            ; $42b3: $cd $4b $4e
    pop de                                        ; $42b6: $d1
    ld hl, $df7b                                  ; $42b7: $21 $7b $df
    ld a, e                                       ; $42ba: $7b
    ld [hl+], a                                   ; $42bb: $22
    ld [hl], d                                    ; $42bc: $72
    pop bc                                        ; $42bd: $c1
    pop af                                        ; $42be: $f1
    pop hl                                        ; $42bf: $e1
    ld [$df75], a                                 ; $42c0: $ea $75 $df
    call Call_000_3bbc                            ; $42c3: $cd $bc $3b
    bit 7, h                                      ; $42c6: $cb $7c
    jr z, jr_00f_42d3                             ; $42c8: $28 $09

    ld h, $40                                     ; $42ca: $26 $40
    ld a, [$df75]                                 ; $42cc: $fa $75 $df
    inc a                                         ; $42cf: $3c
    ld [$df75], a                                 ; $42d0: $ea $75 $df

jr_00f_42d3:
    push hl                                       ; $42d3: $e5
    call Call_00f_4bd0                            ; $42d4: $cd $d0 $4b
    ld a, $50                                     ; $42d7: $3e $50
    ld [$df74], a                                 ; $42d9: $ea $74 $df
    ld hl, $df78                                  ; $42dc: $21 $78 $df
    ld a, c                                       ; $42df: $79
    ld [hl+], a                                   ; $42e0: $22
    ld a, b                                       ; $42e1: $78
    ld [hl+], a                                   ; $42e2: $22
    ld [hl], $00                                  ; $42e3: $36 $00
    ld hl, $df76                                  ; $42e5: $21 $76 $df
    pop bc                                        ; $42e8: $c1
    ld a, c                                       ; $42e9: $79
    ld [hl+], a                                   ; $42ea: $22
    ld [hl], b                                    ; $42eb: $70
    ld a, $ff                                     ; $42ec: $3e $ff
    ld c, $02                                     ; $42ee: $0e $02
    call Call_00f_50f3                            ; $42f0: $cd $f3 $50
    ld a, $0f                                     ; $42f3: $3e $0f
    ld [$dff6], a                                 ; $42f5: $ea $f6 $df
    ld hl, $df0f                                  ; $42f8: $21 $0f $df
    set 5, [hl]                                   ; $42fb: $cb $ee
    ret                                           ; $42fd: $c9


    ld hl, $df74                                  ; $42fe: $21 $74 $df
    bit 4, [hl]                                   ; $4301: $cb $66
    ret z                                         ; $4303: $c8

    jp Jump_000_3b8f                              ; $4304: $c3 $8f $3b


    push hl                                       ; $4307: $e5
    push bc                                       ; $4308: $c5
    cp $07                                        ; $4309: $fe $07
    jr nc, jr_00f_430f                            ; $430b: $30 $02

    ld a, $07                                     ; $430d: $3e $07

jr_00f_430f:
    and $07                                       ; $430f: $e6 $07
    ld b, a                                       ; $4311: $47
    swap b                                        ; $4312: $cb $30
    or b                                          ; $4314: $b0
    ld hl, $ff24                                  ; $4315: $21 $24 $ff
    ld c, [hl]                                    ; $4318: $4e
    ld [hl], a                                    ; $4319: $77
    ld a, c                                       ; $431a: $79
    and $07                                       ; $431b: $e6 $07
    pop bc                                        ; $431d: $c1
    pop hl                                        ; $431e: $e1
    ret                                           ; $431f: $c9


    push bc                                       ; $4320: $c5
    cp $0f                                        ; $4321: $fe $0f
    jr c, jr_00f_4327                             ; $4323: $38 $02

    ld a, $0f                                     ; $4325: $3e $0f

jr_00f_4327:
    and $0f                                       ; $4327: $e6 $0f
    ld b, a                                       ; $4329: $47
    ld a, [$dff8]                                 ; $432a: $fa $f8 $df
    ld c, a                                       ; $432d: $4f
    and $f0                                       ; $432e: $e6 $f0
    or b                                          ; $4330: $b0
    ld [$dff8], a                                 ; $4331: $ea $f8 $df
    ld a, c                                       ; $4334: $79
    and $0f                                       ; $4335: $e6 $0f
    pop bc                                        ; $4337: $c1
    ret                                           ; $4338: $c9


    push bc                                       ; $4339: $c5
    cp $0f                                        ; $433a: $fe $0f
    jr c, jr_00f_4340                             ; $433c: $38 $02

    ld a, $0f                                     ; $433e: $3e $0f

jr_00f_4340:
    and $0f                                       ; $4340: $e6 $0f
    swap a                                        ; $4342: $cb $37
    ld b, a                                       ; $4344: $47
    ld a, [$dff8]                                 ; $4345: $fa $f8 $df
    ld c, a                                       ; $4348: $4f
    and $0f                                       ; $4349: $e6 $0f
    or b                                          ; $434b: $b0
    ld [$dff8], a                                 ; $434c: $ea $f8 $df
    ld a, c                                       ; $434f: $79
    swap a                                        ; $4350: $cb $37
    and $0f                                       ; $4352: $e6 $0f
    pop bc                                        ; $4354: $c1
    ret                                           ; $4355: $c9


    ld a, [$df02]                                 ; $4356: $fa $02 $df
    cp $f5                                        ; $4359: $fe $f5
    ret nz                                        ; $435b: $c0

    ld hl, $df1d                                  ; $435c: $21 $1d $df
    xor a                                         ; $435f: $af
    ld [hl+], a                                   ; $4360: $22
    ld [hl+], a                                   ; $4361: $22
    ld [hl+], a                                   ; $4362: $22
    ld [hl+], a                                   ; $4363: $22
    ld [hl+], a                                   ; $4364: $22
    ld [hl], a                                    ; $4365: $77
    ld a, [$df74]                                 ; $4366: $fa $74 $df
    bit 7, a                                      ; $4369: $cb $7f
    call nz, Call_00f_56d9                        ; $436b: $c4 $d9 $56
    call Call_00f_5004                            ; $436e: $cd $04 $50
    call Call_00f_53ec                            ; $4371: $cd $ec $53
    call Call_00f_552c                            ; $4374: $cd $2c $55
    ld a, [$df74]                                 ; $4377: $fa $74 $df
    bit 0, a                                      ; $437a: $cb $47
    call nz, Call_00f_43e0                        ; $437c: $c4 $e0 $43
    ld bc, $0003                                  ; $437f: $01 $03 $00
    jr jr_00f_43b3                                ; $4382: $18 $2f

jr_00f_4384:
    ld hl, $df09                                  ; $4384: $21 $09 $df
    add hl, bc                                    ; $4387: $09
    bit 5, [hl]                                   ; $4388: $cb $6e
    jr z, jr_00f_43b3                             ; $438a: $28 $27

    res 5, [hl]                                   ; $438c: $cb $ae
    set 6, [hl]                                   ; $438e: $cb $f6
    push bc                                       ; $4390: $c5
    sla c                                         ; $4391: $cb $21
    ld d, $00                                     ; $4393: $16 $00
    ld e, c                                       ; $4395: $59
    ld hl, $df15                                  ; $4396: $21 $15 $df
    add hl, de                                    ; $4399: $19
    ld a, [hl+]                                   ; $439a: $2a
    ld b, [hl]                                    ; $439b: $46
    ld c, a                                       ; $439c: $4f
    ld hl, $df1d                                  ; $439d: $21 $1d $df
    add hl, de                                    ; $43a0: $19
    ld a, [hl+]                                   ; $43a1: $2a
    ld h, [hl]                                    ; $43a2: $66
    ld l, a                                       ; $43a3: $6f
    add hl, bc                                    ; $43a4: $09
    ld c, l                                       ; $43a5: $4d
    ld b, h                                       ; $43a6: $44
    ld hl, $df23                                  ; $43a7: $21 $23 $df
    add hl, de                                    ; $43aa: $19
    ld a, [hl+]                                   ; $43ab: $2a
    ld h, [hl]                                    ; $43ac: $66
    ld l, a                                       ; $43ad: $6f
    add hl, bc                                    ; $43ae: $09
    pop bc                                        ; $43af: $c1
    call Call_00f_5192                            ; $43b0: $cd $92 $51

jr_00f_43b3:
    ld hl, $df0d                                  ; $43b3: $21 $0d $df
    add hl, bc                                    ; $43b6: $09
    bit 5, [hl]                                   ; $43b7: $cb $6e
    jr z, jr_00f_43cf                             ; $43b9: $28 $14

    res 5, [hl]                                   ; $43bb: $cb $ae
    ld hl, $dff4                                  ; $43bd: $21 $f4 $df
    add hl, bc                                    ; $43c0: $09
    ld a, [hl]                                    ; $43c1: $7e
    ld hl, $df70                                  ; $43c2: $21 $70 $df
    add hl, bc                                    ; $43c5: $09
    ld e, [hl]                                    ; $43c6: $5e
    call Call_00f_5640                            ; $43c7: $cd $40 $56
    push bc                                       ; $43ca: $c5
    call Call_00f_507d                            ; $43cb: $cd $7d $50
    pop bc                                        ; $43ce: $c1

jr_00f_43cf:
    dec c                                         ; $43cf: $0d
    bit 7, c                                      ; $43d0: $cb $79
    jr z, jr_00f_4384                             ; $43d2: $28 $b0

    ld a, [$df04]                                 ; $43d4: $fa $04 $df
    bit 0, a                                      ; $43d7: $cb $47
    call nz, Call_00f_4526                        ; $43d9: $c4 $26 $45
    call Call_00f_580a                            ; $43dc: $cd $0a $58
    ret                                           ; $43df: $c9


Call_00f_43e0:
Jump_00f_43e0:
    ld hl, $df76                                  ; $43e0: $21 $76 $df
    ld a, [hl+]                                   ; $43e3: $2a
    ld d, [hl]                                    ; $43e4: $56
    ld e, a                                       ; $43e5: $5f
    ld hl, $df7b                                  ; $43e6: $21 $7b $df
    ld a, [hl+]                                   ; $43e9: $2a
    ld h, [hl]                                    ; $43ea: $66
    ld l, a                                       ; $43eb: $6f
    add hl, de                                    ; $43ec: $19
    ld b, h                                       ; $43ed: $44
    ld c, l                                       ; $43ee: $4d
    bit 7, d                                      ; $43ef: $cb $7a
    jr nz, jr_00f_4425                            ; $43f1: $20 $32

    ld a, [$df7a]                                 ; $43f3: $fa $7a $df
    ld h, a                                       ; $43f6: $67
    ld l, $00                                     ; $43f7: $2e $00
    call Call_00f_418d                            ; $43f9: $cd $8d $41
    jr nc, jr_00f_441d                            ; $43fc: $30 $1f

jr_00f_43fe:
    ld a, c                                       ; $43fe: $79
    cpl                                           ; $43ff: $2f
    add $01                                       ; $4400: $c6 $01
    ld c, a                                       ; $4402: $4f
    ld a, b                                       ; $4403: $78
    cpl                                           ; $4404: $2f
    adc $00                                       ; $4405: $ce $00
    ld b, a                                       ; $4407: $47
    sla h                                         ; $4408: $cb $24
    add hl, bc                                    ; $440a: $09
    ld b, h                                       ; $440b: $44
    ld c, l                                       ; $440c: $4d
    ld a, e                                       ; $440d: $7b
    cpl                                           ; $440e: $2f
    add $01                                       ; $440f: $c6 $01
    ld e, a                                       ; $4411: $5f
    ld a, d                                       ; $4412: $7a
    cpl                                           ; $4413: $2f
    adc $00                                       ; $4414: $ce $00
    ld d, a                                       ; $4416: $57
    ld hl, $df76                                  ; $4417: $21 $76 $df
    ld a, e                                       ; $441a: $7b
    ld [hl+], a                                   ; $441b: $22
    ld [hl], d                                    ; $441c: $72

jr_00f_441d:
    ld hl, $df7b                                  ; $441d: $21 $7b $df
    ld a, c                                       ; $4420: $79
    ld [hl+], a                                   ; $4421: $22
    ld [hl], b                                    ; $4422: $70
    jr jr_00f_443c                                ; $4423: $18 $17

jr_00f_4425:
    ld a, [$df78]                                 ; $4425: $fa $78 $df
    ld l, a                                       ; $4428: $6f
    bit 7, b                                      ; $4429: $cb $78
    jr nz, jr_00f_4431                            ; $442b: $20 $04

    ld a, b                                       ; $442d: $78
    cp l                                          ; $442e: $bd
    jr nc, jr_00f_4436                            ; $442f: $30 $05

jr_00f_4431:
    ld h, l                                       ; $4431: $65
    ld l, $00                                     ; $4432: $2e $00
    jr jr_00f_43fe                                ; $4434: $18 $c8

jr_00f_4436:
    ld hl, $df7b                                  ; $4436: $21 $7b $df
    ld a, c                                       ; $4439: $79
    ld [hl+], a                                   ; $443a: $22
    ld [hl], b                                    ; $443b: $70

jr_00f_443c:
    ld a, [$df75]                                 ; $443c: $fa $75 $df
    cp b                                          ; $443f: $b8
    jr nz, jr_00f_444b                            ; $4440: $20 $09

    ld a, [$df7d]                                 ; $4442: $fa $7d $df
    ld c, a                                       ; $4445: $4f
    ld a, [$df31]                                 ; $4446: $fa $31 $df
    cp c                                          ; $4449: $b9
    ret z                                         ; $444a: $c8

jr_00f_444b:
    ld a, b                                       ; $444b: $78
    ld [$df75], a                                 ; $444c: $ea $75 $df
    ld c, a                                       ; $444f: $4f
    ld d, $00                                     ; $4450: $16 $00
    srl a                                         ; $4452: $cb $3f
    ld e, a                                       ; $4454: $5f
    ld a, $07                                     ; $4455: $3e $07
    sub e                                         ; $4457: $93
    ld e, a                                       ; $4458: $5f
    ld hl, $4470                                  ; $4459: $21 $70 $44
    add hl, de                                    ; $445c: $19
    push hl                                       ; $445d: $e5
    call Call_000_3abb                            ; $445e: $cd $bb $3a
    ld a, [$df31]                                 ; $4461: $fa $31 $df
    ld [$df7d], a                                 ; $4464: $ea $7d $df
    ld hl, $ff30                                  ; $4467: $21 $30 $ff
    ld [hl+], a                                   ; $446a: $22
    ld b, a                                       ; $446b: $47
    swap a                                        ; $446c: $cb $37
    or b                                          ; $446e: $b0
    ret                                           ; $446f: $c9


    ld [hl+], a                                   ; $4470: $22
    ld [hl+], a                                   ; $4471: $22
    ld [hl+], a                                   ; $4472: $22
    ld [hl+], a                                   ; $4473: $22
    ld [hl+], a                                   ; $4474: $22
    ld [hl+], a                                   ; $4475: $22
    ld [hl+], a                                   ; $4476: $22
    bit 0, c                                      ; $4477: $cb $41
    jr z, jr_00f_447e                             ; $4479: $28 $03

    and $f0                                       ; $447b: $e6 $f0
    ld [hl+], a                                   ; $447d: $22

jr_00f_447e:
    xor a                                         ; $447e: $af
    ld [hl+], a                                   ; $447f: $22
    ld [hl+], a                                   ; $4480: $22
    ld [hl+], a                                   ; $4481: $22
    ld [hl+], a                                   ; $4482: $22
    ld [hl+], a                                   ; $4483: $22
    ld [hl+], a                                   ; $4484: $22
    ld [hl], a                                    ; $4485: $77
    ld a, $80                                     ; $4486: $3e $80
    ldh [rNR30], a                                ; $4488: $e0 $1a
    xor a                                         ; $448a: $af
    ldh [rNR31], a                                ; $448b: $e0 $1b
    ld a, $20                                     ; $448d: $3e $20
    ldh [rNR32], a                                ; $448f: $e0 $1c
    ld a, [$df14]                                 ; $4491: $fa $14 $df
    or $80                                        ; $4494: $f6 $80
    ldh [rNR34], a                                ; $4496: $e0 $1e
    and $7f                                       ; $4498: $e6 $7f
    ldh [rNR34], a                                ; $449a: $e0 $1e
    jp Jump_000_3ac5                              ; $449c: $c3 $c5 $3a


Call_00f_449f:
    xor a                                         ; $449f: $af
    ld hl, $ff24                                  ; $44a0: $21 $24 $ff
    ld [hl+], a                                   ; $44a3: $22
    ld [hl+], a                                   ; $44a4: $22
    ld [hl], a                                    ; $44a5: $77
    ld a, $80                                     ; $44a6: $3e $80
    ld [hl], a                                    ; $44a8: $77
    ld c, $10                                     ; $44a9: $0e $10
    ld a, $08                                     ; $44ab: $3e $08
    ld [c], a                                     ; $44ad: $e2
    ld a, $80                                     ; $44ae: $3e $80
    inc c                                         ; $44b0: $0c
    ld [c], a                                     ; $44b1: $e2
    xor a                                         ; $44b2: $af
    inc c                                         ; $44b3: $0c
    ld [c], a                                     ; $44b4: $e2
    inc c                                         ; $44b5: $0c
    ld [c], a                                     ; $44b6: $e2
    ld a, $80                                     ; $44b7: $3e $80
    inc c                                         ; $44b9: $0c
    ld [c], a                                     ; $44ba: $e2
    ld c, $16                                     ; $44bb: $0e $16
    ld a, $80                                     ; $44bd: $3e $80
    ld [c], a                                     ; $44bf: $e2
    xor a                                         ; $44c0: $af
    inc c                                         ; $44c1: $0c
    ld [c], a                                     ; $44c2: $e2
    inc c                                         ; $44c3: $0c
    ld [c], a                                     ; $44c4: $e2
    ld a, $80                                     ; $44c5: $3e $80
    inc c                                         ; $44c7: $0c
    ld [c], a                                     ; $44c8: $e2
    ld c, $1a                                     ; $44c9: $0e $1a
    xor a                                         ; $44cb: $af
    ld [c], a                                     ; $44cc: $e2
    inc c                                         ; $44cd: $0c
    ld [c], a                                     ; $44ce: $e2
    inc c                                         ; $44cf: $0c
    ld [c], a                                     ; $44d0: $e2
    inc c                                         ; $44d1: $0c
    ld [c], a                                     ; $44d2: $e2
    ld a, $80                                     ; $44d3: $3e $80
    inc c                                         ; $44d5: $0c
    ld [c], a                                     ; $44d6: $e2
    xor a                                         ; $44d7: $af
    ld hl, $ff30                                  ; $44d8: $21 $30 $ff
    ld b, $10                                     ; $44db: $06 $10

jr_00f_44dd:
    ld [hl+], a                                   ; $44dd: $22
    dec b                                         ; $44de: $05
    jr nz, jr_00f_44dd                            ; $44df: $20 $fc

    ld c, $20                                     ; $44e1: $0e $20
    ld [c], a                                     ; $44e3: $e2
    inc c                                         ; $44e4: $0c
    ld [c], a                                     ; $44e5: $e2
    inc c                                         ; $44e6: $0c
    ld [c], a                                     ; $44e7: $e2
    ld a, $80                                     ; $44e8: $3e $80
    inc c                                         ; $44ea: $0c
    ld [c], a                                     ; $44eb: $e2
    ld a, $77                                     ; $44ec: $3e $77
    ldh [rNR50], a                                ; $44ee: $e0 $24
    ret                                           ; $44f0: $c9


    push af                                       ; $44f1: $f5
    ld hl, $df00                                  ; $44f2: $21 $00 $df
    ld de, $00ff                                  ; $44f5: $11 $ff $00

jr_00f_44f8:
    ld a, d                                       ; $44f8: $7a
    or e                                          ; $44f9: $b3
    jr z, jr_00f_4501                             ; $44fa: $28 $05

    xor a                                         ; $44fc: $af
    ld [hl+], a                                   ; $44fd: $22
    dec de                                        ; $44fe: $1b
    jr jr_00f_44f8                                ; $44ff: $18 $f7

jr_00f_4501:
    ld a, c                                       ; $4501: $79
    ld [$df01], a                                 ; $4502: $ea $01 $df
    call Call_00f_449f                            ; $4505: $cd $9f $44
    ld a, $ff                                     ; $4508: $3e $ff
    ld [$df11], a                                 ; $450a: $ea $11 $df
    pop af                                        ; $450d: $f1
    ld [$df04], a                                 ; $450e: $ea $04 $df
    ld a, $0f                                     ; $4511: $3e $0f
    ld [$df00], a                                 ; $4513: $ea $00 $df
    ld a, $de                                     ; $4516: $3e $de
    ld [$df03], a                                 ; $4518: $ea $03 $df
    ld a, $ff                                     ; $451b: $3e $ff
    ld [$dff8], a                                 ; $451d: $ea $f8 $df
    ld a, $f5                                     ; $4520: $3e $f5
    ld [$df02], a                                 ; $4522: $ea $02 $df
    ret                                           ; $4525: $c9


Call_00f_4526:
    ld de, $0002                                  ; $4526: $11 $02 $00
    ld hl, $df07                                  ; $4529: $21 $07 $df

jr_00f_452c:
    ld a, [hl]                                    ; $452c: $7e
    and a                                         ; $452d: $a7
    jr z, jr_00f_4538                             ; $452e: $28 $08

    dec [hl]                                      ; $4530: $35

jr_00f_4531:
    dec hl                                        ; $4531: $2b
    dec e                                         ; $4532: $1d
    bit 7, e                                      ; $4533: $cb $7b
    jr z, jr_00f_452c                             ; $4535: $28 $f5

    ret                                           ; $4537: $c9


jr_00f_4538:
    push hl                                       ; $4538: $e5
    ld hl, $df09                                  ; $4539: $21 $09 $df
    add hl, de                                    ; $453c: $19
    bit 6, [hl]                                   ; $453d: $cb $76
    jr nz, jr_00f_4544                            ; $453f: $20 $03

    pop hl                                        ; $4541: $e1
    jr jr_00f_4531                                ; $4542: $18 $ed

jr_00f_4544:
    res 6, [hl]                                   ; $4544: $cb $b6
    ld hl, $455c                                  ; $4546: $21 $5c $45
    add hl, de                                    ; $4549: $19
    ld c, [hl]                                    ; $454a: $4e
    ld b, $c0                                     ; $454b: $06 $c0
    ld a, e                                       ; $454d: $7b
    cp $02                                        ; $454e: $fe $02
    jr nz, jr_00f_4554                            ; $4550: $20 $02

    ld b, $00                                     ; $4552: $06 $00

jr_00f_4554:
    ld a, [c]                                     ; $4554: $f2
    and b                                         ; $4555: $a0
    ld [c], a                                     ; $4556: $e2
    pop hl                                        ; $4557: $e1
    ld [hl], $3c                                  ; $4558: $36 $3c
    jr jr_00f_4531                                ; $455a: $18 $d5

    db $11, $16, $1b

    ld a, [$df9c]                                 ; $455f: $fa $9c $df
    ld e, a                                       ; $4562: $5f
    ld d, $00                                     ; $4563: $16 $00
    ld hl, $df9d                                  ; $4565: $21 $9d $df
    add hl, de                                    ; $4568: $19
    xor a                                         ; $4569: $af
    ld [hl], a                                    ; $456a: $77
    ld hl, $dfa1                                  ; $456b: $21 $a1 $df
    add hl, de                                    ; $456e: $19
    ld [hl], a                                    ; $456f: $77
    ld hl, $df9a                                  ; $4570: $21 $9a $df
    ld [hl+], a                                   ; $4573: $22
    ld [hl], a                                    ; $4574: $77
    ret                                           ; $4575: $c9


    inc bc                                        ; $4576: $03
    ld hl, $df9a                                  ; $4577: $21 $9a $df
    ld a, c                                       ; $457a: $79
    ld [hl+], a                                   ; $457b: $22
    ld [hl], b                                    ; $457c: $70
    ret                                           ; $457d: $c9


    ld a, [$df9c]                                 ; $457e: $fa $9c $df
    ld d, $00                                     ; $4581: $16 $00
    ld e, a                                       ; $4583: $5f
    sla e                                         ; $4584: $cb $23
    ld hl, $df92                                  ; $4586: $21 $92 $df
    add hl, de                                    ; $4589: $19
    ld a, [hl+]                                   ; $458a: $2a
    or [hl]                                       ; $458b: $b6
    jr nz, jr_00f_45ad                            ; $458c: $20 $1f

    push bc                                       ; $458e: $c5
    inc bc                                        ; $458f: $03
    ld a, [bc]                                    ; $4590: $0a
    inc bc                                        ; $4591: $03
    and a                                         ; $4592: $a7
    jr z, jr_00f_45a7                             ; $4593: $28 $12

    push hl                                       ; $4595: $e5
    ld a, [bc]                                    ; $4596: $0a
    ld h, a                                       ; $4597: $67
    inc bc                                        ; $4598: $03
    ld a, [bc]                                    ; $4599: $0a
    ld l, a                                       ; $459a: $6f
    call Call_00f_41b9                            ; $459b: $cd $b9 $41
    inc hl                                        ; $459e: $23
    ld b, l                                       ; $459f: $45
    ld a, h                                       ; $45a0: $7c
    pop hl                                        ; $45a1: $e1
    ld [hl-], a                                   ; $45a2: $32
    ld [hl], b                                    ; $45a3: $70
    pop bc                                        ; $45a4: $c1
    jr jr_00f_45ad                                ; $45a5: $18 $06

jr_00f_45a7:
    ld a, [bc]                                    ; $45a7: $0a
    ld [hl-], a                                   ; $45a8: $32
    inc bc                                        ; $45a9: $03
    ld a, [bc]                                    ; $45aa: $0a
    ld [hl], a                                    ; $45ab: $77
    pop bc                                        ; $45ac: $c1

jr_00f_45ad:
    ld a, [bc]                                    ; $45ad: $0a
    and a                                         ; $45ae: $a7
    jr z, jr_00f_45d0                             ; $45af: $28 $1f

    ld hl, $df0d                                  ; $45b1: $21 $0d $df
    srl e                                         ; $45b4: $cb $3b
    add hl, de                                    ; $45b6: $19
    sla e                                         ; $45b7: $cb $23
    bit 7, [hl]                                   ; $45b9: $cb $7e
    jr z, jr_00f_45d0                             ; $45bb: $28 $13

    ld hl, $df93                                  ; $45bd: $21 $93 $df
    add hl, de                                    ; $45c0: $19
    xor a                                         ; $45c1: $af
    ld [hl-], a                                   ; $45c2: $32
    ld [hl], a                                    ; $45c3: $77

jr_00f_45c4:
    ld hl, $df9a                                  ; $45c4: $21 $9a $df
    ld a, [hl]                                    ; $45c7: $7e
    add $04                                       ; $45c8: $c6 $04
    ld [hl+], a                                   ; $45ca: $22
    ld a, [hl]                                    ; $45cb: $7e
    adc $00                                       ; $45cc: $ce $00
    ld [hl], a                                    ; $45ce: $77
    ret                                           ; $45cf: $c9


jr_00f_45d0:
    ld hl, $df92                                  ; $45d0: $21 $92 $df
    add hl, de                                    ; $45d3: $19
    ld a, [hl+]                                   ; $45d4: $2a
    ld e, a                                       ; $45d5: $5f
    ld d, [hl]                                    ; $45d6: $56
    dec de                                        ; $45d7: $1b
    ld a, d                                       ; $45d8: $7a
    ld [hl-], a                                   ; $45d9: $32
    ld [hl], e                                    ; $45da: $73
    or e                                          ; $45db: $b3
    jr nz, jr_00f_45e6                            ; $45dc: $20 $08

    ld hl, $0003                                  ; $45de: $21 $03 $00
    add hl, bc                                    ; $45e1: $09
    ld a, [hl-]                                   ; $45e2: $3a
    or [hl]                                       ; $45e3: $b6
    jr nz, jr_00f_45c4                            ; $45e4: $20 $de

jr_00f_45e6:
    dec bc                                        ; $45e6: $0b
    ld hl, $df9a                                  ; $45e7: $21 $9a $df
    ld a, c                                       ; $45ea: $79
    ld [hl+], a                                   ; $45eb: $22
    ld [hl], b                                    ; $45ec: $70
    ret                                           ; $45ed: $c9


    ld a, [$df9c]                                 ; $45ee: $fa $9c $df
    ld e, a                                       ; $45f1: $5f
    ld d, $00                                     ; $45f2: $16 $00
    ld hl, $df8e                                  ; $45f4: $21 $8e $df
    add hl, de                                    ; $45f7: $19
    ld a, [bc]                                    ; $45f8: $0a
    and a                                         ; $45f9: $a7
    jr z, jr_00f_460b                             ; $45fa: $28 $0f

    cp [hl]                                       ; $45fc: $be
    jr nz, jr_00f_460b                            ; $45fd: $20 $0c

    ld [hl], $00                                  ; $45ff: $36 $00
    ld hl, $df9a                                  ; $4601: $21 $9a $df
    inc bc                                        ; $4604: $03
    inc bc                                        ; $4605: $03
    inc bc                                        ; $4606: $03
    ld a, c                                       ; $4607: $79
    ld [hl+], a                                   ; $4608: $22
    ld [hl], b                                    ; $4609: $70
    ret                                           ; $460a: $c9


jr_00f_460b:
    inc [hl]                                      ; $460b: $34
    inc bc                                        ; $460c: $03
    ld l, c                                       ; $460d: $69
    ld h, b                                       ; $460e: $60
    ld a, [hl+]                                   ; $460f: $2a
    ld d, a                                       ; $4610: $57
    ld a, [hl+]                                   ; $4611: $2a
    ld e, a                                       ; $4612: $5f
    add hl, de                                    ; $4613: $19
    ld a, l                                       ; $4614: $7d
    ld d, h                                       ; $4615: $54
    ld hl, $df9a                                  ; $4616: $21 $9a $df
    ld [hl+], a                                   ; $4619: $22
    ld [hl], d                                    ; $461a: $72
    ret                                           ; $461b: $c9


Jump_00f_461c:
    ld l, c                                       ; $461c: $69
    ld h, b                                       ; $461d: $60
    ld a, [hl+]                                   ; $461e: $2a
    ld e, [hl]                                    ; $461f: $5e
    ld d, a                                       ; $4620: $57
    ld hl, $5a96                                  ; $4621: $21 $96 $5a
    add hl, de                                    ; $4624: $19
    ld a, l                                       ; $4625: $7d
    ld d, h                                       ; $4626: $54
    ld hl, $df9a                                  ; $4627: $21 $9a $df
    ld [hl+], a                                   ; $462a: $22
    ld [hl], d                                    ; $462b: $72
    ret                                           ; $462c: $c9


    ld hl, $5a87                                  ; $462d: $21 $87 $5a
    ld e, l                                       ; $4630: $5d
    ld d, h                                       ; $4631: $54
    ld a, [hl+]                                   ; $4632: $2a
    ld h, [hl]                                    ; $4633: $66
    ld l, a                                       ; $4634: $6f
    add hl, de                                    ; $4635: $19
    push hl                                       ; $4636: $e5
    ld a, [bc]                                    ; $4637: $0a
    ld e, a                                       ; $4638: $5f
    ld d, $00                                     ; $4639: $16 $00
    sla e                                         ; $463b: $cb $23
    rl d                                          ; $463d: $cb $12
    add hl, de                                    ; $463f: $19
    ld a, [hl+]                                   ; $4640: $2a
    ld d, [hl]                                    ; $4641: $56
    ld e, a                                       ; $4642: $5f
    pop hl                                        ; $4643: $e1
    add hl, de                                    ; $4644: $19
    ld a, [$df9c]                                 ; $4645: $fa $9c $df
    ld c, a                                       ; $4648: $4f
    call Call_00f_54fa                            ; $4649: $cd $fa $54
    ld hl, $df9a                                  ; $464c: $21 $9a $df
    inc [hl]                                      ; $464f: $34
    ret nz                                        ; $4650: $c0

    inc hl                                        ; $4651: $23
    inc [hl]                                      ; $4652: $34
    ret                                           ; $4653: $c9


Call_00f_4654:
    ld a, [bc]                                    ; $4654: $0a
    ld e, a                                       ; $4655: $5f
    inc bc                                        ; $4656: $03
    ld hl, $df9a                                  ; $4657: $21 $9a $df
    ld a, c                                       ; $465a: $79
    ld [hl+], a                                   ; $465b: $22
    ld [hl], b                                    ; $465c: $70

Jump_00f_465d:
    ld a, [$df9c]                                 ; $465d: $fa $9c $df
    ld c, a                                       ; $4660: $4f
    ld b, $00                                     ; $4661: $06 $00
    ld hl, $df09                                  ; $4663: $21 $09 $df
    add hl, bc                                    ; $4666: $09
    bit 1, [hl]                                   ; $4667: $cb $4e
    ld a, [$dff8]                                 ; $4669: $fa $f8 $df
    jr z, jr_00f_4670                             ; $466c: $28 $02

    swap a                                        ; $466e: $cb $37

jr_00f_4670:
    and $0f                                       ; $4670: $e6 $0f
    call Call_00f_5640                            ; $4672: $cd $40 $56
    ld hl, $dff4                                  ; $4675: $21 $f4 $df
    add hl, bc                                    ; $4678: $09
    ld [hl], a                                    ; $4679: $77
    ld hl, $df0d                                  ; $467a: $21 $0d $df
    add hl, bc                                    ; $467d: $09
    set 5, [hl]                                   ; $467e: $cb $ee
    ret                                           ; $4680: $c9


    call Call_00f_4654                            ; $4681: $cd $54 $46
    ld hl, $df70                                  ; $4684: $21 $70 $df
    add hl, bc                                    ; $4687: $09
    ld a, [hl]                                    ; $4688: $7e
    call Call_00f_5640                            ; $4689: $cd $40 $56
    ld hl, $df2f                                  ; $468c: $21 $2f $df
    add hl, bc                                    ; $468f: $09
    ld [hl], a                                    ; $4690: $77
    ret                                           ; $4691: $c9


Call_00f_4692:
    push af                                       ; $4692: $f5
    ld hl, sp+$01                                 ; $4693: $f8 $01
    ld c, l                                       ; $4695: $4d
    ld b, h                                       ; $4696: $44
    call Call_00f_469c                            ; $4697: $cd $9c $46
    pop af                                        ; $469a: $f1
    ret                                           ; $469b: $c9


Call_00f_469c:
    ld a, [$df9c]                                 ; $469c: $fa $9c $df
    ld e, a                                       ; $469f: $5f
    ld d, $00                                     ; $46a0: $16 $00
    ld hl, $46dc                                  ; $46a2: $21 $dc $46
    add hl, de                                    ; $46a5: $19
    ld a, [hl]                                    ; $46a6: $7e
    ld d, a                                       ; $46a7: $57
    ld hl, $df11                                  ; $46a8: $21 $11 $df
    ld a, [hl]                                    ; $46ab: $7e
    and d                                         ; $46ac: $a2
    ld [hl], a                                    ; $46ad: $77
    push hl                                       ; $46ae: $e5
    ld a, [bc]                                    ; $46af: $0a
    ld c, a                                       ; $46b0: $4f
    ld b, d                                       ; $46b1: $42
    ld a, e                                       ; $46b2: $7b
    add a                                         ; $46b3: $87
    add e                                         ; $46b4: $83
    add c                                         ; $46b5: $81
    ld e, a                                       ; $46b6: $5f
    ld d, $00                                     ; $46b7: $16 $00
    ld hl, $46e0                                  ; $46b9: $21 $e0 $46
    add hl, de                                    ; $46bc: $19
    ld a, [hl]                                    ; $46bd: $7e
    ld c, a                                       ; $46be: $4f
    pop hl                                        ; $46bf: $e1
    or [hl]                                       ; $46c0: $b6
    ld [hl], a                                    ; $46c1: $77
    ld a, [$df9c]                                 ; $46c2: $fa $9c $df
    ld e, a                                       ; $46c5: $5f
    ld hl, $df09                                  ; $46c6: $21 $09 $df
    add hl, de                                    ; $46c9: $19
    bit 7, [hl]                                   ; $46ca: $cb $7e
    jr z, jr_00f_46d4                             ; $46cc: $28 $06

    ldh a, [rNR51]                                ; $46ce: $f0 $25
    and b                                         ; $46d0: $a0
    or c                                          ; $46d1: $b1
    ldh [rNR51], a                                ; $46d2: $e0 $25

jr_00f_46d4:
    ld hl, $df9a                                  ; $46d4: $21 $9a $df
    inc [hl]                                      ; $46d7: $34
    ret nz                                        ; $46d8: $c0

    inc hl                                        ; $46d9: $23
    inc [hl]                                      ; $46da: $34
    ret                                           ; $46db: $c9


    db $ee, $dd, $bb, $77, $10, $11, $01, $20, $22

    ld [bc], a                                    ; $46e5: $02
    ld b, b                                       ; $46e6: $40

    db $44

    inc b                                         ; $46e8: $04
    add b                                         ; $46e9: $80

    db $88

    db $08                                        ; $46eb: $08

    ld a, [bc]                                    ; $46ec: $0a
    ld e, a                                       ; $46ed: $5f
    inc bc                                        ; $46ee: $03
    ld hl, $df9a                                  ; $46ef: $21 $9a $df
    ld a, c                                       ; $46f2: $79
    ld [hl+], a                                   ; $46f3: $22
    ld [hl], b                                    ; $46f4: $70
    ld a, [$df9c]                                 ; $46f5: $fa $9c $df
    cp $02                                        ; $46f8: $fe $02
    ld c, a                                       ; $46fa: $4f
    ld a, e                                       ; $46fb: $7b
    jp nc, Jump_00f_50f3                          ; $46fc: $d2 $f3 $50

    cp $ff                                        ; $46ff: $fe $ff
    jp nz, Jump_00f_50f3                          ; $4701: $c2 $f3 $50

    ld b, $00                                     ; $4704: $06 $00
    ld hl, $dff4                                  ; $4706: $21 $f4 $df
    add hl, bc                                    ; $4709: $09
    ld a, [hl]                                    ; $470a: $7e
    srl a                                         ; $470b: $cb $3f
    srl a                                         ; $470d: $cb $3f
    jp Jump_00f_50f3                              ; $470f: $c3 $f3 $50


Call_00f_4712:
    ld a, [$df9c]                                 ; $4712: $fa $9c $df
    ld c, a                                       ; $4715: $4f
    jp Jump_00f_505a                              ; $4716: $c3 $5a $50


    ld a, [$df9c]                                 ; $4719: $fa $9c $df
    cp $03                                        ; $471c: $fe $03
    jp z, Jump_00f_47dd                           ; $471e: $ca $dd $47

    ld e, a                                       ; $4721: $5f
    ld d, $00                                     ; $4722: $16 $00
    ld hl, $df09                                  ; $4724: $21 $09 $df
    set 5, [hl]                                   ; $4727: $cb $ee
    sla e                                         ; $4729: $cb $23
    ld l, c                                       ; $472b: $69
    ld h, b                                       ; $472c: $60
    ld a, [hl+]                                   ; $472d: $2a
    bit 7, a                                      ; $472e: $cb $7f
    jr nz, jr_00f_476b                            ; $4730: $20 $39

    and a                                         ; $4732: $a7
    jr nz, jr_00f_4748                            ; $4733: $20 $13

    ld a, [hl+]                                   ; $4735: $2a
    ld c, a                                       ; $4736: $4f
    ld a, [hl+]                                   ; $4737: $2a
    sub c                                         ; $4738: $91
    ld b, a                                       ; $4739: $47
    call Call_00f_41af                            ; $473a: $cd $af $41
    add c                                         ; $473d: $81
    ld c, [hl]                                    ; $473e: $4e
    ld hl, $df16                                  ; $473f: $21 $16 $df
    add hl, de                                    ; $4742: $19
    ld [hl-], a                                   ; $4743: $32
    ld [hl], c                                    ; $4744: $71
    jp Jump_00f_47dd                              ; $4745: $c3 $dd $47


jr_00f_4748:
    ld a, [hl+]                                   ; $4748: $2a
    ld c, a                                       ; $4749: $4f
    ld a, [hl+]                                   ; $474a: $2a
    ld b, a                                       ; $474b: $47
    push hl                                       ; $474c: $e5
    ld hl, $df16                                  ; $474d: $21 $16 $df
    add hl, de                                    ; $4750: $19
    ld a, [hl]                                    ; $4751: $7e
    add c                                         ; $4752: $81
    bit 7, a                                      ; $4753: $cb $7f
    jr z, jr_00f_4758                             ; $4755: $28 $01

    xor a                                         ; $4757: $af

jr_00f_4758:
    ld c, a                                       ; $4758: $4f
    ld a, b                                       ; $4759: $78
    add [hl]                                      ; $475a: $86
    sub c                                         ; $475b: $91
    ld b, a                                       ; $475c: $47
    call Call_00f_41af                            ; $475d: $cd $af $41
    sub [hl]                                      ; $4760: $96
    pop hl                                        ; $4761: $e1
    ld c, [hl]                                    ; $4762: $4e
    ld hl, $df24                                  ; $4763: $21 $24 $df
    add hl, de                                    ; $4766: $19
    ld [hl-], a                                   ; $4767: $32
    ld [hl], c                                    ; $4768: $71
    jr jr_00f_47dd                                ; $4769: $18 $72

jr_00f_476b:
    and $7f                                       ; $476b: $e6 $7f
    jr nz, jr_00f_478b                            ; $476d: $20 $1c

    ld a, [hl+]                                   ; $476f: $2a
    cpl                                           ; $4770: $2f
    inc a                                         ; $4771: $3c
    ld b, a                                       ; $4772: $47
    ld c, $00                                     ; $4773: $0e $00
    ld a, [hl+]                                   ; $4775: $2a
    ld l, [hl]                                    ; $4776: $6e
    ld h, a                                       ; $4777: $67
    add hl, bc                                    ; $4778: $09
    call Call_00f_41b9                            ; $4779: $cd $b9 $41
    ld a, b                                       ; $477c: $78
    cpl                                           ; $477d: $2f
    inc a                                         ; $477e: $3c
    ld b, a                                       ; $477f: $47
    add hl, bc                                    ; $4780: $09
    ld a, l                                       ; $4781: $7d
    ld b, h                                       ; $4782: $44
    ld hl, $df15                                  ; $4783: $21 $15 $df
    add hl, de                                    ; $4786: $19
    ld [hl+], a                                   ; $4787: $22
    ld [hl], b                                    ; $4788: $70
    jr jr_00f_47dd                                ; $4789: $18 $52

jr_00f_478b:
    ld a, [hl+]                                   ; $478b: $2a
    ld b, a                                       ; $478c: $47
    ld c, $00                                     ; $478d: $0e $00
    push hl                                       ; $478f: $e5
    ld hl, $df15                                  ; $4790: $21 $15 $df
    add hl, de                                    ; $4793: $19
    ld a, [hl+]                                   ; $4794: $2a
    ld h, [hl]                                    ; $4795: $66
    ld l, a                                       ; $4796: $6f
    add hl, bc                                    ; $4797: $09
    ld c, l                                       ; $4798: $4d
    ld b, h                                       ; $4799: $44
    pop hl                                        ; $479a: $e1
    push bc                                       ; $479b: $c5
    ld a, [hl+]                                   ; $479c: $2a
    ld c, [hl]                                    ; $479d: $4e
    ld b, a                                       ; $479e: $47
    ld hl, $df15                                  ; $479f: $21 $15 $df
    add hl, de                                    ; $47a2: $19
    ld a, [hl+]                                   ; $47a3: $2a
    ld h, [hl]                                    ; $47a4: $66
    ld l, a                                       ; $47a5: $6f
    add hl, bc                                    ; $47a6: $09
    pop de                                        ; $47a7: $d1
    ld c, e                                       ; $47a8: $4b
    ld b, d                                       ; $47a9: $42
    ld a, e                                       ; $47aa: $7b
    cpl                                           ; $47ab: $2f
    add $01                                       ; $47ac: $c6 $01
    ld e, a                                       ; $47ae: $5f
    ld a, d                                       ; $47af: $7a
    cpl                                           ; $47b0: $2f
    adc $00                                       ; $47b1: $ce $00
    ld d, a                                       ; $47b3: $57
    add hl, de                                    ; $47b4: $19
    call Call_00f_41b9                            ; $47b5: $cd $b9 $41
    add hl, bc                                    ; $47b8: $09
    ld c, l                                       ; $47b9: $4d
    ld b, h                                       ; $47ba: $44
    ld a, [$df9c]                                 ; $47bb: $fa $9c $df
    sla a                                         ; $47be: $cb $27
    ld e, a                                       ; $47c0: $5f
    ld d, $00                                     ; $47c1: $16 $00
    ld hl, $df15                                  ; $47c3: $21 $15 $df
    add hl, de                                    ; $47c6: $19
    ld a, [hl+]                                   ; $47c7: $2a
    ld h, [hl]                                    ; $47c8: $66
    ld l, a                                       ; $47c9: $6f
    ld a, l                                       ; $47ca: $7d
    cpl                                           ; $47cb: $2f
    add $01                                       ; $47cc: $c6 $01
    ld l, a                                       ; $47ce: $6f
    ld a, h                                       ; $47cf: $7c
    cpl                                           ; $47d0: $2f
    adc $00                                       ; $47d1: $ce $00
    ld h, a                                       ; $47d3: $67
    add hl, bc                                    ; $47d4: $09
    ld a, l                                       ; $47d5: $7d
    ld b, h                                       ; $47d6: $44
    ld hl, $df23                                  ; $47d7: $21 $23 $df
    add hl, de                                    ; $47da: $19
    ld [hl+], a                                   ; $47db: $22
    ld [hl], b                                    ; $47dc: $70

Jump_00f_47dd:
jr_00f_47dd:
    ld hl, $df9a                                  ; $47dd: $21 $9a $df
    ld a, [hl]                                    ; $47e0: $7e
    add $04                                       ; $47e1: $c6 $04
    ld [hl+], a                                   ; $47e3: $22
    ld a, [hl]                                    ; $47e4: $7e
    adc $00                                       ; $47e5: $ce $00
    ld [hl], a                                    ; $47e7: $77
    ret                                           ; $47e8: $c9


    ld a, [$df9c]                                 ; $47e9: $fa $9c $df
    cp $03                                        ; $47ec: $fe $03
    jr z, jr_00f_4830                             ; $47ee: $28 $40

    ld e, a                                       ; $47f0: $5f
    ld d, $00                                     ; $47f1: $16 $00
    ld hl, $df09                                  ; $47f3: $21 $09 $df
    add hl, de                                    ; $47f6: $19
    set 5, [hl]                                   ; $47f7: $cb $ee
    ld l, c                                       ; $47f9: $69
    ld h, b                                       ; $47fa: $60
    ld a, [hl+]                                   ; $47fb: $2a
    and a                                         ; $47fc: $a7
    ld a, [hl+]                                   ; $47fd: $2a
    ld c, [hl]                                    ; $47fe: $4e
    ld b, a                                       ; $47ff: $47
    jr nz, jr_00f_480d                            ; $4800: $20 $0b

    sla e                                         ; $4802: $cb $23
    ld hl, $df23                                  ; $4804: $21 $23 $df
    add hl, de                                    ; $4807: $19
    ld a, c                                       ; $4808: $79
    ld [hl+], a                                   ; $4809: $22
    ld [hl], b                                    ; $480a: $70
    jr jr_00f_4830                                ; $480b: $18 $23

jr_00f_480d:
    sla e                                         ; $480d: $cb $23
    ld hl, $df23                                  ; $480f: $21 $23 $df
    add hl, de                                    ; $4812: $19
    xor a                                         ; $4813: $af
    ld [hl+], a                                   ; $4814: $22
    ld [hl], a                                    ; $4815: $77
    ld hl, $df15                                  ; $4816: $21 $15 $df
    add hl, de                                    ; $4819: $19
    ld a, [hl]                                    ; $481a: $7e
    add c                                         ; $481b: $81
    ld [hl+], a                                   ; $481c: $22
    ld a, [hl]                                    ; $481d: $7e
    adc b                                         ; $481e: $88
    ld [hl], a                                    ; $481f: $77
    bit 7, a                                      ; $4820: $cb $7f
    jr z, jr_00f_4829                             ; $4822: $28 $05

    add $54                                       ; $4824: $c6 $54
    ld [hl], a                                    ; $4826: $77
    jr jr_00f_4830                                ; $4827: $18 $07

jr_00f_4829:
    cp $54                                        ; $4829: $fe $54
    jr c, jr_00f_4830                             ; $482b: $38 $03

    sub $54                                       ; $482d: $d6 $54
    ld [hl], a                                    ; $482f: $77

jr_00f_4830:
    ld hl, $df9a                                  ; $4830: $21 $9a $df
    ld a, [hl]                                    ; $4833: $7e
    add $03                                       ; $4834: $c6 $03
    ld [hl+], a                                   ; $4836: $22
    ld a, [hl]                                    ; $4837: $7e
    adc $00                                       ; $4838: $ce $00
    ld [hl], a                                    ; $483a: $77
    ret                                           ; $483b: $c9


    ld a, [bc]                                    ; $483c: $0a
    inc bc                                        ; $483d: $03
    ld d, a                                       ; $483e: $57
    ld a, [bc]                                    ; $483f: $0a
    inc bc                                        ; $4840: $03
    ld e, a                                       ; $4841: $5f
    ld hl, $df9a                                  ; $4842: $21 $9a $df
    ld a, c                                       ; $4845: $79
    ld [hl+], a                                   ; $4846: $22
    ld [hl], b                                    ; $4847: $70

Jump_00f_4848:
    ld a, [$df9c]                                 ; $4848: $fa $9c $df
    cp $03                                        ; $484b: $fe $03
    ret z                                         ; $484d: $c8

    ld c, a                                       ; $484e: $4f
    ld b, $00                                     ; $484f: $06 $00
    ld hl, $df09                                  ; $4851: $21 $09 $df
    add hl, bc                                    ; $4854: $09
    set 5, [hl]                                   ; $4855: $cb $ee
    sla c                                         ; $4857: $cb $21
    ld hl, $df15                                  ; $4859: $21 $15 $df
    add hl, bc                                    ; $485c: $09
    ld a, e                                       ; $485d: $7b
    sub [hl]                                      ; $485e: $96
    inc hl                                        ; $485f: $23
    ld e, a                                       ; $4860: $5f
    ld a, d                                       ; $4861: $7a
    sbc [hl]                                      ; $4862: $9e
    ld hl, $df24                                  ; $4863: $21 $24 $df
    add hl, bc                                    ; $4866: $09
    ld [hl-], a                                   ; $4867: $32
    ld [hl], e                                    ; $4868: $73
    ret                                           ; $4869: $c9


    ld l, c                                       ; $486a: $69
    ld h, b                                       ; $486b: $60
    ld a, [hl+]                                   ; $486c: $2a
    ld b, a                                       ; $486d: $47
    ld a, [hl+]                                   ; $486e: $2a
    ld c, a                                       ; $486f: $4f
    ld a, [hl+]                                   ; $4870: $2a
    ld d, a                                       ; $4871: $57
    ld a, [hl+]                                   ; $4872: $2a
    ld e, a                                       ; $4873: $5f
    ld a, [$df9c]                                 ; $4874: $fa $9c $df
    cp $03                                        ; $4877: $fe $03
    jr nc, jr_00f_487f                            ; $4879: $30 $04

    or [hl]                                       ; $487b: $b6
    call Call_00f_52e4                            ; $487c: $cd $e4 $52

jr_00f_487f:
    ld hl, $df9a                                  ; $487f: $21 $9a $df
    ld a, [hl]                                    ; $4882: $7e
    add $05                                       ; $4883: $c6 $05
    ld [hl+], a                                   ; $4885: $22
    ld a, [hl]                                    ; $4886: $7e
    adc $00                                       ; $4887: $ce $00
    ld [hl], a                                    ; $4889: $77
    ret                                           ; $488a: $c9


    ld l, c                                       ; $488b: $69
    ld h, b                                       ; $488c: $60
    ld a, [hl+]                                   ; $488d: $2a
    ld d, a                                       ; $488e: $57
    ld a, [hl+]                                   ; $488f: $2a
    ld e, a                                       ; $4890: $5f
    ld a, [hl+]                                   ; $4891: $2a
    ld b, a                                       ; $4892: $47
    ld a, l                                       ; $4893: $7d
    ld [$df9a], a                                 ; $4894: $ea $9a $df
    ld a, h                                       ; $4897: $7c
    ld [$df9b], a                                 ; $4898: $ea $9b $df
    ld a, [$df9c]                                 ; $489b: $fa $9c $df
    ld c, a                                       ; $489e: $4f
    cp $03                                        ; $489f: $fe $03
    jp c, Jump_00f_537b                           ; $48a1: $da $7b $53

    ret                                           ; $48a4: $c9


    ld l, c                                       ; $48a5: $69
    ld h, b                                       ; $48a6: $60
    ld a, [hl+]                                   ; $48a7: $2a
    ld b, a                                       ; $48a8: $47
    ld a, [hl+]                                   ; $48a9: $2a
    ld c, a                                       ; $48aa: $4f
    ld a, [hl+]                                   ; $48ab: $2a
    ld d, a                                       ; $48ac: $57
    ld a, [hl+]                                   ; $48ad: $2a
    ld e, a                                       ; $48ae: $5f
    ld a, [$df9c]                                 ; $48af: $fa $9c $df
    cp $03                                        ; $48b2: $fe $03
    jr nc, jr_00f_48ba                            ; $48b4: $30 $04

    or [hl]                                       ; $48b6: $b6
    call Call_00f_53aa                            ; $48b7: $cd $aa $53

jr_00f_48ba:
    ld hl, $df9a                                  ; $48ba: $21 $9a $df
    ld a, [hl]                                    ; $48bd: $7e
    add $05                                       ; $48be: $c6 $05
    ld [hl+], a                                   ; $48c0: $22
    ld a, [hl]                                    ; $48c1: $7e
    adc $00                                       ; $48c2: $ce $00
    ld [hl], a                                    ; $48c4: $77
    ret                                           ; $48c5: $c9


    ld a, [bc]                                    ; $48c6: $0a
    inc bc                                        ; $48c7: $03
    ld e, a                                       ; $48c8: $5f
    ld hl, $df9a                                  ; $48c9: $21 $9a $df
    ld a, c                                       ; $48cc: $79
    ld [hl+], a                                   ; $48cd: $22
    ld [hl], b                                    ; $48ce: $70
    ld a, e                                       ; $48cf: $7b
    ldh [rNR43], a                                ; $48d0: $e0 $22
    ret                                           ; $48d2: $c9


    ld a, [bc]                                    ; $48d3: $0a
    inc bc                                        ; $48d4: $03
    ld hl, $df9a                                  ; $48d5: $21 $9a $df
    ld [hl], c                                    ; $48d8: $71
    inc hl                                        ; $48d9: $23
    ld [hl], b                                    ; $48da: $70
    cp $ff                                        ; $48db: $fe $ff
    jr nz, jr_00f_48e2                            ; $48dd: $20 $03

Call_00f_48df:
Jump_00f_48df:
    ld a, [$df9c]                                 ; $48df: $fa $9c $df

jr_00f_48e2:
    sla a                                         ; $48e2: $cb $27
    ld e, a                                       ; $48e4: $5f
    ld d, $00                                     ; $48e5: $16 $00
    ld hl, $df86                                  ; $48e7: $21 $86 $df
    add hl, de                                    ; $48ea: $19
    ld a, [hl+]                                   ; $48eb: $2a
    ld c, a                                       ; $48ec: $4f
    or [hl]                                       ; $48ed: $b6
    jr z, jr_00f_4902                             ; $48ee: $28 $12

    ld a, [hl]                                    ; $48f0: $7e
    ld hl, $df9b                                  ; $48f1: $21 $9b $df
    ld [hl-], a                                   ; $48f4: $32
    ld [hl], c                                    ; $48f5: $71
    ld hl, $df7f                                  ; $48f6: $21 $7f $df
    add hl, de                                    ; $48f9: $19
    ld [hl-], a                                   ; $48fa: $32
    ld [hl], c                                    ; $48fb: $71
    ld hl, $df92                                  ; $48fc: $21 $92 $df
    xor a                                         ; $48ff: $af
    ld [hl+], a                                   ; $4900: $22
    ld [hl], a                                    ; $4901: $77

jr_00f_4902:
    srl e                                         ; $4902: $cb $3b
    ld hl, $df0d                                  ; $4904: $21 $0d $df
    add hl, de                                    ; $4907: $19
    ld a, [hl]                                    ; $4908: $7e
    or $80                                        ; $4909: $f6 $80
    ld [hl], a                                    ; $490b: $77
    ld c, a                                       ; $490c: $4f
    and $17                                       ; $490d: $e6 $17
    ret z                                         ; $490f: $c8

    bit 4, a                                      ; $4910: $cb $67
    ret nz                                        ; $4912: $c0

    bit 2, a                                      ; $4913: $cb $57
    jr z, jr_00f_491e                             ; $4915: $28 $07

    ld a, b                                       ; $4917: $78
    and $f0                                       ; $4918: $e6 $f0
    or $08                                        ; $491a: $f6 $08
    ld [hl], a                                    ; $491c: $77
    ret                                           ; $491d: $c9


jr_00f_491e:
    ld a, c                                       ; $491e: $79
    and $f0                                       ; $491f: $e6 $f0
    or $08                                        ; $4921: $f6 $08
    ld [hl], a                                    ; $4923: $77
    bit 0, c                                      ; $4924: $cb $41
    ld bc, $0001                                  ; $4926: $01 $01 $00
    jr z, jr_00f_492e                             ; $4929: $28 $03

    ld bc, $0003                                  ; $492b: $01 $03 $00

jr_00f_492e:
    ld hl, $df58                                  ; $492e: $21 $58 $df
    add hl, de                                    ; $4931: $19
    ld a, [hl+]                                   ; $4932: $2a
    ld h, [hl]                                    ; $4933: $66
    ld l, a                                       ; $4934: $6f
    add hl, bc                                    ; $4935: $09
    ld a, [hl+]                                   ; $4936: $2a
    ld b, [hl]                                    ; $4937: $46
    ld hl, $df68                                  ; $4938: $21 $68 $df
    add hl, de                                    ; $493b: $19
    ld [hl+], a                                   ; $493c: $22
    ld [hl], b                                    ; $493d: $70
    ret                                           ; $493e: $c9


    ld a, [$df9c]                                 ; $493f: $fa $9c $df
    ld e, a                                       ; $4942: $5f
    ld d, $00                                     ; $4943: $16 $00
    ld hl, $df0d                                  ; $4945: $21 $0d $df
    add hl, de                                    ; $4948: $19
    ld a, [hl]                                    ; $4949: $7e
    and $f0                                       ; $494a: $e6 $f0
    or $28                                        ; $494c: $f6 $28
    ld [hl], a                                    ; $494e: $77
    ld hl, $df70                                  ; $494f: $21 $70 $df
    add hl, de                                    ; $4952: $19
    ld [hl], $0f                                  ; $4953: $36 $0f
    sla e                                         ; $4955: $cb $23
    ld hl, $df60                                  ; $4957: $21 $60 $df
    add hl, de                                    ; $495a: $19
    xor a                                         ; $495b: $af
    ld [hl+], a                                   ; $495c: $22
    ld [hl], $0f                                  ; $495d: $36 $0f
    ld l, c                                       ; $495f: $69
    ld h, b                                       ; $4960: $60
    ld a, [hl+]                                   ; $4961: $2a
    ld c, [hl]                                    ; $4962: $4e
    ld hl, $df69                                  ; $4963: $21 $69 $df
    add hl, de                                    ; $4966: $19
    ld [hl-], a                                   ; $4967: $32
    ld [hl], c                                    ; $4968: $71
    ld hl, $df9a                                  ; $4969: $21 $9a $df
    ld a, [hl]                                    ; $496c: $7e
    add $02                                       ; $496d: $c6 $02
    ld [hl+], a                                   ; $496f: $22
    ld a, [hl]                                    ; $4970: $7e
    adc $00                                       ; $4971: $ce $00
    ld [hl], a                                    ; $4973: $77
    ret                                           ; $4974: $c9


    ld a, [bc]                                    ; $4975: $0a
    ld e, a                                       ; $4976: $5f
    inc bc                                        ; $4977: $03
    ld hl, $df9a                                  ; $4978: $21 $9a $df
    ld a, c                                       ; $497b: $79
    ld [hl+], a                                   ; $497c: $22
    ld [hl], b                                    ; $497d: $70
    ld a, [$df9c]                                 ; $497e: $fa $9c $df
    cp $02                                        ; $4981: $fe $02
    ret z                                         ; $4983: $c8

    ld c, e                                       ; $4984: $4b
    ld e, a                                       ; $4985: $5f
    ld d, $00                                     ; $4986: $16 $00
    ld hl, $df0d                                  ; $4988: $21 $0d $df
    add hl, de                                    ; $498b: $19
    ld a, [hl]                                    ; $498c: $7e
    and $f0                                       ; $498d: $e6 $f0
    or $20                                        ; $498f: $f6 $20
    ld [hl], a                                    ; $4991: $77
    ld hl, $df2f                                  ; $4992: $21 $2f $df
    add hl, de                                    ; $4995: $19
    ld a, [hl]                                    ; $4996: $7e
    swap a                                        ; $4997: $cb $37
    or c                                          ; $4999: $b1
    bit 3, a                                      ; $499a: $cb $5f
    jr z, jr_00f_49a4                             ; $499c: $28 $06

    ld hl, $dff4                                  ; $499e: $21 $f4 $df
    add hl, de                                    ; $49a1: $19
    ld [hl], $00                                  ; $49a2: $36 $00

jr_00f_49a4:
    ld hl, $49ab                                  ; $49a4: $21 $ab $49
    add hl, de                                    ; $49a7: $19
    ld c, [hl]                                    ; $49a8: $4e
    ld [c], a                                     ; $49a9: $e2
    ret                                           ; $49aa: $c9


    db $12, $17

    nop                                           ; $49ad: $00

    db $21

    ld l, c                                       ; $49af: $69
    ld h, b                                       ; $49b0: $60
    ld a, [hl+]                                   ; $49b1: $2a
    ld [$df78], a                                 ; $49b2: $ea $78 $df
    ld [$df7c], a                                 ; $49b5: $ea $7c $df
    xor a                                         ; $49b8: $af
    ld [$df7b], a                                 ; $49b9: $ea $7b $df
    ld a, [hl+]                                   ; $49bc: $2a
    ld [$df7a], a                                 ; $49bd: $ea $7a $df
    ld a, [hl+]                                   ; $49c0: $2a
    ld [$df77], a                                 ; $49c1: $ea $77 $df
    ld a, [hl+]                                   ; $49c4: $2a
    ld [$df76], a                                 ; $49c5: $ea $76 $df
    ld a, l                                       ; $49c8: $7d
    ld [$df9a], a                                 ; $49c9: $ea $9a $df
    ld a, h                                       ; $49cc: $7c
    ld [$df9b], a                                 ; $49cd: $ea $9b $df
    ld a, $ff                                     ; $49d0: $3e $ff
    ld [$df75], a                                 ; $49d2: $ea $75 $df
    ld [$df7d], a                                 ; $49d5: $ea $7d $df
    call Call_00f_49ea                            ; $49d8: $cd $ea $49
    ld a, $01                                     ; $49db: $3e $01
    ld [$df74], a                                 ; $49dd: $ea $74 $df
    call Call_00f_43e0                            ; $49e0: $cd $e0 $43
    ld a, $ff                                     ; $49e3: $3e $ff
    ld c, $02                                     ; $49e5: $0e $02
    jp Jump_00f_50f3                              ; $49e7: $c3 $f3 $50


Call_00f_49ea:
    call Call_000_3abb                            ; $49ea: $cd $bb $3a
    ld hl, $ff39                                  ; $49ed: $21 $39 $ff
    ld [hl+], a                                   ; $49f0: $22
    ld [hl+], a                                   ; $49f1: $22
    ld [hl+], a                                   ; $49f2: $22
    ld [hl+], a                                   ; $49f3: $22
    ld [hl+], a                                   ; $49f4: $22
    ld [hl+], a                                   ; $49f5: $22
    ld [hl], a                                    ; $49f6: $77
    ret                                           ; $49f7: $c9


    ld a, [$df74]                                 ; $49f8: $fa $74 $df
    bit 0, a                                      ; $49fb: $cb $47
    jr z, jr_00f_4a1c                             ; $49fd: $28 $1d

    ld l, c                                       ; $49ff: $69
    ld h, b                                       ; $4a00: $60
    ld a, [hl+]                                   ; $4a01: $2a
    ld [$df78], a                                 ; $4a02: $ea $78 $df
    ld a, [hl+]                                   ; $4a05: $2a
    ld [$df7a], a                                 ; $4a06: $ea $7a $df
    ld a, [hl+]                                   ; $4a09: $2a
    ld [$df77], a                                 ; $4a0a: $ea $77 $df
    ld a, [hl+]                                   ; $4a0d: $2a
    ld [$df76], a                                 ; $4a0e: $ea $76 $df
    ld a, l                                       ; $4a11: $7d
    ld [$df9a], a                                 ; $4a12: $ea $9a $df
    ld a, h                                       ; $4a15: $7c
    ld [$df9b], a                                 ; $4a16: $ea $9b $df
    jp Jump_00f_43e0                              ; $4a19: $c3 $e0 $43


jr_00f_4a1c:
    ld hl, $df9a                                  ; $4a1c: $21 $9a $df
    ld a, [hl]                                    ; $4a1f: $7e
    add $04                                       ; $4a20: $c6 $04
    ld [hl+], a                                   ; $4a22: $22
    ld a, [hl]                                    ; $4a23: $7e
    adc $00                                       ; $4a24: $ce $00
    ld [hl], a                                    ; $4a26: $77
    ret                                           ; $4a27: $c9


    ld a, [bc]                                    ; $4a28: $0a
    inc bc                                        ; $4a29: $03
    ld hl, $df9a                                  ; $4a2a: $21 $9a $df
    ld [hl], c                                    ; $4a2d: $71
    inc hl                                        ; $4a2e: $23
    ld [hl], b                                    ; $4a2f: $70

jr_00f_4a30:
    ld [$df7c], a                                 ; $4a30: $ea $7c $df
    xor a                                         ; $4a33: $af
    ld [$df7b], a                                 ; $4a34: $ea $7b $df
    ld [$df78], a                                 ; $4a37: $ea $78 $df
    ld [$df77], a                                 ; $4a3a: $ea $77 $df
    ld [$df76], a                                 ; $4a3d: $ea $76 $df
    ld a, $0f                                     ; $4a40: $3e $0f
    ld [$df7a], a                                 ; $4a42: $ea $7a $df
    ld a, $ff                                     ; $4a45: $3e $ff
    ld [$df75], a                                 ; $4a47: $ea $75 $df
    ld [$df7d], a                                 ; $4a4a: $ea $7d $df
    call Call_00f_49ea                            ; $4a4d: $cd $ea $49
    ld a, $01                                     ; $4a50: $3e $01
    ld [$df74], a                                 ; $4a52: $ea $74 $df
    call Call_00f_43e0                            ; $4a55: $cd $e0 $43
    ld a, $ff                                     ; $4a58: $3e $ff
    ld c, $02                                     ; $4a5a: $0e $02
    jp Jump_00f_50f3                              ; $4a5c: $c3 $f3 $50


    ld a, [$dff6]                                 ; $4a5f: $fa $f6 $df
    jr jr_00f_4a30                                ; $4a62: $18 $cc

    ld l, c                                       ; $4a64: $69
    ld h, b                                       ; $4a65: $60
    ld a, [hl+]                                   ; $4a66: $2a
    ld e, [hl]                                    ; $4a67: $5e
    ld d, a                                       ; $4a68: $57
    ld hl, $5a96                                  ; $4a69: $21 $96 $5a
    add hl, de                                    ; $4a6c: $19
    ld c, l                                       ; $4a6d: $4d
    ld b, h                                       ; $4a6e: $44
    ld a, [$df9c]                                 ; $4a6f: $fa $9c $df
    sla a                                         ; $4a72: $cb $27
    ld e, a                                       ; $4a74: $5f
    ld d, $00                                     ; $4a75: $16 $00
    ld hl, $df86                                  ; $4a77: $21 $86 $df
    add hl, de                                    ; $4a7a: $19
    ld a, c                                       ; $4a7b: $79
    ld [hl+], a                                   ; $4a7c: $22
    ld [hl], b                                    ; $4a7d: $70
    ld hl, $df9a                                  ; $4a7e: $21 $9a $df
    ld a, [hl]                                    ; $4a81: $7e
    add $02                                       ; $4a82: $c6 $02
    ld [hl+], a                                   ; $4a84: $22
    ld a, [hl]                                    ; $4a85: $7e
    adc $00                                       ; $4a86: $ce $00
    ld [hl], a                                    ; $4a88: $77
    ret                                           ; $4a89: $c9


    ld a, [$df9c]                                 ; $4a8a: $fa $9c $df
    sla a                                         ; $4a8d: $cb $27
    ld e, a                                       ; $4a8f: $5f
    ld d, $00                                     ; $4a90: $16 $00
    ld hl, $df86                                  ; $4a92: $21 $86 $df
    add hl, de                                    ; $4a95: $19
    xor a                                         ; $4a96: $af
    ld [hl+], a                                   ; $4a97: $22
    ld [hl], a                                    ; $4a98: $77
    ret                                           ; $4a99: $c9


Call_00f_4a9a:
    ld a, [$df9c]                                 ; $4a9a: $fa $9c $df
    ld e, a                                       ; $4a9d: $5f
    ld d, $00                                     ; $4a9e: $16 $00
    cp $02                                        ; $4aa0: $fe $02
    jr nz, jr_00f_4aac                            ; $4aa2: $20 $08

    ld a, [$df74]                                 ; $4aa4: $fa $74 $df
    and $fe                                       ; $4aa7: $e6 $fe
    ld [$df74], a                                 ; $4aa9: $ea $74 $df

jr_00f_4aac:
    ld hl, $df09                                  ; $4aac: $21 $09 $df
    add hl, de                                    ; $4aaf: $19
    ld a, [hl]                                    ; $4ab0: $7e
    and $e2                                       ; $4ab1: $e6 $e2
    or $20                                        ; $4ab3: $f6 $20
    ld [hl], a                                    ; $4ab5: $77
    ret                                           ; $4ab6: $c9


    call Call_00f_4a9a                            ; $4ab7: $cd $9a $4a
    ld a, e                                       ; $4aba: $7b
    cp $03                                        ; $4abb: $fe $03
    ret z                                         ; $4abd: $c8

    sla e                                         ; $4abe: $cb $23
    xor a                                         ; $4ac0: $af
    ld hl, $df1d                                  ; $4ac1: $21 $1d $df
    add hl, de                                    ; $4ac4: $19
    ld [hl+], a                                   ; $4ac5: $22
    ld [hl], a                                    ; $4ac6: $77
    ret                                           ; $4ac7: $c9


    ld a, [bc]                                    ; $4ac8: $0a
    inc bc                                        ; $4ac9: $03
    ld e, a                                       ; $4aca: $5f
    ld d, $00                                     ; $4acb: $16 $00
    ld hl, $4adf                                  ; $4acd: $21 $df $4a
    add hl, de                                    ; $4ad0: $19
    ld a, [$df33]                                 ; $4ad1: $fa $33 $df
    or [hl]                                       ; $4ad4: $b6
    ld [$df33], a                                 ; $4ad5: $ea $33 $df
    ld hl, $df9a                                  ; $4ad8: $21 $9a $df
    ld a, c                                       ; $4adb: $79
    ld [hl+], a                                   ; $4adc: $22
    ld [hl], b                                    ; $4add: $70
    ret                                           ; $4ade: $c9


    ld bc, $0402                                  ; $4adf: $01 $02 $04
    ld [$2010], sp                                ; $4ae2: $08 $10 $20
    ld b, b                                       ; $4ae5: $40
    add b                                         ; $4ae6: $80
    and $07                                       ; $4ae7: $e6 $07
    ld e, a                                       ; $4ae9: $5f
    ld d, $00                                     ; $4aea: $16 $00
    ld hl, $4adf                                  ; $4aec: $21 $df $4a
    add hl, de                                    ; $4aef: $19
    ld a, [$df33]                                 ; $4af0: $fa $33 $df
    ld e, a                                       ; $4af3: $5f
    and [hl]                                      ; $4af4: $a6
    ret z                                         ; $4af5: $c8

    ld a, [hl]                                    ; $4af6: $7e
    cpl                                           ; $4af7: $2f
    ld d, a                                       ; $4af8: $57
    ld a, e                                       ; $4af9: $7b
    and d                                         ; $4afa: $a2
    ld [$df33], a                                 ; $4afb: $ea $33 $df
    ld a, $01                                     ; $4afe: $3e $01
    and a                                         ; $4b00: $a7
    ret                                           ; $4b01: $c9


    ld a, [$df9c]                                 ; $4b02: $fa $9c $df
    sla a                                         ; $4b05: $cb $27
    ld e, a                                       ; $4b07: $5f
    ld d, $00                                     ; $4b08: $16 $00
    ld hl, $df16                                  ; $4b0a: $21 $16 $df
    add hl, de                                    ; $4b0d: $19

jr_00f_4b0e:
    ld a, [bc]                                    ; $4b0e: $0a
    inc bc                                        ; $4b0f: $03
    ld e, a                                       ; $4b10: $5f
    ld a, [hl]                                    ; $4b11: $7e
    cp e                                          ; $4b12: $bb
    jp nc, Jump_00f_461c                          ; $4b13: $d2 $1c $46

    inc bc                                        ; $4b16: $03
    inc bc                                        ; $4b17: $03
    ld hl, $df9a                                  ; $4b18: $21 $9a $df
    ld a, c                                       ; $4b1b: $79
    ld [hl+], a                                   ; $4b1c: $22
    ld [hl], b                                    ; $4b1d: $70
    ret                                           ; $4b1e: $c9


    ld a, [$df9c]                                 ; $4b1f: $fa $9c $df
    ld e, a                                       ; $4b22: $5f
    ld d, $00                                     ; $4b23: $16 $00
    ld hl, $dff4                                  ; $4b25: $21 $f4 $df
    add hl, de                                    ; $4b28: $19
    jr jr_00f_4b0e                                ; $4b29: $18 $e3

    ld a, [bc]                                    ; $4b2b: $0a
    ld e, a                                       ; $4b2c: $5f
    inc bc                                        ; $4b2d: $03
    call Call_00f_41a3                            ; $4b2e: $cd $a3 $41
    cp e                                          ; $4b31: $bb
    jp nc, Jump_00f_461c                          ; $4b32: $d2 $1c $46

    inc bc                                        ; $4b35: $03
    inc bc                                        ; $4b36: $03
    ld hl, $df9a                                  ; $4b37: $21 $9a $df
    ld a, c                                       ; $4b3a: $79
    ld [hl+], a                                   ; $4b3b: $22
    ld [hl], b                                    ; $4b3c: $70
    ret                                           ; $4b3d: $c9


    ld a, [$df9c]                                 ; $4b3e: $fa $9c $df
    cp $02                                        ; $4b41: $fe $02
    jr nz, jr_00f_4b5c                            ; $4b43: $20 $17

    xor a                                         ; $4b45: $af
    ld [$df74], a                                 ; $4b46: $ea $74 $df
    ld a, [bc]                                    ; $4b49: $0a
    call Call_00f_5168                            ; $4b4a: $cd $68 $51
    bit 0, e                                      ; $4b4d: $cb $43
    jr nz, jr_00f_4b68                            ; $4b4f: $20 $17

    call Call_00f_4b7c                            ; $4b51: $cd $7c $4b
    call Call_00f_4ba7                            ; $4b54: $cd $a7 $4b
    ld hl, $df74                                  ; $4b57: $21 $74 $df
    set 7, [hl]                                   ; $4b5a: $cb $fe

jr_00f_4b5c:
    ld hl, $df9a                                  ; $4b5c: $21 $9a $df
    ld a, [hl]                                    ; $4b5f: $7e
    add $01                                       ; $4b60: $c6 $01
    ld [hl+], a                                   ; $4b62: $22
    ld a, [hl]                                    ; $4b63: $7e
    adc $00                                       ; $4b64: $ce $00
    ld [hl], a                                    ; $4b66: $77
    ret                                           ; $4b67: $c9


jr_00f_4b68:
    call Call_00f_4b7c                            ; $4b68: $cd $7c $4b
    xor a                                         ; $4b6b: $af
    ld [$df7b], a                                 ; $4b6c: $ea $7b $df
    ld [$df7c], a                                 ; $4b6f: $ea $7c $df
    call Call_00f_4bd0                            ; $4b72: $cd $d0 $4b
    ld hl, $df74                                  ; $4b75: $21 $74 $df
    set 6, [hl]                                   ; $4b78: $cb $f6
    jr jr_00f_4b5c                                ; $4b7a: $18 $e0

Call_00f_4b7c:
    ld [$df75], a                                 ; $4b7c: $ea $75 $df
    call Call_000_3bbc                            ; $4b7f: $cd $bc $3b
    bit 7, h                                      ; $4b82: $cb $7c
    jr z, jr_00f_4b8f                             ; $4b84: $28 $09

    ld h, $40                                     ; $4b86: $26 $40
    ld a, [$df75]                                 ; $4b88: $fa $75 $df
    inc a                                         ; $4b8b: $3c
    ld [$df75], a                                 ; $4b8c: $ea $75 $df

jr_00f_4b8f:
    push hl                                       ; $4b8f: $e5
    ld hl, $df78                                  ; $4b90: $21 $78 $df
    ld a, c                                       ; $4b93: $79
    ld [hl+], a                                   ; $4b94: $22
    ld a, b                                       ; $4b95: $78
    ld [hl+], a                                   ; $4b96: $22
    ld [hl], $00                                  ; $4b97: $36 $00
    ld hl, $df76                                  ; $4b99: $21 $76 $df
    pop bc                                        ; $4b9c: $c1
    ld a, c                                       ; $4b9d: $79
    ld [hl+], a                                   ; $4b9e: $22
    ld [hl], b                                    ; $4b9f: $70
    ld a, $ff                                     ; $4ba0: $3e $ff
    ld c, $02                                     ; $4ba2: $0e $02
    jp Jump_00f_50f3                              ; $4ba4: $c3 $f3 $50


Call_00f_4ba7:
    ld hl, $df0b                                  ; $4ba7: $21 $0b $df
    set 5, [hl]                                   ; $4baa: $cb $ee
    ld hl, $df19                                  ; $4bac: $21 $19 $df
    ld a, [$df04]                                 ; $4baf: $fa $04 $df
    cp $81                                        ; $4bb2: $fe $81
    jr nz, jr_00f_4bc1                            ; $4bb4: $20 $0b

    ldh a, [rKEY1]                                ; $4bb6: $f0 $4d
    bit 7, a                                      ; $4bb8: $cb $7f
    jr z, jr_00f_4bc1                             ; $4bba: $28 $05

    ld de, $2a7b                                  ; $4bbc: $11 $7b $2a
    jr jr_00f_4bc4                                ; $4bbf: $18 $03

jr_00f_4bc1:
    ld de, $2a88                                  ; $4bc1: $11 $88 $2a

jr_00f_4bc4:
    ld a, e                                       ; $4bc4: $7b
    sub [hl]                                      ; $4bc5: $96
    inc hl                                        ; $4bc6: $23
    ld e, a                                       ; $4bc7: $5f
    ld a, d                                       ; $4bc8: $7a
    sbc [hl]                                      ; $4bc9: $9e
    ld hl, $df28                                  ; $4bca: $21 $28 $df
    ld [hl-], a                                   ; $4bcd: $32
    ld [hl], e                                    ; $4bce: $73
    ret                                           ; $4bcf: $c9


Call_00f_4bd0:
    ld hl, $df0b                                  ; $4bd0: $21 $0b $df
    set 5, [hl]                                   ; $4bd3: $cb $ee
    ld hl, $df19                                  ; $4bd5: $21 $19 $df
    ld de, $47b4                                  ; $4bd8: $11 $b4 $47
    ld a, e                                       ; $4bdb: $7b
    sub [hl]                                      ; $4bdc: $96
    inc hl                                        ; $4bdd: $23
    ld e, a                                       ; $4bde: $5f
    ld a, d                                       ; $4bdf: $7a
    sbc [hl]                                      ; $4be0: $9e
    ld hl, $df28                                  ; $4be1: $21 $28 $df
    ld [hl-], a                                   ; $4be4: $32
    ld [hl], e                                    ; $4be5: $73
    ld a, [$df04]                                 ; $4be6: $fa $04 $df
    cp $81                                        ; $4be9: $fe $81
    jr nz, jr_00f_4bfb                            ; $4beb: $20 $0e

    ldh a, [rKEY1]                                ; $4bed: $f0 $4d
    bit 7, a                                      ; $4bef: $cb $7f
    jr z, jr_00f_4bfb                             ; $4bf1: $28 $08

    ld a, $07                                     ; $4bf3: $3e $07
    ldh [rTAC], a                                 ; $4bf5: $e0 $07
    ld a, $80                                     ; $4bf7: $3e $80
    jr jr_00f_4c01                                ; $4bf9: $18 $06

jr_00f_4bfb:
    ld a, $06                                     ; $4bfb: $3e $06
    ldh [rTAC], a                                 ; $4bfd: $e0 $07
    ld a, $00                                     ; $4bff: $3e $00

jr_00f_4c01:
    ld [$df08], a                                 ; $4c01: $ea $08 $df
    ldh [rTIMA], a                                ; $4c04: $e0 $05
    ldh [rTMA], a                                 ; $4c06: $e0 $06
    ldh a, [rIF]                                  ; $4c08: $f0 $0f
    and $1b                                       ; $4c0a: $e6 $1b
    ldh [rIF], a                                  ; $4c0c: $e0 $0f
    ldh a, [rIE]                                  ; $4c0e: $f0 $ff
    or $04                                        ; $4c10: $f6 $04
    ldh [rIE], a                                  ; $4c12: $e0 $ff
    ret                                           ; $4c14: $c9


    ld a, [$df9c]                                 ; $4c15: $fa $9c $df
    cp $02                                        ; $4c18: $fe $02
    ret nz                                        ; $4c1a: $c0

    xor a                                         ; $4c1b: $af
    ld [$df74], a                                 ; $4c1c: $ea $74 $df
    ld a, [$5a92]                                 ; $4c1f: $fa $92 $5a
    and a                                         ; $4c22: $a7
    jr z, jr_00f_4c44                             ; $4c23: $28 $1f

    ld b, a                                       ; $4c25: $47
    ld a, [$df1a]                                 ; $4c26: $fa $1a $df
    cp b                                          ; $4c29: $b8
    ret nc                                        ; $4c2a: $d0

    ld c, a                                       ; $4c2b: $4f
    ld hl, $5a90                                  ; $4c2c: $21 $90 $5a
    ld a, [hl+]                                   ; $4c2f: $2a
    ld h, [hl]                                    ; $4c30: $66
    ld l, a                                       ; $4c31: $6f
    ld de, $5a87                                  ; $4c32: $11 $87 $5a
    add hl, de                                    ; $4c35: $19
    ld b, $00                                     ; $4c36: $06 $00
    add hl, bc                                    ; $4c38: $09
    ld a, [$5a8e]                                 ; $4c39: $fa $8e $5a
    and a                                         ; $4c3c: $a7
    ret z                                         ; $4c3d: $c8

    ld b, a                                       ; $4c3e: $47
    ld a, [hl]                                    ; $4c3f: $7e
    cp b                                          ; $4c40: $b8
    jr c, jr_00f_4c4f                             ; $4c41: $38 $0c

    ret                                           ; $4c43: $c9


jr_00f_4c44:
    ld a, [$5a8e]                                 ; $4c44: $fa $8e $5a
    and a                                         ; $4c47: $a7
    ret z                                         ; $4c48: $c8

    ld b, a                                       ; $4c49: $47
    ld a, [$df1a]                                 ; $4c4a: $fa $1a $df
    cp b                                          ; $4c4d: $b8
    ret nc                                        ; $4c4e: $d0

jr_00f_4c4f:
    call Call_00f_5168                            ; $4c4f: $cd $68 $51
    bit 0, e                                      ; $4c52: $cb $43
    jr nz, jr_00f_4c63                            ; $4c54: $20 $0d

    call Call_00f_4b7c                            ; $4c56: $cd $7c $4b
    ld hl, $df74                                  ; $4c59: $21 $74 $df
    set 7, [hl]                                   ; $4c5c: $cb $fe
    call Call_00f_4ba7                            ; $4c5e: $cd $a7 $4b
    jr jr_00f_4c75                                ; $4c61: $18 $12

jr_00f_4c63:
    call Call_00f_4b7c                            ; $4c63: $cd $7c $4b
    xor a                                         ; $4c66: $af
    ld [$df7b], a                                 ; $4c67: $ea $7b $df
    ld [$df7c], a                                 ; $4c6a: $ea $7c $df
    call Call_00f_4bd0                            ; $4c6d: $cd $d0 $4b
    ld hl, $df74                                  ; $4c70: $21 $74 $df
    set 6, [hl]                                   ; $4c73: $cb $f6

jr_00f_4c75:
    ld a, $ff                                     ; $4c75: $3e $ff
    ld c, $02                                     ; $4c77: $0e $02
    jp Jump_00f_50f3                              ; $4c79: $c3 $f3 $50


    ld a, [bc]                                    ; $4c7c: $0a
    inc bc                                        ; $4c7d: $03
    ld d, a                                       ; $4c7e: $57
    ld a, [bc]                                    ; $4c7f: $0a
    inc bc                                        ; $4c80: $03
    ld e, a                                       ; $4c81: $5f
    ld hl, $df9a                                  ; $4c82: $21 $9a $df
    ld a, c                                       ; $4c85: $79
    ld [hl+], a                                   ; $4c86: $22
    ld [hl], b                                    ; $4c87: $70
    ld a, [$df9c]                                 ; $4c88: $fa $9c $df
    cp $03                                        ; $4c8b: $fe $03
    ret z                                         ; $4c8d: $c8

    ld c, a                                       ; $4c8e: $4f
    ld b, $00                                     ; $4c8f: $06 $00
    ld hl, $df09                                  ; $4c91: $21 $09 $df
    add hl, bc                                    ; $4c94: $09
    set 5, [hl]                                   ; $4c95: $cb $ee
    ld hl, $dfe0                                  ; $4c97: $21 $e0 $df
    add hl, bc                                    ; $4c9a: $09
    ld a, d                                       ; $4c9b: $7a
    add [hl]                                      ; $4c9c: $86
    ld d, a                                       ; $4c9d: $57
    sla c                                         ; $4c9e: $cb $21
    ld hl, $df15                                  ; $4ca0: $21 $15 $df
    add hl, bc                                    ; $4ca3: $09
    ld a, e                                       ; $4ca4: $7b
    sub [hl]                                      ; $4ca5: $96
    inc hl                                        ; $4ca6: $23
    ld e, a                                       ; $4ca7: $5f
    ld a, d                                       ; $4ca8: $7a
    sbc [hl]                                      ; $4ca9: $9e
    ld hl, $df24                                  ; $4caa: $21 $24 $df
    add hl, bc                                    ; $4cad: $09
    ld [hl-], a                                   ; $4cae: $32
    ld [hl], e                                    ; $4caf: $73
    ret                                           ; $4cb0: $c9


    ld a, [bc]                                    ; $4cb1: $0a
    ld e, a                                       ; $4cb2: $5f
    inc bc                                        ; $4cb3: $03
    ld a, [bc]                                    ; $4cb4: $0a
    ld d, a                                       ; $4cb5: $57
    inc bc                                        ; $4cb6: $03
    ld hl, $df9a                                  ; $4cb7: $21 $9a $df
    ld a, c                                       ; $4cba: $79
    ld [hl+], a                                   ; $4cbb: $22
    ld [hl], b                                    ; $4cbc: $70
    ld a, [$df9c]                                 ; $4cbd: $fa $9c $df
    ld c, a                                       ; $4cc0: $4f
    ld b, $00                                     ; $4cc1: $06 $00
    ld hl, $dfe4                                  ; $4cc3: $21 $e4 $df
    add hl, bc                                    ; $4cc6: $09
    ld a, d                                       ; $4cc7: $7a
    ld d, [hl]                                    ; $4cc8: $56
    ld hl, $df09                                  ; $4cc9: $21 $09 $df
    add hl, bc                                    ; $4ccc: $09
    bit 1, [hl]                                   ; $4ccd: $cb $4e
    push af                                       ; $4ccf: $f5
    ld hl, $df9d                                  ; $4cd0: $21 $9d $df
    add hl, bc                                    ; $4cd3: $09
    ld a, [hl]                                    ; $4cd4: $7e
    ld hl, $dff4                                  ; $4cd5: $21 $f4 $df
    add hl, bc                                    ; $4cd8: $09
    ld c, e                                       ; $4cd9: $4b
    ld b, a                                       ; $4cda: $47
    pop af                                        ; $4cdb: $f1
    ld e, [hl]                                    ; $4cdc: $5e
    jr z, jr_00f_4ceb                             ; $4cdd: $28 $0c

    call Call_00f_4f13                            ; $4cdf: $cd $13 $4f
    ret z                                         ; $4ce2: $c8

    ld hl, $df09                                  ; $4ce3: $21 $09 $df
    add hl, bc                                    ; $4ce6: $09
    set 1, [hl]                                   ; $4ce7: $cb $ce
    jr jr_00f_4cef                                ; $4ce9: $18 $04

jr_00f_4ceb:
    call Call_00f_4f18                            ; $4ceb: $cd $18 $4f
    ret z                                         ; $4cee: $c8

jr_00f_4cef:
    ld a, [$df9c]                                 ; $4cef: $fa $9c $df
    cp c                                          ; $4cf2: $b9
    ret nz                                        ; $4cf3: $c0

    sla c                                         ; $4cf4: $cb $21
    ld hl, $df7e                                  ; $4cf6: $21 $7e $df
    add hl, bc                                    ; $4cf9: $09
    ld a, [hl+]                                   ; $4cfa: $2a
    ld e, [hl]                                    ; $4cfb: $5e
    ld hl, $df9a                                  ; $4cfc: $21 $9a $df
    ld [hl+], a                                   ; $4cff: $22
    ld [hl], e                                    ; $4d00: $73
    ret                                           ; $4d01: $c9


    ld l, c                                       ; $4d02: $69
    ld h, b                                       ; $4d03: $60
    ld a, [hl+]                                   ; $4d04: $2a
    ld b, a                                       ; $4d05: $47
    ld a, [hl+]                                   ; $4d06: $2a
    ld c, a                                       ; $4d07: $4f
    ld a, [hl+]                                   ; $4d08: $2a
    ld d, a                                       ; $4d09: $57
    ld a, [hl+]                                   ; $4d0a: $2a
    ld e, a                                       ; $4d0b: $5f
    ld a, l                                       ; $4d0c: $7d
    ld [$df9a], a                                 ; $4d0d: $ea $9a $df
    ld a, h                                       ; $4d10: $7c
    ld [$df9b], a                                 ; $4d11: $ea $9b $df
    ld a, [$df9c]                                 ; $4d14: $fa $9c $df
    cp $03                                        ; $4d17: $fe $03
    ret nc                                        ; $4d19: $d0

    push de                                       ; $4d1a: $d5
    push bc                                       ; $4d1b: $c5
    ld e, a                                       ; $4d1c: $5f
    sla e                                         ; $4d1d: $cb $23
    ld d, $00                                     ; $4d1f: $16 $00
    ld hl, $df15                                  ; $4d21: $21 $15 $df
    add hl, de                                    ; $4d24: $19
    ld a, [hl+]                                   ; $4d25: $2a
    ld b, [hl]                                    ; $4d26: $46
    ld c, a                                       ; $4d27: $4f
    pop hl                                        ; $4d28: $e1
    add hl, bc                                    ; $4d29: $09
    ld c, l                                       ; $4d2a: $4d
    ld b, h                                       ; $4d2b: $44
    push bc                                       ; $4d2c: $c5
    ld hl, $df29                                  ; $4d2d: $21 $29 $df
    add hl, de                                    ; $4d30: $19
    ld a, [hl+]                                   ; $4d31: $2a
    ld b, [hl]                                    ; $4d32: $46
    ld hl, $df15                                  ; $4d33: $21 $15 $df
    add hl, de                                    ; $4d36: $19
    ld [hl+], a                                   ; $4d37: $22
    ld [hl], b                                    ; $4d38: $70
    pop bc                                        ; $4d39: $c1
    pop de                                        ; $4d3a: $d1
    ld a, [$df9c]                                 ; $4d3b: $fa $9c $df
    jp Jump_00f_52e4                              ; $4d3e: $c3 $e4 $52


    ld a, [$df9c]                                 ; $4d41: $fa $9c $df
    ld e, a                                       ; $4d44: $5f
    ld d, $00                                     ; $4d45: $16 $00
    ld hl, $df0d                                  ; $4d47: $21 $0d $df
    add hl, de                                    ; $4d4a: $19
    ld a, [hl]                                    ; $4d4b: $7e
    and $f0                                       ; $4d4c: $e6 $f0
    or $31                                        ; $4d4e: $f6 $31
    ld [hl], a                                    ; $4d50: $77
    xor a                                         ; $4d51: $af
    ld hl, $df70                                  ; $4d52: $21 $70 $df
    add hl, de                                    ; $4d55: $19
    ld [hl], $00                                  ; $4d56: $36 $00
    sla e                                         ; $4d58: $cb $23
    ld hl, $df60                                  ; $4d5a: $21 $60 $df
    add hl, de                                    ; $4d5d: $19
    ld [hl+], a                                   ; $4d5e: $22
    ld [hl], a                                    ; $4d5f: $77
    ld l, c                                       ; $4d60: $69
    ld h, b                                       ; $4d61: $60
    ld a, [hl+]                                   ; $4d62: $2a
    ld c, [hl]                                    ; $4d63: $4e
    ld hl, $df69                                  ; $4d64: $21 $69 $df
    add hl, de                                    ; $4d67: $19
    ld [hl-], a                                   ; $4d68: $32
    ld [hl], c                                    ; $4d69: $71
    ld hl, $df9a                                  ; $4d6a: $21 $9a $df
    ld a, [hl]                                    ; $4d6d: $7e
    add $02                                       ; $4d6e: $c6 $02
    ld [hl+], a                                   ; $4d70: $22
    ld a, [hl]                                    ; $4d71: $7e
    adc $00                                       ; $4d72: $ce $00
    ld [hl], a                                    ; $4d74: $77
    ret                                           ; $4d75: $c9


    ld a, [$df9c]                                 ; $4d76: $fa $9c $df
    ld e, a                                       ; $4d79: $5f
    ld d, $00                                     ; $4d7a: $16 $00
    ld hl, $df9d                                  ; $4d7c: $21 $9d $df
    add hl, de                                    ; $4d7f: $19
    ld a, [bc]                                    ; $4d80: $0a
    inc bc                                        ; $4d81: $03
    and a                                         ; $4d82: $a7
    ld a, [bc]                                    ; $4d83: $0a
    jr nz, jr_00f_4d97                            ; $4d84: $20 $11

    ld e, a                                       ; $4d86: $5f
    ld a, [hl]                                    ; $4d87: $7e
    bit 7, e                                      ; $4d88: $cb $7b
    jr nz, jr_00f_4d93                            ; $4d8a: $20 $07

    add e                                         ; $4d8c: $83
    jr nc, jr_00f_4d97                            ; $4d8d: $30 $08

    ld a, $ff                                     ; $4d8f: $3e $ff
    jr jr_00f_4d97                                ; $4d91: $18 $04

jr_00f_4d93:
    sub e                                         ; $4d93: $93
    jr nc, jr_00f_4d97                            ; $4d94: $30 $01

    xor a                                         ; $4d96: $af

jr_00f_4d97:
    ld [hl], a                                    ; $4d97: $77
    ld hl, $df9a                                  ; $4d98: $21 $9a $df
    ld a, [hl]                                    ; $4d9b: $7e
    add $02                                       ; $4d9c: $c6 $02
    ld [hl+], a                                   ; $4d9e: $22
    ld a, [hl]                                    ; $4d9f: $7e
    adc $00                                       ; $4da0: $ce $00
    ld [hl], a                                    ; $4da2: $77
    ret                                           ; $4da3: $c9


    db $5f, $45, $8b, $48

    ld l, d                                       ; $4da8: $6a
    ld c, b                                       ; $4da9: $48

    db $a5, $48, $7e, $45, $ee, $45

    inc e                                         ; $4db0: $1c
    ld b, [hl]                                    ; $4db1: $46

    db $3c, $48

    jp hl                                         ; $4db4: $e9


    ld b, a                                       ; $4db5: $47

    db $54, $46, $9c, $46

    add hl, de                                    ; $4dba: $19
    ld b, a                                       ; $4dbb: $47

    db $ec, $46, $12, $47

    halt                                          ; $4dc0: $76
    ld b, l                                       ; $4dc1: $45
    dec l                                         ; $4dc2: $2d
    ld b, [hl]                                    ; $4dc3: $46

    db $c6, $48

    ccf                                           ; $4dc6: $3f
    ld c, c                                       ; $4dc7: $49
    db $d3                                        ; $4dc8: $d3
    ld c, b                                       ; $4dc9: $48

    db $75, $49

    ld a, h                                       ; $4dcc: $7c
    ld c, h                                       ; $4dcd: $4c

    db $02, $4b

    dec hl                                        ; $4dd0: $2b
    ld c, e                                       ; $4dd1: $4b
    rra                                           ; $4dd2: $1f
    ld c, e                                       ; $4dd3: $4b
    ld h, h                                       ; $4dd4: $64
    ld c, d                                       ; $4dd5: $4a
    adc d                                         ; $4dd6: $8a
    ld c, d                                       ; $4dd7: $4a
    ret z                                         ; $4dd8: $c8

    ld c, d                                       ; $4dd9: $4a
    ld [bc], a                                    ; $4dda: $02
    ld c, l                                       ; $4ddb: $4d
    halt                                          ; $4ddc: $76
    ld c, l                                       ; $4ddd: $4d

    db $af, $49

    ld hl, sp+$49                                 ; $4de0: $f8 $49
    sbc d                                         ; $4de2: $9a
    ld c, d                                       ; $4de3: $4a
    or a                                          ; $4de4: $b7
    ld c, d                                       ; $4de5: $4a

    db $3e, $4b

    dec d                                         ; $4de8: $15
    ld c, h                                       ; $4de9: $4c
    ld e, a                                       ; $4dea: $5f
    ld b, l                                       ; $4deb: $45

    db $28, $4a, $5f, $4a, $b1, $4c, $41, $4d

    add c                                         ; $4df4: $81
    ld b, [hl]                                    ; $4df5: $46
    halt                                          ; $4df6: $76
    ld c, l                                       ; $4df7: $4d

Call_00f_4df8:
    ld e, a                                       ; $4df8: $5f
    ld a, d                                       ; $4df9: $7a
    ld [$dffe], a                                 ; $4dfa: $ea $fe $df
    ld d, $00                                     ; $4dfd: $16 $00
    sla e                                         ; $4dff: $cb $23
    rl d                                          ; $4e01: $cb $12
    ld hl, $5a96                                  ; $4e03: $21 $96 $5a
    add hl, de                                    ; $4e06: $19
    ld a, [hl+]                                   ; $4e07: $2a
    ld e, a                                       ; $4e08: $5f
    ld a, [hl-]                                   ; $4e09: $3a
    ld d, a                                       ; $4e0a: $57
    ld hl, $5a96                                  ; $4e0b: $21 $96 $5a
    add hl, de                                    ; $4e0e: $19
    ld a, [hl]                                    ; $4e0f: $7e
    cp $0e                                        ; $4e10: $fe $0e
    jr nz, jr_00f_4e4b                            ; $4e12: $20 $37

    inc hl                                        ; $4e14: $23
    ld a, [hl+]                                   ; $4e15: $2a
    bit 4, a                                      ; $4e16: $cb $67
    jr z, jr_00f_4e43                             ; $4e18: $28 $29

    and $80                                       ; $4e1a: $e6 $80
    ld e, a                                       ; $4e1c: $5f
    ld a, [$dfa6]                                 ; $4e1d: $fa $a6 $df
    bit 6, a                                      ; $4e20: $cb $77
    jr nz, jr_00f_4e32                            ; $4e22: $20 $0e

    set 6, a                                      ; $4e24: $cb $f7
    ld d, a                                       ; $4e26: $57
    ld a, c                                       ; $4e27: $79
    and $01                                       ; $4e28: $e6 $01
    sla a                                         ; $4e2a: $cb $27
    swap a                                        ; $4e2c: $cb $37
    or d                                          ; $4e2e: $b2
    ld [$dfa6], a                                 ; $4e2f: $ea $a6 $df

jr_00f_4e32:
    ld d, a                                       ; $4e32: $57
    swap a                                        ; $4e33: $cb $37
    srl a                                         ; $4e35: $cb $3f
    and $01                                       ; $4e37: $e6 $01
    or e                                          ; $4e39: $b3
    ld c, a                                       ; $4e3a: $4f
    ld a, d                                       ; $4e3b: $7a
    xor $20                                       ; $4e3c: $ee $20
    ld [$dfa6], a                                 ; $4e3e: $ea $a6 $df
    jr jr_00f_4e4b                                ; $4e41: $18 $08

jr_00f_4e43:
    cp $ff                                        ; $4e43: $fe $ff
    jr nz, jr_00f_4e4a                            ; $4e45: $20 $03

    ld a, $80                                     ; $4e47: $3e $80
    or c                                          ; $4e49: $b1

jr_00f_4e4a:
    ld c, a                                       ; $4e4a: $4f

Call_00f_4e4b:
jr_00f_4e4b:
    bit 7, c                                      ; $4e4b: $cb $79
    jp nz, Jump_00f_4edc                          ; $4e4d: $c2 $dc $4e

    ld a, c                                       ; $4e50: $79
    cp $02                                        ; $4e51: $fe $02
    jr nz, jr_00f_4e77                            ; $4e53: $20 $22

    ld a, [$df9f]                                 ; $4e55: $fa $9f $df
    ld e, a                                       ; $4e58: $5f
    ld a, b                                       ; $4e59: $78
    cp e                                          ; $4e5a: $bb
    jr c, jr_00f_4e77                             ; $4e5b: $38 $1a

    ld a, [$df74]                                 ; $4e5d: $fa $74 $df
    bit 6, a                                      ; $4e60: $cb $77
    jr z, jr_00f_4e73                             ; $4e62: $28 $0f

    xor a                                         ; $4e64: $af
    ldh [rTAC], a                                 ; $4e65: $e0 $07
    ldh a, [rIE]                                  ; $4e67: $f0 $ff
    and $1b                                       ; $4e69: $e6 $1b
    ldh [rIE], a                                  ; $4e6b: $e0 $ff
    ldh a, [rIF]                                  ; $4e6d: $f0 $0f
    and $1b                                       ; $4e6f: $e6 $1b
    ldh [rIF], a                                  ; $4e71: $e0 $0f

jr_00f_4e73:
    xor a                                         ; $4e73: $af
    ld [$df74], a                                 ; $4e74: $ea $74 $df

jr_00f_4e77:
    call Call_00f_4edc                            ; $4e77: $cd $dc $4e
    ret z                                         ; $4e7a: $c8

    ld hl, $df70                                  ; $4e7b: $21 $70 $df
    add hl, bc                                    ; $4e7e: $09
    ld [hl], $0f                                  ; $4e7f: $36 $0f
    ld hl, $df09                                  ; $4e81: $21 $09 $df
    add hl, bc                                    ; $4e84: $09
    ld [hl], a                                    ; $4e85: $77
    ld hl, $df0d                                  ; $4e86: $21 $0d $df
    add hl, bc                                    ; $4e89: $09
    ld [hl], a                                    ; $4e8a: $77
    sla c                                         ; $4e8b: $cb $21
    ld a, c                                       ; $4e8d: $79
    cp $06                                        ; $4e8e: $fe $06
    jr z, jr_00f_4ebd                             ; $4e90: $28 $2b

    ld a, [$dffe]                                 ; $4e92: $fa $fe $df
    and a                                         ; $4e95: $a7
    jr nz, jr_00f_4eb0                            ; $4e96: $20 $18

    ld hl, $df15                                  ; $4e98: $21 $15 $df
    add hl, bc                                    ; $4e9b: $09
    ld a, [hl+]                                   ; $4e9c: $2a
    ld d, [hl]                                    ; $4e9d: $56
    ld e, a                                       ; $4e9e: $5f
    ld hl, $df23                                  ; $4e9f: $21 $23 $df
    add hl, bc                                    ; $4ea2: $09
    ld a, [hl+]                                   ; $4ea3: $2a
    ld h, [hl]                                    ; $4ea4: $66
    ld l, a                                       ; $4ea5: $6f
    add hl, de                                    ; $4ea6: $19
    ld e, l                                       ; $4ea7: $5d
    ld d, h                                       ; $4ea8: $54
    ld hl, $df29                                  ; $4ea9: $21 $29 $df
    add hl, bc                                    ; $4eac: $09
    ld a, e                                       ; $4ead: $7b
    ld [hl+], a                                   ; $4eae: $22
    ld [hl], d                                    ; $4eaf: $72

jr_00f_4eb0:
    xor a                                         ; $4eb0: $af
    ld hl, $df1d                                  ; $4eb1: $21 $1d $df
    add hl, bc                                    ; $4eb4: $09
    ld [hl+], a                                   ; $4eb5: $22
    ld [hl], a                                    ; $4eb6: $77
    ld hl, $df23                                  ; $4eb7: $21 $23 $df
    add hl, bc                                    ; $4eba: $09
    ld [hl+], a                                   ; $4ebb: $22
    ld [hl], a                                    ; $4ebc: $77

jr_00f_4ebd:
    xor a                                         ; $4ebd: $af
    ld hl, $df15                                  ; $4ebe: $21 $15 $df
    add hl, bc                                    ; $4ec1: $09
    ld [hl+], a                                   ; $4ec2: $22
    ld [hl], a                                    ; $4ec3: $77
    srl c                                         ; $4ec4: $cb $39
    push bc                                       ; $4ec6: $c5
    call Call_00f_505a                            ; $4ec7: $cd $5a $50
    pop bc                                        ; $4eca: $c1
    ld hl, $4ed8                                  ; $4ecb: $21 $d8 $4e
    add hl, bc                                    ; $4ece: $09
    ld a, [$df11]                                 ; $4ecf: $fa $11 $df
    or [hl]                                       ; $4ed2: $b6
    ld [$df11], a                                 ; $4ed3: $ea $11 $df
    rlca                                          ; $4ed6: $07
    ret                                           ; $4ed7: $c9


    db $11, $22, $44, $88

Call_00f_4edc:
Jump_00f_4edc:
    push hl                                       ; $4edc: $e5
    ld a, b                                       ; $4edd: $78
    res 7, c                                      ; $4ede: $cb $b9
    ld b, $00                                     ; $4ee0: $06 $00
    ld hl, $df9d                                  ; $4ee2: $21 $9d $df
    add hl, bc                                    ; $4ee5: $09
    cp [hl]                                       ; $4ee6: $be
    jr nc, jr_00f_4eec                            ; $4ee7: $30 $03

    pop hl                                        ; $4ee9: $e1
    xor a                                         ; $4eea: $af
    ret                                           ; $4eeb: $c9


jr_00f_4eec:
    ld [hl], a                                    ; $4eec: $77
    pop hl                                        ; $4eed: $e1
    ld a, l                                       ; $4eee: $7d
    ld d, h                                       ; $4eef: $54
    sla c                                         ; $4ef0: $cb $21
    ld hl, $df7e                                  ; $4ef2: $21 $7e $df
    add hl, bc                                    ; $4ef5: $09
    ld [hl+], a                                   ; $4ef6: $22
    ld [hl], d                                    ; $4ef7: $72
    xor a                                         ; $4ef8: $af
    ld hl, $df86                                  ; $4ef9: $21 $86 $df
    add hl, bc                                    ; $4efc: $09
    ld [hl+], a                                   ; $4efd: $22
    ld [hl], a                                    ; $4efe: $77
    ld hl, $df92                                  ; $4eff: $21 $92 $df
    add hl, bc                                    ; $4f02: $09
    ld [hl+], a                                   ; $4f03: $22
    ld [hl], a                                    ; $4f04: $77
    srl c                                         ; $4f05: $cb $39
    ld hl, $df8e                                  ; $4f07: $21 $8e $df
    add hl, bc                                    ; $4f0a: $09
    ld [hl], a                                    ; $4f0b: $77
    ld hl, $dfa1                                  ; $4f0c: $21 $a1 $df
    add hl, bc                                    ; $4f0f: $09
    ld [hl], a                                    ; $4f10: $77
    rlca                                          ; $4f11: $07
    ret                                           ; $4f12: $c9


Call_00f_4f13:
    push de                                       ; $4f13: $d5
    ld d, $01                                     ; $4f14: $16 $01
    jr jr_00f_4f1c                                ; $4f16: $18 $04

Call_00f_4f18:
    push de                                       ; $4f18: $d5
    ld b, $00                                     ; $4f19: $06 $00
    ld d, b                                       ; $4f1b: $50

jr_00f_4f1c:
    call Call_00f_4df8                            ; $4f1c: $cd $f8 $4d
    pop de                                        ; $4f1f: $d1
    ret z                                         ; $4f20: $c8

    ld hl, $df09                                  ; $4f21: $21 $09 $df
    add hl, bc                                    ; $4f24: $09
    res 1, [hl]                                   ; $4f25: $cb $8e
    set 5, [hl]                                   ; $4f27: $cb $ee
    ld hl, $df0d                                  ; $4f29: $21 $0d $df
    add hl, bc                                    ; $4f2c: $09
    set 5, [hl]                                   ; $4f2d: $cb $ee
    ld hl, $dff4                                  ; $4f2f: $21 $f4 $df
    add hl, bc                                    ; $4f32: $09
    ld [hl], e                                    ; $4f33: $73
    ld hl, $df16                                  ; $4f34: $21 $16 $df
    sla c                                         ; $4f37: $cb $21
    add hl, bc                                    ; $4f39: $09
    ld a, d                                       ; $4f3a: $7a
    ld [hl-], a                                   ; $4f3b: $32
    ld [hl], $00                                  ; $4f3c: $36 $00
    srl c                                         ; $4f3e: $cb $39
    rlca                                          ; $4f40: $07
    ret                                           ; $4f41: $c9


    ld hl, $5a8b                                  ; $4f42: $21 $8b $5a
    cp [hl]                                       ; $4f45: $be
    jp nc, Jump_00f_4fd4                          ; $4f46: $d2 $d4 $4f

    ld e, a                                       ; $4f49: $5f
    ld d, $00                                     ; $4f4a: $16 $00
    sla e                                         ; $4f4c: $cb $23
    rl d                                          ; $4f4e: $cb $12
    sla e                                         ; $4f50: $cb $23
    rl d                                          ; $4f52: $cb $12
    ld hl, $5a89                                  ; $4f54: $21 $89 $5a
    ld a, [hl+]                                   ; $4f57: $2a
    ld h, [hl]                                    ; $4f58: $66
    ld l, a                                       ; $4f59: $6f
    add hl, de                                    ; $4f5a: $19
    ld de, $5a87                                  ; $4f5b: $11 $87 $5a
    add hl, de                                    ; $4f5e: $19
    push bc                                       ; $4f5f: $c5
    ld a, [hl+]                                   ; $4f60: $2a
    ld b, [hl]                                    ; $4f61: $46
    inc hl                                        ; $4f62: $23
    ld c, $00                                     ; $4f63: $0e $00
    ld d, $01                                     ; $4f65: $16 $01
    push hl                                       ; $4f67: $e5
    call Call_00f_4df8                            ; $4f68: $cd $f8 $4d
    pop hl                                        ; $4f6b: $e1
    jr z, jr_00f_4fd3                             ; $4f6c: $28 $65

    ld a, [hl+]                                   ; $4f6e: $2a
    ld d, a                                       ; $4f6f: $57
    ld e, [hl]                                    ; $4f70: $5e
    ld hl, $df09                                  ; $4f71: $21 $09 $df
    add hl, bc                                    ; $4f74: $09
    set 1, [hl]                                   ; $4f75: $cb $ce
    set 5, [hl]                                   ; $4f77: $cb $ee
    ld hl, $df0d                                  ; $4f79: $21 $0d $df
    add hl, bc                                    ; $4f7c: $09
    set 5, [hl]                                   ; $4f7d: $cb $ee
    ld hl, $df16                                  ; $4f7f: $21 $16 $df
    sla c                                         ; $4f82: $cb $21
    add hl, bc                                    ; $4f84: $09
    ld a, d                                       ; $4f85: $7a
    ld [hl-], a                                   ; $4f86: $32
    ld [hl], $00                                  ; $4f87: $36 $00
    srl c                                         ; $4f89: $cb $39
    ld a, e                                       ; $4f8b: $7b
    pop de                                        ; $4f8c: $d1
    bit 7, d                                      ; $4f8d: $cb $7a
    jr nz, jr_00f_4f92                            ; $4f8f: $20 $01

    ld a, d                                       ; $4f91: $7a

jr_00f_4f92:
    and $0f                                       ; $4f92: $e6 $0f
    push de                                       ; $4f94: $d5
    ld e, a                                       ; $4f95: $5f
    ld a, [$dff8]                                 ; $4f96: $fa $f8 $df
    swap a                                        ; $4f99: $cb $37
    and $0f                                       ; $4f9b: $e6 $0f
    call Call_00f_5640                            ; $4f9d: $cd $40 $56
    pop de                                        ; $4fa0: $d1
    ld hl, $dff4                                  ; $4fa1: $21 $f4 $df
    add hl, bc                                    ; $4fa4: $09
    ld [hl], a                                    ; $4fa5: $77
    push bc                                       ; $4fa6: $c5
    ld a, c                                       ; $4fa7: $79
    ld [$df9c], a                                 ; $4fa8: $ea $9c $df
    ld a, e                                       ; $4fab: $7b
    cp $ff                                        ; $4fac: $fe $ff
    call nz, Call_00f_4692                        ; $4fae: $c4 $92 $46
    ld a, [$dfa5]                                 ; $4fb1: $fa $a5 $df

jr_00f_4fb4:
    inc a                                         ; $4fb4: $3c
    jr z, jr_00f_4fb4                             ; $4fb5: $28 $fd

    ld hl, $dfa1                                  ; $4fb7: $21 $a1 $df
    cp [hl]                                       ; $4fba: $be
    jr z, jr_00f_4fb4                             ; $4fbb: $28 $f7

    inc hl                                        ; $4fbd: $23
    cp [hl]                                       ; $4fbe: $be
    jr z, jr_00f_4fb4                             ; $4fbf: $28 $f3

    inc hl                                        ; $4fc1: $23
    cp [hl]                                       ; $4fc2: $be
    jr z, jr_00f_4fb4                             ; $4fc3: $28 $ef

    inc hl                                        ; $4fc5: $23
    cp [hl]                                       ; $4fc6: $be
    jr z, jr_00f_4fb4                             ; $4fc7: $28 $eb

    ld [$dfa5], a                                 ; $4fc9: $ea $a5 $df
    ld hl, $dfa1                                  ; $4fcc: $21 $a1 $df
    pop bc                                        ; $4fcf: $c1
    add hl, bc                                    ; $4fd0: $09
    ld [hl], a                                    ; $4fd1: $77
    ret                                           ; $4fd2: $c9


jr_00f_4fd3:
    pop bc                                        ; $4fd3: $c1

Jump_00f_4fd4:
    xor a                                         ; $4fd4: $af
    ret                                           ; $4fd5: $c9


Call_00f_4fd6:
    and a                                         ; $4fd6: $a7
    ret z                                         ; $4fd7: $c8

    ld hl, $dfa1                                  ; $4fd8: $21 $a1 $df
    ld c, $00                                     ; $4fdb: $0e $00
    ld b, a                                       ; $4fdd: $47

jr_00f_4fde:
    ld a, [hl+]                                   ; $4fde: $2a
    cp b                                          ; $4fdf: $b8
    jr z, jr_00f_4fe9                             ; $4fe0: $28 $07

    inc c                                         ; $4fe2: $0c
    bit 2, c                                      ; $4fe3: $cb $51
    jr z, jr_00f_4fde                             ; $4fe5: $28 $f7

    xor a                                         ; $4fe7: $af
    ret                                           ; $4fe8: $c9


jr_00f_4fe9:
    ld a, c                                       ; $4fe9: $79
    ld [$df9c], a                                 ; $4fea: $ea $9c $df
    rlca                                          ; $4fed: $07
    ret                                           ; $4fee: $c9


    call Call_00f_4fd6                            ; $4fef: $cd $d6 $4f
    jp nz, Jump_00f_48df                          ; $4ff2: $c2 $df $48

    ret                                           ; $4ff5: $c9


    call Call_00f_4fd6                            ; $4ff6: $cd $d6 $4f
    jp nz, Jump_00f_4848                          ; $4ff9: $c2 $48 $48

    ret                                           ; $4ffc: $c9


    call Call_00f_4fd6                            ; $4ffd: $cd $d6 $4f
    jp nz, Jump_00f_465d                          ; $5000: $c2 $5d $46

    ret                                           ; $5003: $c9


Call_00f_5004:
    ld de, $0000                                  ; $5004: $11 $00 $00

jr_00f_5007:
    ld hl, $df7e                                  ; $5007: $21 $7e $df
    add hl, de                                    ; $500a: $19
    ld a, [hl+]                                   ; $500b: $2a
    ld h, [hl]                                    ; $500c: $66
    ld l, a                                       ; $500d: $6f
    or h                                          ; $500e: $b4
    jr z, jr_00f_5028                             ; $500f: $28 $17

    push de                                       ; $5011: $d5
    ld a, e                                       ; $5012: $7b
    srl a                                         ; $5013: $cb $3f
    ld [$df9c], a                                 ; $5015: $ea $9c $df
    call Call_00f_5030                            ; $5018: $cd $30 $50
    pop de                                        ; $501b: $d1
    ld hl, $df7e                                  ; $501c: $21 $7e $df
    add hl, de                                    ; $501f: $19
    ld a, [$df9a]                                 ; $5020: $fa $9a $df
    ld [hl+], a                                   ; $5023: $22
    ld a, [$df9b]                                 ; $5024: $fa $9b $df
    ld [hl], a                                    ; $5027: $77

jr_00f_5028:
    ld a, e                                       ; $5028: $7b
    cp $06                                        ; $5029: $fe $06
    ret z                                         ; $502b: $c8

    inc e                                         ; $502c: $1c
    inc e                                         ; $502d: $1c
    jr jr_00f_5007                                ; $502e: $18 $d7

Call_00f_5030:
jr_00f_5030:
    ld a, [hl+]                                   ; $5030: $2a
    cp $04                                        ; $5031: $fe $04
    push af                                       ; $5033: $f5
    ld c, l                                       ; $5034: $4d
    ld b, h                                       ; $5035: $44
    ld hl, $df9a                                  ; $5036: $21 $9a $df
    ld [hl], c                                    ; $5039: $71
    inc hl                                        ; $503a: $23
    ld [hl], b                                    ; $503b: $70
    ld hl, $4da4                                  ; $503c: $21 $a4 $4d
    sla a                                         ; $503f: $cb $27
    add l                                         ; $5041: $85
    ld l, a                                       ; $5042: $6f
    ld a, h                                       ; $5043: $7c
    adc $00                                       ; $5044: $ce $00
    ld h, a                                       ; $5046: $67
    ld a, [hl+]                                   ; $5047: $2a
    ld h, [hl]                                    ; $5048: $66
    ld l, a                                       ; $5049: $6f
    call Call_00f_5059                            ; $504a: $cd $59 $50
    pop af                                        ; $504d: $f1
    ret z                                         ; $504e: $c8

    ld hl, $df9a                                  ; $504f: $21 $9a $df
    ld a, [hl+]                                   ; $5052: $2a
    ld h, [hl]                                    ; $5053: $66
    ld l, a                                       ; $5054: $6f
    or h                                          ; $5055: $b4
    jr nz, jr_00f_5030                            ; $5056: $20 $d8

    ret                                           ; $5058: $c9


Call_00f_5059:
    jp hl                                         ; $5059: $e9


Call_00f_505a:
Jump_00f_505a:
    ld b, $00                                     ; $505a: $06 $00
    ld hl, $df09                                  ; $505c: $21 $09 $df
    add hl, bc                                    ; $505f: $09
    res 7, [hl]                                   ; $5060: $cb $be
    ld hl, $5164                                  ; $5062: $21 $64 $51
    add hl, bc                                    ; $5065: $09
    ldh a, [rNR51]                                ; $5066: $f0 $25
    and [hl]                                      ; $5068: $a6
    ldh [rNR51], a                                ; $5069: $e0 $25
    ld a, [$df11]                                 ; $506b: $fa $11 $df
    and [hl]                                      ; $506e: $a6
    ld [$df11], a                                 ; $506f: $ea $11 $df
    ld a, c                                       ; $5072: $79
    cp $02                                        ; $5073: $fe $02
    jr nz, jr_00f_507a                            ; $5075: $20 $03

    xor a                                         ; $5077: $af
    ldh [rNR30], a                                ; $5078: $e0 $1a

jr_00f_507a:
    xor a                                         ; $507a: $af
    ld b, $01                                     ; $507b: $06 $01

Call_00f_507d:
    ld e, a                                       ; $507d: $5f
    ld a, c                                       ; $507e: $79
    cp $02                                        ; $507f: $fe $02
    ld a, e                                       ; $5081: $7b
    jr z, jr_00f_50bb                             ; $5082: $28 $37

    ld d, $00                                     ; $5084: $16 $00
    ld e, c                                       ; $5086: $59
    ld hl, $df2f                                  ; $5087: $21 $2f $df
    add hl, de                                    ; $508a: $19
    ld [hl], a                                    ; $508b: $77
    ld c, a                                       ; $508c: $4f
    ld hl, $50e7                                  ; $508d: $21 $e7 $50
    add hl, de                                    ; $5090: $19
    bit 0, b                                      ; $5091: $cb $40
    ld b, c                                       ; $5093: $41
    ld c, [hl]                                    ; $5094: $4e
    jr nz, jr_00f_50a0                            ; $5095: $20 $09

    ld a, [c]                                     ; $5097: $f2
    and $0f                                       ; $5098: $e6 $0f
    swap b                                        ; $509a: $cb $30
    or b                                          ; $509c: $b0
    ld [c], a                                     ; $509d: $e2
    jr jr_00f_50a4                                ; $509e: $18 $04

jr_00f_50a0:
    ld a, b                                       ; $50a0: $78
    swap a                                        ; $50a1: $cb $37
    ld [c], a                                     ; $50a3: $e2

jr_00f_50a4:
    ld hl, $50eb                                  ; $50a4: $21 $eb $50
    add hl, de                                    ; $50a7: $19
    ld c, [hl]                                    ; $50a8: $4e
    ld hl, $df12                                  ; $50a9: $21 $12 $df
    add hl, de                                    ; $50ac: $19
    ld a, e                                       ; $50ad: $7b
    cp $03                                        ; $50ae: $fe $03
    jr z, jr_00f_50b7                             ; $50b0: $28 $05

    ld a, $80                                     ; $50b2: $3e $80
    or [hl]                                       ; $50b4: $b6
    ld [c], a                                     ; $50b5: $e2
    ret                                           ; $50b6: $c9


jr_00f_50b7:
    ld a, $80                                     ; $50b7: $3e $80
    ld [c], a                                     ; $50b9: $e2
    ret                                           ; $50ba: $c9


jr_00f_50bb:
    and $0c                                       ; $50bb: $e6 $0c
    ld d, a                                       ; $50bd: $57
    ld a, [$df31]                                 ; $50be: $fa $31 $df
    and $0c                                       ; $50c1: $e6 $0c
    cp d                                          ; $50c3: $ba
    ld a, e                                       ; $50c4: $7b
    ld [$df31], a                                 ; $50c5: $ea $31 $df
    ret z                                         ; $50c8: $c8

    ld e, c                                       ; $50c9: $59
    ld c, a                                       ; $50ca: $4f
    ld d, $00                                     ; $50cb: $16 $00
    ld a, [$df74]                                 ; $50cd: $fa $74 $df
    bit 0, a                                      ; $50d0: $cb $47
    ret nz                                        ; $50d2: $c0

    ld b, $00                                     ; $50d3: $06 $00
    srl c                                         ; $50d5: $cb $39
    srl c                                         ; $50d7: $cb $39
    ld hl, $50ef                                  ; $50d9: $21 $ef $50
    add hl, bc                                    ; $50dc: $09
    ld b, [hl]                                    ; $50dd: $46
    ldh a, [rNR32]                                ; $50de: $f0 $1c
    and $9f                                       ; $50e0: $e6 $9f
    or b                                          ; $50e2: $b0
    ldh [rNR32], a                                ; $50e3: $e0 $1c
    jr jr_00f_50a4                                ; $50e5: $18 $bd

    db $12, $17

    inc e                                         ; $50e9: $1c

    db $21, $14, $19, $1e, $23, $00

    ld h, b                                       ; $50f0: $60
    ld b, b                                       ; $50f1: $40

    db $20

Call_00f_50f3:
Jump_00f_50f3:
    ld e, a                                       ; $50f3: $5f
    ld b, $00                                     ; $50f4: $06 $00
    ld a, c                                       ; $50f6: $79
    cp $03                                        ; $50f7: $fe $03
    jp z, Jump_00f_5145                           ; $50f9: $ca $45 $51

    cp $02                                        ; $50fc: $fe $02
    jr z, jr_00f_5122                             ; $50fe: $28 $22

    ld a, e                                       ; $5100: $7b
    cp $04                                        ; $5101: $fe $04
    jr nc, jr_00f_5111                            ; $5103: $30 $0c

    ld hl, $515f                                  ; $5105: $21 $5f $51
    add hl, bc                                    ; $5108: $09
    ld l, [hl]                                    ; $5109: $6e
    ld h, $ff                                     ; $510a: $26 $ff
    rrc e                                         ; $510c: $cb $0b
    rrc e                                         ; $510e: $cb $0b
    ld [hl], e                                    ; $5110: $73

jr_00f_5111:
    ld hl, $df12                                  ; $5111: $21 $12 $df
    add hl, bc                                    ; $5114: $09
    ld a, [hl]                                    ; $5115: $7e
    ld hl, $5161                                  ; $5116: $21 $61 $51
    add hl, bc                                    ; $5119: $09
    ld l, [hl]                                    ; $511a: $6e
    or $80                                        ; $511b: $f6 $80
    ld h, $ff                                     ; $511d: $26 $ff
    ld [hl], a                                    ; $511f: $77
    jr jr_00f_5145                                ; $5120: $18 $23

jr_00f_5122:
    ld a, e                                       ; $5122: $7b
    cp $ff                                        ; $5123: $fe $ff
    jr z, jr_00f_5132                             ; $5125: $28 $0b

    push bc                                       ; $5127: $c5
    call Call_00f_5168                            ; $5128: $cd $68 $51
    ld [$df75], a                                 ; $512b: $ea $75 $df
    call Call_000_3baa                            ; $512e: $cd $aa $3b
    pop bc                                        ; $5131: $c1

jr_00f_5132:
    ld d, c                                       ; $5132: $51
    ld hl, $df12                                  ; $5133: $21 $12 $df
    add hl, bc                                    ; $5136: $09
    ld a, $80                                     ; $5137: $3e $80
    ldh [rNR30], a                                ; $5139: $e0 $1a
    ld a, [hl]                                    ; $513b: $7e
    ld c, $1e                                     ; $513c: $0e $1e
    or $80                                        ; $513e: $f6 $80
    ld [c], a                                     ; $5140: $e2
    and $7f                                       ; $5141: $e6 $7f
    ld [c], a                                     ; $5143: $e2
    ld c, d                                       ; $5144: $4a

Jump_00f_5145:
jr_00f_5145:
    ld hl, $df09                                  ; $5145: $21 $09 $df
    add hl, bc                                    ; $5148: $09
    set 7, [hl]                                   ; $5149: $cb $fe
    ld hl, $5164                                  ; $514b: $21 $64 $51
    add hl, bc                                    ; $514e: $09
    ld b, [hl]                                    ; $514f: $46
    ldh a, [rNR51]                                ; $5150: $f0 $25
    and b                                         ; $5152: $a0
    ld c, a                                       ; $5153: $4f
    ld a, b                                       ; $5154: $78
    cpl                                           ; $5155: $2f
    ld b, a                                       ; $5156: $47
    ld a, [$df11]                                 ; $5157: $fa $11 $df
    and b                                         ; $515a: $a0
    or c                                          ; $515b: $b1
    ldh [rNR51], a                                ; $515c: $e0 $25
    ret                                           ; $515e: $c9


    db $11, $16, $14, $19

    db $1e                                        ; $5163: $1e

    db $ee, $dd, $bb, $77

Call_00f_5168:
    ld hl, $5a8c                                  ; $5168: $21 $8c $5a
    ld e, [hl]                                    ; $516b: $5e
    inc hl                                        ; $516c: $23
    ld d, [hl]                                    ; $516d: $56
    ld hl, $5a87                                  ; $516e: $21 $87 $5a
    add hl, de                                    ; $5171: $19
    ld d, $00                                     ; $5172: $16 $00
    ld e, a                                       ; $5174: $5f
    sla e                                         ; $5175: $cb $23
    rl d                                          ; $5177: $cb $12
    ld c, e                                       ; $5179: $4b
    ld b, d                                       ; $517a: $42
    sla e                                         ; $517b: $cb $23
    rl d                                          ; $517d: $cb $12
    add hl, de                                    ; $517f: $19
    add hl, bc                                    ; $5180: $09
    ld a, [hl+]                                   ; $5181: $2a
    ld e, a                                       ; $5182: $5f
    ld a, [hl+]                                   ; $5183: $2a
    ld d, a                                       ; $5184: $57
    push de                                       ; $5185: $d5
    ld a, [hl+]                                   ; $5186: $2a
    ld c, a                                       ; $5187: $4f
    ld a, [hl+]                                   ; $5188: $2a
    ld b, a                                       ; $5189: $47
    ld a, [hl+]                                   ; $518a: $2a
    ld e, a                                       ; $518b: $5f
    ld a, [$df00]                                 ; $518c: $fa $00 $df
    add [hl]                                      ; $518f: $86
    pop hl                                        ; $5190: $e1
    ret                                           ; $5191: $c9


Call_00f_5192:
    push bc                                       ; $5192: $c5
    ld a, h                                       ; $5193: $7c

jr_00f_5194:
    bit 7, a                                      ; $5194: $cb $7f
    jr z, jr_00f_519c                             ; $5196: $28 $04

    add $54                                       ; $5198: $c6 $54
    jr jr_00f_5194                                ; $519a: $18 $f8

jr_00f_519c:
    cp $54                                        ; $519c: $fe $54
    jr c, jr_00f_51a4                             ; $519e: $38 $04

    sub $54                                       ; $51a0: $d6 $54
    jr jr_00f_519c                                ; $51a2: $18 $f8

jr_00f_51a4:
    ld d, $00                                     ; $51a4: $16 $00
    ld e, a                                       ; $51a6: $5f
    ld a, l                                       ; $51a7: $7d
    and a                                         ; $51a8: $a7
    jr nz, jr_00f_51c4                            ; $51a9: $20 $19

    sla e                                         ; $51ab: $cb $23
    ld hl, $51e6                                  ; $51ad: $21 $e6 $51
    add hl, de                                    ; $51b0: $19
    ld e, c                                       ; $51b1: $59
    ld a, [hl+]                                   ; $51b2: $2a
    ld b, [hl]                                    ; $51b3: $46

jr_00f_51b4:
    ld hl, $df12                                  ; $51b4: $21 $12 $df
    add hl, de                                    ; $51b7: $19
    ld [hl], b                                    ; $51b8: $70
    ld hl, $51e1                                  ; $51b9: $21 $e1 $51
    add hl, de                                    ; $51bc: $19
    ld c, [hl]                                    ; $51bd: $4e
    ld [c], a                                     ; $51be: $e2
    inc c                                         ; $51bf: $0c
    ld a, b                                       ; $51c0: $78
    ld [c], a                                     ; $51c1: $e2
    pop bc                                        ; $51c2: $c1
    ret                                           ; $51c3: $c9


jr_00f_51c4:
    ld hl, $5290                                  ; $51c4: $21 $90 $52
    add hl, de                                    ; $51c7: $19
    ld d, c                                       ; $51c8: $51
    ld c, [hl]                                    ; $51c9: $4e
    call Call_00f_4000                            ; $51ca: $cd $00 $40
    ld c, h                                       ; $51cd: $4c
    ld a, d                                       ; $51ce: $7a
    ld b, $00                                     ; $51cf: $06 $00
    ld d, b                                       ; $51d1: $50
    sla e                                         ; $51d2: $cb $23
    ld hl, $51e6                                  ; $51d4: $21 $e6 $51
    add hl, de                                    ; $51d7: $19
    ld e, a                                       ; $51d8: $5f
    ld a, [hl+]                                   ; $51d9: $2a
    ld h, [hl]                                    ; $51da: $66
    ld l, a                                       ; $51db: $6f
    add hl, bc                                    ; $51dc: $09
    ld a, l                                       ; $51dd: $7d
    ld b, h                                       ; $51de: $44
    jr jr_00f_51b4                                ; $51df: $18 $d3

    db $13, $18, $1d

    add d                                         ; $51e4: $82
    rlca                                          ; $51e5: $07

    db $82, $07, $89, $07, $90, $07, $96, $07, $9c, $07, $a2, $07

    and a                                         ; $51f2: $a7
    rlca                                          ; $51f3: $07

    db $ac, $07, $b1, $07, $b5, $07

    cp c                                          ; $51fa: $b9
    rlca                                          ; $51fb: $07

    db $bd, $07, $c1, $07, $c4, $07, $c8, $07, $cb, $07, $ce, $07, $d1, $07, $d3, $07
    db $d6, $07, $d8, $07

    jp c, $dc07                                   ; $5210: $da $07 $dc

    rlca                                          ; $5213: $07
    sbc $07                                       ; $5214: $de $07
    ldh [rTAC], a                                 ; $5216: $e0 $07
    ld [c], a                                     ; $5218: $e2
    rlca                                          ; $5219: $07

    db $e4, $07

    push hl                                       ; $521c: $e5
    rlca                                          ; $521d: $07

    db $e7, $07, $e8, $07, $e9, $07, $eb, $07, $ec, $07, $ed, $07, $ee, $07, $ef, $07
    db $2c, $00

    sbc h                                         ; $5230: $9c
    nop                                           ; $5231: $00

    db $06, $01

    ld l, d                                       ; $5234: $6a
    db $01                                        ; $5235: $01

    db $c9, $01, $22, $02, $76, $02, $c6, $02, $11, $03, $58, $03, $9b, $03, $da, $03
    db $16, $04, $4e, $04, $83, $04, $b5, $04, $e4, $04, $11, $05, $3b, $05, $63, $05
    db $88, $05, $ac, $05, $cd, $05, $ed, $05, $0b, $06, $27, $06, $41, $06, $5a, $06
    db $72, $06, $88, $06, $9d, $06, $b1, $06, $c4, $06, $d6, $06, $e6, $06, $f6, $06
    db $05, $07, $13, $07, $20, $07, $2d, $07, $39, $07, $44, $07, $4e, $07, $58, $07
    db $62, $07, $6b, $07, $73, $07, $7b, $07

    ld a, e                                       ; $528e: $7b
    rlca                                          ; $528f: $07

    db $07, $07, $06, $06, $06

    dec b                                         ; $5295: $05
    dec b                                         ; $5296: $05

    db $05

    inc b                                         ; $5298: $04
    inc b                                         ; $5299: $04
    inc b                                         ; $529a: $04
    inc b                                         ; $529b: $04

    db $03, $04, $03, $03, $03, $02, $03, $02

    ld [bc], a                                    ; $52a4: $02
    ld [bc], a                                    ; $52a5: $02
    ld [bc], a                                    ; $52a6: $02
    ld [bc], a                                    ; $52a7: $02
    ld [bc], a                                    ; $52a8: $02
    ld [bc], a                                    ; $52a9: $02
    db $01                                        ; $52aa: $01
    ld [bc], a                                    ; $52ab: $02

    db $01, $01, $02, $01, $01, $01, $01, $01

    ld [hl], b                                    ; $52b4: $70
    ld l, d                                       ; $52b5: $6a
    ld h, h                                       ; $52b6: $64
    ld e, a                                       ; $52b7: $5f
    ld e, c                                       ; $52b8: $59
    ld d, h                                       ; $52b9: $54
    ld d, b                                       ; $52ba: $50
    ld c, e                                       ; $52bb: $4b
    ld b, a                                       ; $52bc: $47
    ld b, e                                       ; $52bd: $43

    db $3f, $3c, $38

    dec [hl]                                      ; $52c1: $35
    ld [hl-], a                                   ; $52c2: $32

    db $2f, $2d

    ld a, [hl+]                                   ; $52c5: $2a

    db $28, $25

    inc h                                         ; $52c8: $24

    db $21, $20, $1e, $1c, $1a, $19, $18, $16, $15, $14, $13, $12, $10, $10, $0f, $0e
    db $0d, $0d, $0c, $0b, $0a, $0a, $0a, $09, $08, $08, $07

Call_00f_52e4:
Jump_00f_52e4:
    sla a                                         ; $52e4: $cb $27
    push af                                       ; $52e6: $f5
    bit 1, a                                      ; $52e7: $cb $4f
    jr z, jr_00f_52f0                             ; $52e9: $28 $05

    ld hl, $df0a                                  ; $52eb: $21 $0a $df
    jr jr_00f_52fc                                ; $52ee: $18 $0c

jr_00f_52f0:
    bit 2, a                                      ; $52f0: $cb $57
    jr z, jr_00f_52f9                             ; $52f2: $28 $05

    ld hl, $df0b                                  ; $52f4: $21 $0b $df
    jr jr_00f_52fc                                ; $52f7: $18 $03

jr_00f_52f9:
    ld hl, $df09                                  ; $52f9: $21 $09 $df

jr_00f_52fc:
    res 0, [hl]                                   ; $52fc: $cb $86
    res 2, [hl]                                   ; $52fe: $cb $96
    res 3, [hl]                                   ; $5300: $cb $9e
    res 4, [hl]                                   ; $5302: $cb $a6
    ld hl, $df3a                                  ; $5304: $21 $3a $df
    add l                                         ; $5307: $85
    ld l, a                                       ; $5308: $6f
    ld a, h                                       ; $5309: $7c
    adc $00                                       ; $530a: $ce $00
    ld h, a                                       ; $530c: $67
    ld a, e                                       ; $530d: $7b
    ld [hl+], a                                   ; $530e: $22
    ld [hl], d                                    ; $530f: $72
    pop af                                        ; $5310: $f1
    ld d, $00                                     ; $5311: $16 $00
    ld e, a                                       ; $5313: $5f
    jr nc, jr_00f_532a                            ; $5314: $30 $14

    push bc                                       ; $5316: $c5
    ld hl, $df15                                  ; $5317: $21 $15 $df
    add hl, de                                    ; $531a: $19
    ld a, c                                       ; $531b: $79
    add [hl]                                      ; $531c: $86
    ld c, a                                       ; $531d: $4f
    ld a, b                                       ; $531e: $78
    inc hl                                        ; $531f: $23
    adc [hl]                                      ; $5320: $8e
    ld hl, $df47                                  ; $5321: $21 $47 $df
    add hl, de                                    ; $5324: $19
    ld [hl-], a                                   ; $5325: $32
    ld [hl], c                                    ; $5326: $71
    pop bc                                        ; $5327: $c1
    jr jr_00f_533c                                ; $5328: $18 $12

jr_00f_532a:
    ld hl, $df46                                  ; $532a: $21 $46 $df
    add hl, de                                    ; $532d: $19
    ld a, c                                       ; $532e: $79
    ld [hl+], a                                   ; $532f: $22
    ld [hl], b                                    ; $5330: $70
    ld hl, $df15                                  ; $5331: $21 $15 $df
    add hl, de                                    ; $5334: $19
    ld a, c                                       ; $5335: $79
    sub [hl]                                      ; $5336: $96
    ld c, a                                       ; $5337: $4f
    ld a, b                                       ; $5338: $78
    inc hl                                        ; $5339: $23
    sbc [hl]                                      ; $533a: $9e
    ld b, a                                       ; $533b: $47

jr_00f_533c:
    ld hl, $df3a                                  ; $533c: $21 $3a $df
    add hl, de                                    ; $533f: $19
    bit 7, b                                      ; $5340: $cb $78
    jr nz, jr_00f_534e                            ; $5342: $20 $0a

    ld a, [hl+]                                   ; $5344: $2a
    push bc                                       ; $5345: $c5
    ld b, [hl]                                    ; $5346: $46
    ld c, a                                       ; $5347: $4f
    pop hl                                        ; $5348: $e1
    call Call_00f_40aa                            ; $5349: $cd $aa $40
    jr jr_00f_536a                                ; $534c: $18 $1c

jr_00f_534e:
    ld a, c                                       ; $534e: $79
    cpl                                           ; $534f: $2f
    add $01                                       ; $5350: $c6 $01
    ld c, a                                       ; $5352: $4f
    ld a, b                                       ; $5353: $78
    cpl                                           ; $5354: $2f
    adc $00                                       ; $5355: $ce $00
    ld b, a                                       ; $5357: $47
    ld a, [hl+]                                   ; $5358: $2a
    push bc                                       ; $5359: $c5
    ld b, [hl]                                    ; $535a: $46
    ld c, a                                       ; $535b: $4f
    pop hl                                        ; $535c: $e1
    call Call_00f_40aa                            ; $535d: $cd $aa $40
    ld a, l                                       ; $5360: $7d
    cpl                                           ; $5361: $2f
    add $01                                       ; $5362: $c6 $01
    ld l, a                                       ; $5364: $6f
    ld a, h                                       ; $5365: $7c
    cpl                                           ; $5366: $2f
    adc $00                                       ; $5367: $ce $00
    ld h, a                                       ; $5369: $67

jr_00f_536a:
    ld a, l                                       ; $536a: $7d
    ld b, h                                       ; $536b: $44
    ld hl, $df34                                  ; $536c: $21 $34 $df
    add hl, de                                    ; $536f: $19
    ld [hl+], a                                   ; $5370: $22
    ld [hl], b                                    ; $5371: $70
    srl e                                         ; $5372: $cb $3b
    ld hl, $df09                                  ; $5374: $21 $09 $df
    add hl, de                                    ; $5377: $19
    set 2, [hl]                                   ; $5378: $cb $d6
    ret                                           ; $537a: $c9


Jump_00f_537b:
    ld a, b                                       ; $537b: $78
    ld b, $00                                     ; $537c: $06 $00
    sla c                                         ; $537e: $cb $21
    ld hl, $df40                                  ; $5380: $21 $40 $df
    add hl, bc                                    ; $5383: $09
    ld [hl], a                                    ; $5384: $77
    ld hl, $df3a                                  ; $5385: $21 $3a $df
    add hl, bc                                    ; $5388: $09
    srl a                                         ; $5389: $cb $3f
    jr nz, jr_00f_538e                            ; $538b: $20 $01

    inc a                                         ; $538d: $3c

jr_00f_538e:
    ld [hl], a                                    ; $538e: $77
    ld hl, $df34                                  ; $538f: $21 $34 $df
    add hl, bc                                    ; $5392: $09
    ld a, e                                       ; $5393: $7b
    ld [hl+], a                                   ; $5394: $22
    ld [hl], d                                    ; $5395: $72
    ld hl, $df46                                  ; $5396: $21 $46 $df
    add hl, bc                                    ; $5399: $09
    xor a                                         ; $539a: $af
    ld [hl+], a                                   ; $539b: $22
    ld [hl], a                                    ; $539c: $77
    srl c                                         ; $539d: $cb $39
    ld hl, $df09                                  ; $539f: $21 $09 $df
    add hl, bc                                    ; $53a2: $09
    ld a, [hl]                                    ; $53a3: $7e
    and $e2                                       ; $53a4: $e6 $e2
    or $01                                        ; $53a6: $f6 $01
    ld [hl], a                                    ; $53a8: $77
    ret                                           ; $53a9: $c9


Call_00f_53aa:
    bit 7, a                                      ; $53aa: $cb $7f
    res 7, a                                      ; $53ac: $cb $bf
    push af                                       ; $53ae: $f5
    push de                                       ; $53af: $d5
    ld hl, $df09                                  ; $53b0: $21 $09 $df
    ld d, $00                                     ; $53b3: $16 $00
    ld e, a                                       ; $53b5: $5f
    add hl, de                                    ; $53b6: $19
    ld a, [hl]                                    ; $53b7: $7e
    jr nz, jr_00f_53bf                            ; $53b8: $20 $05

    and $f2                                       ; $53ba: $e6 $f2
    ld [hl], a                                    ; $53bc: $77
    jr jr_00f_53c6                                ; $53bd: $18 $07

jr_00f_53bf:
    and $ea                                       ; $53bf: $e6 $ea
    ld [hl], a                                    ; $53c1: $77
    ld a, e                                       ; $53c2: $7b
    add $03                                       ; $53c3: $c6 $03
    ld e, a                                       ; $53c5: $5f

jr_00f_53c6:
    sla e                                         ; $53c6: $cb $23
    ld hl, $df34                                  ; $53c8: $21 $34 $df
    add hl, de                                    ; $53cb: $19
    ld a, c                                       ; $53cc: $79
    ld [hl+], a                                   ; $53cd: $22
    ld [hl], b                                    ; $53ce: $70
    pop bc                                        ; $53cf: $c1
    ld hl, $df40                                  ; $53d0: $21 $40 $df
    add hl, de                                    ; $53d3: $19
    ld a, c                                       ; $53d4: $79
    ld [hl+], a                                   ; $53d5: $22
    ld [hl], b                                    ; $53d6: $70
    ld hl, $df4c                                  ; $53d7: $21 $4c $df
    add hl, de                                    ; $53da: $19
    xor a                                         ; $53db: $af
    ld [hl+], a                                   ; $53dc: $22
    ld [hl], a                                    ; $53dd: $77
    pop af                                        ; $53de: $f1
    ld e, a                                       ; $53df: $5f
    ld hl, $df09                                  ; $53e0: $21 $09 $df
    add hl, de                                    ; $53e3: $19
    jr nz, jr_00f_53e9                            ; $53e4: $20 $03

    set 3, [hl]                                   ; $53e6: $cb $de
    ret                                           ; $53e8: $c9


jr_00f_53e9:
    set 4, [hl]                                   ; $53e9: $cb $e6
    ret                                           ; $53eb: $c9


Call_00f_53ec:
    ld bc, $0003                                  ; $53ec: $01 $03 $00
    ld hl, $df0b                                  ; $53ef: $21 $0b $df

jr_00f_53f2:
    bit 2, [hl]                                   ; $53f2: $cb $56
    jr nz, jr_00f_5409                            ; $53f4: $20 $13

    bit 0, [hl]                                   ; $53f6: $cb $46
    jr nz, jr_00f_5446                            ; $53f8: $20 $4c

    bit 3, [hl]                                   ; $53fa: $cb $5e
    jp nz, Jump_00f_548b                          ; $53fc: $c2 $8b $54

Jump_00f_53ff:
    bit 4, [hl]                                   ; $53ff: $cb $66
    jp nz, Jump_00f_54a4                          ; $5401: $c2 $a4 $54

Jump_00f_5404:
jr_00f_5404:
    dec hl                                        ; $5404: $2b
    dec c                                         ; $5405: $0d
    jr nz, jr_00f_53f2                            ; $5406: $20 $ea

    ret                                           ; $5408: $c9


jr_00f_5409:
    push bc                                       ; $5409: $c5
    push hl                                       ; $540a: $e5
    dec c                                         ; $540b: $0d
    sla c                                         ; $540c: $cb $21
    set 5, [hl]                                   ; $540e: $cb $ee
    ld hl, $df3b                                  ; $5410: $21 $3b $df
    add hl, bc                                    ; $5413: $09
    ld a, [hl-]                                   ; $5414: $3a
    or [hl]                                       ; $5415: $b6
    jr nz, jr_00f_542a                            ; $5416: $20 $12

    ld hl, $df46                                  ; $5418: $21 $46 $df
    add hl, bc                                    ; $541b: $09
    ld a, [hl+]                                   ; $541c: $2a
    ld d, [hl]                                    ; $541d: $56
    ld hl, $df15                                  ; $541e: $21 $15 $df
    add hl, bc                                    ; $5421: $09
    ld [hl+], a                                   ; $5422: $22
    ld [hl], d                                    ; $5423: $72
    pop hl                                        ; $5424: $e1
    pop bc                                        ; $5425: $c1
    res 2, [hl]                                   ; $5426: $cb $96
    jr jr_00f_5404                                ; $5428: $18 $da

jr_00f_542a:
    dec [hl]                                      ; $542a: $35
    ld a, [hl+]                                   ; $542b: $2a
    cp $ff                                        ; $542c: $fe $ff
    jr nz, jr_00f_5431                            ; $542e: $20 $01

    dec [hl]                                      ; $5430: $35

jr_00f_5431:
    ld hl, $df34                                  ; $5431: $21 $34 $df
    add hl, bc                                    ; $5434: $09
    ld a, [hl+]                                   ; $5435: $2a
    ld d, [hl]                                    ; $5436: $56
    ld e, a                                       ; $5437: $5f
    ld hl, $df15                                  ; $5438: $21 $15 $df
    add hl, bc                                    ; $543b: $09
    ld a, [hl]                                    ; $543c: $7e
    add e                                         ; $543d: $83
    ld [hl+], a                                   ; $543e: $22
    ld a, [hl]                                    ; $543f: $7e
    adc d                                         ; $5440: $8a
    ld [hl], a                                    ; $5441: $77
    pop hl                                        ; $5442: $e1
    pop bc                                        ; $5443: $c1
    jr jr_00f_5404                                ; $5444: $18 $be

jr_00f_5446:
    push bc                                       ; $5446: $c5
    push hl                                       ; $5447: $e5
    set 5, [hl]                                   ; $5448: $cb $ee
    dec c                                         ; $544a: $0d
    sla c                                         ; $544b: $cb $21
    ld hl, $df34                                  ; $544d: $21 $34 $df
    add hl, bc                                    ; $5450: $09
    ld a, [hl+]                                   ; $5451: $2a
    ld d, [hl]                                    ; $5452: $56
    ld e, a                                       ; $5453: $5f
    ld hl, $df46                                  ; $5454: $21 $46 $df
    add hl, bc                                    ; $5457: $09
    ld a, [hl]                                    ; $5458: $7e
    add e                                         ; $5459: $83
    ld [hl+], a                                   ; $545a: $22
    ld a, [hl]                                    ; $545b: $7e
    adc d                                         ; $545c: $8a
    ld [hl-], a                                   ; $545d: $32
    ld d, a                                       ; $545e: $57
    ld a, [hl]                                    ; $545f: $7e
    ld hl, $df1d                                  ; $5460: $21 $1d $df
    add hl, bc                                    ; $5463: $09
    add [hl]                                      ; $5464: $86
    ld [hl+], a                                   ; $5465: $22
    ld a, [hl]                                    ; $5466: $7e
    adc d                                         ; $5467: $8a
    ld [hl], a                                    ; $5468: $77
    ld hl, $df3a                                  ; $5469: $21 $3a $df
    add hl, bc                                    ; $546c: $09
    dec [hl]                                      ; $546d: $35
    jr nz, jr_00f_5486                            ; $546e: $20 $16

    ld e, l                                       ; $5470: $5d
    ld d, h                                       ; $5471: $54
    ld hl, $df40                                  ; $5472: $21 $40 $df
    add hl, bc                                    ; $5475: $09
    ld a, [hl]                                    ; $5476: $7e
    ld [de], a                                    ; $5477: $12
    ld hl, $df34                                  ; $5478: $21 $34 $df
    add hl, bc                                    ; $547b: $09
    ld a, [hl]                                    ; $547c: $7e
    cpl                                           ; $547d: $2f
    add $01                                       ; $547e: $c6 $01
    ld [hl+], a                                   ; $5480: $22
    ld a, [hl]                                    ; $5481: $7e
    cpl                                           ; $5482: $2f
    adc $00                                       ; $5483: $ce $00
    ld [hl], a                                    ; $5485: $77

jr_00f_5486:
    pop hl                                        ; $5486: $e1
    pop bc                                        ; $5487: $c1
    jp Jump_00f_5404                              ; $5488: $c3 $04 $54


Jump_00f_548b:
    push bc                                       ; $548b: $c5
    push hl                                       ; $548c: $e5
    dec c                                         ; $548d: $0d
    sla c                                         ; $548e: $cb $21
    call Call_00f_54c4                            ; $5490: $cd $c4 $54
    ld hl, $df1d                                  ; $5493: $21 $1d $df
    add hl, bc                                    ; $5496: $09
    ld a, [hl]                                    ; $5497: $7e
    add e                                         ; $5498: $83
    ld [hl+], a                                   ; $5499: $22
    ld a, [hl]                                    ; $549a: $7e
    adc d                                         ; $549b: $8a
    ld [hl], a                                    ; $549c: $77
    pop hl                                        ; $549d: $e1
    pop bc                                        ; $549e: $c1
    set 5, [hl]                                   ; $549f: $cb $ee
    jp Jump_00f_53ff                              ; $54a1: $c3 $ff $53


Jump_00f_54a4:
    push bc                                       ; $54a4: $c5
    push hl                                       ; $54a5: $e5
    ld a, c                                       ; $54a6: $79
    add $03                                       ; $54a7: $c6 $03
    sla a                                         ; $54a9: $cb $27
    ld c, a                                       ; $54ab: $4f
    call Call_00f_54c4                            ; $54ac: $cd $c4 $54
    ld a, c                                       ; $54af: $79
    sub $06                                       ; $54b0: $d6 $06
    ld c, a                                       ; $54b2: $4f
    ld hl, $df1d                                  ; $54b3: $21 $1d $df
    add hl, bc                                    ; $54b6: $09
    ld a, [hl]                                    ; $54b7: $7e
    add e                                         ; $54b8: $83
    ld [hl+], a                                   ; $54b9: $22
    ld a, [hl]                                    ; $54ba: $7e
    adc d                                         ; $54bb: $8a
    ld [hl], a                                    ; $54bc: $77
    pop hl                                        ; $54bd: $e1
    pop bc                                        ; $54be: $c1
    set 5, [hl]                                   ; $54bf: $cb $ee
    jp Jump_00f_5404                              ; $54c1: $c3 $04 $54


Call_00f_54c4:
    ld hl, $df34                                  ; $54c4: $21 $34 $df
    add hl, bc                                    ; $54c7: $09
    ld a, [hl+]                                   ; $54c8: $2a
    ld d, [hl]                                    ; $54c9: $56
    ld e, a                                       ; $54ca: $5f
    ld hl, $df4c                                  ; $54cb: $21 $4c $df
    add hl, bc                                    ; $54ce: $09
    ld a, [hl]                                    ; $54cf: $7e
    add e                                         ; $54d0: $83
    ld [hl+], a                                   ; $54d1: $22
    ld e, a                                       ; $54d2: $5f
    ld a, [hl]                                    ; $54d3: $7e
    adc d                                         ; $54d4: $8a
    ld [hl], a                                    ; $54d5: $77
    ld d, a                                       ; $54d6: $57
    ld hl, $df40                                  ; $54d7: $21 $40 $df
    add hl, bc                                    ; $54da: $09
    ld a, [hl+]                                   ; $54db: $2a
    ld h, [hl]                                    ; $54dc: $66
    ld l, a                                       ; $54dd: $6f
    bit 7, h                                      ; $54de: $cb $7c
    jr nz, jr_00f_54f2                            ; $54e0: $20 $10

    call Call_00f_4198                            ; $54e2: $cd $98 $41
    ret nc                                        ; $54e5: $d0

jr_00f_54e6:
    ld a, e                                       ; $54e6: $7b
    sub l                                         ; $54e7: $95
    ld e, a                                       ; $54e8: $5f
    ld a, d                                       ; $54e9: $7a
    sbc h                                         ; $54ea: $9c
    ld hl, $df4d                                  ; $54eb: $21 $4d $df
    add hl, bc                                    ; $54ee: $09
    ld [hl-], a                                   ; $54ef: $32
    ld [hl], e                                    ; $54f0: $73
    ret                                           ; $54f1: $c9


jr_00f_54f2:
    dec hl                                        ; $54f2: $2b
    call Call_00f_4198                            ; $54f3: $cd $98 $41
    ret c                                         ; $54f6: $d8

    inc hl                                        ; $54f7: $23
    jr jr_00f_54e6                                ; $54f8: $18 $ec

Call_00f_54fa:
    ld a, [hl+]                                   ; $54fa: $2a
    ld e, a                                       ; $54fb: $5f
    ld a, [hl+]                                   ; $54fc: $2a
    ld d, a                                       ; $54fd: $57
    push de                                       ; $54fe: $d5
    ld e, l                                       ; $54ff: $5d
    ld d, h                                       ; $5500: $54
    ld b, $00                                     ; $5501: $06 $00
    sla c                                         ; $5503: $cb $21
    ld hl, $df58                                  ; $5505: $21 $58 $df
    add hl, bc                                    ; $5508: $09
    ld a, e                                       ; $5509: $7b
    ld [hl+], a                                   ; $550a: $22
    ld [hl], d                                    ; $550b: $72
    pop de                                        ; $550c: $d1
    ld hl, $df68                                  ; $550d: $21 $68 $df
    add hl, bc                                    ; $5510: $09
    ld a, e                                       ; $5511: $7b
    ld [hl+], a                                   ; $5512: $22
    ld [hl], d                                    ; $5513: $72
    ld hl, $df60                                  ; $5514: $21 $60 $df
    xor a                                         ; $5517: $af
    ld [hl+], a                                   ; $5518: $22
    ld [hl], a                                    ; $5519: $77
    srl c                                         ; $551a: $cb $39
    ld hl, $df70                                  ; $551c: $21 $70 $df
    add hl, bc                                    ; $551f: $09
    ld [hl], a                                    ; $5520: $77
    ld hl, $df0d                                  ; $5521: $21 $0d $df
    add hl, bc                                    ; $5524: $09
    ld a, [hl]                                    ; $5525: $7e
    and $f0                                       ; $5526: $e6 $f0
    or $21                                        ; $5528: $f6 $21
    ld [hl], a                                    ; $552a: $77
    ret                                           ; $552b: $c9


Call_00f_552c:
    ld de, $0004                                  ; $552c: $11 $04 $00
    ld hl, $df10                                  ; $552f: $21 $10 $df

jr_00f_5532:
    ld a, [hl]                                    ; $5532: $7e
    and $0b                                       ; $5533: $e6 $0b
    jr nz, jr_00f_553c                            ; $5535: $20 $05

Jump_00f_5537:
jr_00f_5537:
    dec hl                                        ; $5537: $2b
    dec e                                         ; $5538: $1d
    jr nz, jr_00f_5532                            ; $5539: $20 $f7

    ret                                           ; $553b: $c9


jr_00f_553c:
    push hl                                       ; $553c: $e5
    push de                                       ; $553d: $d5
    dec e                                         ; $553e: $1d
    sla e                                         ; $553f: $cb $23
    bit 1, a                                      ; $5541: $cb $4f
    jr nz, jr_00f_55bd                            ; $5543: $20 $78

    bit 3, a                                      ; $5545: $cb $5f
    jp nz, Jump_00f_5601                          ; $5547: $c2 $01 $56

    ld hl, $df61                                  ; $554a: $21 $61 $df
    add hl, de                                    ; $554d: $19
    ld a, [hl]                                    ; $554e: $7e
    cp $0f                                        ; $554f: $fe $0f
    jr nc, jr_00f_5577                            ; $5551: $30 $24

jr_00f_5553:
    ld hl, $df68                                  ; $5553: $21 $68 $df
    add hl, de                                    ; $5556: $19
    ld a, [hl+]                                   ; $5557: $2a
    ld b, [hl]                                    ; $5558: $46
    ld hl, $df60                                  ; $5559: $21 $60 $df
    add hl, de                                    ; $555c: $19
    add [hl]                                      ; $555d: $86
    ld [hl+], a                                   ; $555e: $22
    ld a, [hl]                                    ; $555f: $7e
    adc b                                         ; $5560: $88
    ld [hl], a                                    ; $5561: $77
    srl e                                         ; $5562: $cb $3b
    ld hl, $df70                                  ; $5564: $21 $70 $df
    add hl, de                                    ; $5567: $19
    ld c, [hl]                                    ; $5568: $4e
    ld [hl], a                                    ; $5569: $77
    cp c                                          ; $556a: $b9
    jr z, jr_00f_5573                             ; $556b: $28 $06

    pop de                                        ; $556d: $d1
    pop hl                                        ; $556e: $e1
    set 5, [hl]                                   ; $556f: $cb $ee
    jr jr_00f_5537                                ; $5571: $18 $c4

jr_00f_5573:
    pop de                                        ; $5573: $d1
    pop hl                                        ; $5574: $e1
    jr jr_00f_5537                                ; $5575: $18 $c0

jr_00f_5577:
    ld a, $0f                                     ; $5577: $3e $0f
    ld [hl-], a                                   ; $5579: $32
    ld [hl], $00                                  ; $557a: $36 $00
    srl e                                         ; $557c: $cb $3b
    ld hl, $df70                                  ; $557e: $21 $70 $df
    add hl, de                                    ; $5581: $19
    ld a, [hl]                                    ; $5582: $7e
    ld [hl], $0f                                  ; $5583: $36 $0f
    ld hl, $df0d                                  ; $5585: $21 $0d $df
    add hl, de                                    ; $5588: $19
    cp $0f                                        ; $5589: $fe $0f
    jr z, jr_00f_558f                             ; $558b: $28 $02

    set 5, [hl]                                   ; $558d: $cb $ee

jr_00f_558f:
    ld a, [hl]                                    ; $558f: $7e
    and $f0                                       ; $5590: $e6 $f0
    bit 4, a                                      ; $5592: $cb $67
    jr z, jr_00f_559d                             ; $5594: $28 $07

    res 4, a                                      ; $5596: $cb $a7
    ld [hl], a                                    ; $5598: $77
    pop de                                        ; $5599: $d1
    pop hl                                        ; $559a: $e1
    jr jr_00f_5537                                ; $559b: $18 $9a

jr_00f_559d:
    or $02                                        ; $559d: $f6 $02
    ld [hl], a                                    ; $559f: $77
    sla e                                         ; $55a0: $cb $23
    ld hl, $df58                                  ; $55a2: $21 $58 $df
    add hl, de                                    ; $55a5: $19
    ld a, [hl+]                                   ; $55a6: $2a
    ld h, [hl]                                    ; $55a7: $66
    ld l, a                                       ; $55a8: $6f
    ld a, [hl+]                                   ; $55a9: $2a
    ld b, [hl]                                    ; $55aa: $46
    ld hl, $df68                                  ; $55ab: $21 $68 $df
    add hl, de                                    ; $55ae: $19
    ld [hl+], a                                   ; $55af: $22
    ld [hl], b                                    ; $55b0: $70
    ld hl, $df58                                  ; $55b1: $21 $58 $df
    add hl, de                                    ; $55b4: $19
    ld a, [hl]                                    ; $55b5: $7e
    add $02                                       ; $55b6: $c6 $02
    ld [hl+], a                                   ; $55b8: $22
    ld a, [hl]                                    ; $55b9: $7e
    adc $00                                       ; $55ba: $ce $00
    ld [hl], a                                    ; $55bc: $77

jr_00f_55bd:
    ld hl, $df58                                  ; $55bd: $21 $58 $df
    add hl, de                                    ; $55c0: $19
    ld a, [hl+]                                   ; $55c1: $2a
    ld h, [hl]                                    ; $55c2: $66
    ld l, a                                       ; $55c3: $6f
    ld a, [hl]                                    ; $55c4: $7e
    ld hl, $df61                                  ; $55c5: $21 $61 $df
    add hl, de                                    ; $55c8: $19
    ld b, [hl]                                    ; $55c9: $46
    bit 7, b                                      ; $55ca: $cb $78
    jr nz, jr_00f_55d1                            ; $55cc: $20 $03

    cp b                                          ; $55ce: $b8
    jr c, jr_00f_5553                             ; $55cf: $38 $82

jr_00f_55d1:
    ld [hl-], a                                   ; $55d1: $32
    ld [hl], $00                                  ; $55d2: $36 $00
    ld c, a                                       ; $55d4: $4f
    ld hl, $df58                                  ; $55d5: $21 $58 $df
    add hl, de                                    ; $55d8: $19
    ld a, [hl+]                                   ; $55d9: $2a
    ld h, [hl]                                    ; $55da: $66
    ld l, a                                       ; $55db: $6f
    inc hl                                        ; $55dc: $23
    ld a, [hl+]                                   ; $55dd: $2a
    ld b, [hl]                                    ; $55de: $46
    ld hl, $df68                                  ; $55df: $21 $68 $df
    add hl, de                                    ; $55e2: $19
    ld [hl+], a                                   ; $55e3: $22
    ld [hl], b                                    ; $55e4: $70
    srl e                                         ; $55e5: $cb $3b
    ld hl, $df70                                  ; $55e7: $21 $70 $df
    add hl, de                                    ; $55ea: $19
    ld a, [hl]                                    ; $55eb: $7e
    ld [hl], c                                    ; $55ec: $71
    ld hl, $df0d                                  ; $55ed: $21 $0d $df
    add hl, de                                    ; $55f0: $19
    cp c                                          ; $55f1: $b9
    jr z, jr_00f_55f6                             ; $55f2: $28 $02

    set 5, [hl]                                   ; $55f4: $cb $ee

jr_00f_55f6:
    ld a, [hl]                                    ; $55f6: $7e
    and $f0                                       ; $55f7: $e6 $f0
    or $04                                        ; $55f9: $f6 $04
    ld [hl], a                                    ; $55fb: $77

jr_00f_55fc:
    pop de                                        ; $55fc: $d1
    pop hl                                        ; $55fd: $e1
    jp Jump_00f_5537                              ; $55fe: $c3 $37 $55


Jump_00f_5601:
    ld hl, $df68                                  ; $5601: $21 $68 $df
    add hl, de                                    ; $5604: $19
    ld a, [hl+]                                   ; $5605: $2a
    ld b, [hl]                                    ; $5606: $46
    ld c, a                                       ; $5607: $4f
    ld hl, $df60                                  ; $5608: $21 $60 $df
    add hl, de                                    ; $560b: $19
    ld a, [hl]                                    ; $560c: $7e
    add c                                         ; $560d: $81
    ld [hl+], a                                   ; $560e: $22
    ld c, a                                       ; $560f: $4f
    ld a, [hl]                                    ; $5610: $7e
    adc b                                         ; $5611: $88
    ld [hl], a                                    ; $5612: $77
    ld b, a                                       ; $5613: $47
    srl e                                         ; $5614: $cb $3b
    ld hl, $df70                                  ; $5616: $21 $70 $df
    add hl, de                                    ; $5619: $19
    bit 7, a                                      ; $561a: $cb $7f
    jr nz, jr_00f_562d                            ; $561c: $20 $0f

    or c                                          ; $561e: $b1
    jr z, jr_00f_562d                             ; $561f: $28 $0c

    ld a, [hl]                                    ; $5621: $7e
    ld [hl], b                                    ; $5622: $70
    cp b                                          ; $5623: $b8
    jr z, jr_00f_55fc                             ; $5624: $28 $d6

    pop de                                        ; $5626: $d1
    pop hl                                        ; $5627: $e1
    set 5, [hl]                                   ; $5628: $cb $ee
    jp Jump_00f_5537                              ; $562a: $c3 $37 $55


jr_00f_562d:
    ld c, [hl]                                    ; $562d: $4e
    ld [hl], $00                                  ; $562e: $36 $00
    pop de                                        ; $5630: $d1
    pop hl                                        ; $5631: $e1
    ld a, [hl]                                    ; $5632: $7e
    and $f0                                       ; $5633: $e6 $f0
    ld [hl], a                                    ; $5635: $77
    ld a, c                                       ; $5636: $79
    and a                                         ; $5637: $a7
    jp z, Jump_00f_5537                           ; $5638: $ca $37 $55

    set 5, [hl]                                   ; $563b: $cb $ee
    jp Jump_00f_5537                              ; $563d: $c3 $37 $55


Call_00f_5640:
    swap a                                        ; $5640: $cb $37
    or e                                          ; $5642: $b3
    srl a                                         ; $5643: $cb $3f
    ld e, a                                       ; $5645: $5f
    ld d, $00                                     ; $5646: $16 $00
    ld hl, $5659                                  ; $5648: $21 $59 $56
    jr c, jr_00f_5654                             ; $564b: $38 $07

    add hl, de                                    ; $564d: $19
    ld a, [hl]                                    ; $564e: $7e
    swap a                                        ; $564f: $cb $37
    and $0f                                       ; $5651: $e6 $0f
    ret                                           ; $5653: $c9


jr_00f_5654:
    add hl, de                                    ; $5654: $19
    ld a, [hl]                                    ; $5655: $7e
    and $0f                                       ; $5656: $e6 $0f
    ret                                           ; $5658: $c9


    nop                                           ; $5659: $00
    nop                                           ; $565a: $00
    nop                                           ; $565b: $00
    nop                                           ; $565c: $00
    nop                                           ; $565d: $00

    db $00, $00, $00

    nop                                           ; $5661: $00
    nop                                           ; $5662: $00
    nop                                           ; $5663: $00
    nop                                           ; $5664: $00
    ld bc, $1111                                  ; $5665: $01 $11 $11

    db $11

    nop                                           ; $5669: $00
    nop                                           ; $566a: $00
    ld bc, $1111                                  ; $566b: $01 $11 $11
    db $11                                        ; $566e: $11
    ld [hl+], a                                   ; $566f: $22

    db $22

    nop                                           ; $5671: $00
    ld bc, $1111                                  ; $5672: $01 $11 $11
    ld [hl+], a                                   ; $5675: $22
    ld [hl+], a                                   ; $5676: $22
    inc sp                                        ; $5677: $33

    db $33

    nop                                           ; $5679: $00
    ld bc, $2211                                  ; $567a: $01 $11 $22
    ld [hl+], a                                   ; $567d: $22
    inc sp                                        ; $567e: $33
    inc sp                                        ; $567f: $33

    db $44

    nop                                           ; $5681: $00
    ld de, $2212                                  ; $5682: $11 $12 $22
    inc sp                                        ; $5685: $33
    inc [hl]                                      ; $5686: $34
    ld b, h                                       ; $5687: $44

    db $55, $00, $11, $22, $23, $34, $44

    ld d, l                                       ; $568f: $55

    db $66

    nop                                           ; $5691: $00
    ld de, $3322                                  ; $5692: $11 $22 $33
    ld b, h                                       ; $5695: $44
    ld d, l                                       ; $5696: $55
    ld h, [hl]                                    ; $5697: $66

    db $77, $01, $12, $23, $34, $45, $56, $77, $78, $01, $12, $23, $44, $55, $67, $78
    db $89

    db $01                                        ; $56a9: $01

    db $12

    inc sp                                        ; $56ab: $33

    db $45

    ld d, [hl]                                    ; $56ad: $56

    db $77

    adc c                                         ; $56af: $89

    db $9a

    ld bc, $3422                                  ; $56b1: $01 $22 $34
    ld b, l                                       ; $56b4: $45
    ld h, a                                       ; $56b5: $67
    ld a, b                                       ; $56b6: $78
    sbc d                                         ; $56b7: $9a

    db $ab

    ld bc, $3422                                  ; $56b9: $01 $22 $34
    ld d, [hl]                                    ; $56bc: $56
    ld h, a                                       ; $56bd: $67
    adc c                                         ; $56be: $89
    xor d                                         ; $56bf: $aa

    db $bc

    ld bc, $3423                                  ; $56c1: $01 $23 $34
    ld d, [hl]                                    ; $56c4: $56
    ld a, b                                       ; $56c5: $78
    sbc d                                         ; $56c6: $9a
    xor e                                         ; $56c7: $ab

    db $cd

    ld bc, $4523                                  ; $56c9: $01 $23 $45
    ld h, a                                       ; $56cc: $67
    ld a, b                                       ; $56cd: $78
    sbc d                                         ; $56ce: $9a
    cp h                                          ; $56cf: $bc

    db $de, $01, $23, $45, $67, $89, $ab, $cd, $ef

Call_00f_56d9:
    ld hl, $df78                                  ; $56d9: $21 $78 $df
    ld a, [hl]                                    ; $56dc: $7e
    sub $01                                       ; $56dd: $d6 $01
    ld [hl+], a                                   ; $56df: $22
    ld c, a                                       ; $56e0: $4f
    ld a, [hl]                                    ; $56e1: $7e
    sbc $00                                       ; $56e2: $de $00
    ld [hl], a                                    ; $56e4: $77
    or c                                          ; $56e5: $b1
    jr z, jr_00f_5706                             ; $56e6: $28 $1e

    ld hl, $df76                                  ; $56e8: $21 $76 $df
    ld a, [hl+]                                   ; $56eb: $2a
    ld h, [hl]                                    ; $56ec: $66
    ld l, a                                       ; $56ed: $6f
    call Call_000_3bf4                            ; $56ee: $cd $f4 $3b
    bit 7, h                                      ; $56f1: $cb $7c
    jr z, jr_00f_56fe                             ; $56f3: $28 $09

    ld h, $40                                     ; $56f5: $26 $40
    ld a, [$df75]                                 ; $56f7: $fa $75 $df
    inc a                                         ; $56fa: $3c
    ld [$df75], a                                 ; $56fb: $ea $75 $df

jr_00f_56fe:
    ld a, l                                       ; $56fe: $7d
    ld b, h                                       ; $56ff: $44
    ld hl, $df76                                  ; $5700: $21 $76 $df
    ld [hl+], a                                   ; $5703: $22
    ld [hl], b                                    ; $5704: $70
    ret                                           ; $5705: $c9


jr_00f_5706:
    ld hl, $df74                                  ; $5706: $21 $74 $df
    res 7, [hl]                                   ; $5709: $cb $be
    ld c, $02                                     ; $570b: $0e $02
    jp Jump_00f_505a                              ; $570d: $c3 $5a $50


    ld hl, $5a95                                  ; $5710: $21 $95 $5a
    cp [hl]                                       ; $5713: $be
    ret nc                                        ; $5714: $d0

    ld d, $00                                     ; $5715: $16 $00
    ld e, a                                       ; $5717: $5f
    ld h, $00                                     ; $5718: $26 $00
    ld l, a                                       ; $571a: $6f
    sla l                                         ; $571b: $cb $25
    rl h                                          ; $571d: $cb $14
    add hl, de                                    ; $571f: $19
    ld e, l                                       ; $5720: $5d
    ld d, h                                       ; $5721: $54
    ld hl, $5a93                                  ; $5722: $21 $93 $5a
    ld a, [hl+]                                   ; $5725: $2a
    ld b, [hl]                                    ; $5726: $46
    ld c, a                                       ; $5727: $4f
    ld hl, $5a87                                  ; $5728: $21 $87 $5a
    add hl, bc                                    ; $572b: $09
    add hl, de                                    ; $572c: $19
    ld a, [hl+]                                   ; $572d: $2a
    ld b, a                                       ; $572e: $47
    ld a, [hl+]                                   ; $572f: $2a
    ld h, [hl]                                    ; $5730: $66
    ld l, a                                       ; $5731: $6f
    ld a, [$df00]                                 ; $5732: $fa $00 $df
    add b                                         ; $5735: $80
    ld bc, $0084                                  ; $5736: $01 $84 $00
    add hl, bc                                    ; $5739: $09
    ld [$dfa9], a                                 ; $573a: $ea $a9 $df
    ld a, h                                       ; $573d: $7c
    ld [$dfa8], a                                 ; $573e: $ea $a8 $df
    ld a, l                                       ; $5741: $7d
    ld [$dfa7], a                                 ; $5742: $ea $a7 $df
    xor a                                         ; $5745: $af
    ld [$dfa6], a                                 ; $5746: $ea $a6 $df
    ld hl, $dfb3                                  ; $5749: $21 $b3 $df
    ld bc, $0045                                  ; $574c: $01 $45 $00

jr_00f_574f:
    xor a                                         ; $574f: $af
    ld [hl+], a                                   ; $5750: $22
    dec bc                                        ; $5751: $0b
    ld a, c                                       ; $5752: $79
    or b                                          ; $5753: $b0
    jr nz, jr_00f_574f                            ; $5754: $20 $f9

    call Call_00f_578d                            ; $5756: $cd $8d $57
    call Call_000_3d6d                            ; $5759: $cd $6d $3d
    ld a, $e4                                     ; $575c: $3e $e4
    ld [$dfac], a                                 ; $575e: $ea $ac $df
    ld hl, $dfa6                                  ; $5761: $21 $a6 $df
    set 7, [hl]                                   ; $5764: $cb $fe
    ret                                           ; $5766: $c9


    ld a, [$dfa6]                                 ; $5767: $fa $a6 $df
    and $0f                                       ; $576a: $e6 $0f
    jr nz, jr_00f_5776                            ; $576c: $20 $08

    ld a, [$dfd3]                                 ; $576e: $fa $d3 $df
    and a                                         ; $5771: $a7
    jr nz, jr_00f_5776                            ; $5772: $20 $02

    xor a                                         ; $5774: $af
    ret                                           ; $5775: $c9


jr_00f_5776:
    ld a, $01                                     ; $5776: $3e $01
    ret                                           ; $5778: $c9


    ld a, c                                       ; $5779: $79
    or b                                          ; $577a: $b0
    jr z, jr_00f_578d                             ; $577b: $28 $10

    ld hl, $dfaa                                  ; $577d: $21 $aa $df
    ld a, [hl+]                                   ; $5780: $2a
    ld h, [hl]                                    ; $5781: $66
    ld l, a                                       ; $5782: $6f
    call Call_00f_4041                            ; $5783: $cd $41 $40
    ld a, h                                       ; $5786: $7c
    ld hl, $dfaa                                  ; $5787: $21 $aa $df
    ld [hl+], a                                   ; $578a: $22
    ld [hl], c                                    ; $578b: $71
    ret                                           ; $578c: $c9


Call_00f_578d:
jr_00f_578d:
    call Call_000_3d52                            ; $578d: $cd $52 $3d
    ld c, l                                       ; $5790: $4d
    ld b, h                                       ; $5791: $44
    ld a, $66                                     ; $5792: $3e $66
    call Call_00f_4002                            ; $5794: $cd $02 $40
    ld bc, $003c                                  ; $5797: $01 $3c $00
    call Call_00f_40aa                            ; $579a: $cd $aa $40
    ld a, l                                       ; $579d: $7d
    ld [$dfaa], a                                 ; $579e: $ea $aa $df
    ld a, h                                       ; $57a1: $7c
    ld [$dfab], a                                 ; $57a2: $ea $ab $df
    ret                                           ; $57a5: $c9


    ld hl, $dfa6                                  ; $57a6: $21 $a6 $df
    bit 7, [hl]                                   ; $57a9: $cb $7e
    ret z                                         ; $57ab: $c8

    set 4, [hl]                                   ; $57ac: $cb $e6

    ld hl, $dfa6                                  ; $57ae: $21 $a6 $df
    res 7, [hl]                                   ; $57b1: $cb $be
    ld hl, $df09                                  ; $57b3: $21 $09 $df
    xor a                                         ; $57b6: $af

jr_00f_57b7:
    bit 1, [hl]                                   ; $57b7: $cb $4e
    inc hl                                        ; $57b9: $23
    call z, Call_00f_57c3                         ; $57ba: $cc $c3 $57
    inc a                                         ; $57bd: $3c
    cp $04                                        ; $57be: $fe $04
    jr nz, jr_00f_57b7                            ; $57c0: $20 $f5

    ret                                           ; $57c2: $c9


Call_00f_57c3:
    push af                                       ; $57c3: $f5
    push hl                                       ; $57c4: $e5
    ld [$df9c], a                                 ; $57c5: $ea $9c $df
    ld c, a                                       ; $57c8: $4f
    ld b, $00                                     ; $57c9: $06 $00
    sla c                                         ; $57cb: $cb $21
    ld hl, $df7e                                  ; $57cd: $21 $7e $df
    add hl, bc                                    ; $57d0: $09
    xor a                                         ; $57d1: $af
    ld [hl+], a                                   ; $57d2: $22
    ld [hl], a                                    ; $57d3: $77
    call Call_00f_48df                            ; $57d4: $cd $df $48
    call Call_00f_4712                            ; $57d7: $cd $12 $47
    pop hl                                        ; $57da: $e1
    pop af                                        ; $57db: $f1
    ret                                           ; $57dc: $c9


    xor a                                         ; $57dd: $af
    ld hl, $dfa6                                  ; $57de: $21 $a6 $df
    bit 4, [hl]                                   ; $57e1: $cb $66
    ret z                                         ; $57e3: $c8

    res 4, [hl]                                   ; $57e4: $cb $a6
    set 7, [hl]                                   ; $57e6: $cb $fe
    ld a, $01                                     ; $57e8: $3e $01
    ret                                           ; $57ea: $c9


    ld a, $52                                     ; $57eb: $3e $52
    ret                                           ; $57ed: $c9


    ld a, $52                                     ; $57ee: $3e $52
    cp c                                          ; $57f0: $b9
    ret nz                                        ; $57f1: $c0

    ld de, $dfa6                                  ; $57f2: $11 $a6 $df

jr_00f_57f5:
    ld a, [de]                                    ; $57f5: $1a
    inc de                                        ; $57f6: $13
    ld [hl+], a                                   ; $57f7: $22
    dec c                                         ; $57f8: $0d
    jr nz, jr_00f_57f5                            ; $57f9: $20 $fa

    ret                                           ; $57fb: $c9


    ld a, $52                                     ; $57fc: $3e $52
    cp c                                          ; $57fe: $b9
    ret nz                                        ; $57ff: $c0

    ld de, $dfa6                                  ; $5800: $11 $a6 $df

jr_00f_5803:
    ld a, [hl+]                                   ; $5803: $2a
    ld [de], a                                    ; $5804: $12
    inc de                                        ; $5805: $13
    dec c                                         ; $5806: $0d
    jr nz, jr_00f_5803                            ; $5807: $20 $fa

    ret                                           ; $5809: $c9


Call_00f_580a:
    ld a, [$dfa6]                                 ; $580a: $fa $a6 $df
    bit 7, a                                      ; $580d: $cb $7f
    ret z                                         ; $580f: $c8

    ld a, [$dfaa]                                 ; $5810: $fa $aa $df
    ld c, a                                       ; $5813: $4f
    ld a, [$dfab]                                 ; $5814: $fa $ab $df
    ld b, a                                       ; $5817: $47
    call Call_00f_58bd                            ; $5818: $cd $bd $58
    call Call_00f_592f                            ; $581b: $cd $2f $59
    ld hl, $dfbf                                  ; $581e: $21 $bf $df
    xor a                                         ; $5821: $af

Jump_00f_5822:
    ld [$dff9], a                                 ; $5822: $ea $f9 $df
    ld de, $58b5                                  ; $5825: $11 $b5 $58
    add e                                         ; $5828: $83
    ld e, a                                       ; $5829: $5f
    ld a, d                                       ; $582a: $7a
    adc $00                                       ; $582b: $ce $00
    ld d, a                                       ; $582d: $57
    ld a, [de]                                    ; $582e: $1a
    ld e, a                                       ; $582f: $5f
    ld a, [$dfa6]                                 ; $5830: $fa $a6 $df
    and e                                         ; $5833: $a3
    jr z, jr_00f_58a7                             ; $5834: $28 $71

    ld a, [hl]                                    ; $5836: $7e
    sub c                                         ; $5837: $91
    ld [hl+], a                                   ; $5838: $22
    ld d, a                                       ; $5839: $57
    ld a, [hl]                                    ; $583a: $7e
    sbc b                                         ; $583b: $98
    ld [hl+], a                                   ; $583c: $22
    ld e, a                                       ; $583d: $5f
    ld a, [hl]                                    ; $583e: $7e
    sbc $00                                       ; $583f: $de $00
    ld [hl+], a                                   ; $5841: $22
    bit 7, a                                      ; $5842: $cb $7f
    jr nz, jr_00f_584a                            ; $5844: $20 $04

    or d                                          ; $5846: $b2
    or e                                          ; $5847: $b3
    jr nz, jr_00f_58ab                            ; $5848: $20 $61

jr_00f_584a:
    push hl                                       ; $584a: $e5
    push bc                                       ; $584b: $c5
    ld hl, $dfbb                                  ; $584c: $21 $bb $df
    ld a, [$dff9]                                 ; $584f: $fa $f9 $df
    ld c, a                                       ; $5852: $4f
    ld b, $00                                     ; $5853: $06 $00
    add hl, bc                                    ; $5855: $09
    ld a, [hl]                                    ; $5856: $7e
    cp $fe                                        ; $5857: $fe $fe
    jr z, jr_00f_586e                             ; $5859: $28 $13

    cp $ff                                        ; $585b: $fe $ff
    jr z, jr_00f_588d                             ; $585d: $28 $2e

    ld c, a                                       ; $585f: $4f
    ld a, [$dff9]                                 ; $5860: $fa $f9 $df
    call Call_00f_5978                            ; $5863: $cd $78 $59
    ld a, [$dff9]                                 ; $5866: $fa $f9 $df
    call Call_000_3e42                            ; $5869: $cd $42 $3e
    jr jr_00f_5874                                ; $586c: $18 $06

jr_00f_586e:
    ld a, [$dff9]                                 ; $586e: $fa $f9 $df
    call Call_000_3e80                            ; $5871: $cd $80 $3e

jr_00f_5874:
    pop bc                                        ; $5874: $c1
    pop hl                                        ; $5875: $e1
    ld d, h                                       ; $5876: $54
    ld e, l                                       ; $5877: $5d
    dec de                                        ; $5878: $1b
    ld a, [de]                                    ; $5879: $1a
    bit 7, a                                      ; $587a: $cb $7f
    jr nz, jr_00f_584a                            ; $587c: $20 $cc

    and a                                         ; $587e: $a7
    jr nz, jr_00f_58ab                            ; $587f: $20 $2a

    dec de                                        ; $5881: $1b
    ld a, [de]                                    ; $5882: $1a
    and a                                         ; $5883: $a7
    jr nz, jr_00f_58ab                            ; $5884: $20 $25

    dec de                                        ; $5886: $1b
    ld a, [de]                                    ; $5887: $1a
    and a                                         ; $5888: $a7
    jr nz, jr_00f_58ab                            ; $5889: $20 $20

    jr jr_00f_584a                                ; $588b: $18 $bd

jr_00f_588d:
    ld a, [$dff9]                                 ; $588d: $fa $f9 $df
    ld c, a                                       ; $5890: $4f
    ld b, $00                                     ; $5891: $06 $00
    ld hl, $58b5                                  ; $5893: $21 $b5 $58
    add hl, bc                                    ; $5896: $09
    ld a, [hl]                                    ; $5897: $7e
    cpl                                           ; $5898: $2f
    ld b, a                                       ; $5899: $47
    ld a, [$dfa6]                                 ; $589a: $fa $a6 $df
    and b                                         ; $589d: $a0
    ld [$dfa6], a                                 ; $589e: $ea $a6 $df
    jr jr_00f_58a3                                ; $58a1: $18 $00

jr_00f_58a3:
    pop bc                                        ; $58a3: $c1
    pop hl                                        ; $58a4: $e1
    jr jr_00f_58ab                                ; $58a5: $18 $04

jr_00f_58a7:
    ld de, $0003                                  ; $58a7: $11 $03 $00
    add hl, de                                    ; $58aa: $19

jr_00f_58ab:
    ld a, [$dff9]                                 ; $58ab: $fa $f9 $df
    inc a                                         ; $58ae: $3c
    cp $04                                        ; $58af: $fe $04
    jp nz, Jump_00f_5822                          ; $58b1: $c2 $22 $58

    ret                                           ; $58b4: $c9


    db $01, $02, $04, $08, $10, $20, $40, $80

Call_00f_58bd:
    xor a                                         ; $58bd: $af

jr_00f_58be:
    ld [$dff9], a                                 ; $58be: $ea $f9 $df
    ld e, a                                       ; $58c1: $5f
    ld d, $00                                     ; $58c2: $16 $00
    ld hl, $58b9                                  ; $58c4: $21 $b9 $58
    add hl, de                                    ; $58c7: $19
    ld a, [$dfd3]                                 ; $58c8: $fa $d3 $df
    and [hl]                                      ; $58cb: $a6
    jr z, jr_00f_5926                             ; $58cc: $28 $58

    push bc                                       ; $58ce: $c5
    ld a, e                                       ; $58cf: $7b
    sla e                                         ; $58d0: $cb $23
    add e                                         ; $58d2: $83
    ld e, a                                       ; $58d3: $5f
    ld hl, $dfe8                                  ; $58d4: $21 $e8 $df
    add hl, de                                    ; $58d7: $19
    ld a, [hl]                                    ; $58d8: $7e
    sub c                                         ; $58d9: $91
    ld [hl+], a                                   ; $58da: $22
    ld d, a                                       ; $58db: $57
    ld a, [hl]                                    ; $58dc: $7e
    sbc b                                         ; $58dd: $98
    ld [hl+], a                                   ; $58de: $22
    ld e, a                                       ; $58df: $5f
    ld a, [hl]                                    ; $58e0: $7e
    sbc $00                                       ; $58e1: $de $00
    ld [hl+], a                                   ; $58e3: $22
    bit 7, a                                      ; $58e4: $cb $7f
    jr nz, jr_00f_58ec                            ; $58e6: $20 $04

    or d                                          ; $58e8: $b2
    or e                                          ; $58e9: $b3
    jr nz, jr_00f_5925                            ; $58ea: $20 $39

jr_00f_58ec:
    ld a, [$dff9]                                 ; $58ec: $fa $f9 $df
    ld e, a                                       ; $58ef: $5f
    ld d, $00                                     ; $58f0: $16 $00
    ld hl, $58b9                                  ; $58f2: $21 $b9 $58
    add hl, de                                    ; $58f5: $19
    ld a, [hl]                                    ; $58f6: $7e
    cpl                                           ; $58f7: $2f
    ld c, a                                       ; $58f8: $4f
    ld a, [$dfd3]                                 ; $58f9: $fa $d3 $df
    and c                                         ; $58fc: $a1
    ld [$dfd3], a                                 ; $58fd: $ea $d3 $df
    ld a, [$dfac]                                 ; $5900: $fa $ac $df
    bit 1, e                                      ; $5903: $cb $4b
    jr z, jr_00f_5909                             ; $5905: $28 $02

    swap a                                        ; $5907: $cb $37

jr_00f_5909:
    bit 0, e                                      ; $5909: $cb $43
    jr z, jr_00f_5911                             ; $590b: $28 $04

    srl a                                         ; $590d: $cb $3f
    srl a                                         ; $590f: $cb $3f

jr_00f_5911:
    and $03                                       ; $5911: $e6 $03
    ld c, a                                       ; $5913: $4f
    ld b, $00                                     ; $5914: $06 $00
    ld hl, $df09                                  ; $5916: $21 $09 $df
    add hl, bc                                    ; $5919: $09
    bit 1, [hl]                                   ; $591a: $cb $4e
    jr nz, jr_00f_5925                            ; $591c: $20 $07

    ld a, c                                       ; $591e: $79
    ld [$df9c], a                                 ; $591f: $ea $9c $df
    call Call_00f_48df                            ; $5922: $cd $df $48

jr_00f_5925:
    pop bc                                        ; $5925: $c1

jr_00f_5926:
    ld a, [$dff9]                                 ; $5926: $fa $f9 $df
    inc a                                         ; $5929: $3c
    cp $04                                        ; $592a: $fe $04
    jr nz, jr_00f_58be                            ; $592c: $20 $90

    ret                                           ; $592e: $c9


Call_00f_592f:
    xor a                                         ; $592f: $af

jr_00f_5930:
    ld [$dff9], a                                 ; $5930: $ea $f9 $df
    ld e, a                                       ; $5933: $5f
    ld d, $00                                     ; $5934: $16 $00
    ld hl, $58b5                                  ; $5936: $21 $b5 $58
    add hl, de                                    ; $5939: $19
    ld a, [$dfd3]                                 ; $593a: $fa $d3 $df
    and [hl]                                      ; $593d: $a6
    jr z, jr_00f_596f                             ; $593e: $28 $2f

    push bc                                       ; $5940: $c5
    ld a, e                                       ; $5941: $7b
    sla e                                         ; $5942: $cb $23
    add e                                         ; $5944: $83
    ld e, a                                       ; $5945: $5f
    ld hl, $dfd4                                  ; $5946: $21 $d4 $df
    add hl, de                                    ; $5949: $19
    ld a, [hl]                                    ; $594a: $7e
    sub c                                         ; $594b: $91
    ld [hl+], a                                   ; $594c: $22
    ld d, a                                       ; $594d: $57
    ld a, [hl]                                    ; $594e: $7e
    sbc b                                         ; $594f: $98
    ld [hl+], a                                   ; $5950: $22
    ld e, a                                       ; $5951: $5f
    ld a, [hl]                                    ; $5952: $7e
    sbc $00                                       ; $5953: $de $00
    ld [hl+], a                                   ; $5955: $22
    bit 7, a                                      ; $5956: $cb $7f
    jr nz, jr_00f_595e                            ; $5958: $20 $04

    or d                                          ; $595a: $b2
    or e                                          ; $595b: $b3
    jr nz, jr_00f_596e                            ; $595c: $20 $10

jr_00f_595e:
    ld a, [$dff9]                                 ; $595e: $fa $f9 $df
    call Call_00f_59ab                            ; $5961: $cd $ab $59
    jr nz, jr_00f_596e                            ; $5964: $20 $08

    ld a, [$dff9]                                 ; $5966: $fa $f9 $df
    call Call_000_3f85                            ; $5969: $cd $85 $3f
    jr jr_00f_595e                                ; $596c: $18 $f0

jr_00f_596e:
    pop bc                                        ; $596e: $c1

jr_00f_596f:
    ld a, [$dff9]                                 ; $596f: $fa $f9 $df
    inc a                                         ; $5972: $3c
    cp $04                                        ; $5973: $fe $04
    jr nz, jr_00f_5930                            ; $5975: $20 $b9

    ret                                           ; $5977: $c9


Call_00f_5978:
    ld [$dffb], a                                 ; $5978: $ea $fb $df
    ld hl, $58b5                                  ; $597b: $21 $b5 $58
    ld e, a                                       ; $597e: $5f
    ld d, $00                                     ; $597f: $16 $00
    add hl, de                                    ; $5981: $19
    ld a, [$dfd3]                                 ; $5982: $fa $d3 $df
    or [hl]                                       ; $5985: $b6
    ld [$dfd3], a                                 ; $5986: $ea $d3 $df
    ld a, e                                       ; $5989: $7b
    sla e                                         ; $598a: $cb $23
    add e                                         ; $598c: $83
    ld e, a                                       ; $598d: $5f
    ld hl, $dfd4                                  ; $598e: $21 $d4 $df
    add hl, de                                    ; $5991: $19
    xor a                                         ; $5992: $af
    ld [hl+], a                                   ; $5993: $22
    ld [hl+], a                                   ; $5994: $22
    ld [hl], a                                    ; $5995: $77
    ld a, [$dffb]                                 ; $5996: $fa $fb $df
    call Call_000_3edc                            ; $5999: $cd $dc $3e

jr_00f_599c:
    ld a, [$dffb]                                 ; $599c: $fa $fb $df
    call Call_000_3f85                            ; $599f: $cd $85 $3f
    ld a, [$dffb]                                 ; $59a2: $fa $fb $df
    call Call_00f_59ab                            ; $59a5: $cd $ab $59
    jr z, jr_00f_599c                             ; $59a8: $28 $f2

    ret                                           ; $59aa: $c9


Call_00f_59ab:
    ld c, a                                       ; $59ab: $4f
    ld e, a                                       ; $59ac: $5f
    sla e                                         ; $59ad: $cb $23
    add e                                         ; $59af: $83
    ld e, a                                       ; $59b0: $5f
    ld d, $00                                     ; $59b1: $16 $00
    ld hl, $dfd6                                  ; $59b3: $21 $d6 $df
    add hl, de                                    ; $59b6: $19
    ld a, [hl-]                                   ; $59b7: $3a
    bit 7, a                                      ; $59b8: $cb $7f
    jr nz, jr_00f_59c3                            ; $59ba: $20 $07

    ld b, a                                       ; $59bc: $47
    ld a, [hl-]                                   ; $59bd: $3a
    or b                                          ; $59be: $b0
    ld b, a                                       ; $59bf: $47
    ld a, [hl]                                    ; $59c0: $7e
    or b                                          ; $59c1: $b0
    ret nz                                        ; $59c2: $c0

jr_00f_59c3:
    ld b, $00                                     ; $59c3: $06 $00
    push bc                                       ; $59c5: $c5
    ld a, c                                       ; $59c6: $79
    call Call_000_3f16                            ; $59c7: $cd $16 $3f
    bit 7, d                                      ; $59ca: $cb $7a
    jr z, jr_00f_59f9                             ; $59cc: $28 $2b

    bit 7, a                                      ; $59ce: $cb $7f
    jr nz, jr_00f_59e3                            ; $59d0: $20 $11

    pop bc                                        ; $59d2: $c1
    ld hl, $58b5                                  ; $59d3: $21 $b5 $58
    add hl, bc                                    ; $59d6: $09
    ld a, [hl]                                    ; $59d7: $7e
    cpl                                           ; $59d8: $2f
    ld e, a                                       ; $59d9: $5f
    ld a, [$dfd3]                                 ; $59da: $fa $d3 $df
    and e                                         ; $59dd: $a3
    ld [$dfd3], a                                 ; $59de: $ea $d3 $df
    rlca                                          ; $59e1: $07
    ret                                           ; $59e2: $c9


jr_00f_59e3:
    and $7f                                       ; $59e3: $e6 $7f
    cp $02                                        ; $59e5: $fe $02
    jr nc, jr_00f_59ee                            ; $59e7: $30 $05

    ld hl, $dfa6                                  ; $59e9: $21 $a6 $df
    res 6, [hl]                                   ; $59ec: $cb $b6

jr_00f_59ee:
    call Call_000_3fb8                            ; $59ee: $cd $b8 $3f
    ld hl, $dfad                                  ; $59f1: $21 $ad $df
    pop bc                                        ; $59f4: $c1
    add hl, bc                                    ; $59f5: $09
    ld [hl], a                                    ; $59f6: $77
    xor a                                         ; $59f7: $af
    ret                                           ; $59f8: $c9


jr_00f_59f9:
    bit 7, a                                      ; $59f9: $cb $7f
    jr z, jr_00f_5a14                             ; $59fb: $28 $17

    and $7f                                       ; $59fd: $e6 $7f
    cp $02                                        ; $59ff: $fe $02
    jr nc, jr_00f_5a08                            ; $5a01: $30 $05

    ld hl, $dfa6                                  ; $5a03: $21 $a6 $df
    res 6, [hl]                                   ; $5a06: $cb $b6

jr_00f_5a08:
    call Call_000_3fb8                            ; $5a08: $cd $b8 $3f
    pop hl                                        ; $5a0b: $e1
    push hl                                       ; $5a0c: $e5
    push bc                                       ; $5a0d: $c5
    ld bc, $dfad                                  ; $5a0e: $01 $ad $df
    add hl, bc                                    ; $5a11: $09
    ld [hl], a                                    ; $5a12: $77
    pop bc                                        ; $5a13: $c1

jr_00f_5a14:
    pop hl                                        ; $5a14: $e1
    push bc                                       ; $5a15: $c5
    ld c, l                                       ; $5a16: $4d
    ld b, h                                       ; $5a17: $44
    ld a, e                                       ; $5a18: $7b
    ld [$dffd], a                                 ; $5a19: $ea $fd $df
    ld hl, $dfe4                                  ; $5a1c: $21 $e4 $df
    add hl, bc                                    ; $5a1f: $09
    ld a, [hl]                                    ; $5a20: $7e
    ld [hl], d                                    ; $5a21: $72
    ld hl, $dfe0                                  ; $5a22: $21 $e0 $df
    add hl, bc                                    ; $5a25: $09
    ld [hl], a                                    ; $5a26: $77
    ld hl, $dfe8                                  ; $5a27: $21 $e8 $df
    pop de                                        ; $5a2a: $d1
    push bc                                       ; $5a2b: $c5
    ld a, c                                       ; $5a2c: $79
    sla c                                         ; $5a2d: $cb $21
    add c                                         ; $5a2f: $81
    ld c, a                                       ; $5a30: $4f
    add hl, bc                                    ; $5a31: $09
    xor a                                         ; $5a32: $af
    ld [hl+], a                                   ; $5a33: $22
    ld a, e                                       ; $5a34: $7b
    ld [hl+], a                                   ; $5a35: $22
    ld [hl], d                                    ; $5a36: $72
    pop bc                                        ; $5a37: $c1
    ld hl, $58b9                                  ; $5a38: $21 $b9 $58
    add hl, bc                                    ; $5a3b: $09
    ld a, [$dfd3]                                 ; $5a3c: $fa $d3 $df
    or [hl]                                       ; $5a3f: $b6
    ld [$dfd3], a                                 ; $5a40: $ea $d3 $df
    ld a, [$dff8]                                 ; $5a43: $fa $f8 $df
    and $0f                                       ; $5a46: $e6 $0f
    ld e, a                                       ; $5a48: $5f
    ld a, [$dffd]                                 ; $5a49: $fa $fd $df
    call Call_00f_5640                            ; $5a4c: $cd $40 $56
    ld e, a                                       ; $5a4f: $5f
    ld hl, $dfe4                                  ; $5a50: $21 $e4 $df
    add hl, bc                                    ; $5a53: $09
    ld d, [hl]                                    ; $5a54: $56
    ld hl, $dfad                                  ; $5a55: $21 $ad $df
    add hl, bc                                    ; $5a58: $09
    ld a, c                                       ; $5a59: $79
    ld [$dffd], a                                 ; $5a5a: $ea $fd $df
    ld a, [hl]                                    ; $5a5d: $7e
    call Call_00f_4f18                            ; $5a5e: $cd $18 $4f
    ld a, [$dffd]                                 ; $5a61: $fa $fd $df
    ld e, a                                       ; $5a64: $5f
    ld d, $00                                     ; $5a65: $16 $00
    ld hl, $5a83                                  ; $5a67: $21 $83 $5a
    add hl, de                                    ; $5a6a: $19
    ld a, [$dfac]                                 ; $5a6b: $fa $ac $df
    and [hl]                                      ; $5a6e: $a6
    bit 1, e                                      ; $5a6f: $cb $4b
    jr z, jr_00f_5a75                             ; $5a71: $28 $02

    swap c                                        ; $5a73: $cb $31

jr_00f_5a75:
    bit 0, e                                      ; $5a75: $cb $43
    jr z, jr_00f_5a7d                             ; $5a77: $28 $04

    sla c                                         ; $5a79: $cb $21
    sla c                                         ; $5a7b: $cb $21

jr_00f_5a7d:
    or c                                          ; $5a7d: $b1
    ld [$dfac], a                                 ; $5a7e: $ea $ac $df
    xor a                                         ; $5a81: $af
    ret                                           ; $5a82: $c9


    db $fc, $f3, $cf, $3f

    add hl, bc                                    ; $5a87: $09
    rrca                                          ; $5a88: $0f

    db $09, $0f, $63, $95, $10

    jr z, jr_00f_5a90                             ; $5a8e: $28 $00

jr_00f_5a90:
    nop                                           ; $5a90: $00
    nop                                           ; $5a91: $00
    nop                                           ; $5a92: $00

    db $85, $11, $2f

    ld c, $01                                     ; $5a96: $0e $01
    dec de                                        ; $5a98: $1b
    ld bc, $0128                                  ; $5a99: $01 $28 $01
    dec [hl]                                      ; $5a9c: $35
    ld bc, $0142                                  ; $5a9d: $01 $42 $01
    ld c, a                                       ; $5aa0: $4f
    ld bc, $015c                                  ; $5aa1: $01 $5c $01
    ld l, c                                       ; $5aa4: $69
    ld bc, $0176                                  ; $5aa5: $01 $76 $01
    add l                                         ; $5aa8: $85
    ld bc, $01a7                                  ; $5aa9: $01 $a7 $01
    cp e                                          ; $5aac: $bb
    ld bc, $01cf                                  ; $5aad: $01 $cf $01
    db $e3                                        ; $5ab0: $e3
    db $01                                        ; $5ab1: $01

    db $1f, $02, $2c, $02, $3a, $02

    ld c, b                                       ; $5ab8: $48
    ld [bc], a                                    ; $5ab9: $02

    db $57, $02

    ld h, [hl]                                    ; $5abc: $66
    ld [bc], a                                    ; $5abd: $02
    ld [hl], e                                    ; $5abe: $73
    ld [bc], a                                    ; $5abf: $02
    add l                                         ; $5ac0: $85
    ld [bc], a                                    ; $5ac1: $02

    db $94, $02

    and e                                         ; $5ac4: $a3
    ld [bc], a                                    ; $5ac5: $02
    or c                                          ; $5ac6: $b1
    ld [bc], a                                    ; $5ac7: $02
    cp a                                          ; $5ac8: $bf
    ld [bc], a                                    ; $5ac9: $02
    call nc, $e902                                ; $5aca: $d4 $02 $e9
    ld [bc], a                                    ; $5acd: $02
    db $fc                                        ; $5ace: $fc
    ld [bc], a                                    ; $5acf: $02

    db $16, $03

    jr nc, jr_00f_5ad7                            ; $5ad2: $30 $03

    ld [hl-], a                                   ; $5ad4: $32
    inc bc                                        ; $5ad5: $03
    inc [hl]                                      ; $5ad6: $34

jr_00f_5ad7:
    inc bc                                        ; $5ad7: $03
    ld [hl], $03                                  ; $5ad8: $36 $03
    jr c, jr_00f_5adf                             ; $5ada: $38 $03

    db $3a, $03

    inc a                                         ; $5ade: $3c

jr_00f_5adf:
    inc bc                                        ; $5adf: $03
    ld e, e                                       ; $5ae0: $5b
    inc bc                                        ; $5ae1: $03
    ld [hl], h                                    ; $5ae2: $74
    inc bc                                        ; $5ae3: $03
    add c                                         ; $5ae4: $81
    inc bc                                        ; $5ae5: $03
    adc [hl]                                      ; $5ae6: $8e
    inc bc                                        ; $5ae7: $03
    sbc e                                         ; $5ae8: $9b
    inc bc                                        ; $5ae9: $03
    xor [hl]                                      ; $5aea: $ae
    inc bc                                        ; $5aeb: $03
    ret z                                         ; $5aec: $c8

    inc bc                                        ; $5aed: $03
    ld sp, hl                                     ; $5aee: $f9
    inc bc                                        ; $5aef: $03
    ld [de], a                                    ; $5af0: $12
    inc b                                         ; $5af1: $04
    rra                                           ; $5af2: $1f
    inc b                                         ; $5af3: $04
    ld l, $04                                     ; $5af4: $2e $04
    dec sp                                        ; $5af6: $3b
    inc b                                         ; $5af7: $04
    ld d, [hl]                                    ; $5af8: $56
    inc b                                         ; $5af9: $04
    ld l, [hl]                                    ; $5afa: $6e
    inc b                                         ; $5afb: $04
    ld a, e                                       ; $5afc: $7b
    inc b                                         ; $5afd: $04
    adc b                                         ; $5afe: $88
    inc b                                         ; $5aff: $04
    sub a                                         ; $5b00: $97
    inc b                                         ; $5b01: $04

    db $b1, $04

    ldh a, [rDIV]                                 ; $5b04: $f0 $04
    ld a, [de]                                    ; $5b06: $1a
    dec b                                         ; $5b07: $05
    ld c, h                                       ; $5b08: $4c
    dec b                                         ; $5b09: $05
    ld h, e                                       ; $5b0a: $63
    dec b                                         ; $5b0b: $05
    ld a, [hl]                                    ; $5b0c: $7e
    dec b                                         ; $5b0d: $05
    xor h                                         ; $5b0e: $ac
    dec b                                         ; $5b0f: $05
    db $eb                                        ; $5b10: $eb
    dec b                                         ; $5b11: $05
    dec c                                         ; $5b12: $0d
    ld b, $27                                     ; $5b13: $06 $27
    ld b, $47                                     ; $5b15: $06 $47
    ld b, $56                                     ; $5b17: $06 $56
    ld b, $72                                     ; $5b19: $06 $72
    ld b, $8a                                     ; $5b1b: $06 $8a
    ld b, $c9                                     ; $5b1d: $06 $c9
    ld b, $d6                                     ; $5b1f: $06 $d6
    ld b, $fa                                     ; $5b21: $06 $fa
    ld b, $20                                     ; $5b23: $06 $20
    rlca                                          ; $5b25: $07

    db $43, $07

    ld d, d                                       ; $5b28: $52
    rlca                                          ; $5b29: $07
    ld h, c                                       ; $5b2a: $61
    rlca                                          ; $5b2b: $07
    add e                                         ; $5b2c: $83
    rlca                                          ; $5b2d: $07
    sub b                                         ; $5b2e: $90
    rlca                                          ; $5b2f: $07
    sbc l                                         ; $5b30: $9d
    rlca                                          ; $5b31: $07
    db $c2                                        ; $5b32: $c2
    rlca                                          ; $5b33: $07

    db $d5, $07

    inc d                                         ; $5b36: $14
    ld [$0853], sp                                ; $5b37: $08 $53 $08
    sub d                                         ; $5b3a: $92
    ld [$08d1], sp                                ; $5b3b: $08 $d1 $08
    ldh a, [$08]                                  ; $5b3e: $f0 $08
    jr z, @+$0b                                   ; $5b40: $28 $09

    ld d, c                                       ; $5b42: $51
    add hl, bc                                    ; $5b43: $09
    halt                                          ; $5b44: $76
    add hl, bc                                    ; $5b45: $09
    and b                                         ; $5b46: $a0
    add hl, bc                                    ; $5b47: $09
    cp d                                          ; $5b48: $ba
    add hl, bc                                    ; $5b49: $09
    sub $09                                       ; $5b4a: $d6 $09

    db $e5, $09, $4d, $0a

    ld e, a                                       ; $5b50: $5f
    ld a, [bc]                                    ; $5b51: $0a
    ld a, e                                       ; $5b52: $7b
    ld a, [bc]                                    ; $5b53: $0a
    sub h                                         ; $5b54: $94
    ld a, [bc]                                    ; $5b55: $0a
    and e                                         ; $5b56: $a3
    ld a, [bc]                                    ; $5b57: $0a

    db $b2, $0a, $f3, $0a, $51, $0b, $92, $0b

    ret z                                         ; $5b60: $c8

    dec bc                                        ; $5b61: $0b

    db $d6, $0b, $fc, $0b, $18, $0c, $2b, $0c

    add hl, sp                                    ; $5b6a: $39
    inc c                                         ; $5b6b: $0c
    ld e, b                                       ; $5b6c: $58
    inc c                                         ; $5b6d: $0c
    ld [hl], a                                    ; $5b6e: $77
    inc c                                         ; $5b6f: $0c
    sub [hl]                                      ; $5b70: $96
    inc c                                         ; $5b71: $0c

    db $b5, $0c

    call nz, $d60c                                ; $5b74: $c4 $0c $d6
    inc c                                         ; $5b77: $0c

    db $ec, $0c

    rrca                                          ; $5b7a: $0f
    dec c                                         ; $5b7b: $0d

    db $1e, $0d

    dec l                                         ; $5b7e: $2d
    dec c                                         ; $5b7f: $0d
    dec sp                                        ; $5b80: $3b
    dec c                                         ; $5b81: $0d
    ld e, d                                       ; $5b82: $5a
    dec c                                         ; $5b83: $0d

    db $79, $0d

    sbc h                                         ; $5b86: $9c
    dec c                                         ; $5b87: $0d

    db $b8, $0d, $c7, $0d, $ea, $0d, $f9, $0d

    dec d                                         ; $5b90: $15
    ld c, $24                                     ; $5b91: $0e $24
    ld c, $3a                                     ; $5b93: $0e $3a
    db $0e                                        ; $5b95: $0e

    db $5b, $0e, $6a, $0e, $7b, $0e

    adc d                                         ; $5b9c: $8a
    ld c, $a6                                     ; $5b9d: $0e $a6
    ld c, $c2                                     ; $5b9f: $0e $c2
    ld c, $de                                     ; $5ba1: $0e $de
    ld c, $0e                                     ; $5ba3: $0e $0e
    ld [bc], a                                    ; $5ba5: $02
    add hl, bc                                    ; $5ba6: $09
    rrca                                          ; $5ba7: $0f
    ld hl, $0401                                  ; $5ba8: $21 $01 $04
    ld bc, $0000                                  ; $5bab: $01 $00 $00
    ld e, h                                       ; $5bae: $5c
    dec c                                         ; $5baf: $0d
    nop                                           ; $5bb0: $00
    ld c, $02                                     ; $5bb1: $0e $02
    add hl, bc                                    ; $5bb3: $09
    rrca                                          ; $5bb4: $0f
    ld hl, $0400                                  ; $5bb5: $21 $00 $04
    ld bc, $0000                                  ; $5bb8: $01 $00 $00
    ld a, d                                       ; $5bbb: $7a
    dec c                                         ; $5bbc: $0d
    nop                                           ; $5bbd: $00
    ld c, $02                                     ; $5bbe: $0e $02
    add hl, bc                                    ; $5bc0: $09
    rrca                                          ; $5bc1: $0f
    ld hl, $0402                                  ; $5bc2: $21 $02 $04
    ld bc, $0000                                  ; $5bc5: $01 $00 $00
    nop                                           ; $5bc8: $00
    dec c                                         ; $5bc9: $0d
    nop                                           ; $5bca: $00
    ld c, $02                                     ; $5bcb: $0e $02
    add hl, bc                                    ; $5bcd: $09
    rrca                                          ; $5bce: $0f
    ld hl, $0403                                  ; $5bcf: $21 $03 $04
    ld bc, $0000                                  ; $5bd2: $01 $00 $00
    sbc b                                         ; $5bd5: $98
    dec c                                         ; $5bd6: $0d
    nop                                           ; $5bd7: $00
    ld c, $02                                     ; $5bd8: $0e $02
    add hl, bc                                    ; $5bda: $09
    rrca                                          ; $5bdb: $0f
    ld hl, $0404                                  ; $5bdc: $21 $04 $04
    ld bc, $0000                                  ; $5bdf: $01 $00 $00
    sbc b                                         ; $5be2: $98
    dec c                                         ; $5be3: $0d
    nop                                           ; $5be4: $00
    ld c, $02                                     ; $5be5: $0e $02
    add hl, bc                                    ; $5be7: $09
    rrca                                          ; $5be8: $0f
    ld hl, $0405                                  ; $5be9: $21 $05 $04
    ld bc, $0000                                  ; $5bec: $01 $00 $00
    nop                                           ; $5bef: $00
    dec c                                         ; $5bf0: $0d
    nop                                           ; $5bf1: $00
    ld c, $02                                     ; $5bf2: $0e $02
    add hl, bc                                    ; $5bf4: $09
    rrca                                          ; $5bf5: $0f
    ld hl, $0406                                  ; $5bf6: $21 $06 $04
    ld bc, $0000                                  ; $5bf9: $01 $00 $00
    nop                                           ; $5bfc: $00
    dec c                                         ; $5bfd: $0d
    nop                                           ; $5bfe: $00
    ld c, $02                                     ; $5bff: $0e $02
    add hl, bc                                    ; $5c01: $09
    rrca                                          ; $5c02: $0f
    ld hl, $0407                                  ; $5c03: $21 $07 $04
    ld bc, $0000                                  ; $5c06: $01 $00 $00
    nop                                           ; $5c09: $00
    dec c                                         ; $5c0a: $0d
    nop                                           ; $5c0b: $00
    ld c, $02                                     ; $5c0c: $0e $02
    add hl, bc                                    ; $5c0e: $09
    rrca                                          ; $5c0f: $0f
    inc c                                         ; $5c10: $0c
    nop                                           ; $5c11: $00
    ld hl, $0408                                  ; $5c12: $21 $08 $04
    nop                                           ; $5c15: $00
    nop                                           ; $5c16: $00
    nop                                           ; $5c17: $00
    ld a, d                                       ; $5c18: $7a
    dec c                                         ; $5c19: $0d
    nop                                           ; $5c1a: $00
    ld c, $02                                     ; $5c1b: $0e $02
    add hl, bc                                    ; $5c1d: $09
    rrca                                          ; $5c1e: $0f
    ld hl, $0409                                  ; $5c1f: $21 $09 $04
    nop                                           ; $5c22: $00
    nop                                           ; $5c23: $00
    nop                                           ; $5c24: $00
    ld c, $21                                     ; $5c25: $0e $21
    ld a, [bc]                                    ; $5c27: $0a
    inc b                                         ; $5c28: $04
    nop                                           ; $5c29: $00
    nop                                           ; $5c2a: $00
    nop                                           ; $5c2b: $00
    ld c, $21                                     ; $5c2c: $0e $21
    dec bc                                        ; $5c2e: $0b
    inc b                                         ; $5c2f: $04
    nop                                           ; $5c30: $00
    nop                                           ; $5c31: $00
    nop                                           ; $5c32: $00
    ld c, $21                                     ; $5c33: $0e $21
    ld a, [bc]                                    ; $5c35: $0a
    inc b                                         ; $5c36: $04
    ld bc, $0000                                  ; $5c37: $01 $00 $00
    ld a, [de]                                    ; $5c3a: $1a
    dec c                                         ; $5c3b: $0d
    nop                                           ; $5c3c: $00
    ld c, $02                                     ; $5c3d: $0e $02
    add hl, bc                                    ; $5c3f: $09
    rrca                                          ; $5c40: $0f
    ld hl, $0409                                  ; $5c41: $21 $09 $04
    nop                                           ; $5c44: $00
    nop                                           ; $5c45: $00
    nop                                           ; $5c46: $00
    dec bc                                        ; $5c47: $0b
    ld hl, $040a                                  ; $5c48: $21 $0a $04
    nop                                           ; $5c4b: $00
    nop                                           ; $5c4c: $00
    nop                                           ; $5c4d: $00
    ld [hl-], a                                   ; $5c4e: $32
    dec c                                         ; $5c4f: $0d
    nop                                           ; $5c50: $00
    ld c, $02                                     ; $5c51: $0e $02
    add hl, bc                                    ; $5c53: $09
    rrca                                          ; $5c54: $0f
    ld hl, $040c                                  ; $5c55: $21 $0c $04
    nop                                           ; $5c58: $00
    nop                                           ; $5c59: $00
    nop                                           ; $5c5a: $00
    jr nz, jr_00f_5c7e                            ; $5c5b: $20 $21

    ld a, [bc]                                    ; $5c5d: $0a
    inc b                                         ; $5c5e: $04
    nop                                           ; $5c5f: $00
    nop                                           ; $5c60: $00
    nop                                           ; $5c61: $00
    ld c, d                                       ; $5c62: $4a
    dec c                                         ; $5c63: $0d
    nop                                           ; $5c64: $00
    ld c, $00                                     ; $5c65: $0e $00
    ld h, $03                                     ; $5c67: $26 $03
    dec c                                         ; $5c69: $0d
    inc b                                         ; $5c6a: $04
    nop                                           ; $5c6b: $00
    nop                                           ; $5c6c: $00
    nop                                           ; $5c6d: $00
    ld a, $26                                     ; $5c6e: $3e $26
    nop                                           ; $5c70: $00
    db $10                                        ; $5c71: $10
    inc b                                         ; $5c72: $04
    nop                                           ; $5c73: $00
    nop                                           ; $5c74: $00
    nop                                           ; $5c75: $00
    ld [hl-], a                                   ; $5c76: $32
    dec c                                         ; $5c77: $0d
    nop                                           ; $5c78: $00
    ld c, $03                                     ; $5c79: $0e $03
    inc c                                         ; $5c7b: $0c
    ld [bc], a                                    ; $5c7c: $02
    db $10                                        ; $5c7d: $10

jr_00f_5c7e:
    ld h, b                                       ; $5c7e: $60
    inc de                                        ; $5c7f: $13
    ld bc, HeaderLogo                             ; $5c80: $01 $04 $01
    nop                                           ; $5c83: $00
    nop                                           ; $5c84: $00
    dec bc                                        ; $5c85: $0b
    db $10                                        ; $5c86: $10
    ld d, b                                       ; $5c87: $50
    inc de                                        ; $5c88: $13
    ld bc, HeaderLogo                             ; $5c89: $01 $04 $01
    nop                                           ; $5c8c: $00
    nop                                           ; $5c8d: $00
    dec bc                                        ; $5c8e: $0b
    db $10                                        ; $5c8f: $10
    ld b, b                                       ; $5c90: $40
    inc de                                        ; $5c91: $13
    ld bc, HeaderLogo                             ; $5c92: $01 $04 $01
    nop                                           ; $5c95: $00
    nop                                           ; $5c96: $00
    add hl, bc                                    ; $5c97: $09
    db $10                                        ; $5c98: $10
    jr nc, @+$15                                  ; $5c99: $30 $13

    ld bc, HeaderLogo                             ; $5c9b: $01 $04 $01
    nop                                           ; $5c9e: $00
    nop                                           ; $5c9f: $00
    ld [$2010], sp                                ; $5ca0: $08 $10 $20
    inc de                                        ; $5ca3: $13
    ld bc, HeaderLogo                             ; $5ca4: $01 $04 $01
    nop                                           ; $5ca7: $00
    nop                                           ; $5ca8: $00
    ld [$1010], sp                                ; $5ca9: $08 $10 $10
    inc de                                        ; $5cac: $13
    ld bc, HeaderLogo                             ; $5cad: $01 $04 $01
    nop                                           ; $5cb0: $00
    nop                                           ; $5cb1: $00
    ld b, $0d                                     ; $5cb2: $06 $0d
    nop                                           ; $5cb4: $00

    db $0e, $02, $09, $0f, $21, $0d, $04, $00, $00, $00, $3e, $0d, $00, $0e, $02, $0a
    db $01, $09, $0f, $21, $0f, $04, $00, $00, $00, $15, $00, $0e, $02, $0a, $01, $09
    db $0f, $21, $0e, $04, $00, $00, $00, $15

    nop                                           ; $5cdd: $00
    ld c, $02                                     ; $5cde: $0e $02
    add hl, bc                                    ; $5ce0: $09
    rrca                                          ; $5ce1: $0f
    ld a, [bc]                                    ; $5ce2: $0a
    ld bc, $1021                                  ; $5ce3: $01 $21 $10
    inc b                                         ; $5ce6: $04
    nop                                           ; $5ce7: $00
    nop                                           ; $5ce8: $00
    nop                                           ; $5ce9: $00
    ld de, $000d                                  ; $5cea: $11 $0d $00

    db $0e, $02, $09, $0f, $0a, $01, $21, $11, $04, $01, $00, $00, $00

    dec c                                         ; $5cfa: $0d
    nop                                           ; $5cfb: $00
    ld c, $02                                     ; $5cfc: $0e $02
    add hl, bc                                    ; $5cfe: $09
    rrca                                          ; $5cff: $0f
    ld hl, $0412                                  ; $5d00: $21 $12 $04
    ld bc, $0000                                  ; $5d03: $01 $00 $00
    nop                                           ; $5d06: $00
    dec c                                         ; $5d07: $0d
    nop                                           ; $5d08: $00
    ld c, $02                                     ; $5d09: $0e $02
    ld a, [bc]                                    ; $5d0b: $0a
    ld bc, $0f09                                  ; $5d0c: $01 $09 $0f
    ld hl, $0714                                  ; $5d0f: $21 $14 $07
    ld d, e                                       ; $5d12: $53
    nop                                           ; $5d13: $00
    inc b                                         ; $5d14: $04
    nop                                           ; $5d15: $00
    nop                                           ; $5d16: $00
    nop                                           ; $5d17: $00
    ld a, $0d                                     ; $5d18: $3e $0d
    nop                                           ; $5d1a: $00
    ld c, $02                                     ; $5d1b: $0e $02
    ld a, [bc]                                    ; $5d1d: $0a
    ld bc, $0f09                                  ; $5d1e: $01 $09 $0f
    ld hl, $0413                                  ; $5d21: $21 $13 $04
    nop                                           ; $5d24: $00
    nop                                           ; $5d25: $00
    nop                                           ; $5d26: $00
    rrca                                          ; $5d27: $0f
    dec c                                         ; $5d28: $0d
    nop                                           ; $5d29: $00

    db $0e, $02, $0a, $01, $09, $0f, $21, $14, $04, $00, $00, $00, $4c, $0d, $00

    ld c, $02                                     ; $5d39: $0e $02
    ld a, [bc]                                    ; $5d3b: $0a
    ld bc, $0f09                                  ; $5d3c: $01 $09 $0f
    ld hl, $0415                                  ; $5d3f: $21 $15 $04
    nop                                           ; $5d42: $00
    nop                                           ; $5d43: $00
    nop                                           ; $5d44: $00
    inc h                                         ; $5d45: $24
    nop                                           ; $5d46: $00
    ld c, $02                                     ; $5d47: $0e $02
    ld a, [bc]                                    ; $5d49: $0a
    ld bc, $0f09                                  ; $5d4a: $01 $09 $0f
    ld hl, $0416                                  ; $5d4d: $21 $16 $04
    nop                                           ; $5d50: $00
    nop                                           ; $5d51: $00
    nop                                           ; $5d52: $00
    add hl, de                                    ; $5d53: $19
    nop                                           ; $5d54: $00
    ld c, $00                                     ; $5d55: $0e $00
    inc c                                         ; $5d57: $0c
    rst $38                                       ; $5d58: $ff
    ld a, [bc]                                    ; $5d59: $0a
    ld [bc], a                                    ; $5d5a: $02
    add hl, bc                                    ; $5d5b: $09
    rrca                                          ; $5d5c: $0f
    inc bc                                        ; $5d5d: $03
    rlca                                          ; $5d5e: $07
    add b                                         ; $5d5f: $80
    ld e, $00                                     ; $5d60: $1e $00
    nop                                           ; $5d62: $00
    inc b                                         ; $5d63: $04
    nop                                           ; $5d64: $00
    nop                                           ; $5d65: $00
    nop                                           ; $5d66: $00
    ld [$000d], sp                                ; $5d67: $08 $0d $00
    ld c, $00                                     ; $5d6a: $0e $00
    inc c                                         ; $5d6c: $0c
    rst $38                                       ; $5d6d: $ff
    ld a, [bc]                                    ; $5d6e: $0a
    nop                                           ; $5d6f: $00
    add hl, bc                                    ; $5d70: $09
    rrca                                          ; $5d71: $0f
    inc bc                                        ; $5d72: $03
    dec b                                         ; $5d73: $05
    nop                                           ; $5d74: $00
    inc d                                         ; $5d75: $14
    nop                                           ; $5d76: $00
    nop                                           ; $5d77: $00
    inc b                                         ; $5d78: $04
    ld bc, $0000                                  ; $5d79: $01 $00 $00
    ld [$000d], sp                                ; $5d7c: $08 $0d $00
    ld c, $00                                     ; $5d7f: $0e $00
    inc c                                         ; $5d81: $0c
    rst $38                                       ; $5d82: $ff
    add hl, bc                                    ; $5d83: $09
    rrca                                          ; $5d84: $0f
    inc bc                                        ; $5d85: $03
    rst $38                                       ; $5d86: $ff
    inc a                                         ; $5d87: $3c
    or $00                                        ; $5d88: $f6 $00
    nop                                           ; $5d8a: $00
    inc b                                         ; $5d8b: $04
    nop                                           ; $5d8c: $00
    nop                                           ; $5d8d: $00
    nop                                           ; $5d8e: $00
    ld c, $0d                                     ; $5d8f: $0e $0d
    nop                                           ; $5d91: $00
    ld c, $00                                     ; $5d92: $0e $00
    ld a, [bc]                                    ; $5d94: $0a
    ld bc, $2807                                  ; $5d95: $01 $07 $28
    nop                                           ; $5d98: $00
    inc bc                                        ; $5d99: $03
    inc c                                         ; $5d9a: $0c
    nop                                           ; $5d9b: $00
    inc a                                         ; $5d9c: $3c
    nop                                           ; $5d9d: $00
    nop                                           ; $5d9e: $00
    add hl, bc                                    ; $5d9f: $09
    inc c                                         ; $5da0: $0c
    inc c                                         ; $5da1: $0c
    ld bc, $0413                                  ; $5da2: $01 $13 $04
    inc b                                         ; $5da5: $04
    nop                                           ; $5da6: $00
    nop                                           ; $5da7: $00
    nop                                           ; $5da8: $00
    ld a, $0d                                     ; $5da9: $3e $0d
    nop                                           ; $5dab: $00

    db $0e, $00, $0a, $01, $07, $50, $00, $03, $06, $00, $3c, $00, $00, $09, $0a, $0c
    db $02, $13, $03, $04, $00, $00, $00, $32, $0d, $00

    dec c                                         ; $5dc6: $0d
    nop                                           ; $5dc7: $00
    dec c                                         ; $5dc8: $0d
    nop                                           ; $5dc9: $00
    dec c                                         ; $5dca: $0d
    nop                                           ; $5dcb: $00
    dec c                                         ; $5dcc: $0d
    nop                                           ; $5dcd: $00
    dec c                                         ; $5dce: $0d
    nop                                           ; $5dcf: $00

    db $0d, $00

    ld c, $00                                     ; $5dd2: $0e $00
    add hl, bc                                    ; $5dd4: $09
    rlca                                          ; $5dd5: $07
    daa                                           ; $5dd6: $27
    ld [bc], a                                    ; $5dd7: $02
    inc h                                         ; $5dd8: $24
    inc c                                         ; $5dd9: $0c
    ld [bc], a                                    ; $5dda: $02
    rlca                                          ; $5ddb: $07
    ld e, $00                                     ; $5ddc: $1e $00
    inc b                                         ; $5dde: $04
    nop                                           ; $5ddf: $00
    nop                                           ; $5de0: $00
    nop                                           ; $5de1: $00
    dec b                                         ; $5de2: $05
    inc c                                         ; $5de3: $0c
    inc bc                                        ; $5de4: $03
    inc b                                         ; $5de5: $04
    nop                                           ; $5de6: $00
    nop                                           ; $5de7: $00
    nop                                           ; $5de8: $00
    ld b, $07                                     ; $5de9: $06 $07
    dec e                                         ; $5deb: $1d
    nop                                           ; $5dec: $00
    inc c                                         ; $5ded: $0c
    nop                                           ; $5dee: $00
    dec c                                         ; $5def: $0d
    nop                                           ; $5df0: $00
    ld c, $00                                     ; $5df1: $0e $00
    add hl, bc                                    ; $5df3: $09
    rrca                                          ; $5df4: $0f
    ld h, $01                                     ; $5df5: $26 $01
    inc h                                         ; $5df7: $24
    inc b                                         ; $5df8: $04
    nop                                           ; $5df9: $00
    nop                                           ; $5dfa: $00
    nop                                           ; $5dfb: $00
    ld a, [de]                                    ; $5dfc: $1a
    ld h, $01                                     ; $5dfd: $26 $01
    inc h                                         ; $5dff: $24
    rlca                                          ; $5e00: $07
    inc d                                         ; $5e01: $14
    nop                                           ; $5e02: $00
    inc b                                         ; $5e03: $04
    nop                                           ; $5e04: $00
    nop                                           ; $5e05: $00
    nop                                           ; $5e06: $00
    ld a, $0d                                     ; $5e07: $3e $0d
    nop                                           ; $5e09: $00
    ld c, $02                                     ; $5e0a: $0e $02
    add hl, bc                                    ; $5e0c: $09
    rrca                                          ; $5e0d: $0f
    ld hl, $041a                                  ; $5e0e: $21 $1a $04
    ld bc, $0000                                  ; $5e11: $01 $00 $00
    nop                                           ; $5e14: $00
    dec c                                         ; $5e15: $0d
    nop                                           ; $5e16: $00
    ld c, $02                                     ; $5e17: $0e $02
    add hl, bc                                    ; $5e19: $09
    rrca                                          ; $5e1a: $0f
    ld hl, $0416                                  ; $5e1b: $21 $16 $04
    ld bc, $0000                                  ; $5e1e: $01 $00 $00
    nop                                           ; $5e21: $00
    dec c                                         ; $5e22: $0d
    nop                                           ; $5e23: $00
    ld c, $02                                     ; $5e24: $0e $02
    add hl, bc                                    ; $5e26: $09
    rrca                                          ; $5e27: $0f
    ld hl, $0427                                  ; $5e28: $21 $27 $04
    ld bc, $0000                                  ; $5e2b: $01 $00 $00
    nop                                           ; $5e2e: $00
    dec c                                         ; $5e2f: $0d
    nop                                           ; $5e30: $00
    ld c, $01                                     ; $5e31: $0e $01
    inc c                                         ; $5e33: $0c
    rst $38                                       ; $5e34: $ff
    db $10                                        ; $5e35: $10
    ld de, $0003                                  ; $5e36: $11 $03 $00
    db $fd                                        ; $5e39: $fd
    ld e, d                                       ; $5e3a: $5a
    nop                                           ; $5e3b: $00
    nop                                           ; $5e3c: $00
    inc b                                         ; $5e3d: $04
    ld bc, $0000                                  ; $5e3e: $01 $00 $00
    ld e, h                                       ; $5e41: $5c
    dec c                                         ; $5e42: $0d
    nop                                           ; $5e43: $00
    ld c, $00                                     ; $5e44: $0e $00
    ld h, $00                                     ; $5e46: $26 $00
    dec hl                                        ; $5e48: $2b
    inc c                                         ; $5e49: $0c
    rst $38                                       ; $5e4a: $ff
    db $10                                        ; $5e4b: $10
    ld [$0001], sp                                ; $5e4c: $08 $01 $00
    and b                                         ; $5e4f: $a0
    inc b                                         ; $5e50: $04
    inc bc                                        ; $5e51: $03
    ld a, [bc]                                    ; $5e52: $0a
    inc c                                         ; $5e53: $0c
    inc d                                         ; $5e54: $14
    add hl, de                                    ; $5e55: $19
    nop                                           ; $5e56: $00
    inc b                                         ; $5e57: $04
    ld bc, $0000                                  ; $5e58: $01 $00 $00
    ld e, h                                       ; $5e5b: $5c
    dec c                                         ; $5e5c: $0d
    nop                                           ; $5e5d: $00
    ld c, $01                                     ; $5e5e: $0e $01
    inc c                                         ; $5e60: $0c
    rst $38                                       ; $5e61: $ff
    db $10                                        ; $5e62: $10
    ld de, $fe03                                  ; $5e63: $11 $03 $fe
    ld de, $00c4                                  ; $5e66: $11 $c4 $00
    nop                                           ; $5e69: $00
    inc b                                         ; $5e6a: $04
    ld bc, $0000                                  ; $5e6b: $01 $00 $00
    jr nz, @+$0e                                  ; $5e6e: $20 $0c

    rst $38                                       ; $5e70: $ff
    db $10                                        ; $5e71: $10
    ld de, $fe03                                  ; $5e72: $11 $03 $fe
    ld de, $00c4                                  ; $5e75: $11 $c4 $00
    nop                                           ; $5e78: $00
    inc b                                         ; $5e79: $04
    ld bc, $0000                                  ; $5e7a: $01 $00 $00
    jr nz, @+$0e                                  ; $5e7d: $20 $0c

    rst $38                                       ; $5e7f: $ff
    db $10                                        ; $5e80: $10
    ld de, $fe03                                  ; $5e81: $11 $03 $fe
    ld de, $00c4                                  ; $5e84: $11 $c4 $00
    nop                                           ; $5e87: $00
    inc b                                         ; $5e88: $04
    ld bc, $0000                                  ; $5e89: $01 $00 $00
    jr nz, jr_00f_5e9b                            ; $5e8c: $20 $0d

    nop                                           ; $5e8e: $00
    ld c, $00                                     ; $5e8f: $0e $00
    add hl, bc                                    ; $5e91: $09
    rrca                                          ; $5e92: $0f
    ld a, [bc]                                    ; $5e93: $0a
    nop                                           ; $5e94: $00
    inc c                                         ; $5e95: $0c
    ld [bc], a                                    ; $5e96: $02
    rlca                                          ; $5e97: $07
    inc a                                         ; $5e98: $3c
    nop                                           ; $5e99: $00
    inc bc                                        ; $5e9a: $03

jr_00f_5e9b:
    ld [bc], a                                    ; $5e9b: $02
    add b                                         ; $5e9c: $80
    ld a, [bc]                                    ; $5e9d: $0a
    nop                                           ; $5e9e: $00
    nop                                           ; $5e9f: $00
    inc b                                         ; $5ea0: $04
    nop                                           ; $5ea1: $00
    nop                                           ; $5ea2: $00
    nop                                           ; $5ea3: $00
    ld a, $13                                     ; $5ea4: $3e $13
    inc b                                         ; $5ea6: $04
    nop                                           ; $5ea7: $00
    ld c, $02                                     ; $5ea8: $0e $02
    add hl, bc                                    ; $5eaa: $09
    rrca                                          ; $5eab: $0f
    ld hl, $0419                                  ; $5eac: $21 $19 $04
    ld bc, $0000                                  ; $5eaf: $01 $00 $00
    nop                                           ; $5eb2: $00
    dec c                                         ; $5eb3: $0d
    nop                                           ; $5eb4: $00
    ld c, $02                                     ; $5eb5: $0e $02
    ld a, [bc]                                    ; $5eb7: $0a
    ld bc, $0f09                                  ; $5eb8: $01 $09 $0f
    ld hl, $0417                                  ; $5ebb: $21 $17 $04
    nop                                           ; $5ebe: $00
    nop                                           ; $5ebf: $00
    nop                                           ; $5ec0: $00
    ld h, d                                       ; $5ec1: $62
    dec c                                         ; $5ec2: $0d
    nop                                           ; $5ec3: $00
    ld c, $02                                     ; $5ec4: $0e $02
    add hl, bc                                    ; $5ec6: $09
    rrca                                          ; $5ec7: $0f
    ld hl, $0418                                  ; $5ec8: $21 $18 $04
    ld bc, $0000                                  ; $5ecb: $01 $00 $00
    ld e, h                                       ; $5ece: $5c
    dec c                                         ; $5ecf: $0d
    nop                                           ; $5ed0: $00
    ld c, $01                                     ; $5ed1: $0e $01
    ld a, [bc]                                    ; $5ed3: $0a
    ld bc, $0a07                                  ; $5ed4: $01 $07 $0a
    nop                                           ; $5ed7: $00
    inc bc                                        ; $5ed8: $03
    rst $38                                       ; $5ed9: $ff
    sbc h                                         ; $5eda: $9c
    sbc h                                         ; $5edb: $9c
    nop                                           ; $5edc: $00
    nop                                           ; $5edd: $00
    add hl, bc                                    ; $5ede: $09
    rrca                                          ; $5edf: $0f
    inc c                                         ; $5ee0: $0c
    ld bc, $ff11                                  ; $5ee1: $01 $11 $ff
    db $eb                                        ; $5ee4: $eb
    inc b                                         ; $5ee5: $04
    nop                                           ; $5ee6: $00
    nop                                           ; $5ee7: $00
    nop                                           ; $5ee8: $00
    or [hl]                                       ; $5ee9: $b6
    dec c                                         ; $5eea: $0d
    nop                                           ; $5eeb: $00
    ld c, $01                                     ; $5eec: $0e $01
    ld a, [bc]                                    ; $5eee: $0a
    ld bc, $3c07                                  ; $5eef: $01 $07 $3c
    nop                                           ; $5ef2: $00
    inc bc                                        ; $5ef3: $03
    inc bc                                        ; $5ef4: $03
    inc de                                        ; $5ef5: $13
    jr z, jr_00f_5ef8                             ; $5ef6: $28 $00

jr_00f_5ef8:
    nop                                           ; $5ef8: $00
    add hl, bc                                    ; $5ef9: $09
    rrca                                          ; $5efa: $0f
    inc c                                         ; $5efb: $0c
    ld bc, HeaderLogo                             ; $5efc: $01 $04 $01
    nop                                           ; $5eff: $00
    nop                                           ; $5f00: $00
    ld a, $0d                                     ; $5f01: $3e $0d
    nop                                           ; $5f03: $00
    ld c, $02                                     ; $5f04: $0e $02
    add hl, bc                                    ; $5f06: $09
    rrca                                          ; $5f07: $0f
    ld hl, $041b                                  ; $5f08: $21 $1b $04
    ld bc, $0000                                  ; $5f0b: $01 $00 $00
    nop                                           ; $5f0e: $00
    dec c                                         ; $5f0f: $0d
    nop                                           ; $5f10: $00
    ld c, $02                                     ; $5f11: $0e $02
    add hl, bc                                    ; $5f13: $09
    rrca                                          ; $5f14: $0f
    ld hl, $041c                                  ; $5f15: $21 $1c $04
    ld bc, $0000                                  ; $5f18: $01 $00 $00
    nop                                           ; $5f1b: $00
    dec c                                         ; $5f1c: $0d
    nop                                           ; $5f1d: $00
    ld c, $03                                     ; $5f1e: $0e $03
    inc c                                         ; $5f20: $0c
    nop                                           ; $5f21: $00
    db $10                                        ; $5f22: $10
    ld e, b                                       ; $5f23: $58
    inc de                                        ; $5f24: $13
    add hl, bc                                    ; $5f25: $09
    inc b                                         ; $5f26: $04
    nop                                           ; $5f27: $00
    nop                                           ; $5f28: $00
    nop                                           ; $5f29: $00
    ld c, $0d                                     ; $5f2a: $0e $0d
    nop                                           ; $5f2c: $00
    ld c, $00                                     ; $5f2d: $0e $00
    ld a, [bc]                                    ; $5f2f: $0a
    ld bc, $2807                                  ; $5f30: $01 $07 $28
    nop                                           ; $5f33: $00
    inc bc                                        ; $5f34: $03
    ld [$3c92], sp                                ; $5f35: $08 $92 $3c
    nop                                           ; $5f38: $00
    nop                                           ; $5f39: $00
    add hl, bc                                    ; $5f3a: $09
    inc c                                         ; $5f3b: $0c
    inc c                                         ; $5f3c: $0c
    ld bc, $0413                                  ; $5f3d: $01 $13 $04
    inc b                                         ; $5f40: $04
    nop                                           ; $5f41: $00
    nop                                           ; $5f42: $00
    nop                                           ; $5f43: $00
    ld a, $0d                                     ; $5f44: $3e $0d
    nop                                           ; $5f46: $00

    db $0e, $03, $0c, $ff, $10, $89, $0a, $01, $09, $08, $04, $00, $00, $00, $06, $0c
    db $ff, $10, $68, $0a, $01, $09, $08, $04, $00, $00, $00, $08, $10, $50, $0a, $01
    db $09, $08, $04, $00, $00, $00, $0e

    db $10                                        ; $5f6e: $10
    ld d, b                                       ; $5f6f: $50
    ld a, [bc]                                    ; $5f70: $0a
    ld bc, $0509                                  ; $5f71: $01 $09 $05
    inc b                                         ; $5f74: $04
    nop                                           ; $5f75: $00
    nop                                           ; $5f76: $00
    nop                                           ; $5f77: $00
    ld b, $10                                     ; $5f78: $06 $10
    ld d, b                                       ; $5f7a: $50
    ld a, [bc]                                    ; $5f7b: $0a
    ld bc, $0309                                  ; $5f7c: $01 $09 $03
    inc b                                         ; $5f7f: $04
    nop                                           ; $5f80: $00
    nop                                           ; $5f81: $00
    nop                                           ; $5f82: $00
    ld b, $0d                                     ; $5f83: $06 $0d
    nop                                           ; $5f85: $00
    ld c, $03                                     ; $5f86: $0e $03
    inc c                                         ; $5f88: $0c
    nop                                           ; $5f89: $00
    db $10                                        ; $5f8a: $10
    ld a, d                                       ; $5f8b: $7a
    inc de                                        ; $5f8c: $13
    add hl, bc                                    ; $5f8d: $09
    inc b                                         ; $5f8e: $04
    ld bc, $0000                                  ; $5f8f: $01 $00 $00
    ld c, $10                                     ; $5f92: $0e $10
    ld c, c                                       ; $5f94: $49
    inc de                                        ; $5f95: $13
    add hl, bc                                    ; $5f96: $09
    inc b                                         ; $5f97: $04
    ld bc, $0000                                  ; $5f98: $01 $00 $00
    rlca                                          ; $5f9b: $07
    db $10                                        ; $5f9c: $10
    ld [hl-], a                                   ; $5f9d: $32
    inc de                                        ; $5f9e: $13
    add hl, bc                                    ; $5f9f: $09
    inc b                                         ; $5fa0: $04
    ld bc, $0000                                  ; $5fa1: $01 $00 $00
    rlca                                          ; $5fa4: $07
    db $10                                        ; $5fa5: $10
    inc hl                                        ; $5fa6: $23
    inc de                                        ; $5fa7: $13
    add hl, bc                                    ; $5fa8: $09
    inc b                                         ; $5fa9: $04
    ld bc, $0000                                  ; $5faa: $01 $00 $00
    rlca                                          ; $5fad: $07
    dec c                                         ; $5fae: $0d
    nop                                           ; $5faf: $00
    ld c, $03                                     ; $5fb0: $0e $03
    inc c                                         ; $5fb2: $0c
    nop                                           ; $5fb3: $00
    db $10                                        ; $5fb4: $10
    ld [hl], b                                    ; $5fb5: $70
    ld a, [bc]                                    ; $5fb6: $0a
    ld bc, $0809                                  ; $5fb7: $01 $09 $08
    inc b                                         ; $5fba: $04
    nop                                           ; $5fbb: $00
    nop                                           ; $5fbc: $00
    nop                                           ; $5fbd: $00
    ld c, $10                                     ; $5fbe: $0e $10
    ld l, e                                       ; $5fc0: $6b
    ld a, [bc]                                    ; $5fc1: $0a
    ld bc, $0809                                  ; $5fc2: $01 $09 $08
    inc b                                         ; $5fc5: $04
    nop                                           ; $5fc6: $00
    nop                                           ; $5fc7: $00
    nop                                           ; $5fc8: $00
    jr nz, jr_00f_5fdb                            ; $5fc9: $20 $10

    ld b, c                                       ; $5fcb: $41
    ld a, [bc]                                    ; $5fcc: $0a
    ld bc, $0509                                  ; $5fcd: $01 $09 $05
    inc b                                         ; $5fd0: $04
    nop                                           ; $5fd1: $00
    nop                                           ; $5fd2: $00
    nop                                           ; $5fd3: $00
    ld b, $10                                     ; $5fd4: $06 $10
    jr nz, jr_00f_5fe2                            ; $5fd6: $20 $0a

    ld bc, $0309                                  ; $5fd8: $01 $09 $03

jr_00f_5fdb:
    inc b                                         ; $5fdb: $04
    nop                                           ; $5fdc: $00
    nop                                           ; $5fdd: $00
    nop                                           ; $5fde: $00
    ld b, $0d                                     ; $5fdf: $06 $0d
    nop                                           ; $5fe1: $00

jr_00f_5fe2:
    ld c, $03                                     ; $5fe2: $0e $03
    rlca                                          ; $5fe4: $07
    scf                                           ; $5fe5: $37
    nop                                           ; $5fe6: $00
    inc c                                         ; $5fe7: $0c
    nop                                           ; $5fe8: $00
    daa                                           ; $5fe9: $27
    nop                                           ; $5fea: $00
    ld a, e                                       ; $5feb: $7b
    ld bc, $9300                                  ; $5fec: $01 $00 $93
    ld [bc], a                                    ; $5fef: $02
    inc b                                         ; $5ff0: $04
    nop                                           ; $5ff1: $00
    nop                                           ; $5ff2: $00
    nop                                           ; $5ff3: $00
    inc l                                         ; $5ff4: $2c
    inc de                                        ; $5ff5: $13
    ld bc, $000d                                  ; $5ff6: $01 $0d $00
    ld c, $03                                     ; $5ff9: $0e $03
    rlca                                          ; $5ffb: $07
    ld [hl-], a                                   ; $5ffc: $32
    nop                                           ; $5ffd: $00
    dec e                                         ; $5ffe: $1d
    ld bc, $0005                                  ; $5fff: $01 $05 $00
    sub d                                         ; $6002: $92
    add hl, bc                                    ; $6003: $09
    rrca                                          ; $6004: $0f
    inc c                                         ; $6005: $0c
    nop                                           ; $6006: $00
    inc de                                        ; $6007: $13
    inc c                                         ; $6008: $0c
    ld bc, $9300                                  ; $6009: $01 $00 $93
    ld [bc], a                                    ; $600c: $02
    inc b                                         ; $600d: $04
    nop                                           ; $600e: $00
    nop                                           ; $600f: $00
    nop                                           ; $6010: $00
    ld a, $0d                                     ; $6011: $3e $0d
    nop                                           ; $6013: $00
    ld c, $02                                     ; $6014: $0e $02
    ld a, [bc]                                    ; $6016: $0a
    ld bc, $091d                                  ; $6017: $01 $1d $09
    ld c, $02                                     ; $601a: $0e $02
    add b                                         ; $601c: $80
    rlca                                          ; $601d: $07
    ld [hl-], a                                   ; $601e: $32
    nop                                           ; $601f: $00
    add hl, bc                                    ; $6020: $09
    rrca                                          ; $6021: $0f
    daa                                           ; $6022: $27
    nop                                           ; $6023: $00
    ld a, $04                                     ; $6024: $3e $04
    nop                                           ; $6026: $00
    nop                                           ; $6027: $00
    nop                                           ; $6028: $00
    ld a, $0d                                     ; $6029: $3e $0d
    rlca                                          ; $602b: $07
    ld c, b                                       ; $602c: $48
    nop                                           ; $602d: $00
    inc bc                                        ; $602e: $03
    ld a, [bc]                                    ; $602f: $0a
    nop                                           ; $6030: $00
    inc d                                         ; $6031: $14
    nop                                           ; $6032: $00
    nop                                           ; $6033: $00
    inc c                                         ; $6034: $0c
    nop                                           ; $6035: $00
    add hl, bc                                    ; $6036: $09
    rlca                                          ; $6037: $07
    ld de, $85ff                                  ; $6038: $11 $ff $85
    inc b                                         ; $603b: $04
    nop                                           ; $603c: $00
    nop                                           ; $603d: $00
    nop                                           ; $603e: $00
    jr nz, jr_00f_604e                            ; $603f: $20 $0d

    nop                                           ; $6041: $00
    ld c, $03                                     ; $6042: $0e $03
    inc c                                         ; $6044: $0c
    ld [bc], a                                    ; $6045: $02
    db $10                                        ; $6046: $10
    ld h, b                                       ; $6047: $60
    ld a, [bc]                                    ; $6048: $0a
    ld bc, $0609                                  ; $6049: $01 $09 $06
    inc b                                         ; $604c: $04
    nop                                           ; $604d: $00

jr_00f_604e:
    nop                                           ; $604e: $00
    nop                                           ; $604f: $00
    dec bc                                        ; $6050: $0b
    inc c                                         ; $6051: $0c
    rst $38                                       ; $6052: $ff
    db $10                                        ; $6053: $10
    ld [hl], b                                    ; $6054: $70
    ld a, [bc]                                    ; $6055: $0a
    ld bc, $0809                                  ; $6056: $01 $09 $08
    inc b                                         ; $6059: $04
    nop                                           ; $605a: $00
    nop                                           ; $605b: $00
    nop                                           ; $605c: $00
    ld c, $10                                     ; $605d: $0e $10
    adc d                                         ; $605f: $8a
    ld a, [bc]                                    ; $6060: $0a
    ld bc, $0809                                  ; $6061: $01 $09 $08
    inc b                                         ; $6064: $04
    nop                                           ; $6065: $00
    nop                                           ; $6066: $00
    nop                                           ; $6067: $00
    jr nz, jr_00f_607a                            ; $6068: $20 $10

    add b                                         ; $606a: $80
    ld a, [bc]                                    ; $606b: $0a
    ld bc, $0509                                  ; $606c: $01 $09 $05
    inc b                                         ; $606f: $04
    nop                                           ; $6070: $00
    nop                                           ; $6071: $00
    nop                                           ; $6072: $00
    ld b, $10                                     ; $6073: $06 $10
    add b                                         ; $6075: $80
    ld a, [bc]                                    ; $6076: $0a
    ld bc, $0309                                  ; $6077: $01 $09 $03

jr_00f_607a:
    inc b                                         ; $607a: $04
    nop                                           ; $607b: $00
    nop                                           ; $607c: $00
    nop                                           ; $607d: $00
    ld b, $0d                                     ; $607e: $06 $0d
    nop                                           ; $6080: $00
    ld c, $00                                     ; $6081: $0e $00
    jr jr_00f_608a                                ; $6083: $18 $05

    db $eb                                        ; $6085: $eb
    inc c                                         ; $6086: $0c
    rst $38                                       ; $6087: $ff
    rlca                                          ; $6088: $07
    inc h                                         ; $6089: $24

jr_00f_608a:
    nop                                           ; $608a: $00
    inc b                                         ; $608b: $04
    ld bc, $0000                                  ; $608c: $01 $00 $00
    ld a, [de]                                    ; $608f: $1a
    ld [$9c00], sp                                ; $6090: $08 $00 $9c
    ld [bc], a                                    ; $6093: $02
    inc b                                         ; $6094: $04
    ld bc, $0000                                  ; $6095: $01 $00 $00
    ld a, [de]                                    ; $6098: $1a
    inc d                                         ; $6099: $14
    db $ec                                        ; $609a: $ec
    ld c, l                                       ; $609b: $4d
    inc b                                         ; $609c: $04
    ld bc, $0000                                  ; $609d: $01 $00 $00
    ld a, [de]                                    ; $60a0: $1a
    dec c                                         ; $60a1: $0d
    nop                                           ; $60a2: $00
    ld c, $00                                     ; $60a3: $0e $00
    ld a, [bc]                                    ; $60a5: $0a
    ld bc, $2007                                  ; $60a6: $01 $07 $20
    nop                                           ; $60a9: $00
    inc bc                                        ; $60aa: $03
    ld b, $00                                     ; $60ab: $06 $00
    inc a                                         ; $60ad: $3c
    nop                                           ; $60ae: $00
    nop                                           ; $60af: $00
    add hl, bc                                    ; $60b0: $09
    ld a, [bc]                                    ; $60b1: $0a
    inc c                                         ; $60b2: $0c
    ld bc, $0313                                  ; $60b3: $01 $13 $03
    inc b                                         ; $60b6: $04
    nop                                           ; $60b7: $00
    nop                                           ; $60b8: $00
    nop                                           ; $60b9: $00
    ld [hl-], a                                   ; $60ba: $32
    dec c                                         ; $60bb: $0d
    nop                                           ; $60bc: $00
    ld c, $01                                     ; $60bd: $0e $01
    inc c                                         ; $60bf: $0c
    nop                                           ; $60c0: $00
    rlca                                          ; $60c1: $07
    inc h                                         ; $60c2: $24
    nop                                           ; $60c3: $00
    ld [bc], a                                    ; $60c4: $02
    ld [$0000], sp                                ; $60c5: $08 $00 $00
    inc de                                        ; $60c8: $13
    nop                                           ; $60c9: $00
    inc bc                                        ; $60ca: $03
    ccf                                           ; $60cb: $3f
    add b                                         ; $60cc: $80
    ld a, a                                       ; $60cd: $7f
    nop                                           ; $60ce: $00
    add b                                         ; $60cf: $80
    inc bc                                        ; $60d0: $03
    nop                                           ; $60d1: $00
    ei                                            ; $60d2: $fb
    inc a                                         ; $60d3: $3c
    nop                                           ; $60d4: $00
    add b                                         ; $60d5: $80
    inc b                                         ; $60d6: $04
    ld bc, $0000                                  ; $60d7: $01 $00 $00
    ld a, [de]                                    ; $60da: $1a
    dec c                                         ; $60db: $0d
    nop                                           ; $60dc: $00
    ld c, $03                                     ; $60dd: $0e $03
    inc c                                         ; $60df: $0c
    nop                                           ; $60e0: $00
    db $10                                        ; $60e1: $10
    ld d, b                                       ; $60e2: $50
    inc de                                        ; $60e3: $13
    add hl, bc                                    ; $60e4: $09
    inc b                                         ; $60e5: $04
    nop                                           ; $60e6: $00
    nop                                           ; $60e7: $00
    nop                                           ; $60e8: $00
    ld c, $0d                                     ; $60e9: $0e $0d
    nop                                           ; $60eb: $00
    ld c, $03                                     ; $60ec: $0e $03
    inc c                                         ; $60ee: $0c
    ld [bc], a                                    ; $60ef: $02
    db $10                                        ; $60f0: $10
    ld d, c                                       ; $60f1: $51
    add hl, bc                                    ; $60f2: $09
    rrca                                          ; $60f3: $0f
    daa                                           ; $60f4: $27
    nop                                           ; $60f5: $00
    ld c, [hl]                                    ; $60f6: $4e
    inc b                                         ; $60f7: $04
    nop                                           ; $60f8: $00
    nop                                           ; $60f9: $00
    nop                                           ; $60fa: $00
    ld a, $26                                     ; $60fb: $3e $26
    ld bc, $0942                                  ; $60fd: $01 $42 $09
    ld bc, $0004                                  ; $6100: $01 $04 $00
    nop                                           ; $6103: $00
    nop                                           ; $6104: $00
    ld a, $0d                                     ; $6105: $3e $0d
    nop                                           ; $6107: $00
    ld c, $02                                     ; $6108: $0e $02
    ld h, $00                                     ; $610a: $26 $00
    ld e, e                                       ; $610c: $5b
    ld a, [bc]                                    ; $610d: $0a
    ld bc, $0f09                                  ; $610e: $01 $09 $0f
    inc bc                                        ; $6111: $03
    nop                                           ; $6112: $00
    ei                                            ; $6113: $fb
    inc a                                         ; $6114: $3c
    nop                                           ; $6115: $00
    nop                                           ; $6116: $00
    ld hl, $0423                                  ; $6117: $21 $23 $04
    nop                                           ; $611a: $00
    nop                                           ; $611b: $00
    nop                                           ; $611c: $00
    jr c, jr_00f_612c                             ; $611d: $38 $0d

    nop                                           ; $611f: $00
    ld c, $03                                     ; $6120: $0e $03
    inc c                                         ; $6122: $0c
    rst $38                                       ; $6123: $ff
    db $10                                        ; $6124: $10
    adc b                                         ; $6125: $88
    ld a, [bc]                                    ; $6126: $0a
    ld bc, $0609                                  ; $6127: $01 $09 $06
    inc b                                         ; $612a: $04
    nop                                           ; $612b: $00

jr_00f_612c:
    nop                                           ; $612c: $00
    nop                                           ; $612d: $00
    dec bc                                        ; $612e: $0b
    inc c                                         ; $612f: $0c
    rst $38                                       ; $6130: $ff
    db $10                                        ; $6131: $10
    ld [hl], b                                    ; $6132: $70
    ld a, [bc]                                    ; $6133: $0a
    ld bc, $0809                                  ; $6134: $01 $09 $08
    inc b                                         ; $6137: $04
    nop                                           ; $6138: $00
    nop                                           ; $6139: $00
    nop                                           ; $613a: $00
    ld c, $10                                     ; $613b: $0e $10
    adc e                                         ; $613d: $8b
    ld a, [bc]                                    ; $613e: $0a
    ld bc, $0809                                  ; $613f: $01 $09 $08
    inc b                                         ; $6142: $04
    nop                                           ; $6143: $00
    nop                                           ; $6144: $00
    nop                                           ; $6145: $00
    jr nz, jr_00f_6158                            ; $6146: $20 $10

    add b                                         ; $6148: $80
    ld a, [bc]                                    ; $6149: $0a
    ld bc, $0509                                  ; $614a: $01 $09 $05
    inc b                                         ; $614d: $04
    nop                                           ; $614e: $00
    nop                                           ; $614f: $00
    nop                                           ; $6150: $00
    ld b, $10                                     ; $6151: $06 $10
    add b                                         ; $6153: $80
    ld a, [bc]                                    ; $6154: $0a
    ld bc, $0309                                  ; $6155: $01 $09 $03

jr_00f_6158:
    inc b                                         ; $6158: $04
    nop                                           ; $6159: $00
    nop                                           ; $615a: $00
    nop                                           ; $615b: $00
    ld b, $0d                                     ; $615c: $06 $0d
    nop                                           ; $615e: $00
    ld c, $02                                     ; $615f: $0e $02
    add hl, bc                                    ; $6161: $09
    rrca                                          ; $6162: $0f
    ld hl, $041d                                  ; $6163: $21 $1d $04
    ld bc, $0000                                  ; $6166: $01 $00 $00
    inc d                                         ; $6169: $14
    dec c                                         ; $616a: $0d
    nop                                           ; $616b: $00
    ld c, $03                                     ; $616c: $0e $03
    ld a, [bc]                                    ; $616e: $0a
    ld bc, $0f09                                  ; $616f: $01 $09 $0f
    inc c                                         ; $6172: $0c
    nop                                           ; $6173: $00
    db $10                                        ; $6174: $10
    adc c                                         ; $6175: $89
    inc b                                         ; $6176: $04
    nop                                           ; $6177: $00
    nop                                           ; $6178: $00
    nop                                           ; $6179: $00
    ld [bc], a                                    ; $617a: $02
    add hl, bc                                    ; $617b: $09
    rlca                                          ; $617c: $07
    db $10                                        ; $617d: $10
    ld l, b                                       ; $617e: $68
    inc b                                         ; $617f: $04
    nop                                           ; $6180: $00
    nop                                           ; $6181: $00
    nop                                           ; $6182: $00
    inc bc                                        ; $6183: $03
    db $10                                        ; $6184: $10
    jr c, @+$13                                   ; $6185: $38 $11

    ld hl, sp-$80                                 ; $6187: $f8 $80
    inc b                                         ; $6189: $04
    nop                                           ; $618a: $00
    nop                                           ; $618b: $00
    nop                                           ; $618c: $00
    inc bc                                        ; $618d: $03
    dec c                                         ; $618e: $0d
    nop                                           ; $618f: $00
    ld c, $00                                     ; $6190: $0e $00
    rlca                                          ; $6192: $07
    inc a                                         ; $6193: $3c
    nop                                           ; $6194: $00
    inc c                                         ; $6195: $0c
    ld bc, $0f09                                  ; $6196: $01 $09 $0f
    ld a, [bc]                                    ; $6199: $0a
    ld bc, $0001                                  ; $619a: $01 $01 $00
    nop                                           ; $619d: $00
    dec b                                         ; $619e: $05
    inc b                                         ; $619f: $04
    nop                                           ; $61a0: $00
    nop                                           ; $61a1: $00
    nop                                           ; $61a2: $00
    ld [bc], a                                    ; $61a3: $02
    add hl, bc                                    ; $61a4: $09
    ld b, $27                                     ; $61a5: $06 $27
    ld [bc], a                                    ; $61a7: $02
    inc h                                         ; $61a8: $24
    inc bc                                        ; $61a9: $03
    ld [$2800], sp                                ; $61aa: $08 $00 $28
    nop                                           ; $61ad: $00
    nop                                           ; $61ae: $00
    inc b                                         ; $61af: $04
    nop                                           ; $61b0: $00
    nop                                           ; $61b1: $00
    nop                                           ; $61b2: $00
    ld c, $0d                                     ; $61b3: $0e $0d
    nop                                           ; $61b5: $00
    ld c, $00                                     ; $61b6: $0e $00
    ld a, [bc]                                    ; $61b8: $0a
    ld bc, $0f09                                  ; $61b9: $01 $09 $0f
    jr @+$0d                                      ; $61bc: $18 $0b

    db $fc                                        ; $61be: $fc
    inc c                                         ; $61bf: $0c
    nop                                           ; $61c0: $00
    rlca                                          ; $61c1: $07
    ld c, e                                       ; $61c2: $4b
    nop                                           ; $61c3: $00
    inc b                                         ; $61c4: $04
    nop                                           ; $61c5: $00
    nop                                           ; $61c6: $00
    nop                                           ; $61c7: $00
    ld de, $0a09                                  ; $61c8: $11 $09 $0a
    rlca                                          ; $61cb: $07
    ld b, [hl]                                    ; $61cc: $46
    inc d                                         ; $61cd: $14
    inc b                                         ; $61ce: $04
    nop                                           ; $61cf: $00
    nop                                           ; $61d0: $00
    nop                                           ; $61d1: $00
    ld de, $0a05                                  ; $61d2: $11 $05 $0a
    rst $38                                       ; $61d5: $ff
    rst $18                                       ; $61d6: $df
    dec c                                         ; $61d7: $0d
    nop                                           ; $61d8: $00

    db $0e, $02, $09, $0f, $0a, $01, $21, $1e, $04, $01, $00, $00, $00

    dec c                                         ; $61e6: $0d
    nop                                           ; $61e7: $00
    ld c, $02                                     ; $61e8: $0e $02
    add hl, bc                                    ; $61ea: $09
    rrca                                          ; $61eb: $0f
    ld a, [bc]                                    ; $61ec: $0a
    ld bc, $1f21                                  ; $61ed: $01 $21 $1f
    inc b                                         ; $61f0: $04
    ld bc, $0000                                  ; $61f1: $01 $00 $00
    nop                                           ; $61f4: $00
    dec c                                         ; $61f5: $0d
    nop                                           ; $61f6: $00
    ld c, $02                                     ; $61f7: $0e $02
    add hl, bc                                    ; $61f9: $09
    rrca                                          ; $61fa: $0f
    ld hl, $040b                                  ; $61fb: $21 $0b $04
    nop                                           ; $61fe: $00
    nop                                           ; $61ff: $00
    nop                                           ; $6200: $00
    ld [$0c21], sp                                ; $6201: $08 $21 $0c
    inc b                                         ; $6204: $04
    nop                                           ; $6205: $00
    nop                                           ; $6206: $00
    nop                                           ; $6207: $00
    ld [$0a21], sp                                ; $6208: $08 $21 $0a
    inc b                                         ; $620b: $04
    nop                                           ; $620c: $00
    nop                                           ; $620d: $00
    nop                                           ; $620e: $00
    inc d                                         ; $620f: $14
    ld hl, $0409                                  ; $6210: $21 $09 $04
    nop                                           ; $6213: $00
    nop                                           ; $6214: $00
    nop                                           ; $6215: $00
    ld a, $0d                                     ; $6216: $3e $0d
    nop                                           ; $6218: $00
    ld c, $02                                     ; $6219: $0e $02
    add hl, bc                                    ; $621b: $09
    rrca                                          ; $621c: $0f
    ld hl, $0420                                  ; $621d: $21 $20 $04
    ld bc, $0000                                  ; $6220: $01 $00 $00
    nop                                           ; $6223: $00
    dec c                                         ; $6224: $0d
    nop                                           ; $6225: $00
    ld c, $02                                     ; $6226: $0e $02
    add hl, bc                                    ; $6228: $09
    rrca                                          ; $6229: $0f
    ld hl, $0421                                  ; $622a: $21 $21 $04
    ld bc, $0100                                  ; $622d: $01 $00 $01
    ld l, $0d                                     ; $6230: $2e $0d
    nop                                           ; $6232: $00
    ld c, $02                                     ; $6233: $0e $02
    add hl, bc                                    ; $6235: $09
    rrca                                          ; $6236: $0f
    dec e                                         ; $6237: $1d
    nop                                           ; $6238: $00
    rrca                                          ; $6239: $0f
    nop                                           ; $623a: $00
    inc bc                                        ; $623b: $03
    ld a, [bc]                                    ; $623c: $0a
    ld bc, $010c                                  ; $623d: $01 $0c $01
    ld bc, $cc00                                  ; $6240: $01 $00 $cc
    dec b                                         ; $6243: $05
    inc b                                         ; $6244: $04
    nop                                           ; $6245: $00
    nop                                           ; $6246: $00
    nop                                           ; $6247: $00
    ld [bc], a                                    ; $6248: $02
    add hl, bc                                    ; $6249: $09
    add hl, bc                                    ; $624a: $09
    rlca                                          ; $624b: $07
    ld d, h                                       ; $624c: $54
    nop                                           ; $624d: $00
    daa                                           ; $624e: $27
    inc bc                                        ; $624f: $03
    ret nz                                        ; $6250: $c0

    inc b                                         ; $6251: $04
    nop                                           ; $6252: $00
    nop                                           ; $6253: $00
    nop                                           ; $6254: $00
    dec b                                         ; $6255: $05
    dec c                                         ; $6256: $0d
    nop                                           ; $6257: $00
    ld c, $00                                     ; $6258: $0e $00
    inc c                                         ; $625a: $0c
    rst $38                                       ; $625b: $ff
    add hl, bc                                    ; $625c: $09
    rrca                                          ; $625d: $0f
    inc bc                                        ; $625e: $03
    ld bc, $0a6d                                  ; $625f: $01 $6d $0a
    nop                                           ; $6262: $00
    nop                                           ; $6263: $00
    inc b                                         ; $6264: $04
    ld bc, $0000                                  ; $6265: $01 $00 $00
    ld [$000d], sp                                ; $6268: $08 $0d $00

    db $0e, $03, $0c, $ff, $10, $70, $0a, $01, $09, $06, $04, $00, $00, $00, $08, $0c
    db $ff, $10, $50, $0a, $01, $09, $08, $04, $00, $00, $00, $0b, $10, $40, $0a, $01
    db $09, $08, $04, $00, $00, $00, $20, $10, $40, $0a, $01, $09, $05, $04, $00, $00
    db $00, $06, $10, $40, $0a, $01, $09, $03, $04, $00, $00, $00, $06, $0d, $00

    ld c, $03                                     ; $62aa: $0e $03
    inc c                                         ; $62ac: $0c
    rst $38                                       ; $62ad: $ff
    db $10                                        ; $62ae: $10
    ld h, b                                       ; $62af: $60
    ld a, [bc]                                    ; $62b0: $0a
    ld bc, $0609                                  ; $62b1: $01 $09 $06
    inc b                                         ; $62b4: $04
    nop                                           ; $62b5: $00
    nop                                           ; $62b6: $00
    nop                                           ; $62b7: $00
    ld [$ff0c], sp                                ; $62b8: $08 $0c $ff
    db $10                                        ; $62bb: $10
    ld [hl], b                                    ; $62bc: $70
    ld a, [bc]                                    ; $62bd: $0a
    ld bc, $0809                                  ; $62be: $01 $09 $08
    inc b                                         ; $62c1: $04
    nop                                           ; $62c2: $00
    nop                                           ; $62c3: $00
    nop                                           ; $62c4: $00
    ld c, $10                                     ; $62c5: $0e $10
    add b                                         ; $62c7: $80
    ld a, [bc]                                    ; $62c8: $0a
    ld bc, $0809                                  ; $62c9: $01 $09 $08
    inc b                                         ; $62cc: $04
    nop                                           ; $62cd: $00
    nop                                           ; $62ce: $00
    nop                                           ; $62cf: $00
    jr nz, jr_00f_62e2                            ; $62d0: $20 $10

    add b                                         ; $62d2: $80
    ld a, [bc]                                    ; $62d3: $0a
    ld bc, $0509                                  ; $62d4: $01 $09 $05
    inc b                                         ; $62d7: $04
    nop                                           ; $62d8: $00
    nop                                           ; $62d9: $00
    nop                                           ; $62da: $00
    ld b, $10                                     ; $62db: $06 $10
    add b                                         ; $62dd: $80
    ld a, [bc]                                    ; $62de: $0a
    ld bc, $0309                                  ; $62df: $01 $09 $03

jr_00f_62e2:
    inc b                                         ; $62e2: $04
    nop                                           ; $62e3: $00
    nop                                           ; $62e4: $00
    nop                                           ; $62e5: $00
    ld b, $0d                                     ; $62e6: $06 $0d
    nop                                           ; $62e8: $00
    ld c, $03                                     ; $62e9: $0e $03
    inc c                                         ; $62eb: $0c
    rst $38                                       ; $62ec: $ff
    db $10                                        ; $62ed: $10
    ld d, b                                       ; $62ee: $50
    ld a, [bc]                                    ; $62ef: $0a
    ld bc, $0809                                  ; $62f0: $01 $09 $08
    inc b                                         ; $62f3: $04
    nop                                           ; $62f4: $00
    nop                                           ; $62f5: $00
    nop                                           ; $62f6: $00
    ld b, $0c                                     ; $62f7: $06 $0c
    rst $38                                       ; $62f9: $ff
    db $10                                        ; $62fa: $10
    ld h, b                                       ; $62fb: $60
    ld a, [bc]                                    ; $62fc: $0a
    ld bc, $0809                                  ; $62fd: $01 $09 $08
    inc b                                         ; $6300: $04
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    ld [$7010], sp                                ; $6304: $08 $10 $70
    ld a, [bc]                                    ; $6307: $0a
    ld bc, $0809                                  ; $6308: $01 $09 $08
    inc b                                         ; $630b: $04
    nop                                           ; $630c: $00
    nop                                           ; $630d: $00
    nop                                           ; $630e: $00
    ld c, $10                                     ; $630f: $0e $10
    ld [hl], b                                    ; $6311: $70
    ld a, [bc]                                    ; $6312: $0a
    ld bc, $0509                                  ; $6313: $01 $09 $05
    inc b                                         ; $6316: $04
    nop                                           ; $6317: $00
    nop                                           ; $6318: $00
    nop                                           ; $6319: $00
    ld b, $10                                     ; $631a: $06 $10
    ld [hl], b                                    ; $631c: $70
    ld a, [bc]                                    ; $631d: $0a
    ld bc, $0309                                  ; $631e: $01 $09 $03
    inc b                                         ; $6321: $04
    nop                                           ; $6322: $00
    nop                                           ; $6323: $00
    nop                                           ; $6324: $00
    ld b, $0d                                     ; $6325: $06 $0d
    nop                                           ; $6327: $00
    ld c, $03                                     ; $6328: $0e $03
    inc c                                         ; $632a: $0c
    rst $38                                       ; $632b: $ff
    db $10                                        ; $632c: $10
    ld [hl], b                                    ; $632d: $70
    ld a, [bc]                                    ; $632e: $0a
    ld bc, $0809                                  ; $632f: $01 $09 $08
    inc b                                         ; $6332: $04
    nop                                           ; $6333: $00
    nop                                           ; $6334: $00
    nop                                           ; $6335: $00
    ld b, $0c                                     ; $6336: $06 $0c
    rst $38                                       ; $6338: $ff
    db $10                                        ; $6339: $10
    ld h, b                                       ; $633a: $60
    ld a, [bc]                                    ; $633b: $0a
    ld bc, $0809                                  ; $633c: $01 $09 $08
    inc b                                         ; $633f: $04
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    ld [$5010], sp                                ; $6343: $08 $10 $50
    ld a, [bc]                                    ; $6346: $0a
    ld bc, $0809                                  ; $6347: $01 $09 $08
    inc b                                         ; $634a: $04
    nop                                           ; $634b: $00
    nop                                           ; $634c: $00
    nop                                           ; $634d: $00
    ld c, $10                                     ; $634e: $0e $10
    ld d, b                                       ; $6350: $50
    ld a, [bc]                                    ; $6351: $0a
    ld bc, $0509                                  ; $6352: $01 $09 $05
    inc b                                         ; $6355: $04
    nop                                           ; $6356: $00
    nop                                           ; $6357: $00
    nop                                           ; $6358: $00
    ld b, $10                                     ; $6359: $06 $10
    ld d, b                                       ; $635b: $50
    ld a, [bc]                                    ; $635c: $0a
    ld bc, $0309                                  ; $635d: $01 $09 $03
    inc b                                         ; $6360: $04
    nop                                           ; $6361: $00
    nop                                           ; $6362: $00
    nop                                           ; $6363: $00
    ld b, $0d                                     ; $6364: $06 $0d
    nop                                           ; $6366: $00
    ld c, $00                                     ; $6367: $0e $00
    ld h, $03                                     ; $6369: $26 $03
    dec c                                         ; $636b: $0d
    inc b                                         ; $636c: $04
    nop                                           ; $636d: $00
    nop                                           ; $636e: $00
    nop                                           ; $636f: $00
    ld a, $26                                     ; $6370: $3e $26
    nop                                           ; $6372: $00
    db $10                                        ; $6373: $10
    inc b                                         ; $6374: $04
    nop                                           ; $6375: $00
    nop                                           ; $6376: $00
    nop                                           ; $6377: $00
    ld [hl-], a                                   ; $6378: $32
    ld h, $02                                     ; $6379: $26 $02
    ld b, l                                       ; $637b: $45
    inc b                                         ; $637c: $04
    nop                                           ; $637d: $00
    nop                                           ; $637e: $00
    nop                                           ; $637f: $00
    ld c, $26                                     ; $6380: $0e $26
    ld [bc], a                                    ; $6382: $02
    rrca                                          ; $6383: $0f
    dec c                                         ; $6384: $0d
    nop                                           ; $6385: $00
    ld c, $02                                     ; $6386: $0e $02
    add hl, bc                                    ; $6388: $09
    ld bc, $2807                                  ; $6389: $01 $07 $28
    nop                                           ; $638c: $00
    dec e                                         ; $638d: $1d
    ld bc, $0003                                  ; $638e: $01 $03 $00
    inc sp                                        ; $6391: $33
    inc c                                         ; $6392: $0c
    nop                                           ; $6393: $00
    ld de, $67ff                                  ; $6394: $11 $ff $67
    ld bc, $9307                                  ; $6397: $01 $07 $93
    ld [bc], a                                    ; $639a: $02
    inc b                                         ; $639b: $04
    nop                                           ; $639c: $00
    nop                                           ; $639d: $00
    nop                                           ; $639e: $00
    ld [hl-], a                                   ; $639f: $32
    inc de                                        ; $63a0: $13
    ld bc, $3c07                                  ; $63a1: $01 $07 $3c
    nop                                           ; $63a4: $00
    dec e                                         ; $63a5: $1d
    inc bc                                        ; $63a6: $03
    inc bc                                        ; $63a7: $03
    nop                                           ; $63a8: $00
    nop                                           ; $63a9: $00
    add hl, bc                                    ; $63aa: $09
    ld b, $0c                                     ; $63ab: $06 $0c
    nop                                           ; $63ad: $00
    ld de, $dcfd                                  ; $63ae: $11 $fd $dc
    ld bc, $9307                                  ; $63b1: $01 $07 $93
    ld [bc], a                                    ; $63b4: $02
    inc b                                         ; $63b5: $04
    nop                                           ; $63b6: $00
    nop                                           ; $63b7: $00
    nop                                           ; $63b8: $00
    ld c, $13                                     ; $63b9: $0e $13
    ld bc, $000d                                  ; $63bb: $01 $0d $00
    ld c, $01                                     ; $63be: $0e $01
    ld a, [bc]                                    ; $63c0: $0a
    ld bc, $000c                                  ; $63c1: $01 $0c $00
    rlca                                          ; $63c4: $07
    inc h                                         ; $63c5: $24
    nop                                           ; $63c6: $00
    add hl, bc                                    ; $63c7: $09
    rrca                                          ; $63c8: $0f
    daa                                           ; $63c9: $27
    nop                                           ; $63ca: $00
    jp z, Jump_000_0004                           ; $63cb: $ca $04 $00

    nop                                           ; $63ce: $00
    nop                                           ; $63cf: $00
    inc d                                         ; $63d0: $14
    dec c                                         ; $63d1: $0d
    add hl, bc                                    ; $63d2: $09
    dec bc                                        ; $63d3: $0b
    inc c                                         ; $63d4: $0c
    ld [bc], a                                    ; $63d5: $02
    rlca                                          ; $63d6: $07
    ld d, b                                       ; $63d7: $50
    sbc d                                         ; $63d8: $9a
    ld de, $c2ff                                  ; $63d9: $11 $ff $c2
    ld bc, $0019                                  ; $63dc: $01 $19 $00
    inc b                                         ; $63df: $04
    inc b                                         ; $63e0: $04
    nop                                           ; $63e1: $00
    nop                                           ; $63e2: $00
    nop                                           ; $63e3: $00
    ld c, d                                       ; $63e4: $4a
    dec c                                         ; $63e5: $0d
    nop                                           ; $63e6: $00
    ld c, $02                                     ; $63e7: $0e $02
    ld a, [bc]                                    ; $63e9: $0a
    ld bc, $051d                                  ; $63ea: $01 $1d $05
    ld c, $04                                     ; $63ed: $0e $04
    add b                                         ; $63ef: $80
    rlca                                          ; $63f0: $07
    ld h, d                                       ; $63f1: $62
    nop                                           ; $63f2: $00
    add hl, bc                                    ; $63f3: $09
    dec c                                         ; $63f4: $0d
    daa                                           ; $63f5: $27
    nop                                           ; $63f6: $00
    jp z, Jump_000_0004                           ; $63f7: $ca $04 $00

    nop                                           ; $63fa: $00
    nop                                           ; $63fb: $00
    inc d                                         ; $63fc: $14
    dec c                                         ; $63fd: $0d
    inc c                                         ; $63fe: $0c
    nop                                           ; $63ff: $00
    add hl, bc                                    ; $6400: $09
    dec c                                         ; $6401: $0d
    ld de, $85ff                                  ; $6402: $11 $ff $85
    inc b                                         ; $6405: $04
    nop                                           ; $6406: $00
    nop                                           ; $6407: $00
    nop                                           ; $6408: $00
    jr nz, @+$0f                                  ; $6409: $20 $0d

    nop                                           ; $640b: $00
    ld c, $03                                     ; $640c: $0e $03
    db $10                                        ; $640e: $10
    ld b, l                                       ; $640f: $45
    inc c                                         ; $6410: $0c
    nop                                           ; $6411: $00
    add hl, bc                                    ; $6412: $09
    rrca                                          ; $6413: $0f
    daa                                           ; $6414: $27
    nop                                           ; $6415: $00
    jp z, Jump_000_0004                           ; $6416: $ca $04 $00

    nop                                           ; $6419: $00
    nop                                           ; $641a: $00
    inc d                                         ; $641b: $14
    add hl, bc                                    ; $641c: $09
    rrca                                          ; $641d: $0f
    db $10                                        ; $641e: $10
    ld sp, $fe11                                  ; $641f: $31 $11 $fe
    reti                                          ; $6422: $d9


    inc b                                         ; $6423: $04
    nop                                           ; $6424: $00
    nop                                           ; $6425: $00
    nop                                           ; $6426: $00
    ld b, $10                                     ; $6427: $06 $10
    ld b, d                                       ; $6429: $42
    add hl, bc                                    ; $642a: $09
    inc c                                         ; $642b: $0c
    ld de, $36ff                                  ; $642c: $11 $ff $36
    inc b                                         ; $642f: $04
    nop                                           ; $6430: $00
    nop                                           ; $6431: $00
    nop                                           ; $6432: $00
    jr nz, jr_00f_6442                            ; $6433: $20 $0d

    nop                                           ; $6435: $00
    ld c, $00                                     ; $6436: $0e $00
    ld a, [bc]                                    ; $6438: $0a
    ld bc, $4007                                  ; $6439: $01 $07 $40
    nop                                           ; $643c: $00
    inc bc                                        ; $643d: $03
    ld b, $00                                     ; $643e: $06 $00
    inc a                                         ; $6440: $3c
    nop                                           ; $6441: $00

jr_00f_6442:
    nop                                           ; $6442: $00
    add hl, bc                                    ; $6443: $09
    ld a, [bc]                                    ; $6444: $0a
    inc c                                         ; $6445: $0c
    ld bc, $0313                                  ; $6446: $01 $13 $03
    inc b                                         ; $6449: $04
    nop                                           ; $644a: $00
    nop                                           ; $644b: $00
    nop                                           ; $644c: $00
    ld [hl-], a                                   ; $644d: $32
    dec c                                         ; $644e: $0d
    nop                                           ; $644f: $00
    ld c, $01                                     ; $6450: $0e $01
    ld h, $00                                     ; $6452: $26 $00
    ld d, h                                       ; $6454: $54
    add hl, bc                                    ; $6455: $09
    rlca                                          ; $6456: $07
    rlca                                          ; $6457: $07
    ld e, $00                                     ; $6458: $1e $00
    ld a, [bc]                                    ; $645a: $0a
    ld bc, $0001                                  ; $645b: $01 $01 $00
    add hl, de                                    ; $645e: $19
    dec a                                         ; $645f: $3d
    daa                                           ; $6460: $27
    nop                                           ; $6461: $00
    ld a, e                                       ; $6462: $7b
    inc c                                         ; $6463: $0c
    ld bc, $0004                                  ; $6464: $01 $04 $00
    nop                                           ; $6467: $00
    nop                                           ; $6468: $00
    ld a, $0d                                     ; $6469: $3e $0d
    nop                                           ; $646b: $00
    ld c, $02                                     ; $646c: $0e $02
    ld a, [bc]                                    ; $646e: $0a
    ld bc, $0f09                                  ; $646f: $01 $09 $0f
    ld hl, $0422                                  ; $6472: $21 $22 $04
    nop                                           ; $6475: $00
    nop                                           ; $6476: $00
    nop                                           ; $6477: $00
    ld h, $0d                                     ; $6478: $26 $0d
    nop                                           ; $647a: $00

    db $0e, $00, $09, $01, $0a, $01, $0c, $02, $07, $71, $00, $01, $00, $12, $05, $04
    db $00, $00, $00, $05, $07, $72, $00, $09, $01, $04, $00, $00, $00, $05, $07, $73
    db $00, $04, $00, $00, $00, $05, $09, $03, $07, $74, $00, $04, $00, $00, $00, $03
    db $13, $01, $09, $05, $07, $74, $00, $04, $00, $00, $00, $03, $13, $01, $09, $06
    db $07, $75, $00, $04, $00, $00, $00, $05, $13, $01, $09, $07, $07, $76, $00, $04
    db $00, $00, $00, $03, $13, $01, $09, $0b, $07, $77, $00, $04, $00, $00, $00, $03
    db $13, $01, $05, $06, $ff, $f2, $0d, $00, $0e, $02, $26, $00, $5b, $0a, $01, $09
    db $0f, $21, $23, $04, $00, $00, $00, $38, $0d, $00

    ld c, $01                                     ; $64f5: $0e $01
    ld h, $00                                     ; $64f7: $26 $00
    ld e, [hl]                                    ; $64f9: $5e
    add hl, bc                                    ; $64fa: $09
    dec c                                         ; $64fb: $0d
    ld a, [bc]                                    ; $64fc: $0a
    nop                                           ; $64fd: $00
    inc c                                         ; $64fe: $0c
    ld [bc], a                                    ; $64ff: $02
    rlca                                          ; $6500: $07
    ld b, c                                       ; $6501: $41
    nop                                           ; $6502: $00
    inc bc                                        ; $6503: $03
    nop                                           ; $6504: $00
    ldh a, [rIF]                                  ; $6505: $f0 $0f
    nop                                           ; $6507: $00
    nop                                           ; $6508: $00
    inc b                                         ; $6509: $04
    nop                                           ; $650a: $00
    nop                                           ; $650b: $00
    nop                                           ; $650c: $00
    ld a, $13                                     ; $650d: $3e $13
    inc b                                         ; $650f: $04
    nop                                           ; $6510: $00
    ld c, $00                                     ; $6511: $0e $00
    add hl, bc                                    ; $6513: $09
    ld b, $0a                                     ; $6514: $06 $0a
    nop                                           ; $6516: $00
    inc c                                         ; $6517: $0c
    ld [bc], a                                    ; $6518: $02
    rlca                                          ; $6519: $07
    inc a                                         ; $651a: $3c
    nop                                           ; $651b: $00
    inc bc                                        ; $651c: $03
    nop                                           ; $651d: $00
    add [hl]                                      ; $651e: $86
    ld a, [bc]                                    ; $651f: $0a
    nop                                           ; $6520: $00
    nop                                           ; $6521: $00
    inc b                                         ; $6522: $04
    nop                                           ; $6523: $00
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    ld a, $13                                     ; $6526: $3e $13
    inc b                                         ; $6528: $04
    nop                                           ; $6529: $00
    ld c, $02                                     ; $652a: $0e $02
    ld a, [bc]                                    ; $652c: $0a
    ld bc, $0f09                                  ; $652d: $01 $09 $0f
    ld hl, $0424                                  ; $6530: $21 $24 $04
    nop                                           ; $6533: $00
    nop                                           ; $6534: $00
    nop                                           ; $6535: $00
    inc h                                         ; $6536: $24
    dec c                                         ; $6537: $0d
    nop                                           ; $6538: $00
    ld c, $02                                     ; $6539: $0e $02
    ld a, [bc]                                    ; $653b: $0a
    ld bc, $0f09                                  ; $653c: $01 $09 $0f
    ld hl, $0425                                  ; $653f: $21 $25 $04
    nop                                           ; $6542: $00
    nop                                           ; $6543: $00
    nop                                           ; $6544: $00
    jr z, @+$0f                                   ; $6545: $28 $0d

    nop                                           ; $6547: $00

    db $0e, $03, $0a, $01, $09, $0f, $10, $68, $0c, $00, $13, $01, $04, $00, $00, $00
    db $02, $0c, $00, $10, $88, $13, $01, $04, $00, $00, $00, $02, $09, $0b, $10, $78
    db $0c, $00, $04, $00, $00, $00, $02, $09, $0b, $10, $98, $0c, $00, $13, $01, $04
    db $00, $00, $00, $04, $0c, $00, $10, $a0, $13, $01, $04, $00, $00, $00, $14, $0d
    db $00, $0e, $00, $09, $0f, $0a, $01, $0c, $01, $01, $ff, $99, $02, $09, $0a, $07
    db $55, $00, $27, $03, $c0, $04, $00, $00, $00, $05, $0a, $01, $0c, $01, $01, $ff
    db $99, $02, $09, $09, $07, $55, $00, $27, $02, $24, $04, $00, $00, $00, $08, $09
    db $0c, $0a, $00, $0c, $01, $01, $ff, $99, $02, $09, $08, $07, $55, $00, $27, $01
    db $80, $04, $00, $00, $00, $0b, $09, $0a, $0a, $00, $0c, $01, $01, $ff, $99, $02
    db $09, $06, $07, $55, $00, $27, $00, $f0, $04, $00, $00, $00, $11, $0d, $00, $0e
    db $03, $0a, $01, $09, $0f, $10, $58, $0c, $00, $13, $01, $04, $00, $00, $00, $02
    db $0c, $00, $10, $88, $13, $01, $04, $00, $00, $00, $02, $09, $0b, $10, $78, $0c
    db $00, $04, $00, $00, $00, $02, $09, $06, $10, $98, $0c, $00, $13, $01, $04, $00
    db $00, $00, $04, $0c, $00, $10, $a8, $13, $02, $04, $00, $00, $00, $20, $0d, $00
    db $0e, $00, $09, $0d, $0a, $01, $0c, $02, $07, $64, $00, $01, $00, $12, $05, $04
    db $00, $00, $00, $05, $07, $68, $00, $04, $00, $00, $00, $05, $07, $73, $00, $04
    db $00, $00, $00, $05, $09, $0a, $07, $77, $00, $04, $00, $00, $00, $03, $13, $01
    db $05, $06, $ff, $f0, $0d, $00

    ld c, $02                                     ; $665e: $0e $02
    ld a, [bc]                                    ; $6660: $0a
    ld bc, $0f09                                  ; $6661: $01 $09 $0f
    ld hl, $0426                                  ; $6664: $21 $26 $04
    nop                                           ; $6667: $00
    nop                                           ; $6668: $00
    nop                                           ; $6669: $00
    dec d                                         ; $666a: $15
    nop                                           ; $666b: $00

    db $0e, $02, $07, $70, $00, $0a, $01, $1d, $00, $0f, $0f, $00, $09, $0f, $0c, $01
    db $04, $00, $00, $00, $05, $07, $64, $00, $09, $0f, $1d, $02, $0f, $0d, $00, $04
    db $00, $00, $00, $04, $0d, $00, $0e, $00, $0a, $01, $09, $0f, $0c, $00, $07, $3a
    db $00, $04, $00, $00, $00, $02, $09, $0a, $07, $40, $00, $04, $00, $00, $00, $02
    db $0d, $00, $0e, $01, $0a, $01, $0c, $02, $01, $00, $01, $08, $04, $01, $00, $00
    db $00, $13, $01, $0d, $00, $0e, $02, $0a, $01, $0c, $02, $25, $04, $01, $00, $00
    db $00, $0d, $00

    add hl, bc                                    ; $66cf: $09
    rrca                                          ; $66d0: $0f
    ld a, [bc]                                    ; $66d1: $0a
    ld bc, $5510                                  ; $66d2: $01 $10 $55
    inc c                                         ; $66d5: $0c
    rst $38                                       ; $66d6: $ff
    inc b                                         ; $66d7: $04
    nop                                           ; $66d8: $00
    nop                                           ; $66d9: $00
    nop                                           ; $66da: $00
    ld [bc], a                                    ; $66db: $02
    db $10                                        ; $66dc: $10
    xor b                                         ; $66dd: $a8
    inc b                                         ; $66de: $04
    ld bc, $0000                                  ; $66df: $01 $00 $00
    ld [bc], a                                    ; $66e2: $02
    add hl, bc                                    ; $66e3: $09
    dec b                                         ; $66e4: $05
    db $10                                        ; $66e5: $10
    ld h, a                                       ; $66e6: $67
    inc b                                         ; $66e7: $04
    nop                                           ; $66e8: $00
    nop                                           ; $66e9: $00
    nop                                           ; $66ea: $00
    dec b                                         ; $66eb: $05
    dec c                                         ; $66ec: $0d
    nop                                           ; $66ed: $00

    db $09, $03, $0a, $01, $10, $32, $0c, $ff, $04, $00, $00, $00, $02, $09, $01, $10
    db $41, $04, $01, $00, $00, $03, $09, $01, $04, $00, $00, $00, $03, $0d, $00, $09
    db $06, $0a, $01, $10, $32, $0c, $ff, $04, $00, $00, $00, $02, $09, $02, $10, $41
    db $04, $01, $00, $00, $03, $09, $01, $04, $00, $00, $00, $03, $0d, $00

    db $10                                        ; $672c: $10
    ld [hl-], a                                   ; $672d: $32
    ld a, [bc]                                    ; $672e: $0a
    ld bc, $0b09                                  ; $672f: $01 $09 $0b
    inc c                                         ; $6732: $0c
    rst $38                                       ; $6733: $ff
    inc b                                         ; $6734: $04
    nop                                           ; $6735: $00
    nop                                           ; $6736: $00
    nop                                           ; $6737: $00
    ld [bc], a                                    ; $6738: $02
    add hl, bc                                    ; $6739: $09
    inc bc                                        ; $673a: $03
    db $10                                        ; $673b: $10
    ld b, c                                       ; $673c: $41
    inc b                                         ; $673d: $04
    ld bc, $0000                                  ; $673e: $01 $00 $00
    inc bc                                        ; $6741: $03
    add hl, bc                                    ; $6742: $09
    ld bc, $0004                                  ; $6743: $01 $04 $00
    nop                                           ; $6746: $00
    nop                                           ; $6747: $00
    inc bc                                        ; $6748: $03
    dec c                                         ; $6749: $0d
    nop                                           ; $674a: $00

    db $0e, $01, $0a, $00, $0c, $01, $04, $01, $00, $00, $00, $13, $01, $0d, $00

    add hl, bc                                    ; $675a: $09
    dec bc                                        ; $675b: $0b
    ld a, [bc]                                    ; $675c: $0a
    ld bc, $0210                                  ; $675d: $01 $10 $02
    inc c                                         ; $6760: $0c
    rst $38                                       ; $6761: $ff
    ld de, $00fb                                  ; $6762: $11 $fb $00
    inc b                                         ; $6765: $04
    nop                                           ; $6766: $00
    nop                                           ; $6767: $00
    nop                                           ; $6768: $00
    ld [$000d], sp                                ; $6769: $08 $0d $00
    add hl, bc                                    ; $676c: $09
    ld b, $0a                                     ; $676d: $06 $0a
    ld bc, $3010                                  ; $676f: $01 $10 $30
    inc c                                         ; $6772: $0c
    rst $38                                       ; $6773: $ff
    inc b                                         ; $6774: $04
    nop                                           ; $6775: $00
    nop                                           ; $6776: $00
    nop                                           ; $6777: $00
    inc bc                                        ; $6778: $03
    add hl, bc                                    ; $6779: $09
    inc bc                                        ; $677a: $03
    inc b                                         ; $677b: $04
    nop                                           ; $677c: $00
    nop                                           ; $677d: $00
    nop                                           ; $677e: $00
    ld [$000d], sp                                ; $677f: $08 $0d $00

    db $0e, $03, $15, $2b

    inc c                                         ; $6786: $0c
    db $d6                                        ; $6787: $d6

    db $15, $2a

    inc c                                         ; $678a: $0c
    db $c4                                        ; $678b: $c4

    db $15, $29

    dec c                                         ; $678e: $0d
    dec sp                                        ; $678f: $3b

    db $15, $28

    inc c                                         ; $6792: $0c
    sub [hl]                                      ; $6793: $96

    db $15, $27, $0c, $77, $15, $26, $0c, $58

    dec d                                         ; $679c: $15
    inc h                                         ; $679d: $24
    inc c                                         ; $679e: $0c
    add hl, sp                                    ; $679f: $39
    dec d                                         ; $67a0: $15
    ld [hl+], a                                   ; $67a1: $22
    dec c                                         ; $67a2: $0d
    ld e, d                                       ; $67a3: $5a
    nop                                           ; $67a4: $00
    ld c, $01                                     ; $67a5: $0e $01
    ld a, [bc]                                    ; $67a7: $0a
    ld [bc], a                                    ; $67a8: $02
    inc c                                         ; $67a9: $0c
    ld bc, HeaderLogo                             ; $67aa: $01 $04 $01
    nop                                           ; $67ad: $00
    nop                                           ; $67ae: $00
    nop                                           ; $67af: $00
    inc de                                        ; $67b0: $13
    ld bc, $000d                                  ; $67b1: $01 $0d $00

    db $0e, $00, $0a, $02, $0c, $01, $04, $01, $00, $00, $00, $13, $01, $0d, $00

    ld c, $02                                     ; $67c3: $0e $02
    ld a, [bc]                                    ; $67c5: $0a
    ld bc, $020c                                  ; $67c6: $01 $0c $02
    dec h                                         ; $67c9: $25
    inc b                                         ; $67ca: $04
    ld bc, $0000                                  ; $67cb: $01 $00 $00
    nop                                           ; $67ce: $00
    dec c                                         ; $67cf: $0d
    nop                                           ; $67d0: $00
    add hl, bc                                    ; $67d1: $09
    add hl, bc                                    ; $67d2: $09
    ld a, [bc]                                    ; $67d3: $0a
    ld bc, $4210                                  ; $67d4: $01 $10 $42
    inc c                                         ; $67d7: $0c
    rst $38                                       ; $67d8: $ff
    inc b                                         ; $67d9: $04
    nop                                           ; $67da: $00
    nop                                           ; $67db: $00
    nop                                           ; $67dc: $00
    ld [bc], a                                    ; $67dd: $02
    add hl, bc                                    ; $67de: $09
    inc bc                                        ; $67df: $03
    db $10                                        ; $67e0: $10
    ld b, c                                       ; $67e1: $41
    inc b                                         ; $67e2: $04
    ld bc, $0000                                  ; $67e3: $01 $00 $00
    dec b                                         ; $67e6: $05
    add hl, bc                                    ; $67e7: $09
    ld bc, $0004                                  ; $67e8: $01 $04 $00
    nop                                           ; $67eb: $00
    nop                                           ; $67ec: $00
    dec b                                         ; $67ed: $05
    dec c                                         ; $67ee: $0d
    nop                                           ; $67ef: $00
    add hl, bc                                    ; $67f0: $09
    dec bc                                        ; $67f1: $0b
    db $10                                        ; $67f2: $10
    ld b, l                                       ; $67f3: $45
    ld a, [bc]                                    ; $67f4: $0a
    ld bc, $ff0c                                  ; $67f5: $01 $0c $ff
    inc b                                         ; $67f8: $04
    nop                                           ; $67f9: $00
    nop                                           ; $67fa: $00
    nop                                           ; $67fb: $00
    ld [bc], a                                    ; $67fc: $02
    db $10                                        ; $67fd: $10
    sbc b                                         ; $67fe: $98
    inc b                                         ; $67ff: $04
    nop                                           ; $6800: $00
    nop                                           ; $6801: $00
    nop                                           ; $6802: $00
    ld [bc], a                                    ; $6803: $02
    add hl, bc                                    ; $6804: $09
    dec b                                         ; $6805: $05
    db $10                                        ; $6806: $10
    ld d, a                                       ; $6807: $57
    inc b                                         ; $6808: $04
    nop                                           ; $6809: $00
    nop                                           ; $680a: $00
    nop                                           ; $680b: $00
    dec b                                         ; $680c: $05
    dec c                                         ; $680d: $0d
    nop                                           ; $680e: $00

    db $0e, $01, $0a, $01, $0c, $00, $09, $0c, $04, $00, $00, $00, $05, $01, $00, $06
    db $08, $09, $08, $04, $00, $00, $00, $05, $13, $02, $04, $01, $00, $00, $26, $13
    db $01, $0d, $00

    ld c, $00                                     ; $6832: $0e $00
    ld a, [bc]                                    ; $6834: $0a
    ld bc, $000c                                  ; $6835: $01 $0c $00
    add hl, bc                                    ; $6838: $09
    ld bc, $0913                                  ; $6839: $01 $13 $09
    inc b                                         ; $683c: $04
    nop                                           ; $683d: $00
    nop                                           ; $683e: $00
    nop                                           ; $683f: $00
    ld [$0001], sp                                ; $6840: $08 $01 $00
    ld b, $08                                     ; $6843: $06 $08
    inc b                                         ; $6845: $04
    ld bc, $0000                                  ; $6846: $01 $00 $00
    nop                                           ; $6849: $00
    inc de                                        ; $684a: $13
    ld bc, $000d                                  ; $684b: $01 $0d $00

    db $0e, $00, $0a, $01, $0c, $02, $04, $01, $00, $00, $00, $13, $01, $0d, $00, $0e
    db $00, $0a, $01, $0c, $00, $09, $08, $04, $00, $00, $00, $05, $01, $00, $06, $08
    db $09, $02, $04, $00, $00, $00, $05, $13, $02, $04, $01, $00, $00, $26, $13, $01
    db $0d, $00, $0e, $01, $0a, $01, $0c, $02, $04, $01, $00, $00, $00, $13, $01, $0d
    db $00, $0e, $01, $0c, $00, $09, $01, $0a, $01, $13, $09, $04, $00, $00, $00, $08
    db $01, $00, $06, $08, $04, $01, $00, $00, $00, $13, $01, $0d, $00

    ld c, $00                                     ; $68ab: $0e $00
    ld a, [bc]                                    ; $68ad: $0a
    nop                                           ; $68ae: $00
    inc c                                         ; $68af: $0c
    ld [bc], a                                    ; $68b0: $02
    inc b                                         ; $68b1: $04
    ld bc, $0000                                  ; $68b2: $01 $00 $00
    jr nz, @+$15                                  ; $68b5: $20 $13

    ld bc, $000d                                  ; $68b7: $01 $0d $00
    ld c, $01                                     ; $68ba: $0e $01
    ld a, [bc]                                    ; $68bc: $0a
    ld [bc], a                                    ; $68bd: $02
    ld h, $00                                     ; $68be: $26 $00
    ld a, l                                       ; $68c0: $7d
    inc c                                         ; $68c1: $0c
    ld [bc], a                                    ; $68c2: $02
    ld [$0000], sp                                ; $68c3: $08 $00 $00
    inc sp                                        ; $68c6: $33
    inc b                                         ; $68c7: $04
    ld bc, $0000                                  ; $68c8: $01 $00 $00
    ld a, $13                                     ; $68cb: $3e $13
    ld bc, $000d                                  ; $68cd: $01 $0d $00
    ld c, $00                                     ; $68d0: $0e $00
    ld a, [bc]                                    ; $68d2: $0a
    ld bc, $000c                                  ; $68d3: $01 $0c $00
    add hl, bc                                    ; $68d6: $09
    ld [$0004], sp                                ; $68d7: $08 $04 $00
    nop                                           ; $68da: $00
    nop                                           ; $68db: $00
    dec b                                         ; $68dc: $05
    ld bc, $0600                                  ; $68dd: $01 $00 $06
    ld [$0209], sp                                ; $68e0: $08 $09 $02
    inc b                                         ; $68e3: $04
    nop                                           ; $68e4: $00
    nop                                           ; $68e5: $00
    nop                                           ; $68e6: $00
    dec b                                         ; $68e7: $05
    inc b                                         ; $68e8: $04
    ld bc, $0000                                  ; $68e9: $01 $00 $00
    nop                                           ; $68ec: $00
    inc de                                        ; $68ed: $13
    ld bc, $000d                                  ; $68ee: $01 $0d $00

    db $0e, $02, $0a, $01, $0c, $02, $24, $0b, $04, $01, $00, $00, $00, $0d, $00, $0e
    db $02, $0a, $01, $24, $0f, $0c, $02, $04, $01, $00, $00, $00, $13, $01, $0d, $00
    db $0e, $02, $0a, $01, $0c, $02, $24, $0d, $04, $01, $00, $00, $00, $0d, $00

    ld c, $00                                     ; $6920: $0e $00
    ld a, [bc]                                    ; $6922: $0a
    ld bc, $000c                                  ; $6923: $01 $0c $00
    add hl, bc                                    ; $6926: $09
    dec b                                         ; $6927: $05
    inc de                                        ; $6928: $13
    add hl, bc                                    ; $6929: $09
    inc b                                         ; $692a: $04
    nop                                           ; $692b: $00
    nop                                           ; $692c: $00
    nop                                           ; $692d: $00
    ld [$0001], sp                                ; $692e: $08 $01 $00
    ld b, $08                                     ; $6931: $06 $08
    inc b                                         ; $6933: $04
    ld bc, $0000                                  ; $6934: $01 $00 $00
    nop                                           ; $6937: $00
    inc de                                        ; $6938: $13
    ld bc, $000d                                  ; $6939: $01 $0d $00
    ld c, $00                                     ; $693c: $0e $00
    ld a, [bc]                                    ; $693e: $0a
    ld bc, $030c                                  ; $693f: $01 $0c $03
    add hl, bc                                    ; $6942: $09
    dec b                                         ; $6943: $05
    inc de                                        ; $6944: $13
    add hl, bc                                    ; $6945: $09
    inc b                                         ; $6946: $04
    nop                                           ; $6947: $00
    nop                                           ; $6948: $00
    nop                                           ; $6949: $00
    ld [$0001], sp                                ; $694a: $08 $01 $00
    ld b, $08                                     ; $694d: $06 $08
    inc b                                         ; $694f: $04
    ld bc, $0000                                  ; $6950: $01 $00 $00
    nop                                           ; $6953: $00
    inc de                                        ; $6954: $13
    ld bc, $000d                                  ; $6955: $01 $0d $00
    ld c, $00                                     ; $6958: $0e $00
    ld a, [bc]                                    ; $695a: $0a
    ld bc, $020c                                  ; $695b: $01 $0c $02
    add hl, bc                                    ; $695e: $09
    dec b                                         ; $695f: $05
    inc de                                        ; $6960: $13
    add hl, bc                                    ; $6961: $09
    inc b                                         ; $6962: $04
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00
    nop                                           ; $6965: $00
    ld [$0001], sp                                ; $6966: $08 $01 $00
    ld b, $08                                     ; $6969: $06 $08
    inc b                                         ; $696b: $04
    ld bc, $0000                                  ; $696c: $01 $00 $00
    nop                                           ; $696f: $00
    inc de                                        ; $6970: $13
    ld bc, $000d                                  ; $6971: $01 $0d $00
    ld c, $00                                     ; $6974: $0e $00
    ld a, [bc]                                    ; $6976: $0a
    ld bc, $010c                                  ; $6977: $01 $0c $01
    add hl, bc                                    ; $697a: $09
    ld [$0913], sp                                ; $697b: $08 $13 $09
    inc b                                         ; $697e: $04
    nop                                           ; $697f: $00
    nop                                           ; $6980: $00
    nop                                           ; $6981: $00
    ld [$0001], sp                                ; $6982: $08 $01 $00
    ld b, $08                                     ; $6985: $06 $08
    inc b                                         ; $6987: $04
    ld bc, $0000                                  ; $6988: $01 $00 $00
    nop                                           ; $698b: $00
    inc de                                        ; $698c: $13
    ld bc, $000d                                  ; $698d: $01 $0d $00
    dec b                                         ; $6990: $05
    ld a, [bc]                                    ; $6991: $0a
    inc a                                         ; $6992: $3c
    rrca                                          ; $6993: $0f
    inc b                                         ; $6994: $04
    ld a, [bc]                                    ; $6995: $0a
    inc a                                         ; $6996: $3c
    rrca                                          ; $6997: $0f
    inc bc                                        ; $6998: $03
    ld a, [bc]                                    ; $6999: $0a
    inc a                                         ; $699a: $3c
    rrca                                          ; $699b: $0f
    ld [bc], a                                    ; $699c: $02
    ld a, [bc]                                    ; $699d: $0a
    inc a                                         ; $699e: $3c
    rrca                                          ; $699f: $0f
    nop                                           ; $69a0: $00
    ld a, [bc]                                    ; $69a1: $0a
    inc a                                         ; $69a2: $3c
    rrca                                          ; $69a3: $0f
    ld bc, $3c0a                                  ; $69a4: $01 $0a $3c
    rrca                                          ; $69a7: $0f
    ld b, $0a                                     ; $69a8: $06 $0a
    inc a                                         ; $69aa: $3c
    rrca                                          ; $69ab: $0f
    inc de                                        ; $69ac: $13
    ld a, [bc]                                    ; $69ad: $0a
    inc a                                         ; $69ae: $3c
    rrca                                          ; $69af: $0f
    rlca                                          ; $69b0: $07
    ld a, [bc]                                    ; $69b1: $0a
    inc a                                         ; $69b2: $3c
    rrca                                          ; $69b3: $0f
    dec bc                                        ; $69b4: $0b
    ld a, [bc]                                    ; $69b5: $0a
    inc a                                         ; $69b6: $3c
    rrca                                          ; $69b7: $0f
    add hl, bc                                    ; $69b8: $09
    ld a, [bc]                                    ; $69b9: $0a
    inc a                                         ; $69ba: $3c
    rrca                                          ; $69bb: $0f
    ld a, [bc]                                    ; $69bc: $0a
    ld a, [bc]                                    ; $69bd: $0a
    inc a                                         ; $69be: $3c
    rrca                                          ; $69bf: $0f
    inc d                                         ; $69c0: $14
    ld a, [bc]                                    ; $69c1: $0a
    inc a                                         ; $69c2: $3c
    rrca                                          ; $69c3: $0f
    ld [$3c0a], sp                                ; $69c4: $08 $0a $3c
    rrca                                          ; $69c7: $0f

    db $12, $0a, $3c, $0f, $0e, $0a, $3c, $0f

    inc c                                         ; $69d0: $0c
    ld a, [bc]                                    ; $69d1: $0a
    inc a                                         ; $69d2: $3c
    rrca                                          ; $69d3: $0f

    db $0f, $0a, $3c, $0f

    jr @+$0c                                      ; $69d8: $18 $0a

    inc a                                         ; $69da: $3c
    rrca                                          ; $69db: $0f
    rla                                           ; $69dc: $17
    ld a, [bc]                                    ; $69dd: $0a
    inc a                                         ; $69de: $3c
    rrca                                          ; $69df: $0f
    ld de, $3c0a                                  ; $69e0: $11 $0a $3c
    rrca                                          ; $69e3: $0f

    db $16, $0a, $3c, $0f

    dec d                                         ; $69e8: $15
    ld a, [bc]                                    ; $69e9: $0a
    inc a                                         ; $69ea: $3c
    rrca                                          ; $69eb: $0f

    db $66, $0a, $3c, $0f, $67, $0a, $3c, $0f, $1d, $0a, $3c, $0f

    inc [hl]                                      ; $69f8: $34
    ld a, [bc]                                    ; $69f9: $0a
    inc a                                         ; $69fa: $3c
    rrca                                          ; $69fb: $0f
    inc e                                         ; $69fc: $1c
    ld a, [bc]                                    ; $69fd: $0a
    inc a                                         ; $69fe: $3c
    rrca                                          ; $69ff: $0f
    ld h, l                                       ; $6a00: $65
    ld a, [bc]                                    ; $6a01: $0a
    inc a                                         ; $6a02: $3c
    rrca                                          ; $6a03: $0f
    ld sp, $3c0a                                  ; $6a04: $31 $0a $3c
    rrca                                          ; $6a07: $0f
    jr nc, @+$0c                                  ; $6a08: $30 $0a

    inc a                                         ; $6a0a: $3c
    rrca                                          ; $6a0b: $0f
    ld b, h                                       ; $6a0c: $44
    ld a, [bc]                                    ; $6a0d: $0a
    inc a                                         ; $6a0e: $3c
    rrca                                          ; $6a0f: $0f

    db $63, $0a, $3c, $0f, $64, $0a, $3c, $0f, $62, $0a, $3c, $0f, $61, $0a, $3c, $0f
    db $36, $0a, $3c, $0f

    inc sp                                        ; $6a24: $33
    ld a, [bc]                                    ; $6a25: $0a
    inc a                                         ; $6a26: $3c
    rrca                                          ; $6a27: $0f
    dec [hl]                                      ; $6a28: $35
    ld a, [bc]                                    ; $6a29: $0a
    inc a                                         ; $6a2a: $3c
    rrca                                          ; $6a2b: $0f
    ld h, b                                       ; $6a2c: $60
    ld a, [bc]                                    ; $6a2d: $0a
    inc a                                         ; $6a2e: $3c
    rrca                                          ; $6a2f: $0f
    ld e, a                                       ; $6a30: $5f
    ld a, [bc]                                    ; $6a31: $0a
    inc a                                         ; $6a32: $3c
    rrca                                          ; $6a33: $0f
    ld e, [hl]                                    ; $6a34: $5e
    ld a, [bc]                                    ; $6a35: $0a
    inc a                                         ; $6a36: $3c
    rrca                                          ; $6a37: $0f
    ld e, l                                       ; $6a38: $5d
    ld a, [bc]                                    ; $6a39: $0a
    inc a                                         ; $6a3a: $3c
    rrca                                          ; $6a3b: $0f
    ld [hl-], a                                   ; $6a3c: $32
    ld a, [bc]                                    ; $6a3d: $0a
    inc a                                         ; $6a3e: $3c
    rrca                                          ; $6a3f: $0f

    db $5c, $0a, $3c, $0f

    ld e, d                                       ; $6a44: $5a
    ld a, [bc]                                    ; $6a45: $0a
    inc a                                         ; $6a46: $3c
    rrca                                          ; $6a47: $0f
    ld e, c                                       ; $6a48: $59
    ld a, [bc]                                    ; $6a49: $0a
    inc a                                         ; $6a4a: $3c
    rrca                                          ; $6a4b: $0f
    ld e, b                                       ; $6a4c: $58
    ld a, [bc]                                    ; $6a4d: $0a
    inc a                                         ; $6a4e: $3c
    rrca                                          ; $6a4f: $0f
    ld d, a                                       ; $6a50: $57
    ld a, [bc]                                    ; $6a51: $0a
    inc a                                         ; $6a52: $3c
    rrca                                          ; $6a53: $0f
    ld d, [hl]                                    ; $6a54: $56
    ld a, [bc]                                    ; $6a55: $0a
    inc a                                         ; $6a56: $3c
    rrca                                          ; $6a57: $0f
    ld d, l                                       ; $6a58: $55
    ld a, [bc]                                    ; $6a59: $0a
    inc a                                         ; $6a5a: $3c
    rrca                                          ; $6a5b: $0f
    ld d, e                                       ; $6a5c: $53
    ld a, [bc]                                    ; $6a5d: $0a
    inc a                                         ; $6a5e: $3c
    rrca                                          ; $6a5f: $0f
    ld d, d                                       ; $6a60: $52
    ld a, [bc]                                    ; $6a61: $0a
    inc a                                         ; $6a62: $3c
    rrca                                          ; $6a63: $0f
    ld d, c                                       ; $6a64: $51
    ld a, [bc]                                    ; $6a65: $0a
    inc a                                         ; $6a66: $3c
    rrca                                          ; $6a67: $0f
    ld d, b                                       ; $6a68: $50
    ld a, [bc]                                    ; $6a69: $0a
    inc a                                         ; $6a6a: $3c
    rrca                                          ; $6a6b: $0f

    db $4f, $0a, $3c, $0f

    ld c, [hl]                                    ; $6a70: $4e
    ld a, [bc]                                    ; $6a71: $0a
    inc a                                         ; $6a72: $3c
    rrca                                          ; $6a73: $0f
    ld c, l                                       ; $6a74: $4d
    ld a, [bc]                                    ; $6a75: $0a
    inc a                                         ; $6a76: $3c
    rrca                                          ; $6a77: $0f
    ld c, h                                       ; $6a78: $4c
    ld a, [bc]                                    ; $6a79: $0a
    inc a                                         ; $6a7a: $3c
    rrca                                          ; $6a7b: $0f
    ld c, e                                       ; $6a7c: $4b
    ld a, [bc]                                    ; $6a7d: $0a
    inc a                                         ; $6a7e: $3c
    rrca                                          ; $6a7f: $0f
    ld c, d                                       ; $6a80: $4a
    ld a, [bc]                                    ; $6a81: $0a
    inc a                                         ; $6a82: $3c
    rrca                                          ; $6a83: $0f
    ld c, c                                       ; $6a84: $49
    ld a, [bc]                                    ; $6a85: $0a
    inc a                                         ; $6a86: $3c
    rrca                                          ; $6a87: $0f
    cpl                                           ; $6a88: $2f
    ld a, [bc]                                    ; $6a89: $0a
    inc a                                         ; $6a8a: $3c
    rrca                                          ; $6a8b: $0f

    db $48, $0a, $3c, $0f

    ld l, $0a                                     ; $6a90: $2e $0a
    inc a                                         ; $6a92: $3c
    rrca                                          ; $6a93: $0f
    ld b, a                                       ; $6a94: $47
    ld a, [bc]                                    ; $6a95: $0a
    inc a                                         ; $6a96: $3c
    rrca                                          ; $6a97: $0f
    ld b, [hl]                                    ; $6a98: $46
    ld a, [bc]                                    ; $6a99: $0a
    inc a                                         ; $6a9a: $3c
    rrca                                          ; $6a9b: $0f

    db $10, $0a, $3c, $0f

    dec l                                         ; $6aa0: $2d
    ld a, [bc]                                    ; $6aa1: $0a
    inc a                                         ; $6aa2: $3c
    rrca                                          ; $6aa3: $0f
    ld b, e                                       ; $6aa4: $43
    ld a, [bc]                                    ; $6aa5: $0a
    inc a                                         ; $6aa6: $3c
    rrca                                          ; $6aa7: $0f
    ld b, d                                       ; $6aa8: $42
    ld a, [bc]                                    ; $6aa9: $0a
    inc a                                         ; $6aaa: $3c
    rrca                                          ; $6aab: $0f
    ld b, c                                       ; $6aac: $41
    ld a, [bc]                                    ; $6aad: $0a
    inc a                                         ; $6aae: $3c
    rrca                                          ; $6aaf: $0f
    inc l                                         ; $6ab0: $2c
    ld a, [bc]                                    ; $6ab1: $0a
    inc a                                         ; $6ab2: $3c
    rrca                                          ; $6ab3: $0f
    dec hl                                        ; $6ab4: $2b
    ld a, [bc]                                    ; $6ab5: $0a
    inc a                                         ; $6ab6: $3c
    rrca                                          ; $6ab7: $0f
    ld b, b                                       ; $6ab8: $40
    ld a, [bc]                                    ; $6ab9: $0a
    inc a                                         ; $6aba: $3c
    rrca                                          ; $6abb: $0f
    ld a, $0a                                     ; $6abc: $3e $0a
    inc a                                         ; $6abe: $3c
    rrca                                          ; $6abf: $0f
    ccf                                           ; $6ac0: $3f
    ld a, [bc]                                    ; $6ac1: $0a
    inc a                                         ; $6ac2: $3c
    rrca                                          ; $6ac3: $0f
    dec a                                         ; $6ac4: $3d
    ld a, [bc]                                    ; $6ac5: $0a
    inc a                                         ; $6ac6: $3c
    rrca                                          ; $6ac7: $0f
    jr c, jr_00f_6ad4                             ; $6ac8: $38 $0a

    inc a                                         ; $6aca: $3c
    rrca                                          ; $6acb: $0f
    inc a                                         ; $6acc: $3c
    ld a, [bc]                                    ; $6acd: $0a
    inc a                                         ; $6ace: $3c
    rrca                                          ; $6acf: $0f
    dec sp                                        ; $6ad0: $3b
    ld a, [bc]                                    ; $6ad1: $0a
    inc a                                         ; $6ad2: $3c
    rrca                                          ; $6ad3: $0f

jr_00f_6ad4:
    ld a, [hl-]                                   ; $6ad4: $3a
    ld a, [bc]                                    ; $6ad5: $0a
    inc a                                         ; $6ad6: $3c
    rrca                                          ; $6ad7: $0f
    add hl, sp                                    ; $6ad8: $39
    ld a, [bc]                                    ; $6ad9: $0a
    inc a                                         ; $6ada: $3c
    rrca                                          ; $6adb: $0f
    scf                                           ; $6adc: $37
    ld a, [bc]                                    ; $6add: $0a
    inc a                                         ; $6ade: $3c
    rrca                                          ; $6adf: $0f
    ld a, [hl+]                                   ; $6ae0: $2a
    ld a, [bc]                                    ; $6ae1: $0a
    inc a                                         ; $6ae2: $3c
    rrca                                          ; $6ae3: $0f
    add hl, hl                                    ; $6ae4: $29
    ld a, [bc]                                    ; $6ae5: $0a
    inc a                                         ; $6ae6: $3c
    rrca                                          ; $6ae7: $0f
    jr z, jr_00f_6af4                             ; $6ae8: $28 $0a

    inc a                                         ; $6aea: $3c
    rrca                                          ; $6aeb: $0f
    daa                                           ; $6aec: $27
    ld a, [bc]                                    ; $6aed: $0a
    inc a                                         ; $6aee: $3c
    rrca                                          ; $6aef: $0f
    ld h, $0a                                     ; $6af0: $26 $0a
    inc a                                         ; $6af2: $3c
    rrca                                          ; $6af3: $0f

jr_00f_6af4:
    dec h                                         ; $6af4: $25
    ld a, [bc]                                    ; $6af5: $0a
    inc a                                         ; $6af6: $3c
    rrca                                          ; $6af7: $0f

    db $23, $0a, $3c, $0f

    ld [hl+], a                                   ; $6afc: $22
    ld a, [bc]                                    ; $6afd: $0a
    inc a                                         ; $6afe: $3c
    rrca                                          ; $6aff: $0f
    ld hl, $3c0a                                  ; $6b00: $21 $0a $3c
    rrca                                          ; $6b03: $0f
    jr nz, jr_00f_6b10                            ; $6b04: $20 $0a

    inc a                                         ; $6b06: $3c
    rrca                                          ; $6b07: $0f
    rra                                           ; $6b08: $1f
    ld a, [bc]                                    ; $6b09: $0a
    inc a                                         ; $6b0a: $3c
    rrca                                          ; $6b0b: $0f
    ld e, $0a                                     ; $6b0c: $1e $0a
    inc a                                         ; $6b0e: $3c
    rrca                                          ; $6b0f: $0f

jr_00f_6b10:
    dec de                                        ; $6b10: $1b
    ld a, [bc]                                    ; $6b11: $0a
    inc a                                         ; $6b12: $3c
    rrca                                          ; $6b13: $0f
    ld a, [de]                                    ; $6b14: $1a
    ld a, [bc]                                    ; $6b15: $0a
    inc a                                         ; $6b16: $3c
    rrca                                          ; $6b17: $0f
    add hl, de                                    ; $6b18: $19
    ld a, [bc]                                    ; $6b19: $0a
    inc a                                         ; $6b1a: $3c
    rrca                                          ; $6b1b: $0f
    nop                                           ; $6b1c: $00
    ld b, b                                       ; $6b1d: $40
    and b                                         ; $6b1e: $a0
    ld bc, $0101                                  ; $6b1f: $01 $01 $01

    db $00, $5a, $c2, $01, $01, $01, $20, $76, $17, $03, $01, $01

    sub b                                         ; $6b2e: $90
    ld h, a                                       ; $6b2f: $67
    and d                                         ; $6b30: $a2
    ld [bc], a                                    ; $6b31: $02
    ld bc, $b002                                  ; $6b32: $01 $02 $b0
    ld d, c                                       ; $6b35: $51
    or d                                          ; $6b36: $b2
    ld bc, $0301                                  ; $6b37: $01 $01 $03
    ret nc                                        ; $6b3a: $d0

    ld l, h                                       ; $6b3b: $6c
    scf                                           ; $6b3c: $37
    ld bc, $0301                                  ; $6b3d: $01 $01 $03
    ld b, b                                       ; $6b40: $40
    ld b, b                                       ; $6b41: $40
    ld d, l                                       ; $6b42: $55
    dec b                                         ; $6b43: $05
    ld bc, $9004                                  ; $6b44: $01 $04 $90
    ld d, l                                       ; $6b47: $55
    and a                                         ; $6b48: $a7
    ld bc, $0501                                  ; $6b49: $01 $01 $05
    nop                                           ; $6b4c: $00
    ld [hl], b                                    ; $6b4d: $70
    cp l                                          ; $6b4e: $bd
    nop                                           ; $6b4f: $00
    ld bc, $d005                                  ; $6b50: $01 $05 $d0
    ld a, e                                       ; $6b53: $7b
    dec l                                         ; $6b54: $2d
    nop                                           ; $6b55: $00
    ld bc, $a005                                  ; $6b56: $01 $05 $a0
    ld a, [hl]                                    ; $6b59: $7e
    or b                                          ; $6b5a: $b0
    nop                                           ; $6b5b: $00
    ld bc, $a005                                  ; $6b5c: $01 $05 $a0
    ld c, c                                       ; $6b5f: $49
    inc h                                         ; $6b60: $24
    nop                                           ; $6b61: $00
    ld bc, $e006                                  ; $6b62: $01 $06 $e0
    ld c, e                                       ; $6b65: $4b
    sbc a                                         ; $6b66: $9f
    nop                                           ; $6b67: $00
    db $01                                        ; $6b68: $01
    db $06                                        ; $6b69: $06

    db $d0, $55, $96, $00, $01, $06, $30, $5f, $0d, $01, $01, $06, $00, $70, $bf, $00
    db $01, $06

    ldh a, [$7b]                                  ; $6b7c: $f0 $7b
    ld b, d                                       ; $6b7e: $42
    nop                                           ; $6b7f: $00
    db $01                                        ; $6b80: $01
    db $06                                        ; $6b81: $06

    db $10, $40, $67, $01, $01, $07

    add b                                         ; $6b88: $80
    ld d, [hl]                                    ; $6b89: $56
    xor d                                         ; $6b8a: $aa
    nop                                           ; $6b8b: $00
    ld bc, $2007                                  ; $6b8c: $01 $07 $20
    ld h, c                                       ; $6b8f: $61
    scf                                           ; $6b90: $37
    nop                                           ; $6b91: $00
    db $01                                        ; $6b92: $01
    rlca                                          ; $6b93: $07

    db $90, $64, $ea, $00, $01, $07

    jr nc, jr_00f_6c0f                            ; $6b9a: $30 $73

    sub c                                         ; $6b9c: $91
    nop                                           ; $6b9d: $00
    ld bc, $4007                                  ; $6b9e: $01 $07 $40
    ld a, h                                       ; $6ba1: $7c
    ld sp, $0101                                  ; $6ba2: $31 $01 $01
    rlca                                          ; $6ba5: $07
    ld d, b                                       ; $6ba6: $50
    ld c, a                                       ; $6ba7: $4f
    inc sp                                        ; $6ba8: $33
    ld bc, $0801                                  ; $6ba9: $01 $01 $08
    add b                                         ; $6bac: $80
    ld h, d                                       ; $6bad: $62
    ld c, $01                                     ; $6bae: $0e $01
    ld bc, $6008                                  ; $6bb0: $01 $08 $60
    ld [hl], e                                    ; $6bb3: $73
    jr z, @+$04                                   ; $6bb4: $28 $02

    ld bc, $e008                                  ; $6bb6: $01 $08 $e0
    ld d, l                                       ; $6bb9: $55
    sbc [hl]                                      ; $6bba: $9e
    ld bc, $0901                                  ; $6bbb: $01 $01 $09
    ret nz                                        ; $6bbe: $c0

    ld l, a                                       ; $6bbf: $6f
    ld [de], a                                    ; $6bc0: $12
    ld bc, $0901                                  ; $6bc1: $01 $01 $09
    ldh [rLCDC], a                                ; $6bc4: $e0 $40
    dec l                                         ; $6bc6: $2d
    ld bc, $0a01                                  ; $6bc7: $01 $01 $0a
    or b                                          ; $6bca: $b0
    ld d, e                                       ; $6bcb: $53
    dec e                                         ; $6bcc: $1d
    nop                                           ; $6bcd: $00
    db $01                                        ; $6bce: $01
    ld a, [bc]                                    ; $6bcf: $0a

    db $80, $55, $fc, $00, $01, $0a

    ld b, b                                       ; $6bd6: $40
    ld h, l                                       ; $6bd7: $65
    ld d, d                                       ; $6bd8: $52
    nop                                           ; $6bd9: $00
    ld bc, $600a                                  ; $6bda: $01 $0a $60
    ld l, d                                       ; $6bdd: $6a
    ld sp, hl                                     ; $6bde: $f9
    nop                                           ; $6bdf: $00
    ld bc, $f00a                                  ; $6be0: $01 $0a $f0
    ld a, c                                       ; $6be3: $79
    reti                                          ; $6be4: $d9


    nop                                           ; $6be5: $00
    ld bc, $800a                                  ; $6be6: $01 $0a $80
    ld b, a                                       ; $6be9: $47
    sub a                                         ; $6bea: $97
    nop                                           ; $6beb: $00
    db $01                                        ; $6bec: $01
    dec bc                                        ; $6bed: $0b

    db $f0, $50, $e1, $00, $01, $0b

    nop                                           ; $6bf4: $00
    ld e, a                                       ; $6bf5: $5f
    sub d                                         ; $6bf6: $92
    nop                                           ; $6bf7: $00
    ld bc, $200b                                  ; $6bf8: $01 $0b $20
    ld l, b                                       ; $6bfb: $68
    and c                                         ; $6bfc: $a1
    nop                                           ; $6bfd: $00
    ld bc, $300b                                  ; $6bfe: $01 $0b $30
    ld [hl], d                                    ; $6c01: $72
    ld d, e                                       ; $6c02: $53
    nop                                           ; $6c03: $00
    ld bc, $600b                                  ; $6c04: $01 $0b $60
    ld [hl], a                                    ; $6c07: $77
    adc c                                         ; $6c08: $89
    nop                                           ; $6c09: $00
    db $01                                        ; $6c0a: $01
    dec bc                                        ; $6c0b: $0b

    db $0d, $b4, $52

jr_00f_6c0f:
    ld c, $db                                     ; $6c0f: $0e $db
    ld l, b                                       ; $6c11: $68

    db $0e, $17, $51

    dec c                                         ; $6c15: $0d
    jp hl                                         ; $6c16: $e9


    ld c, c                                       ; $6c17: $49
    dec c                                         ; $6c18: $0d
    ld d, a                                       ; $6c19: $57
    ld e, e                                       ; $6c1a: $5b
    inc c                                         ; $6c1b: $0c
    pop bc                                        ; $6c1c: $c1
    ld l, h                                       ; $6c1d: $6c
    dec c                                         ; $6c1e: $0d
    dec a                                         ; $6c1f: $3d
    ld l, d                                       ; $6c20: $6a
    inc c                                         ; $6c21: $0c
    db $eb                                        ; $6c22: $eb
    ld c, h                                       ; $6c23: $4c
    ld c, $a0                                     ; $6c24: $0e $a0
    ld c, e                                       ; $6c26: $4b

    db $0e, $84, $7a

    ld c, $35                                     ; $6c2a: $0e $35
    ld [hl], d                                    ; $6c2c: $72
    dec c                                         ; $6c2d: $0d
    adc c                                         ; $6c2e: $89
    ld [hl], a                                    ; $6c2f: $77
    dec c                                         ; $6c30: $0d
    ld a, [c]                                     ; $6c31: $f2
    ld h, d                                       ; $6c32: $62

    db $0e, $f2, $70

    inc c                                         ; $6c36: $0c
    nop                                           ; $6c37: $00
    ld b, b                                       ; $6c38: $40
    ld c, $4d                                     ; $6c39: $0e $4d
    ld h, e                                       ; $6c3b: $63
    ld c, $75                                     ; $6c3c: $0e $75
    ld [hl], e                                    ; $6c3e: $73
    ld c, $7c                                     ; $6c3f: $0e $7c
    ld h, [hl]                                    ; $6c41: $66

    db $0e, $93, $7b, $0e, $90, $5f

    ld c, $38                                     ; $6c48: $0e $38
    ld l, [hl]                                    ; $6c4a: $6e
    rrca                                          ; $6c4b: $0f
    db $ed                                        ; $6c4c: $ed
    ld b, d                                       ; $6c4d: $42
    ld c, $b0                                     ; $6c4e: $0e $b0
    ld a, [hl]                                    ; $6c50: $7e

    db $0e, $a9, $7d

    ld c, $9b                                     ; $6c54: $0e $9b
    ld l, a                                       ; $6c56: $6f
    ld c, $3a                                     ; $6c57: $0e $3a
    ld l, e                                       ; $6c59: $6b

    db $0f, $dc, $43

    rrca                                          ; $6c5d: $0f
    ld a, [$0f41]                                 ; $6c5e: $fa $41 $0f
    inc bc                                        ; $6c61: $03
    ld b, c                                       ; $6c62: $41
    dec c                                         ; $6c63: $0d
    rst $20                                       ; $6c64: $e7
    ld a, l                                       ; $6c65: $7d
    rrca                                          ; $6c66: $0f
    nop                                           ; $6c67: $00
    ld b, b                                       ; $6c68: $40
    dec c                                         ; $6c69: $0d
    nop                                           ; $6c6a: $00
    ld b, b                                       ; $6c6b: $40
    ld c, $22                                     ; $6c6c: $0e $22
    ld d, [hl]                                    ; $6c6e: $56
    ld c, $0f                                     ; $6c6f: $0e $0f
    ld b, [hl]                                    ; $6c71: $46
    inc c                                         ; $6c72: $0c
    dec de                                        ; $6c73: $1b
    ld [hl], a                                    ; $6c74: $77
    ld c, $d1                                     ; $6c75: $0e $d1
    ld l, h                                       ; $6c77: $6c

    db $0e, $1f, $77

    ld c, $4a                                     ; $6c7b: $0e $4a
    ld a, b                                       ; $6c7d: $78
    ld c, $9e                                     ; $6c7e: $0e $9e
    ld a, h                                       ; $6c80: $7c

    db $0e, $f0, $75, $0e, $b5, $74, $0e, $71, $79

    inc c                                         ; $6c8a: $0c
    ld b, l                                       ; $6c8b: $45
    ld h, d                                       ; $6c8c: $62

    db $0c, $c2, $57, $0e, $fd, $5a, $0e, $00, $40

    dec c                                         ; $6c96: $0d
    ld hl, sp+$70                                 ; $6c97: $f8 $70
    rst $38                                       ; $6c99: $ff
    rst $38                                       ; $6c9a: $ff
    rst $38                                       ; $6c9b: $ff
    rst $38                                       ; $6c9c: $ff
    rst $38                                       ; $6c9d: $ff
    rst $38                                       ; $6c9e: $ff
    rst $38                                       ; $6c9f: $ff
    rst $38                                       ; $6ca0: $ff
    rst $38                                       ; $6ca1: $ff
    rst $38                                       ; $6ca2: $ff
    rst $38                                       ; $6ca3: $ff
    rst $38                                       ; $6ca4: $ff
    rst $38                                       ; $6ca5: $ff
    rst $38                                       ; $6ca6: $ff
    rst $38                                       ; $6ca7: $ff
    rst $38                                       ; $6ca8: $ff
    rst $38                                       ; $6ca9: $ff
    rst $38                                       ; $6caa: $ff
    rst $38                                       ; $6cab: $ff
    rst $38                                       ; $6cac: $ff
    rst $38                                       ; $6cad: $ff
    rst $38                                       ; $6cae: $ff
    rst $38                                       ; $6caf: $ff
    rst $38                                       ; $6cb0: $ff
    rst $38                                       ; $6cb1: $ff
    rst $38                                       ; $6cb2: $ff
    rst $38                                       ; $6cb3: $ff
    rst $38                                       ; $6cb4: $ff
    rst $38                                       ; $6cb5: $ff
    rst $38                                       ; $6cb6: $ff
    rst $38                                       ; $6cb7: $ff
    rst $38                                       ; $6cb8: $ff
    rst $38                                       ; $6cb9: $ff
    rst $38                                       ; $6cba: $ff
    rst $38                                       ; $6cbb: $ff
    rst $38                                       ; $6cbc: $ff
    rst $38                                       ; $6cbd: $ff
    rst $38                                       ; $6cbe: $ff
    rst $38                                       ; $6cbf: $ff
    rst $38                                       ; $6cc0: $ff
    rst $38                                       ; $6cc1: $ff
    rst $38                                       ; $6cc2: $ff
    rst $38                                       ; $6cc3: $ff
    rst $38                                       ; $6cc4: $ff
    rst $38                                       ; $6cc5: $ff
    rst $38                                       ; $6cc6: $ff
    rst $38                                       ; $6cc7: $ff
    rst $38                                       ; $6cc8: $ff
    rst $38                                       ; $6cc9: $ff
    rst $38                                       ; $6cca: $ff
    rst $38                                       ; $6ccb: $ff
    rst $38                                       ; $6ccc: $ff
    rst $38                                       ; $6ccd: $ff
    rst $38                                       ; $6cce: $ff
    rst $38                                       ; $6ccf: $ff
    rst $38                                       ; $6cd0: $ff
    rst $38                                       ; $6cd1: $ff
    rst $38                                       ; $6cd2: $ff
    rst $38                                       ; $6cd3: $ff
    rst $38                                       ; $6cd4: $ff
    rst $38                                       ; $6cd5: $ff
    rst $38                                       ; $6cd6: $ff
    rst $38                                       ; $6cd7: $ff
    rst $38                                       ; $6cd8: $ff
    rst $38                                       ; $6cd9: $ff
    rst $38                                       ; $6cda: $ff
    rst $38                                       ; $6cdb: $ff
    rst $38                                       ; $6cdc: $ff
    rst $38                                       ; $6cdd: $ff
    rst $38                                       ; $6cde: $ff
    rst $38                                       ; $6cdf: $ff
    rst $38                                       ; $6ce0: $ff
    rst $38                                       ; $6ce1: $ff
    rst $38                                       ; $6ce2: $ff
    rst $38                                       ; $6ce3: $ff
    rst $38                                       ; $6ce4: $ff
    rst $38                                       ; $6ce5: $ff
    rst $38                                       ; $6ce6: $ff
    rst $38                                       ; $6ce7: $ff
    rst $38                                       ; $6ce8: $ff
    rst $38                                       ; $6ce9: $ff
    rst $38                                       ; $6cea: $ff
    rst $38                                       ; $6ceb: $ff
    rst $38                                       ; $6cec: $ff
    rst $38                                       ; $6ced: $ff
    rst $38                                       ; $6cee: $ff
    rst $38                                       ; $6cef: $ff
    rst $38                                       ; $6cf0: $ff
    rst $38                                       ; $6cf1: $ff
    rst $38                                       ; $6cf2: $ff
    rst $38                                       ; $6cf3: $ff
    rst $38                                       ; $6cf4: $ff
    rst $38                                       ; $6cf5: $ff
    rst $38                                       ; $6cf6: $ff
    rst $38                                       ; $6cf7: $ff
    rst $38                                       ; $6cf8: $ff
    rst $38                                       ; $6cf9: $ff
    rst $38                                       ; $6cfa: $ff
    rst $38                                       ; $6cfb: $ff
    rst $38                                       ; $6cfc: $ff
    rst $38                                       ; $6cfd: $ff
    rst $38                                       ; $6cfe: $ff
    rst $38                                       ; $6cff: $ff
    rst $38                                       ; $6d00: $ff
    rst $38                                       ; $6d01: $ff
    rst $38                                       ; $6d02: $ff
    rst $38                                       ; $6d03: $ff
    rst $38                                       ; $6d04: $ff
    rst $38                                       ; $6d05: $ff
    rst $38                                       ; $6d06: $ff
    rst $38                                       ; $6d07: $ff
    rst $38                                       ; $6d08: $ff
    rst $38                                       ; $6d09: $ff
    rst $38                                       ; $6d0a: $ff
    rst $38                                       ; $6d0b: $ff
    rst $38                                       ; $6d0c: $ff
    rst $38                                       ; $6d0d: $ff
    rst $38                                       ; $6d0e: $ff
    rst $38                                       ; $6d0f: $ff
    rst $38                                       ; $6d10: $ff
    rst $38                                       ; $6d11: $ff
    rst $38                                       ; $6d12: $ff
    rst $38                                       ; $6d13: $ff
    rst $38                                       ; $6d14: $ff
    rst $38                                       ; $6d15: $ff
    rst $38                                       ; $6d16: $ff
    rst $38                                       ; $6d17: $ff
    rst $38                                       ; $6d18: $ff
    rst $38                                       ; $6d19: $ff
    rst $38                                       ; $6d1a: $ff
    rst $38                                       ; $6d1b: $ff
    rst $38                                       ; $6d1c: $ff
    rst $38                                       ; $6d1d: $ff
    rst $38                                       ; $6d1e: $ff
    rst $38                                       ; $6d1f: $ff
    rst $38                                       ; $6d20: $ff
    rst $38                                       ; $6d21: $ff
    rst $38                                       ; $6d22: $ff
    rst $38                                       ; $6d23: $ff
    rst $38                                       ; $6d24: $ff
    rst $38                                       ; $6d25: $ff
    rst $38                                       ; $6d26: $ff
    rst $38                                       ; $6d27: $ff
    rst $38                                       ; $6d28: $ff
    rst $38                                       ; $6d29: $ff
    rst $38                                       ; $6d2a: $ff
    rst $38                                       ; $6d2b: $ff
    rst $38                                       ; $6d2c: $ff
    rst $38                                       ; $6d2d: $ff
    rst $38                                       ; $6d2e: $ff
    rst $38                                       ; $6d2f: $ff
    rst $38                                       ; $6d30: $ff
    rst $38                                       ; $6d31: $ff
    rst $38                                       ; $6d32: $ff
    rst $38                                       ; $6d33: $ff
    rst $38                                       ; $6d34: $ff
    rst $38                                       ; $6d35: $ff
    rst $38                                       ; $6d36: $ff
    rst $38                                       ; $6d37: $ff
    rst $38                                       ; $6d38: $ff
    rst $38                                       ; $6d39: $ff
    rst $38                                       ; $6d3a: $ff
    rst $38                                       ; $6d3b: $ff
    rst $38                                       ; $6d3c: $ff
    rst $38                                       ; $6d3d: $ff
    rst $38                                       ; $6d3e: $ff
    rst $38                                       ; $6d3f: $ff
    rst $38                                       ; $6d40: $ff
    rst $38                                       ; $6d41: $ff
    rst $38                                       ; $6d42: $ff
    rst $38                                       ; $6d43: $ff
    rst $38                                       ; $6d44: $ff
    rst $38                                       ; $6d45: $ff
    rst $38                                       ; $6d46: $ff
    rst $38                                       ; $6d47: $ff
    rst $38                                       ; $6d48: $ff
    rst $38                                       ; $6d49: $ff
    rst $38                                       ; $6d4a: $ff
    rst $38                                       ; $6d4b: $ff
    rst $38                                       ; $6d4c: $ff
    rst $38                                       ; $6d4d: $ff
    rst $38                                       ; $6d4e: $ff
    rst $38                                       ; $6d4f: $ff
    rst $38                                       ; $6d50: $ff
    rst $38                                       ; $6d51: $ff
    rst $38                                       ; $6d52: $ff
    rst $38                                       ; $6d53: $ff
    rst $38                                       ; $6d54: $ff
    rst $38                                       ; $6d55: $ff
    rst $38                                       ; $6d56: $ff
    rst $38                                       ; $6d57: $ff
    rst $38                                       ; $6d58: $ff
    rst $38                                       ; $6d59: $ff
    rst $38                                       ; $6d5a: $ff
    rst $38                                       ; $6d5b: $ff
    rst $38                                       ; $6d5c: $ff
    rst $38                                       ; $6d5d: $ff
    rst $38                                       ; $6d5e: $ff
    rst $38                                       ; $6d5f: $ff
    rst $38                                       ; $6d60: $ff
    rst $38                                       ; $6d61: $ff
    rst $38                                       ; $6d62: $ff
    rst $38                                       ; $6d63: $ff
    rst $38                                       ; $6d64: $ff
    rst $38                                       ; $6d65: $ff
    rst $38                                       ; $6d66: $ff
    rst $38                                       ; $6d67: $ff
    rst $38                                       ; $6d68: $ff
    rst $38                                       ; $6d69: $ff
    rst $38                                       ; $6d6a: $ff
    rst $38                                       ; $6d6b: $ff
    rst $38                                       ; $6d6c: $ff
    rst $38                                       ; $6d6d: $ff
    rst $38                                       ; $6d6e: $ff
    rst $38                                       ; $6d6f: $ff
    rst $38                                       ; $6d70: $ff
    rst $38                                       ; $6d71: $ff
    rst $38                                       ; $6d72: $ff
    rst $38                                       ; $6d73: $ff
    rst $38                                       ; $6d74: $ff
    rst $38                                       ; $6d75: $ff
    rst $38                                       ; $6d76: $ff
    rst $38                                       ; $6d77: $ff
    rst $38                                       ; $6d78: $ff
    rst $38                                       ; $6d79: $ff
    rst $38                                       ; $6d7a: $ff
    rst $38                                       ; $6d7b: $ff
    rst $38                                       ; $6d7c: $ff
    rst $38                                       ; $6d7d: $ff
    rst $38                                       ; $6d7e: $ff
    rst $38                                       ; $6d7f: $ff
    rst $38                                       ; $6d80: $ff
    rst $38                                       ; $6d81: $ff
    rst $38                                       ; $6d82: $ff
    rst $38                                       ; $6d83: $ff
    rst $38                                       ; $6d84: $ff
    rst $38                                       ; $6d85: $ff
    rst $38                                       ; $6d86: $ff
    rst $38                                       ; $6d87: $ff
    rst $38                                       ; $6d88: $ff
    rst $38                                       ; $6d89: $ff
    rst $38                                       ; $6d8a: $ff
    rst $38                                       ; $6d8b: $ff
    rst $38                                       ; $6d8c: $ff
    rst $38                                       ; $6d8d: $ff
    rst $38                                       ; $6d8e: $ff
    rst $38                                       ; $6d8f: $ff
    rst $38                                       ; $6d90: $ff
    rst $38                                       ; $6d91: $ff
    rst $38                                       ; $6d92: $ff
    rst $38                                       ; $6d93: $ff
    rst $38                                       ; $6d94: $ff
    rst $38                                       ; $6d95: $ff
    rst $38                                       ; $6d96: $ff
    rst $38                                       ; $6d97: $ff
    rst $38                                       ; $6d98: $ff
    rst $38                                       ; $6d99: $ff
    rst $38                                       ; $6d9a: $ff
    rst $38                                       ; $6d9b: $ff
    rst $38                                       ; $6d9c: $ff
    rst $38                                       ; $6d9d: $ff
    rst $38                                       ; $6d9e: $ff
    rst $38                                       ; $6d9f: $ff
    rst $38                                       ; $6da0: $ff
    rst $38                                       ; $6da1: $ff
    rst $38                                       ; $6da2: $ff
    rst $38                                       ; $6da3: $ff
    rst $38                                       ; $6da4: $ff
    rst $38                                       ; $6da5: $ff
    rst $38                                       ; $6da6: $ff
    rst $38                                       ; $6da7: $ff
    rst $38                                       ; $6da8: $ff
    rst $38                                       ; $6da9: $ff
    rst $38                                       ; $6daa: $ff
    rst $38                                       ; $6dab: $ff
    rst $38                                       ; $6dac: $ff
    rst $38                                       ; $6dad: $ff
    rst $38                                       ; $6dae: $ff
    rst $38                                       ; $6daf: $ff
    rst $38                                       ; $6db0: $ff
    rst $38                                       ; $6db1: $ff
    rst $38                                       ; $6db2: $ff
    rst $38                                       ; $6db3: $ff
    rst $38                                       ; $6db4: $ff
    rst $38                                       ; $6db5: $ff
    rst $38                                       ; $6db6: $ff
    rst $38                                       ; $6db7: $ff
    rst $38                                       ; $6db8: $ff
    rst $38                                       ; $6db9: $ff
    rst $38                                       ; $6dba: $ff
    rst $38                                       ; $6dbb: $ff
    rst $38                                       ; $6dbc: $ff
    rst $38                                       ; $6dbd: $ff
    rst $38                                       ; $6dbe: $ff
    rst $38                                       ; $6dbf: $ff
    rst $38                                       ; $6dc0: $ff
    rst $38                                       ; $6dc1: $ff
    rst $38                                       ; $6dc2: $ff
    rst $38                                       ; $6dc3: $ff
    rst $38                                       ; $6dc4: $ff
    rst $38                                       ; $6dc5: $ff
    rst $38                                       ; $6dc6: $ff
    rst $38                                       ; $6dc7: $ff
    rst $38                                       ; $6dc8: $ff
    rst $38                                       ; $6dc9: $ff
    rst $38                                       ; $6dca: $ff
    rst $38                                       ; $6dcb: $ff
    rst $38                                       ; $6dcc: $ff
    rst $38                                       ; $6dcd: $ff
    rst $38                                       ; $6dce: $ff
    rst $38                                       ; $6dcf: $ff
    rst $38                                       ; $6dd0: $ff
    rst $38                                       ; $6dd1: $ff
    rst $38                                       ; $6dd2: $ff
    rst $38                                       ; $6dd3: $ff
    rst $38                                       ; $6dd4: $ff
    rst $38                                       ; $6dd5: $ff
    rst $38                                       ; $6dd6: $ff
    rst $38                                       ; $6dd7: $ff
    rst $38                                       ; $6dd8: $ff
    rst $38                                       ; $6dd9: $ff
    rst $38                                       ; $6dda: $ff
    rst $38                                       ; $6ddb: $ff
    rst $38                                       ; $6ddc: $ff
    rst $38                                       ; $6ddd: $ff
    rst $38                                       ; $6dde: $ff
    rst $38                                       ; $6ddf: $ff
    rst $38                                       ; $6de0: $ff
    rst $38                                       ; $6de1: $ff
    rst $38                                       ; $6de2: $ff
    rst $38                                       ; $6de3: $ff
    rst $38                                       ; $6de4: $ff
    rst $38                                       ; $6de5: $ff
    rst $38                                       ; $6de6: $ff
    rst $38                                       ; $6de7: $ff
    rst $38                                       ; $6de8: $ff
    rst $38                                       ; $6de9: $ff
    rst $38                                       ; $6dea: $ff
    rst $38                                       ; $6deb: $ff
    rst $38                                       ; $6dec: $ff
    rst $38                                       ; $6ded: $ff
    rst $38                                       ; $6dee: $ff
    rst $38                                       ; $6def: $ff
    rst $38                                       ; $6df0: $ff
    rst $38                                       ; $6df1: $ff
    rst $38                                       ; $6df2: $ff
    rst $38                                       ; $6df3: $ff
    rst $38                                       ; $6df4: $ff
    rst $38                                       ; $6df5: $ff
    rst $38                                       ; $6df6: $ff
    rst $38                                       ; $6df7: $ff
    rst $38                                       ; $6df8: $ff
    rst $38                                       ; $6df9: $ff
    rst $38                                       ; $6dfa: $ff
    rst $38                                       ; $6dfb: $ff
    rst $38                                       ; $6dfc: $ff
    rst $38                                       ; $6dfd: $ff
    rst $38                                       ; $6dfe: $ff
    rst $38                                       ; $6dff: $ff
    rst $38                                       ; $6e00: $ff
    rst $38                                       ; $6e01: $ff
    rst $38                                       ; $6e02: $ff
    rst $38                                       ; $6e03: $ff
    rst $38                                       ; $6e04: $ff
    rst $38                                       ; $6e05: $ff
    rst $38                                       ; $6e06: $ff
    rst $38                                       ; $6e07: $ff
    rst $38                                       ; $6e08: $ff
    rst $38                                       ; $6e09: $ff
    rst $38                                       ; $6e0a: $ff
    rst $38                                       ; $6e0b: $ff
    rst $38                                       ; $6e0c: $ff
    rst $38                                       ; $6e0d: $ff
    rst $38                                       ; $6e0e: $ff
    rst $38                                       ; $6e0f: $ff
    rst $38                                       ; $6e10: $ff
    rst $38                                       ; $6e11: $ff
    rst $38                                       ; $6e12: $ff
    rst $38                                       ; $6e13: $ff
    rst $38                                       ; $6e14: $ff
    rst $38                                       ; $6e15: $ff
    rst $38                                       ; $6e16: $ff
    rst $38                                       ; $6e17: $ff
    rst $38                                       ; $6e18: $ff
    rst $38                                       ; $6e19: $ff
    rst $38                                       ; $6e1a: $ff
    rst $38                                       ; $6e1b: $ff
    rst $38                                       ; $6e1c: $ff
    rst $38                                       ; $6e1d: $ff
    rst $38                                       ; $6e1e: $ff
    rst $38                                       ; $6e1f: $ff
    rst $38                                       ; $6e20: $ff
    rst $38                                       ; $6e21: $ff
    rst $38                                       ; $6e22: $ff
    rst $38                                       ; $6e23: $ff
    rst $38                                       ; $6e24: $ff
    rst $38                                       ; $6e25: $ff
    rst $38                                       ; $6e26: $ff
    rst $38                                       ; $6e27: $ff
    rst $38                                       ; $6e28: $ff
    rst $38                                       ; $6e29: $ff
    rst $38                                       ; $6e2a: $ff
    rst $38                                       ; $6e2b: $ff
    rst $38                                       ; $6e2c: $ff
    rst $38                                       ; $6e2d: $ff
    rst $38                                       ; $6e2e: $ff
    rst $38                                       ; $6e2f: $ff
    rst $38                                       ; $6e30: $ff
    rst $38                                       ; $6e31: $ff
    rst $38                                       ; $6e32: $ff
    rst $38                                       ; $6e33: $ff
    rst $38                                       ; $6e34: $ff
    rst $38                                       ; $6e35: $ff
    rst $38                                       ; $6e36: $ff
    rst $38                                       ; $6e37: $ff
    rst $38                                       ; $6e38: $ff
    rst $38                                       ; $6e39: $ff
    rst $38                                       ; $6e3a: $ff
    rst $38                                       ; $6e3b: $ff
    rst $38                                       ; $6e3c: $ff
    rst $38                                       ; $6e3d: $ff
    rst $38                                       ; $6e3e: $ff
    rst $38                                       ; $6e3f: $ff
    rst $38                                       ; $6e40: $ff
    rst $38                                       ; $6e41: $ff
    rst $38                                       ; $6e42: $ff
    rst $38                                       ; $6e43: $ff
    rst $38                                       ; $6e44: $ff
    rst $38                                       ; $6e45: $ff
    rst $38                                       ; $6e46: $ff
    rst $38                                       ; $6e47: $ff
    rst $38                                       ; $6e48: $ff
    rst $38                                       ; $6e49: $ff
    rst $38                                       ; $6e4a: $ff
    rst $38                                       ; $6e4b: $ff
    rst $38                                       ; $6e4c: $ff
    rst $38                                       ; $6e4d: $ff
    rst $38                                       ; $6e4e: $ff
    rst $38                                       ; $6e4f: $ff
    rst $38                                       ; $6e50: $ff
    rst $38                                       ; $6e51: $ff
    rst $38                                       ; $6e52: $ff
    rst $38                                       ; $6e53: $ff
    rst $38                                       ; $6e54: $ff
    rst $38                                       ; $6e55: $ff
    rst $38                                       ; $6e56: $ff
    rst $38                                       ; $6e57: $ff
    rst $38                                       ; $6e58: $ff
    rst $38                                       ; $6e59: $ff
    rst $38                                       ; $6e5a: $ff
    rst $38                                       ; $6e5b: $ff
    rst $38                                       ; $6e5c: $ff
    rst $38                                       ; $6e5d: $ff
    rst $38                                       ; $6e5e: $ff
    rst $38                                       ; $6e5f: $ff
    rst $38                                       ; $6e60: $ff
    rst $38                                       ; $6e61: $ff
    rst $38                                       ; $6e62: $ff
    rst $38                                       ; $6e63: $ff
    rst $38                                       ; $6e64: $ff
    rst $38                                       ; $6e65: $ff
    rst $38                                       ; $6e66: $ff
    rst $38                                       ; $6e67: $ff
    rst $38                                       ; $6e68: $ff
    rst $38                                       ; $6e69: $ff
    rst $38                                       ; $6e6a: $ff
    rst $38                                       ; $6e6b: $ff
    rst $38                                       ; $6e6c: $ff
    rst $38                                       ; $6e6d: $ff
    rst $38                                       ; $6e6e: $ff
    rst $38                                       ; $6e6f: $ff
    rst $38                                       ; $6e70: $ff
    rst $38                                       ; $6e71: $ff
    rst $38                                       ; $6e72: $ff
    rst $38                                       ; $6e73: $ff
    rst $38                                       ; $6e74: $ff
    rst $38                                       ; $6e75: $ff
    rst $38                                       ; $6e76: $ff
    rst $38                                       ; $6e77: $ff
    rst $38                                       ; $6e78: $ff
    rst $38                                       ; $6e79: $ff
    rst $38                                       ; $6e7a: $ff
    rst $38                                       ; $6e7b: $ff
    rst $38                                       ; $6e7c: $ff
    rst $38                                       ; $6e7d: $ff
    rst $38                                       ; $6e7e: $ff
    rst $38                                       ; $6e7f: $ff
    rst $38                                       ; $6e80: $ff
    rst $38                                       ; $6e81: $ff
    rst $38                                       ; $6e82: $ff
    rst $38                                       ; $6e83: $ff
    rst $38                                       ; $6e84: $ff
    rst $38                                       ; $6e85: $ff
    rst $38                                       ; $6e86: $ff
    rst $38                                       ; $6e87: $ff
    rst $38                                       ; $6e88: $ff
    rst $38                                       ; $6e89: $ff
    rst $38                                       ; $6e8a: $ff
    rst $38                                       ; $6e8b: $ff
    rst $38                                       ; $6e8c: $ff
    rst $38                                       ; $6e8d: $ff
    rst $38                                       ; $6e8e: $ff
    rst $38                                       ; $6e8f: $ff
    rst $38                                       ; $6e90: $ff
    rst $38                                       ; $6e91: $ff
    rst $38                                       ; $6e92: $ff
    rst $38                                       ; $6e93: $ff
    rst $38                                       ; $6e94: $ff
    rst $38                                       ; $6e95: $ff
    rst $38                                       ; $6e96: $ff
    rst $38                                       ; $6e97: $ff
    rst $38                                       ; $6e98: $ff
    rst $38                                       ; $6e99: $ff
    rst $38                                       ; $6e9a: $ff
    rst $38                                       ; $6e9b: $ff
    rst $38                                       ; $6e9c: $ff
    rst $38                                       ; $6e9d: $ff
    rst $38                                       ; $6e9e: $ff
    rst $38                                       ; $6e9f: $ff
    rst $38                                       ; $6ea0: $ff
    rst $38                                       ; $6ea1: $ff
    rst $38                                       ; $6ea2: $ff
    rst $38                                       ; $6ea3: $ff
    rst $38                                       ; $6ea4: $ff
    rst $38                                       ; $6ea5: $ff
    rst $38                                       ; $6ea6: $ff
    rst $38                                       ; $6ea7: $ff
    rst $38                                       ; $6ea8: $ff
    rst $38                                       ; $6ea9: $ff
    rst $38                                       ; $6eaa: $ff
    rst $38                                       ; $6eab: $ff
    rst $38                                       ; $6eac: $ff
    rst $38                                       ; $6ead: $ff
    rst $38                                       ; $6eae: $ff
    rst $38                                       ; $6eaf: $ff
    rst $38                                       ; $6eb0: $ff
    rst $38                                       ; $6eb1: $ff
    rst $38                                       ; $6eb2: $ff
    rst $38                                       ; $6eb3: $ff
    rst $38                                       ; $6eb4: $ff
    rst $38                                       ; $6eb5: $ff
    rst $38                                       ; $6eb6: $ff
    rst $38                                       ; $6eb7: $ff
    rst $38                                       ; $6eb8: $ff
    rst $38                                       ; $6eb9: $ff
    rst $38                                       ; $6eba: $ff
    rst $38                                       ; $6ebb: $ff
    rst $38                                       ; $6ebc: $ff
    rst $38                                       ; $6ebd: $ff
    rst $38                                       ; $6ebe: $ff
    rst $38                                       ; $6ebf: $ff
    rst $38                                       ; $6ec0: $ff
    rst $38                                       ; $6ec1: $ff
    rst $38                                       ; $6ec2: $ff
    rst $38                                       ; $6ec3: $ff
    rst $38                                       ; $6ec4: $ff
    rst $38                                       ; $6ec5: $ff
    rst $38                                       ; $6ec6: $ff
    rst $38                                       ; $6ec7: $ff
    rst $38                                       ; $6ec8: $ff
    rst $38                                       ; $6ec9: $ff
    rst $38                                       ; $6eca: $ff
    rst $38                                       ; $6ecb: $ff
    rst $38                                       ; $6ecc: $ff
    rst $38                                       ; $6ecd: $ff
    rst $38                                       ; $6ece: $ff
    rst $38                                       ; $6ecf: $ff
    rst $38                                       ; $6ed0: $ff
    rst $38                                       ; $6ed1: $ff
    rst $38                                       ; $6ed2: $ff
    rst $38                                       ; $6ed3: $ff
    rst $38                                       ; $6ed4: $ff
    rst $38                                       ; $6ed5: $ff
    rst $38                                       ; $6ed6: $ff
    rst $38                                       ; $6ed7: $ff
    rst $38                                       ; $6ed8: $ff
    rst $38                                       ; $6ed9: $ff
    rst $38                                       ; $6eda: $ff
    rst $38                                       ; $6edb: $ff
    rst $38                                       ; $6edc: $ff
    rst $38                                       ; $6edd: $ff
    rst $38                                       ; $6ede: $ff
    rst $38                                       ; $6edf: $ff
    rst $38                                       ; $6ee0: $ff
    rst $38                                       ; $6ee1: $ff
    rst $38                                       ; $6ee2: $ff
    rst $38                                       ; $6ee3: $ff
    rst $38                                       ; $6ee4: $ff
    rst $38                                       ; $6ee5: $ff
    rst $38                                       ; $6ee6: $ff
    rst $38                                       ; $6ee7: $ff
    rst $38                                       ; $6ee8: $ff
    rst $38                                       ; $6ee9: $ff
    rst $38                                       ; $6eea: $ff
    rst $38                                       ; $6eeb: $ff
    rst $38                                       ; $6eec: $ff
    rst $38                                       ; $6eed: $ff
    rst $38                                       ; $6eee: $ff
    rst $38                                       ; $6eef: $ff
    rst $38                                       ; $6ef0: $ff
    rst $38                                       ; $6ef1: $ff
    rst $38                                       ; $6ef2: $ff
    rst $38                                       ; $6ef3: $ff
    rst $38                                       ; $6ef4: $ff
    rst $38                                       ; $6ef5: $ff
    rst $38                                       ; $6ef6: $ff
    rst $38                                       ; $6ef7: $ff
    rst $38                                       ; $6ef8: $ff
    rst $38                                       ; $6ef9: $ff
    rst $38                                       ; $6efa: $ff
    rst $38                                       ; $6efb: $ff
    rst $38                                       ; $6efc: $ff
    rst $38                                       ; $6efd: $ff
    rst $38                                       ; $6efe: $ff
    rst $38                                       ; $6eff: $ff
    rst $38                                       ; $6f00: $ff
    rst $38                                       ; $6f01: $ff
    rst $38                                       ; $6f02: $ff
    rst $38                                       ; $6f03: $ff
    rst $38                                       ; $6f04: $ff
    rst $38                                       ; $6f05: $ff
    rst $38                                       ; $6f06: $ff
    rst $38                                       ; $6f07: $ff
    rst $38                                       ; $6f08: $ff
    rst $38                                       ; $6f09: $ff
    rst $38                                       ; $6f0a: $ff
    rst $38                                       ; $6f0b: $ff
    rst $38                                       ; $6f0c: $ff
    rst $38                                       ; $6f0d: $ff
    rst $38                                       ; $6f0e: $ff
    rst $38                                       ; $6f0f: $ff
    rst $38                                       ; $6f10: $ff
    rst $38                                       ; $6f11: $ff
    rst $38                                       ; $6f12: $ff
    rst $38                                       ; $6f13: $ff
    rst $38                                       ; $6f14: $ff
    rst $38                                       ; $6f15: $ff
    rst $38                                       ; $6f16: $ff
    rst $38                                       ; $6f17: $ff
    rst $38                                       ; $6f18: $ff
    rst $38                                       ; $6f19: $ff
    rst $38                                       ; $6f1a: $ff
    rst $38                                       ; $6f1b: $ff
    rst $38                                       ; $6f1c: $ff
    rst $38                                       ; $6f1d: $ff
    rst $38                                       ; $6f1e: $ff
    rst $38                                       ; $6f1f: $ff
    rst $38                                       ; $6f20: $ff
    rst $38                                       ; $6f21: $ff
    rst $38                                       ; $6f22: $ff
    rst $38                                       ; $6f23: $ff
    rst $38                                       ; $6f24: $ff
    rst $38                                       ; $6f25: $ff
    rst $38                                       ; $6f26: $ff
    rst $38                                       ; $6f27: $ff
    rst $38                                       ; $6f28: $ff
    rst $38                                       ; $6f29: $ff
    rst $38                                       ; $6f2a: $ff
    rst $38                                       ; $6f2b: $ff
    rst $38                                       ; $6f2c: $ff
    rst $38                                       ; $6f2d: $ff
    rst $38                                       ; $6f2e: $ff
    rst $38                                       ; $6f2f: $ff
    rst $38                                       ; $6f30: $ff
    rst $38                                       ; $6f31: $ff
    rst $38                                       ; $6f32: $ff
    rst $38                                       ; $6f33: $ff
    rst $38                                       ; $6f34: $ff
    rst $38                                       ; $6f35: $ff
    rst $38                                       ; $6f36: $ff
    rst $38                                       ; $6f37: $ff
    rst $38                                       ; $6f38: $ff
    rst $38                                       ; $6f39: $ff
    rst $38                                       ; $6f3a: $ff
    rst $38                                       ; $6f3b: $ff
    rst $38                                       ; $6f3c: $ff
    rst $38                                       ; $6f3d: $ff
    rst $38                                       ; $6f3e: $ff
    rst $38                                       ; $6f3f: $ff
    rst $38                                       ; $6f40: $ff
    rst $38                                       ; $6f41: $ff
    rst $38                                       ; $6f42: $ff
    rst $38                                       ; $6f43: $ff
    rst $38                                       ; $6f44: $ff
    rst $38                                       ; $6f45: $ff
    rst $38                                       ; $6f46: $ff
    rst $38                                       ; $6f47: $ff
    rst $38                                       ; $6f48: $ff
    rst $38                                       ; $6f49: $ff
    rst $38                                       ; $6f4a: $ff
    rst $38                                       ; $6f4b: $ff
    rst $38                                       ; $6f4c: $ff
    rst $38                                       ; $6f4d: $ff
    rst $38                                       ; $6f4e: $ff
    rst $38                                       ; $6f4f: $ff
    rst $38                                       ; $6f50: $ff
    rst $38                                       ; $6f51: $ff
    rst $38                                       ; $6f52: $ff
    rst $38                                       ; $6f53: $ff
    rst $38                                       ; $6f54: $ff
    rst $38                                       ; $6f55: $ff
    rst $38                                       ; $6f56: $ff
    rst $38                                       ; $6f57: $ff
    rst $38                                       ; $6f58: $ff
    rst $38                                       ; $6f59: $ff
    rst $38                                       ; $6f5a: $ff
    rst $38                                       ; $6f5b: $ff
    rst $38                                       ; $6f5c: $ff
    rst $38                                       ; $6f5d: $ff
    rst $38                                       ; $6f5e: $ff
    rst $38                                       ; $6f5f: $ff
    rst $38                                       ; $6f60: $ff
    rst $38                                       ; $6f61: $ff
    rst $38                                       ; $6f62: $ff
    rst $38                                       ; $6f63: $ff
    rst $38                                       ; $6f64: $ff
    rst $38                                       ; $6f65: $ff
    rst $38                                       ; $6f66: $ff
    rst $38                                       ; $6f67: $ff
    rst $38                                       ; $6f68: $ff
    rst $38                                       ; $6f69: $ff
    rst $38                                       ; $6f6a: $ff
    rst $38                                       ; $6f6b: $ff
    rst $38                                       ; $6f6c: $ff
    rst $38                                       ; $6f6d: $ff
    rst $38                                       ; $6f6e: $ff
    rst $38                                       ; $6f6f: $ff
    rst $38                                       ; $6f70: $ff
    rst $38                                       ; $6f71: $ff
    rst $38                                       ; $6f72: $ff
    rst $38                                       ; $6f73: $ff
    rst $38                                       ; $6f74: $ff
    rst $38                                       ; $6f75: $ff
    rst $38                                       ; $6f76: $ff
    rst $38                                       ; $6f77: $ff
    rst $38                                       ; $6f78: $ff
    rst $38                                       ; $6f79: $ff
    rst $38                                       ; $6f7a: $ff
    rst $38                                       ; $6f7b: $ff
    rst $38                                       ; $6f7c: $ff
    rst $38                                       ; $6f7d: $ff
    rst $38                                       ; $6f7e: $ff
    rst $38                                       ; $6f7f: $ff
    rst $38                                       ; $6f80: $ff
    rst $38                                       ; $6f81: $ff
    rst $38                                       ; $6f82: $ff
    rst $38                                       ; $6f83: $ff
    rst $38                                       ; $6f84: $ff
    rst $38                                       ; $6f85: $ff
    rst $38                                       ; $6f86: $ff
    rst $38                                       ; $6f87: $ff
    rst $38                                       ; $6f88: $ff
    rst $38                                       ; $6f89: $ff
    rst $38                                       ; $6f8a: $ff
    rst $38                                       ; $6f8b: $ff
    rst $38                                       ; $6f8c: $ff
    rst $38                                       ; $6f8d: $ff
    rst $38                                       ; $6f8e: $ff
    rst $38                                       ; $6f8f: $ff
    rst $38                                       ; $6f90: $ff
    rst $38                                       ; $6f91: $ff
    rst $38                                       ; $6f92: $ff
    rst $38                                       ; $6f93: $ff
    rst $38                                       ; $6f94: $ff
    rst $38                                       ; $6f95: $ff
    rst $38                                       ; $6f96: $ff
    rst $38                                       ; $6f97: $ff
    rst $38                                       ; $6f98: $ff
    rst $38                                       ; $6f99: $ff
    rst $38                                       ; $6f9a: $ff
    rst $38                                       ; $6f9b: $ff
    rst $38                                       ; $6f9c: $ff
    rst $38                                       ; $6f9d: $ff
    rst $38                                       ; $6f9e: $ff
    rst $38                                       ; $6f9f: $ff
    rst $38                                       ; $6fa0: $ff
    rst $38                                       ; $6fa1: $ff
    rst $38                                       ; $6fa2: $ff
    rst $38                                       ; $6fa3: $ff
    rst $38                                       ; $6fa4: $ff
    rst $38                                       ; $6fa5: $ff
    rst $38                                       ; $6fa6: $ff
    rst $38                                       ; $6fa7: $ff
    rst $38                                       ; $6fa8: $ff
    rst $38                                       ; $6fa9: $ff
    rst $38                                       ; $6faa: $ff
    rst $38                                       ; $6fab: $ff
    rst $38                                       ; $6fac: $ff
    rst $38                                       ; $6fad: $ff
    rst $38                                       ; $6fae: $ff
    rst $38                                       ; $6faf: $ff
    rst $38                                       ; $6fb0: $ff
    rst $38                                       ; $6fb1: $ff
    rst $38                                       ; $6fb2: $ff
    rst $38                                       ; $6fb3: $ff
    rst $38                                       ; $6fb4: $ff
    rst $38                                       ; $6fb5: $ff
    rst $38                                       ; $6fb6: $ff
    rst $38                                       ; $6fb7: $ff
    rst $38                                       ; $6fb8: $ff
    rst $38                                       ; $6fb9: $ff
    rst $38                                       ; $6fba: $ff
    rst $38                                       ; $6fbb: $ff
    rst $38                                       ; $6fbc: $ff
    rst $38                                       ; $6fbd: $ff
    rst $38                                       ; $6fbe: $ff
    rst $38                                       ; $6fbf: $ff
    rst $38                                       ; $6fc0: $ff
    rst $38                                       ; $6fc1: $ff
    rst $38                                       ; $6fc2: $ff
    rst $38                                       ; $6fc3: $ff
    rst $38                                       ; $6fc4: $ff
    rst $38                                       ; $6fc5: $ff
    rst $38                                       ; $6fc6: $ff
    rst $38                                       ; $6fc7: $ff
    rst $38                                       ; $6fc8: $ff
    rst $38                                       ; $6fc9: $ff
    rst $38                                       ; $6fca: $ff
    rst $38                                       ; $6fcb: $ff
    rst $38                                       ; $6fcc: $ff
    rst $38                                       ; $6fcd: $ff
    rst $38                                       ; $6fce: $ff
    rst $38                                       ; $6fcf: $ff
    rst $38                                       ; $6fd0: $ff
    rst $38                                       ; $6fd1: $ff
    rst $38                                       ; $6fd2: $ff
    rst $38                                       ; $6fd3: $ff
    rst $38                                       ; $6fd4: $ff
    rst $38                                       ; $6fd5: $ff
    rst $38                                       ; $6fd6: $ff
    rst $38                                       ; $6fd7: $ff
    rst $38                                       ; $6fd8: $ff
    rst $38                                       ; $6fd9: $ff
    rst $38                                       ; $6fda: $ff
    rst $38                                       ; $6fdb: $ff
    rst $38                                       ; $6fdc: $ff
    rst $38                                       ; $6fdd: $ff
    rst $38                                       ; $6fde: $ff
    rst $38                                       ; $6fdf: $ff
    rst $38                                       ; $6fe0: $ff
    rst $38                                       ; $6fe1: $ff
    rst $38                                       ; $6fe2: $ff
    rst $38                                       ; $6fe3: $ff
    rst $38                                       ; $6fe4: $ff
    rst $38                                       ; $6fe5: $ff
    rst $38                                       ; $6fe6: $ff
    rst $38                                       ; $6fe7: $ff
    rst $38                                       ; $6fe8: $ff
    rst $38                                       ; $6fe9: $ff
    rst $38                                       ; $6fea: $ff
    rst $38                                       ; $6feb: $ff
    rst $38                                       ; $6fec: $ff
    rst $38                                       ; $6fed: $ff
    rst $38                                       ; $6fee: $ff
    rst $38                                       ; $6fef: $ff
    rst $38                                       ; $6ff0: $ff
    rst $38                                       ; $6ff1: $ff
    rst $38                                       ; $6ff2: $ff
    rst $38                                       ; $6ff3: $ff
    rst $38                                       ; $6ff4: $ff
    rst $38                                       ; $6ff5: $ff
    rst $38                                       ; $6ff6: $ff
    rst $38                                       ; $6ff7: $ff
    rst $38                                       ; $6ff8: $ff
    rst $38                                       ; $6ff9: $ff
    rst $38                                       ; $6ffa: $ff
    rst $38                                       ; $6ffb: $ff
    rst $38                                       ; $6ffc: $ff
    rst $38                                       ; $6ffd: $ff
    rst $38                                       ; $6ffe: $ff
    rst $38                                       ; $6fff: $ff
    rst $38                                       ; $7000: $ff
    rst $38                                       ; $7001: $ff
    rst $38                                       ; $7002: $ff
    rst $38                                       ; $7003: $ff
    rst $38                                       ; $7004: $ff
    rst $38                                       ; $7005: $ff
    rst $38                                       ; $7006: $ff
    rst $38                                       ; $7007: $ff
    rst $38                                       ; $7008: $ff
    rst $38                                       ; $7009: $ff
    rst $38                                       ; $700a: $ff
    rst $38                                       ; $700b: $ff
    rst $38                                       ; $700c: $ff
    rst $38                                       ; $700d: $ff
    rst $38                                       ; $700e: $ff
    rst $38                                       ; $700f: $ff
    rst $38                                       ; $7010: $ff
    rst $38                                       ; $7011: $ff
    rst $38                                       ; $7012: $ff
    rst $38                                       ; $7013: $ff
    rst $38                                       ; $7014: $ff
    rst $38                                       ; $7015: $ff
    rst $38                                       ; $7016: $ff
    rst $38                                       ; $7017: $ff
    rst $38                                       ; $7018: $ff
    rst $38                                       ; $7019: $ff
    rst $38                                       ; $701a: $ff
    rst $38                                       ; $701b: $ff
    rst $38                                       ; $701c: $ff
    rst $38                                       ; $701d: $ff
    rst $38                                       ; $701e: $ff
    rst $38                                       ; $701f: $ff
    rst $38                                       ; $7020: $ff
    rst $38                                       ; $7021: $ff
    rst $38                                       ; $7022: $ff
    rst $38                                       ; $7023: $ff
    rst $38                                       ; $7024: $ff
    rst $38                                       ; $7025: $ff
    rst $38                                       ; $7026: $ff
    rst $38                                       ; $7027: $ff
    rst $38                                       ; $7028: $ff
    rst $38                                       ; $7029: $ff
    rst $38                                       ; $702a: $ff
    rst $38                                       ; $702b: $ff
    rst $38                                       ; $702c: $ff
    rst $38                                       ; $702d: $ff
    rst $38                                       ; $702e: $ff
    rst $38                                       ; $702f: $ff
    rst $38                                       ; $7030: $ff
    rst $38                                       ; $7031: $ff
    rst $38                                       ; $7032: $ff
    rst $38                                       ; $7033: $ff
    rst $38                                       ; $7034: $ff
    rst $38                                       ; $7035: $ff
    rst $38                                       ; $7036: $ff
    rst $38                                       ; $7037: $ff
    rst $38                                       ; $7038: $ff
    rst $38                                       ; $7039: $ff
    rst $38                                       ; $703a: $ff
    rst $38                                       ; $703b: $ff
    rst $38                                       ; $703c: $ff
    rst $38                                       ; $703d: $ff
    rst $38                                       ; $703e: $ff
    rst $38                                       ; $703f: $ff
    rst $38                                       ; $7040: $ff
    rst $38                                       ; $7041: $ff
    rst $38                                       ; $7042: $ff
    rst $38                                       ; $7043: $ff
    rst $38                                       ; $7044: $ff
    rst $38                                       ; $7045: $ff
    rst $38                                       ; $7046: $ff
    rst $38                                       ; $7047: $ff
    rst $38                                       ; $7048: $ff
    rst $38                                       ; $7049: $ff
    rst $38                                       ; $704a: $ff
    rst $38                                       ; $704b: $ff
    rst $38                                       ; $704c: $ff
    rst $38                                       ; $704d: $ff
    rst $38                                       ; $704e: $ff
    rst $38                                       ; $704f: $ff
    rst $38                                       ; $7050: $ff
    rst $38                                       ; $7051: $ff
    rst $38                                       ; $7052: $ff
    rst $38                                       ; $7053: $ff
    rst $38                                       ; $7054: $ff
    rst $38                                       ; $7055: $ff
    rst $38                                       ; $7056: $ff
    rst $38                                       ; $7057: $ff
    rst $38                                       ; $7058: $ff
    rst $38                                       ; $7059: $ff
    rst $38                                       ; $705a: $ff
    rst $38                                       ; $705b: $ff
    rst $38                                       ; $705c: $ff
    rst $38                                       ; $705d: $ff
    rst $38                                       ; $705e: $ff
    rst $38                                       ; $705f: $ff
    rst $38                                       ; $7060: $ff
    rst $38                                       ; $7061: $ff
    rst $38                                       ; $7062: $ff
    rst $38                                       ; $7063: $ff
    rst $38                                       ; $7064: $ff
    rst $38                                       ; $7065: $ff
    rst $38                                       ; $7066: $ff
    rst $38                                       ; $7067: $ff
    rst $38                                       ; $7068: $ff
    rst $38                                       ; $7069: $ff
    rst $38                                       ; $706a: $ff
    rst $38                                       ; $706b: $ff
    rst $38                                       ; $706c: $ff
    rst $38                                       ; $706d: $ff
    rst $38                                       ; $706e: $ff
    rst $38                                       ; $706f: $ff
    rst $38                                       ; $7070: $ff
    rst $38                                       ; $7071: $ff
    rst $38                                       ; $7072: $ff
    rst $38                                       ; $7073: $ff
    rst $38                                       ; $7074: $ff
    rst $38                                       ; $7075: $ff
    rst $38                                       ; $7076: $ff
    rst $38                                       ; $7077: $ff
    rst $38                                       ; $7078: $ff
    rst $38                                       ; $7079: $ff
    rst $38                                       ; $707a: $ff
    rst $38                                       ; $707b: $ff
    rst $38                                       ; $707c: $ff
    rst $38                                       ; $707d: $ff
    rst $38                                       ; $707e: $ff
    rst $38                                       ; $707f: $ff
    rst $38                                       ; $7080: $ff
    rst $38                                       ; $7081: $ff
    rst $38                                       ; $7082: $ff
    rst $38                                       ; $7083: $ff
    rst $38                                       ; $7084: $ff
    rst $38                                       ; $7085: $ff
    rst $38                                       ; $7086: $ff
    rst $38                                       ; $7087: $ff
    rst $38                                       ; $7088: $ff
    rst $38                                       ; $7089: $ff
    rst $38                                       ; $708a: $ff
    rst $38                                       ; $708b: $ff
    rst $38                                       ; $708c: $ff
    rst $38                                       ; $708d: $ff
    rst $38                                       ; $708e: $ff
    rst $38                                       ; $708f: $ff
    rst $38                                       ; $7090: $ff
    rst $38                                       ; $7091: $ff
    rst $38                                       ; $7092: $ff
    rst $38                                       ; $7093: $ff
    rst $38                                       ; $7094: $ff
    rst $38                                       ; $7095: $ff
    rst $38                                       ; $7096: $ff
    rst $38                                       ; $7097: $ff
    rst $38                                       ; $7098: $ff
    rst $38                                       ; $7099: $ff
    rst $38                                       ; $709a: $ff
    rst $38                                       ; $709b: $ff
    rst $38                                       ; $709c: $ff
    rst $38                                       ; $709d: $ff
    rst $38                                       ; $709e: $ff
    rst $38                                       ; $709f: $ff
    rst $38                                       ; $70a0: $ff
    rst $38                                       ; $70a1: $ff
    rst $38                                       ; $70a2: $ff
    rst $38                                       ; $70a3: $ff
    rst $38                                       ; $70a4: $ff
    rst $38                                       ; $70a5: $ff
    rst $38                                       ; $70a6: $ff
    rst $38                                       ; $70a7: $ff
    rst $38                                       ; $70a8: $ff
    rst $38                                       ; $70a9: $ff
    rst $38                                       ; $70aa: $ff
    rst $38                                       ; $70ab: $ff
    rst $38                                       ; $70ac: $ff
    rst $38                                       ; $70ad: $ff
    rst $38                                       ; $70ae: $ff
    rst $38                                       ; $70af: $ff
    rst $38                                       ; $70b0: $ff
    rst $38                                       ; $70b1: $ff
    rst $38                                       ; $70b2: $ff
    rst $38                                       ; $70b3: $ff
    rst $38                                       ; $70b4: $ff
    rst $38                                       ; $70b5: $ff
    rst $38                                       ; $70b6: $ff
    rst $38                                       ; $70b7: $ff
    rst $38                                       ; $70b8: $ff
    rst $38                                       ; $70b9: $ff
    rst $38                                       ; $70ba: $ff
    rst $38                                       ; $70bb: $ff
    rst $38                                       ; $70bc: $ff
    rst $38                                       ; $70bd: $ff
    rst $38                                       ; $70be: $ff
    rst $38                                       ; $70bf: $ff
    rst $38                                       ; $70c0: $ff
    rst $38                                       ; $70c1: $ff
    rst $38                                       ; $70c2: $ff
    rst $38                                       ; $70c3: $ff
    rst $38                                       ; $70c4: $ff
    rst $38                                       ; $70c5: $ff
    rst $38                                       ; $70c6: $ff
    rst $38                                       ; $70c7: $ff
    rst $38                                       ; $70c8: $ff
    rst $38                                       ; $70c9: $ff
    rst $38                                       ; $70ca: $ff
    rst $38                                       ; $70cb: $ff
    rst $38                                       ; $70cc: $ff
    rst $38                                       ; $70cd: $ff
    rst $38                                       ; $70ce: $ff
    rst $38                                       ; $70cf: $ff
    rst $38                                       ; $70d0: $ff
    rst $38                                       ; $70d1: $ff
    rst $38                                       ; $70d2: $ff
    rst $38                                       ; $70d3: $ff
    rst $38                                       ; $70d4: $ff
    rst $38                                       ; $70d5: $ff
    rst $38                                       ; $70d6: $ff
    rst $38                                       ; $70d7: $ff
    rst $38                                       ; $70d8: $ff
    rst $38                                       ; $70d9: $ff
    rst $38                                       ; $70da: $ff
    rst $38                                       ; $70db: $ff
    rst $38                                       ; $70dc: $ff
    rst $38                                       ; $70dd: $ff
    rst $38                                       ; $70de: $ff
    rst $38                                       ; $70df: $ff
    rst $38                                       ; $70e0: $ff
    rst $38                                       ; $70e1: $ff
    rst $38                                       ; $70e2: $ff
    rst $38                                       ; $70e3: $ff
    rst $38                                       ; $70e4: $ff
    rst $38                                       ; $70e5: $ff
    rst $38                                       ; $70e6: $ff
    rst $38                                       ; $70e7: $ff
    rst $38                                       ; $70e8: $ff
    rst $38                                       ; $70e9: $ff
    rst $38                                       ; $70ea: $ff
    rst $38                                       ; $70eb: $ff
    rst $38                                       ; $70ec: $ff
    rst $38                                       ; $70ed: $ff
    rst $38                                       ; $70ee: $ff
    rst $38                                       ; $70ef: $ff
    rst $38                                       ; $70f0: $ff
    rst $38                                       ; $70f1: $ff
    rst $38                                       ; $70f2: $ff
    rst $38                                       ; $70f3: $ff
    rst $38                                       ; $70f4: $ff
    rst $38                                       ; $70f5: $ff
    rst $38                                       ; $70f6: $ff
    rst $38                                       ; $70f7: $ff
    rst $38                                       ; $70f8: $ff
    rst $38                                       ; $70f9: $ff
    rst $38                                       ; $70fa: $ff
    rst $38                                       ; $70fb: $ff
    rst $38                                       ; $70fc: $ff
    rst $38                                       ; $70fd: $ff
    rst $38                                       ; $70fe: $ff
    rst $38                                       ; $70ff: $ff
    rst $38                                       ; $7100: $ff
    rst $38                                       ; $7101: $ff
    rst $38                                       ; $7102: $ff
    rst $38                                       ; $7103: $ff
    rst $38                                       ; $7104: $ff
    rst $38                                       ; $7105: $ff
    rst $38                                       ; $7106: $ff
    rst $38                                       ; $7107: $ff
    rst $38                                       ; $7108: $ff
    rst $38                                       ; $7109: $ff
    rst $38                                       ; $710a: $ff
    rst $38                                       ; $710b: $ff
    rst $38                                       ; $710c: $ff
    rst $38                                       ; $710d: $ff
    rst $38                                       ; $710e: $ff
    rst $38                                       ; $710f: $ff
    rst $38                                       ; $7110: $ff
    rst $38                                       ; $7111: $ff
    rst $38                                       ; $7112: $ff
    rst $38                                       ; $7113: $ff
    rst $38                                       ; $7114: $ff
    rst $38                                       ; $7115: $ff
    rst $38                                       ; $7116: $ff
    rst $38                                       ; $7117: $ff
    rst $38                                       ; $7118: $ff
    rst $38                                       ; $7119: $ff
    rst $38                                       ; $711a: $ff
    rst $38                                       ; $711b: $ff
    rst $38                                       ; $711c: $ff
    rst $38                                       ; $711d: $ff
    rst $38                                       ; $711e: $ff
    rst $38                                       ; $711f: $ff
    rst $38                                       ; $7120: $ff
    rst $38                                       ; $7121: $ff
    rst $38                                       ; $7122: $ff
    rst $38                                       ; $7123: $ff
    rst $38                                       ; $7124: $ff
    rst $38                                       ; $7125: $ff
    rst $38                                       ; $7126: $ff
    rst $38                                       ; $7127: $ff
    rst $38                                       ; $7128: $ff
    rst $38                                       ; $7129: $ff
    rst $38                                       ; $712a: $ff
    rst $38                                       ; $712b: $ff
    rst $38                                       ; $712c: $ff
    rst $38                                       ; $712d: $ff
    rst $38                                       ; $712e: $ff
    rst $38                                       ; $712f: $ff
    rst $38                                       ; $7130: $ff
    rst $38                                       ; $7131: $ff
    rst $38                                       ; $7132: $ff
    rst $38                                       ; $7133: $ff
    rst $38                                       ; $7134: $ff
    rst $38                                       ; $7135: $ff
    rst $38                                       ; $7136: $ff
    rst $38                                       ; $7137: $ff
    rst $38                                       ; $7138: $ff
    rst $38                                       ; $7139: $ff
    rst $38                                       ; $713a: $ff
    rst $38                                       ; $713b: $ff
    rst $38                                       ; $713c: $ff
    rst $38                                       ; $713d: $ff
    rst $38                                       ; $713e: $ff
    rst $38                                       ; $713f: $ff
    rst $38                                       ; $7140: $ff
    rst $38                                       ; $7141: $ff
    rst $38                                       ; $7142: $ff
    rst $38                                       ; $7143: $ff
    rst $38                                       ; $7144: $ff
    rst $38                                       ; $7145: $ff
    rst $38                                       ; $7146: $ff
    rst $38                                       ; $7147: $ff
    rst $38                                       ; $7148: $ff
    rst $38                                       ; $7149: $ff
    rst $38                                       ; $714a: $ff
    rst $38                                       ; $714b: $ff
    rst $38                                       ; $714c: $ff
    rst $38                                       ; $714d: $ff
    rst $38                                       ; $714e: $ff
    rst $38                                       ; $714f: $ff
    rst $38                                       ; $7150: $ff
    rst $38                                       ; $7151: $ff
    rst $38                                       ; $7152: $ff
    rst $38                                       ; $7153: $ff
    rst $38                                       ; $7154: $ff
    rst $38                                       ; $7155: $ff
    rst $38                                       ; $7156: $ff
    rst $38                                       ; $7157: $ff
    rst $38                                       ; $7158: $ff
    rst $38                                       ; $7159: $ff
    rst $38                                       ; $715a: $ff
    rst $38                                       ; $715b: $ff
    rst $38                                       ; $715c: $ff
    rst $38                                       ; $715d: $ff
    rst $38                                       ; $715e: $ff
    rst $38                                       ; $715f: $ff
    rst $38                                       ; $7160: $ff
    rst $38                                       ; $7161: $ff
    rst $38                                       ; $7162: $ff
    rst $38                                       ; $7163: $ff
    rst $38                                       ; $7164: $ff
    rst $38                                       ; $7165: $ff
    rst $38                                       ; $7166: $ff
    rst $38                                       ; $7167: $ff
    rst $38                                       ; $7168: $ff
    rst $38                                       ; $7169: $ff
    rst $38                                       ; $716a: $ff
    rst $38                                       ; $716b: $ff
    rst $38                                       ; $716c: $ff
    rst $38                                       ; $716d: $ff
    rst $38                                       ; $716e: $ff
    rst $38                                       ; $716f: $ff
    rst $38                                       ; $7170: $ff
    rst $38                                       ; $7171: $ff
    rst $38                                       ; $7172: $ff
    rst $38                                       ; $7173: $ff
    rst $38                                       ; $7174: $ff
    rst $38                                       ; $7175: $ff
    rst $38                                       ; $7176: $ff
    rst $38                                       ; $7177: $ff
    rst $38                                       ; $7178: $ff
    rst $38                                       ; $7179: $ff
    rst $38                                       ; $717a: $ff
    rst $38                                       ; $717b: $ff
    rst $38                                       ; $717c: $ff
    rst $38                                       ; $717d: $ff
    rst $38                                       ; $717e: $ff
    rst $38                                       ; $717f: $ff
    rst $38                                       ; $7180: $ff
    rst $38                                       ; $7181: $ff
    rst $38                                       ; $7182: $ff
    rst $38                                       ; $7183: $ff
    rst $38                                       ; $7184: $ff
    rst $38                                       ; $7185: $ff
    rst $38                                       ; $7186: $ff
    rst $38                                       ; $7187: $ff
    rst $38                                       ; $7188: $ff
    rst $38                                       ; $7189: $ff
    rst $38                                       ; $718a: $ff
    rst $38                                       ; $718b: $ff
    rst $38                                       ; $718c: $ff
    rst $38                                       ; $718d: $ff
    rst $38                                       ; $718e: $ff
    rst $38                                       ; $718f: $ff
    rst $38                                       ; $7190: $ff
    rst $38                                       ; $7191: $ff
    rst $38                                       ; $7192: $ff
    rst $38                                       ; $7193: $ff
    rst $38                                       ; $7194: $ff
    rst $38                                       ; $7195: $ff
    rst $38                                       ; $7196: $ff
    rst $38                                       ; $7197: $ff
    rst $38                                       ; $7198: $ff
    rst $38                                       ; $7199: $ff
    rst $38                                       ; $719a: $ff
    rst $38                                       ; $719b: $ff
    rst $38                                       ; $719c: $ff
    rst $38                                       ; $719d: $ff
    rst $38                                       ; $719e: $ff
    rst $38                                       ; $719f: $ff
    rst $38                                       ; $71a0: $ff
    rst $38                                       ; $71a1: $ff
    rst $38                                       ; $71a2: $ff
    rst $38                                       ; $71a3: $ff
    rst $38                                       ; $71a4: $ff
    rst $38                                       ; $71a5: $ff
    rst $38                                       ; $71a6: $ff
    rst $38                                       ; $71a7: $ff
    rst $38                                       ; $71a8: $ff
    rst $38                                       ; $71a9: $ff
    rst $38                                       ; $71aa: $ff
    rst $38                                       ; $71ab: $ff
    rst $38                                       ; $71ac: $ff
    rst $38                                       ; $71ad: $ff
    rst $38                                       ; $71ae: $ff
    rst $38                                       ; $71af: $ff
    rst $38                                       ; $71b0: $ff
    rst $38                                       ; $71b1: $ff
    rst $38                                       ; $71b2: $ff
    rst $38                                       ; $71b3: $ff
    rst $38                                       ; $71b4: $ff
    rst $38                                       ; $71b5: $ff
    rst $38                                       ; $71b6: $ff
    rst $38                                       ; $71b7: $ff
    rst $38                                       ; $71b8: $ff
    rst $38                                       ; $71b9: $ff
    rst $38                                       ; $71ba: $ff
    rst $38                                       ; $71bb: $ff
    rst $38                                       ; $71bc: $ff
    rst $38                                       ; $71bd: $ff
    rst $38                                       ; $71be: $ff
    rst $38                                       ; $71bf: $ff
    rst $38                                       ; $71c0: $ff
    rst $38                                       ; $71c1: $ff
    rst $38                                       ; $71c2: $ff
    rst $38                                       ; $71c3: $ff
    rst $38                                       ; $71c4: $ff
    rst $38                                       ; $71c5: $ff
    rst $38                                       ; $71c6: $ff
    rst $38                                       ; $71c7: $ff
    rst $38                                       ; $71c8: $ff
    rst $38                                       ; $71c9: $ff
    rst $38                                       ; $71ca: $ff
    rst $38                                       ; $71cb: $ff
    rst $38                                       ; $71cc: $ff
    rst $38                                       ; $71cd: $ff
    rst $38                                       ; $71ce: $ff
    rst $38                                       ; $71cf: $ff
    rst $38                                       ; $71d0: $ff
    rst $38                                       ; $71d1: $ff
    rst $38                                       ; $71d2: $ff
    rst $38                                       ; $71d3: $ff
    rst $38                                       ; $71d4: $ff
    rst $38                                       ; $71d5: $ff
    rst $38                                       ; $71d6: $ff
    rst $38                                       ; $71d7: $ff
    rst $38                                       ; $71d8: $ff
    rst $38                                       ; $71d9: $ff
    rst $38                                       ; $71da: $ff
    rst $38                                       ; $71db: $ff
    rst $38                                       ; $71dc: $ff
    rst $38                                       ; $71dd: $ff
    rst $38                                       ; $71de: $ff
    rst $38                                       ; $71df: $ff
    rst $38                                       ; $71e0: $ff
    rst $38                                       ; $71e1: $ff
    rst $38                                       ; $71e2: $ff
    rst $38                                       ; $71e3: $ff
    rst $38                                       ; $71e4: $ff
    rst $38                                       ; $71e5: $ff
    rst $38                                       ; $71e6: $ff
    rst $38                                       ; $71e7: $ff
    rst $38                                       ; $71e8: $ff
    rst $38                                       ; $71e9: $ff
    rst $38                                       ; $71ea: $ff
    rst $38                                       ; $71eb: $ff
    rst $38                                       ; $71ec: $ff
    rst $38                                       ; $71ed: $ff
    rst $38                                       ; $71ee: $ff
    rst $38                                       ; $71ef: $ff
    rst $38                                       ; $71f0: $ff
    rst $38                                       ; $71f1: $ff
    rst $38                                       ; $71f2: $ff
    rst $38                                       ; $71f3: $ff
    rst $38                                       ; $71f4: $ff
    rst $38                                       ; $71f5: $ff
    rst $38                                       ; $71f6: $ff
    rst $38                                       ; $71f7: $ff
    rst $38                                       ; $71f8: $ff
    rst $38                                       ; $71f9: $ff
    rst $38                                       ; $71fa: $ff
    rst $38                                       ; $71fb: $ff
    rst $38                                       ; $71fc: $ff
    rst $38                                       ; $71fd: $ff
    rst $38                                       ; $71fe: $ff
    rst $38                                       ; $71ff: $ff
    rst $38                                       ; $7200: $ff
    rst $38                                       ; $7201: $ff
    rst $38                                       ; $7202: $ff
    rst $38                                       ; $7203: $ff
    rst $38                                       ; $7204: $ff
    rst $38                                       ; $7205: $ff
    rst $38                                       ; $7206: $ff
    rst $38                                       ; $7207: $ff
    rst $38                                       ; $7208: $ff
    rst $38                                       ; $7209: $ff
    rst $38                                       ; $720a: $ff
    rst $38                                       ; $720b: $ff
    rst $38                                       ; $720c: $ff
    rst $38                                       ; $720d: $ff
    rst $38                                       ; $720e: $ff
    rst $38                                       ; $720f: $ff
    rst $38                                       ; $7210: $ff
    rst $38                                       ; $7211: $ff
    rst $38                                       ; $7212: $ff
    rst $38                                       ; $7213: $ff
    rst $38                                       ; $7214: $ff
    rst $38                                       ; $7215: $ff
    rst $38                                       ; $7216: $ff
    rst $38                                       ; $7217: $ff
    rst $38                                       ; $7218: $ff
    rst $38                                       ; $7219: $ff
    rst $38                                       ; $721a: $ff
    rst $38                                       ; $721b: $ff
    rst $38                                       ; $721c: $ff
    rst $38                                       ; $721d: $ff
    rst $38                                       ; $721e: $ff
    rst $38                                       ; $721f: $ff
    rst $38                                       ; $7220: $ff
    rst $38                                       ; $7221: $ff
    rst $38                                       ; $7222: $ff
    rst $38                                       ; $7223: $ff
    rst $38                                       ; $7224: $ff
    rst $38                                       ; $7225: $ff
    rst $38                                       ; $7226: $ff
    rst $38                                       ; $7227: $ff
    rst $38                                       ; $7228: $ff
    rst $38                                       ; $7229: $ff
    rst $38                                       ; $722a: $ff
    rst $38                                       ; $722b: $ff
    rst $38                                       ; $722c: $ff
    rst $38                                       ; $722d: $ff
    rst $38                                       ; $722e: $ff
    rst $38                                       ; $722f: $ff
    rst $38                                       ; $7230: $ff
    rst $38                                       ; $7231: $ff
    rst $38                                       ; $7232: $ff
    rst $38                                       ; $7233: $ff
    rst $38                                       ; $7234: $ff
    rst $38                                       ; $7235: $ff
    rst $38                                       ; $7236: $ff
    rst $38                                       ; $7237: $ff
    rst $38                                       ; $7238: $ff
    rst $38                                       ; $7239: $ff
    rst $38                                       ; $723a: $ff
    rst $38                                       ; $723b: $ff
    rst $38                                       ; $723c: $ff
    rst $38                                       ; $723d: $ff
    rst $38                                       ; $723e: $ff
    rst $38                                       ; $723f: $ff
    rst $38                                       ; $7240: $ff
    rst $38                                       ; $7241: $ff
    rst $38                                       ; $7242: $ff
    rst $38                                       ; $7243: $ff
    rst $38                                       ; $7244: $ff
    rst $38                                       ; $7245: $ff
    rst $38                                       ; $7246: $ff
    rst $38                                       ; $7247: $ff
    rst $38                                       ; $7248: $ff
    rst $38                                       ; $7249: $ff
    rst $38                                       ; $724a: $ff
    rst $38                                       ; $724b: $ff
    rst $38                                       ; $724c: $ff
    rst $38                                       ; $724d: $ff
    rst $38                                       ; $724e: $ff
    rst $38                                       ; $724f: $ff
    rst $38                                       ; $7250: $ff
    rst $38                                       ; $7251: $ff
    rst $38                                       ; $7252: $ff
    rst $38                                       ; $7253: $ff
    rst $38                                       ; $7254: $ff
    rst $38                                       ; $7255: $ff
    rst $38                                       ; $7256: $ff
    rst $38                                       ; $7257: $ff
    rst $38                                       ; $7258: $ff
    rst $38                                       ; $7259: $ff
    rst $38                                       ; $725a: $ff
    rst $38                                       ; $725b: $ff
    rst $38                                       ; $725c: $ff
    rst $38                                       ; $725d: $ff
    rst $38                                       ; $725e: $ff
    rst $38                                       ; $725f: $ff
    rst $38                                       ; $7260: $ff
    rst $38                                       ; $7261: $ff
    rst $38                                       ; $7262: $ff
    rst $38                                       ; $7263: $ff
    rst $38                                       ; $7264: $ff
    rst $38                                       ; $7265: $ff
    rst $38                                       ; $7266: $ff
    rst $38                                       ; $7267: $ff
    rst $38                                       ; $7268: $ff
    rst $38                                       ; $7269: $ff
    rst $38                                       ; $726a: $ff
    rst $38                                       ; $726b: $ff
    rst $38                                       ; $726c: $ff
    rst $38                                       ; $726d: $ff
    rst $38                                       ; $726e: $ff
    rst $38                                       ; $726f: $ff
    rst $38                                       ; $7270: $ff
    rst $38                                       ; $7271: $ff
    rst $38                                       ; $7272: $ff
    rst $38                                       ; $7273: $ff
    rst $38                                       ; $7274: $ff
    rst $38                                       ; $7275: $ff
    rst $38                                       ; $7276: $ff
    rst $38                                       ; $7277: $ff
    rst $38                                       ; $7278: $ff
    rst $38                                       ; $7279: $ff
    rst $38                                       ; $727a: $ff
    rst $38                                       ; $727b: $ff
    rst $38                                       ; $727c: $ff
    rst $38                                       ; $727d: $ff
    rst $38                                       ; $727e: $ff
    rst $38                                       ; $727f: $ff
    rst $38                                       ; $7280: $ff
    rst $38                                       ; $7281: $ff
    rst $38                                       ; $7282: $ff
    rst $38                                       ; $7283: $ff
    rst $38                                       ; $7284: $ff
    rst $38                                       ; $7285: $ff
    rst $38                                       ; $7286: $ff
    rst $38                                       ; $7287: $ff
    rst $38                                       ; $7288: $ff
    rst $38                                       ; $7289: $ff
    rst $38                                       ; $728a: $ff
    rst $38                                       ; $728b: $ff
    rst $38                                       ; $728c: $ff
    rst $38                                       ; $728d: $ff
    rst $38                                       ; $728e: $ff
    rst $38                                       ; $728f: $ff
    rst $38                                       ; $7290: $ff
    rst $38                                       ; $7291: $ff
    rst $38                                       ; $7292: $ff
    rst $38                                       ; $7293: $ff
    rst $38                                       ; $7294: $ff
    rst $38                                       ; $7295: $ff
    rst $38                                       ; $7296: $ff
    rst $38                                       ; $7297: $ff
    rst $38                                       ; $7298: $ff
    rst $38                                       ; $7299: $ff
    rst $38                                       ; $729a: $ff
    rst $38                                       ; $729b: $ff
    rst $38                                       ; $729c: $ff
    rst $38                                       ; $729d: $ff
    rst $38                                       ; $729e: $ff
    rst $38                                       ; $729f: $ff
    rst $38                                       ; $72a0: $ff
    rst $38                                       ; $72a1: $ff
    rst $38                                       ; $72a2: $ff
    rst $38                                       ; $72a3: $ff
    rst $38                                       ; $72a4: $ff
    rst $38                                       ; $72a5: $ff
    rst $38                                       ; $72a6: $ff
    rst $38                                       ; $72a7: $ff
    rst $38                                       ; $72a8: $ff
    rst $38                                       ; $72a9: $ff
    rst $38                                       ; $72aa: $ff
    rst $38                                       ; $72ab: $ff
    rst $38                                       ; $72ac: $ff
    rst $38                                       ; $72ad: $ff
    rst $38                                       ; $72ae: $ff
    rst $38                                       ; $72af: $ff
    rst $38                                       ; $72b0: $ff
    rst $38                                       ; $72b1: $ff
    rst $38                                       ; $72b2: $ff
    rst $38                                       ; $72b3: $ff
    rst $38                                       ; $72b4: $ff
    rst $38                                       ; $72b5: $ff
    rst $38                                       ; $72b6: $ff
    rst $38                                       ; $72b7: $ff
    rst $38                                       ; $72b8: $ff
    rst $38                                       ; $72b9: $ff
    rst $38                                       ; $72ba: $ff
    rst $38                                       ; $72bb: $ff
    rst $38                                       ; $72bc: $ff
    rst $38                                       ; $72bd: $ff
    rst $38                                       ; $72be: $ff
    rst $38                                       ; $72bf: $ff
    rst $38                                       ; $72c0: $ff
    rst $38                                       ; $72c1: $ff
    rst $38                                       ; $72c2: $ff
    rst $38                                       ; $72c3: $ff
    rst $38                                       ; $72c4: $ff
    rst $38                                       ; $72c5: $ff
    rst $38                                       ; $72c6: $ff
    rst $38                                       ; $72c7: $ff
    rst $38                                       ; $72c8: $ff
    rst $38                                       ; $72c9: $ff
    rst $38                                       ; $72ca: $ff
    rst $38                                       ; $72cb: $ff
    rst $38                                       ; $72cc: $ff
    rst $38                                       ; $72cd: $ff
    rst $38                                       ; $72ce: $ff
    rst $38                                       ; $72cf: $ff
    rst $38                                       ; $72d0: $ff
    rst $38                                       ; $72d1: $ff
    rst $38                                       ; $72d2: $ff
    rst $38                                       ; $72d3: $ff
    rst $38                                       ; $72d4: $ff
    rst $38                                       ; $72d5: $ff
    rst $38                                       ; $72d6: $ff
    rst $38                                       ; $72d7: $ff
    rst $38                                       ; $72d8: $ff
    rst $38                                       ; $72d9: $ff
    rst $38                                       ; $72da: $ff
    rst $38                                       ; $72db: $ff
    rst $38                                       ; $72dc: $ff
    rst $38                                       ; $72dd: $ff
    rst $38                                       ; $72de: $ff
    rst $38                                       ; $72df: $ff
    rst $38                                       ; $72e0: $ff
    rst $38                                       ; $72e1: $ff
    rst $38                                       ; $72e2: $ff
    rst $38                                       ; $72e3: $ff
    rst $38                                       ; $72e4: $ff
    rst $38                                       ; $72e5: $ff
    rst $38                                       ; $72e6: $ff
    rst $38                                       ; $72e7: $ff
    rst $38                                       ; $72e8: $ff
    rst $38                                       ; $72e9: $ff
    rst $38                                       ; $72ea: $ff
    rst $38                                       ; $72eb: $ff
    rst $38                                       ; $72ec: $ff
    rst $38                                       ; $72ed: $ff
    rst $38                                       ; $72ee: $ff
    rst $38                                       ; $72ef: $ff
    rst $38                                       ; $72f0: $ff
    rst $38                                       ; $72f1: $ff
    rst $38                                       ; $72f2: $ff
    rst $38                                       ; $72f3: $ff
    rst $38                                       ; $72f4: $ff
    rst $38                                       ; $72f5: $ff
    rst $38                                       ; $72f6: $ff
    rst $38                                       ; $72f7: $ff
    rst $38                                       ; $72f8: $ff
    rst $38                                       ; $72f9: $ff
    rst $38                                       ; $72fa: $ff
    rst $38                                       ; $72fb: $ff
    rst $38                                       ; $72fc: $ff
    rst $38                                       ; $72fd: $ff
    rst $38                                       ; $72fe: $ff
    rst $38                                       ; $72ff: $ff
    rst $38                                       ; $7300: $ff
    rst $38                                       ; $7301: $ff
    rst $38                                       ; $7302: $ff
    rst $38                                       ; $7303: $ff
    rst $38                                       ; $7304: $ff
    rst $38                                       ; $7305: $ff
    rst $38                                       ; $7306: $ff
    rst $38                                       ; $7307: $ff
    rst $38                                       ; $7308: $ff
    rst $38                                       ; $7309: $ff
    rst $38                                       ; $730a: $ff
    rst $38                                       ; $730b: $ff
    rst $38                                       ; $730c: $ff
    rst $38                                       ; $730d: $ff
    rst $38                                       ; $730e: $ff
    rst $38                                       ; $730f: $ff
    rst $38                                       ; $7310: $ff
    rst $38                                       ; $7311: $ff
    rst $38                                       ; $7312: $ff
    rst $38                                       ; $7313: $ff
    rst $38                                       ; $7314: $ff
    rst $38                                       ; $7315: $ff
    rst $38                                       ; $7316: $ff
    rst $38                                       ; $7317: $ff
    rst $38                                       ; $7318: $ff
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
    rst $38                                       ; $787d: $ff
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
    rst $38                                       ; $7e6b: $ff
    rst $38                                       ; $7e6c: $ff
    rst $38                                       ; $7e6d: $ff
    rst $38                                       ; $7e6e: $ff
    rst $38                                       ; $7e6f: $ff
    rst $38                                       ; $7e70: $ff
    rst $38                                       ; $7e71: $ff
    rst $38                                       ; $7e72: $ff
    rst $38                                       ; $7e73: $ff
    rst $38                                       ; $7e74: $ff
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
