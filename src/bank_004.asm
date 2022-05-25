; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    db $04, $01, $01, $0f, $40, $00, $00, $4c, $01, $01, $17, $40, $00, $00, $48, $24
    db $d8, $44, $d8, $64, $d8, $84, $d8, $2a, $d8, $4a, $d8, $6a, $d8

    ld a, [$cdd2]                                 ; $401d: $fa $d2 $cd
    ld hl, $004f                                  ; $4020: $21 $4f $00
    rst $08                                       ; $4023: $cf
    ld a, l                                       ; $4024: $7d
    ldh [$b8], a                                  ; $4025: $e0 $b8
    ld a, h                                       ; $4027: $7c
    ldh [$b9], a                                  ; $4028: $e0 $b9
    ld a, $b2                                     ; $402a: $3e $b2
    ldh [$c1], a                                  ; $402c: $e0 $c1
    ld a, $d2                                     ; $402e: $3e $d2
    ldh [$bd], a                                  ; $4030: $e0 $bd
    ld a, $11                                     ; $4032: $3e $11
    ldh [$be], a                                  ; $4034: $e0 $be
    call Call_000_3421                            ; $4036: $cd $21 $34
    ld a, $04                                     ; $4039: $3e $04
    ldh [$9b], a                                  ; $403b: $e0 $9b
    ld a, $b2                                     ; $403d: $3e $b2
    call Call_000_03a0                            ; $403f: $cd $a0 $03
    call Call_000_38fb                            ; $4042: $cd $fb $38
    ld a, l                                       ; $4045: $7d
    ld [$cc12], a                                 ; $4046: $ea $12 $cc
    ld a, h                                       ; $4049: $7c
    ld [$cc13], a                                 ; $404a: $ea $13 $cc
    ldh [$c1], a                                  ; $404d: $e0 $c1
    ld a, $3d                                     ; $404f: $3e $3d
    ldh [$bd], a                                  ; $4051: $e0 $bd
    ld a, $0f                                     ; $4053: $3e $0f
    ldh [$be], a                                  ; $4055: $e0 $be
    call Call_000_3421                            ; $4057: $cd $21 $34
    ldh [$c1], a                                  ; $405a: $e0 $c1
    ld a, $4f                                     ; $405c: $3e $4f
    ldh [$bd], a                                  ; $405e: $e0 $bd
    ld a, $0f                                     ; $4060: $3e $0f
    ldh [$be], a                                  ; $4062: $e0 $be
    jp Jump_000_3421                              ; $4064: $c3 $21 $34


Call_004_4067:
    push af                                       ; $4067: $f5
    call Call_000_19b7                            ; $4068: $cd $b7 $19
    ld hl, $c129                                  ; $406b: $21 $29 $c1
    ld a, $04                                     ; $406e: $3e $04
    ld [hl+], a                                   ; $4070: $22
    ld [hl+], a                                   ; $4071: $22
    xor a                                         ; $4072: $af
    ld [hl+], a                                   ; $4073: $22
    pop af                                        ; $4074: $f1
    push af                                       ; $4075: $f5
    push hl                                       ; $4076: $e5
    call Call_000_13ff                            ; $4077: $cd $ff $13
    ld hl, $5ced                                  ; $407a: $21 $ed $5c
    add hl, bc                                    ; $407d: $09
    ld c, l                                       ; $407e: $4d
    ld b, h                                       ; $407f: $44
    pop hl                                        ; $4080: $e1
    ld a, c                                       ; $4081: $79
    ld [hl+], a                                   ; $4082: $22
    ld [hl], b                                    ; $4083: $70
    pop af                                        ; $4084: $f1
    ret                                           ; $4085: $c9


Call_004_4086:
    push de                                       ; $4086: $d5
    ldh [$c1], a                                  ; $4087: $e0 $c1
    ld a, $9a                                     ; $4089: $3e $9a
    ldh [$bd], a                                  ; $408b: $e0 $bd
    ld a, $0f                                     ; $408d: $3e $0f
    ldh [$be], a                                  ; $408f: $e0 $be
    call Call_000_3421                            ; $4091: $cd $21 $34
    ld a, [$cdd3]                                 ; $4094: $fa $d3 $cd
    ld c, a                                       ; $4097: $4f
    ld d, $05                                     ; $4098: $16 $05
    ld e, $10                                     ; $409a: $1e $10
    ld hl, $0004                                  ; $409c: $21 $04 $00
    call Call_000_13c2                            ; $409f: $cd $c2 $13
    ld hl, $1d33                                  ; $40a2: $21 $33 $1d
    ldh [$c1], a                                  ; $40a5: $e0 $c1
    ld a, $5f                                     ; $40a7: $3e $5f
    ldh [$bd], a                                  ; $40a9: $e0 $bd
    ld a, $7c                                     ; $40ab: $3e $7c
    ldh [$be], a                                  ; $40ad: $e0 $be
    call Call_000_340c                            ; $40af: $cd $0c $34
    ld hl, $4001                                  ; $40b2: $21 $01 $40
    call Call_000_301f                            ; $40b5: $cd $1f $30
    ld a, [$cdd4]                                 ; $40b8: $fa $d4 $cd
    ldh [$b8], a                                  ; $40bb: $e0 $b8
    ld [$c1f0], a                                 ; $40bd: $ea $f0 $c1
    xor a                                         ; $40c0: $af
    ld [$c1f1], a                                 ; $40c1: $ea $f1 $c1
    ld a, $77                                     ; $40c4: $3e $77
    ld [$c1eb], a                                 ; $40c6: $ea $eb $c1
    ld a, $04                                     ; $40c9: $3e $04
    ld [$c234], a                                 ; $40cb: $ea $34 $c2
    pop de                                        ; $40ce: $d1
    ld hl, $cd17                                  ; $40cf: $21 $17 $cd
    ld a, [hl+]                                   ; $40d2: $2a
    ld h, [hl]                                    ; $40d3: $66
    ld l, a                                       ; $40d4: $6f
    ldh [$c1], a                                  ; $40d5: $e0 $c1
    ld a, $fd                                     ; $40d7: $3e $fd
    ldh [$bd], a                                  ; $40d9: $e0 $bd
    ld a, $6d                                     ; $40db: $3e $6d
    ldh [$be], a                                  ; $40dd: $e0 $be
    call Call_000_341a                            ; $40df: $cd $1a $34
    ld de, $0008                                  ; $40e2: $11 $08 $00
    call Call_000_30e1                            ; $40e5: $cd $e1 $30
    ld hl, $1d33                                  ; $40e8: $21 $33 $1d
    ldh [$c1], a                                  ; $40eb: $e0 $c1
    ld a, $5f                                     ; $40ed: $3e $5f
    ldh [$bd], a                                  ; $40ef: $e0 $bd
    ld a, $7c                                     ; $40f1: $3e $7c
    ldh [$be], a                                  ; $40f3: $e0 $be
    call Call_000_340c                            ; $40f5: $cd $0c $34
    call Call_004_4663                            ; $40f8: $cd $63 $46
    ld a, e                                       ; $40fb: $7b
    cp $33                                        ; $40fc: $fe $33
    jr nz, jr_004_4106                            ; $40fe: $20 $06

    ld a, [$cdd1]                                 ; $4100: $fa $d1 $cd
    cp d                                          ; $4103: $ba
    jr z, jr_004_410f                             ; $4104: $28 $09

jr_004_4106:
    ld hl, $c238                                  ; $4106: $21 $38 $c2
    ld a, [hl+]                                   ; $4109: $2a
    ld h, [hl]                                    ; $410a: $66
    ld l, a                                       ; $410b: $6f
    or l                                          ; $410c: $b5
    jr z, jr_004_411d                             ; $410d: $28 $0e

jr_004_410f:
    ld a, $b2                                     ; $410f: $3e $b2
    ld e, $ff                                     ; $4111: $1e $ff
    call Call_000_0a6f                            ; $4113: $cd $6f $0a
    ld de, $002b                                  ; $4116: $11 $2b $00
    add hl, de                                    ; $4119: $19
    res 0, [hl]                                   ; $411a: $cb $86
    ret                                           ; $411c: $c9


Call_004_411d:
jr_004_411d:
    xor a                                         ; $411d: $af
    ld [$cd1a], a                                 ; $411e: $ea $1a $cd
    ld a, $b2                                     ; $4121: $3e $b2
    ld e, $ff                                     ; $4123: $1e $ff
    call Call_000_0a6f                            ; $4125: $cd $6f $0a
    ld de, $002b                                  ; $4128: $11 $2b $00
    add hl, de                                    ; $412b: $19
    set 0, [hl]                                   ; $412c: $cb $c6
    ret                                           ; $412e: $c9


Call_004_412f:
    push bc                                       ; $412f: $c5
    push de                                       ; $4130: $d5
    ld de, $0008                                  ; $4131: $11 $08 $00
    call Call_000_30e1                            ; $4134: $cd $e1 $30
    ld hl, $4008                                  ; $4137: $21 $08 $40
    call Call_000_301f                            ; $413a: $cd $1f $30
    ld a, [$cdd4]                                 ; $413d: $fa $d4 $cd
    ldh [$b8], a                                  ; $4140: $e0 $b8
    ld [$c1f0], a                                 ; $4142: $ea $f0 $c1
    xor a                                         ; $4145: $af
    ld [$c1f1], a                                 ; $4146: $ea $f1 $c1
    ld a, $98                                     ; $4149: $3e $98
    ld [$c1eb], a                                 ; $414b: $ea $eb $c1
    ld a, $04                                     ; $414e: $3e $04
    ld [$c234], a                                 ; $4150: $ea $34 $c2
    pop de                                        ; $4153: $d1
    pop bc                                        ; $4154: $c1
    ld a, d                                       ; $4155: $7a
    or a                                          ; $4156: $b7
    jr z, jr_004_4198                             ; $4157: $28 $3f

    cp $01                                        ; $4159: $fe $01
    jr z, jr_004_4182                             ; $415b: $28 $25

    ld hl, $cd17                                  ; $415d: $21 $17 $cd
    ld a, [hl+]                                   ; $4160: $2a
    ld h, [hl]                                    ; $4161: $66
    ld l, a                                       ; $4162: $6f
    ldh [$c1], a                                  ; $4163: $e0 $c1
    ld a, $1a                                     ; $4165: $3e $1a
    ldh [$bd], a                                  ; $4167: $e0 $bd
    ld a, $6e                                     ; $4169: $3e $6e
    ldh [$be], a                                  ; $416b: $e0 $be
    call Call_000_341a                            ; $416d: $cd $1a $34
    ld a, e                                       ; $4170: $7b
    ld l, c                                       ; $4171: $69
    ld h, b                                       ; $4172: $60
    ldh [$c1], a                                  ; $4173: $e0 $c1
    ld a, $67                                     ; $4175: $3e $67
    ldh [$bd], a                                  ; $4177: $e0 $bd
    ld a, $6e                                     ; $4179: $3e $6e
    ldh [$be], a                                  ; $417b: $e0 $be
    call Call_000_341a                            ; $417d: $cd $1a $34
    jr jr_004_41ac                                ; $4180: $18 $2a

jr_004_4182:
    xor a                                         ; $4182: $af
    ld hl, $cd17                                  ; $4183: $21 $17 $cd
    ld a, [hl+]                                   ; $4186: $2a
    ld h, [hl]                                    ; $4187: $66
    ld l, a                                       ; $4188: $6f
    ldh [$c1], a                                  ; $4189: $e0 $c1
    ld a, $3b                                     ; $418b: $3e $3b
    ldh [$bd], a                                  ; $418d: $e0 $bd
    ld a, $6d                                     ; $418f: $3e $6d
    ldh [$be], a                                  ; $4191: $e0 $be
    call Call_000_341a                            ; $4193: $cd $1a $34
    jr jr_004_41ac                                ; $4196: $18 $14

jr_004_4198:
    xor a                                         ; $4198: $af
    ld hl, $cd17                                  ; $4199: $21 $17 $cd
    ld a, [hl+]                                   ; $419c: $2a
    ld h, [hl]                                    ; $419d: $66
    ld l, a                                       ; $419e: $6f
    ldh [$c1], a                                  ; $419f: $e0 $c1
    ld a, $1a                                     ; $41a1: $3e $1a
    ldh [$bd], a                                  ; $41a3: $e0 $bd
    ld a, $6e                                     ; $41a5: $3e $6e
    ldh [$be], a                                  ; $41a7: $e0 $be
    call Call_000_341a                            ; $41a9: $cd $1a $34

jr_004_41ac:
    ld hl, $1d33                                  ; $41ac: $21 $33 $1d
    ldh [$c1], a                                  ; $41af: $e0 $c1
    ld a, $5f                                     ; $41b1: $3e $5f
    ldh [$bd], a                                  ; $41b3: $e0 $bd
    ld a, $7c                                     ; $41b5: $3e $7c
    ldh [$be], a                                  ; $41b7: $e0 $be
    jp Jump_000_340c                              ; $41b9: $c3 $0c $34


Call_004_41bc:
    ld a, [$cdd3]                                 ; $41bc: $fa $d3 $cd
    ld c, a                                       ; $41bf: $4f
    ld d, $05                                     ; $41c0: $16 $05
    ld e, $10                                     ; $41c2: $1e $10
    ld hl, $0004                                  ; $41c4: $21 $04 $00
    call Call_000_13c2                            ; $41c7: $cd $c2 $13
    ld hl, $1d33                                  ; $41ca: $21 $33 $1d
    ldh [$c1], a                                  ; $41cd: $e0 $c1
    ld a, $5f                                     ; $41cf: $3e $5f
    ldh [$bd], a                                  ; $41d1: $e0 $bd
    ld a, $7c                                     ; $41d3: $3e $7c
    ldh [$be], a                                  ; $41d5: $e0 $be
    call Call_000_340c                            ; $41d7: $cd $0c $34
    ld hl, $4001                                  ; $41da: $21 $01 $40
    call Call_000_301f                            ; $41dd: $cd $1f $30
    ld a, [$cdd4]                                 ; $41e0: $fa $d4 $cd
    ldh [$b8], a                                  ; $41e3: $e0 $b8
    ld [$c1f0], a                                 ; $41e5: $ea $f0 $c1
    xor a                                         ; $41e8: $af
    ld [$c1f1], a                                 ; $41e9: $ea $f1 $c1
    ld a, $7c                                     ; $41ec: $3e $7c
    ld [$c1eb], a                                 ; $41ee: $ea $eb $c1
    ld a, $01                                     ; $41f1: $3e $01
    ld [$c234], a                                 ; $41f3: $ea $34 $c2
    ld de, $0000                                  ; $41f6: $11 $00 $00
    ld hl, $cd17                                  ; $41f9: $21 $17 $cd
    ld a, [hl+]                                   ; $41fc: $2a
    ld h, [hl]                                    ; $41fd: $66
    ld l, a                                       ; $41fe: $6f
    ldh [$c1], a                                  ; $41ff: $e0 $c1
    ld a, $1a                                     ; $4201: $3e $1a
    ldh [$bd], a                                  ; $4203: $e0 $bd
    ld a, $6e                                     ; $4205: $3e $6e
    ldh [$be], a                                  ; $4207: $e0 $be
    call Call_000_341a                            ; $4209: $cd $1a $34
    inc hl                                        ; $420c: $23
    inc hl                                        ; $420d: $23
    inc hl                                        ; $420e: $23
    ldh [$c1], a                                  ; $420f: $e0 $c1
    ld a, $1a                                     ; $4211: $3e $1a
    ldh [$bd], a                                  ; $4213: $e0 $bd
    ld a, $6e                                     ; $4215: $3e $6e
    ldh [$be], a                                  ; $4217: $e0 $be
    call Call_000_341a                            ; $4219: $cd $1a $34
    inc hl                                        ; $421c: $23
    inc hl                                        ; $421d: $23
    inc hl                                        ; $421e: $23
    ldh [$c1], a                                  ; $421f: $e0 $c1
    ld a, $1a                                     ; $4221: $3e $1a
    ldh [$bd], a                                  ; $4223: $e0 $bd
    ld a, $6e                                     ; $4225: $3e $6e
    ldh [$be], a                                  ; $4227: $e0 $be
    call Call_000_341a                            ; $4229: $cd $1a $34
    ld de, $0008                                  ; $422c: $11 $08 $00
    call Call_000_30e1                            ; $422f: $cd $e1 $30
    ld hl, $1d33                                  ; $4232: $21 $33 $1d
    ldh [$c1], a                                  ; $4235: $e0 $c1
    ld a, $5f                                     ; $4237: $3e $5f
    ldh [$bd], a                                  ; $4239: $e0 $bd
    ld a, $7c                                     ; $423b: $3e $7c
    ldh [$be], a                                  ; $423d: $e0 $be
    jp Jump_000_340c                              ; $423f: $c3 $0c $34


Call_004_4242:
    ld [$cdd1], a                                 ; $4242: $ea $d1 $cd
    ld a, l                                       ; $4245: $7d
    ld [$cd17], a                                 ; $4246: $ea $17 $cd
    ld a, h                                       ; $4249: $7c
    ld [$cd18], a                                 ; $424a: $ea $18 $cd
    ld bc, $0008                                  ; $424d: $01 $08 $00
    ld hl, $cd1a                                  ; $4250: $21 $1a $cd
    call Call_000_112e                            ; $4253: $cd $2e $11
    rst $18                                       ; $4256: $df
    ld a, [$cdd2]                                 ; $4257: $fa $d2 $cd
    ld l, a                                       ; $425a: $6f
    ld h, $00                                     ; $425b: $26 $00
    push hl                                       ; $425d: $e5
    ld a, [$cdd1]                                 ; $425e: $fa $d1 $cd
    ld bc, $5b82                                  ; $4261: $01 $82 $5b
    ldh [$c1], a                                  ; $4264: $e0 $c1
    ld a, $6a                                     ; $4266: $3e $6a
    ldh [$bd], a                                  ; $4268: $e0 $bd
    ld a, $0f                                     ; $426a: $3e $0f
    ldh [$be], a                                  ; $426c: $e0 $be
    call Call_000_3421                            ; $426e: $cd $21 $34
    pop hl                                        ; $4271: $e1
    ld a, l                                       ; $4272: $7d
    add $80                                       ; $4273: $c6 $80
    ld l, a                                       ; $4275: $6f
    ld bc, $5cea                                  ; $4276: $01 $ea $5c
    ld de, $d820                                  ; $4279: $11 $20 $d8
    ldh [$c1], a                                  ; $427c: $e0 $c1
    ld a, $7a                                     ; $427e: $3e $7a
    ldh [$bd], a                                  ; $4280: $e0 $bd
    ld a, $0f                                     ; $4282: $3e $0f
    ldh [$be], a                                  ; $4284: $e0 $be
    call Call_000_3421                            ; $4286: $cd $21 $34
    ld a, [$cdd1]                                 ; $4289: $fa $d1 $cd
    ld hl, $5ced                                  ; $428c: $21 $ed $5c
    call Call_000_0fad                            ; $428f: $cd $ad $0f
    ld a, [$cd19]                                 ; $4292: $fa $19 $cd
    cp $03                                        ; $4295: $fe $03
    jr nz, jr_004_42a8                            ; $4297: $20 $0f

    ld a, [$cdd1]                                 ; $4299: $fa $d1 $cd
    call Call_004_4067                            ; $429c: $cd $67 $40
    ld a, $ff                                     ; $429f: $3e $ff
    ld [$cd19], a                                 ; $42a1: $ea $19 $cd
    ld a, $57                                     ; $42a4: $3e $57
    jr jr_004_42b3                                ; $42a6: $18 $0b

jr_004_42a8:
    cp $ff                                        ; $42a8: $fe $ff
    ret nz                                        ; $42aa: $c0

    ld a, [$cdd1]                                 ; $42ab: $fa $d1 $cd
    call Call_004_4067                            ; $42ae: $cd $67 $40
    ld a, $08                                     ; $42b1: $3e $08

jr_004_42b3:
    call Call_000_13ff                            ; $42b3: $cd $ff $13
    ld hl, $5489                                  ; $42b6: $21 $89 $54
    add hl, bc                                    ; $42b9: $09
    ld a, l                                       ; $42ba: $7d
    ld [$c127], a                                 ; $42bb: $ea $27 $c1
    ld a, h                                       ; $42be: $7c
    ld [$c128], a                                 ; $42bf: $ea $28 $c1
    xor a                                         ; $42c2: $af
    ld [$c126], a                                 ; $42c3: $ea $26 $c1
    ld [$c125], a                                 ; $42c6: $ea $25 $c1
    ld a, $04                                     ; $42c9: $3e $04
    ld [$c124], a                                 ; $42cb: $ea $24 $c1
    ld a, $20                                     ; $42ce: $3e $20
    ld [$c141], a                                 ; $42d0: $ea $41 $c1
    call Call_004_42f5                            ; $42d3: $cd $f5 $42
    ld a, $0d                                     ; $42d6: $3e $0d
    call Call_000_2448                            ; $42d8: $cd $48 $24
    ld hl, $79ec                                  ; $42db: $21 $ec $79
    ldh [$c1], a                                  ; $42de: $e0 $c1
    ld a, $6d                                     ; $42e0: $3e $6d
    ldh [$bd], a                                  ; $42e2: $e0 $bd
    ld a, $7c                                     ; $42e4: $3e $7c
    ldh [$be], a                                  ; $42e6: $e0 $be
    call Call_000_340c                            ; $42e8: $cd $0c $34
    ld hl, $0120                                  ; $42eb: $21 $20 $01
    call Call_000_3929                            ; $42ee: $cd $29 $39
    call Call_004_4306                            ; $42f1: $cd $06 $43
    ret                                           ; $42f4: $c9


Call_004_42f5:
    xor a                                         ; $42f5: $af
    ld [$cd19], a                                 ; $42f6: $ea $19 $cd
    ld hl, $c0c4                                  ; $42f9: $21 $c4 $c0
    set 0, [hl]                                   ; $42fc: $cb $c6
    jp Jump_000_37e0                              ; $42fe: $c3 $e0 $37


Call_004_4301:
    ldh a, [$dd]                                  ; $4301: $f0 $dd
    ldh [$de], a                                  ; $4303: $e0 $de
    ret                                           ; $4305: $c9


Call_004_4306:
    ldh a, [$de]                                  ; $4306: $f0 $de
    ldh [$dd], a                                  ; $4308: $e0 $dd
    cp $00                                        ; $430a: $fe $00
    ret z                                         ; $430c: $c8

    ld a, $00                                     ; $430d: $3e $00
    ldh [$de], a                                  ; $430f: $e0 $de
    ld hl, $c32f                                  ; $4311: $21 $2f $c3
    ld bc, $0004                                  ; $4314: $01 $04 $00
    call Call_000_112e                            ; $4317: $cd $2e $11
    ldh a, [rSVBK]                                ; $431a: $f0 $70
    push af                                       ; $431c: $f5
    ld a, $06                                     ; $431d: $3e $06
    ldh [rSVBK], a                                ; $431f: $e0 $70
    ld a, [$d5d5]                                 ; $4321: $fa $d5 $d5
    ldh [$bc], a                                  ; $4324: $e0 $bc
    pop af                                        ; $4326: $f1
    ldh [rSVBK], a                                ; $4327: $e0 $70
    ldh a, [$bc]                                  ; $4329: $f0 $bc
    cp $06                                        ; $432b: $fe $06
    ret z                                         ; $432d: $c8

    ld hl, $c345                                  ; $432e: $21 $45 $c3
    ld [hl], $00                                  ; $4331: $36 $00
    ret                                           ; $4333: $c9


    ldh [$bc], a                                  ; $4334: $e0 $bc
    ldh a, [rSVBK]                                ; $4336: $f0 $70
    push af                                       ; $4338: $f5
    ld a, $01                                     ; $4339: $3e $01
    ldh [rSVBK], a                                ; $433b: $e0 $70
    ldh a, [$bc]                                  ; $433d: $f0 $bc
    call Call_004_4242                            ; $433f: $cd $42 $42
    ld de, $0000                                  ; $4342: $11 $00 $00
    call Call_004_4086                            ; $4345: $cd $86 $40
    xor a                                         ; $4348: $af
    ld [$cd19], a                                 ; $4349: $ea $19 $cd
    ldh [$a8], a                                  ; $434c: $e0 $a8
    ldh [$a6], a                                  ; $434e: $e0 $a6
    pop af                                        ; $4350: $f1
    ldh [rSVBK], a                                ; $4351: $e0 $70
    ret                                           ; $4353: $c9


    ldh [$bc], a                                  ; $4354: $e0 $bc
    ldh a, [rSVBK]                                ; $4356: $f0 $70
    push af                                       ; $4358: $f5
    ld a, $01                                     ; $4359: $3e $01
    ldh [rSVBK], a                                ; $435b: $e0 $70
    ldh a, [$bc]                                  ; $435d: $f0 $bc
    call Call_004_4242                            ; $435f: $cd $42 $42
    ld a, [$cdd3]                                 ; $4362: $fa $d3 $cd
    ld c, a                                       ; $4365: $4f
    ld d, $05                                     ; $4366: $16 $05
    ld e, $10                                     ; $4368: $1e $10
    ld hl, $0004                                  ; $436a: $21 $04 $00
    call Call_000_13c2                            ; $436d: $cd $c2 $13
    ld de, $0008                                  ; $4370: $11 $08 $00
    call Call_000_30e1                            ; $4373: $cd $e1 $30
    ld hl, $1d33                                  ; $4376: $21 $33 $1d
    ldh [$c1], a                                  ; $4379: $e0 $c1
    ld a, $5f                                     ; $437b: $3e $5f
    ldh [$bd], a                                  ; $437d: $e0 $bd
    ld a, $7c                                     ; $437f: $3e $7c
    ldh [$be], a                                  ; $4381: $e0 $be
    call Call_000_340c                            ; $4383: $cd $0c $34
    ld hl, $4001                                  ; $4386: $21 $01 $40
    call Call_000_301f                            ; $4389: $cd $1f $30
    ld a, [$cdd4]                                 ; $438c: $fa $d4 $cd
    ldh [$b8], a                                  ; $438f: $e0 $b8
    ld [$c1f0], a                                 ; $4391: $ea $f0 $c1
    xor a                                         ; $4394: $af
    ld [$c1f1], a                                 ; $4395: $ea $f1 $c1
    ld a, $7c                                     ; $4398: $3e $7c
    ld [$c1eb], a                                 ; $439a: $ea $eb $c1
    ld a, $04                                     ; $439d: $3e $04
    ld [$c234], a                                 ; $439f: $ea $34 $c2
    ld de, $0000                                  ; $43a2: $11 $00 $00
    ld hl, $cd17                                  ; $43a5: $21 $17 $cd
    ld a, [hl+]                                   ; $43a8: $2a
    ld h, [hl]                                    ; $43a9: $66
    ld l, a                                       ; $43aa: $6f
    ldh [$c1], a                                  ; $43ab: $e0 $c1
    ld a, $1a                                     ; $43ad: $3e $1a
    ldh [$bd], a                                  ; $43af: $e0 $bd
    ld a, $6e                                     ; $43b1: $3e $6e
    ldh [$be], a                                  ; $43b3: $e0 $be
    call Call_000_341a                            ; $43b5: $cd $1a $34
    ld hl, $1d33                                  ; $43b8: $21 $33 $1d
    ldh [$c1], a                                  ; $43bb: $e0 $c1
    ld a, $5f                                     ; $43bd: $3e $5f
    ldh [$bd], a                                  ; $43bf: $e0 $bd
    ld a, $7c                                     ; $43c1: $3e $7c
    ldh [$be], a                                  ; $43c3: $e0 $be
    call Call_000_340c                            ; $43c5: $cd $0c $34
    xor a                                         ; $43c8: $af
    ld [$cd19], a                                 ; $43c9: $ea $19 $cd
    ldh [$a8], a                                  ; $43cc: $e0 $a8
    ldh [$a6], a                                  ; $43ce: $e0 $a6
    pop af                                        ; $43d0: $f1
    ldh [rSVBK], a                                ; $43d1: $e0 $70
    ret                                           ; $43d3: $c9


    ldh [$bc], a                                  ; $43d4: $e0 $bc
    ldh a, [rSVBK]                                ; $43d6: $f0 $70
    push af                                       ; $43d8: $f5
    ld a, $01                                     ; $43d9: $3e $01
    ldh [rSVBK], a                                ; $43db: $e0 $70
    ldh a, [$bc]                                  ; $43dd: $f0 $bc
    call Call_004_4242                            ; $43df: $cd $42 $42
    ld hl, $4e24                                  ; $43e2: $21 $24 $4e
    ldh [$c1], a                                  ; $43e5: $e0 $c1
    ld a, $61                                     ; $43e7: $3e $61
    ldh [$bd], a                                  ; $43e9: $e0 $bd
    ld a, $4f                                     ; $43eb: $3e $4f
    ldh [$be], a                                  ; $43ed: $e0 $be
    call Call_000_33fe                            ; $43ef: $cd $fe $33
    ld de, $0000                                  ; $43f2: $11 $00 $00
    call Call_004_41bc                            ; $43f5: $cd $bc $41
    ld a, $01                                     ; $43f8: $3e $01
    ld [$cd19], a                                 ; $43fa: $ea $19 $cd
    xor a                                         ; $43fd: $af
    ldh [$a8], a                                  ; $43fe: $e0 $a8
    ldh [$a6], a                                  ; $4400: $e0 $a6
    ld a, $03                                     ; $4402: $3e $03
    ldh [$9b], a                                  ; $4404: $e0 $9b
    ld a, $7c                                     ; $4406: $3e $7c
    call Call_000_03a0                            ; $4408: $cd $a0 $03
    pop af                                        ; $440b: $f1
    ldh [rSVBK], a                                ; $440c: $e0 $70
    ret                                           ; $440e: $c9


Call_004_440f:
    push de                                       ; $440f: $d5
    ld a, $09                                     ; $4410: $3e $09
    ldh [$9b], a                                  ; $4412: $e0 $9b
    ld a, $83                                     ; $4414: $3e $83
    call Call_000_03a0                            ; $4416: $cd $a0 $03
    ld hl, $cd22                                  ; $4419: $21 $22 $cd
    ld [hl], e                                    ; $441c: $73
    inc hl                                        ; $441d: $23
    ld [hl], d                                    ; $441e: $72
    ld c, e                                       ; $441f: $4b
    ld b, d                                       ; $4420: $42
    pop de                                        ; $4421: $d1
    ld a, e                                       ; $4422: $7b
    jp Jump_000_08ec                              ; $4423: $c3 $ec $08


Call_004_4426:
    ld a, $01                                     ; $4426: $3e $01
    ld [$cd24], a                                 ; $4428: $ea $24 $cd
    ldh [$bc], a                                  ; $442b: $e0 $bc
    ldh a, [rSVBK]                                ; $442d: $f0 $70
    push af                                       ; $442f: $f5
    ld a, $01                                     ; $4430: $3e $01
    ldh [rSVBK], a                                ; $4432: $e0 $70
    ldh a, [$bc]                                  ; $4434: $f0 $bc
    ld a, l                                       ; $4436: $7d
    ld [$cd17], a                                 ; $4437: $ea $17 $cd
    ld a, h                                       ; $443a: $7c
    ld [$cd18], a                                 ; $443b: $ea $18 $cd
    rst $18                                       ; $443e: $df
    ldh [$c1], a                                  ; $443f: $e0 $c1
    ld a, $4f                                     ; $4441: $3e $4f
    ldh [$bd], a                                  ; $4443: $e0 $bd
    ld a, $0f                                     ; $4445: $3e $0f
    ldh [$be], a                                  ; $4447: $e0 $be
    call Call_000_3421                            ; $4449: $cd $21 $34
    ld a, d                                       ; $444c: $7a
    cp $03                                        ; $444d: $fe $03
    jr nz, jr_004_4458                            ; $444f: $20 $07

    ld a, $53                                     ; $4451: $3e $53
    ld d, $00                                     ; $4453: $16 $00
    ld e, a                                       ; $4455: $5f
    jr jr_004_44af                                ; $4456: $18 $57

jr_004_4458:
    cp $04                                        ; $4458: $fe $04
    jr nz, jr_004_447b                            ; $445a: $20 $1f

    push bc                                       ; $445c: $c5
    push de                                       ; $445d: $d5
    ld a, $6d                                     ; $445e: $3e $6d
    ld e, a                                       ; $4460: $5f
    ldh [$c1], a                                  ; $4461: $e0 $c1
    ld a, $87                                     ; $4463: $3e $87
    ldh [$bd], a                                  ; $4465: $e0 $bd
    ld a, $0f                                     ; $4467: $3e $0f
    ldh [$be], a                                  ; $4469: $e0 $be
    call Call_000_3421                            ; $446b: $cd $21 $34
    call Call_004_440f                            ; $446e: $cd $0f $44
    pop de                                        ; $4471: $d1
    pop bc                                        ; $4472: $c1
    ld a, e                                       ; $4473: $7b
    ld d, $02                                     ; $4474: $16 $02
    call Call_004_412f                            ; $4476: $cd $2f $41
    jr jr_004_44c2                                ; $4479: $18 $47

jr_004_447b:
    ld a, d                                       ; $447b: $7a
    cp $05                                        ; $447c: $fe $05
    jr nz, jr_004_449f                            ; $447e: $20 $1f

    push bc                                       ; $4480: $c5
    push de                                       ; $4481: $d5
    ld a, $24                                     ; $4482: $3e $24
    ld e, a                                       ; $4484: $5f
    ldh [$c1], a                                  ; $4485: $e0 $c1
    ld a, $87                                     ; $4487: $3e $87
    ldh [$bd], a                                  ; $4489: $e0 $bd
    ld a, $0f                                     ; $448b: $3e $0f
    ldh [$be], a                                  ; $448d: $e0 $be
    call Call_000_3421                            ; $448f: $cd $21 $34
    call Call_004_440f                            ; $4492: $cd $0f $44
    pop de                                        ; $4495: $d1
    pop bc                                        ; $4496: $c1
    ld a, e                                       ; $4497: $7b
    ld d, $02                                     ; $4498: $16 $02
    call Call_004_412f                            ; $449a: $cd $2f $41
    jr jr_004_44c2                                ; $449d: $18 $23

jr_004_449f:
    ld a, d                                       ; $449f: $7a
    cp $02                                        ; $44a0: $fe $02
    ld a, e                                       ; $44a2: $7b
    jr z, jr_004_44af                             ; $44a3: $28 $0a

    or a                                          ; $44a5: $b7
    ld a, $6d                                     ; $44a6: $3e $6d
    ld e, $6d                                     ; $44a8: $1e $6d
    jr z, jr_004_44af                             ; $44aa: $28 $03

    ld a, $6c                                     ; $44ac: $3e $6c
    ld e, a                                       ; $44ae: $5f

jr_004_44af:
    ldh [$c1], a                                  ; $44af: $e0 $c1
    ld a, $87                                     ; $44b1: $3e $87
    ldh [$bd], a                                  ; $44b3: $e0 $bd
    ld a, $0f                                     ; $44b5: $3e $0f
    ldh [$be], a                                  ; $44b7: $e0 $be
    call Call_000_3421                            ; $44b9: $cd $21 $34
    call Call_004_412f                            ; $44bc: $cd $2f $41
    call Call_004_440f                            ; $44bf: $cd $0f $44

jr_004_44c2:
    ld a, $29                                     ; $44c2: $3e $29
    call Call_000_13ff                            ; $44c4: $cd $ff $13
    ld hl, $5489                                  ; $44c7: $21 $89 $54
    add hl, bc                                    ; $44ca: $09
    ld a, l                                       ; $44cb: $7d
    ld [$c127], a                                 ; $44cc: $ea $27 $c1
    ld a, h                                       ; $44cf: $7c
    ld [$c128], a                                 ; $44d0: $ea $28 $c1
    xor a                                         ; $44d3: $af
    ld [$c126], a                                 ; $44d4: $ea $26 $c1
    ld [$c125], a                                 ; $44d7: $ea $25 $c1
    ld a, $04                                     ; $44da: $3e $04
    ld [$c124], a                                 ; $44dc: $ea $24 $c1
    call Call_004_42f5                            ; $44df: $cd $f5 $42
    ld hl, $7a09                                  ; $44e2: $21 $09 $7a
    ldh [$c1], a                                  ; $44e5: $e0 $c1
    ld a, $6d                                     ; $44e7: $3e $6d
    ldh [$bd], a                                  ; $44e9: $e0 $bd
    ld a, $7c                                     ; $44eb: $3e $7c
    ldh [$be], a                                  ; $44ed: $e0 $be
    call Call_000_340c                            ; $44ef: $cd $0c $34
    ld a, $0d                                     ; $44f2: $3e $0d
    call Call_000_2448                            ; $44f4: $cd $48 $24
    ld a, $02                                     ; $44f7: $3e $02
    ld [$cd19], a                                 ; $44f9: $ea $19 $cd
    xor a                                         ; $44fc: $af
    ld [$cd1a], a                                 ; $44fd: $ea $1a $cd
    ldh [$a8], a                                  ; $4500: $e0 $a8
    ldh [$a6], a                                  ; $4502: $e0 $a6
    call Call_004_4306                            ; $4504: $cd $06 $43
    pop af                                        ; $4507: $f1
    ldh [rSVBK], a                                ; $4508: $e0 $70
    ret                                           ; $450a: $c9


Call_004_450b:
    ld a, [$cd22]                                 ; $450b: $fa $22 $cd
    ld c, a                                       ; $450e: $4f
    ld a, [$cd23]                                 ; $450f: $fa $23 $cd
    ld b, a                                       ; $4512: $47
    or c                                          ; $4513: $b1
    ret z                                         ; $4514: $c8

    ld hl, $cd22                                  ; $4515: $21 $22 $cd
    ld [hl], $00                                  ; $4518: $36 $00
    inc hl                                        ; $451a: $23
    ld [hl], $00                                  ; $451b: $36 $00
    jp Jump_000_0e9d                              ; $451d: $c3 $9d $0e


    ldh [$c1], a                                  ; $4520: $e0 $c1
    ld a, $86                                     ; $4522: $3e $86
    ldh [$bd], a                                  ; $4524: $e0 $bd
    ld a, $4f                                     ; $4526: $3e $4f
    ldh [$be], a                                  ; $4528: $e0 $be
    call Call_000_33fe                            ; $452a: $cd $fe $33
    call Call_000_30f3                            ; $452d: $cd $f3 $30
    ret nz                                        ; $4530: $c0

    ldh a, [$a5]                                  ; $4531: $f0 $a5
    and $07                                       ; $4533: $e6 $07
    ret z                                         ; $4535: $c8

    ld a, [$cd19]                                 ; $4536: $fa $19 $cd
    and $7f                                       ; $4539: $e6 $7f
    cp $01                                        ; $453b: $fe $01
    jr z, jr_004_4554                             ; $453d: $28 $15

    ld a, [$c238]                                 ; $453f: $fa $38 $c2
    ld e, a                                       ; $4542: $5f
    ld a, [$c239]                                 ; $4543: $fa $39 $c2
    ld d, a                                       ; $4546: $57
    or e                                          ; $4547: $b3
    jr z, jr_004_456f                             ; $4548: $28 $25

    rst $18                                       ; $454a: $df
    call Call_004_4086                            ; $454b: $cd $86 $40
    xor a                                         ; $454e: $af
    ldh [$a8], a                                  ; $454f: $e0 $a8
    ldh [$a6], a                                  ; $4551: $e0 $a6
    ret                                           ; $4553: $c9


jr_004_4554:
    ldh a, [rSVBK]                                ; $4554: $f0 $70
    push af                                       ; $4556: $f5
    ld a, $06                                     ; $4557: $3e $06
    ldh [rSVBK], a                                ; $4559: $e0 $70
    ldh a, [$d5]                                  ; $455b: $f0 $d5
    ld [$d6d3], a                                 ; $455d: $ea $d3 $d6
    pop af                                        ; $4560: $f1
    ldh [rSVBK], a                                ; $4561: $e0 $70
    ld a, $7c                                     ; $4563: $3e $7c
    ld e, $03                                     ; $4565: $1e $03
    call Call_000_0a6f                            ; $4567: $cd $6f $0a
    ld c, l                                       ; $456a: $4d
    ld b, h                                       ; $456b: $44
    call Call_000_0e9d                            ; $456c: $cd $9d $0e

jr_004_456f:
    call Call_004_4663                            ; $456f: $cd $63 $46
    ld a, e                                       ; $4572: $7b
    cp $33                                        ; $4573: $fe $33
    jr nz, jr_004_4584                            ; $4575: $20 $0d

    ld a, [$cd19]                                 ; $4577: $fa $19 $cd
    cp $02                                        ; $457a: $fe $02
    jr z, jr_004_4584                             ; $457c: $28 $06

    ld a, $04                                     ; $457e: $3e $04
    ld [$cb17], a                                 ; $4580: $ea $17 $cb
    ret                                           ; $4583: $c9


jr_004_4584:
    call Call_004_450b                            ; $4584: $cd $0b $45
    call Call_004_411d                            ; $4587: $cd $1d $41
    xor a                                         ; $458a: $af
    ld [$cd24], a                                 ; $458b: $ea $24 $cd
    xor a                                         ; $458e: $af
    ldh [$a5], a                                  ; $458f: $e0 $a5
    ld a, $ff                                     ; $4591: $3e $ff
    ld [$cd19], a                                 ; $4593: $ea $19 $cd
    call Call_004_4301                            ; $4596: $cd $01 $43
    ld a, $0c                                     ; $4599: $3e $0c
    call Call_000_2448                            ; $459b: $cd $48 $24
    ld a, [$cb17]                                 ; $459e: $fa $17 $cb
    cp $09                                        ; $45a1: $fe $09
    jr nz, jr_004_460e                            ; $45a3: $20 $69

    ld a, $04                                     ; $45a5: $3e $04
    ld [$cb17], a                                 ; $45a7: $ea $17 $cb
    ld a, [$cb20]                                 ; $45aa: $fa $20 $cb
    ld d, a                                       ; $45ad: $57
    ld a, [$cb21]                                 ; $45ae: $fa $21 $cb
    or d                                          ; $45b1: $b2
    jr z, jr_004_460e                             ; $45b2: $28 $5a

    ld a, [$cb24]                                 ; $45b4: $fa $24 $cb
    or a                                          ; $45b7: $b7
    jr z, jr_004_45e8                             ; $45b8: $28 $2e

    push bc                                       ; $45ba: $c5
    ld hl, $cb20                                  ; $45bb: $21 $20 $cb
    ld c, [hl]                                    ; $45be: $4e
    inc hl                                        ; $45bf: $23
    ld b, [hl]                                    ; $45c0: $46
    ld hl, $cb22                                  ; $45c1: $21 $22 $cb
    ld e, [hl]                                    ; $45c4: $5e
    inc hl                                        ; $45c5: $23
    ld d, [hl]                                    ; $45c6: $56
    call Call_000_0a5b                            ; $45c7: $cd $5b $0a
    ld hl, $0023                                  ; $45ca: $21 $23 $00
    add hl, bc                                    ; $45cd: $09
    ld de, $cb25                                  ; $45ce: $11 $25 $cb
    ld a, [de]                                    ; $45d1: $1a
    ld [hl+], a                                   ; $45d2: $22
    inc de                                        ; $45d3: $13
    ld a, [de]                                    ; $45d4: $1a
    ld [hl+], a                                   ; $45d5: $22
    inc de                                        ; $45d6: $13
    ld a, [de]                                    ; $45d7: $1a
    ld [hl], a                                    ; $45d8: $77
    pop bc                                        ; $45d9: $c1
    ld hl, $cb20                                  ; $45da: $21 $20 $cb
    xor a                                         ; $45dd: $af
    ld [hl+], a                                   ; $45de: $22
    ld [hl+], a                                   ; $45df: $22
    ld [hl+], a                                   ; $45e0: $22
    ld [hl+], a                                   ; $45e1: $22
    ld [hl+], a                                   ; $45e2: $22
    ld [hl+], a                                   ; $45e3: $22
    ld [hl+], a                                   ; $45e4: $22
    ld [hl], a                                    ; $45e5: $77
    jr jr_004_460e                                ; $45e6: $18 $26

jr_004_45e8:
    push bc                                       ; $45e8: $c5
    ld hl, $cb20                                  ; $45e9: $21 $20 $cb
    ld c, [hl]                                    ; $45ec: $4e
    inc hl                                        ; $45ed: $23
    ld b, [hl]                                    ; $45ee: $46
    ld hl, $cb22                                  ; $45ef: $21 $22 $cb
    ld e, [hl]                                    ; $45f2: $5e
    inc hl                                        ; $45f3: $23
    ld d, [hl]                                    ; $45f4: $56
    ld hl, $001a                                  ; $45f5: $21 $1a $00
    add hl, bc                                    ; $45f8: $09
    ld [hl], e                                    ; $45f9: $73
    inc hl                                        ; $45fa: $23
    ld [hl], d                                    ; $45fb: $72
    xor a                                         ; $45fc: $af
    ld hl, $001c                                  ; $45fd: $21 $1c $00
    add hl, bc                                    ; $4600: $09
    ld [hl], a                                    ; $4601: $77
    ld hl, $001e                                  ; $4602: $21 $1e $00
    add hl, bc                                    ; $4605: $09
    ld [hl], a                                    ; $4606: $77
    pop bc                                        ; $4607: $c1
    xor a                                         ; $4608: $af
    ld [hl+], a                                   ; $4609: $22
    ld [hl+], a                                   ; $460a: $22
    ld [hl+], a                                   ; $460b: $22
    ld [hl+], a                                   ; $460c: $22
    ld [hl], a                                    ; $460d: $77

jr_004_460e:
    ldh [$c1], a                                  ; $460e: $e0 $c1
    ld a, $13                                     ; $4610: $3e $13
    ldh [$bd], a                                  ; $4612: $e0 $bd
    ld a, $7d                                     ; $4614: $3e $7d
    ldh [$be], a                                  ; $4616: $e0 $be
    call Call_000_340c                            ; $4618: $cd $0c $34
    ld hl, $cc12                                  ; $461b: $21 $12 $cc
    ld a, [hl+]                                   ; $461e: $2a
    ld h, [hl]                                    ; $461f: $66
    ld l, a                                       ; $4620: $6f
    call Call_000_3911                            ; $4621: $cd $11 $39
    ld hl, $79d7                                  ; $4624: $21 $d7 $79
    ldh [$c1], a                                  ; $4627: $e0 $c1
    ld a, $6d                                     ; $4629: $3e $6d
    ldh [$bd], a                                  ; $462b: $e0 $bd
    ld a, $7c                                     ; $462d: $3e $7c
    ldh [$be], a                                  ; $462f: $e0 $be
    call Call_000_340c                            ; $4631: $cd $0c $34
    ldh a, [rSVBK]                                ; $4634: $f0 $70
    push af                                       ; $4636: $f5
    ld a, $06                                     ; $4637: $3e $06
    ldh [rSVBK], a                                ; $4639: $e0 $70
    ld a, [$d612]                                 ; $463b: $fa $12 $d6
    ld b, a                                       ; $463e: $47
    xor a                                         ; $463f: $af
    ld [$d612], a                                 ; $4640: $ea $12 $d6
    pop af                                        ; $4643: $f1
    ldh [rSVBK], a                                ; $4644: $e0 $70
    ld a, b                                       ; $4646: $78
    or a                                          ; $4647: $b7
    ret z                                         ; $4648: $c8

    ldh [$c1], a                                  ; $4649: $e0 $c1
    ld a, $37                                     ; $464b: $3e $37
    ldh [$bd], a                                  ; $464d: $e0 $bd
    ld a, $18                                     ; $464f: $3e $18
    ldh [$be], a                                  ; $4651: $e0 $be
    call Call_000_3421                            ; $4653: $cd $21 $34
    ldh [$c1], a                                  ; $4656: $e0 $c1
    ld a, $28                                     ; $4658: $3e $28
    ldh [$bd], a                                  ; $465a: $e0 $bd
    ld a, $6d                                     ; $465c: $3e $6d
    ldh [$be], a                                  ; $465e: $e0 $be
    jp Jump_000_340c                              ; $4660: $c3 $0c $34


Call_004_4663:
    ld a, [$cb17]                                 ; $4663: $fa $17 $cb
    ld e, a                                       ; $4666: $5f
    or a                                          ; $4667: $b7
    ret z                                         ; $4668: $c8

    push bc                                       ; $4669: $c5
    ld a, [$cb1a]                                 ; $466a: $fa $1a $cb
    ld c, a                                       ; $466d: $4f
    call Call_000_3525                            ; $466e: $cd $25 $35
    push de                                       ; $4671: $d5
    ld a, [$cb1a]                                 ; $4672: $fa $1a $cb
    ld c, a                                       ; $4675: $4f
    call Call_000_3525                            ; $4676: $cd $25 $35
    pop de                                        ; $4679: $d1
    ld e, a                                       ; $467a: $5f
    call Call_000_354a                            ; $467b: $cd $4a $35
    call Call_000_354a                            ; $467e: $cd $4a $35
    pop bc                                        ; $4681: $c1
    ret                                           ; $4682: $c9


    db $10, $01, $76, $49, $b1, $00, $41, $9e, $46, $a7, $46, $b0, $46, $b9, $46, $c2
    db $46, $cb, $46, $d4, $46, $dd, $46, $e6, $46, $ef, $46, $01, $08, $e0, $00, $00
    db $04, $04, $00, $0a, $01, $08, $f0, $00, $00, $04, $04, $04, $0a, $01, $08, $00
    db $00, $00, $04, $04, $08, $0a, $01, $08, $10, $00, $00, $04, $04, $0c, $0a, $01
    db $08, $20, $00, $00, $04, $04, $10, $0a, $01, $08, $30, $00, $00, $04, $04, $00
    db $0e, $01, $08, $40, $00, $00, $04, $04, $04, $0e, $01, $08, $50, $00, $00, $04
    db $04, $08, $0e, $01, $08, $60, $00, $00, $04, $04, $0c, $0e, $01, $08, $70, $00
    db $00, $04, $04, $10, $0e

    ld e, [hl]                                    ; $46f8: $5e
    ld e, [hl]                                    ; $46f9: $5e
    ld h, c                                       ; $46fa: $61
    ld e, [hl]                                    ; $46fb: $5e
    ld h, h                                       ; $46fc: $64
    ld e, [hl]                                    ; $46fd: $5e

    db $67, $5e

    ld l, d                                       ; $4700: $6a
    ld e, [hl]                                    ; $4701: $5e
    ld l, l                                       ; $4702: $6d
    ld e, [hl]                                    ; $4703: $5e

    db $70, $5e

    ld [hl], e                                    ; $4706: $73
    ld e, [hl]                                    ; $4707: $5e
    halt                                          ; $4708: $76
    ld e, [hl]                                    ; $4709: $5e
    ld a, c                                       ; $470a: $79
    ld e, [hl]                                    ; $470b: $5e
    ld a, h                                       ; $470c: $7c
    ld e, [hl]                                    ; $470d: $5e

Call_004_470e:
    ld hl, $4683                                  ; $470e: $21 $83 $46
    call Call_000_301f                            ; $4711: $cd $1f $30
    ld a, $68                                     ; $4714: $3e $68
    ld [$c1eb], a                                 ; $4716: $ea $eb $c1
    ld a, $08                                     ; $4719: $3e $08
    ld [$c234], a                                 ; $471b: $ea $34 $c2
    ld a, [$cb33]                                 ; $471e: $fa $33 $cb
    ld hl, $1300                                  ; $4721: $21 $00 $13
    ldh [$c1], a                                  ; $4724: $e0 $c1
    ld a, $67                                     ; $4726: $3e $67
    ldh [$bd], a                                  ; $4728: $e0 $bd
    ld a, $6e                                     ; $472a: $3e $6e
    ldh [$be], a                                  ; $472c: $e0 $be
    call Call_000_341a                            ; $472e: $cd $1a $34
    ld a, [$c1ed]                                 ; $4731: $fa $ed $c1
    cp $02                                        ; $4734: $fe $02
    jr nz, jr_004_4745                            ; $4736: $20 $0d

    ldh [$c1], a                                  ; $4738: $e0 $c1
    ld a, $b3                                     ; $473a: $3e $b3
    ldh [$bd], a                                  ; $473c: $e0 $bd
    ld a, $6c                                     ; $473e: $3e $6c
    ldh [$be], a                                  ; $4740: $e0 $be
    call Call_000_341a                            ; $4742: $cd $1a $34

jr_004_4745:
    ld a, $12                                     ; $4745: $3e $12
    ldh [$c1], a                                  ; $4747: $e0 $c1
    ld a, $af                                     ; $4749: $3e $af
    ldh [$bd], a                                  ; $474b: $e0 $bd
    ld a, $6c                                     ; $474d: $3e $6c
    ldh [$be], a                                  ; $474f: $e0 $be
    call Call_000_341a                            ; $4751: $cd $1a $34
    ld a, [$cb33]                                 ; $4754: $fa $33 $cb
    ld hl, $1438                                  ; $4757: $21 $38 $14
    ldh [$c1], a                                  ; $475a: $e0 $c1
    ld a, $67                                     ; $475c: $3e $67
    ldh [$bd], a                                  ; $475e: $e0 $bd
    ld a, $6e                                     ; $4760: $3e $6e
    ldh [$be], a                                  ; $4762: $e0 $be
    jp Jump_000_341a                              ; $4764: $c3 $1a $34


    push bc                                       ; $4767: $c5
    ldh a, [rSVBK]                                ; $4768: $f0 $70
    push af                                       ; $476a: $f5
    ld a, $06                                     ; $476b: $3e $06
    ldh [rSVBK], a                                ; $476d: $e0 $70
    ld c, $00                                     ; $476f: $0e $00
    ld b, $65                                     ; $4771: $06 $65
    ld hl, $d50a                                  ; $4773: $21 $0a $d5

jr_004_4776:
    ld a, [hl+]                                   ; $4776: $2a
    or a                                          ; $4777: $b7
    jr z, jr_004_477b                             ; $4778: $28 $01

    inc c                                         ; $477a: $0c

jr_004_477b:
    dec b                                         ; $477b: $05
    jr nz, jr_004_4776                            ; $477c: $20 $f8

    pop af                                        ; $477e: $f1
    ldh [rSVBK], a                                ; $477f: $e0 $70
    ld a, c                                       ; $4781: $79
    pop bc                                        ; $4782: $c1
    ret                                           ; $4783: $c9


Call_004_4784:
    push hl                                       ; $4784: $e5
    ld c, a                                       ; $4785: $4f
    ldh a, [rSVBK]                                ; $4786: $f0 $70
    push af                                       ; $4788: $f5
    ld a, $06                                     ; $4789: $3e $06
    ldh [rSVBK], a                                ; $478b: $e0 $70
    ld a, c                                       ; $478d: $79
    ld hl, $d50a                                  ; $478e: $21 $0a $d5
    rst $08                                       ; $4791: $cf
    cp $09                                        ; $4792: $fe $09
    jr z, jr_004_47b1                             ; $4794: $28 $1b

    inc [hl]                                      ; $4796: $34
    pop af                                        ; $4797: $f1
    ldh [rSVBK], a                                ; $4798: $e0 $70
    ld b, $0a                                     ; $479a: $06 $0a
    ld hl, $ce0c                                  ; $479c: $21 $0c $ce

jr_004_479f:
    ld a, [hl]                                    ; $479f: $7e
    inc a                                         ; $47a0: $3c
    jr nz, jr_004_47a6                            ; $47a1: $20 $03

    ld [hl], c                                    ; $47a3: $71
    jr jr_004_47ac                                ; $47a4: $18 $06

jr_004_47a6:
    inc hl                                        ; $47a6: $23
    dec b                                         ; $47a7: $05
    jr nz, jr_004_479f                            ; $47a8: $20 $f5

    dec hl                                        ; $47aa: $2b
    ld [hl], c                                    ; $47ab: $71

jr_004_47ac:
    ld a, $01                                     ; $47ac: $3e $01
    or a                                          ; $47ae: $b7
    pop hl                                        ; $47af: $e1
    ret                                           ; $47b0: $c9


jr_004_47b1:
    pop af                                        ; $47b1: $f1
    ldh [rSVBK], a                                ; $47b2: $e0 $70
    xor a                                         ; $47b4: $af
    pop hl                                        ; $47b5: $e1
    ret                                           ; $47b6: $c9


Call_004_47b7:
    push hl                                       ; $47b7: $e5
    ldh [$bc], a                                  ; $47b8: $e0 $bc
    ldh a, [rSVBK]                                ; $47ba: $f0 $70
    push af                                       ; $47bc: $f5
    ld a, $06                                     ; $47bd: $3e $06
    ldh [rSVBK], a                                ; $47bf: $e0 $70
    ldh a, [$bc]                                  ; $47c1: $f0 $bc
    ld hl, $d50a                                  ; $47c3: $21 $0a $d5
    rst $08                                       ; $47c6: $cf
    dec [hl]                                      ; $47c7: $35
    pop af                                        ; $47c8: $f1
    ldh [rSVBK], a                                ; $47c9: $e0 $70
    pop hl                                        ; $47cb: $e1
    ret                                           ; $47cc: $c9


Call_004_47cd:
    call Call_000_3674                            ; $47cd: $cd $74 $36

    db $00, $00, $07, $07

    ld bc, $0000                                  ; $47d4: $01 $00 $00
    ld de, $d82d                                  ; $47d7: $11 $2d $d8
    xor a                                         ; $47da: $af
    ld hl, $5117                                  ; $47db: $21 $17 $51
    ldh [$c1], a                                  ; $47de: $e0 $c1
    ld a, $2a                                     ; $47e0: $3e $2a
    ldh [$bd], a                                  ; $47e2: $e0 $bd
    ld a, $33                                     ; $47e4: $3e $33
    ldh [$be], a                                  ; $47e6: $e0 $be
    jp Jump_000_3421                              ; $47e8: $c3 $21 $34


Call_004_47eb:
    ld hl, $ffb8                                  ; $47eb: $21 $b8 $ff
    ld [hl], $80                                  ; $47ee: $36 $80
    inc hl                                        ; $47f0: $23
    ld [hl], $00                                  ; $47f1: $36 $00
    ld a, [$cb33]                                 ; $47f3: $fa $33 $cb
    ld hl, $4fdf                                  ; $47f6: $21 $df $4f
    ldh [$c1], a                                  ; $47f9: $e0 $c1
    ld a, $4b                                     ; $47fb: $3e $4b
    ldh [$bd], a                                  ; $47fd: $e0 $bd
    ld a, $29                                     ; $47ff: $3e $29
    ldh [$be], a                                  ; $4801: $e0 $be
    jp Jump_000_3421                              ; $4803: $c3 $21 $34


Call_004_4806:
    push hl                                       ; $4806: $e5
    ld hl, $cb36                                  ; $4807: $21 $36 $cb

jr_004_480a:
    cp [hl]                                       ; $480a: $be
    inc hl                                        ; $480b: $23
    jr z, jr_004_4811                             ; $480c: $28 $03

    inc hl                                        ; $480e: $23
    jr jr_004_480a                                ; $480f: $18 $f9

jr_004_4811:
    ld a, [hl]                                    ; $4811: $7e
    or a                                          ; $4812: $b7
    pop hl                                        ; $4813: $e1
    ret                                           ; $4814: $c9


Call_004_4815:
    ld hl, $ffb8                                  ; $4815: $21 $b8 $ff
    ld [hl], $60                                  ; $4818: $36 $60
    inc hl                                        ; $481a: $23
    ld [hl], $02                                  ; $481b: $36 $02
    ld a, [$cb35]                                 ; $481d: $fa $35 $cb
    ld b, a                                       ; $4820: $47
    ld a, [$cb34]                                 ; $4821: $fa $34 $cb
    ld c, a                                       ; $4824: $4f

jr_004_4825:
    push bc                                       ; $4825: $c5
    ld a, b                                       ; $4826: $78
    call Call_004_4806                            ; $4827: $cd $06 $48
    ld a, b                                       ; $482a: $78
    jr nz, jr_004_482f                            ; $482b: $20 $02

    ld a, $65                                     ; $482d: $3e $65

jr_004_482f:
    ld hl, $5e9a                                  ; $482f: $21 $9a $5e
    ldh [$c1], a                                  ; $4832: $e0 $c1
    ld a, $4b                                     ; $4834: $3e $4b
    ldh [$bd], a                                  ; $4836: $e0 $bd
    ld a, $29                                     ; $4838: $3e $29
    ldh [$be], a                                  ; $483a: $e0 $be
    call Call_000_3421                            ; $483c: $cd $21 $34
    ldh [$c1], a                                  ; $483f: $e0 $c1
    ld a, $55                                     ; $4841: $3e $55
    ldh [$bd], a                                  ; $4843: $e0 $bd
    ld a, $41                                     ; $4845: $3e $41
    ldh [$be], a                                  ; $4847: $e0 $be
    call Call_000_341a                            ; $4849: $cd $1a $34
    pop bc                                        ; $484c: $c1
    inc b                                         ; $484d: $04
    dec c                                         ; $484e: $0d
    jr nz, jr_004_4825                            ; $484f: $20 $d4

    ret                                           ; $4851: $c9


Call_004_4852:
    ld de, $4cee                                  ; $4852: $11 $ee $4c
    call Call_000_134e                            ; $4855: $cd $4e $13
    xor a                                         ; $4858: $af

jr_004_4859:
    push af                                       ; $4859: $f5
    ld hl, $468a                                  ; $485a: $21 $8a $46
    call Call_000_3194                            ; $485d: $cd $94 $31
    xor a                                         ; $4860: $af
    ldh [$c1], a                                  ; $4861: $e0 $c1
    ld a, $e4                                     ; $4863: $3e $e4
    ldh [$bd], a                                  ; $4865: $e0 $bd
    ld a, $24                                     ; $4867: $3e $24
    ldh [$be], a                                  ; $4869: $e0 $be
    call Call_000_3421                            ; $486b: $cd $21 $34
    ld a, [$cb34]                                 ; $486e: $fa $34 $cb
    ld e, a                                       ; $4871: $5f
    pop af                                        ; $4872: $f1
    inc a                                         ; $4873: $3c
    cp e                                          ; $4874: $bb
    jr nz, jr_004_4859                            ; $4875: $20 $e2

    ret                                           ; $4877: $c9


Call_004_4878:
    ld a, [$cb35]                                 ; $4878: $fa $35 $cb
    ld c, a                                       ; $487b: $4f
    ld a, [$cb34]                                 ; $487c: $fa $34 $cb
    ld b, a                                       ; $487f: $47
    ld e, $04                                     ; $4880: $1e $04

jr_004_4882:
    ld a, c                                       ; $4882: $79
    call Call_004_4806                            ; $4883: $cd $06 $48
    jr z, jr_004_489f                             ; $4886: $28 $17

    ld d, a                                       ; $4888: $57
    ld a, e                                       ; $4889: $7b
    ld hl, $4cf1                                  ; $488a: $21 $f1 $4c
    rst $08                                       ; $488d: $cf
    push de                                       ; $488e: $d5
    ld a, [hl+]                                   ; $488f: $2a
    ld e, [hl]                                    ; $4890: $5e
    ld d, a                                       ; $4891: $57
    inc d                                         ; $4892: $14
    inc d                                         ; $4893: $14
    inc e                                         ; $4894: $1c
    inc e                                         ; $4895: $1c
    inc e                                         ; $4896: $1c
    call Call_000_331b                            ; $4897: $cd $1b $33
    pop de                                        ; $489a: $d1
    ld a, $be                                     ; $489b: $3e $be
    add d                                         ; $489d: $82
    ld [hl], a                                    ; $489e: $77

jr_004_489f:
    ld a, $06                                     ; $489f: $3e $06
    add e                                         ; $48a1: $83
    ld e, a                                       ; $48a2: $5f
    inc c                                         ; $48a3: $0c
    dec b                                         ; $48a4: $05
    jr nz, jr_004_4882                            ; $48a5: $20 $db

    ret                                           ; $48a7: $c9


Call_004_48a8:
    ld hl, $7c18                                  ; $48a8: $21 $18 $7c
    ldh [$c1], a                                  ; $48ab: $e0 $c1
    ld a, $6d                                     ; $48ad: $3e $6d
    ldh [$bd], a                                  ; $48af: $e0 $bd
    ld a, $7c                                     ; $48b1: $3e $7c
    ldh [$be], a                                  ; $48b3: $e0 $be
    call Call_000_340c                            ; $48b5: $cd $0c $34
    ld hl, $cc12                                  ; $48b8: $21 $12 $cc
    ld a, [hl+]                                   ; $48bb: $2a
    ld h, [hl]                                    ; $48bc: $66
    ld l, a                                       ; $48bd: $6f
    call Call_000_3911                            ; $48be: $cd $11 $39
    ld b, $00                                     ; $48c1: $06 $00
    ld c, $70                                     ; $48c3: $0e $70
    ld e, $14                                     ; $48c5: $1e $14
    ld d, $07                                     ; $48c7: $16 $07
    ld hl, $0040                                  ; $48c9: $21 $40 $00
    call Call_000_13c4                            ; $48cc: $cd $c4 $13
    ld b, $00                                     ; $48cf: $06 $00
    ld c, $70                                     ; $48d1: $0e $70
    ld e, $07                                     ; $48d3: $1e $07
    ld d, $02                                     ; $48d5: $16 $02
    ld hl, $000d                                  ; $48d7: $21 $0d $00
    call Call_000_13c4                            ; $48da: $cd $c4 $13
    call Call_000_3313                            ; $48dd: $cd $13 $33
    call Call_000_3308                            ; $48e0: $cd $08 $33
    jp RST_18                                     ; $48e3: $c3 $18 $00


Call_004_48e6:
    call Call_004_4e45                            ; $48e6: $cd $45 $4e
    rst $18                                       ; $48e9: $df
    call Call_004_48a8                            ; $48ea: $cd $a8 $48
    call Call_004_4eb3                            ; $48ed: $cd $b3 $4e
    call Call_004_470e                            ; $48f0: $cd $0e $47
    call Call_004_47eb                            ; $48f3: $cd $eb $47
    ld a, [$cb33]                                 ; $48f6: $fa $33 $cb
    ld [$cdd1], a                                 ; $48f9: $ea $d1 $cd
    call Call_004_47cd                            ; $48fc: $cd $cd $47
    call Call_000_3313                            ; $48ff: $cd $13 $33
    call Call_000_3308                            ; $4902: $cd $08 $33
    ld hl, $7c03                                  ; $4905: $21 $03 $7c
    ldh [$c1], a                                  ; $4908: $e0 $c1
    ld a, $6d                                     ; $490a: $3e $6d
    ldh [$bd], a                                  ; $490c: $e0 $bd
    ld a, $7c                                     ; $490e: $3e $7c
    ldh [$be], a                                  ; $4910: $e0 $be
    call Call_000_340c                            ; $4912: $cd $0c $34
    ld hl, $0168                                  ; $4915: $21 $68 $01
    jp Jump_000_3929                              ; $4918: $c3 $29 $39


Jump_004_491b:
    call Call_004_48a8                            ; $491b: $cd $a8 $48
    call Call_004_4eb3                            ; $491e: $cd $b3 $4e
    call Call_004_4815                            ; $4921: $cd $15 $48
    call Call_004_4852                            ; $4924: $cd $52 $48
    call Call_004_4878                            ; $4927: $cd $78 $48
    call Call_004_470e                            ; $492a: $cd $0e $47
    call Call_004_47eb                            ; $492d: $cd $eb $47
    ld a, [$cb33]                                 ; $4930: $fa $33 $cb
    ld [$cdd1], a                                 ; $4933: $ea $d1 $cd
    call Call_004_47cd                            ; $4936: $cd $cd $47
    call Call_000_3313                            ; $4939: $cd $13 $33
    call Call_000_3308                            ; $493c: $cd $08 $33
    ld hl, $7c03                                  ; $493f: $21 $03 $7c
    ldh [$c1], a                                  ; $4942: $e0 $c1
    ld a, $6d                                     ; $4944: $3e $6d
    ldh [$bd], a                                  ; $4946: $e0 $bd
    ld a, $7c                                     ; $4948: $3e $7c
    ldh [$be], a                                  ; $494a: $e0 $be
    call Call_000_340c                            ; $494c: $cd $0c $34
    ld hl, $0168                                  ; $494f: $21 $68 $01
    jp Jump_000_3929                              ; $4952: $c3 $29 $39


    db $01, $2d, $80, $00, $00, $00, $aa, $24, $00, $02, $00, $02

    ld bc, $802e                                  ; $4961: $01 $2e $80
    nop                                           ; $4964: $00
    nop                                           ; $4965: $00
    nop                                           ; $4966: $00
    xor d                                         ; $4967: $aa
    inc h                                         ; $4968: $24
    nop                                           ; $4969: $00
    ld [bc], a                                    ; $496a: $02
    nop                                           ; $496b: $00
    ld [bc], a                                    ; $496c: $02

    db $13, $01, $74, $49, $86, $00, $01, $20, $d8, $40, $d8, $60, $d8, $80, $d8, $a0
    db $d8, $c0, $d8, $e0, $d8, $00, $d9, $20, $d9, $40, $d9, $60, $d9, $80, $d9, $a0
    db $d9, $c0, $d9, $e0, $d9, $00, $da, $20, $da, $31, $01, $8a, $49, $00, $01, $41
    db $01, $08, $e0, $00, $00, $04, $04, $10, $0c, $21, $61, $49, $c3, $37, $28, $21
    db $55, $49, $c3, $37, $28, $21, $42, $7c, $e0, $c1, $3e, $6d, $e0, $bd, $3e, $7c
    db $e0, $be, $cd, $0c, $34, $18, $13, $cd, $a2, $4a, $21, $29, $7c

    ldh [$c1], a                                  ; $49ca: $e0 $c1
    ld a, $6d                                     ; $49cc: $3e $6d
    ldh [$bd], a                                  ; $49ce: $e0 $bd
    ld a, $7c                                     ; $49d0: $3e $7c
    ldh [$be], a                                  ; $49d2: $e0 $be
    call Call_000_340c                            ; $49d4: $cd $0c $34
    ldh a, [$cc]                                  ; $49d7: $f0 $cc
    cp $27                                        ; $49d9: $fe $27
    jr z, jr_004_49ee                             ; $49db: $28 $11

    cp $10                                        ; $49dd: $fe $10
    jr z, jr_004_49e9                             ; $49df: $28 $08

    cp $15                                        ; $49e1: $fe $15
    jr z, jr_004_49e9                             ; $49e3: $28 $04

    cp $14                                        ; $49e5: $fe $14
    jr nz, jr_004_49eb                            ; $49e7: $20 $02

jr_004_49e9:
    ld a, $0f                                     ; $49e9: $3e $0f

jr_004_49eb:
    ld [$cb32], a                                 ; $49eb: $ea $32 $cb

jr_004_49ee:
    ld hl, $496d                                  ; $49ee: $21 $6d $49
    call Call_000_301f                            ; $49f1: $cd $1f $30
    ld a, $54                                     ; $49f4: $3e $54
    ld [$c1eb], a                                 ; $49f6: $ea $eb $c1
    ld a, $01                                     ; $49f9: $3e $01
    ld [$c234], a                                 ; $49fb: $ea $34 $c2
    ld b, $0b                                     ; $49fe: $06 $0b
    ld de, $0003                                  ; $4a00: $11 $03 $00
    ld hl, $1570                                  ; $4a03: $21 $70 $15

jr_004_4a06:
    ldh [$c1], a                                  ; $4a06: $e0 $c1
    ld a, $1a                                     ; $4a08: $3e $1a
    ldh [$bd], a                                  ; $4a0a: $e0 $bd
    ld a, $6e                                     ; $4a0c: $3e $6e
    ldh [$be], a                                  ; $4a0e: $e0 $be
    call Call_000_341a                            ; $4a10: $cd $1a $34
    add hl, de                                    ; $4a13: $19
    dec b                                         ; $4a14: $05
    jr nz, jr_004_4a06                            ; $4a15: $20 $ef

    ldh a, [$d0]                                  ; $4a17: $f0 $d0
    ld hl, $4a72                                  ; $4a19: $21 $72 $4a
    ldh [$c1], a                                  ; $4a1c: $e0 $c1
    ld a, $62                                     ; $4a1e: $3e $62
    ldh [$bd], a                                  ; $4a20: $e0 $bd
    ld a, $4f                                     ; $4a22: $3e $4f
    ldh [$be], a                                  ; $4a24: $e0 $be
    call Call_000_33fe                            ; $4a26: $cd $fe $33
    ld hl, $ffb8                                  ; $4a29: $21 $b8 $ff
    ld [hl], $00                                  ; $4a2c: $36 $00
    inc hl                                        ; $4a2e: $23
    ld [hl], $00                                  ; $4a2f: $36 $00
    ld a, $85                                     ; $4a31: $3e $85
    ldh [$c1], a                                  ; $4a33: $e0 $c1
    ld a, $d6                                     ; $4a35: $3e $d6
    ldh [$bd], a                                  ; $4a37: $e0 $bd
    ld a, $11                                     ; $4a39: $3e $11
    ldh [$be], a                                  ; $4a3b: $e0 $be
    call Call_000_3421                            ; $4a3d: $cd $21 $34
    ld a, $b1                                     ; $4a40: $3e $b1
    ldh [$c1], a                                  ; $4a42: $e0 $c1
    ld a, $d6                                     ; $4a44: $3e $d6
    ldh [$bd], a                                  ; $4a46: $e0 $bd
    ld a, $11                                     ; $4a48: $3e $11
    ldh [$be], a                                  ; $4a4a: $e0 $be
    call Call_000_3421                            ; $4a4c: $cd $21 $34
    ld a, $04                                     ; $4a4f: $3e $04
    ldh [$c1], a                                  ; $4a51: $e0 $c1
    ld a, $0f                                     ; $4a53: $3e $0f
    ldh [$bd], a                                  ; $4a55: $e0 $bd
    ld a, $25                                     ; $4a57: $3e $25
    ldh [$be], a                                  ; $4a59: $e0 $be
    call Call_000_3421                            ; $4a5b: $cd $21 $34
    ld a, $01                                     ; $4a5e: $3e $01
    ldh [$9b], a                                  ; $4a60: $e0 $9b
    ld a, $85                                     ; $4a62: $3e $85
    call Call_000_03a0                            ; $4a64: $cd $a0 $03
    xor a                                         ; $4a67: $af
    ldh [$9b], a                                  ; $4a68: $e0 $9b
    ld a, $b1                                     ; $4a6a: $3e $b1
    call Call_000_03a0                            ; $4a6c: $cd $a0 $03
    ld a, [$ce0a]                                 ; $4a6f: $fa $0a $ce
    or a                                          ; $4a72: $b7
    call nz, Call_004_4acb                        ; $4a73: $c4 $cb $4a
    call Call_004_4b33                            ; $4a76: $cd $33 $4b
    ldh a, [$d0]                                  ; $4a79: $f0 $d0
    ldh [$d1], a                                  ; $4a7b: $e0 $d1
    ldh [$d5], a                                  ; $4a7d: $e0 $d5
    ld de, $000f                                  ; $4a7f: $11 $0f $00
    call Call_000_30e1                            ; $4a82: $cd $e1 $30
    call Call_004_4c86                            ; $4a85: $cd $86 $4c
    xor a                                         ; $4a88: $af
    ld de, $499d                                  ; $4a89: $11 $9d $49
    ldh [$c1], a                                  ; $4a8c: $e0 $c1
    ld a, $e4                                     ; $4a8e: $3e $e4
    ldh [$bd], a                                  ; $4a90: $e0 $bd
    ld a, $24                                     ; $4a92: $3e $24
    ldh [$be], a                                  ; $4a94: $e0 $be
    call Call_000_3421                            ; $4a96: $cd $21 $34
    call Call_004_4c3b                            ; $4a99: $cd $3b $4c
    call Call_004_4b5c                            ; $4a9c: $cd $5c $4b
    jp Jump_004_4d93                              ; $4a9f: $c3 $93 $4d


    call Call_000_19b7                            ; $4aa2: $cd $b7 $19
    ld de, $5e91                                  ; $4aa5: $11 $91 $5e
    ld hl, $c124                                  ; $4aa8: $21 $24 $c1
    call Call_004_4ac1                            ; $4aab: $cd $c1 $4a
    ld de, $5e94                                  ; $4aae: $11 $94 $5e
    ld hl, $c129                                  ; $4ab1: $21 $29 $c1
    call Call_004_4ac1                            ; $4ab4: $cd $c1 $4a
    ld de, $5e97                                  ; $4ab7: $11 $97 $5e
    ld hl, $c12e                                  ; $4aba: $21 $2e $c1
    call Call_004_4ac1                            ; $4abd: $cd $c1 $4a
    ret                                           ; $4ac0: $c9


Call_004_4ac1:
    ld a, $01                                     ; $4ac1: $3e $01
    ld [hl+], a                                   ; $4ac3: $22
    xor a                                         ; $4ac4: $af
    ld [hl+], a                                   ; $4ac5: $22
    ld [hl+], a                                   ; $4ac6: $22
    ld a, e                                       ; $4ac7: $7b
    ld [hl+], a                                   ; $4ac8: $22
    ld [hl], d                                    ; $4ac9: $72
    ret                                           ; $4aca: $c9


Call_004_4acb:
    ld b, $65                                     ; $4acb: $06 $65
    ld c, $00                                     ; $4acd: $0e $00

jr_004_4acf:
    ld a, c                                       ; $4acf: $79
    ldh [$c1], a                                  ; $4ad0: $e0 $c1
    ld a, $bd                                     ; $4ad2: $3e $bd
    ldh [$bd], a                                  ; $4ad4: $e0 $bd
    ld a, $62                                     ; $4ad6: $3e $62
    ldh [$be], a                                  ; $4ad8: $e0 $be
    call Call_000_33fe                            ; $4ada: $cd $fe $33
    ld d, $03                                     ; $4add: $16 $03
    cp $01                                        ; $4adf: $fe $01
    jr z, jr_004_4af3                             ; $4ae1: $28 $10

    inc d                                         ; $4ae3: $14
    cp $02                                        ; $4ae4: $fe $02
    jr z, jr_004_4af3                             ; $4ae6: $28 $0b

    inc d                                         ; $4ae8: $14
    cp $04                                        ; $4ae9: $fe $04
    jr z, jr_004_4af3                             ; $4aeb: $28 $06

    inc d                                         ; $4aed: $14
    cp $08                                        ; $4aee: $fe $08
    jr z, jr_004_4af3                             ; $4af0: $28 $01

    inc d                                         ; $4af2: $14

jr_004_4af3:
    call Call_004_4afb                            ; $4af3: $cd $fb $4a
    inc c                                         ; $4af6: $0c
    dec b                                         ; $4af7: $05
    jr nz, jr_004_4acf                            ; $4af8: $20 $d5

    ret                                           ; $4afa: $c9


Call_004_4afb:
    ldh a, [rSVBK]                                ; $4afb: $f0 $70
    push af                                       ; $4afd: $f5
    ld a, $01                                     ; $4afe: $3e $01
    ldh [rSVBK], a                                ; $4b00: $e0 $70
    ld a, c                                       ; $4b02: $79
    push de                                       ; $4b03: $d5
    call Call_004_4b11                            ; $4b04: $cd $11 $4b
    ld de, $0400                                  ; $4b07: $11 $00 $04
    add hl, de                                    ; $4b0a: $19
    pop de                                        ; $4b0b: $d1
    ld [hl], d                                    ; $4b0c: $72
    pop af                                        ; $4b0d: $f1
    ldh [rSVBK], a                                ; $4b0e: $e0 $70
    ret                                           ; $4b10: $c9


Call_004_4b11:
    ld a, c                                       ; $4b11: $79
    ldh [$d5], a                                  ; $4b12: $e0 $d5
    ldh [$c1], a                                  ; $4b14: $e0 $c1
    ld a, $db                                     ; $4b16: $3e $db
    ldh [$bd], a                                  ; $4b18: $e0 $bd
    ld a, $4f                                     ; $4b1a: $3e $4f
    ldh [$be], a                                  ; $4b1c: $e0 $be
    call Call_000_33fe                            ; $4b1e: $cd $fe $33
    srl e                                         ; $4b21: $cb $3b
    srl e                                         ; $4b23: $cb $3b
    srl e                                         ; $4b25: $cb $3b
    srl d                                         ; $4b27: $cb $3a
    srl d                                         ; $4b29: $cb $3a
    srl d                                         ; $4b2b: $cb $3a
    ld a, e                                       ; $4b2d: $7b
    ld e, d                                       ; $4b2e: $5a
    ld d, a                                       ; $4b2f: $57
    jp Jump_000_331b                              ; $4b30: $c3 $1b $33


Call_004_4b33:
    ldh a, [rSVBK]                                ; $4b33: $f0 $70
    push af                                       ; $4b35: $f5
    ld a, $06                                     ; $4b36: $3e $06
    ldh [rSVBK], a                                ; $4b38: $e0 $70
    ld c, $00                                     ; $4b3a: $0e $00
    ld hl, $d50a                                  ; $4b3c: $21 $0a $d5

jr_004_4b3f:
    ld a, [hl+]                                   ; $4b3f: $2a
    or a                                          ; $4b40: $b7
    jr z, jr_004_4b52                             ; $4b41: $28 $0f

    push hl                                       ; $4b43: $e5
    call Call_004_4b11                            ; $4b44: $cd $11 $4b
    ld a, $01                                     ; $4b47: $3e $01
    ldh [rSVBK], a                                ; $4b49: $e0 $70
    ld [hl], $85                                  ; $4b4b: $36 $85
    ld a, $06                                     ; $4b4d: $3e $06
    ldh [rSVBK], a                                ; $4b4f: $e0 $70
    pop hl                                        ; $4b51: $e1

jr_004_4b52:
    inc c                                         ; $4b52: $0c
    ld a, c                                       ; $4b53: $79
    cp $65                                        ; $4b54: $fe $65
    jr nz, jr_004_4b3f                            ; $4b56: $20 $e7

    pop af                                        ; $4b58: $f1
    ldh [rSVBK], a                                ; $4b59: $e0 $70
    ret                                           ; $4b5b: $c9


Call_004_4b5c:
    ld a, $b1                                     ; $4b5c: $3e $b1
    ld e, $ff                                     ; $4b5e: $1e $ff
    call Call_000_0a6f                            ; $4b60: $cd $6f $0a
    push hl                                       ; $4b63: $e5
    ldh a, [$d1]                                  ; $4b64: $f0 $d1
    call Call_004_4caf                            ; $4b66: $cd $af $4c
    pop hl                                        ; $4b69: $e1
    inc hl                                        ; $4b6a: $23
    ld [hl], a                                    ; $4b6b: $77
    ret                                           ; $4b6c: $c9


    ld a, [$cb32]                                 ; $4b6d: $fa $32 $cb
    cp $2b                                        ; $4b70: $fe $2b
    jr z, jr_004_4b88                             ; $4b72: $28 $14

    ld a, [$ce0c]                                 ; $4b74: $fa $0c $ce
    inc a                                         ; $4b77: $3c
    jr z, jr_004_4b88                             ; $4b78: $28 $0e

    call Call_000_30f3                            ; $4b7a: $cd $f3 $30
    jr nz, jr_004_4b88                            ; $4b7d: $20 $09

    ld de, $000a                                  ; $4b7f: $11 $0a $00
    call Call_000_30e1                            ; $4b82: $cd $e1 $30
    call Call_004_4c00                            ; $4b85: $cd $00 $4c

jr_004_4b88:
    ldh a, [$a5]                                  ; $4b88: $f0 $a5
    bit 0, a                                      ; $4b8a: $cb $47
    jr nz, jr_004_4bbd                            ; $4b8c: $20 $2f

    bit 1, a                                      ; $4b8e: $cb $4f
    jr nz, jr_004_4be6                            ; $4b90: $20 $54

    ldh [$c1], a                                  ; $4b92: $e0 $c1
    ld a, $86                                     ; $4b94: $3e $86
    ldh [$bd], a                                  ; $4b96: $e0 $bd
    ld a, $4f                                     ; $4b98: $3e $4f
    ldh [$be], a                                  ; $4b9a: $e0 $be
    call Call_000_33fe                            ; $4b9c: $cd $fe $33
    ld hl, $ffd1                                  ; $4b9f: $21 $d1 $ff
    cp [hl]                                       ; $4ba2: $be
    ret z                                         ; $4ba3: $c8

    ld [hl], a                                    ; $4ba4: $77
    ld a, $19                                     ; $4ba5: $3e $19
    call Call_000_393e                            ; $4ba7: $cd $3e $39
    call Call_004_4c86                            ; $4baa: $cd $86 $4c
    call Call_004_4c3b                            ; $4bad: $cd $3b $4c
    call Call_004_4b5c                            ; $4bb0: $cd $5c $4b
    ldh a, [$cf]                                  ; $4bb3: $f0 $cf
    cp $28                                        ; $4bb5: $fe $28
    jp nz, Jump_000_3313                          ; $4bb7: $c2 $13 $33

    jp RST_20                                     ; $4bba: $c3 $20 $00


jr_004_4bbd:
    ld a, [$cb32]                                 ; $4bbd: $fa $32 $cb
    cp $2b                                        ; $4bc0: $fe $2b
    jr nz, jr_004_4bd7                            ; $4bc2: $20 $13

    ldh a, [$d1]                                  ; $4bc4: $f0 $d1
    call Call_004_4cc9                            ; $4bc6: $cd $c9 $4c
    cp $65                                        ; $4bc9: $fe $65
    jr nz, jr_004_4bcf                            ; $4bcb: $20 $02

    ld a, $ff                                     ; $4bcd: $3e $ff

jr_004_4bcf:
    ld d, a                                       ; $4bcf: $57
    ld e, $01                                     ; $4bd0: $1e $01
    ld a, $2b                                     ; $4bd2: $3e $2b
    jp Jump_000_244b                              ; $4bd4: $c3 $4b $24


jr_004_4bd7:
    ld a, $17                                     ; $4bd7: $3e $17
    call Call_000_393e                            ; $4bd9: $cd $3e $39
    ldh a, [$d1]                                  ; $4bdc: $f0 $d1
    ld d, a                                       ; $4bde: $57
    ld e, $00                                     ; $4bdf: $1e $00
    ld a, $27                                     ; $4be1: $3e $27
    jp Jump_000_244b                              ; $4be3: $c3 $4b $24


jr_004_4be6:
    ld a, $18                                     ; $4be6: $3e $18
    call Call_000_393e                            ; $4be8: $cd $3e $39
    ld bc, $000a                                  ; $4beb: $01 $0a $00
    ld hl, $ce0c                                  ; $4bee: $21 $0c $ce
    ld a, $ff                                     ; $4bf1: $3e $ff
    call Call_000_112f                            ; $4bf3: $cd $2f $11
    ld d, $ff                                     ; $4bf6: $16 $ff
    ld e, $65                                     ; $4bf8: $1e $65
    ld a, [$cb32]                                 ; $4bfa: $fa $32 $cb
    jp Jump_000_244b                              ; $4bfd: $c3 $4b $24


Call_004_4c00:
    ldh a, [rSVBK]                                ; $4c00: $f0 $70
    push af                                       ; $4c02: $f5
    ld a, $01                                     ; $4c03: $3e $01
    ldh [rSVBK], a                                ; $4c05: $e0 $70
    ldh a, [$d5]                                  ; $4c07: $f0 $d5
    push af                                       ; $4c09: $f5
    ld a, [$cbec]                                 ; $4c0a: $fa $ec $cb
    xor $01                                       ; $4c0d: $ee $01
    ld [$cbec], a                                 ; $4c0f: $ea $ec $cb
    ld hl, $ce0c                                  ; $4c12: $21 $0c $ce
    ld b, $0a                                     ; $4c15: $06 $0a

jr_004_4c17:
    ld a, [hl+]                                   ; $4c17: $2a
    cp $ff                                        ; $4c18: $fe $ff
    jr z, jr_004_4c2b                             ; $4c1a: $28 $0f

    push hl                                       ; $4c1c: $e5
    ld c, a                                       ; $4c1d: $4f
    call Call_004_4b11                            ; $4c1e: $cd $11 $4b
    ld a, [$cbec]                                 ; $4c21: $fa $ec $cb
    add $84                                       ; $4c24: $c6 $84
    ld [hl], a                                    ; $4c26: $77
    pop hl                                        ; $4c27: $e1
    dec b                                         ; $4c28: $05
    jr nz, jr_004_4c17                            ; $4c29: $20 $ec

jr_004_4c2b:
    pop af                                        ; $4c2b: $f1
    ldh [$d5], a                                  ; $4c2c: $e0 $d5
    pop af                                        ; $4c2e: $f1
    ldh [rSVBK], a                                ; $4c2f: $e0 $70
    ldh a, [$cf]                                  ; $4c31: $f0 $cf
    cp $28                                        ; $4c33: $fe $28
    jp nz, Jump_000_3313                          ; $4c35: $c2 $13 $33

    jp RST_20                                     ; $4c38: $c3 $20 $00


Call_004_4c3b:
    rst $18                                       ; $4c3b: $df
    ld c, $81                                     ; $4c3c: $0e $81
    ld e, $10                                     ; $4c3e: $1e $10
    ld d, $06                                     ; $4c40: $16 $06
    ld hl, $0180                                  ; $4c42: $21 $80 $01
    call Call_000_13c2                            ; $4c45: $cd $c2 $13
    call Call_000_3313                            ; $4c48: $cd $13 $33
    call Call_000_3308                            ; $4c4b: $cd $08 $33
    rst $18                                       ; $4c4e: $df
    ld hl, $4996                                  ; $4c4f: $21 $96 $49
    call Call_000_301f                            ; $4c52: $cd $1f $30
    ld a, $7c                                     ; $4c55: $3e $7c
    ld [$c1eb], a                                 ; $4c57: $ea $eb $c1
    ld a, $06                                     ; $4c5a: $3e $06
    ld [$c234], a                                 ; $4c5c: $ea $34 $c2
    call Call_004_4cc9                            ; $4c5f: $cd $c9 $4c
    ld hl, $1300                                  ; $4c62: $21 $00 $13
    ldh [$c1], a                                  ; $4c65: $e0 $c1
    ld a, $67                                     ; $4c67: $3e $67
    ldh [$bd], a                                  ; $4c69: $e0 $bd
    ld a, $6e                                     ; $4c6b: $3e $6e
    ldh [$be], a                                  ; $4c6d: $e0 $be
    call Call_000_341a                            ; $4c6f: $cd $1a $34
    call Call_004_4cc9                            ; $4c72: $cd $c9 $4c
    ld hl, $1438                                  ; $4c75: $21 $38 $14
    ldh [$c1], a                                  ; $4c78: $e0 $c1
    ld a, $67                                     ; $4c7a: $3e $67
    ldh [$bd], a                                  ; $4c7c: $e0 $bd
    ld a, $6e                                     ; $4c7e: $3e $6e
    ldh [$be], a                                  ; $4c80: $e0 $be
    call Call_000_341a                            ; $4c82: $cd $1a $34
    ret                                           ; $4c85: $c9


Call_004_4c86:
    ld hl, $ffb8                                  ; $4c86: $21 $b8 $ff
    ld [hl], $60                                  ; $4c89: $36 $60
    inc hl                                        ; $4c8b: $23
    ld [hl], $02                                  ; $4c8c: $36 $02
    call Call_004_4cc9                            ; $4c8e: $cd $c9 $4c
    ld hl, $5e9a                                  ; $4c91: $21 $9a $5e
    ldh [$c1], a                                  ; $4c94: $e0 $c1
    ld a, $4b                                     ; $4c96: $3e $4b
    ldh [$bd], a                                  ; $4c98: $e0 $bd
    ld a, $29                                     ; $4c9a: $3e $29
    ldh [$be], a                                  ; $4c9c: $e0 $be
    call Call_000_3421                            ; $4c9e: $cd $21 $34
    ldh [$c1], a                                  ; $4ca1: $e0 $c1
    ld a, $55                                     ; $4ca3: $3e $55
    ldh [$bd], a                                  ; $4ca5: $e0 $bd
    ld a, $41                                     ; $4ca7: $3e $41
    ldh [$be], a                                  ; $4ca9: $e0 $be
    call Call_000_341a                            ; $4cab: $cd $1a $34
    ret                                           ; $4cae: $c9


Call_004_4caf:
    push hl                                       ; $4caf: $e5
    ldh [$bc], a                                  ; $4cb0: $e0 $bc
    ldh a, [rSVBK]                                ; $4cb2: $f0 $70
    push af                                       ; $4cb4: $f5
    ld a, $06                                     ; $4cb5: $3e $06
    ldh [rSVBK], a                                ; $4cb7: $e0 $70
    ldh a, [$bc]                                  ; $4cb9: $f0 $bc
    ld hl, $d50a                                  ; $4cbb: $21 $0a $d5
    rst $08                                       ; $4cbe: $cf
    ld a, [hl]                                    ; $4cbf: $7e
    ldh [$bc], a                                  ; $4cc0: $e0 $bc
    pop af                                        ; $4cc2: $f1
    ldh [rSVBK], a                                ; $4cc3: $e0 $70
    ldh a, [$bc]                                  ; $4cc5: $f0 $bc
    pop hl                                        ; $4cc7: $e1
    ret                                           ; $4cc8: $c9


Call_004_4cc9:
    ldh a, [$d1]                                  ; $4cc9: $f0 $d1
    call Call_004_4caf                            ; $4ccb: $cd $af $4c
    or a                                          ; $4cce: $b7
    ldh a, [$d1]                                  ; $4ccf: $f0 $d1
    ret nz                                        ; $4cd1: $c0

    ld a, $65                                     ; $4cd2: $3e $65
    ret                                           ; $4cd4: $c9


    db $01, $1d, $70, $01, $00, $00, $aa, $24, $00, $01, $00, $01

    nop                                           ; $4ce1: $00

    db $0a, $13, $1c, $26, $30, $39, $40

    ld c, d                                       ; $4ce9: $4a
    ld d, h                                       ; $4cea: $54
    ld e, l                                       ; $4ceb: $5d
    ld h, l                                       ; $4cec: $65
    ld h, l                                       ; $4ced: $65

    db $0a, $00, $00, $0d, $12, $04, $04, $00, $0a, $0d, $12, $04, $04, $04, $0a, $0d
    db $12, $04, $04, $08, $0a, $0d, $12, $04, $04, $0c, $0a, $0d, $12, $04, $04, $10
    db $0a, $0d, $12, $04, $04, $00, $0e, $0d, $12, $04, $04, $04, $0e, $0d, $12, $04
    db $04, $08, $0e, $0d, $12, $04, $04, $0c, $0e, $0d, $12, $04, $04, $10, $0e, $31
    db $01, $34, $4d, $ff, $00, $41, $20, $d9, $cd, $fb, $38, $7d, $ea, $12, $cc, $7c
    db $ea, $13, $cc, $21, $d5, $4c, $c3, $37, $28, $cd, $30, $4e, $78, $ea, $eb, $cb
    db $79, $21, $9b, $4d, $e0, $c1, $3e, $62, $e0, $bd, $3e, $4f, $e0, $be, $cd, $fe
    db $33, $cd, $45, $4e, $21, $b8, $ff, $36, $00, $23, $36, $00, $3e, $85, $e0, $c1
    db $3e, $d6, $e0, $bd, $3e, $11

    ldh [$be], a                                  ; $4d74: $e0 $be
    call Call_000_3421                            ; $4d76: $cd $21 $34
    ld a, $04                                     ; $4d79: $3e $04
    ldh [$c1], a                                  ; $4d7b: $e0 $c1
    ld a, $0f                                     ; $4d7d: $3e $0f
    ldh [$bd], a                                  ; $4d7f: $e0 $bd
    ld a, $25                                     ; $4d81: $3e $25
    ldh [$be], a                                  ; $4d83: $e0 $be
    call Call_000_3421                            ; $4d85: $cd $21 $34
    xor a                                         ; $4d88: $af
    ldh [$9b], a                                  ; $4d89: $e0 $9b
    ld a, $85                                     ; $4d8b: $3e $85
    call Call_000_03a0                            ; $4d8d: $cd $a0 $03
    call Call_004_4e7a                            ; $4d90: $cd $7a $4e

Jump_004_4d93:
    ldh a, [rSVBK]                                ; $4d93: $f0 $70
    push af                                       ; $4d95: $f5
    ld a, $01                                     ; $4d96: $3e $01
    ldh [rSVBK], a                                ; $4d98: $e0 $70
    ld de, $9800                                  ; $4d9a: $11 $00 $98
    ld hl, $d800                                  ; $4d9d: $21 $00 $d8
    ld c, $23                                     ; $4da0: $0e $23
    rst $28                                       ; $4da2: $ef
    ld a, $01                                     ; $4da3: $3e $01
    ldh [rVBK], a                                 ; $4da5: $e0 $4f
    ld hl, $dc00                                  ; $4da7: $21 $00 $dc
    rst $28                                       ; $4daa: $ef
    xor a                                         ; $4dab: $af
    ldh [rVBK], a                                 ; $4dac: $e0 $4f
    ldh [$a8], a                                  ; $4dae: $e0 $a8
    pop af                                        ; $4db0: $f1
    ldh [rSVBK], a                                ; $4db1: $e0 $70
    ret                                           ; $4db3: $c9


    ldh [$c1], a                                  ; $4db4: $e0 $c1
    ld a, $86                                     ; $4db6: $3e $86
    ldh [$bd], a                                  ; $4db8: $e0 $bd
    ld a, $4f                                     ; $4dba: $3e $4f
    ldh [$be], a                                  ; $4dbc: $e0 $be
    call Call_000_33fe                            ; $4dbe: $cd $fe $33
    ldh a, [$a5]                                  ; $4dc1: $f0 $a5
    or a                                          ; $4dc3: $b7
    ret z                                         ; $4dc4: $c8

    and $03                                       ; $4dc5: $e6 $03
    jp nz, Jump_004_4e12                          ; $4dc7: $c2 $12 $4e

    ld a, $19                                     ; $4dca: $3e $19
    call Call_000_393e                            ; $4dcc: $cd $3e $39
    ld hl, $ffd5                                  ; $4dcf: $21 $d5 $ff
    ld a, [hl]                                    ; $4dd2: $7e
    cp $0b                                        ; $4dd3: $fe $0b
    jr z, jr_004_4dfb                             ; $4dd5: $28 $24

    or a                                          ; $4dd7: $b7
    jr z, jr_004_4df0                             ; $4dd8: $28 $16

    ld a, [$cb34]                                 ; $4dda: $fa $34 $cb
    cp [hl]                                       ; $4ddd: $be
    jr nc, jr_004_4dec                            ; $4dde: $30 $0c

    ldh [$d5], a                                  ; $4de0: $e0 $d5
    ldh a, [$a5]                                  ; $4de2: $f0 $a5
    bit 4, a                                      ; $4de4: $cb $67
    jr z, jr_004_4dec                             ; $4de6: $28 $04

    ld a, $06                                     ; $4de8: $3e $06
    ldh [$d5], a                                  ; $4dea: $e0 $d5

jr_004_4dec:
    call Call_004_48e6                            ; $4dec: $cd $e6 $48
    ret                                           ; $4def: $c9


jr_004_4df0:
    ld a, [$cbeb]                                 ; $4df0: $fa $eb $cb
    sub $01                                       ; $4df3: $d6 $01
    jr nc, jr_004_4e04                            ; $4df5: $30 $0d

    add $0b                                       ; $4df7: $c6 $0b
    jr jr_004_4e04                                ; $4df9: $18 $09

jr_004_4dfb:
    ld a, [$cbeb]                                 ; $4dfb: $fa $eb $cb
    inc a                                         ; $4dfe: $3c
    cp $0b                                        ; $4dff: $fe $0b
    jr nz, jr_004_4e04                            ; $4e01: $20 $01

    xor a                                         ; $4e03: $af

jr_004_4e04:
    ld [$cbeb], a                                 ; $4e04: $ea $eb $cb
    ld a, $01                                     ; $4e07: $3e $01
    ldh [$d5], a                                  ; $4e09: $e0 $d5
    call Call_004_4e45                            ; $4e0b: $cd $45 $4e
    call Call_004_4e7a                            ; $4e0e: $cd $7a $4e
    ret                                           ; $4e11: $c9


Jump_004_4e12:
    ld a, $17                                     ; $4e12: $3e $17
    call Call_000_393e                            ; $4e14: $cd $3e $39
    rst $18                                       ; $4e17: $df
    call Call_004_48a8                            ; $4e18: $cd $a8 $48
    rst $20                                       ; $4e1b: $e7
    ld hl, $cc12                                  ; $4e1c: $21 $12 $cc
    ld a, [hl+]                                   ; $4e1f: $2a
    ld h, [hl]                                    ; $4e20: $66
    ld l, a                                       ; $4e21: $6f
    call Call_000_3911                            ; $4e22: $cd $11 $39
    call Call_004_4ef4                            ; $4e25: $cd $f4 $4e
    ld d, a                                       ; $4e28: $57
    ld e, $00                                     ; $4e29: $1e $00
    ld a, $28                                     ; $4e2b: $3e $28
    jp Jump_000_244b                              ; $4e2d: $c3 $4b $24


    ldh a, [$d0]                                  ; $4e30: $f0 $d0
    ld b, $ff                                     ; $4e32: $06 $ff
    ld c, a                                       ; $4e34: $4f
    ld hl, $4ce2                                  ; $4e35: $21 $e2 $4c

jr_004_4e38:
    inc b                                         ; $4e38: $04
    ld a, [hl+]                                   ; $4e39: $2a
    dec a                                         ; $4e3a: $3d
    sub c                                         ; $4e3b: $91
    jr c, jr_004_4e38                             ; $4e3c: $38 $fa

    dec hl                                        ; $4e3e: $2b
    dec hl                                        ; $4e3f: $2b
    ld a, c                                       ; $4e40: $79
    sub [hl]                                      ; $4e41: $96
    inc a                                         ; $4e42: $3c
    ld c, a                                       ; $4e43: $4f
    ret                                           ; $4e44: $c9


Call_004_4e45:
    call Call_004_4edf                            ; $4e45: $cd $df $4e
    ld [$cb35], a                                 ; $4e48: $ea $35 $cb
    call Call_004_4e5b                            ; $4e4b: $cd $5b $4e
    call Call_004_4efd                            ; $4e4e: $cd $fd $4e
    ld [$cb33], a                                 ; $4e51: $ea $33 $cb
    call Call_004_4ee8                            ; $4e54: $cd $e8 $4e
    ld [$cb34], a                                 ; $4e57: $ea $34 $cb
    ret                                           ; $4e5a: $c9


Call_004_4e5b:
    ld c, a                                       ; $4e5b: $4f
    ld hl, $d50a                                  ; $4e5c: $21 $0a $d5
    rst $08                                       ; $4e5f: $cf
    ld de, $cb36                                  ; $4e60: $11 $36 $cb
    ld b, $0a                                     ; $4e63: $06 $0a
    ldh a, [rSVBK]                                ; $4e65: $f0 $70
    push af                                       ; $4e67: $f5
    ld a, $06                                     ; $4e68: $3e $06
    ldh [rSVBK], a                                ; $4e6a: $e0 $70

jr_004_4e6c:
    ld a, c                                       ; $4e6c: $79
    ld [de], a                                    ; $4e6d: $12
    inc de                                        ; $4e6e: $13
    inc c                                         ; $4e6f: $0c
    ld a, [hl+]                                   ; $4e70: $2a
    ld [de], a                                    ; $4e71: $12
    inc de                                        ; $4e72: $13
    dec b                                         ; $4e73: $05
    jr nz, jr_004_4e6c                            ; $4e74: $20 $f6

    pop af                                        ; $4e76: $f1
    ldh [rSVBK], a                                ; $4e77: $e0 $70
    ret                                           ; $4e79: $c9


Call_004_4e7a:
    rst $18                                       ; $4e7a: $df
    call Call_004_4e81                            ; $4e7b: $cd $81 $4e
    jp Jump_004_491b                              ; $4e7e: $c3 $1b $49


Call_004_4e81:
    ld b, $01                                     ; $4e81: $06 $01
    ld c, $71                                     ; $4e83: $0e $71
    ld e, $14                                     ; $4e85: $1e $14
    ld d, $09                                     ; $4e87: $16 $09
    ld hl, $0120                                  ; $4e89: $21 $20 $01
    call Call_000_13c4                            ; $4e8c: $cd $c4 $13
    ld hl, $4d2d                                  ; $4e8f: $21 $2d $4d
    call Call_000_301f                            ; $4e92: $cd $1f $30
    ld a, $a0                                     ; $4e95: $3e $a0
    ld [$c1eb], a                                 ; $4e97: $ea $eb $c1
    ld a, $01                                     ; $4e9a: $3e $01
    ld [$c234], a                                 ; $4e9c: $ea $34 $c2
    ld a, [$cbeb]                                 ; $4e9f: $fa $eb $cb
    ld hl, $1570                                  ; $4ea2: $21 $70 $15
    ldh [$c1], a                                  ; $4ea5: $e0 $c1
    ld a, $67                                     ; $4ea7: $3e $67
    ldh [$bd], a                                  ; $4ea9: $e0 $bd
    ld a, $6e                                     ; $4eab: $3e $6e
    ldh [$be], a                                  ; $4ead: $e0 $be
    call Call_000_341a                            ; $4eaf: $cd $1a $34
    ret                                           ; $4eb2: $c9


Call_004_4eb3:
    ld a, [$cbeb]                                 ; $4eb3: $fa $eb $cb
    ld hl, $46f8                                  ; $4eb6: $21 $f8 $46
    call Call_000_319d                            ; $4eb9: $cd $9d $31
    ld a, l                                       ; $4ebc: $7d
    ld [$c127], a                                 ; $4ebd: $ea $27 $c1
    ld a, h                                       ; $4ec0: $7c
    ld [$c128], a                                 ; $4ec1: $ea $28 $c1
    xor a                                         ; $4ec4: $af
    ld [$c126], a                                 ; $4ec5: $ea $26 $c1
    ld [$c125], a                                 ; $4ec8: $ea $25 $c1
    ld a, $02                                     ; $4ecb: $3e $02
    ld [$c124], a                                 ; $4ecd: $ea $24 $c1
    ld a, $38                                     ; $4ed0: $3e $38
    ld [$c141], a                                 ; $4ed2: $ea $41 $c1
    ld a, [$cb33]                                 ; $4ed5: $fa $33 $cb
    ld hl, $511a                                  ; $4ed8: $21 $1a $51
    call Call_000_0fad                            ; $4edb: $cd $ad $0f
    ret                                           ; $4ede: $c9


Call_004_4edf:
    ld a, [$cbeb]                                 ; $4edf: $fa $eb $cb
    ld hl, $4ce1                                  ; $4ee2: $21 $e1 $4c
    jp RST_08                                     ; $4ee5: $c3 $08 $00


Call_004_4ee8:
    push hl                                       ; $4ee8: $e5
    ld a, [$cbeb]                                 ; $4ee9: $fa $eb $cb
    ld hl, $4ce2                                  ; $4eec: $21 $e2 $4c
    rst $08                                       ; $4eef: $cf
    ld a, [hl-]                                   ; $4ef0: $3a
    sub [hl]                                      ; $4ef1: $96
    pop hl                                        ; $4ef2: $e1
    ret                                           ; $4ef3: $c9


Call_004_4ef4:
    call Call_004_4edf                            ; $4ef4: $cd $df $4e
    ld hl, $ffd5                                  ; $4ef7: $21 $d5 $ff
    add [hl]                                      ; $4efa: $86
    dec a                                         ; $4efb: $3d
    ret                                           ; $4efc: $c9


Call_004_4efd:
    call Call_004_4ef4                            ; $4efd: $cd $f4 $4e
    ld l, a                                       ; $4f00: $6f
    call Call_004_4806                            ; $4f01: $cd $06 $48
    ld a, l                                       ; $4f04: $7d
    ret nz                                        ; $4f05: $c0

    ld a, $65                                     ; $4f06: $3e $65
    ret                                           ; $4f08: $c9


    db $01, $1e, $80, $00, $00, $00, $aa, $24, $01, $01, $01, $01, $27, $4f, $30, $4f
    db $39, $4f

    ld b, d                                       ; $4f1b: $42
    ld c, a                                       ; $4f1c: $4f
    ld c, e                                       ; $4f1d: $4b
    ld c, a                                       ; $4f1e: $4f

    db $54, $4f

    ld e, l                                       ; $4f21: $5d
    ld c, a                                       ; $4f22: $4f
    ld h, [hl]                                    ; $4f23: $66
    ld c, a                                       ; $4f24: $4f
    ld l, a                                       ; $4f25: $6f
    ld c, a                                       ; $4f26: $4f

    db $01, $08, $e0, $00, $00, $04, $04, $00, $02, $01, $08, $f0, $00, $00, $04, $04
    db $05, $02, $01, $08, $00, $00, $00, $04, $04, $0a, $02

    ld bc, $100a                                  ; $4f42: $01 $0a $10
    nop                                           ; $4f45: $00
    nop                                           ; $4f46: $00
    inc b                                         ; $4f47: $04
    inc b                                         ; $4f48: $04
    nop                                           ; $4f49: $00
    rlca                                          ; $4f4a: $07
    ld bc, $200a                                  ; $4f4b: $01 $0a $20
    nop                                           ; $4f4e: $00
    nop                                           ; $4f4f: $00
    inc b                                         ; $4f50: $04
    inc b                                         ; $4f51: $04
    dec b                                         ; $4f52: $05
    rlca                                          ; $4f53: $07

    db $01, $0a, $30, $00, $00, $04, $04, $0a, $07

    ld bc, $400c                                  ; $4f5d: $01 $0c $40
    nop                                           ; $4f60: $00
    nop                                           ; $4f61: $00
    inc b                                         ; $4f62: $04
    inc b                                         ; $4f63: $04
    nop                                           ; $4f64: $00
    inc c                                         ; $4f65: $0c
    ld bc, $500c                                  ; $4f66: $01 $0c $50
    nop                                           ; $4f69: $00
    nop                                           ; $4f6a: $00
    inc b                                         ; $4f6b: $04
    inc b                                         ; $4f6c: $04
    dec b                                         ; $4f6d: $05
    inc c                                         ; $4f6e: $0c
    ld bc, $600c                                  ; $4f6f: $01 $0c $60
    nop                                           ; $4f72: $00
    nop                                           ; $4f73: $00
    inc b                                         ; $4f74: $04
    inc b                                         ; $4f75: $04
    ld a, [bc]                                    ; $4f76: $0a
    inc c                                         ; $4f77: $0c

    db $8a, $4f

    sub e                                         ; $4f7a: $93
    ld c, a                                       ; $4f7b: $4f

    db $9c, $4f, $a5, $4f, $ae, $4f

    or a                                          ; $4f82: $b7
    ld c, a                                       ; $4f83: $4f
    ret nz                                        ; $4f84: $c0

    ld c, a                                       ; $4f85: $4f
    ret                                           ; $4f86: $c9


    ld c, a                                       ; $4f87: $4f
    db $d2                                        ; $4f88: $d2
    ld c, a                                       ; $4f89: $4f

    db $01, $09, $e0, $00, $00, $04, $04, $00, $02

    ld bc, $f009                                  ; $4f93: $01 $09 $f0
    nop                                           ; $4f96: $00
    nop                                           ; $4f97: $00
    inc b                                         ; $4f98: $04
    inc b                                         ; $4f99: $04
    dec b                                         ; $4f9a: $05
    ld [bc], a                                    ; $4f9b: $02

    db $01, $09, $00, $00, $00, $04, $04, $0a, $02, $01, $0b, $10, $00, $00, $04, $04
    db $00, $07, $01, $0b, $20, $00, $00, $04, $04, $05, $07

    ld bc, $300b                                  ; $4fb7: $01 $0b $30
    nop                                           ; $4fba: $00
    nop                                           ; $4fbb: $00
    inc b                                         ; $4fbc: $04
    inc b                                         ; $4fbd: $04
    ld a, [bc]                                    ; $4fbe: $0a
    rlca                                          ; $4fbf: $07
    ld bc, $400d                                  ; $4fc0: $01 $0d $40
    nop                                           ; $4fc3: $00
    nop                                           ; $4fc4: $00
    inc b                                         ; $4fc5: $04
    inc b                                         ; $4fc6: $04
    nop                                           ; $4fc7: $00
    inc c                                         ; $4fc8: $0c
    ld bc, $500d                                  ; $4fc9: $01 $0d $50
    nop                                           ; $4fcc: $00
    nop                                           ; $4fcd: $00
    inc b                                         ; $4fce: $04
    inc b                                         ; $4fcf: $04
    dec b                                         ; $4fd0: $05
    inc c                                         ; $4fd1: $0c
    ld bc, $600d                                  ; $4fd2: $01 $0d $60
    nop                                           ; $4fd5: $00
    nop                                           ; $4fd6: $00
    inc b                                         ; $4fd7: $04
    inc b                                         ; $4fd8: $04
    ld a, [bc]                                    ; $4fd9: $0a
    inc c                                         ; $4fda: $0c

    db $e7, $4f

    ldh a, [rVBK]                                 ; $4fdd: $f0 $4f
    ld sp, hl                                     ; $4fdf: $f9
    ld c, a                                       ; $4fe0: $4f

    db $02, $50, $0b, $50

    inc d                                         ; $4fe5: $14
    ld d, b                                       ; $4fe6: $50

    db $01, $00, $00, $00, $12, $02, $02, $11, $03

    ld bc, $0000                                  ; $4ff0: $01 $00 $00
    nop                                           ; $4ff3: $00
    ld [de], a                                    ; $4ff4: $12
    ld [bc], a                                    ; $4ff5: $02
    ld [bc], a                                    ; $4ff6: $02
    ld de, $0108                                  ; $4ff7: $11 $08 $01
    nop                                           ; $4ffa: $00
    nop                                           ; $4ffb: $00
    nop                                           ; $4ffc: $00
    ld [de], a                                    ; $4ffd: $12
    ld [bc], a                                    ; $4ffe: $02
    ld [bc], a                                    ; $4fff: $02
    db $11                                        ; $5000: $11
    dec c                                         ; $5001: $0d

    db $01, $01, $00, $02, $12, $02, $02, $11, $03, $01, $03, $00, $02, $12, $02, $02
    db $11, $08

    ld bc, $0005                                  ; $5014: $01 $05 $00
    ld [bc], a                                    ; $5017: $02
    ld [de], a                                    ; $5018: $12
    ld [bc], a                                    ; $5019: $02
    ld [bc], a                                    ; $501a: $02
    ld de, $010d                                  ; $501b: $11 $0d $01
    add b                                         ; $501e: $80
    nop                                           ; $501f: $00
    ld [bc], a                                    ; $5020: $02
    inc d                                         ; $5021: $14
    db $10                                        ; $5022: $10
    rlca                                          ; $5023: $07
    ld [bc], a                                    ; $5024: $02
    ld b, $10                                     ; $5025: $06 $10
    ld bc, $502d                                  ; $5027: $01 $2d $50
    nop                                           ; $502a: $00
    ld [bc], a                                    ; $502b: $02
    ld b, b                                       ; $502c: $40
    ld [$0ad8], a                                 ; $502d: $ea $d8 $0a
    reti                                          ; $5030: $d9


    ld a, [hl+]                                   ; $5031: $2a
    reti                                          ; $5032: $d9


    ld c, d                                       ; $5033: $4a
    reti                                          ; $5034: $d9


    ld l, d                                       ; $5035: $6a
    reti                                          ; $5036: $d9


    db $30, $01, $3e, $50, $d0, $00, $41, $c1, $d8, $61, $d9, $01, $da, $01, $04, $07
    db $06, $09, $3e, $02, $03, $5d, $05, $08, $61, $54, $58, $59, $55, $56, $5c, $3d
    db $57, $5b, $00, $5e, $64, $43, $44, $49, $0d, $3b, $3f, $23, $25, $5f, $1e, $20
    db $21, $1d, $1f, $22, $0a, $0c, $0f, $12, $30, $5d, $10, $24, $39, $0b, $0e, $1c
    db $40, $61, $63, $41, $42, $49, $11, $3c, $3d

    ld c, h                                       ; $5080: $4c
    ld c, [hl]                                    ; $5081: $4e
    ld d, b                                       ; $5082: $50
    ld c, e                                       ; $5083: $4b
    ld c, a                                       ; $5084: $4f
    ld d, d                                       ; $5085: $52
    ld c, d                                       ; $5086: $4a
    ld c, l                                       ; $5087: $4d
    ld d, c                                       ; $5088: $51
    ld bc, $1b17                                  ; $5089: $01 $17 $1b
    inc d                                         ; $508c: $14
    add hl, de                                    ; $508d: $19
    ld a, [de]                                    ; $508e: $1a
    dec d                                         ; $508f: $15
    ld d, $18                                     ; $5090: $16 $18
    inc de                                        ; $5092: $13
    ld d, e                                       ; $5093: $53
    ld h, b                                       ; $5094: $60
    ld e, [hl]                                    ; $5095: $5e
    ld h, c                                       ; $5096: $61
    ld h, d                                       ; $5097: $62
    ld b, h                                       ; $5098: $44
    ld b, l                                       ; $5099: $45
    ld c, c                                       ; $509a: $49
    ld a, [hl-]                                   ; $509b: $3a
    ld a, $3f                                     ; $509c: $3e $3f
    add hl, hl                                    ; $509e: $29
    inc l                                         ; $509f: $2c
    dec l                                         ; $50a0: $2d
    daa                                           ; $50a1: $27
    jr z, jr_004_50ce                             ; $50a2: $28 $2a

    dec hl                                        ; $50a4: $2b
    cpl                                           ; $50a5: $2f
    ld [hl-], a                                   ; $50a6: $32
    ld h, $2e                                     ; $50a7: $26 $2e
    inc a                                         ; $50a9: $3c
    jr nc, @+$35                                  ; $50aa: $30 $33

    dec [hl]                                      ; $50ac: $35
    ld [$3631], sp                                ; $50ad: $08 $31 $36
    inc [hl]                                      ; $50b0: $34
    ld b, d                                       ; $50b1: $42
    ld h, c                                       ; $50b2: $61
    ld e, a                                       ; $50b3: $5f
    ld h, d                                       ; $50b4: $62
    ld h, h                                       ; $50b5: $64
    ld b, [hl]                                    ; $50b6: $46
    ld c, b                                       ; $50b7: $48
    ld c, c                                       ; $50b8: $49
    add hl, sp                                    ; $50b9: $39
    dec sp                                        ; $50ba: $3b
    ld a, $01                                     ; $50bb: $3e $01
    rra                                           ; $50bd: $1f
    ld h, $0f                                     ; $50be: $26 $0f
    inc [hl]                                      ; $50c0: $34
    ld b, h                                       ; $50c1: $44
    inc b                                         ; $50c2: $04
    jr nc, jr_004_5126                            ; $50c3: $30 $61

    ld b, $14                                     ; $50c5: $06 $14
    ld d, a                                       ; $50c7: $57
    ld de, $4d3b                                  ; $50c8: $11 $3b $4d
    dec h                                         ; $50cb: $25
    inc [hl]                                      ; $50cc: $34
    ld h, b                                       ; $50cd: $60

jr_004_50ce:
    jr nz, @+$2f                                  ; $50ce: $20 $2d

    ld h, e                                       ; $50d0: $63
    ld c, $2f                                     ; $50d1: $0e $2f
    ld a, [hl-]                                   ; $50d3: $3a
    ld b, e                                       ; $50d4: $43
    ld c, e                                       ; $50d5: $4b
    ld d, l                                       ; $50d6: $55
    ld a, [de]                                    ; $50d7: $1a
    dec h                                         ; $50d8: $25
    ld e, e                                       ; $50d9: $5b
    jr c, @+$4b                                   ; $50da: $38 $49

    ld h, c                                       ; $50dc: $61

    ld hl, $4f09                                  ; $50dd: $21 $09 $4f
    jp Jump_000_2837                              ; $50e0: $c3 $37 $28


Call_004_50e3:
    rst $18                                       ; $50e3: $df
    push hl                                       ; $50e4: $e5
    ld de, $501d                                  ; $50e5: $11 $1d $50
    call Call_000_134e                            ; $50e8: $cd $4e $13
    ld hl, $5026                                  ; $50eb: $21 $26 $50
    call Call_000_301f                            ; $50ee: $cd $1f $30
    ld a, $70                                     ; $50f1: $3e $70
    ld [$c1eb], a                                 ; $50f3: $ea $eb $c1
    ld a, $05                                     ; $50f6: $3e $05
    ld [$c234], a                                 ; $50f8: $ea $34 $c2
    pop hl                                        ; $50fb: $e1
    ldh [$c1], a                                  ; $50fc: $e0 $c1
    ld a, $1a                                     ; $50fe: $3e $1a
    ldh [$bd], a                                  ; $5100: $e0 $bd
    ld a, $6e                                     ; $5102: $3e $6e
    ldh [$be], a                                  ; $5104: $e0 $be
    call Call_000_341a                            ; $5106: $cd $1a $34
    rst $20                                       ; $5109: $e7
    xor a                                         ; $510a: $af
    ldh [$a5], a                                  ; $510b: $e0 $a5
    ld [$cbb1], a                                 ; $510d: $ea $b1 $cb
    ret                                           ; $5110: $c9


    ld hl, $795f                                  ; $5111: $21 $5f $79
    ldh [$c1], a                                  ; $5114: $e0 $c1
    ld a, $6d                                     ; $5116: $3e $6d
    ldh [$bd], a                                  ; $5118: $e0 $bd
    ld a, $7c                                     ; $511a: $3e $7c
    ldh [$be], a                                  ; $511c: $e0 $be
    call Call_000_340c                            ; $511e: $cd $0c $34
    ld hl, $4dfb                                  ; $5121: $21 $fb $4d
    ldh [$c1], a                                  ; $5124: $e0 $c1

jr_004_5126:
    ld a, $61                                     ; $5126: $3e $61
    ldh [$bd], a                                  ; $5128: $e0 $bd
    ld a, $4f                                     ; $512a: $3e $4f
    ldh [$be], a                                  ; $512c: $e0 $be
    call Call_000_33fe                            ; $512e: $cd $fe $33
    xor a                                         ; $5131: $af
    ld [$cbeb], a                                 ; $5132: $ea $eb $cb
    ld a, $01                                     ; $5135: $3e $01
    ldh [$d1], a                                  ; $5137: $e0 $d1
    call Call_004_52c6                            ; $5139: $cd $c6 $52
    ld [$cbe8], a                                 ; $513c: $ea $e8 $cb
    or a                                          ; $513f: $b7
    jr nz, jr_004_5151                            ; $5140: $20 $0f

    ld hl, $1e1f                                  ; $5142: $21 $1f $1e
    call Call_004_50e3                            ; $5145: $cd $e3 $50
    ld hl, $cd02                                  ; $5148: $21 $02 $cd
    ld [hl], $84                                  ; $514b: $36 $84
    inc hl                                        ; $514d: $23
    ld [hl], $51                                  ; $514e: $36 $51
    ret                                           ; $5150: $c9


jr_004_5151:
    ld a, $04                                     ; $5151: $3e $04
    ldh [$c1], a                                  ; $5153: $e0 $c1
    ld a, $0f                                     ; $5155: $3e $0f
    ldh [$bd], a                                  ; $5157: $e0 $bd
    ld a, $25                                     ; $5159: $3e $25
    ldh [$be], a                                  ; $515b: $e0 $be
    call Call_000_3421                            ; $515d: $cd $21 $34
    ld hl, $ffb8                                  ; $5160: $21 $b8 $ff
    ld [hl], $00                                  ; $5163: $36 $00
    inc hl                                        ; $5165: $23
    ld [hl], $00                                  ; $5166: $36 $00
    ld a, $a5                                     ; $5168: $3e $a5
    ldh [$c1], a                                  ; $516a: $e0 $c1
    ld a, $d6                                     ; $516c: $3e $d6
    ldh [$bd], a                                  ; $516e: $e0 $bd
    ld a, $11                                     ; $5170: $3e $11
    ldh [$be], a                                  ; $5172: $e0 $be
    call Call_000_3421                            ; $5174: $cd $21 $34
    ld a, $02                                     ; $5177: $3e $02
    ldh [$9b], a                                  ; $5179: $e0 $9b
    ld a, $a5                                     ; $517b: $3e $a5
    call Call_000_03a0                            ; $517d: $cd $a0 $03
    call Call_004_53b4                            ; $5180: $cd $b4 $53
    ret                                           ; $5183: $c9


    ldh a, [$a5]                                  ; $5184: $f0 $a5
    and $03                                       ; $5186: $e6 $03
    jp nz, Jump_004_526b                          ; $5188: $c2 $6b $52

    ret                                           ; $518b: $c9


    ldh a, [$a5]                                  ; $518c: $f0 $a5
    and $03                                       ; $518e: $e6 $03
    ret z                                         ; $5190: $c8

    call Call_004_53b4                            ; $5191: $cd $b4 $53
    ld hl, $cd02                                  ; $5194: $21 $02 $cd
    ld [hl], $9d                                  ; $5197: $36 $9d
    inc hl                                        ; $5199: $23
    ld [hl], $51                                  ; $519a: $36 $51
    ret                                           ; $519c: $c9


    ld a, [$cbb1]                                 ; $519d: $fa $b1 $cb
    or a                                          ; $51a0: $b7
    jp nz, Jump_004_528b                          ; $51a1: $c2 $8b $52

    ldh a, [$a5]                                  ; $51a4: $f0 $a5
    and $f0                                       ; $51a6: $e6 $f0
    jr z, jr_004_51af                             ; $51a8: $28 $05

    ld a, $19                                     ; $51aa: $3e $19
    call Call_000_393e                            ; $51ac: $cd $3e $39

jr_004_51af:
    ldh a, [$a5]                                  ; $51af: $f0 $a5
    and $30                                       ; $51b1: $e6 $30
    call nz, Call_004_52a0                        ; $51b3: $c4 $a0 $52
    ld a, [$cbe8]                                 ; $51b6: $fa $e8 $cb
    ld c, a                                       ; $51b9: $4f
    ldh [$c1], a                                  ; $51ba: $e0 $c1
    ld a, $86                                     ; $51bc: $3e $86
    ldh [$bd], a                                  ; $51be: $e0 $bd
    ld a, $4f                                     ; $51c0: $3e $4f
    ldh [$be], a                                  ; $51c2: $e0 $be
    call Call_000_33fe                            ; $51c4: $cd $fe $33
    ld hl, $ffd1                                  ; $51c7: $21 $d1 $ff
    cp [hl]                                       ; $51ca: $be
    jr z, jr_004_5213                             ; $51cb: $28 $46

    ld [hl], a                                    ; $51cd: $77
    ld a, [$cbeb]                                 ; $51ce: $fa $eb $cb
    add [hl]                                      ; $51d1: $86
    jr z, jr_004_51f2                             ; $51d2: $28 $1e

    dec a                                         ; $51d4: $3d
    cp c                                          ; $51d5: $b9
    jr c, jr_004_51df                             ; $51d6: $38 $07

    dec [hl]                                      ; $51d8: $35
    ld hl, $ffd5                                  ; $51d9: $21 $d5 $ff
    dec [hl]                                      ; $51dc: $35
    jr jr_004_5213                                ; $51dd: $18 $34

jr_004_51df:
    ldh a, [$d1]                                  ; $51df: $f0 $d1
    cp $00                                        ; $51e1: $fe $00
    jr nz, jr_004_51f8                            ; $51e3: $20 $13

    ld a, [$cbeb]                                 ; $51e5: $fa $eb $cb
    sub $03                                       ; $51e8: $d6 $03
    ld [$cbeb], a                                 ; $51ea: $ea $eb $cb
    call Call_004_53b4                            ; $51ed: $cd $b4 $53
    jr jr_004_520f                                ; $51f0: $18 $1d

jr_004_51f2:
    ld a, $01                                     ; $51f2: $3e $01
    ldh [$d5], a                                  ; $51f4: $e0 $d5
    jr jr_004_5213                                ; $51f6: $18 $1b

jr_004_51f8:
    cp $04                                        ; $51f8: $fe $04
    jr nz, jr_004_5213                            ; $51fa: $20 $17

    ld a, [$cbeb]                                 ; $51fc: $fa $eb $cb
    add $03                                       ; $51ff: $c6 $03
    ld hl, $cbe8                                  ; $5201: $21 $e8 $cb
    cp [hl]                                       ; $5204: $be
    jr nc, jr_004_520f                            ; $5205: $30 $08

    ld [$cbeb], a                                 ; $5207: $ea $eb $cb
    call Call_004_53b4                            ; $520a: $cd $b4 $53
    jr jr_004_51f2                                ; $520d: $18 $e3

jr_004_520f:
    ld a, $03                                     ; $520f: $3e $03
    ldh [$d5], a                                  ; $5211: $e0 $d5

jr_004_5213:
    ldh a, [$a5]                                  ; $5213: $f0 $a5
    or a                                          ; $5215: $b7
    ret z                                         ; $5216: $c8

    bit 0, a                                      ; $5217: $cb $47
    jr nz, jr_004_5220                            ; $5219: $20 $05

    bit 1, a                                      ; $521b: $cb $4f
    jr nz, jr_004_526b                            ; $521d: $20 $4c

    ret                                           ; $521f: $c9


jr_004_5220:
    ldh a, [$cc]                                  ; $5220: $f0 $cc
    cp $0f                                        ; $5222: $fe $0f
    jr z, jr_004_524e                             ; $5224: $28 $28

    cp $10                                        ; $5226: $fe $10
    jr z, jr_004_524e                             ; $5228: $28 $24

    ld a, [$cbeb]                                 ; $522a: $fa $eb $cb
    ld hl, $ffd1                                  ; $522d: $21 $d1 $ff
    add [hl]                                      ; $5230: $86
    dec a                                         ; $5231: $3d
    call Call_004_52ea                            ; $5232: $cd $ea $52
    ld c, a                                       ; $5235: $4f
    call Call_004_5365                            ; $5236: $cd $65 $53
    jr nz, jr_004_5262                            ; $5239: $20 $27

    ld hl, $2266                                  ; $523b: $21 $66 $22
    call Call_004_50e3                            ; $523e: $cd $e3 $50
    ld hl, $cd02                                  ; $5241: $21 $02 $cd
    ld [hl], $8c                                  ; $5244: $36 $8c
    inc hl                                        ; $5246: $23
    ld [hl], $51                                  ; $5247: $36 $51
    ld a, $18                                     ; $5249: $3e $18
    jp Jump_000_393e                              ; $524b: $c3 $3e $39


jr_004_524e:
    ld hl, $2269                                  ; $524e: $21 $69 $22
    call Call_004_50e3                            ; $5251: $cd $e3 $50
    ld hl, $cd02                                  ; $5254: $21 $02 $cd
    ld [hl], $8c                                  ; $5257: $36 $8c
    inc hl                                        ; $5259: $23
    ld [hl], $51                                  ; $525a: $36 $51
    ret                                           ; $525c: $c9


jr_004_525d:
    ld a, $0f                                     ; $525d: $3e $0f
    jp Jump_000_2448                              ; $525f: $c3 $48 $24


jr_004_5262:
    call Call_004_5407                            ; $5262: $cd $07 $54
    ld a, c                                       ; $5265: $79
    inc a                                         ; $5266: $3c
    ld [$cbb1], a                                 ; $5267: $ea $b1 $cb
    ret                                           ; $526a: $c9


Jump_004_526b:
jr_004_526b:
    ld a, $18                                     ; $526b: $3e $18
    call Call_000_393e                            ; $526d: $cd $3e $39
    ldh a, [$cc]                                  ; $5270: $f0 $cc
    cp $0f                                        ; $5272: $fe $0f
    jr z, jr_004_525d                             ; $5274: $28 $e7

    cp $10                                        ; $5276: $fe $10
    jr z, jr_004_525d                             ; $5278: $28 $e3

    cp $14                                        ; $527a: $fe $14
    jr z, jr_004_525d                             ; $527c: $28 $df

    cp $15                                        ; $527e: $fe $15
    jr z, jr_004_525d                             ; $5280: $28 $db

    ld d, $ff                                     ; $5282: $16 $ff
    ld e, $01                                     ; $5284: $1e $01
    ld a, $19                                     ; $5286: $3e $19
    jp Jump_000_244b                              ; $5288: $c3 $4b $24


Jump_004_528b:
    ld a, [$cbb0]                                 ; $528b: $fa $b0 $cb
    or a                                          ; $528e: $b7
    ret nz                                        ; $528f: $c0

    ld a, [$cbb1]                                 ; $5290: $fa $b1 $cb
    dec a                                         ; $5293: $3d
    ld d, a                                       ; $5294: $57
    xor a                                         ; $5295: $af
    ld [$cbb1], a                                 ; $5296: $ea $b1 $cb
    ld e, $01                                     ; $5299: $1e $01
    ld a, $19                                     ; $529b: $3e $19
    jp Jump_000_244b                              ; $529d: $c3 $4b $24


Call_004_52a0:
    ldh a, [$a5]                                  ; $52a0: $f0 $a5
    and $20                                       ; $52a2: $e6 $20
    jr nz, jr_004_52bd                            ; $52a4: $20 $17

    push bc                                       ; $52a6: $c5
    ld a, [$cbeb]                                 ; $52a7: $fa $eb $cb
    ld b, a                                       ; $52aa: $47
    ld a, [$cbe8]                                 ; $52ab: $fa $e8 $cb
    sub b                                         ; $52ae: $90
    pop bc                                        ; $52af: $c1
    cp $04                                        ; $52b0: $fe $04
    jr c, jr_004_52b6                             ; $52b2: $38 $02

    ld a, $03                                     ; $52b4: $3e $03

jr_004_52b6:
    ldh [$d5], a                                  ; $52b6: $e0 $d5
    ld a, $80                                     ; $52b8: $3e $80
    ldh [$a5], a                                  ; $52ba: $e0 $a5
    ret                                           ; $52bc: $c9


jr_004_52bd:
    ld a, $01                                     ; $52bd: $3e $01
    ldh [$d5], a                                  ; $52bf: $e0 $d5
    ld a, $40                                     ; $52c1: $3e $40
    ldh [$a5], a                                  ; $52c3: $e0 $a5
    ret                                           ; $52c5: $c9


Call_004_52c6:
    ld c, $07                                     ; $52c6: $0e $07
    ld e, $00                                     ; $52c8: $1e $00
    ld hl, $d570                                  ; $52ca: $21 $70 $d5
    ldh a, [rSVBK]                                ; $52cd: $f0 $70
    push af                                       ; $52cf: $f5
    ld a, $06                                     ; $52d0: $3e $06
    ldh [rSVBK], a                                ; $52d2: $e0 $70
    xor a                                         ; $52d4: $af

jr_004_52d5:
    ld b, $08                                     ; $52d5: $06 $08
    ld d, [hl]                                    ; $52d7: $56
    inc hl                                        ; $52d8: $23

jr_004_52d9:
    rrc d                                         ; $52d9: $cb $0a
    adc e                                         ; $52db: $8b
    dec b                                         ; $52dc: $05
    jr nz, jr_004_52d9                            ; $52dd: $20 $fa

    dec c                                         ; $52df: $0d
    jr nz, jr_004_52d5                            ; $52e0: $20 $f3

    ldh [$bc], a                                  ; $52e2: $e0 $bc
    pop af                                        ; $52e4: $f1
    ldh [rSVBK], a                                ; $52e5: $e0 $70
    ldh a, [$bc]                                  ; $52e7: $f0 $bc
    ret                                           ; $52e9: $c9


Call_004_52ea:
    push bc                                       ; $52ea: $c5
    inc a                                         ; $52eb: $3c
    ld b, a                                       ; $52ec: $47
    ld c, $00                                     ; $52ed: $0e $00
    ld hl, $d570                                  ; $52ef: $21 $70 $d5
    ldh a, [rSVBK]                                ; $52f2: $f0 $70
    push af                                       ; $52f4: $f5
    ld a, $06                                     ; $52f5: $3e $06
    ldh [rSVBK], a                                ; $52f7: $e0 $70

jr_004_52f9:
    ld a, c                                       ; $52f9: $79
    call Call_000_3256                            ; $52fa: $cd $56 $32
    jr z, jr_004_5302                             ; $52fd: $28 $03

    dec b                                         ; $52ff: $05
    jr z, jr_004_530a                             ; $5300: $28 $08

jr_004_5302:
    inc c                                         ; $5302: $0c
    ld a, c                                       ; $5303: $79
    cp $33                                        ; $5304: $fe $33
    jr nz, jr_004_52f9                            ; $5306: $20 $f1

    ld c, $ff                                     ; $5308: $0e $ff

jr_004_530a:
    pop af                                        ; $530a: $f1
    ldh [rSVBK], a                                ; $530b: $e0 $70
    ld a, c                                       ; $530d: $79
    pop bc                                        ; $530e: $c1
    ret                                           ; $530f: $c9


Call_004_5310:
    push bc                                       ; $5310: $c5
    ld a, b                                       ; $5311: $78
    add a                                         ; $5312: $87
    add b                                         ; $5313: $80
    ldh [$b2], a                                  ; $5314: $e0 $b2
    swap a                                        ; $5316: $cb $37
    ld hl, $0260                                  ; $5318: $21 $60 $02
    rst $08                                       ; $531b: $cf
    ld a, l                                       ; $531c: $7d
    ldh [$b8], a                                  ; $531d: $e0 $b8
    ld a, h                                       ; $531f: $7c
    ldh [$b9], a                                  ; $5320: $e0 $b9
    ld b, $00                                     ; $5322: $06 $00
    ld a, c                                       ; $5324: $79
    ld hl, $5044                                  ; $5325: $21 $44 $50
    call Call_000_3185                            ; $5328: $cd $85 $31

jr_004_532b:
    ld a, [hl+]                                   ; $532b: $2a
    ld c, a                                       ; $532c: $4f
    push hl                                       ; $532d: $e5
    ldh [$c1], a                                  ; $532e: $e0 $c1
    ld a, $54                                     ; $5330: $3e $54
    ldh [$bd], a                                  ; $5332: $e0 $bd
    ld a, $71                                     ; $5334: $3e $71
    ldh [$be], a                                  ; $5336: $e0 $be
    call Call_000_33fe                            ; $5338: $cd $fe $33
    ld a, c                                       ; $533b: $79
    call Call_004_4caf                            ; $533c: $cd $af $4c
    or a                                          ; $533f: $b7
    ld hl, $4f78                                  ; $5340: $21 $78 $4f
    jr z, jr_004_5348                             ; $5343: $28 $03

    ld hl, $4f15                                  ; $5345: $21 $15 $4f

jr_004_5348:
    ldh a, [$b2]                                  ; $5348: $f0 $b2
    add b                                         ; $534a: $80
    call Call_000_3194                            ; $534b: $cd $94 $31
    xor a                                         ; $534e: $af
    ldh [$c1], a                                  ; $534f: $e0 $c1
    ld a, $e4                                     ; $5351: $3e $e4
    ldh [$bd], a                                  ; $5353: $e0 $bd
    ld a, $24                                     ; $5355: $3e $24
    ldh [$be], a                                  ; $5357: $e0 $be
    call Call_000_3421                            ; $5359: $cd $21 $34
    pop hl                                        ; $535c: $e1
    inc b                                         ; $535d: $04
    ld a, b                                       ; $535e: $78
    cp $03                                        ; $535f: $fe $03
    jr nz, jr_004_532b                            ; $5361: $20 $c8

    pop bc                                        ; $5363: $c1
    ret                                           ; $5364: $c9


Call_004_5365:
    push bc                                       ; $5365: $c5
    ld a, c                                       ; $5366: $79
    ld hl, $5044                                  ; $5367: $21 $44 $50
    call Call_000_3185                            ; $536a: $cd $85 $31
    ld b, $03                                     ; $536d: $06 $03

jr_004_536f:
    ld a, [hl+]                                   ; $536f: $2a
    call Call_004_4caf                            ; $5370: $cd $af $4c
    or a                                          ; $5373: $b7
    jr z, jr_004_537b                             ; $5374: $28 $05

    dec b                                         ; $5376: $05
    jr nz, jr_004_536f                            ; $5377: $20 $f6

    ld a, $01                                     ; $5379: $3e $01

jr_004_537b:
    pop bc                                        ; $537b: $c1
    or a                                          ; $537c: $b7
    ret                                           ; $537d: $c9


Call_004_537e:
    ld a, c                                       ; $537e: $79
    call Call_004_5365                            ; $537f: $cd $65 $53
    ld hl, $4fe1                                  ; $5382: $21 $e1 $4f
    jr z, jr_004_538a                             ; $5385: $28 $03

    ld hl, $4fdb                                  ; $5387: $21 $db $4f

jr_004_538a:
    ld a, b                                       ; $538a: $78
    call Call_000_3194                            ; $538b: $cd $94 $31
    jp Jump_000_134e                              ; $538e: $c3 $4e $13


Call_004_5391:
    push bc                                       ; $5391: $c5
    call Call_004_52ea                            ; $5392: $cd $ea $52
    ld c, a                                       ; $5395: $4f
    cp $ff                                        ; $5396: $fe $ff
    jr z, jr_004_53b2                             ; $5398: $28 $18

    ld hl, $1c4e                                  ; $539a: $21 $4e $1c
    ldh [$c1], a                                  ; $539d: $e0 $c1
    ld a, $67                                     ; $539f: $3e $67
    ldh [$bd], a                                  ; $53a1: $e0 $bd
    ld a, $6e                                     ; $53a3: $3e $6e
    ldh [$be], a                                  ; $53a5: $e0 $be
    call Call_000_341a                            ; $53a7: $cd $1a $34
    ld a, c                                       ; $53aa: $79
    call Call_004_5310                            ; $53ab: $cd $10 $53
    ld a, c                                       ; $53ae: $79
    call Call_004_537e                            ; $53af: $cd $7e $53

jr_004_53b2:
    pop bc                                        ; $53b2: $c1
    ret                                           ; $53b3: $c9


Call_004_53b4:
    rst $18                                       ; $53b4: $df
    ld b, $01                                     ; $53b5: $06 $01
    ld c, $80                                     ; $53b7: $0e $80
    ld e, $14                                     ; $53b9: $1e $14
    ld d, $05                                     ; $53bb: $16 $05
    ld hl, $0040                                  ; $53bd: $21 $40 $00
    call Call_000_13c4                            ; $53c0: $cd $c4 $13
    ld b, $03                                     ; $53c3: $06 $03
    ld c, $80                                     ; $53c5: $0e $80
    ld e, $14                                     ; $53c7: $1e $14
    ld d, $05                                     ; $53c9: $16 $05
    ld hl, $00e0                                  ; $53cb: $21 $e0 $00
    call Call_000_13c4                            ; $53ce: $cd $c4 $13
    ld b, $05                                     ; $53d1: $06 $05
    ld c, $80                                     ; $53d3: $0e $80
    ld e, $14                                     ; $53d5: $1e $14
    ld d, $05                                     ; $53d7: $16 $05
    ld hl, $0180                                  ; $53d9: $21 $80 $01
    call Call_000_13c4                            ; $53dc: $cd $c4 $13
    rst $20                                       ; $53df: $e7
    call Call_000_3308                            ; $53e0: $cd $08 $33
    rst $18                                       ; $53e3: $df
    ld hl, $5037                                  ; $53e4: $21 $37 $50
    call Call_000_301f                            ; $53e7: $cd $1f $30
    ld a, $80                                     ; $53ea: $3e $80
    ld [$c1eb], a                                 ; $53ec: $ea $eb $c1
    ld a, $01                                     ; $53ef: $3e $01
    ld [$c234], a                                 ; $53f1: $ea $34 $c2
    ld a, [$cbeb]                                 ; $53f4: $fa $eb $cb
    ld c, a                                       ; $53f7: $4f
    ld b, $00                                     ; $53f8: $06 $00

jr_004_53fa:
    ld a, c                                       ; $53fa: $79
    call Call_004_5391                            ; $53fb: $cd $91 $53
    inc b                                         ; $53fe: $04
    inc c                                         ; $53ff: $0c
    ld a, b                                       ; $5400: $78
    cp $03                                        ; $5401: $fe $03
    jr nz, jr_004_53fa                            ; $5403: $20 $f5

    rst $20                                       ; $5405: $e7
    ret                                           ; $5406: $c9


Call_004_5407:
    push bc                                       ; $5407: $c5
    push de                                       ; $5408: $d5
    push hl                                       ; $5409: $e5
    ld a, c                                       ; $540a: $79
    ld hl, $5044                                  ; $540b: $21 $44 $50
    call Call_000_3185                            ; $540e: $cd $85 $31
    ld a, [hl+]                                   ; $5411: $2a
    ldh [$c1], a                                  ; $5412: $e0 $c1
    ld a, $87                                     ; $5414: $3e $87
    ldh [$bd], a                                  ; $5416: $e0 $bd
    ld a, $5d                                     ; $5418: $3e $5d
    ldh [$be], a                                  ; $541a: $e0 $be
    call Call_000_33fe                            ; $541c: $cd $fe $33
    jr nz, jr_004_542b                            ; $541f: $20 $0a

    call Call_004_47b7                            ; $5421: $cd $b7 $47
    push hl                                       ; $5424: $e5
    ld a, $00                                     ; $5425: $3e $00
    call Call_004_5463                            ; $5427: $cd $63 $54
    pop hl                                        ; $542a: $e1

jr_004_542b:
    ld a, [hl+]                                   ; $542b: $2a
    ldh [$c1], a                                  ; $542c: $e0 $c1
    ld a, $87                                     ; $542e: $3e $87
    ldh [$bd], a                                  ; $5430: $e0 $bd
    ld a, $5d                                     ; $5432: $3e $5d
    ldh [$be], a                                  ; $5434: $e0 $be
    call Call_000_33fe                            ; $5436: $cd $fe $33
    jr nz, jr_004_5445                            ; $5439: $20 $0a

    call Call_004_47b7                            ; $543b: $cd $b7 $47
    push hl                                       ; $543e: $e5
    ld a, $01                                     ; $543f: $3e $01
    call Call_004_5463                            ; $5441: $cd $63 $54
    pop hl                                        ; $5444: $e1

jr_004_5445:
    ld a, [hl+]                                   ; $5445: $2a
    ldh [$c1], a                                  ; $5446: $e0 $c1
    ld a, $87                                     ; $5448: $3e $87
    ldh [$bd], a                                  ; $544a: $e0 $bd
    ld a, $5d                                     ; $544c: $3e $5d
    ldh [$be], a                                  ; $544e: $e0 $be
    call Call_000_33fe                            ; $5450: $cd $fe $33
    jr nz, jr_004_545f                            ; $5453: $20 $0a

    call Call_004_47b7                            ; $5455: $cd $b7 $47
    push hl                                       ; $5458: $e5
    ld a, $02                                     ; $5459: $3e $02
    call Call_004_5463                            ; $545b: $cd $63 $54
    pop hl                                        ; $545e: $e1

jr_004_545f:
    pop hl                                        ; $545f: $e1
    pop de                                        ; $5460: $d1
    pop bc                                        ; $5461: $c1
    ret                                           ; $5462: $c9


Call_004_5463:
    ldh [$9b], a                                  ; $5463: $e0 $9b
    ld a, $b8                                     ; $5465: $3e $b8
    call Call_000_03a0                            ; $5467: $cd $a0 $03
    ld a, [$cbb0]                                 ; $546a: $fa $b0 $cb
    inc a                                         ; $546d: $3c
    ld [$cbb0], a                                 ; $546e: $ea $b0 $cb
    cp $01                                        ; $5471: $fe $01
    ret nz                                        ; $5473: $c0

    ld a, $3f                                     ; $5474: $3e $3f
    jp Jump_000_393e                              ; $5476: $c3 $3e $39


    db $01, $07, $00, $01, $00, $00, $aa, $24, $01, $02, $01, $02, $01

    inc bc                                        ; $5486: $03
    nop                                           ; $5487: $00
    ld [bc], a                                    ; $5488: $02

    db $14, $00

    inc d                                         ; $548b: $14
    add hl, bc                                    ; $548c: $09
    ld [de], a                                    ; $548d: $12
    ld [de], a                                    ; $548e: $12
    add hl, de                                    ; $548f: $19
    ld [de], a                                    ; $5490: $12

    db $21, $d8

    dec h                                         ; $5493: $25
    ret c                                         ; $5494: $d8

    add hl, hl                                    ; $5495: $29
    ret c                                         ; $5496: $d8

    dec l                                         ; $5497: $2d
    ret c                                         ; $5498: $d8

    db $10, $01, $a0, $54, $80, $00, $40, $6a, $d9, $13, $01, $a9, $54, $94, $00, $40
    db $aa, $d9, $ca, $d9, $21, $79, $54, $c3, $37, $28, $21, $5f, $79, $e0, $c1, $3e
    db $6d, $e0, $bd, $3e, $7c, $e0, $be, $cd, $0c, $34, $3e, $3f, $e0, $c1, $3e, $c0
    db $e0, $bd, $3e, $70, $e0, $be, $cd, $1a, $34, $21, $99, $54, $cd, $1f, $30, $3e
    db $78, $ea, $eb, $c1, $3e, $02, $ea, $34, $c2, $21, $4a, $20, $e0, $c1, $3e, $1a

    ldh [$bd], a                                  ; $54e9: $e0 $bd
    ld a, $6e                                     ; $54eb: $3e $6e
    ldh [$be], a                                  ; $54ed: $e0 $be
    call Call_000_341a                            ; $54ef: $cd $1a $34
    ld a, [$ce03]                                 ; $54f2: $fa $03 $ce
    and $03                                       ; $54f5: $e6 $03
    ldh [$d5], a                                  ; $54f7: $e0 $d5
    ld hl, $48c0                                  ; $54f9: $21 $c0 $48
    ldh [$c1], a                                  ; $54fc: $e0 $c1
    ld a, $62                                     ; $54fe: $3e $62
    ldh [$bd], a                                  ; $5500: $e0 $bd
    ld a, $4f                                     ; $5502: $3e $4f
    ldh [$be], a                                  ; $5504: $e0 $be
    call Call_000_33fe                            ; $5506: $cd $fe $33
    jr jr_004_5558                                ; $5509: $18 $4d

    ldh a, [$a5]                                  ; $550b: $f0 $a5
    bit 0, a                                      ; $550d: $cb $47
    jr nz, jr_004_552e                            ; $550f: $20 $1d

    and $30                                       ; $5511: $e6 $30
    ret z                                         ; $5513: $c8

    ld a, $19                                     ; $5514: $3e $19
    call Call_000_393e                            ; $5516: $cd $3e $39
    ldh [$c1], a                                  ; $5519: $e0 $c1
    ld a, $86                                     ; $551b: $3e $86
    ldh [$bd], a                                  ; $551d: $e0 $bd
    ld a, $4f                                     ; $551f: $3e $4f
    ldh [$be], a                                  ; $5521: $e0 $be
    call Call_000_33fe                            ; $5523: $cd $fe $33
    ld hl, $ffd1                                  ; $5526: $21 $d1 $ff
    cp [hl]                                       ; $5529: $be
    ret z                                         ; $552a: $c8

    ld [hl], a                                    ; $552b: $77
    jr jr_004_5558                                ; $552c: $18 $2a

jr_004_552e:
    ld a, $17                                     ; $552e: $3e $17
    call Call_000_393e                            ; $5530: $cd $3e $39
    ldh a, [$d5]                                  ; $5533: $f0 $d5
    ld hl, $5485                                  ; $5535: $21 $85 $54
    rst $08                                       ; $5538: $cf
    ld [$ce03], a                                 ; $5539: $ea $03 $ce
    ldh [$bc], a                                  ; $553c: $e0 $bc
    ldh a, [rSVBK]                                ; $553e: $f0 $70
    push af                                       ; $5540: $f5
    ld a, $06                                     ; $5541: $3e $06
    ldh [rSVBK], a                                ; $5543: $e0 $70
    ldh a, [$bc]                                  ; $5545: $f0 $bc
    ld [$d6c8], a                                 ; $5547: $ea $c8 $d6
    pop af                                        ; $554a: $f1
    ldh [rSVBK], a                                ; $554b: $e0 $70
    ld a, $0b                                     ; $554d: $3e $0b
    call Call_000_2448                            ; $554f: $cd $48 $24
    ld a, $02                                     ; $5552: $3e $02
    ld [$c0bb], a                                 ; $5554: $ea $bb $c0
    ret                                           ; $5557: $c9


jr_004_5558:
    rst $18                                       ; $5558: $df
    ld c, $04                                     ; $5559: $0e $04
    ld e, $10                                     ; $555b: $1e $10
    ld d, $02                                     ; $555d: $16 $02
    ld hl, $01a2                                  ; $555f: $21 $a2 $01
    call Call_000_13c2                            ; $5562: $cd $c2 $13
    ld hl, $54a2                                  ; $5565: $21 $a2 $54
    call Call_000_301f                            ; $5568: $cd $1f $30
    ld a, $78                                     ; $556b: $3e $78
    ld [$c1eb], a                                 ; $556d: $ea $eb $c1
    ld a, $02                                     ; $5570: $3e $02
    ld [$c234], a                                 ; $5572: $ea $34 $c2
    ld hl, $204d                                  ; $5575: $21 $4d $20
    ldh a, [$d5]                                  ; $5578: $f0 $d5
    call Call_000_3185                            ; $557a: $cd $85 $31
    ldh [$c1], a                                  ; $557d: $e0 $c1
    ld a, $1a                                     ; $557f: $3e $1a
    ldh [$bd], a                                  ; $5581: $e0 $bd
    ld a, $6e                                     ; $5583: $3e $6e
    ldh [$be], a                                  ; $5585: $e0 $be
    call Call_000_341a                            ; $5587: $cd $1a $34
    call Call_000_3674                            ; $558a: $cd $74 $36

    db $00, $12, $12, $09

    ld bc, $0000                                  ; $5591: $01 $00 $00
    ld de, $d821                                  ; $5594: $11 $21 $d8
    ld hl, $d800                                  ; $5597: $21 $00 $d8
    call Call_000_12d8                            ; $559a: $cd $d8 $12
    call Call_000_3674                            ; $559d: $cd $74 $36

    db $00, $02, $01, $08

    ld bc, $0000                                  ; $55a4: $01 $00 $00
    ld de, $d853                                  ; $55a7: $11 $53 $d8
    ld hl, $d800                                  ; $55aa: $21 $00 $d8
    call Call_000_12d8                            ; $55ad: $cd $d8 $12
    ld hl, $5489                                  ; $55b0: $21 $89 $54
    ldh a, [$d5]                                  ; $55b3: $f0 $d5
    call Call_000_318c                            ; $55b5: $cd $8c $31
    ld a, [hl+]                                   ; $55b8: $2a
    ldh [$f0], a                                  ; $55b9: $e0 $f0
    ld a, [hl]                                    ; $55bb: $7e
    ldh [$f1], a                                  ; $55bc: $e0 $f1
    ld a, $07                                     ; $55be: $3e $07
    ldh [$f2], a                                  ; $55c0: $e0 $f2
    ld a, $09                                     ; $55c2: $3e $09
    ldh [$f3], a                                  ; $55c4: $e0 $f3
    ld bc, $0000                                  ; $55c6: $01 $00 $00
    ld hl, $5491                                  ; $55c9: $21 $91 $54
    ldh a, [$d5]                                  ; $55cc: $f0 $d5
    call Call_000_318c                            ; $55ce: $cd $8c $31
    ld a, [hl+]                                   ; $55d1: $2a
    ld d, [hl]                                    ; $55d2: $56
    ld e, a                                       ; $55d3: $5f
    ld hl, $d800                                  ; $55d4: $21 $00 $d8
    call Call_000_12d8                            ; $55d7: $cd $d8 $12
    jp RST_20                                     ; $55da: $c3 $20 $00


    db $aa, $55, $a5, $12, $10, $a0, $28, $a5, $40, $aa

Call_004_55e7:
    ld a, $ff                                     ; $55e7: $3e $ff
    ld [$cdd9], a                                 ; $55e9: $ea $d9 $cd
    call Call_004_5613                            ; $55ec: $cd $13 $56
    call nz, Call_004_562f                        ; $55ef: $c4 $2f $56
    jp Jump_004_5664                              ; $55f2: $c3 $64 $56


Call_004_55f5:
Jump_004_55f5:
    call Call_004_5688                            ; $55f5: $cd $88 $56
    ld hl, $cdda                                  ; $55f8: $21 $da $cd
    ld de, $a004                                  ; $55fb: $11 $04 $a0
    ld c, $06                                     ; $55fe: $0e $06
    call Call_000_114a                            ; $5600: $cd $4a $11
    call Call_004_5680                            ; $5603: $cd $80 $56
    ldh [$c1], a                                  ; $5606: $e0 $c1
    ld a, $f5                                     ; $5608: $3e $f5
    ldh [$bd], a                                  ; $560a: $e0 $bd
    ld a, $67                                     ; $560c: $3e $67
    ldh [$be], a                                  ; $560e: $e0 $be
    jp Jump_000_341a                              ; $5610: $c3 $1a $34


Call_004_5613:
    call Call_004_5688                            ; $5613: $cd $88 $56
    ld hl, $a000                                  ; $5616: $21 $00 $a0
    ld a, [hl+]                                   ; $5619: $2a
    cp $aa                                        ; $561a: $fe $aa
    jr nz, jr_004_562d                            ; $561c: $20 $0f

    ld a, [hl+]                                   ; $561e: $2a
    cp $55                                        ; $561f: $fe $55
    jr nz, jr_004_562d                            ; $5621: $20 $0a

    ld a, [hl+]                                   ; $5623: $2a
    cp $a5                                        ; $5624: $fe $a5
    jr nz, jr_004_562d                            ; $5626: $20 $05

    ld a, [hl+]                                   ; $5628: $2a
    cp $12                                        ; $5629: $fe $12
    jr nz, jr_004_562d                            ; $562b: $20 $00

jr_004_562d:
    jr jr_004_5680                                ; $562d: $18 $51

Call_004_562f:
    call Call_004_5688                            ; $562f: $cd $88 $56
    ld hl, $a000                                  ; $5632: $21 $00 $a0
    ld bc, $0f58                                  ; $5635: $01 $58 $0f
    call Call_000_112e                            ; $5638: $cd $2e $11
    ld hl, $55dd                                  ; $563b: $21 $dd $55
    ld de, $a000                                  ; $563e: $11 $00 $a0
    call CopyHL2DE_4                            ; $5641: $cd $4b $12
    call Call_004_5680                            ; $5644: $cd $80 $56
    call Call_004_564d                            ; $5647: $cd $4d $56
    jp Jump_004_55f5                              ; $564a: $c3 $f5 $55


Call_004_564d:
    ld a, $01                                     ; $564d: $3e $01
    ld [$cdda], a                                 ; $564f: $ea $da $cd
    ld [$cddb], a                                 ; $5652: $ea $db $cd
    ld a, $ff                                     ; $5655: $3e $ff
    ld [$cddd], a                                 ; $5657: $ea $dd $cd
    ld a, $20                                     ; $565a: $3e $20
    ld [$cddc], a                                 ; $565c: $ea $dc $cd
    xor a                                         ; $565f: $af
    ld [$cddf], a                                 ; $5660: $ea $df $cd
    ret                                           ; $5663: $c9


Jump_004_5664:
    call Call_004_5688                            ; $5664: $cd $88 $56
    ld hl, $a004                                  ; $5667: $21 $04 $a0
    ld de, $cdda                                  ; $566a: $11 $da $cd
    ld bc, $0006                                  ; $566d: $01 $06 $00
    call Call_000_1140                            ; $5670: $cd $40 $11
    ldh [$c1], a                                  ; $5673: $e0 $c1
    ld a, $f5                                     ; $5675: $3e $f5
    ldh [$bd], a                                  ; $5677: $e0 $bd
    ld a, $67                                     ; $5679: $3e $67
    ldh [$be], a                                  ; $567b: $e0 $be
    call Call_000_341a                            ; $567d: $cd $1a $34

Call_004_5680:
Jump_004_5680:
jr_004_5680:
    push af                                       ; $5680: $f5
    ld a, $00                                     ; $5681: $3e $00
    ld [$0000], a                                 ; $5683: $ea $00 $00
    pop af                                        ; $5686: $f1
    ret                                           ; $5687: $c9


Call_004_5688:
    push af                                       ; $5688: $f5
    xor a                                         ; $5689: $af
    ld [$4000], a                                 ; $568a: $ea $00 $40
    ld a, $0a                                     ; $568d: $3e $0a
    ld [$0000], a                                 ; $568f: $ea $00 $00
    pop af                                        ; $5692: $f1
    ret                                           ; $5693: $c9


Call_004_5694:
    push af                                       ; $5694: $f5
    push hl                                       ; $5695: $e5
    ld hl, $55e1                                  ; $5696: $21 $e1 $55
    call Call_000_3194                            ; $5699: $cd $94 $31
    pop hl                                        ; $569c: $e1
    pop af                                        ; $569d: $f1
    ret                                           ; $569e: $c9


    ld [$cdd5], a                                 ; $569f: $ea $d5 $cd
    call Call_004_5694                            ; $56a2: $cd $94 $56
    ld hl, $cdd6                                  ; $56a5: $21 $d6 $cd
    ld [hl], e                                    ; $56a8: $73
    inc hl                                        ; $56a9: $23
    ld [hl], d                                    ; $56aa: $72
    xor a                                         ; $56ab: $af
    ld [$cdd8], a                                 ; $56ac: $ea $d8 $cd
    ret                                           ; $56af: $c9


    ld hl, $cdd6                                  ; $56b0: $21 $d6 $cd
    ld a, [hl+]                                   ; $56b3: $2a
    ld h, [hl]                                    ; $56b4: $66
    ld l, a                                       ; $56b5: $6f
    ld bc, $0518                                  ; $56b6: $01 $18 $05
    jp Jump_000_112e                              ; $56b9: $c3 $2e $11


Call_004_56bc:
    push bc                                       ; $56bc: $c5
    push de                                       ; $56bd: $d5
    push hl                                       ; $56be: $e5
    ld h, d                                       ; $56bf: $62
    ld l, e                                       ; $56c0: $6b
    ld e, $00                                     ; $56c1: $1e $00

jr_004_56c3:
    ld a, b                                       ; $56c3: $78
    or c                                          ; $56c4: $b1
    jr z, jr_004_56ce                             ; $56c5: $28 $07

    ld a, e                                       ; $56c7: $7b
    sub [hl]                                      ; $56c8: $96
    ld e, a                                       ; $56c9: $5f
    inc hl                                        ; $56ca: $23
    dec bc                                        ; $56cb: $0b
    jr jr_004_56c3                                ; $56cc: $18 $f5

jr_004_56ce:
    ld a, e                                       ; $56ce: $7b
    pop hl                                        ; $56cf: $e1
    pop de                                        ; $56d0: $d1
    pop bc                                        ; $56d1: $c1
    ret                                           ; $56d2: $c9


    push hl                                       ; $56d3: $e5
    ld h, d                                       ; $56d4: $62
    ld l, e                                       ; $56d5: $6b
    add hl, bc                                    ; $56d6: $09
    ld a, [hl]                                    ; $56d7: $7e
    pop hl                                        ; $56d8: $e1
    ret                                           ; $56d9: $c9


    push hl                                       ; $56da: $e5
    ld h, d                                       ; $56db: $62
    ld l, e                                       ; $56dc: $6b
    add hl, bc                                    ; $56dd: $09
    ld [hl], a                                    ; $56de: $77
    pop hl                                        ; $56df: $e1
    ret                                           ; $56e0: $c9


    push de                                       ; $56e1: $d5
    push hl                                       ; $56e2: $e5
    call Call_004_5688                            ; $56e3: $cd $88 $56
    call Call_004_5694                            ; $56e6: $cd $94 $56
    ld hl, $0000                                  ; $56e9: $21 $00 $00
    add hl, de                                    ; $56ec: $19
    ld a, [hl+]                                   ; $56ed: $2a
    ld h, [hl]                                    ; $56ee: $66
    ld l, a                                       ; $56ef: $6f
    ld de, $2a2a                                  ; $56f0: $11 $2a $2a
    rst $10                                       ; $56f3: $d7
    ld a, $00                                     ; $56f4: $3e $00
    jr nz, jr_004_56f9                            ; $56f6: $20 $01

    inc a                                         ; $56f8: $3c

jr_004_56f9:
    call Call_004_5680                            ; $56f9: $cd $80 $56
    or a                                          ; $56fc: $b7
    pop hl                                        ; $56fd: $e1
    pop de                                        ; $56fe: $d1
    ret                                           ; $56ff: $c9


Call_004_5700:
    ld hl, $55e1                                  ; $5700: $21 $e1 $55
    ld a, d                                       ; $5703: $7a
    call Call_000_3194                            ; $5704: $cd $94 $31
    call Call_004_5688                            ; $5707: $cd $88 $56
    push de                                       ; $570a: $d5
    ld a, $2a                                     ; $570b: $3e $2a
    ld [de], a                                    ; $570d: $12
    inc de                                        ; $570e: $13
    ld [de], a                                    ; $570f: $12
    inc de                                        ; $5710: $13
    ldh a, [rSVBK]                                ; $5711: $f0 $70
    push af                                       ; $5713: $f5
    ld a, $06                                     ; $5714: $3e $06
    ldh [rSVBK], a                                ; $5716: $e0 $70
    ld hl, $d000                                  ; $5718: $21 $00 $d0
    call CopyHL2DE_256                            ; $571b: $cd $e2 $11
    ld hl, $d100                                  ; $571e: $21 $00 $d1
    call CopyHL2DE_5                            ; $5721: $cd $48 $12
    ld hl, $d6d5                                  ; $5724: $21 $d5 $d6
    ld bc, $0180                                  ; $5727: $01 $80 $01
    call Call_000_1140                            ; $572a: $cd $40 $11
    ld hl, $d855                                  ; $572d: $21 $55 $d8
    ld bc, $0078                                  ; $5730: $01 $78 $00
    call Call_000_1140                            ; $5733: $cd $40 $11
    ld hl, $d50a                                  ; $5736: $21 $0a $d5
    ld bc, $0066                                  ; $5739: $01 $66 $00
    call Call_000_1140                            ; $573c: $cd $40 $11
    ld hl, $d570                                  ; $573f: $21 $70 $d5
    call CopyHL2DE_8                            ; $5742: $cd $3f $12
    ld hl, $d5c8                                  ; $5745: $21 $c8 $d5
    call CopyHL2DE_10                            ; $5748: $cd $39 $12
    ld hl, $d578                                  ; $574b: $21 $78 $d5
    call CopyHL2DE_64                            ; $574e: $cd $f4 $11
    call CopyHL2DE_16                            ; $5751: $cd $27 $12
    ld hl, $d5d5                                  ; $5754: $21 $d5 $d5
    call CopyHL2DE_256                            ; $5757: $cd $e2 $11
    pop af                                        ; $575a: $f1
    ldh [rSVBK], a                                ; $575b: $e0 $70
    ld hl, $cde0                                  ; $575d: $21 $e0 $cd
    ld bc, $0019                                  ; $5760: $01 $19 $00
    call Call_000_1140                            ; $5763: $cd $40 $11
    ld hl, $cdf9                                  ; $5766: $21 $f9 $cd
    ld bc, $001d                                  ; $5769: $01 $1d $00
    call Call_000_1140                            ; $576c: $cd $40 $11
    ld hl, $cbee                                  ; $576f: $21 $ee $cb
    call CopyHL2DE_6                            ; $5772: $cd $45 $12
    ld hl, $ffd8                                  ; $5775: $21 $d8 $ff
    call CopyHL2DE_5                            ; $5778: $cd $48 $12
    ld hl, $ffc3                                  ; $577b: $21 $c3 $ff
    call CopyHL2DE_5                            ; $577e: $cd $48 $12
    ld hl, $caf8                                  ; $5781: $21 $f8 $ca
    call CopyHL2DE_6                            ; $5784: $cd $45 $12
    ld h, d                                       ; $5787: $62
    ld l, e                                       ; $5788: $6b
    pop de                                        ; $5789: $d1
    ld bc, $02ff                                  ; $578a: $01 $ff $02
    call Call_004_56bc                            ; $578d: $cd $bc $56
    ld [hl+], a                                   ; $5790: $22
    push hl                                       ; $5791: $e5
    ld hl, $02ff                                  ; $5792: $21 $ff $02
    add hl, de                                    ; $5795: $19
    ld d, h                                       ; $5796: $54
    ld e, l                                       ; $5797: $5d
    ld bc, $00c8                                  ; $5798: $01 $c8 $00
    call Call_004_56bc                            ; $579b: $cd $bc $56
    pop hl                                        ; $579e: $e1
    ld [hl+], a                                   ; $579f: $22
    push hl                                       ; $57a0: $e5
    ld hl, $00c8                                  ; $57a1: $21 $c8 $00
    add hl, de                                    ; $57a4: $19
    ld d, h                                       ; $57a5: $54
    ld e, l                                       ; $57a6: $5d
    ld bc, $014c                   ; $57a7: $01 $4c $01
    call Call_004_56bc                            ; $57aa: $cd $bc $56
    pop hl                                        ; $57ad: $e1
    ld [hl+], a                                   ; $57ae: $22
    ld a, $18                                     ; $57af: $3e $18
    ld [hl+], a                                   ; $57b1: $22
    ld [hl], a                                    ; $57b2: $77
    call Call_004_55f5                            ; $57b3: $cd $f5 $55
    jp Jump_004_5680                              ; $57b6: $c3 $80 $56


    ld hl, $55e1                                  ; $57b9: $21 $e1 $55
    ld a, d                                       ; $57bc: $7a
    call Call_000_319d                            ; $57bd: $cd $9d $31
    push hl                                       ; $57c0: $e5
    call Call_004_5688                            ; $57c1: $cd $88 $56
    ld a, [hl+]                                   ; $57c4: $2a
    cp $2a                                        ; $57c5: $fe $2a
    jp nz, Jump_004_58b3                          ; $57c7: $c2 $b3 $58

    ld a, [hl+]                                   ; $57ca: $2a
    cp $2a                                        ; $57cb: $fe $2a
    jp nz, Jump_004_58b3                          ; $57cd: $c2 $b3 $58

    ldh a, [rSVBK]                                ; $57d0: $f0 $70
    push af                                       ; $57d2: $f5
    ld a, $06                                     ; $57d3: $3e $06
    ldh [rSVBK], a                                ; $57d5: $e0 $70
    ld de, $d000                                  ; $57d7: $11 $00 $d0
    call CopyHL2DE_256                            ; $57da: $cd $e2 $11
    ld de, $d100                                  ; $57dd: $11 $00 $d1
    call CopyHL2DE_5                            ; $57e0: $cd $48 $12
    ld de, $d6d5                                  ; $57e3: $11 $d5 $d6
    ld bc, $0180                                  ; $57e6: $01 $80 $01
    call Call_000_1140                            ; $57e9: $cd $40 $11
    ld de, $d855                                  ; $57ec: $11 $55 $d8
    ld bc, $0078                                  ; $57ef: $01 $78 $00
    call Call_000_1140                            ; $57f2: $cd $40 $11
    ld de, $d50a                                  ; $57f5: $11 $0a $d5
    ld bc, $0066                                  ; $57f8: $01 $66 $00
    call Call_000_1140                            ; $57fb: $cd $40 $11
    ld de, $d570                                  ; $57fe: $11 $70 $d5
    call CopyHL2DE_8                            ; $5801: $cd $3f $12
    ld de, $d5c8                                  ; $5804: $11 $c8 $d5
    call CopyHL2DE_10                            ; $5807: $cd $39 $12
    ld de, $d578                                  ; $580a: $11 $78 $d5
    call CopyHL2DE_64                            ; $580d: $cd $f4 $11
    call CopyHL2DE_16                            ; $5810: $cd $27 $12
    ld de, $d5d5                                  ; $5813: $11 $d5 $d5
    call CopyHL2DE_256                            ; $5816: $cd $e2 $11
    pop af                                        ; $5819: $f1
    ldh [rSVBK], a                                ; $581a: $e0 $70
    ld de, $cde0                                  ; $581c: $11 $e0 $cd
    ld bc, $0019                                  ; $581f: $01 $19 $00
    call Call_000_1140                            ; $5822: $cd $40 $11
    ld de, $cdf9                                  ; $5825: $11 $f9 $cd
    ld bc, $001d                                  ; $5828: $01 $1d $00
    call Call_000_1140                            ; $582b: $cd $40 $11
    ld de, $cbee                                  ; $582e: $11 $ee $cb
    call CopyHL2DE_6                            ; $5831: $cd $45 $12
    ld de, $ffd8                                  ; $5834: $11 $d8 $ff
    call CopyHL2DE_5                            ; $5837: $cd $48 $12
    ld de, $ffc3                                  ; $583a: $11 $c3 $ff
    call CopyHL2DE_5                            ; $583d: $cd $48 $12
    ld de, $caf8                                  ; $5840: $11 $f8 $ca
    call CopyHL2DE_6                            ; $5843: $cd $45 $12
    inc hl                                        ; $5846: $23
    inc hl                                        ; $5847: $23
    inc hl                                        ; $5848: $23
    ld a, [hl+]                                   ; $5849: $2a
    cp $18                                        ; $584a: $fe $18
    jr nz, jr_004_58b3                            ; $584c: $20 $65

    ld a, [hl+]                                   ; $584e: $2a
    cp $18                                        ; $584f: $fe $18
    jr nz, jr_004_58b3                            ; $5851: $20 $60

    pop de                                        ; $5853: $d1
    push de                                       ; $5854: $d5
    ld hl, $cb29                                  ; $5855: $21 $29 $cb
    ld bc, $02ff                                  ; $5858: $01 $ff $02
    call Call_004_56bc                            ; $585b: $cd $bc $56
    ld [hl+], a                                   ; $585e: $22
    push hl                                       ; $585f: $e5
    ld hl, $02ff                                  ; $5860: $21 $ff $02
    add hl, de                                    ; $5863: $19
    ld d, h                                       ; $5864: $54
    ld e, l                                       ; $5865: $5d
    ld bc, $00c8                                  ; $5866: $01 $c8 $00
    call Call_004_56bc                            ; $5869: $cd $bc $56
    pop hl                                        ; $586c: $e1
    ld [hl+], a                                   ; $586d: $22
    push hl                                       ; $586e: $e5
    ld hl, $00c8                                  ; $586f: $21 $c8 $00
    add hl, de                                    ; $5872: $19
    ld d, h                                       ; $5873: $54
    ld e, l                                       ; $5874: $5d
    ld bc, $014c                   ; $5875: $01 $4c $01
    call Call_004_56bc                            ; $5878: $cd $bc $56
    pop hl                                        ; $587b: $e1
    ld [hl+], a                                   ; $587c: $22
    pop de                                        ; $587d: $d1
    ld hl, $0513                                  ; $587e: $21 $13 $05
    add hl, de                                    ; $5881: $19
    ld de, $cb29                                  ; $5882: $11 $29 $cb
    ld a, [de]                                    ; $5885: $1a
    cp [hl]                                       ; $5886: $be
    jr nz, jr_004_58b3                            ; $5887: $20 $2a

    inc de                                        ; $5889: $13
    inc hl                                        ; $588a: $23
    ld a, [de]                                    ; $588b: $1a
    cp [hl]                                       ; $588c: $be
    jr nz, jr_004_58b3                            ; $588d: $20 $24

    inc de                                        ; $588f: $13
    inc hl                                        ; $5890: $23
    ld a, [de]                                    ; $5891: $1a
    cp [hl]                                       ; $5892: $be
    jr nz, jr_004_58b3                            ; $5893: $20 $1e

    call Call_004_5680                            ; $5895: $cd $80 $56
    ld a, [$ce09]                                 ; $5898: $fa $09 $ce
    bit 0, a                                      ; $589b: $cb $47
    jr z, jr_004_58a9                             ; $589d: $28 $0a

    inc a                                         ; $589f: $3c
    ld [$ce09], a                                 ; $58a0: $ea $09 $ce
    xor a                                         ; $58a3: $af
    ld [$c0bb], a                                 ; $58a4: $ea $bb $c0
    jr jr_004_58ae                                ; $58a7: $18 $05

jr_004_58a9:
    ld a, $02                                     ; $58a9: $3e $02
    ld [$c0bb], a                                 ; $58ab: $ea $bb $c0

jr_004_58ae:
    ld a, $0b                                     ; $58ae: $3e $0b
    jp Jump_000_2448                              ; $58b0: $c3 $48 $24


Jump_004_58b3:
jr_004_58b3:
    call Call_004_5680                            ; $58b3: $cd $80 $56
    jp Jump_000_311e                              ; $58b6: $c3 $1e $31


    db $06, $df, $50, $e5, $50, $c5, $24, $0c, $51, $06, $2c, $50, $3a, $50, $c5, $24
    db $3d, $50

    ld b, $f4                                     ; $58cb: $06 $f4
    ld c, a                                       ; $58cd: $4f
    ld a, [$c54f]                                 ; $58ce: $fa $4f $c5
    inc h                                         ; $58d1: $24
    db $fd                                        ; $58d2: $fd
    ld c, a                                       ; $58d3: $4f

    db $05, $4f, $40, $55, $40, $c5, $24, $33, $41

    ld bc, $504f                                  ; $58dd: $01 $4f $50
    ld a, l                                       ; $58e0: $7d
    ld d, b                                       ; $58e1: $50
    push bc                                       ; $58e2: $c5
    inc h                                         ; $58e3: $24
    sbc a                                         ; $58e4: $9f
    ld d, b                                       ; $58e5: $50
    ld bc, $5055                                  ; $58e6: $01 $55 $50
    sub e                                         ; $58e9: $93
    inc h                                         ; $58ea: $24
    push bc                                       ; $58eb: $c5
    inc h                                         ; $58ec: $24
    sbc a                                         ; $58ed: $9f
    ld d, b                                       ; $58ee: $50

    db $01, $ba, $75, $c0, $75, $c5, $24, $2a, $76

    ld bc, $781c                                  ; $58f8: $01 $1c $78
    sub e                                         ; $58fb: $93
    inc h                                         ; $58fc: $24
    push bc                                       ; $58fd: $c5
    inc h                                         ; $58fe: $24
    ld h, a                                       ; $58ff: $67
    ld a, b                                       ; $5900: $78
    ld bc, $78b3                                  ; $5901: $01 $b3 $78
    sub e                                         ; $5904: $93
    inc h                                         ; $5905: $24
    push bc                                       ; $5906: $c5
    inc h                                         ; $5907: $24
    ld a, [hl+]                                   ; $5908: $2a
    halt                                          ; $5909: $76

    db $06, $26, $47, $2f, $47, $c5, $24, $86, $47, $04, $ad, $54, $b3, $54, $c5, $24
    db $0b, $55, $00, $0c, $14, $93, $24, $7f, $17, $9d, $17, $03, $d5, $43, $93, $24
    db $7f, $17, $9d, $17, $04, $93, $24, $93, $24, $c5, $24, $20, $45

    dec b                                         ; $5937: $05
    ld hl, $2743                                  ; $5938: $21 $43 $27
    ld b, e                                       ; $593b: $43
    push bc                                       ; $593c: $c5
    inc h                                         ; $593d: $24
    or e                                          ; $593e: $b3
    ld b, e                                       ; $593f: $43

    db $04, $cd, $5b, $18, $5c, $c5, $24, $55, $5e, $04, $e5, $5b, $93, $24, $c5, $24
    db $55, $5e, $04, $c6, $5f, $93, $24, $c5, $24, $19, $62, $04, $fe, $5f, $93, $24
    db $c5, $24, $19, $62, $04, $18, $6f, $93, $24, $c5, $24, $d9, $73, $04, $16, $63
    db $93, $24, $c5, $24, $03, $64, $04, $51, $63, $93, $24, $c5, $24, $03, $64, $04
    db $e9, $77, $93, $24, $c5, $24, $4f, $78

    dec b                                         ; $5988: $05
    ld c, b                                       ; $5989: $48
    ld b, l                                       ; $598a: $45
    ld d, e                                       ; $598b: $53
    ld b, l                                       ; $598c: $45
    push bc                                       ; $598d: $c5
    inc h                                         ; $598e: $24
    xor d                                         ; $598f: $aa
    ld b, l                                       ; $5990: $45
    dec b                                         ; $5991: $05
    ld [hl+], a                                   ; $5992: $22
    ld c, b                                       ; $5993: $48
    dec l                                         ; $5994: $2d
    ld c, b                                       ; $5995: $48
    push bc                                       ; $5996: $c5
    inc h                                         ; $5997: $24
    and b                                         ; $5998: $a0
    ld c, b                                       ; $5999: $48

    db $03, $2b, $53, $4f, $53, $cb, $24, $a6, $54, $03, $02, $55, $93, $24, $cb, $24
    db $a6, $54

    inc bc                                        ; $59ac: $03
    ld l, $55                                     ; $59ad: $2e $55
    sub e                                         ; $59af: $93
    inc h                                         ; $59b0: $24
    sla h                                         ; $59b1: $cb $24
    or l                                          ; $59b3: $b5
    ld d, l                                       ; $59b4: $55

    db $03, $3b, $55, $93, $24, $cb, $24, $fe, $55

    inc bc                                        ; $59be: $03
    ld d, a                                       ; $59bf: $57
    ld d, b                                       ; $59c0: $50
    sub e                                         ; $59c1: $93
    inc h                                         ; $59c2: $24
    sla h                                         ; $59c3: $cb $24
    ld hl, sp+$50                                 ; $59c5: $f8 $50
    inc bc                                        ; $59c7: $03
    or c                                          ; $59c8: $b1
    ld d, b                                       ; $59c9: $50
    sub e                                         ; $59ca: $93
    inc h                                         ; $59cb: $24
    sla h                                         ; $59cc: $cb $24
    ld [hl], $52                                  ; $59ce: $36 $52
    inc bc                                        ; $59d0: $03
    ld l, d                                       ; $59d1: $6a
    ld d, l                                       ; $59d2: $55
    sub e                                         ; $59d3: $93
    inc h                                         ; $59d4: $24
    sla h                                         ; $59d5: $cb $24
    or h                                          ; $59d7: $b4
    ld d, [hl]                                    ; $59d8: $56

    db $03, $cc, $56, $93, $24, $cb, $24, $d6, $56, $03, $9f, $59, $93, $24, $cb, $24
    db $b4, $59, $06, $2c, $43, $32, $43, $c5, $24, $9d, $45

    ld bc, $7904                                  ; $59f4: $01 $04 $79
    ld a, [bc]                                    ; $59f7: $0a
    ld a, c                                       ; $59f8: $79
    push bc                                       ; $59f9: $c5
    inc h                                         ; $59fa: $24
    inc h                                         ; $59fb: $24
    ld a, c                                       ; $59fc: $79
    inc b                                         ; $59fd: $04
    and h                                         ; $59fe: $a4
    ld a, b                                       ; $59ff: $78
    xor d                                         ; $5a00: $aa
    ld a, b                                       ; $5a01: $78
    push bc                                       ; $5a02: $c5
    inc h                                         ; $5a03: $24
    sbc l                                         ; $5a04: $9d
    ld a, h                                       ; $5a05: $7c
    inc b                                         ; $5a06: $04
    ld c, $7a                                     ; $5a07: $0e $7a
    sub e                                         ; $5a09: $93
    inc h                                         ; $5a0a: $24
    push bc                                       ; $5a0b: $c5
    inc h                                         ; $5a0c: $24
    sbc l                                         ; $5a0d: $9d
    ld a, h                                       ; $5a0e: $7c
    inc b                                         ; $5a0f: $04
    dec l                                         ; $5a10: $2d
    ld a, d                                       ; $5a11: $7a
    sub e                                         ; $5a12: $93
    inc h                                         ; $5a13: $24
    push bc                                       ; $5a14: $c5
    inc h                                         ; $5a15: $24
    rst $20                                       ; $5a16: $e7
    ld a, h                                       ; $5a17: $7c

    db $04, $36, $4d, $47, $4d, $c5, $24, $b4, $4d, $04, $ac, $49, $c4, $49, $c5, $24
    db $6d, $4b

    inc b                                         ; $5a2a: $04
    and [hl]                                      ; $5a2b: $a6
    ld c, c                                       ; $5a2c: $49
    or d                                          ; $5a2d: $b2
    ld c, c                                       ; $5a2e: $49
    push bc                                       ; $5a2f: $c5
    inc h                                         ; $5a30: $24
    ld l, l                                       ; $5a31: $6d
    ld c, e                                       ; $5a32: $4b

    db $04, $dd, $50, $11, $51, $c5, $24, $9d, $51

    ld b, $37                                     ; $5a3c: $06 $37
    ld l, l                                       ; $5a3e: $6d
    ld c, a                                       ; $5a3f: $4f
    ld l, l                                       ; $5a40: $6d
    push bc                                       ; $5a41: $c5
    inc h                                         ; $5a42: $24
    jp Jump_000_056d                              ; $5a43: $c3 $6d $05


    cp b                                          ; $5a46: $b8
    ld [hl], h                                    ; $5a47: $74
    cp [hl]                                       ; $5a48: $be
    ld [hl], h                                    ; $5a49: $74
    push bc                                       ; $5a4a: $c5
    inc h                                         ; $5a4b: $24
    ret nc                                        ; $5a4c: $d0

    ld [hl], l                                    ; $5a4d: $75
    dec b                                         ; $5a4e: $05
    sbc [hl]                                      ; $5a4f: $9e
    halt                                          ; $5a50: $76
    and h                                         ; $5a51: $a4
    halt                                          ; $5a52: $76
    push bc                                       ; $5a53: $c5
    inc h                                         ; $5a54: $24
    cp d                                          ; $5a55: $ba
    ld [hl], a                                    ; $5a56: $77
    dec b                                         ; $5a57: $05
    or d                                          ; $5a58: $b2
    ld a, b                                       ; $5a59: $78
    cp b                                          ; $5a5a: $b8
    ld a, b                                       ; $5a5b: $78
    push bc                                       ; $5a5c: $c5
    inc h                                         ; $5a5d: $24
    adc [hl]                                      ; $5a5e: $8e
    ld a, c                                       ; $5a5f: $79
    nop                                           ; $5a60: $00
    inc c                                         ; $5a61: $0c
    inc d                                         ; $5a62: $14
    sub e                                         ; $5a63: $93
    inc h                                         ; $5a64: $24
    ld a, a                                       ; $5a65: $7f
    rla                                           ; $5a66: $17
    sbc l                                         ; $5a67: $9d
    rla                                           ; $5a68: $17
    ld bc, $7471                                  ; $5a69: $01 $71 $74
    ld [hl], a                                    ; $5a6c: $77
    ld [hl], h                                    ; $5a6d: $74
    push bc                                       ; $5a6e: $c5
    inc h                                         ; $5a6f: $24
    or c                                          ; $5a70: $b1
    ld [hl], h                                    ; $5a71: $74
    ld bc, $74f9                                  ; $5a72: $01 $f9 $74
    rst $38                                       ; $5a75: $ff
    ld [hl], h                                    ; $5a76: $74
    push bc                                       ; $5a77: $c5
    inc h                                         ; $5a78: $24
    ld d, c                                       ; $5a79: $51
    ld [hl], l                                    ; $5a7a: $75
    ld bc, $7c53                                  ; $5a7b: $01 $53 $7c
    ld e, l                                       ; $5a7e: $5d
    ld a, h                                       ; $5a7f: $7c
    push bc                                       ; $5a80: $c5
    inc h                                         ; $5a81: $24
    ld a, d                                       ; $5a82: $7a
    ld a, h                                       ; $5a83: $7c
    ld bc, $7e3a                                  ; $5a84: $01 $3a $7e
    ld b, b                                       ; $5a87: $40
    ld a, [hl]                                    ; $5a88: $7e
    push bc                                       ; $5a89: $c5
    inc h                                         ; $5a8a: $24
    ld d, l                                       ; $5a8b: $55
    ld a, [hl]                                    ; $5a8c: $7e
    ld b, $a5                                     ; $5a8d: $06 $a5
    ld d, l                                       ; $5a8f: $55
    or c                                          ; $5a90: $b1
    ld d, l                                       ; $5a91: $55
    push bc                                       ; $5a92: $c5
    inc h                                         ; $5a93: $24
    ld d, e                                       ; $5a94: $53
    ld d, [hl]                                    ; $5a95: $56
    ld b, $ab                                     ; $5a96: $06 $ab
    ld d, l                                       ; $5a98: $55
    xor $55                                       ; $5a99: $ee $55
    push bc                                       ; $5a9b: $c5
    inc h                                         ; $5a9c: $24
    ld d, e                                       ; $5a9d: $53
    ld d, [hl]                                    ; $5a9e: $56
    ld b, $fd                                     ; $5a9f: $06 $fd
    ld d, e                                       ; $5aa1: $53
    inc bc                                        ; $5aa2: $03
    ld d, h                                       ; $5aa3: $54
    push bc                                       ; $5aa4: $c5
    inc h                                         ; $5aa5: $24
    ld c, [hl]                                    ; $5aa6: $4e
    ld d, l                                       ; $5aa7: $55
    ld b, $27                                     ; $5aa8: $06 $27
    ld b, b                                       ; $5aaa: $40
    dec l                                         ; $5aab: $2d
    ld b, b                                       ; $5aac: $40
    push bc                                       ; $5aad: $c5
    inc h                                         ; $5aae: $24
    xor a                                         ; $5aaf: $af
    ld b, b                                       ; $5ab0: $40
    rlca                                          ; $5ab1: $07
    add hl, de                                    ; $5ab2: $19
    ld b, b                                       ; $5ab3: $40
    rra                                           ; $5ab4: $1f
    ld b, b                                       ; $5ab5: $40
    push bc                                       ; $5ab6: $c5
    inc h                                         ; $5ab7: $24
    call nc, $0140                                ; $5ab8: $d4 $40 $01
    cp b                                          ; $5abb: $b8
    ld b, [hl]                                    ; $5abc: $46
    cp [hl]                                       ; $5abd: $be
    ld b, [hl]                                    ; $5abe: $46
    push bc                                       ; $5abf: $c5
    inc h                                         ; $5ac0: $24
    or c                                          ; $5ac1: $b1
    ld b, a                                       ; $5ac2: $47
    ld b, $9d                                     ; $5ac3: $06 $9d
    ld [hl], a                                    ; $5ac5: $77
    and e                                         ; $5ac6: $a3
    ld [hl], a                                    ; $5ac7: $77
    push bc                                       ; $5ac8: $c5
    inc h                                         ; $5ac9: $24
    ld h, $78                                     ; $5aca: $26 $78
    ld b, $9d                                     ; $5acc: $06 $9d
    ld [hl], h                                    ; $5ace: $74
    ret z                                         ; $5acf: $c8

    ld [hl], h                                    ; $5ad0: $74
    push bc                                       ; $5ad1: $c5
    inc h                                         ; $5ad2: $24
    ld e, c                                       ; $5ad3: $59
    ld [hl], l                                    ; $5ad4: $75
    ld b, $a8                                     ; $5ad5: $06 $a8
    ld [hl], h                                    ; $5ad7: $74
    call $c574                                    ; $5ad8: $cd $74 $c5
    inc h                                         ; $5adb: $24
    ld e, c                                       ; $5adc: $59
    ld [hl], l                                    ; $5add: $75
    ld b, $92                                     ; $5ade: $06 $92
    ld [hl], h                                    ; $5ae0: $74
    call nz, $c574                                ; $5ae1: $c4 $74 $c5
    inc h                                         ; $5ae4: $24
    ld e, c                                       ; $5ae5: $59
    ld [hl], l                                    ; $5ae6: $75
    ld b, $3b                                     ; $5ae7: $06 $3b
    ld d, d                                       ; $5ae9: $52
    ld b, c                                       ; $5aea: $41
    ld d, d                                       ; $5aeb: $52
    push bc                                       ; $5aec: $c5
    inc h                                         ; $5aed: $24
    sub l                                         ; $5aee: $95
    ld d, d                                       ; $5aef: $52

    db $06, $63, $50, $71, $50, $c5, $24, $94, $50, $06, $31, $72, $37, $72, $c5, $24
    db $c0, $72

    ld b, $b3                                     ; $5b02: $06 $b3
    ld [hl], h                                    ; $5b04: $74
    ld bc, $c575                                  ; $5b05: $01 $75 $c5
    inc h                                         ; $5b08: $24
    ld [hl], b                                    ; $5b09: $70
    ld [hl], l                                    ; $5b0a: $75
    ld b, $be                                     ; $5b0b: $06 $be
    ld [hl], h                                    ; $5b0d: $74
    scf                                           ; $5b0e: $37
    ld [hl], l                                    ; $5b0f: $75
    push bc                                       ; $5b10: $c5
    inc h                                         ; $5b11: $24
    add l                                         ; $5b12: $85
    ld [hl], l                                    ; $5b13: $75

    db $06, $2a, $7c, $30, $7c, $c5, $24, $b1, $7c

    ld bc, $4bca                                  ; $5b1d: $01 $ca $4b
    ret nc                                        ; $5b20: $d0

    ld c, e                                       ; $5b21: $4b
    push bc                                       ; $5b22: $c5
    inc h                                         ; $5b23: $24
    db $31                                        ; $5b24: $31
    ld c, h                                       ; $5b25: $4c

    db $01, $0b, $70, $01, $00, $00, $aa, $24, $00, $02, $00, $02, $01, $01, $5b, $5b
    db $b8, $00, $41, $01, $01, $6f, $5b, $b8, $00, $44, $01, $01, $85, $5b, $90, $00
    db $c0, $01, $01, $9b, $5b, $a8, $00, $41

    ld bc, $5501                                  ; $5b4e: $01 $01 $55
    ld e, e                                       ; $5b51: $5b
    ld b, l                                       ; $5b52: $45
    ld bc, $aa40                                  ; $5b53: $01 $40 $aa
    reti                                          ; $5b56: $d9


    ld [$0ad9], a                                 ; $5b57: $ea $d9 $0a
    db $da                                        ; $5b5a: $da

    db $81, $d8, $a1, $d8, $c1, $d8, $e1, $d8, $01, $d9, $21, $d9, $aa, $d9, $c1, $d9
    db $e1, $d9, $01, $da, $80, $d8, $a0, $d8, $c0, $d8, $e0, $d8, $20, $d9, $40, $d9
    db $80, $d9, $a0, $d9, $c0, $d9, $e0, $d9, $00, $da, $88, $d8, $a8, $d8, $c8, $d8
    db $e8, $d8, $28, $d9, $48, $d9, $88, $d9, $a8, $d9, $c8, $d9, $e8, $d9, $08, $da
    db $01, $d9, $22, $d9, $42, $d9, $02, $01, $a8, $5b, $90, $02, $40, $b0, $d8, $f0
    db $d8, $30, $d9, $70, $d9, $b0, $d9, $f0, $d9, $01, $01, $bb, $5b, $a8, $00, $40
    db $ea, $d8, $0a, $d9, $11, $14, $17, $28, $2a, $ff, $45, $ff, $ff, $69, $3a, $39
    db $ff, $ff

    ld a, $2d                                     ; $5bcd: $3e $2d
    call Call_000_395e                            ; $5bcf: $cd $5e $39
    ldh [$c1], a                                  ; $5bd2: $e0 $c1
    ld a, $8f                                     ; $5bd4: $3e $8f
    ldh [$bd], a                                  ; $5bd6: $e0 $bd
    ld a, $5f                                     ; $5bd8: $3e $5f
    ldh [$be], a                                  ; $5bda: $e0 $be
    call Call_000_33fe                            ; $5bdc: $cd $fe $33
    ld hl, $5b26                                  ; $5bdf: $21 $26 $5b
    jp Jump_000_2837                              ; $5be2: $c3 $37 $28


    xor a                                         ; $5be5: $af
    ld hl, $490a                                  ; $5be6: $21 $0a $49
    ldh [$c1], a                                  ; $5be9: $e0 $c1
    ld a, $6f                                     ; $5beb: $3e $6f
    ldh [$bd], a                                  ; $5bed: $e0 $bd
    ld a, $4f                                     ; $5bef: $3e $4f
    ldh [$be], a                                  ; $5bf1: $e0 $be
    call Call_000_33fe                            ; $5bf3: $cd $fe $33
    rst $18                                       ; $5bf6: $df
    ld c, $70                                     ; $5bf7: $0e $70
    ld e, $13                                     ; $5bf9: $1e $13
    ld d, $0e                                     ; $5bfb: $16 $0e
    ld b, $03                                     ; $5bfd: $06 $03
    ld hl, $0080                                  ; $5bff: $21 $80 $00
    call Call_000_13c4                            ; $5c02: $cd $c4 $13
    rst $20                                       ; $5c05: $e7
    call Call_000_3308                            ; $5c06: $cd $08 $33
    rst $18                                       ; $5c09: $df
    call Call_004_5d74                            ; $5c0a: $cd $74 $5d
    rst $20                                       ; $5c0d: $e7
    xor a                                         ; $5c0e: $af
    ld [$cbe7], a                                 ; $5c0f: $ea $e7 $cb
    ld a, $04                                     ; $5c12: $3e $04
    ld [$cbe9], a                                 ; $5c14: $ea $e9 $cb
    ret                                           ; $5c17: $c9


    call Call_000_38fb                            ; $5c18: $cd $fb $38
    ld a, l                                       ; $5c1b: $7d
    ld [$cc12], a                                 ; $5c1c: $ea $12 $cc
    ld a, h                                       ; $5c1f: $7c
    ld [$cc13], a                                 ; $5c20: $ea $13 $cc
    call Call_004_5d41                            ; $5c23: $cd $41 $5d
    ldh [$c1], a                                  ; $5c26: $e0 $c1
    ld a, $de                                     ; $5c28: $3e $de
    ldh [$bd], a                                  ; $5c2a: $e0 $bd
    ld a, $62                                     ; $5c2c: $3e $62
    ldh [$be], a                                  ; $5c2e: $e0 $be
    call Call_000_33fe                            ; $5c30: $cd $fe $33
    ld hl, $5ced                                  ; $5c33: $21 $ed $5c
    call Call_000_0fad                            ; $5c36: $cd $ad $0f
    ld a, $1e                                     ; $5c39: $3e $1e
    ld [$c141], a                                 ; $5c3b: $ea $41 $c1
    ld hl, $c143                                  ; $5c3e: $21 $43 $c1
    ld a, [hl+]                                   ; $5c41: $2a
    ld h, [hl]                                    ; $5c42: $66
    ld l, a                                       ; $5c43: $6f
    ld de, $0020                                  ; $5c44: $11 $20 $00
    add hl, de                                    ; $5c47: $19
    ld a, l                                       ; $5c48: $7d
    ld [$c143], a                                 ; $5c49: $ea $43 $c1
    ld a, h                                       ; $5c4c: $7c
    ld [$c144], a                                 ; $5c4d: $ea $44 $c1
    call Call_000_19b7                            ; $5c50: $cd $b7 $19
    ld hl, $c124                                  ; $5c53: $21 $24 $c1
    ld a, $04                                     ; $5c56: $3e $04
    ld [hl+], a                                   ; $5c58: $22
    ld [hl+], a                                   ; $5c59: $22
    ld [hl+], a                                   ; $5c5a: $22
    ld a, $88                                     ; $5c5b: $3e $88
    ld [hl+], a                                   ; $5c5d: $22
    ld a, $5e                                     ; $5c5e: $3e $5e
    ld [hl+], a                                   ; $5c60: $22
    ld hl, $79ba                                  ; $5c61: $21 $ba $79
    ldh [$c1], a                                  ; $5c64: $e0 $c1
    ld a, $6d                                     ; $5c66: $3e $6d
    ldh [$bd], a                                  ; $5c68: $e0 $bd
    ld a, $7c                                     ; $5c6a: $3e $7c
    ldh [$be], a                                  ; $5c6c: $e0 $be
    call Call_000_340c                            ; $5c6e: $cd $0c $34
    ld hl, $0120                                  ; $5c71: $21 $20 $01
    call Call_000_3929                            ; $5c74: $cd $29 $39
    rst $18                                       ; $5c77: $df
    ldh [$c1], a                                  ; $5c78: $e0 $c1
    ld a, $de                                     ; $5c7a: $3e $de
    ldh [$bd], a                                  ; $5c7c: $e0 $bd
    ld a, $62                                     ; $5c7e: $3e $62
    ldh [$be], a                                  ; $5c80: $e0 $be
    call Call_000_33fe                            ; $5c82: $cd $fe $33
    ld bc, $5b82                                  ; $5c85: $01 $82 $5b
    ld hl, $0080                                  ; $5c88: $21 $80 $00
    ldh [$c1], a                                  ; $5c8b: $e0 $c1
    ld a, $6a                                     ; $5c8d: $3e $6a
    ldh [$bd], a                                  ; $5c8f: $e0 $bd
    ld a, $0f                                     ; $5c91: $3e $0f
    ldh [$be], a                                  ; $5c93: $e0 $be
    call Call_000_3421                            ; $5c95: $cd $21 $34
    xor a                                         ; $5c98: $af
    ld bc, $5cea                                  ; $5c99: $01 $ea $5c
    ld de, $d810                                  ; $5c9c: $11 $10 $d8
    ld hl, $0000                                  ; $5c9f: $21 $00 $00
    ldh [$c1], a                                  ; $5ca2: $e0 $c1
    ld a, $7a                                     ; $5ca4: $3e $7a
    ldh [$bd], a                                  ; $5ca6: $e0 $bd
    ld a, $0f                                     ; $5ca8: $3e $0f
    ldh [$be], a                                  ; $5caa: $e0 $be
    call Call_000_3421                            ; $5cac: $cd $21 $34
    call Call_004_5d74                            ; $5caf: $cd $74 $5d
    xor a                                         ; $5cb2: $af
    ld d, $04                                     ; $5cb3: $16 $04
    ld e, $01                                     ; $5cb5: $1e $01
    ld hl, $5ced                                  ; $5cb7: $21 $ed $5c
    ldh [$c1], a                                  ; $5cba: $e0 $c1
    ld a, $50                                     ; $5cbc: $3e $50
    ldh [$bd], a                                  ; $5cbe: $e0 $bd
    ld a, $25                                     ; $5cc0: $3e $25
    ldh [$be], a                                  ; $5cc2: $e0 $be
    call Call_000_3421                            ; $5cc4: $cd $21 $34
    rst $20                                       ; $5cc7: $e7
    ld hl, $ffb8                                  ; $5cc8: $21 $b8 $ff
    ld [hl], $00                                  ; $5ccb: $36 $00
    inc hl                                        ; $5ccd: $23
    ld [hl], $00                                  ; $5cce: $36 $00
    ld a, $7c                                     ; $5cd0: $3e $7c
    ldh [$c1], a                                  ; $5cd2: $e0 $c1
    ld a, $d6                                     ; $5cd4: $3e $d6
    ldh [$bd], a                                  ; $5cd6: $e0 $bd
    ld a, $11                                     ; $5cd8: $3e $11
    ldh [$be], a                                  ; $5cda: $e0 $be
    call Call_000_3421                            ; $5cdc: $cd $21 $34
    ld a, $82                                     ; $5cdf: $3e $82
    ldh [$c1], a                                  ; $5ce1: $e0 $c1
    ld a, $d6                                     ; $5ce3: $3e $d6
    ldh [$bd], a                                  ; $5ce5: $e0 $bd
    ld a, $11                                     ; $5ce7: $3e $11
    ldh [$be], a                                  ; $5ce9: $e0 $be
    call Call_000_3421                            ; $5ceb: $cd $21 $34
    xor a                                         ; $5cee: $af
    ld hl, $490a                                  ; $5cef: $21 $0a $49
    ldh [$c1], a                                  ; $5cf2: $e0 $c1
    ld a, $6f                                     ; $5cf4: $3e $6f
    ldh [$bd], a                                  ; $5cf6: $e0 $bd
    ld a, $4f                                     ; $5cf8: $3e $4f
    ldh [$be], a                                  ; $5cfa: $e0 $be
    call Call_000_33fe                            ; $5cfc: $cd $fe $33
    ld hl, $6251                                  ; $5cff: $21 $51 $62
    xor a                                         ; $5d02: $af
    ld d, $00                                     ; $5d03: $16 $00
    ld e, $01                                     ; $5d05: $1e $01
    ldh [$c1], a                                  ; $5d07: $e0 $c1
    ld a, $3d                                     ; $5d09: $3e $3d
    ldh [$bd], a                                  ; $5d0b: $e0 $bd
    ld a, $25                                     ; $5d0d: $3e $25
    ldh [$be], a                                  ; $5d0f: $e0 $be
    call Call_000_3421                            ; $5d11: $cd $21 $34
    ld a, $02                                     ; $5d14: $3e $02
    ld [$c0bb], a                                 ; $5d16: $ea $bb $c0
    ld a, $04                                     ; $5d19: $3e $04
    ld [$cbe9], a                                 ; $5d1b: $ea $e9 $cb
    ld hl, $5b17                                  ; $5d1e: $21 $17 $5b
    ldh [$c1], a                                  ; $5d21: $e0 $c1
    ld a, $8f                                     ; $5d23: $3e $8f
    ldh [$bd], a                                  ; $5d25: $e0 $bd
    ld a, $5b                                     ; $5d27: $3e $5b
    ldh [$be], a                                  ; $5d29: $e0 $be
    call Call_000_341a                            ; $5d2b: $cd $1a $34
    ld a, $02                                     ; $5d2e: $3e $02
    ldh [$9b], a                                  ; $5d30: $e0 $9b
    ld a, $7c                                     ; $5d32: $3e $7c
    call Call_000_03a0                            ; $5d34: $cd $a0 $03
    ret                                           ; $5d37: $c9


    db $01, $00, $00, $00, $00, $10, $02, $00, $00

Call_004_5d41:
    ld hl, $ffb8                                  ; $5d41: $21 $b8 $ff
    ld [hl], $6d                                  ; $5d44: $36 $6d
    inc hl                                        ; $5d46: $23
    ld [hl], $02                                  ; $5d47: $36 $02
    call Call_000_3356                            ; $5d49: $cd $56 $33
    add $0d                                       ; $5d4c: $c6 $0d
    ld hl, $526d                                  ; $5d4e: $21 $6d $52
    ldh [$c1], a                                  ; $5d51: $e0 $c1
    ld a, $4b                                     ; $5d53: $3e $4b
    ldh [$bd], a                                  ; $5d55: $e0 $bd
    ld a, $29                                     ; $5d57: $3e $29
    ldh [$be], a                                  ; $5d59: $e0 $be
    call Call_000_3421                            ; $5d5b: $cd $21 $34
    call Call_000_3356                            ; $5d5e: $cd $56 $33
    add $0d                                       ; $5d61: $c6 $0d
    ld de, $5d38                                  ; $5d63: $11 $38 $5d
    ldh [$c1], a                                  ; $5d66: $e0 $c1
    ld a, $58                                     ; $5d68: $3e $58
    ldh [$bd], a                                  ; $5d6a: $e0 $bd
    ld a, $24                                     ; $5d6c: $3e $24
    ldh [$be], a                                  ; $5d6e: $e0 $be
    call Call_000_3421                            ; $5d70: $cd $21 $34
    ret                                           ; $5d73: $c9


Call_004_5d74:
    ld hl, $5b32                                  ; $5d74: $21 $32 $5b
    call Call_000_301f                            ; $5d77: $cd $1f $30
    ld a, $7c                                     ; $5d7a: $3e $7c
    ld [$c1eb], a                                 ; $5d7c: $ea $eb $c1
    ld a, $01                                     ; $5d7f: $3e $01
    ld [$c234], a                                 ; $5d81: $ea $34 $c2
    ld b, $00                                     ; $5d84: $06 $00

jr_004_5d86:
    ld a, b                                       ; $5d86: $78
    ld hl, $5bc6                                  ; $5d87: $21 $c6 $5b
    rst $08                                       ; $5d8a: $cf
    cp $ff                                        ; $5d8b: $fe $ff
    jr z, jr_004_5dc6                             ; $5d8d: $28 $37

    call Call_004_689e                            ; $5d8f: $cd $9e $68
    or a                                          ; $5d92: $b7
    jr nz, jr_004_5dc6                            ; $5d93: $20 $31

    ld a, $02                                     ; $5d95: $3e $02
    ldh [$c1], a                                  ; $5d97: $e0 $c1
    ld a, $af                                     ; $5d99: $3e $af
    ldh [$bd], a                                  ; $5d9b: $e0 $bd
    ld a, $6c                                     ; $5d9d: $3e $6c
    ldh [$be], a                                  ; $5d9f: $e0 $be
    call Call_000_341a                            ; $5da1: $cd $1a $34
    ld a, b                                       ; $5da4: $78
    ld hl, $1036                                  ; $5da5: $21 $36 $10
    ldh [$c1], a                                  ; $5da8: $e0 $c1
    ld a, $67                                     ; $5daa: $3e $67
    ldh [$bd], a                                  ; $5dac: $e0 $bd
    ld a, $6e                                     ; $5dae: $3e $6e
    ldh [$be], a                                  ; $5db0: $e0 $be
    call Call_000_341a                            ; $5db2: $cd $1a $34
    ld a, $01                                     ; $5db5: $3e $01
    ldh [$c1], a                                  ; $5db7: $e0 $c1
    ld a, $af                                     ; $5db9: $3e $af
    ldh [$bd], a                                  ; $5dbb: $e0 $bd
    ld a, $6c                                     ; $5dbd: $3e $6c
    ldh [$be], a                                  ; $5dbf: $e0 $be
    call Call_000_341a                            ; $5dc1: $cd $1a $34
    jr jr_004_5dd7                                ; $5dc4: $18 $11

jr_004_5dc6:
    ld hl, $1036                                  ; $5dc6: $21 $36 $10
    ld a, b                                       ; $5dc9: $78
    ldh [$c1], a                                  ; $5dca: $e0 $c1
    ld a, $67                                     ; $5dcc: $3e $67
    ldh [$bd], a                                  ; $5dce: $e0 $bd
    ld a, $6e                                     ; $5dd0: $3e $6e
    ldh [$be], a                                  ; $5dd2: $e0 $be
    call Call_000_341a                            ; $5dd4: $cd $1a $34

jr_004_5dd7:
    inc b                                         ; $5dd7: $04
    ld a, b                                       ; $5dd8: $78
    cp $06                                        ; $5dd9: $fe $06
    jr nz, jr_004_5d86                            ; $5ddb: $20 $a9

    call Call_000_3674                            ; $5ddd: $cd $74 $36

    db $00, $00, $14, $06

    ld a, $0c                                     ; $5de4: $3e $0c
    ld bc, $0000                                  ; $5de6: $01 $00 $00
    ld de, $d980                                  ; $5de9: $11 $80 $d9
    ld hl, $537b                                  ; $5dec: $21 $7b $53
    ldh [$c1], a                                  ; $5def: $e0 $c1
    ld a, $2a                                     ; $5df1: $3e $2a
    ldh [$bd], a                                  ; $5df3: $e0 $bd
    ld a, $33                                     ; $5df5: $3e $33
    ldh [$be], a                                  ; $5df7: $e0 $be
    call Call_000_3421                            ; $5df9: $cd $21 $34
    ld a, $88                                     ; $5dfc: $3e $88
    ld [$c1eb], a                                 ; $5dfe: $ea $eb $c1
    ld a, $03                                     ; $5e01: $3e $03
    ld [$c234], a                                 ; $5e03: $ea $34 $c2
    ld a, $40                                     ; $5e06: $3e $40
    ldh [$c1], a                                  ; $5e08: $e0 $c1
    ld a, $ab                                     ; $5e0a: $3e $ab
    ldh [$bd], a                                  ; $5e0c: $e0 $bd
    ld a, $6c                                     ; $5e0e: $3e $6c
    ldh [$be], a                                  ; $5e10: $e0 $be
    call Call_000_341a                            ; $5e12: $cd $1a $34
    ld hl, $225a                                  ; $5e15: $21 $5a $22
    ldh [$c1], a                                  ; $5e18: $e0 $c1
    ld a, $1a                                     ; $5e1a: $3e $1a
    ldh [$bd], a                                  ; $5e1c: $e0 $bd
    ld a, $6e                                     ; $5e1e: $3e $6e
    ldh [$be], a                                  ; $5e20: $e0 $be
    call Call_000_341a                            ; $5e22: $cd $1a $34
    ld a, $41                                     ; $5e25: $3e $41
    ldh [$c1], a                                  ; $5e27: $e0 $c1
    ld a, $ab                                     ; $5e29: $3e $ab
    ldh [$bd], a                                  ; $5e2b: $e0 $bd
    ld a, $6c                                     ; $5e2d: $3e $6c
    ldh [$be], a                                  ; $5e2f: $e0 $be
    call Call_000_341a                            ; $5e31: $cd $1a $34
    ldh a, [rSVBK]                                ; $5e34: $f0 $70
    push af                                       ; $5e36: $f5
    ld a, $06                                     ; $5e37: $3e $06
    ldh [rSVBK], a                                ; $5e39: $e0 $70
    ld a, [$d5d5]                                 ; $5e3b: $fa $d5 $d5
    ldh [$bc], a                                  ; $5e3e: $e0 $bc
    pop af                                        ; $5e40: $f1
    ldh [rSVBK], a                                ; $5e41: $e0 $70
    ldh a, [$bc]                                  ; $5e43: $f0 $bc
    ld hl, $17b0                                  ; $5e45: $21 $b0 $17
    ldh [$c1], a                                  ; $5e48: $e0 $c1
    ld a, $67                                     ; $5e4a: $3e $67
    ldh [$bd], a                                  ; $5e4c: $e0 $bd
    ld a, $6e                                     ; $5e4e: $3e $6e
    ldh [$be], a                                  ; $5e50: $e0 $be
    jp Jump_000_341a                              ; $5e52: $c3 $1a $34


    ld a, [$cd58]                                 ; $5e55: $fa $58 $cd
    or a                                          ; $5e58: $b7
    ret nz                                        ; $5e59: $c0

    ldh a, [$a5]                                  ; $5e5a: $f0 $a5
    bit 0, a                                      ; $5e5c: $cb $47
    jp nz, Jump_004_5f03                          ; $5e5e: $c2 $03 $5f

    bit 1, a                                      ; $5e61: $cb $4f
    jp nz, Jump_004_5f47                          ; $5e63: $c2 $47 $5f

    jr jr_004_5e72                                ; $5e66: $18 $0a

    bit 3, a                                      ; $5e68: $cb $5f
    jp nz, $5eb3                                  ; $5e6a: $c2 $b3 $5e

    bit 2, a                                      ; $5e6d: $cb $57
    jp nz, Jump_004_5eda                          ; $5e6f: $c2 $da $5e

jr_004_5e72:
    bit 3, a                                      ; $5e72: $cb $5f
    jp nz, Jump_004_5f47                          ; $5e74: $c2 $47 $5f

    ld c, a                                       ; $5e77: $4f
    and $c0                                       ; $5e78: $e6 $c0
    ret z                                         ; $5e7a: $c8

    ld a, $19                                     ; $5e7b: $3e $19
    call Call_000_393e                            ; $5e7d: $cd $3e $39
    push bc                                       ; $5e80: $c5
    ldh [$c1], a                                  ; $5e81: $e0 $c1
    ld a, $86                                     ; $5e83: $3e $86
    ldh [$bd], a                                  ; $5e85: $e0 $bd
    ld a, $4f                                     ; $5e87: $3e $4f
    ldh [$be], a                                  ; $5e89: $e0 $be
    call Call_000_33fe                            ; $5e8b: $cd $fe $33
    pop bc                                        ; $5e8e: $c1

jr_004_5e8f:
    ldh a, [$d5]                                  ; $5e8f: $f0 $d5
    ld hl, $5bc6                                  ; $5e91: $21 $c6 $5b
    rst $08                                       ; $5e94: $cf
    cp $ff                                        ; $5e95: $fe $ff
    ret z                                         ; $5e97: $c8

    call Call_004_689e                            ; $5e98: $cd $9e $68
    or a                                          ; $5e9b: $b7
    ret nz                                        ; $5e9c: $c0

    ld a, c                                       ; $5e9d: $79
    bit 6, a                                      ; $5e9e: $cb $77
    jr nz, jr_004_5ea9                            ; $5ea0: $20 $07

    ldh a, [$d5]                                  ; $5ea2: $f0 $d5
    inc a                                         ; $5ea4: $3c
    ldh [$d5], a                                  ; $5ea5: $e0 $d5
    jr jr_004_5e8f                                ; $5ea7: $18 $e6

jr_004_5ea9:
    ldh a, [$d5]                                  ; $5ea9: $f0 $d5
    dec a                                         ; $5eab: $3d
    ldh [$d5], a                                  ; $5eac: $e0 $d5
    jr jr_004_5e8f                                ; $5eae: $18 $df

    rst $38                                       ; $5eb0: $ff
    rst $38                                       ; $5eb1: $ff
    ld bc, $b021                                  ; $5eb2: $01 $21 $b0
    ld e, [hl]                                    ; $5eb5: $5e
    ld de, $cdfe                                  ; $5eb6: $11 $fe $cd
    call CopyHL2DE_3                            ; $5eb9: $cd $4e $12
    ld a, $15                                     ; $5ebc: $3e $15
    call Call_000_393e                            ; $5ebe: $cd $3e $39
    ldh a, [rSVBK]                                ; $5ec1: $f0 $70
    push af                                       ; $5ec3: $f5
    ld a, $06                                     ; $5ec4: $3e $06
    ldh [rSVBK], a                                ; $5ec6: $e0 $70
    ld hl, $d000                                  ; $5ec8: $21 $00 $d0
    ld b, $00                                     ; $5ecb: $06 $00

jr_004_5ecd:
    ld a, $63                                     ; $5ecd: $3e $63
    ld [hl+], a                                   ; $5ecf: $22
    inc b                                         ; $5ed0: $04
    ld a, b                                       ; $5ed1: $78
    cp $6f                                        ; $5ed2: $fe $6f
    jr nz, jr_004_5ecd                            ; $5ed4: $20 $f7

    pop af                                        ; $5ed6: $f1
    ldh [rSVBK], a                                ; $5ed7: $e0 $70
    ret                                           ; $5ed9: $c9


Jump_004_5eda:
    ld a, $21                                     ; $5eda: $3e $21
    call Call_000_393e                            ; $5edc: $cd $3e $39
    ldh a, [rSVBK]                                ; $5edf: $f0 $70
    push af                                       ; $5ee1: $f5
    ld a, $06                                     ; $5ee2: $3e $06
    ldh [rSVBK], a                                ; $5ee4: $e0 $70
    ld a, $02                                     ; $5ee6: $3e $02
    ld bc, $0065                                  ; $5ee8: $01 $65 $00
    ld hl, $d50a                                  ; $5eeb: $21 $0a $d5
    call Call_000_112f                            ; $5eee: $cd $2f $11
    ld a, $ff                                     ; $5ef1: $3e $ff
    ld bc, $0006                                  ; $5ef3: $01 $06 $00
    ld hl, $d570                                  ; $5ef6: $21 $70 $d5
    call Call_000_112f                            ; $5ef9: $cd $2f $11
    ld a, $07                                     ; $5efc: $3e $07
    ld [hl+], a                                   ; $5efe: $22
    pop af                                        ; $5eff: $f1
    ldh [rSVBK], a                                ; $5f00: $e0 $70
    ret                                           ; $5f02: $c9


Jump_004_5f03:
    ld a, $17                                     ; $5f03: $3e $17
    call Call_000_393e                            ; $5f05: $cd $3e $39
    ldh a, [$d5]                                  ; $5f08: $f0 $d5
    cp $05                                        ; $5f0a: $fe $05
    jr nz, jr_004_5f19                            ; $5f0c: $20 $0b

    ld a, [$cdd5]                                 ; $5f0e: $fa $d5 $cd
    ld d, a                                       ; $5f11: $57
    call Call_004_5700                            ; $5f12: $cd $00 $57
    call Call_004_5f5a                            ; $5f15: $cd $5a $5f
    ret                                           ; $5f18: $c9


jr_004_5f19:
    ld hl, $5bbf                                  ; $5f19: $21 $bf $5b
    rst $08                                       ; $5f1c: $cf
    push af                                       ; $5f1d: $f5
    cp $11                                        ; $5f1e: $fe $11
    jr z, jr_004_5f2f                             ; $5f20: $28 $0d

    cp $14                                        ; $5f22: $fe $14
    jr z, jr_004_5f2f                             ; $5f24: $28 $09

    ld hl, $cc12                                  ; $5f26: $21 $12 $cc
    ld a, [hl+]                                   ; $5f29: $2a
    ld h, [hl]                                    ; $5f2a: $66
    ld l, a                                       ; $5f2b: $6f
    call Call_000_3911                            ; $5f2c: $cd $11 $39

jr_004_5f2f:
    rst $18                                       ; $5f2f: $df
    ld c, $70                                     ; $5f30: $0e $70
    ld e, $14                                     ; $5f32: $1e $14
    ld d, $0e                                     ; $5f34: $16 $0e
    ld hl, $0080                                  ; $5f36: $21 $80 $00
    ld b, $03                                     ; $5f39: $06 $03
    call Call_000_13c4                            ; $5f3b: $cd $c4 $13
    rst $20                                       ; $5f3e: $e7
    call Call_000_3308                            ; $5f3f: $cd $08 $33
    pop af                                        ; $5f42: $f1
    call Call_000_2448                            ; $5f43: $cd $48 $24
    ret                                           ; $5f46: $c9


Jump_004_5f47:
    ld a, $18                                     ; $5f47: $3e $18
    call Call_000_393e                            ; $5f49: $cd $3e $39
    ld hl, $cc12                                  ; $5f4c: $21 $12 $cc
    ld a, [hl+]                                   ; $5f4f: $2a
    ld h, [hl]                                    ; $5f50: $66
    ld l, a                                       ; $5f51: $6f
    call Call_000_3911                            ; $5f52: $cd $11 $39
    ld a, $0b                                     ; $5f55: $3e $0b
    jp Jump_000_2448                              ; $5f57: $c3 $48 $24


Call_004_5f5a:
    xor a                                         ; $5f5a: $af
    ld [$cbe9], a                                 ; $5f5b: $ea $e9 $cb
    ld a, $0c                                     ; $5f5e: $3e $0c
    ld bc, $0000                                  ; $5f60: $01 $00 $00
    ld de, $d980                                  ; $5f63: $11 $80 $d9
    ld hl, $537b                                  ; $5f66: $21 $7b $53
    ldh [$c1], a                                  ; $5f69: $e0 $c1
    ld a, $2a                                     ; $5f6b: $3e $2a
    ldh [$bd], a                                  ; $5f6d: $e0 $bd
    ld a, $33                                     ; $5f6f: $3e $33
    ldh [$be], a                                  ; $5f71: $e0 $be
    call Call_000_3421                            ; $5f73: $cd $21 $34
    ld hl, $5b4e                                  ; $5f76: $21 $4e $5b
    call Call_000_301f                            ; $5f79: $cd $1f $30
    ld a, $88                                     ; $5f7c: $3e $88
    ld [$c1eb], a                                 ; $5f7e: $ea $eb $c1
    ld a, $03                                     ; $5f81: $3e $03
    ld [$c234], a                                 ; $5f83: $ea $34 $c2
    ld hl, $2263                                  ; $5f86: $21 $63 $22
    ldh [$c1], a                                  ; $5f89: $e0 $c1
    ld a, $1a                                     ; $5f8b: $3e $1a
    ldh [$bd], a                                  ; $5f8d: $e0 $bd
    ld a, $6e                                     ; $5f8f: $3e $6e
    ldh [$be], a                                  ; $5f91: $e0 $be
    call Call_000_341a                            ; $5f93: $cd $1a $34
    ld hl, $11ce                                  ; $5f96: $21 $ce $11
    ldh [$c1], a                                  ; $5f99: $e0 $c1
    ld a, $1a                                     ; $5f9b: $3e $1a
    ldh [$bd], a                                  ; $5f9d: $e0 $bd
    ld a, $6e                                     ; $5f9f: $3e $6e
    ldh [$be], a                                  ; $5fa1: $e0 $be
    call Call_000_341a                            ; $5fa3: $cd $1a $34
    ld hl, $cd02                                  ; $5fa6: $21 $02 $cd
    ld [hl], $b3                                  ; $5fa9: $36 $b3
    inc hl                                        ; $5fab: $23
    ld [hl], $5f                                  ; $5fac: $36 $5f
    ld a, $21                                     ; $5fae: $3e $21
    jp Jump_000_393e                              ; $5fb0: $c3 $3e $39


    ldh a, [$a5]                                  ; $5fb3: $f0 $a5
    and $0f                                       ; $5fb5: $e6 $0f
    ret z                                         ; $5fb7: $c8

    ld hl, $cc12                                  ; $5fb8: $21 $12 $cc
    ld a, [hl+]                                   ; $5fbb: $2a
    ld h, [hl]                                    ; $5fbc: $66
    ld l, a                                       ; $5fbd: $6f
    call Call_000_3911                            ; $5fbe: $cd $11 $39
    ld a, $0b                                     ; $5fc1: $3e $0b
    jp Jump_000_2448                              ; $5fc3: $c3 $48 $24


    rst $18                                       ; $5fc6: $df
    call Call_004_60e2                            ; $5fc7: $cd $e2 $60
    call Call_004_6054                            ; $5fca: $cd $54 $60
    ld c, $ff                                     ; $5fcd: $0e $ff
    call Call_004_606a                            ; $5fcf: $cd $6a $60
    rst $20                                       ; $5fd2: $e7
    ld a, $08                                     ; $5fd3: $3e $08
    ld [$cbe9], a                                 ; $5fd5: $ea $e9 $cb
    xor a                                         ; $5fd8: $af
    ld hl, $480c                                  ; $5fd9: $21 $0c $48
    ldh [$c1], a                                  ; $5fdc: $e0 $c1
    ld a, $6f                                     ; $5fde: $3e $6f
    ldh [$bd], a                                  ; $5fe0: $e0 $bd
    ld a, $4f                                     ; $5fe2: $3e $4f
    ldh [$be], a                                  ; $5fe4: $e0 $be
    call Call_000_33fe                            ; $5fe6: $cd $fe $33
    call Call_004_77b3                            ; $5fe9: $cd $b3 $77
    xor a                                         ; $5fec: $af
    ld [$cb86], a                                 ; $5fed: $ea $86 $cb
    ld a, $05                                     ; $5ff0: $3e $05
    ld [$cb87], a                                 ; $5ff2: $ea $87 $cb
    ld a, $0a                                     ; $5ff5: $3e $0a
    ld [$cb88], a                                 ; $5ff7: $ea $88 $cb
    call Call_004_6fbb                            ; $5ffa: $cd $bb $6f
    ret                                           ; $5ffd: $c9


    ld a, [$cb90]                                 ; $5ffe: $fa $90 $cb
    cp $ff                                        ; $6001: $fe $ff
    jr z, jr_004_600d                             ; $6003: $28 $08

    ld c, a                                       ; $6005: $4f
    ld a, [$cb8f]                                 ; $6006: $fa $8f $cb
    ld b, a                                       ; $6009: $47
    call Call_004_6843                            ; $600a: $cd $43 $68

jr_004_600d:
    ldh [$c1], a                                  ; $600d: $e0 $c1
    ld a, $8f                                     ; $600f: $3e $8f
    ldh [$bd], a                                  ; $6011: $e0 $bd
    ld a, $5f                                     ; $6013: $3e $5f
    ldh [$be], a                                  ; $6015: $e0 $be
    call Call_000_33fe                            ; $6017: $cd $fe $33
    rst $18                                       ; $601a: $df
    ld c, $70                                     ; $601b: $0e $70
    ld e, $14                                     ; $601d: $1e $14
    ld d, $0e                                     ; $601f: $16 $0e
    ld hl, $0080                                  ; $6021: $21 $80 $00
    ld b, $03                                     ; $6024: $06 $03
    call Call_000_13c4                            ; $6026: $cd $c4 $13
    rst $20                                       ; $6029: $e7
    call Call_000_3308                            ; $602a: $cd $08 $33
    rst $18                                       ; $602d: $df
    call Call_004_60e2                            ; $602e: $cd $e2 $60
    call Call_004_6054                            ; $6031: $cd $54 $60
    rst $20                                       ; $6034: $e7
    ld hl, $480c                                  ; $6035: $21 $0c $48
    ldh [$c1], a                                  ; $6038: $e0 $c1
    ld a, $6f                                     ; $603a: $3e $6f
    ldh [$bd], a                                  ; $603c: $e0 $bd
    ld a, $4f                                     ; $603e: $3e $4f
    ldh [$be], a                                  ; $6040: $e0 $be
    call Call_000_33fe                            ; $6042: $cd $fe $33
    ld a, $08                                     ; $6045: $3e $08
    ld [$cbe9], a                                 ; $6047: $ea $e9 $cb
    ld a, [$cb8f]                                 ; $604a: $fa $8f $cb
    ldh [$d5], a                                  ; $604d: $e0 $d5
    ld c, $ff                                     ; $604f: $0e $ff
    jp Jump_004_606a                              ; $6051: $c3 $6a $60


Call_004_6054:
    call Call_004_60c3                            ; $6054: $cd $c3 $60
    call Call_000_3674                            ; $6057: $cd $74 $36

    db $15, $04, $09, $0d

    ld bc, $0000                                  ; $605e: $01 $00 $00
    ld de, $d8aa                                  ; $6061: $11 $aa $d8
    ld hl, $d800                                  ; $6064: $21 $00 $d8
    jp Jump_000_12d8                              ; $6067: $c3 $d8 $12


Call_004_606a:
Jump_004_606a:
    ld hl, $d100                                  ; $606a: $21 $00 $d1
    push hl                                       ; $606d: $e5
    ld b, $00                                     ; $606e: $06 $00

jr_004_6070:
    ld a, c                                       ; $6070: $79
    cp $ff                                        ; $6071: $fe $ff
    jr nz, jr_004_6079                            ; $6073: $20 $04

    ld a, b                                       ; $6075: $78
    call Call_004_778a                            ; $6076: $cd $8a $77

jr_004_6079:
    pop hl                                        ; $6079: $e1
    ld a, $06                                     ; $607a: $3e $06
    ldh [rSVBK], a                                ; $607c: $e0 $70
    ld a, [hl+]                                   ; $607e: $2a
    cp $ff                                        ; $607f: $fe $ff
    push af                                       ; $6081: $f5
    ld a, $01                                     ; $6082: $3e $01
    ldh [rSVBK], a                                ; $6084: $e0 $70
    pop af                                        ; $6086: $f1
    push hl                                       ; $6087: $e5
    jr z, jr_004_60b3                             ; $6088: $28 $29

    ld d, a                                       ; $608a: $57
    ld e, b                                       ; $608b: $58
    push af                                       ; $608c: $f5
    push bc                                       ; $608d: $c5
    call Call_004_7738                            ; $608e: $cd $38 $77
    pop bc                                        ; $6091: $c1
    pop af                                        ; $6092: $f1
    ld d, b                                       ; $6093: $50
    inc d                                         ; $6094: $14
    ld e, $01                                     ; $6095: $1e $01
    ld hl, $6266                                  ; $6097: $21 $66 $62
    push bc                                       ; $609a: $c5
    ldh [$c1], a                                  ; $609b: $e0 $c1
    ld a, $3d                                     ; $609d: $3e $3d
    ldh [$bd], a                                  ; $609f: $e0 $bd
    ld a, $25                                     ; $60a1: $3e $25
    ldh [$be], a                                  ; $60a3: $e0 $be
    call Call_000_3421                            ; $60a5: $cd $21 $34
    pop bc                                        ; $60a8: $c1
    ld d, $01                                     ; $60a9: $16 $01
    ld e, b                                       ; $60ab: $58
    push bc                                       ; $60ac: $c5
    call Call_004_7770                            ; $60ad: $cd $70 $77
    pop bc                                        ; $60b0: $c1
    jr jr_004_60bb                                ; $60b1: $18 $08

jr_004_60b3:
    ld d, $00                                     ; $60b3: $16 $00
    ld e, b                                       ; $60b5: $58
    push bc                                       ; $60b6: $c5
    call Call_004_7770                            ; $60b7: $cd $70 $77
    pop bc                                        ; $60ba: $c1

jr_004_60bb:
    inc b                                         ; $60bb: $04
    ld a, b                                       ; $60bc: $78
    cp $05                                        ; $60bd: $fe $05
    jr nz, jr_004_6070                            ; $60bf: $20 $af

    pop hl                                        ; $60c1: $e1
    ret                                           ; $60c2: $c9


Call_004_60c3:
    ld d, $01                                     ; $60c3: $16 $01

jr_004_60c5:
    ld a, $70                                     ; $60c5: $3e $70
    ld hl, $6266                                  ; $60c7: $21 $66 $62
    ld e, $01                                     ; $60ca: $1e $01
    push de                                       ; $60cc: $d5
    ldh [$c1], a                                  ; $60cd: $e0 $c1
    ld a, $3d                                     ; $60cf: $3e $3d
    ldh [$bd], a                                  ; $60d1: $e0 $bd
    ld a, $25                                     ; $60d3: $3e $25
    ldh [$be], a                                  ; $60d5: $e0 $be
    call Call_000_3421                            ; $60d7: $cd $21 $34
    pop de                                        ; $60da: $d1
    inc d                                         ; $60db: $14
    ld a, d                                       ; $60dc: $7a
    cp $06                                        ; $60dd: $fe $06
    jr nz, jr_004_60c5                            ; $60df: $20 $e4

    ret                                           ; $60e1: $c9


Call_004_60e2:
    ld hl, $5b39                                  ; $60e2: $21 $39 $5b
    call Call_000_301f                            ; $60e5: $cd $1f $30
    ld a, $7c                                     ; $60e8: $3e $7c
    ld [$c1eb], a                                 ; $60ea: $ea $eb $c1
    ld a, $01                                     ; $60ed: $3e $01
    ld [$c234], a                                 ; $60ef: $ea $34 $c2
    ld b, $0b                                     ; $60f2: $06 $0b
    ld hl, $1048                                  ; $60f4: $21 $48 $10

jr_004_60f7:
    ldh [$c1], a                                  ; $60f7: $e0 $c1
    ld a, $1a                                     ; $60f9: $3e $1a
    ldh [$bd], a                                  ; $60fb: $e0 $bd
    ld a, $6e                                     ; $60fd: $3e $6e
    ldh [$be], a                                  ; $60ff: $e0 $be
    call Call_000_341a                            ; $6101: $cd $1a $34
    ld de, $0003                                  ; $6104: $11 $03 $00
    add hl, de                                    ; $6107: $19
    dec b                                         ; $6108: $05
    jr nz, jr_004_60f7                            ; $6109: $20 $ec

    ld hl, $5b40                                  ; $610b: $21 $40 $5b
    call Call_000_301f                            ; $610e: $cd $1f $30
    ld a, $30                                     ; $6111: $3e $30
    ld [$c1eb], a                                 ; $6113: $ea $eb $c1
    ld a, $01                                     ; $6116: $3e $01
    ld [$c234], a                                 ; $6118: $ea $34 $c2
    ld a, [$cdfb]                                 ; $611b: $fa $fb $cd
    ldh [$c1], a                                  ; $611e: $e0 $c1
    ld a, $be                                     ; $6120: $3e $be
    ldh [$bd], a                                  ; $6122: $e0 $bd
    ld a, $6e                                     ; $6124: $3e $6e
    ldh [$be], a                                  ; $6126: $e0 $be
    call Call_000_341a                            ; $6128: $cd $1a $34
    ld hl, $cdf9                                  ; $612b: $21 $f9 $cd
    ld a, [hl+]                                   ; $612e: $2a
    ld h, [hl]                                    ; $612f: $66
    ld l, a                                       ; $6130: $6f
    ldh [$c1], a                                  ; $6131: $e0 $c1
    ld a, $e7                                     ; $6133: $3e $e7
    ldh [$bd], a                                  ; $6135: $e0 $bd
    ld a, $6e                                     ; $6137: $3e $6e
    ldh [$be], a                                  ; $6139: $e0 $be
    call Call_000_341a                            ; $613b: $cd $1a $34
    ld a, [$cdfb]                                 ; $613e: $fa $fb $cd
    ldh [$c1], a                                  ; $6141: $e0 $c1
    ld a, $af                                     ; $6143: $3e $af
    ldh [$bd], a                                  ; $6145: $e0 $bd
    ld a, $62                                     ; $6147: $3e $62
    ldh [$be], a                                  ; $6149: $e0 $be
    call Call_000_33fe                            ; $614b: $cd $fe $33
    ldh [$c1], a                                  ; $614e: $e0 $c1
    ld a, $e7                                     ; $6150: $3e $e7
    ldh [$bd], a                                  ; $6152: $e0 $bd
    ld a, $6e                                     ; $6154: $3e $6e
    ldh [$be], a                                  ; $6156: $e0 $be
    call Call_000_341a                            ; $6158: $cd $1a $34
    ld hl, $cdfc                                  ; $615b: $21 $fc $cd
    ld a, [hl+]                                   ; $615e: $2a
    ld h, [hl]                                    ; $615f: $66
    ld l, a                                       ; $6160: $6f
    ldh [$c1], a                                  ; $6161: $e0 $c1
    ld a, $e7                                     ; $6163: $3e $e7
    ldh [$bd], a                                  ; $6165: $e0 $bd
    ld a, $6e                                     ; $6167: $3e $6e
    ldh [$be], a                                  ; $6169: $e0 $be
    call Call_000_341a                            ; $616b: $cd $1a $34
    ld hl, $cde5                                  ; $616e: $21 $e5 $cd
    ld c, [hl]                                    ; $6171: $4e
    inc hl                                        ; $6172: $23
    ld b, [hl]                                    ; $6173: $46
    ld hl, $cde1                                  ; $6174: $21 $e1 $cd
    ld e, [hl]                                    ; $6177: $5e
    inc hl                                        ; $6178: $23
    ld d, [hl]                                    ; $6179: $56
    ld hl, $1069                                  ; $617a: $21 $69 $10
    ldh [$c1], a                                  ; $617d: $e0 $c1
    ld a, $6a                                     ; $617f: $3e $6a
    ldh [$bd], a                                  ; $6181: $e0 $bd
    ld a, $6d                                     ; $6183: $3e $6d
    ldh [$be], a                                  ; $6185: $e0 $be
    call Call_000_341a                            ; $6187: $cd $1a $34
    ld hl, $cde7                                  ; $618a: $21 $e7 $cd
    ld c, [hl]                                    ; $618d: $4e
    inc hl                                        ; $618e: $23
    ld b, [hl]                                    ; $618f: $46
    ld hl, $cde3                                  ; $6190: $21 $e3 $cd
    ld e, [hl]                                    ; $6193: $5e
    inc hl                                        ; $6194: $23
    ld d, [hl]                                    ; $6195: $56
    ld hl, $1069                                  ; $6196: $21 $69 $10
    ldh [$c1], a                                  ; $6199: $e0 $c1
    ld a, $6a                                     ; $619b: $3e $6a
    ldh [$bd], a                                  ; $619d: $e0 $bd
    ld a, $6d                                     ; $619f: $3e $6d
    ldh [$be], a                                  ; $61a1: $e0 $be
    call Call_000_341a                            ; $61a3: $cd $1a $34
    ld a, [$cdeb]                                 ; $61a6: $fa $eb $cd
    ldh [$c1], a                                  ; $61a9: $e0 $c1
    ld a, $be                                     ; $61ab: $3e $be
    ldh [$bd], a                                  ; $61ad: $e0 $bd
    ld a, $6e                                     ; $61af: $3e $6e
    ldh [$be], a                                  ; $61b1: $e0 $be
    call Call_000_341a                            ; $61b3: $cd $1a $34
    ld a, [$cded]                                 ; $61b6: $fa $ed $cd
    ldh [$c1], a                                  ; $61b9: $e0 $c1
    ld a, $be                                     ; $61bb: $3e $be
    ldh [$bd], a                                  ; $61bd: $e0 $bd
    ld a, $6e                                     ; $61bf: $3e $6e
    ldh [$be], a                                  ; $61c1: $e0 $be
    call Call_000_341a                            ; $61c3: $cd $1a $34
    ld a, [$cde9]                                 ; $61c6: $fa $e9 $cd
    add $64                                       ; $61c9: $c6 $64
    cpl                                           ; $61cb: $2f
    ldh [$c1], a                                  ; $61cc: $e0 $c1
    ld a, $be                                     ; $61ce: $3e $be
    ldh [$bd], a                                  ; $61d0: $e0 $bd
    ld a, $6e                                     ; $61d2: $3e $6e
    ldh [$be], a                                  ; $61d4: $e0 $be
    call Call_000_341a                            ; $61d6: $cd $1a $34
    ld a, [$cdec]                                 ; $61d9: $fa $ec $cd
    ldh [$c1], a                                  ; $61dc: $e0 $c1
    ld a, $be                                     ; $61de: $3e $be
    ldh [$bd], a                                  ; $61e0: $e0 $bd
    ld a, $6e                                     ; $61e2: $3e $6e
    ldh [$be], a                                  ; $61e4: $e0 $be
    call Call_000_341a                            ; $61e6: $cd $1a $34
    ld a, [$cdee]                                 ; $61e9: $fa $ee $cd
    ldh [$c1], a                                  ; $61ec: $e0 $c1
    ld a, $be                                     ; $61ee: $3e $be
    ldh [$bd], a                                  ; $61f0: $e0 $bd
    ld a, $6e                                     ; $61f2: $3e $6e
    ldh [$be], a                                  ; $61f4: $e0 $be
    jp Jump_000_341a                              ; $61f6: $c3 $1a $34


jr_004_61f9:
    ldh a, [$d5]                                  ; $61f9: $f0 $d5
    add a                                         ; $61fb: $87
    ld b, a                                       ; $61fc: $47
    add a                                         ; $61fd: $87
    add b                                         ; $61fe: $80
    ldh [$f0], a                                  ; $61ff: $e0 $f0
    ld a, $13                                     ; $6201: $3e $13
    ldh [$f1], a                                  ; $6203: $e0 $f1
    ld a, $06                                     ; $6205: $3e $06
    ldh [$f2], a                                  ; $6207: $e0 $f2
    ld a, $0c                                     ; $6209: $3e $0c
    ldh [$f3], a                                  ; $620b: $e0 $f3
    ld bc, $0000                                  ; $620d: $01 $00 $00
    ld de, $d8ab                                  ; $6210: $11 $ab $d8
    ld hl, $d800                                  ; $6213: $21 $00 $d8
    jp Jump_000_12d8                              ; $6216: $c3 $d8 $12


    ldh a, [$a5]                                  ; $6219: $f0 $a5
    bit 0, a                                      ; $621b: $cb $47
    jr nz, jr_004_623a                            ; $621d: $20 $1b

    bit 1, a                                      ; $621f: $cb $4f
    jr nz, jr_004_6255                            ; $6221: $20 $32

    and $f0                                       ; $6223: $e6 $f0
    ret z                                         ; $6225: $c8

    ld a, $19                                     ; $6226: $3e $19
    call Call_000_393e                            ; $6228: $cd $3e $39
    ldh [$c1], a                                  ; $622b: $e0 $c1
    ld a, $86                                     ; $622d: $3e $86
    ldh [$bd], a                                  ; $622f: $e0 $bd
    ld a, $4f                                     ; $6231: $3e $4f
    ldh [$be], a                                  ; $6233: $e0 $be
    call Call_000_33fe                            ; $6235: $cd $fe $33
    jr jr_004_61f9                                ; $6238: $18 $bf

jr_004_623a:
    ld a, $17                                     ; $623a: $3e $17
    call Call_000_393e                            ; $623c: $cd $3e $39
    call Call_004_6266                            ; $623f: $cd $66 $62
    ldh a, [$d5]                                  ; $6242: $f0 $d5
    ld [$cb8f], a                                 ; $6244: $ea $8f $cb
    inc a                                         ; $6247: $3c
    ld d, $04                                     ; $6248: $16 $04
    ld e, $00                                     ; $624a: $1e $00
    call Call_004_69ae                            ; $624c: $cd $ae $69
    ld a, $13                                     ; $624f: $3e $13
    jp Jump_000_2448                              ; $6251: $c3 $48 $24


    ret                                           ; $6254: $c9


jr_004_6255:
    ld a, $18                                     ; $6255: $3e $18
    call Call_000_393e                            ; $6257: $cd $3e $39
    call Call_004_62fd                            ; $625a: $cd $fd $62
    xor a                                         ; $625d: $af
    ld [$cbe9], a                                 ; $625e: $ea $e9 $cb
    ld a, $10                                     ; $6261: $3e $10
    jp Jump_000_2448                              ; $6263: $c3 $48 $24


Call_004_6266:
    call Call_004_62fd                            ; $6266: $cd $fd $62
    rst $18                                       ; $6269: $df
    ld c, $70                                     ; $626a: $0e $70
    ld e, $14                                     ; $626c: $1e $14
    ld d, $0e                                     ; $626e: $16 $0e
    ld hl, $0080                                  ; $6270: $21 $80 $00
    ld b, $03                                     ; $6273: $06 $03
    call Call_000_13c4                            ; $6275: $cd $c4 $13
    rst $20                                       ; $6278: $e7
    call Call_000_3308                            ; $6279: $cd $08 $33
    rst $18                                       ; $627c: $df
    ld c, $70                                     ; $627d: $0e $70
    ld e, $06                                     ; $627f: $1e $06
    ld d, $0c                                     ; $6281: $16 $0c
    ld hl, $00ad                                  ; $6283: $21 $ad $00
    ld b, $04                                     ; $6286: $06 $04
    call Call_000_13c4                            ; $6288: $cd $c4 $13
    ld hl, $5ba1                                  ; $628b: $21 $a1 $5b
    call Call_000_301f                            ; $628e: $cd $1f $30
    ld a, $30                                     ; $6291: $3e $30
    ld [$c1eb], a                                 ; $6293: $ea $eb $c1
    ld a, $01                                     ; $6296: $3e $01
    ld [$c234], a                                 ; $6298: $ea $34 $c2
    ld hl, $1054                                  ; $629b: $21 $54 $10
    ldh [$c1], a                                  ; $629e: $e0 $c1
    ld a, $1a                                     ; $62a0: $3e $1a
    ldh [$bd], a                                  ; $62a2: $e0 $bd
    ld a, $6e                                     ; $62a4: $3e $6e
    ldh [$be], a                                  ; $62a6: $e0 $be
    call Call_000_341a                            ; $62a8: $cd $1a $34
    ld hl, $105a                                  ; $62ab: $21 $5a $10
    ldh [$c1], a                                  ; $62ae: $e0 $c1
    ld a, $1a                                     ; $62b0: $3e $1a
    ldh [$bd], a                                  ; $62b2: $e0 $bd
    ld a, $6e                                     ; $62b4: $3e $6e
    ldh [$be], a                                  ; $62b6: $e0 $be
    call Call_000_341a                            ; $62b8: $cd $1a $34
    ld hl, $105d                                  ; $62bb: $21 $5d $10
    ldh [$c1], a                                  ; $62be: $e0 $c1
    ld a, $1a                                     ; $62c0: $3e $1a
    ldh [$bd], a                                  ; $62c2: $e0 $bd
    ld a, $6e                                     ; $62c4: $3e $6e
    ldh [$be], a                                  ; $62c6: $e0 $be
    call Call_000_341a                            ; $62c8: $cd $1a $34
    ld hl, $1060                                  ; $62cb: $21 $60 $10
    ldh [$c1], a                                  ; $62ce: $e0 $c1
    ld a, $1a                                     ; $62d0: $3e $1a
    ldh [$bd], a                                  ; $62d2: $e0 $bd
    ld a, $6e                                     ; $62d4: $3e $6e
    ldh [$be], a                                  ; $62d6: $e0 $be
    call Call_000_341a                            ; $62d8: $cd $1a $34
    ld hl, $1063                                  ; $62db: $21 $63 $10
    ldh [$c1], a                                  ; $62de: $e0 $c1
    ld a, $1a                                     ; $62e0: $3e $1a
    ldh [$bd], a                                  ; $62e2: $e0 $bd
    ld a, $6e                                     ; $62e4: $3e $6e
    ldh [$be], a                                  ; $62e6: $e0 $be
    call Call_000_341a                            ; $62e8: $cd $1a $34
    ld hl, $1066                                  ; $62eb: $21 $66 $10
    ldh [$c1], a                                  ; $62ee: $e0 $c1
    ld a, $1a                                     ; $62f0: $3e $1a
    ldh [$bd], a                                  ; $62f2: $e0 $bd
    ld a, $6e                                     ; $62f4: $3e $6e
    ldh [$be], a                                  ; $62f6: $e0 $be
    call Call_000_341a                            ; $62f8: $cd $1a $34
    rst $20                                       ; $62fb: $e7
    ret                                           ; $62fc: $c9


Call_004_62fd:
    ld e, $00                                     ; $62fd: $1e $00
    call Call_004_779e                            ; $62ff: $cd $9e $77
    ld e, $01                                     ; $6302: $1e $01
    call Call_004_779e                            ; $6304: $cd $9e $77
    ld e, $02                                     ; $6307: $1e $02
    call Call_004_779e                            ; $6309: $cd $9e $77
    ld e, $03                                     ; $630c: $1e $03
    call Call_004_779e                            ; $630e: $cd $9e $77
    ld e, $04                                     ; $6311: $1e $04
    jp Jump_004_779e                              ; $6313: $c3 $9e $77


    ld a, $01                                     ; $6316: $3e $01
    ld [$cb86], a                                 ; $6318: $ea $86 $cb
    ld a, $05                                     ; $631b: $3e $05
    ld [$cb87], a                                 ; $631d: $ea $87 $cb
    ld a, $0c                                     ; $6320: $3e $0c
    ld [$cb88], a                                 ; $6322: $ea $88 $cb
    call Call_004_6fbb                            ; $6325: $cd $bb $6f
    xor a                                         ; $6328: $af
    ld [$cbe9], a                                 ; $6329: $ea $e9 $cb
    xor a                                         ; $632c: $af
    ld hl, $480c                                  ; $632d: $21 $0c $48
    ldh [$c1], a                                  ; $6330: $e0 $c1
    ld a, $6f                                     ; $6332: $3e $6f
    ldh [$bd], a                                  ; $6334: $e0 $bd
    ld a, $4f                                     ; $6336: $3e $4f
    ldh [$be], a                                  ; $6338: $e0 $be
    call Call_000_33fe                            ; $633a: $cd $fe $33
    ld a, $ff                                     ; $633d: $3e $ff
    ld [$cb8f], a                                 ; $633f: $ea $8f $cb
    ld a, $0f                                     ; $6342: $3e $0f
    ld d, $04                                     ; $6344: $16 $04
    ld e, $00                                     ; $6346: $1e $00
    call Call_004_69ae                            ; $6348: $cd $ae $69
    ld a, $13                                     ; $634b: $3e $13
    jp Jump_000_2448                              ; $634d: $c3 $48 $24


    ret                                           ; $6350: $c9


    rst $18                                       ; $6351: $df
    ld c, $70                                     ; $6352: $0e $70
    ld e, $0f                                     ; $6354: $1e $0f
    ld d, $0e                                     ; $6356: $16 $0e
    ld hl, $0083                                  ; $6358: $21 $83 $00
    call Call_000_13c2                            ; $635b: $cd $c2 $13
    rst $20                                       ; $635e: $e7
    call Call_000_3308                            ; $635f: $cd $08 $33
    rst $18                                       ; $6362: $df
    ld hl, $5b47                                  ; $6363: $21 $47 $5b
    call Call_000_301f                            ; $6366: $cd $1f $30
    ld a, $7c                                     ; $6369: $3e $7c
    ld [$c1eb], a                                 ; $636b: $ea $eb $c1
    ld a, $01                                     ; $636e: $3e $01
    ld [$c234], a                                 ; $6370: $ea $34 $c2
    ld hl, $11c2                                  ; $6373: $21 $c2 $11
    ldh [$c1], a                                  ; $6376: $e0 $c1
    ld a, $1a                                     ; $6378: $3e $1a
    ldh [$bd], a                                  ; $637a: $e0 $bd
    ld a, $6e                                     ; $637c: $3e $6e
    ldh [$be], a                                  ; $637e: $e0 $be
    call Call_000_341a                            ; $6380: $cd $1a $34
    ld hl, $11e9                                  ; $6383: $21 $e9 $11
    ldh [$c1], a                                  ; $6386: $e0 $c1
    ld a, $1a                                     ; $6388: $3e $1a
    ldh [$bd], a                                  ; $638a: $e0 $bd
    ld a, $6e                                     ; $638c: $3e $6e
    ldh [$be], a                                  ; $638e: $e0 $be
    call Call_000_341a                            ; $6390: $cd $1a $34
    ld hl, $11ec                                  ; $6393: $21 $ec $11
    ldh [$c1], a                                  ; $6396: $e0 $c1
    ld a, $1a                                     ; $6398: $3e $1a
    ldh [$bd], a                                  ; $639a: $e0 $bd
    ld a, $6e                                     ; $639c: $3e $6e
    ldh [$be], a                                  ; $639e: $e0 $be
    call Call_000_341a                            ; $63a0: $cd $1a $34
    call Call_004_63c0                            ; $63a3: $cd $c0 $63
    rst $20                                       ; $63a6: $e7
    ld a, $04                                     ; $63a7: $3e $04
    ld [$cbe9], a                                 ; $63a9: $ea $e9 $cb
    xor a                                         ; $63ac: $af
    ld hl, $48e0                                  ; $63ad: $21 $e0 $48
    ldh [$c1], a                                  ; $63b0: $e0 $c1
    ld a, $6f                                     ; $63b2: $3e $6f
    ldh [$bd], a                                  ; $63b4: $e0 $bd
    ld a, $4f                                     ; $63b6: $3e $4f
    ldh [$be], a                                  ; $63b8: $e0 $be
    call Call_000_33fe                            ; $63ba: $cd $fe $33
    jp Jump_004_77b3                              ; $63bd: $c3 $b3 $77


Call_004_63c0:
    ld a, $05                                     ; $63c0: $3e $05
    call Call_004_778a                            ; $63c2: $cd $8a $77
    ld e, $05                                     ; $63c5: $1e $05
    ld a, [$cb90]                                 ; $63c7: $fa $90 $cb
    ld d, a                                       ; $63ca: $57
    call Call_004_7738                            ; $63cb: $cd $38 $77
    ld e, $05                                     ; $63ce: $1e $05
    ld d, $06                                     ; $63d0: $16 $06
    call Call_004_7757                            ; $63d2: $cd $57 $77
    ld hl, $6e94                                  ; $63d5: $21 $94 $6e
    call Call_000_301f                            ; $63d8: $cd $1f $30
    ld a, [$cb88]                                 ; $63db: $fa $88 $cb
    add a                                         ; $63de: $87
    add a                                         ; $63df: $87
    add a                                         ; $63e0: $87
    ld [$c1eb], a                                 ; $63e1: $ea $eb $c1
    ld a, $02                                     ; $63e4: $3e $02
    ld [$c234], a                                 ; $63e6: $ea $34 $c2
    ld hl, $106c                                  ; $63e9: $21 $6c $10
    ld a, [$cb90]                                 ; $63ec: $fa $90 $cb
    call Call_000_3185                            ; $63ef: $cd $85 $31
    ld de, $0000                                  ; $63f2: $11 $00 $00
    ldh [$c1], a                                  ; $63f5: $e0 $c1
    ld a, $fd                                     ; $63f7: $3e $fd
    ldh [$bd], a                                  ; $63f9: $e0 $bd
    ld a, $6d                                     ; $63fb: $3e $6d
    ldh [$be], a                                  ; $63fd: $e0 $be
    call Call_000_341a                            ; $63ff: $cd $1a $34
    ret                                           ; $6402: $c9


    ldh a, [$a5]                                  ; $6403: $f0 $a5
    bit 0, a                                      ; $6405: $cb $47
    jr nz, jr_004_6422                            ; $6407: $20 $19

    bit 1, a                                      ; $6409: $cb $4f
    jr nz, jr_004_6443                            ; $640b: $20 $36

    and $c0                                       ; $640d: $e6 $c0
    ret z                                         ; $640f: $c8

    ld a, $19                                     ; $6410: $3e $19
    call Call_000_393e                            ; $6412: $cd $3e $39
    ldh [$c1], a                                  ; $6415: $e0 $c1
    ld a, $86                                     ; $6417: $3e $86
    ldh [$bd], a                                  ; $6419: $e0 $bd
    ld a, $4f                                     ; $641b: $3e $4f
    ldh [$be], a                                  ; $641d: $e0 $be
    jp Jump_000_33fe                              ; $641f: $c3 $fe $33


jr_004_6422:
    ld a, $17                                     ; $6422: $3e $17
    call Call_000_393e                            ; $6424: $cd $3e $39
    ldh a, [$d5]                                  ; $6427: $f0 $d5
    or a                                          ; $6429: $b7
    jr nz, jr_004_643c                            ; $642a: $20 $10

    ld a, [$cb90]                                 ; $642c: $fa $90 $cb
    call Call_004_6acf                            ; $642f: $cd $cf $6a
    ld a, l                                       ; $6432: $7d
    or h                                          ; $6433: $b4
    ret z                                         ; $6434: $c8

    ld a, $16                                     ; $6435: $3e $16
    call Call_000_2448                            ; $6437: $cd $48 $24
    jr jr_004_644d                                ; $643a: $18 $11

jr_004_643c:
    ld a, $10                                     ; $643c: $3e $10
    call Call_000_2448                            ; $643e: $cd $48 $24
    jr jr_004_644d                                ; $6441: $18 $0a

jr_004_6443:
    ld a, $18                                     ; $6443: $3e $18
    call Call_000_393e                            ; $6445: $cd $3e $39
    ld a, $13                                     ; $6448: $3e $13
    call Call_000_2448                            ; $644a: $cd $48 $24

jr_004_644d:
    ld e, $05                                     ; $644d: $1e $05
    jp Jump_004_779e                              ; $644f: $c3 $9e $77


    nop                                           ; $6452: $00
    nop                                           ; $6453: $00
    nop                                           ; $6454: $00
    nop                                           ; $6455: $00
    nop                                           ; $6456: $00
    nop                                           ; $6457: $00
    nop                                           ; $6458: $00
    ld [bc], a                                    ; $6459: $02
    nop                                           ; $645a: $00
    ld bc, $0200                                  ; $645b: $01 $00 $02
    nop                                           ; $645e: $00
    inc b                                         ; $645f: $04
    inc bc                                        ; $6460: $03
    inc bc                                        ; $6461: $03
    inc bc                                        ; $6462: $03
    ld bc, $0400                                  ; $6463: $01 $00 $04
    inc bc                                        ; $6466: $03
    ld [$0005], sp                                ; $6467: $08 $05 $00
    nop                                           ; $646a: $00
    ld b, $05                                     ; $646b: $06 $05
    dec bc                                        ; $646d: $0b
    dec b                                         ; $646e: $05
    nop                                           ; $646f: $00
    ld [bc], a                                    ; $6470: $02
    add hl, bc                                    ; $6471: $09
    rlca                                          ; $6472: $07
    dec c                                         ; $6473: $0d
    ld b, $00                                     ; $6474: $06 $00
    ld [bc], a                                    ; $6476: $02
    ld a, [bc]                                    ; $6477: $0a
    rlca                                          ; $6478: $07
    db $10                                        ; $6479: $10
    rlca                                          ; $647a: $07
    nop                                           ; $647b: $00
    nop                                           ; $647c: $00
    nop                                           ; $647d: $00
    nop                                           ; $647e: $00
    nop                                           ; $647f: $00
    nop                                           ; $6480: $00
    nop                                           ; $6481: $00
    ld bc, $0200                                  ; $6482: $01 $00 $02
    ld bc, $0003                                  ; $6485: $01 $03 $00
    dec b                                         ; $6488: $05
    nop                                           ; $6489: $00
    ld b, $03                                     ; $648a: $06 $03
    inc bc                                        ; $648c: $03
    nop                                           ; $648d: $00
    ld a, [bc]                                    ; $648e: $0a
    nop                                           ; $648f: $00
    ld b, $08                                     ; $6490: $06 $08
    dec b                                         ; $6492: $05
    ld bc, $000f                                  ; $6493: $01 $0f $00
    ld a, [bc]                                    ; $6496: $0a
    dec bc                                        ; $6497: $0b
    dec b                                         ; $6498: $05
    nop                                           ; $6499: $00
    inc d                                         ; $649a: $14
    nop                                           ; $649b: $00
    ld a, [bc]                                    ; $649c: $0a
    inc c                                         ; $649d: $0c
    ld b, $ff                                     ; $649e: $06 $ff
    ld d, $00                                     ; $64a0: $16 $00
    inc c                                         ; $64a2: $0c
    db $10                                        ; $64a3: $10
    rlca                                          ; $64a4: $07
    cp $00                                        ; $64a5: $fe $00
    nop                                           ; $64a7: $00
    nop                                           ; $64a8: $00
    nop                                           ; $64a9: $00
    nop                                           ; $64aa: $00
    nop                                           ; $64ab: $00
    nop                                           ; $64ac: $00
    nop                                           ; $64ad: $00
    ld bc, $0101                                  ; $64ae: $01 $01 $01
    inc b                                         ; $64b1: $04
    nop                                           ; $64b2: $00
    nop                                           ; $64b3: $00
    ld [bc], a                                    ; $64b4: $02
    ld [bc], a                                    ; $64b5: $02
    ld [bc], a                                    ; $64b6: $02
    ld bc, $0000                                  ; $64b7: $01 $00 $00
    ld a, [bc]                                    ; $64ba: $0a
    inc b                                         ; $64bb: $04
    ld [$0001], sp                                ; $64bc: $08 $01 $00
    nop                                           ; $64bf: $00
    db $10                                        ; $64c0: $10
    ld b, $0c                                     ; $64c1: $06 $0c
    nop                                           ; $64c3: $00
    dec b                                         ; $64c4: $05
    nop                                           ; $64c5: $00
    dec de                                        ; $64c6: $1b
    ld b, $0f                                     ; $64c7: $06 $0f
    rst $38                                       ; $64c9: $ff
    dec b                                         ; $64ca: $05
    nop                                           ; $64cb: $00
    dec h                                         ; $64cc: $25
    add hl, bc                                    ; $64cd: $09
    ld de, $00fe                                  ; $64ce: $11 $fe $00
    nop                                           ; $64d1: $00
    nop                                           ; $64d2: $00
    nop                                           ; $64d3: $00
    nop                                           ; $64d4: $00
    nop                                           ; $64d5: $00
    inc b                                         ; $64d6: $04
    nop                                           ; $64d7: $00
    ld bc, $0000                                  ; $64d8: $01 $00 $00
    nop                                           ; $64db: $00
    rlca                                          ; $64dc: $07
    ld bc, $0002                                  ; $64dd: $01 $02 $00
    ld bc, $0f00                                  ; $64e0: $01 $00 $0f
    ld bc, $0304                                  ; $64e3: $01 $04 $03
    ld bc, $1600                                  ; $64e6: $01 $00 $16
    ld [bc], a                                    ; $64e9: $02
    ld b, $05                                     ; $64ea: $06 $05
    ld [bc], a                                    ; $64ec: $02
    nop                                           ; $64ed: $00
    ld e, $02                                     ; $64ee: $1e $02
    rlca                                          ; $64f0: $07
    rlca                                          ; $64f1: $07
    dec b                                         ; $64f2: $05
    nop                                           ; $64f3: $00
    inc hl                                        ; $64f4: $23
    inc bc                                        ; $64f5: $03
    rlca                                          ; $64f6: $07
    rlca                                          ; $64f7: $07
    dec b                                         ; $64f8: $05
    nop                                           ; $64f9: $00
    nop                                           ; $64fa: $00
    nop                                           ; $64fb: $00
    nop                                           ; $64fc: $00
    nop                                           ; $64fd: $00
    nop                                           ; $64fe: $00
    nop                                           ; $64ff: $00
    ld [bc], a                                    ; $6500: $02
    ld [bc], a                                    ; $6501: $02
    ld bc, $0000                                  ; $6502: $01 $00 $00
    cp $05                                        ; $6505: $fe $05
    ld [bc], a                                    ; $6507: $02
    inc b                                         ; $6508: $04
    nop                                           ; $6509: $00
    nop                                           ; $650a: $00
    ei                                            ; $650b: $fb
    rlca                                          ; $650c: $07
    dec b                                         ; $650d: $05
    inc b                                         ; $650e: $04
    nop                                           ; $650f: $00
    nop                                           ; $6510: $00
    ei                                            ; $6511: $fb
    rlca                                          ; $6512: $07
    dec b                                         ; $6513: $05
    rlca                                          ; $6514: $07
    nop                                           ; $6515: $00
    nop                                           ; $6516: $00
    ld sp, hl                                     ; $6517: $f9
    ld a, [bc]                                    ; $6518: $0a
    rlca                                          ; $6519: $07
    rlca                                          ; $651a: $07
    nop                                           ; $651b: $00
    nop                                           ; $651c: $00
    or $0a                                        ; $651d: $f6 $0a
    ld a, [bc]                                    ; $651f: $0a
    ld a, [bc]                                    ; $6520: $0a
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    or $04                                        ; $6523: $f6 $04
    nop                                           ; $6525: $00
    inc b                                         ; $6526: $04
    ld bc, $0204                                  ; $6527: $01 $04 $02
    nop                                           ; $652a: $00
    nop                                           ; $652b: $00
    nop                                           ; $652c: $00
    nop                                           ; $652d: $00
    nop                                           ; $652e: $00
    nop                                           ; $652f: $00
    nop                                           ; $6530: $00
    nop                                           ; $6531: $00
    inc c                                         ; $6532: $0c
    nop                                           ; $6533: $00
    ld bc, $014b                  ; $6534: $01 $4b $01
    ret z                                         ; $6537: $c8

    dec bc                                        ; $6538: $0b
    add hl, de                                    ; $6539: $19
    ld a, [bc]                                    ; $653a: $0a
    nop                                           ; $653b: $00
    ld [bc], a                                    ; $653c: $02
    ld c, e                                       ; $653d: $4b
    ld [bc], a                                    ; $653e: $02
    ret z                                         ; $653f: $c8

    nop                                           ; $6540: $00
    nop                                           ; $6541: $00
    dec b                                         ; $6542: $05
    nop                                           ; $6543: $00
    dec b                                         ; $6544: $05
    ld bc, $0205                                  ; $6545: $01 $05 $02
    dec b                                         ; $6548: $05
    inc bc                                        ; $6549: $03
    dec b                                         ; $654a: $05
    inc b                                         ; $654b: $04
    nop                                           ; $654c: $00
    nop                                           ; $654d: $00
    nop                                           ; $654e: $00
    nop                                           ; $654f: $00

    db $09, $02

    add hl, bc                                    ; $6552: $09
    ld bc, $0000                                  ; $6553: $01 $00 $00
    ld b, $00                                     ; $6556: $06 $00

    db $00

    nop                                           ; $6559: $00
    nop                                           ; $655a: $00
    nop                                           ; $655b: $00
    nop                                           ; $655c: $00
    nop                                           ; $655d: $00
    nop                                           ; $655e: $00
    nop                                           ; $655f: $00
    nop                                           ; $6560: $00
    nop                                           ; $6561: $00
    nop                                           ; $6562: $00
    nop                                           ; $6563: $00
    nop                                           ; $6564: $00
    nop                                           ; $6565: $00
    nop                                           ; $6566: $00
    nop                                           ; $6567: $00
    nop                                           ; $6568: $00
    nop                                           ; $6569: $00
    nop                                           ; $656a: $00
    nop                                           ; $656b: $00
    nop                                           ; $656c: $00
    nop                                           ; $656d: $00
    nop                                           ; $656e: $00
    nop                                           ; $656f: $00
    nop                                           ; $6570: $00
    nop                                           ; $6571: $00
    nop                                           ; $6572: $00
    nop                                           ; $6573: $00
    nop                                           ; $6574: $00
    nop                                           ; $6575: $00
    nop                                           ; $6576: $00
    nop                                           ; $6577: $00
    nop                                           ; $6578: $00
    nop                                           ; $6579: $00
    nop                                           ; $657a: $00
    nop                                           ; $657b: $00
    nop                                           ; $657c: $00
    nop                                           ; $657d: $00
    nop                                           ; $657e: $00
    nop                                           ; $657f: $00
    nop                                           ; $6580: $00
    nop                                           ; $6581: $00
    inc bc                                        ; $6582: $03
    rrca                                          ; $6583: $0f
    ld [$0300], sp                                ; $6584: $08 $00 $03
    ld a, [bc]                                    ; $6587: $0a
    inc bc                                        ; $6588: $03
    add hl, de                                    ; $6589: $19
    inc bc                                        ; $658a: $03
    inc d                                         ; $658b: $14
    inc bc                                        ; $658c: $03
    dec b                                         ; $658d: $05
    nop                                           ; $658e: $00
    nop                                           ; $658f: $00
    nop                                           ; $6590: $00
    nop                                           ; $6591: $00
    nop                                           ; $6592: $00
    nop                                           ; $6593: $00
    nop                                           ; $6594: $00
    nop                                           ; $6595: $00
    nop                                           ; $6596: $00
    nop                                           ; $6597: $00
    nop                                           ; $6598: $00
    nop                                           ; $6599: $00
    nop                                           ; $659a: $00
    nop                                           ; $659b: $00
    nop                                           ; $659c: $00
    nop                                           ; $659d: $00
    nop                                           ; $659e: $00
    nop                                           ; $659f: $00
    nop                                           ; $65a0: $00
    nop                                           ; $65a1: $00
    nop                                           ; $65a2: $00
    nop                                           ; $65a3: $00
    nop                                           ; $65a4: $00
    nop                                           ; $65a5: $00
    nop                                           ; $65a6: $00
    nop                                           ; $65a7: $00
    nop                                           ; $65a8: $00
    nop                                           ; $65a9: $00
    nop                                           ; $65aa: $00
    nop                                           ; $65ab: $00
    nop                                           ; $65ac: $00
    nop                                           ; $65ad: $00
    nop                                           ; $65ae: $00
    nop                                           ; $65af: $00
    add hl, bc                                    ; $65b0: $09
    nop                                           ; $65b1: $00
    nop                                           ; $65b2: $00
    nop                                           ; $65b3: $00
    nop                                           ; $65b4: $00
    nop                                           ; $65b5: $00
    nop                                           ; $65b6: $00
    nop                                           ; $65b7: $00
    nop                                           ; $65b8: $00
    nop                                           ; $65b9: $00
    rlca                                          ; $65ba: $07
    nop                                           ; $65bb: $00
    nop                                           ; $65bc: $00
    nop                                           ; $65bd: $00
    nop                                           ; $65be: $00
    nop                                           ; $65bf: $00
    ld a, $00                                     ; $65c0: $3e $00
    ld l, [hl]                                    ; $65c2: $6e
    nop                                           ; $65c3: $00
    add sp, $03                                   ; $65c4: $e8 $03
    adc b                                         ; $65c6: $88
    inc de                                        ; $65c7: $13
    db $10                                        ; $65c8: $10
    daa                                           ; $65c9: $27
    nop                                           ; $65ca: $00
    nop                                           ; $65cb: $00
    nop                                           ; $65cc: $00
    nop                                           ; $65cd: $00
    ld a, [hl-]                                   ; $65ce: $3a
    nop                                           ; $65cf: $00
    ld a, l                                       ; $65d0: $7d
    nop                                           ; $65d1: $00
    ret nc                                        ; $65d2: $d0

    rlca                                          ; $65d3: $07
    ld b, b                                       ; $65d4: $40
    rra                                           ; $65d5: $1f
    jr nz, jr_004_6626                            ; $65d6: $20 $4e

    nop                                           ; $65d8: $00
    nop                                           ; $65d9: $00
    nop                                           ; $65da: $00
    nop                                           ; $65db: $00
    ld d, b                                       ; $65dc: $50
    nop                                           ; $65dd: $00
    sub [hl]                                      ; $65de: $96
    nop                                           ; $65df: $00
    call c, $9805                                 ; $65e0: $dc $05 $98
    ld a, [hl-]                                   ; $65e3: $3a
    ld d, b                                       ; $65e4: $50
    jp RST_00                                     ; $65e5: $c3 $00 $00


    nop                                           ; $65e8: $00
    nop                                           ; $65e9: $00
    inc bc                                        ; $65ea: $03
    nop                                           ; $65eb: $00
    ld h, h                                       ; $65ec: $64
    nop                                           ; $65ed: $00
    jr nz, jr_004_65f3                            ; $65ee: $20 $03

    cp b                                          ; $65f0: $b8
    dec bc                                        ; $65f1: $0b
    ld b, b                                       ; $65f2: $40

jr_004_65f3:
    rra                                           ; $65f3: $1f
    nop                                           ; $65f4: $00
    nop                                           ; $65f5: $00
    nop                                           ; $65f6: $00
    nop                                           ; $65f7: $00
    dec b                                         ; $65f8: $05
    nop                                           ; $65f9: $00
    ld e, d                                       ; $65fa: $5a
    nop                                           ; $65fb: $00
    jp nz, $3401                                  ; $65fc: $c2 $01 $34

    ld [$1770], sp                                ; $65ff: $08 $70 $17
    nop                                           ; $6602: $00
    nop                                           ; $6603: $00
    nop                                           ; $6604: $00
    nop                                           ; $6605: $00
    nop                                           ; $6606: $00
    nop                                           ; $6607: $00
    nop                                           ; $6608: $00
    nop                                           ; $6609: $00
    ld [hl+], a                                   ; $660a: $22
    nop                                           ; $660b: $00
    ld a, [bc]                                    ; $660c: $0a
    nop                                           ; $660d: $00
    ld bc, $0100                                  ; $660e: $01 $00 $01
    nop                                           ; $6611: $00
    sub [hl]                                      ; $6612: $96
    nop                                           ; $6613: $00
    sub [hl]                                      ; $6614: $96
    nop                                           ; $6615: $00
    inc l                                         ; $6616: $2c
    ld bc, $0064                                  ; $6617: $01 $64 $00
    ld h, h                                       ; $661a: $64
    nop                                           ; $661b: $00
    ret z                                         ; $661c: $c8

    nop                                           ; $661d: $00
    sub b                                         ; $661e: $90
    ld bc, $000a                                  ; $661f: $01 $0a $00
    inc sp                                        ; $6622: $33
    nop                                           ; $6623: $00
    ld h, l                                       ; $6624: $65
    nop                                           ; $6625: $00

jr_004_6626:
    sub a                                         ; $6626: $97
    nop                                           ; $6627: $00
    ei                                            ; $6628: $fb
    nop                                           ; $6629: $00
    dec l                                         ; $662a: $2d
    ld bc, $0000                                  ; $662b: $01 $00 $00
    nop                                           ; $662e: $00
    nop                                           ; $662f: $00
    nop                                           ; $6630: $00
    nop                                           ; $6631: $00
    nop                                           ; $6632: $00
    nop                                           ; $6633: $00
    nop                                           ; $6634: $00
    nop                                           ; $6635: $00
    nop                                           ; $6636: $00
    nop                                           ; $6637: $00
    nop                                           ; $6638: $00
    nop                                           ; $6639: $00
    nop                                           ; $663a: $00
    nop                                           ; $663b: $00
    nop                                           ; $663c: $00
    nop                                           ; $663d: $00
    nop                                           ; $663e: $00
    nop                                           ; $663f: $00
    nop                                           ; $6640: $00
    nop                                           ; $6641: $00
    inc bc                                        ; $6642: $03
    nop                                           ; $6643: $00
    inc bc                                        ; $6644: $03
    nop                                           ; $6645: $00
    inc bc                                        ; $6646: $03
    nop                                           ; $6647: $00
    inc bc                                        ; $6648: $03
    nop                                           ; $6649: $00
    inc bc                                        ; $664a: $03
    nop                                           ; $664b: $00
    inc bc                                        ; $664c: $03
    nop                                           ; $664d: $00
    inc bc                                        ; $664e: $03
    nop                                           ; $664f: $00
    add hl, bc                                    ; $6650: $09
    nop                                           ; $6651: $00
    dec bc                                        ; $6652: $0b
    nop                                           ; $6653: $00
    add hl, bc                                    ; $6654: $09
    nop                                           ; $6655: $00
    inc c                                         ; $6656: $0c
    nop                                           ; $6657: $00
    add hl, bc                                    ; $6658: $09
    nop                                           ; $6659: $00
    inc bc                                        ; $665a: $03
    nop                                           ; $665b: $00
    ld [hl-], a                                   ; $665c: $32
    nop                                           ; $665d: $00
    inc bc                                        ; $665e: $03
    nop                                           ; $665f: $00
    inc bc                                        ; $6660: $03
    nop                                           ; $6661: $00
    ld b, $00                                     ; $6662: $06 $00
    ld a, [bc]                                    ; $6664: $0a
    nop                                           ; $6665: $00
    inc b                                         ; $6666: $04
    nop                                           ; $6667: $00
    ld a, [bc]                                    ; $6668: $0a
    nop                                           ; $6669: $00
    ld [$0200], sp                                ; $666a: $08 $00 $02
    nop                                           ; $666d: $00
    nop                                           ; $666e: $00
    nop                                           ; $666f: $00
    nop                                           ; $6670: $00
    nop                                           ; $6671: $00
    nop                                           ; $6672: $00
    nop                                           ; $6673: $00
    nop                                           ; $6674: $00
    nop                                           ; $6675: $00
    nop                                           ; $6676: $00
    nop                                           ; $6677: $00
    nop                                           ; $6678: $00
    nop                                           ; $6679: $00
    nop                                           ; $667a: $00
    nop                                           ; $667b: $00
    nop                                           ; $667c: $00
    nop                                           ; $667d: $00
    nop                                           ; $667e: $00
    nop                                           ; $667f: $00
    nop                                           ; $6680: $00
    nop                                           ; $6681: $00
    nop                                           ; $6682: $00
    nop                                           ; $6683: $00
    nop                                           ; $6684: $00
    nop                                           ; $6685: $00
    nop                                           ; $6686: $00
    nop                                           ; $6687: $00
    nop                                           ; $6688: $00
    nop                                           ; $6689: $00
    nop                                           ; $668a: $00
    nop                                           ; $668b: $00
    nop                                           ; $668c: $00
    nop                                           ; $668d: $00
    nop                                           ; $668e: $00
    nop                                           ; $668f: $00
    nop                                           ; $6690: $00
    nop                                           ; $6691: $00
    nop                                           ; $6692: $00
    nop                                           ; $6693: $00
    nop                                           ; $6694: $00
    nop                                           ; $6695: $00
    nop                                           ; $6696: $00
    nop                                           ; $6697: $00
    nop                                           ; $6698: $00
    nop                                           ; $6699: $00
    nop                                           ; $669a: $00
    nop                                           ; $669b: $00
    nop                                           ; $669c: $00
    nop                                           ; $669d: $00
    nop                                           ; $669e: $00
    nop                                           ; $669f: $00
    nop                                           ; $66a0: $00
    nop                                           ; $66a1: $00
    ld d, e                                       ; $66a2: $53
    nop                                           ; $66a3: $00
    xor $02                                       ; $66a4: $ee $02
    and [hl]                                      ; $66a6: $a6
    ld c, $4c                                     ; $66a7: $0e $4c
    dec e                                         ; $66a9: $1d
    nop                                           ; $66aa: $00
    nop                                           ; $66ab: $00
    nop                                           ; $66ac: $00
    nop                                           ; $66ad: $00
    nop                                           ; $66ae: $00
    nop                                           ; $66af: $00
    ld e, [hl]                                    ; $66b0: $5e
    nop                                           ; $66b1: $00
    call c, $7005                                 ; $66b2: $dc $05 $70
    rla                                           ; $66b5: $17
    sbc b                                         ; $66b6: $98
    ld a, [hl-]                                   ; $66b7: $3a
    nop                                           ; $66b8: $00
    nop                                           ; $66b9: $00
    nop                                           ; $66ba: $00
    nop                                           ; $66bb: $00
    nop                                           ; $66bc: $00
    nop                                           ; $66bd: $00
    nop                                           ; $66be: $00
    nop                                           ; $66bf: $00
    ld h, l                                       ; $66c0: $65
    inc b                                         ; $66c1: $04
    ld a, [c]                                     ; $66c2: $f2
    dec hl                                        ; $66c3: $2b
    ld a, h                                       ; $66c4: $7c
    sub d                                         ; $66c5: $92
    nop                                           ; $66c6: $00
    nop                                           ; $66c7: $00
    nop                                           ; $66c8: $00
    nop                                           ; $66c9: $00
    ld [bc], a                                    ; $66ca: $02
    nop                                           ; $66cb: $00
    ld c, e                                       ; $66cc: $4b
    nop                                           ; $66cd: $00
    ld e, b                                       ; $66ce: $58
    ld [bc], a                                    ; $66cf: $02
    jp z, Jump_004_7008                           ; $66d0: $ca $08 $70

    rla                                           ; $66d3: $17
    nop                                           ; $66d4: $00
    nop                                           ; $66d5: $00
    nop                                           ; $66d6: $00
    nop                                           ; $66d7: $00
    inc b                                         ; $66d8: $04
    nop                                           ; $66d9: $00
    ld b, h                                       ; $66da: $44
    nop                                           ; $66db: $00
    ld d, d                                       ; $66dc: $52
    ld bc, $0627                                  ; $66dd: $01 $27 $06
    sub h                                         ; $66e0: $94
    ld de, $0000                                  ; $66e1: $11 $00 $00
    nop                                           ; $66e4: $00
    nop                                           ; $66e5: $00
    nop                                           ; $66e6: $00
    nop                                           ; $66e7: $00
    nop                                           ; $66e8: $00
    nop                                           ; $66e9: $00
    ld a, [de]                                    ; $66ea: $1a
    nop                                           ; $66eb: $00
    nop                                           ; $66ec: $00
    nop                                           ; $66ed: $00
    ld bc, $0000                                  ; $66ee: $01 $00 $00
    nop                                           ; $66f1: $00
    dec b                                         ; $66f2: $05
    nop                                           ; $66f3: $00
    dec b                                         ; $66f4: $05
    nop                                           ; $66f5: $00
    dec b                                         ; $66f6: $05
    nop                                           ; $66f7: $00
    dec b                                         ; $66f8: $05
    nop                                           ; $66f9: $00
    dec b                                         ; $66fa: $05
    nop                                           ; $66fb: $00
    dec b                                         ; $66fc: $05
    nop                                           ; $66fd: $00
    dec b                                         ; $66fe: $05
    nop                                           ; $66ff: $00
    nop                                           ; $6700: $00
    nop                                           ; $6701: $00
    nop                                           ; $6702: $00
    nop                                           ; $6703: $00
    nop                                           ; $6704: $00
    nop                                           ; $6705: $00
    ld [hl], c                                    ; $6706: $71
    nop                                           ; $6707: $00
    cp h                                          ; $6708: $bc
    nop                                           ; $6709: $00
    ld [c], a                                     ; $670a: $e2
    nop                                           ; $670b: $00
    nop                                           ; $670c: $00
    nop                                           ; $670d: $00
    nop                                           ; $670e: $00
    nop                                           ; $670f: $00
    nop                                           ; $6710: $00
    nop                                           ; $6711: $00
    nop                                           ; $6712: $00
    nop                                           ; $6713: $00
    nop                                           ; $6714: $00
    nop                                           ; $6715: $00
    nop                                           ; $6716: $00
    nop                                           ; $6717: $00
    nop                                           ; $6718: $00
    nop                                           ; $6719: $00
    nop                                           ; $671a: $00
    nop                                           ; $671b: $00
    nop                                           ; $671c: $00
    nop                                           ; $671d: $00
    nop                                           ; $671e: $00
    nop                                           ; $671f: $00
    nop                                           ; $6720: $00
    nop                                           ; $6721: $00
    ld [bc], a                                    ; $6722: $02
    nop                                           ; $6723: $00
    ld [bc], a                                    ; $6724: $02
    nop                                           ; $6725: $00
    ld [bc], a                                    ; $6726: $02
    nop                                           ; $6727: $00
    ld [bc], a                                    ; $6728: $02
    nop                                           ; $6729: $00
    ld [bc], a                                    ; $672a: $02
    nop                                           ; $672b: $00
    ld [bc], a                                    ; $672c: $02
    nop                                           ; $672d: $00
    ld [bc], a                                    ; $672e: $02
    nop                                           ; $672f: $00
    rlca                                          ; $6730: $07
    nop                                           ; $6731: $00
    ld [$0700], sp                                ; $6732: $08 $00 $07
    nop                                           ; $6735: $00
    add hl, bc                                    ; $6736: $09
    nop                                           ; $6737: $00
    rlca                                          ; $6738: $07
    nop                                           ; $6739: $00
    ld [bc], a                                    ; $673a: $02
    nop                                           ; $673b: $00
    ld h, $00                                     ; $673c: $26 $00
    ld [bc], a                                    ; $673e: $02
    nop                                           ; $673f: $00
    ld [bc], a                                    ; $6740: $02
    nop                                           ; $6741: $00
    ld bc, $0200                                  ; $6742: $01 $00 $02
    nop                                           ; $6745: $00
    ld bc, $0200                                  ; $6746: $01 $00 $02
    nop                                           ; $6749: $00
    ld bc, $0100                                  ; $674a: $01 $00 $01
    nop                                           ; $674d: $00
    nop                                           ; $674e: $00
    nop                                           ; $674f: $00
    nop                                           ; $6750: $00
    nop                                           ; $6751: $00
    nop                                           ; $6752: $00
    nop                                           ; $6753: $00
    nop                                           ; $6754: $00
    nop                                           ; $6755: $00
    nop                                           ; $6756: $00
    nop                                           ; $6757: $00
    nop                                           ; $6758: $00
    nop                                           ; $6759: $00
    nop                                           ; $675a: $00
    nop                                           ; $675b: $00
    nop                                           ; $675c: $00
    nop                                           ; $675d: $00
    nop                                           ; $675e: $00
    nop                                           ; $675f: $00
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    nop                                           ; $6762: $00
    nop                                           ; $6763: $00
    nop                                           ; $6764: $00
    nop                                           ; $6765: $00
    nop                                           ; $6766: $00
    nop                                           ; $6767: $00
    nop                                           ; $6768: $00
    nop                                           ; $6769: $00
    nop                                           ; $676a: $00
    nop                                           ; $676b: $00
    nop                                           ; $676c: $00
    nop                                           ; $676d: $00
    nop                                           ; $676e: $00
    nop                                           ; $676f: $00
    nop                                           ; $6770: $00
    nop                                           ; $6771: $00
    nop                                           ; $6772: $00
    nop                                           ; $6773: $00
    nop                                           ; $6774: $00
    nop                                           ; $6775: $00
    nop                                           ; $6776: $00
    nop                                           ; $6777: $00
    nop                                           ; $6778: $00
    nop                                           ; $6779: $00
    nop                                           ; $677a: $00
    nop                                           ; $677b: $00
    nop                                           ; $677c: $00
    nop                                           ; $677d: $00
    nop                                           ; $677e: $00
    nop                                           ; $677f: $00
    nop                                           ; $6780: $00
    nop                                           ; $6781: $00
    nop                                           ; $6782: $00
    nop                                           ; $6783: $00
    nop                                           ; $6784: $00
    nop                                           ; $6785: $00
    nop                                           ; $6786: $00
    nop                                           ; $6787: $00
    nop                                           ; $6788: $00
    nop                                           ; $6789: $00
    nop                                           ; $678a: $00
    nop                                           ; $678b: $00
    nop                                           ; $678c: $00
    nop                                           ; $678d: $00
    nop                                           ; $678e: $00
    nop                                           ; $678f: $00
    nop                                           ; $6790: $00
    nop                                           ; $6791: $00
    nop                                           ; $6792: $00
    nop                                           ; $6793: $00
    nop                                           ; $6794: $00
    nop                                           ; $6795: $00
    nop                                           ; $6796: $00
    nop                                           ; $6797: $00
    nop                                           ; $6798: $00
    nop                                           ; $6799: $00
    nop                                           ; $679a: $00
    nop                                           ; $679b: $00
    nop                                           ; $679c: $00
    nop                                           ; $679d: $00
    nop                                           ; $679e: $00
    nop                                           ; $679f: $00
    nop                                           ; $67a0: $00
    nop                                           ; $67a1: $00
    nop                                           ; $67a2: $00
    nop                                           ; $67a3: $00
    nop                                           ; $67a4: $00
    nop                                           ; $67a5: $00
    nop                                           ; $67a6: $00
    nop                                           ; $67a7: $00
    ld bc, $0101                                  ; $67a8: $01 $01 $01
    ld bc, $0101                                  ; $67ab: $01 $01 $01
    ld bc, $0000                                  ; $67ae: $01 $00 $00
    nop                                           ; $67b1: $00
    nop                                           ; $67b2: $00
    nop                                           ; $67b3: $00
    nop                                           ; $67b4: $00
    nop                                           ; $67b5: $00
    nop                                           ; $67b6: $00
    nop                                           ; $67b7: $00
    nop                                           ; $67b8: $00
    nop                                           ; $67b9: $00
    ld bc, $0000                                  ; $67ba: $01 $00 $00
    nop                                           ; $67bd: $00
    nop                                           ; $67be: $00
    nop                                           ; $67bf: $00
    nop                                           ; $67c0: $00
    nop                                           ; $67c1: $00
    nop                                           ; $67c2: $00
    nop                                           ; $67c3: $00
    nop                                           ; $67c4: $00
    nop                                           ; $67c5: $00
    nop                                           ; $67c6: $00
    nop                                           ; $67c7: $00
    nop                                           ; $67c8: $00
    nop                                           ; $67c9: $00
    nop                                           ; $67ca: $00
    nop                                           ; $67cb: $00
    nop                                           ; $67cc: $00
    nop                                           ; $67cd: $00
    nop                                           ; $67ce: $00
    nop                                           ; $67cf: $00
    ld bc, $0100                                  ; $67d0: $01 $00 $01
    ld bc, $0101                                  ; $67d3: $01 $01 $01
    nop                                           ; $67d6: $00
    nop                                           ; $67d7: $00
    nop                                           ; $67d8: $00
    nop                                           ; $67d9: $00
    nop                                           ; $67da: $00
    nop                                           ; $67db: $00
    nop                                           ; $67dc: $00
    nop                                           ; $67dd: $00
    nop                                           ; $67de: $00
    nop                                           ; $67df: $00
    nop                                           ; $67e0: $00
    nop                                           ; $67e1: $00
    nop                                           ; $67e2: $00
    nop                                           ; $67e3: $00
    nop                                           ; $67e4: $00
    nop                                           ; $67e5: $00
    nop                                           ; $67e6: $00
    nop                                           ; $67e7: $00
    nop                                           ; $67e8: $00
    nop                                           ; $67e9: $00
    nop                                           ; $67ea: $00
    nop                                           ; $67eb: $00
    nop                                           ; $67ec: $00
    nop                                           ; $67ed: $00
    nop                                           ; $67ee: $00
    db $fe                                        ; $67ef: $fe

    db $00, $06

    rlca                                          ; $67f2: $07
    dec c                                         ; $67f3: $0d
    ld c, $14                                     ; $67f4: $0e $14
    dec d                                         ; $67f6: $15
    dec de                                        ; $67f7: $1b
    inc e                                         ; $67f8: $1c
    ld [hl+], a                                   ; $67f9: $22
    inc hl                                        ; $67fa: $23
    add hl, hl                                    ; $67fb: $29
    ld a, [hl+]                                   ; $67fc: $2a
    ld sp, $3632                                  ; $67fd: $31 $32 $36
    scf                                           ; $6800: $37
    inc a                                         ; $6801: $3c
    dec a                                         ; $6802: $3d
    dec a                                         ; $6803: $3d
    ld a, $41                                     ; $6804: $3e $41
    ld b, d                                       ; $6806: $42
    ld d, c                                       ; $6807: $51
    ld d, d                                       ; $6808: $52
    ld d, a                                       ; $6809: $57
    ld e, b                                       ; $680a: $58
    db $fe                                        ; $680b: $fe

    db $23, $fe

    nop                                           ; $680e: $00
    ld [hl+], a                                   ; $680f: $22
    rla                                           ; $6810: $17
    db $28                                        ; $6811: $28

    db $2a

    ldh a, [rSVBK]                                ; $6813: $f0 $70
    push af                                       ; $6815: $f5
    ld a, $06                                     ; $6816: $3e $06
    ldh [rSVBK], a                                ; $6818: $e0 $70
    ld a, $ff                                     ; $681a: $3e $ff
    ld bc, $0005                                  ; $681c: $01 $05 $00
    ld hl, $d100                                  ; $681f: $21 $00 $d1
    call Call_000_112f                            ; $6822: $cd $2f $11
    pop af                                        ; $6825: $f1
    ldh [rSVBK], a                                ; $6826: $e0 $70
    ret                                           ; $6828: $c9


    ldh a, [rSVBK]                                ; $6829: $f0 $70
    push af                                       ; $682b: $f5
    ld a, $06                                     ; $682c: $3e $06
    ldh [rSVBK], a                                ; $682e: $e0 $70
    xor a                                         ; $6830: $af
    ld bc, $0100                                  ; $6831: $01 $00 $01
    ld hl, $d000                                  ; $6834: $21 $00 $d0
    call Call_000_112f                            ; $6837: $cd $2f $11
    pop af                                        ; $683a: $f1
    ldh [rSVBK], a                                ; $683b: $e0 $70

jr_004_683d:
    ret                                           ; $683d: $c9


    nop                                           ; $683e: $00
    rlca                                          ; $683f: $07
    ld c, $15                                     ; $6840: $0e $15
    inc e                                         ; $6842: $1c

Call_004_6843:
    ldh [$bc], a                                  ; $6843: $e0 $bc
    ldh a, [rSVBK]                                ; $6845: $f0 $70
    push af                                       ; $6847: $f5
    ld a, $06                                     ; $6848: $3e $06
    ldh [rSVBK], a                                ; $684a: $e0 $70
    ldh a, [$bc]                                  ; $684c: $f0 $bc
    ld a, b                                       ; $684e: $78
    ld hl, $683e                                  ; $684f: $21 $3e $68
    rst $08                                       ; $6852: $cf
    cp c                                          ; $6853: $b9
    jr nz, jr_004_686f                            ; $6854: $20 $19

    ld a, b                                       ; $6856: $78
    ld hl, $d100                                  ; $6857: $21 $00 $d1
    rst $08                                       ; $685a: $cf
    push hl                                       ; $685b: $e5
    call Call_004_6a4b                            ; $685c: $cd $4b $6a
    ld a, c                                       ; $685f: $79
    call Call_004_6a7f                            ; $6860: $cd $7f $6a
    pop hl                                        ; $6863: $e1
    ld a, $ff                                     ; $6864: $3e $ff
    ld [hl], a                                    ; $6866: $77
    ldh [$bc], a                                  ; $6867: $e0 $bc
    pop af                                        ; $6869: $f1
    ldh [rSVBK], a                                ; $686a: $e0 $70
    ldh a, [$bc]                                  ; $686c: $f0 $bc
    ret                                           ; $686e: $c9


jr_004_686f:
    ld a, c                                       ; $686f: $79
    push hl                                       ; $6870: $e5
    call Call_004_689e                            ; $6871: $cd $9e $68
    pop hl                                        ; $6874: $e1
    or a                                          ; $6875: $b7
    ret z                                         ; $6876: $c8

    ld a, [hl]                                    ; $6877: $7e
    ld hl, $d000                                  ; $6878: $21 $00 $d0
    rst $08                                       ; $687b: $cf
    ld a, $01                                     ; $687c: $3e $01
    ld [hl], a                                    ; $687e: $77
    ld a, c                                       ; $687f: $79
    call Call_004_6a7f                            ; $6880: $cd $7f $6a
    ld a, b                                       ; $6883: $78
    ld hl, $d100                                  ; $6884: $21 $00 $d1
    rst $08                                       ; $6887: $cf
    cp $ff                                        ; $6888: $fe $ff
    jr z, jr_004_6890                             ; $688a: $28 $04

    ld a, [hl]                                    ; $688c: $7e
    call Call_004_6a4b                            ; $688d: $cd $4b $6a

jr_004_6890:
    ld a, b                                       ; $6890: $78
    ld hl, $d100                                  ; $6891: $21 $00 $d1
    rst $08                                       ; $6894: $cf
    ld [hl], c                                    ; $6895: $71
    ldh [$bc], a                                  ; $6896: $e0 $bc
    pop af                                        ; $6898: $f1
    ldh [rSVBK], a                                ; $6899: $e0 $70
    ldh a, [$bc]                                  ; $689b: $f0 $bc
    ret                                           ; $689d: $c9


Call_004_689e:
    ldh [$bc], a                                  ; $689e: $e0 $bc
    ldh a, [rSVBK]                                ; $68a0: $f0 $70
    push af                                       ; $68a2: $f5
    ld a, $06                                     ; $68a3: $3e $06
    ldh [rSVBK], a                                ; $68a5: $e0 $70
    ldh a, [$bc]                                  ; $68a7: $f0 $bc
    ld hl, $d000                                  ; $68a9: $21 $00 $d0
    rst $08                                       ; $68ac: $cf
    ldh [$bc], a                                  ; $68ad: $e0 $bc
    pop af                                        ; $68af: $f1
    ldh [rSVBK], a                                ; $68b0: $e0 $70
    ldh a, [$bc]                                  ; $68b2: $f0 $bc
    ret                                           ; $68b4: $c9


    ld b, $00                                     ; $68b5: $06 $00
    ld c, $05                                     ; $68b7: $0e $05

jr_004_68b9:
    call Call_004_68c8                            ; $68b9: $cd $c8 $68
    cp $ff                                        ; $68bc: $fe $ff
    call nz, Call_004_68dc                        ; $68be: $c4 $dc $68
    inc b                                         ; $68c1: $04
    ld a, b                                       ; $68c2: $78
    cp c                                          ; $68c3: $b9
    jr nz, jr_004_68b9                            ; $68c4: $20 $f3

    jr jr_004_6907                                ; $68c6: $18 $3f

Call_004_68c8:
    ldh a, [rSVBK]                                ; $68c8: $f0 $70
    push af                                       ; $68ca: $f5
    ld a, $06                                     ; $68cb: $3e $06
    ldh [rSVBK], a                                ; $68cd: $e0 $70
    ld hl, $d100                                  ; $68cf: $21 $00 $d1
    ld a, b                                       ; $68d2: $78
    rst $08                                       ; $68d3: $cf
    ldh [$bc], a                                  ; $68d4: $e0 $bc
    pop af                                        ; $68d6: $f1
    ldh [rSVBK], a                                ; $68d7: $e0 $70
    ldh a, [$bc]                                  ; $68d9: $f0 $bc
    ret                                           ; $68db: $c9


Call_004_68dc:
    ld hl, $6452                                  ; $68dc: $21 $52 $64
    call Call_000_3171                            ; $68df: $cd $71 $31
    ld de, $cde1                                  ; $68e2: $11 $e1 $cd
    call Call_004_6933                            ; $68e5: $cd $33 $69
    ld de, $cdeb                                  ; $68e8: $11 $eb $cd
    call Call_004_691e                            ; $68eb: $cd $1e $69
    ld de, $cded                                  ; $68ee: $11 $ed $cd
    call Call_004_691e                            ; $68f1: $cd $1e $69
    ld de, $cdec                                  ; $68f4: $11 $ec $cd
    call Call_004_691e                            ; $68f7: $cd $1e $69
    ld de, $cdee                                  ; $68fa: $11 $ee $cd
    call Call_004_691e                            ; $68fd: $cd $1e $69
    ld de, $cde9                                  ; $6900: $11 $e9 $cd
    call Call_004_6923                            ; $6903: $cd $23 $69
    ret                                           ; $6906: $c9


jr_004_6907:
    ld hl, $cde1                                  ; $6907: $21 $e1 $cd
    ld e, [hl]                                    ; $690a: $5e
    inc hl                                        ; $690b: $23
    ld d, [hl]                                    ; $690c: $56
    ld hl, $cde5                                  ; $690d: $21 $e5 $cd
    ld a, [hl+]                                   ; $6910: $2a
    ld h, [hl]                                    ; $6911: $66
    ld l, a                                       ; $6912: $6f
    rst $10                                       ; $6913: $d7
    ret nc                                        ; $6914: $d0

    ld a, e                                       ; $6915: $7b
    ld [$cde5], a                                 ; $6916: $ea $e5 $cd
    ld a, d                                       ; $6919: $7a
    ld [$cde6], a                                 ; $691a: $ea $e6 $cd
    ret                                           ; $691d: $c9


Call_004_691e:
    ld a, [de]                                    ; $691e: $1a
    add [hl]                                      ; $691f: $86
    ld [de], a                                    ; $6920: $12
    inc hl                                        ; $6921: $23
    ret                                           ; $6922: $c9


Call_004_6923:
    ld a, [de]                                    ; $6923: $1a
    add $64                                       ; $6924: $c6 $64
    cpl                                           ; $6926: $2f
    add [hl]                                      ; $6927: $86
    cp $a0                                        ; $6928: $fe $a0
    jr c, jr_004_692d                             ; $692a: $38 $01

    xor a                                         ; $692c: $af

jr_004_692d:
    cpl                                           ; $692d: $2f
    sub $64                                       ; $692e: $d6 $64
    ld [de], a                                    ; $6930: $12
    inc hl                                        ; $6931: $23
    ret                                           ; $6932: $c9


Call_004_6933:
    ld a, [de]                                    ; $6933: $1a
    add [hl]                                      ; $6934: $86
    ld [de], a                                    ; $6935: $12
    inc de                                        ; $6936: $13
    inc hl                                        ; $6937: $23
    ld a, [de]                                    ; $6938: $1a
    adc $00                                       ; $6939: $ce $00
    ld [de], a                                    ; $693b: $12
    dec de                                        ; $693c: $1b
    ret                                           ; $693d: $c9


Call_004_693e:
    ld hl, $67ee                                  ; $693e: $21 $ee $67
    call Call_000_318c                            ; $6941: $cd $8c $31
    ld a, [hl+]                                   ; $6944: $2a
    ld b, a                                       ; $6945: $47
    ld c, [hl]                                    ; $6946: $4e
    ldh a, [rSVBK]                                ; $6947: $f0 $70
    push af                                       ; $6949: $f5
    ld a, $06                                     ; $694a: $3e $06
    ldh [rSVBK], a                                ; $694c: $e0 $70
    ld hl, $d000                                  ; $694e: $21 $00 $d0
    ld a, b                                       ; $6951: $78
    rst $08                                       ; $6952: $cf

jr_004_6953:
    ld a, [hl+]                                   ; $6953: $2a
    or a                                          ; $6954: $b7
    jr z, jr_004_695d                             ; $6955: $28 $06

    pop af                                        ; $6957: $f1
    ldh [rSVBK], a                                ; $6958: $e0 $70
    ld a, $01                                     ; $695a: $3e $01
    ret                                           ; $695c: $c9


jr_004_695d:
    ld a, b                                       ; $695d: $78
    cp c                                          ; $695e: $b9
    jr z, jr_004_6964                             ; $695f: $28 $03

    inc b                                         ; $6961: $04
    jr jr_004_6953                                ; $6962: $18 $ef

jr_004_6964:
    pop af                                        ; $6964: $f1
    ldh [rSVBK], a                                ; $6965: $e0 $70
    xor a                                         ; $6967: $af
    ret                                           ; $6968: $c9


Call_004_6969:
    ldh a, [rSVBK]                                ; $6969: $f0 $70
    push af                                       ; $696b: $f5
    ld a, $06                                     ; $696c: $3e $06
    ldh [rSVBK], a                                ; $696e: $e0 $70
    ld de, $d108                                  ; $6970: $11 $08 $d1
    ld a, [hl+]                                   ; $6973: $2a
    ld [de], a                                    ; $6974: $12
    ld c, a                                       ; $6975: $4f
    ld b, $00                                     ; $6976: $06 $00
    inc de                                        ; $6978: $13
    ld a, $03                                     ; $6979: $3e $03
    ld [de], a                                    ; $697b: $12
    inc de                                        ; $697c: $13

jr_004_697d:
    ld a, c                                       ; $697d: $79
    cp b                                          ; $697e: $b8
    jr z, jr_004_699a                             ; $697f: $28 $19

    ld a, [hl+]                                   ; $6981: $2a
    push hl                                       ; $6982: $e5
    push af                                       ; $6983: $f5
    ld hl, $106c                                  ; $6984: $21 $6c $10
    call Call_000_3185                            ; $6987: $cd $85 $31
    ld a, l                                       ; $698a: $7d
    ld [de], a                                    ; $698b: $12
    inc de                                        ; $698c: $13
    ld a, h                                       ; $698d: $7c
    ld [de], a                                    ; $698e: $12
    inc de                                        ; $698f: $13
    pop af                                        ; $6990: $f1
    ld [de], a                                    ; $6991: $12
    inc de                                        ; $6992: $13
    pop hl                                        ; $6993: $e1
    xor a                                         ; $6994: $af
    ld [de], a                                    ; $6995: $12
    inc de                                        ; $6996: $13
    inc b                                         ; $6997: $04
    jr jr_004_697d                                ; $6998: $18 $e3

jr_004_699a:
    ld hl, $d108                                  ; $699a: $21 $08 $d1
    ld a, [hl+]                                   ; $699d: $2a
    cp [hl]                                       ; $699e: $be
    jr nc, jr_004_69a2                            ; $699f: $30 $01

    ld [hl], a                                    ; $69a1: $77

jr_004_69a2:
    pop af                                        ; $69a2: $f1
    ldh [rSVBK], a                                ; $69a3: $e0 $70
    call Call_004_76d5                            ; $69a5: $cd $d5 $76
    ret                                           ; $69a8: $c9


    push af                                       ; $69a9: $f5
    ld a, $01                                     ; $69aa: $3e $01
    jr jr_004_69b0                                ; $69ac: $18 $02

Call_004_69ae:
    push af                                       ; $69ae: $f5
    xor a                                         ; $69af: $af

jr_004_69b0:
    ldh [$bc], a                                  ; $69b0: $e0 $bc
    ldh a, [rSVBK]                                ; $69b2: $f0 $70
    push af                                       ; $69b4: $f5
    ld a, $06                                     ; $69b5: $3e $06
    ldh [rSVBK], a                                ; $69b7: $e0 $70
    ldh a, [$bc]                                  ; $69b9: $f0 $bc
    ld [$d107], a                                 ; $69bb: $ea $07 $d1
    pop af                                        ; $69be: $f1
    ldh [rSVBK], a                                ; $69bf: $e0 $70
    pop af                                        ; $69c1: $f1
    ld hl, $67ee                                  ; $69c2: $21 $ee $67
    call Call_000_318c                            ; $69c5: $cd $8c $31
    ld a, [hl+]                                   ; $69c8: $2a
    ld b, a                                       ; $69c9: $47
    ld c, [hl]                                    ; $69ca: $4e
    ldh a, [rSVBK]                                ; $69cb: $f0 $70
    push af                                       ; $69cd: $f5
    ld a, $06                                     ; $69ce: $3e $06
    ldh [rSVBK], a                                ; $69d0: $e0 $70
    ld a, e                                       ; $69d2: $7b
    ld [$d105], a                                 ; $69d3: $ea $05 $d1
    ld hl, $d108                                  ; $69d6: $21 $08 $d1
    xor a                                         ; $69d9: $af
    ld [hl+], a                                   ; $69da: $22
    ld a, d                                       ; $69db: $7a
    ld [hl+], a                                   ; $69dc: $22
    ld d, h                                       ; $69dd: $54
    ld e, l                                       ; $69de: $5d
    ld hl, $d000                                  ; $69df: $21 $00 $d0
    ld a, b                                       ; $69e2: $78
    rst $08                                       ; $69e3: $cf

jr_004_69e4:
    ld a, [hl+]                                   ; $69e4: $2a
    ld [$d106], a                                 ; $69e5: $ea $06 $d1
    or a                                          ; $69e8: $b7
    jr z, jr_004_6a35                             ; $69e9: $28 $4a

    ld a, [$d105]                                 ; $69eb: $fa $05 $d1
    or a                                          ; $69ee: $b7
    jr z, jr_004_69ff                             ; $69ef: $28 $0e

    push hl                                       ; $69f1: $e5
    ld hl, $669e                                  ; $69f2: $21 $9e $66
    ld a, b                                       ; $69f5: $78
    call Call_000_318c                            ; $69f6: $cd $8c $31
    ld a, [hl+]                                   ; $69f9: $2a
    or [hl]                                       ; $69fa: $b6
    or a                                          ; $69fb: $b7
    pop hl                                        ; $69fc: $e1
    jr z, jr_004_6a35                             ; $69fd: $28 $36

jr_004_69ff:
    ld a, [$d107]                                 ; $69ff: $fa $07 $d1
    or a                                          ; $6a02: $b7
    jr z, jr_004_6a0f                             ; $6a03: $28 $0a

    push hl                                       ; $6a05: $e5
    ld a, b                                       ; $6a06: $78
    ld hl, $677e                                  ; $6a07: $21 $7e $67
    rst $08                                       ; $6a0a: $cf
    or a                                          ; $6a0b: $b7
    pop hl                                        ; $6a0c: $e1
    jr z, jr_004_6a35                             ; $6a0d: $28 $26

jr_004_6a0f:
    push hl                                       ; $6a0f: $e5
    ld a, [$d107]                                 ; $6a10: $fa $07 $d1
    or a                                          ; $6a13: $b7
    jr z, jr_004_6a1b                             ; $6a14: $28 $05

    ld hl, $2296                                  ; $6a16: $21 $96 $22
    jr jr_004_6a1e                                ; $6a19: $18 $03

jr_004_6a1b:
    ld hl, $106c                                  ; $6a1b: $21 $6c $10

jr_004_6a1e:
    ld a, b                                       ; $6a1e: $78
    call Call_000_3185                            ; $6a1f: $cd $85 $31
    ld a, l                                       ; $6a22: $7d
    ld [de], a                                    ; $6a23: $12
    inc de                                        ; $6a24: $13
    ld a, h                                       ; $6a25: $7c
    ld [de], a                                    ; $6a26: $12
    inc de                                        ; $6a27: $13
    ld hl, $d108                                  ; $6a28: $21 $08 $d1
    inc [hl]                                      ; $6a2b: $34
    pop hl                                        ; $6a2c: $e1
    ld a, b                                       ; $6a2d: $78
    ld [de], a                                    ; $6a2e: $12
    inc de                                        ; $6a2f: $13
    ld a, [$d106]                                 ; $6a30: $fa $06 $d1
    ld [de], a                                    ; $6a33: $12
    inc de                                        ; $6a34: $13

jr_004_6a35:
    ld a, b                                       ; $6a35: $78
    cp c                                          ; $6a36: $b9
    jr z, jr_004_6a3c                             ; $6a37: $28 $03

    inc b                                         ; $6a39: $04
    jr jr_004_69e4                                ; $6a3a: $18 $a8

jr_004_6a3c:
    ld hl, $d108                                  ; $6a3c: $21 $08 $d1
    ld a, [hl+]                                   ; $6a3f: $2a
    cp [hl]                                       ; $6a40: $be
    jr nc, jr_004_6a44                            ; $6a41: $30 $01

    ld [hl], a                                    ; $6a43: $77

jr_004_6a44:
    pop af                                        ; $6a44: $f1
    ldh [rSVBK], a                                ; $6a45: $e0 $70
    call Call_004_76d5                            ; $6a47: $cd $d5 $76
    ret                                           ; $6a4a: $c9


Call_004_6a4b:
    ld hl, $d000                                  ; $6a4b: $21 $00 $d0
    rst $08                                       ; $6a4e: $cf
    ldh a, [rSVBK]                                ; $6a4f: $f0 $70
    push af                                       ; $6a51: $f5
    ld a, $06                                     ; $6a52: $3e $06
    ldh [rSVBK], a                                ; $6a54: $e0 $70
    inc [hl]                                      ; $6a56: $34
    jr z, jr_004_6a5d                             ; $6a57: $28 $04

    pop af                                        ; $6a59: $f1
    ldh [rSVBK], a                                ; $6a5a: $e0 $70
    ret                                           ; $6a5c: $c9


jr_004_6a5d:
    ld a, $ff                                     ; $6a5d: $3e $ff
    ld [hl], a                                    ; $6a5f: $77
    pop af                                        ; $6a60: $f1
    ldh [rSVBK], a                                ; $6a61: $e0 $70
    ret                                           ; $6a63: $c9


Call_004_6a64:
    ld hl, $d000                                  ; $6a64: $21 $00 $d0
    rst $08                                       ; $6a67: $cf
    ldh a, [rSVBK]                                ; $6a68: $f0 $70
    push af                                       ; $6a6a: $f5
    ld a, $06                                     ; $6a6b: $3e $06
    ldh [rSVBK], a                                ; $6a6d: $e0 $70
    ld a, b                                       ; $6a6f: $78
    add [hl]                                      ; $6a70: $86
    ld [hl], a                                    ; $6a71: $77
    jr c, jr_004_6a78                             ; $6a72: $38 $04

    pop af                                        ; $6a74: $f1
    ldh [rSVBK], a                                ; $6a75: $e0 $70
    ret                                           ; $6a77: $c9


jr_004_6a78:
    ld a, $ff                                     ; $6a78: $3e $ff
    ld [hl], a                                    ; $6a7a: $77
    pop af                                        ; $6a7b: $f1
    ldh [rSVBK], a                                ; $6a7c: $e0 $70
    ret                                           ; $6a7e: $c9


Call_004_6a7f:
    ld hl, $d000                                  ; $6a7f: $21 $00 $d0
    rst $08                                       ; $6a82: $cf
    ldh a, [rSVBK]                                ; $6a83: $f0 $70
    push af                                       ; $6a85: $f5
    ld a, $06                                     ; $6a86: $3e $06
    ldh [rSVBK], a                                ; $6a88: $e0 $70
    dec [hl]                                      ; $6a8a: $35
    pop af                                        ; $6a8b: $f1
    ldh [rSVBK], a                                ; $6a8c: $e0 $70
    ret                                           ; $6a8e: $c9


Call_004_6a8f:
    ld hl, $d000                                  ; $6a8f: $21 $00 $d0
    rst $08                                       ; $6a92: $cf
    ldh a, [rSVBK]                                ; $6a93: $f0 $70
    push af                                       ; $6a95: $f5
    ld a, $06                                     ; $6a96: $3e $06
    ldh [rSVBK], a                                ; $6a98: $e0 $70
    ld a, [hl]                                    ; $6a9a: $7e
    sub b                                         ; $6a9b: $90
    ld [hl], a                                    ; $6a9c: $77
    pop af                                        ; $6a9d: $f1
    ldh [rSVBK], a                                ; $6a9e: $e0 $70
    ret                                           ; $6aa0: $c9


    ldh a, [rSVBK]                                ; $6aa1: $f0 $70
    push af                                       ; $6aa3: $f5
    ld a, $06                                     ; $6aa4: $3e $06
    ldh [rSVBK], a                                ; $6aa6: $e0 $70
    ld b, $00                                     ; $6aa8: $06 $00
    ld hl, $d000                                  ; $6aaa: $21 $00 $d0

jr_004_6aad:
    ld a, [hl+]                                   ; $6aad: $2a
    or a                                          ; $6aae: $b7
    jr nz, jr_004_6abb                            ; $6aaf: $20 $0a

    inc b                                         ; $6ab1: $04
    ld a, b                                       ; $6ab2: $78
    cp $23                                        ; $6ab3: $fe $23
    jr nz, jr_004_6aad                            ; $6ab5: $20 $f6

    ld b, $00                                     ; $6ab7: $06 $00
    jr jr_004_6abd                                ; $6ab9: $18 $02

jr_004_6abb:
    ld b, $01                                     ; $6abb: $06 $01

jr_004_6abd:
    pop af                                        ; $6abd: $f1
    ldh [rSVBK], a                                ; $6abe: $e0 $70
    ldh a, [rSVBK]                                ; $6ac0: $f0 $70
    push af                                       ; $6ac2: $f5
    ld a, $06                                     ; $6ac3: $3e $06
    ldh [rSVBK], a                                ; $6ac5: $e0 $70
    ld a, b                                       ; $6ac7: $78
    ld [$d6d3], a                                 ; $6ac8: $ea $d3 $d6
    pop af                                        ; $6acb: $f1
    ldh [rSVBK], a                                ; $6acc: $e0 $70
    ret                                           ; $6ace: $c9


Call_004_6acf:
    ld c, a                                       ; $6acf: $4f
    sub $23                                       ; $6ad0: $d6 $23
    ret c                                         ; $6ad2: $d8

    ld hl, $6524                                  ; $6ad3: $21 $24 $65
    call Call_000_318c                            ; $6ad6: $cd $8c $31
    ld a, [hl+]                                   ; $6ad9: $2a
    push hl                                       ; $6ada: $e5
    rst $00                                       ; $6adb: $c7

    db $f6, $6a

    ld [de], a                                    ; $6ade: $12
    ld l, e                                       ; $6adf: $6b
    ld b, b                                       ; $6ae0: $40
    ld l, e                                       ; $6ae1: $6b
    ld l, [hl]                                    ; $6ae2: $6e
    ld l, e                                       ; $6ae3: $6b
    and $6b                                       ; $6ae4: $e6 $6b
    dec [hl]                                      ; $6ae6: $35
    ld l, h                                       ; $6ae7: $6c
    ret c                                         ; $6ae8: $d8

    ld l, h                                       ; $6ae9: $6c
    sub c                                         ; $6aea: $91
    ld l, l                                       ; $6aeb: $6d
    sbc h                                         ; $6aec: $9c
    ld l, e                                       ; $6aed: $6b

    db $0e, $6c

    xor h                                         ; $6af0: $ac
    ld l, h                                       ; $6af1: $6c
    ld a, [hl]                                    ; $6af2: $7e
    ld l, h                                       ; $6af3: $6c
    ld c, e                                       ; $6af4: $4b
    ld l, l                                       ; $6af5: $6d

    pop hl                                        ; $6af6: $e1
    ld hl, $11cb                                  ; $6af7: $21 $cb $11
    ld a, l                                       ; $6afa: $7d
    ld [$cb2a], a                                 ; $6afb: $ea $2a $cb
    ld a, h                                       ; $6afe: $7c
    ld [$cb2b], a                                 ; $6aff: $ea $2b $cb
    ldh [$c1], a                                  ; $6b02: $e0 $c1
    ld a, $1c                                     ; $6b04: $3e $1c
    ldh [$bd], a                                  ; $6b06: $e0 $bd
    ld a, $6f                                     ; $6b08: $3e $6f
    ldh [$be], a                                  ; $6b0a: $e0 $be
    call Call_000_341a                            ; $6b0c: $cd $1a $34
    jp Jump_004_6da7                              ; $6b0f: $c3 $a7 $6d


    pop hl                                        ; $6b12: $e1
    push bc                                       ; $6b13: $c5
    ld a, [hl]                                    ; $6b14: $7e
    ld l, a                                       ; $6b15: $6f
    ld h, $00                                     ; $6b16: $26 $00
    ldh [$c1], a                                  ; $6b18: $e0 $c1
    ld a, $81                                     ; $6b1a: $3e $81
    ldh [$bd], a                                  ; $6b1c: $e0 $bd
    ld a, $60                                     ; $6b1e: $3e $60
    ldh [$be], a                                  ; $6b20: $e0 $be
    call Call_000_33fe                            ; $6b22: $cd $fe $33
    ldh [$c1], a                                  ; $6b25: $e0 $c1
    ld a, $1c                                     ; $6b27: $3e $1c
    ldh [$bd], a                                  ; $6b29: $e0 $bd
    ld a, $6f                                     ; $6b2b: $3e $6f
    ldh [$be], a                                  ; $6b2d: $e0 $be
    call Call_000_341a                            ; $6b2f: $cd $1a $34
    ld hl, $11d1                                  ; $6b32: $21 $d1 $11
    ld a, l                                       ; $6b35: $7d
    ld [$cb2a], a                                 ; $6b36: $ea $2a $cb
    ld a, h                                       ; $6b39: $7c
    ld [$cb2b], a                                 ; $6b3a: $ea $2b $cb
    jp Jump_004_6da0                              ; $6b3d: $c3 $a0 $6d


    pop hl                                        ; $6b40: $e1
    push bc                                       ; $6b41: $c5
    ld a, [hl]                                    ; $6b42: $7e
    ld l, a                                       ; $6b43: $6f
    ld h, $00                                     ; $6b44: $26 $00
    ldh [$c1], a                                  ; $6b46: $e0 $c1
    ld a, $56                                     ; $6b48: $3e $56
    ldh [$bd], a                                  ; $6b4a: $e0 $bd
    ld a, $61                                     ; $6b4c: $3e $61
    ldh [$be], a                                  ; $6b4e: $e0 $be
    call Call_000_33fe                            ; $6b50: $cd $fe $33
    ldh [$c1], a                                  ; $6b53: $e0 $c1
    ld a, $1c                                     ; $6b55: $3e $1c
    ldh [$bd], a                                  ; $6b57: $e0 $bd
    ld a, $6f                                     ; $6b59: $3e $6f
    ldh [$be], a                                  ; $6b5b: $e0 $be
    call Call_000_341a                            ; $6b5d: $cd $1a $34
    ld hl, $11d4                                  ; $6b60: $21 $d4 $11
    ld a, l                                       ; $6b63: $7d
    ld [$cb2a], a                                 ; $6b64: $ea $2a $cb
    ld a, h                                       ; $6b67: $7c
    ld [$cb2b], a                                 ; $6b68: $ea $2b $cb
    jp Jump_004_6da0                              ; $6b6b: $c3 $a0 $6d


    pop hl                                        ; $6b6e: $e1
    push bc                                       ; $6b6f: $c5
    ld a, [hl]                                    ; $6b70: $7e
    ld l, a                                       ; $6b71: $6f
    ld h, $00                                     ; $6b72: $26 $00
    ldh [$c1], a                                  ; $6b74: $e0 $c1
    ld a, $81                                     ; $6b76: $3e $81
    ldh [$bd], a                                  ; $6b78: $e0 $bd
    ld a, $60                                     ; $6b7a: $3e $60
    ldh [$be], a                                  ; $6b7c: $e0 $be
    call Call_000_33fe                            ; $6b7e: $cd $fe $33
    ldh [$c1], a                                  ; $6b81: $e0 $c1
    ld a, $1c                                     ; $6b83: $3e $1c
    ldh [$bd], a                                  ; $6b85: $e0 $bd
    ld a, $6f                                     ; $6b87: $3e $6f
    ldh [$be], a                                  ; $6b89: $e0 $be
    call Call_000_341a                            ; $6b8b: $cd $1a $34
    ld hl, $11d7                                  ; $6b8e: $21 $d7 $11
    ld a, l                                       ; $6b91: $7d
    ld [$cb2a], a                                 ; $6b92: $ea $2a $cb
    ld a, h                                       ; $6b95: $7c
    ld [$cb2b], a                                 ; $6b96: $ea $2b $cb
    jp Jump_004_6da0                              ; $6b99: $c3 $a0 $6d


    pop hl                                        ; $6b9c: $e1
    push bc                                       ; $6b9d: $c5
    ld a, $14                                     ; $6b9e: $3e $14
    call Call_000_393e                            ; $6ba0: $cd $3e $39

jr_004_6ba3:
    ld a, $04                                     ; $6ba3: $3e $04
    call Call_000_2722                            ; $6ba5: $cd $22 $27
    or a                                          ; $6ba8: $b7
    jr z, jr_004_6bae                             ; $6ba9: $28 $03

    xor a                                         ; $6bab: $af
    jr jr_004_6bb0                                ; $6bac: $18 $02

jr_004_6bae:
    ld a, $01                                     ; $6bae: $3e $01

jr_004_6bb0:
    ldh [$c1], a                                  ; $6bb0: $e0 $c1
    ld a, $b3                                     ; $6bb2: $3e $b3
    ldh [$bd], a                                  ; $6bb4: $e0 $bd
    ld a, $5d                                     ; $6bb6: $3e $5d
    ldh [$be], a                                  ; $6bb8: $e0 $be
    call Call_000_33fe                            ; $6bba: $cd $fe $33
    call Call_004_4784                            ; $6bbd: $cd $84 $47
    ldh a, [rSVBK]                                ; $6bc0: $f0 $70
    push af                                       ; $6bc2: $f5
    ld a, $06                                     ; $6bc3: $3e $06
    ldh [rSVBK], a                                ; $6bc5: $e0 $70
    ld a, [$d053]                                 ; $6bc7: $fa $53 $d0
    dec a                                         ; $6bca: $3d
    ld [$d053], a                                 ; $6bcb: $ea $53 $d0
    ldh [$bc], a                                  ; $6bce: $e0 $bc
    pop af                                        ; $6bd0: $f1
    ldh [rSVBK], a                                ; $6bd1: $e0 $70
    ldh a, [$bc]                                  ; $6bd3: $f0 $bc
    or a                                          ; $6bd5: $b7
    jr nz, jr_004_6ba3                            ; $6bd6: $20 $cb

    ld hl, $1bfd                                  ; $6bd8: $21 $fd $1b
    ld a, l                                       ; $6bdb: $7d
    ld [$cb2a], a                                 ; $6bdc: $ea $2a $cb
    ld a, h                                       ; $6bdf: $7c
    ld [$cb2b], a                                 ; $6be0: $ea $2b $cb
    jp Jump_004_6da5                              ; $6be3: $c3 $a5 $6d


    ldh a, [$cf]                                  ; $6be6: $f0 $cf
    cp $1d                                        ; $6be8: $fe $1d
    jp z, Jump_004_6d91                           ; $6bea: $ca $91 $6d

    pop hl                                        ; $6bed: $e1
    ld a, [hl]                                    ; $6bee: $7e
    ld [$cb2e], a                                 ; $6bef: $ea $2e $cb
    ld hl, $cc12                                  ; $6bf2: $21 $12 $cc
    ld a, [hl+]                                   ; $6bf5: $2a
    ld h, [hl]                                    ; $6bf6: $66
    ld l, a                                       ; $6bf7: $6f
    call Call_000_3911                            ; $6bf8: $cd $11 $39
    ld a, $32                                     ; $6bfb: $3e $32
    call Call_000_2448                            ; $6bfd: $cd $48 $24
    ld hl, $0000                                  ; $6c00: $21 $00 $00
    ld a, l                                       ; $6c03: $7d
    ld [$cb2a], a                                 ; $6c04: $ea $2a $cb
    ld a, h                                       ; $6c07: $7c
    ld [$cb2b], a                                 ; $6c08: $ea $2b $cb
    jp Jump_004_6da5                              ; $6c0b: $c3 $a5 $6d


    ldh a, [$cf]                                  ; $6c0e: $f0 $cf
    cp $1d                                        ; $6c10: $fe $1d
    jp z, Jump_004_6d91                           ; $6c12: $ca $91 $6d

    ld hl, $cc12                                  ; $6c15: $21 $12 $cc
    ld a, [hl+]                                   ; $6c18: $2a
    ld h, [hl]                                    ; $6c19: $66
    ld l, a                                       ; $6c1a: $6f
    call Call_000_3911                            ; $6c1b: $cd $11 $39
    pop hl                                        ; $6c1e: $e1
    ld a, [hl]                                    ; $6c1f: $7e
    ld hl, $6810                                  ; $6c20: $21 $10 $68
    rst $08                                       ; $6c23: $cf
    call Call_000_2448                            ; $6c24: $cd $48 $24
    ld hl, $0000                                  ; $6c27: $21 $00 $00
    ld a, l                                       ; $6c2a: $7d
    ld [$cb2a], a                                 ; $6c2b: $ea $2a $cb
    ld a, h                                       ; $6c2e: $7c
    ld [$cb2b], a                                 ; $6c2f: $ea $2b $cb
    jp Jump_004_6da5                              ; $6c32: $c3 $a5 $6d


    ldh a, [$cf]                                  ; $6c35: $f0 $cf
    cp $1d                                        ; $6c37: $fe $1d
    jp z, Jump_004_6d91                           ; $6c39: $ca $91 $6d

    ldh [$bc], a                                  ; $6c3c: $e0 $bc
    ldh a, [rSVBK]                                ; $6c3e: $f0 $70
    push af                                       ; $6c40: $f5
    ld a, $06                                     ; $6c41: $3e $06
    ldh [rSVBK], a                                ; $6c43: $e0 $70
    ldh a, [$bc]                                  ; $6c45: $f0 $bc
    ld a, [$d5d5]                                 ; $6c47: $fa $d5 $d5
    ld b, a                                       ; $6c4a: $47
    ldh [$bc], a                                  ; $6c4b: $e0 $bc
    pop af                                        ; $6c4d: $f1
    ldh [rSVBK], a                                ; $6c4e: $e0 $70
    ldh a, [$bc]                                  ; $6c50: $f0 $bc
    ld a, b                                       ; $6c52: $78
    cp $0d                                        ; $6c53: $fe $0d
    jp z, Jump_004_6d91                           ; $6c55: $ca $91 $6d

    cp $09                                        ; $6c58: $fe $09
    jp z, Jump_004_6d91                           ; $6c5a: $ca $91 $6d

    pop hl                                        ; $6c5d: $e1
    ld a, [hl]                                    ; $6c5e: $7e
    ld [$cb29], a                                 ; $6c5f: $ea $29 $cb
    ld hl, $cc12                                  ; $6c62: $21 $12 $cc
    ld a, [hl+]                                   ; $6c65: $2a
    ld h, [hl]                                    ; $6c66: $66
    ld l, a                                       ; $6c67: $6f
    call Call_000_3911                            ; $6c68: $cd $11 $39
    ld a, $18                                     ; $6c6b: $3e $18
    call Call_000_2448                            ; $6c6d: $cd $48 $24
    ld hl, $0000                                  ; $6c70: $21 $00 $00
    ld a, l                                       ; $6c73: $7d
    ld [$cb2a], a                                 ; $6c74: $ea $2a $cb
    ld a, h                                       ; $6c77: $7c
    ld [$cb2b], a                                 ; $6c78: $ea $2b $cb
    jp Jump_004_6da5                              ; $6c7b: $c3 $a5 $6d


    pop hl                                        ; $6c7e: $e1
    push bc                                       ; $6c7f: $c5
    ld a, [hl]                                    ; $6c80: $7e
    ld l, a                                       ; $6c81: $6f
    ld h, $00                                     ; $6c82: $26 $00
    ldh [$c1], a                                  ; $6c84: $e0 $c1
    ld a, $f3                                     ; $6c86: $3e $f3
    ldh [$bd], a                                  ; $6c88: $e0 $bd
    ld a, $60                                     ; $6c8a: $3e $60
    ldh [$be], a                                  ; $6c8c: $e0 $be
    call Call_000_33fe                            ; $6c8e: $cd $fe $33
    ldh [$c1], a                                  ; $6c91: $e0 $c1
    ld a, $1c                                     ; $6c93: $3e $1c
    ldh [$bd], a                                  ; $6c95: $e0 $bd
    ld a, $6f                                     ; $6c97: $3e $6f
    ldh [$be], a                                  ; $6c99: $e0 $be
    call Call_000_341a                            ; $6c9b: $cd $1a $34
    ld hl, $2284                                  ; $6c9e: $21 $84 $22
    ld a, l                                       ; $6ca1: $7d
    ld [$cb2a], a                                 ; $6ca2: $ea $2a $cb
    ld a, h                                       ; $6ca5: $7c
    ld [$cb2b], a                                 ; $6ca6: $ea $2b $cb
    jp Jump_004_6da0                              ; $6ca9: $c3 $a0 $6d


    pop hl                                        ; $6cac: $e1
    push bc                                       ; $6cad: $c5
    ldh a, [$cf]                                  ; $6cae: $f0 $cf
    cp $1d                                        ; $6cb0: $fe $1d
    jp nz, Jump_004_6d91                          ; $6cb2: $c2 $91 $6d

    xor a                                         ; $6cb5: $af
    ldh [$c1], a                                  ; $6cb6: $e0 $c1
    ld a, $1e                                     ; $6cb8: $3e $1e
    ldh [$bd], a                                  ; $6cba: $e0 $bd
    ld a, $4c                                     ; $6cbc: $3e $4c
    ldh [$be], a                                  ; $6cbe: $e0 $be
    call Call_000_340c                            ; $6cc0: $cd $0c $34
    set 0, [hl]                                   ; $6cc3: $cb $c6
    ld hl, $cc06                                  ; $6cc5: $21 $06 $cc
    set 3, [hl]                                   ; $6cc8: $cb $de
    ld hl, $2281                                  ; $6cca: $21 $81 $22
    ld a, l                                       ; $6ccd: $7d
    ld [$cb2a], a                                 ; $6cce: $ea $2a $cb
    ld a, h                                       ; $6cd1: $7c
    ld [$cb2b], a                                 ; $6cd2: $ea $2b $cb
    jp Jump_004_6da0                              ; $6cd5: $c3 $a0 $6d


    pop hl                                        ; $6cd8: $e1
    ldh [$bc], a                                  ; $6cd9: $e0 $bc
    ldh a, [rSVBK]                                ; $6cdb: $f0 $70
    push af                                       ; $6cdd: $f5
    ld a, $06                                     ; $6cde: $3e $06
    ldh [rSVBK], a                                ; $6ce0: $e0 $70
    ldh a, [$bc]                                  ; $6ce2: $f0 $bc
    ld a, [$d6d4]                                 ; $6ce4: $fa $d4 $d6
    ldh [$bc], a                                  ; $6ce7: $e0 $bc
    pop af                                        ; $6ce9: $f1
    ldh [rSVBK], a                                ; $6cea: $e0 $70
    ldh a, [$bc]                                  ; $6cec: $f0 $bc
    cp $03                                        ; $6cee: $fe $03
    jr z, jr_004_6d00                             ; $6cf0: $28 $0e

    ld hl, $11c8                                  ; $6cf2: $21 $c8 $11
    ld a, l                                       ; $6cf5: $7d
    ld [$cb2a], a                                 ; $6cf6: $ea $2a $cb
    ld a, h                                       ; $6cf9: $7c
    ld [$cb2b], a                                 ; $6cfa: $ea $2b $cb
    jp Jump_004_6da5                              ; $6cfd: $c3 $a5 $6d


jr_004_6d00:
    ld a, [$ce00]                                 ; $6d00: $fa $00 $ce
    bit 0, a                                      ; $6d03: $cb $47
    jr nz, jr_004_6d27                            ; $6d05: $20 $20

    xor a                                         ; $6d07: $af
    ld [$cb1a], a                                 ; $6d08: $ea $1a $cb
    ld e, $04                                     ; $6d0b: $1e $04
    ldh [$c1], a                                  ; $6d0d: $e0 $c1
    ld a, $02                                     ; $6d0f: $3e $02
    ldh [$bd], a                                  ; $6d11: $e0 $bd
    ld a, $35                                     ; $6d13: $3e $35
    ldh [$be], a                                  ; $6d15: $e0 $be
    call Call_000_3421                            ; $6d17: $cd $21 $34
    ld a, l                                       ; $6d1a: $7d
    ld [$cb18], a                                 ; $6d1b: $ea $18 $cb
    ld a, h                                       ; $6d1e: $7c
    ld [$cb19], a                                 ; $6d1f: $ea $19 $cb
    ld a, $0a                                     ; $6d22: $3e $0a
    ld [$cb17], a                                 ; $6d24: $ea $17 $cb

jr_004_6d27:
    ldh [$bc], a                                  ; $6d27: $e0 $bc
    ldh a, [rSVBK]                                ; $6d29: $f0 $70
    push af                                       ; $6d2b: $f5
    ld a, $06                                     ; $6d2c: $3e $06
    ldh [rSVBK], a                                ; $6d2e: $e0 $70
    ldh a, [$bc]                                  ; $6d30: $f0 $bc
    xor a                                         ; $6d32: $af
    ld [$d6d4], a                                 ; $6d33: $ea $d4 $d6
    ldh [$bc], a                                  ; $6d36: $e0 $bc
    pop af                                        ; $6d38: $f1
    ldh [rSVBK], a                                ; $6d39: $e0 $70
    ldh a, [$bc]                                  ; $6d3b: $f0 $bc
    ld hl, $0781                                  ; $6d3d: $21 $81 $07
    ld a, l                                       ; $6d40: $7d
    ld [$cb2a], a                                 ; $6d41: $ea $2a $cb
    ld a, h                                       ; $6d44: $7c
    ld [$cb2b], a                                 ; $6d45: $ea $2b $cb
    jp Jump_004_6da5                              ; $6d48: $c3 $a5 $6d


    pop hl                                        ; $6d4b: $e1
    push bc                                       ; $6d4c: $c5
    ldh [$bc], a                                  ; $6d4d: $e0 $bc
    ldh a, [rSVBK]                                ; $6d4f: $f0 $70
    push af                                       ; $6d51: $f5
    ld a, $05                                     ; $6d52: $3e $05
    ldh [rSVBK], a                                ; $6d54: $e0 $70
    ldh a, [$bc]                                  ; $6d56: $f0 $bc
    ld hl, $d40a                                  ; $6d58: $21 $0a $d4
    res 2, [hl]                                   ; $6d5b: $cb $96
    ld de, $fff6                                  ; $6d5d: $11 $f6 $ff
    ld hl, $d415                                  ; $6d60: $21 $15 $d4
    ld [hl], e                                    ; $6d63: $73
    inc hl                                        ; $6d64: $23
    ld [hl], d                                    ; $6d65: $72
    ldh [$bc], a                                  ; $6d66: $e0 $bc
    pop af                                        ; $6d68: $f1
    ldh [rSVBK], a                                ; $6d69: $e0 $70
    ldh a, [$bc]                                  ; $6d6b: $f0 $bc
    ld d, $00                                     ; $6d6d: $16 $00
    ld a, $00                                     ; $6d6f: $3e $00
    ld e, $01                                     ; $6d71: $1e $01
    ld hl, $6131                                  ; $6d73: $21 $31 $61
    ldh [$c1], a                                  ; $6d76: $e0 $c1
    ld a, $3d                                     ; $6d78: $3e $3d
    ldh [$bd], a                                  ; $6d7a: $e0 $bd
    ld a, $25                                     ; $6d7c: $3e $25
    ldh [$be], a                                  ; $6d7e: $e0 $be
    call Call_000_3421                            ; $6d80: $cd $21 $34
    ld hl, $2281                                  ; $6d83: $21 $81 $22
    ld a, l                                       ; $6d86: $7d
    ld [$cb2a], a                                 ; $6d87: $ea $2a $cb
    ld a, h                                       ; $6d8a: $7c
    ld [$cb2b], a                                 ; $6d8b: $ea $2b $cb
    jp Jump_004_6da0                              ; $6d8e: $c3 $a0 $6d


Jump_004_6d91:
    pop hl                                        ; $6d91: $e1
    ld hl, $11cb                                  ; $6d92: $21 $cb $11
    ld a, l                                       ; $6d95: $7d
    ld [$cb2a], a                                 ; $6d96: $ea $2a $cb
    ld a, h                                       ; $6d99: $7c
    ld [$cb2b], a                                 ; $6d9a: $ea $2b $cb
    jp Jump_004_6da5                              ; $6d9d: $c3 $a5 $6d


Jump_004_6da0:
    pop bc                                        ; $6da0: $c1
    ld a, c                                       ; $6da1: $79
    call Call_004_6a7f                            ; $6da2: $cd $7f $6a

Jump_004_6da5:
    or a                                          ; $6da5: $b7
    ret                                           ; $6da6: $c9


Jump_004_6da7:
    scf                                           ; $6da7: $37
    ret                                           ; $6da8: $c9


    push de                                       ; $6da9: $d5
    push hl                                       ; $6daa: $e5
    ld e, $00                                     ; $6dab: $1e $00
    ld b, $02                                     ; $6dad: $06 $02
    call Call_004_68c8                            ; $6daf: $cd $c8 $68
    cp $0f                                        ; $6db2: $fe $0f
    jr z, jr_004_6dc1                             ; $6db4: $28 $0b

    ld a, $0f                                     ; $6db6: $3e $0f
    call Call_004_689e                            ; $6db8: $cd $9e $68
    cp $03                                        ; $6dbb: $fe $03
    jr c, jr_004_6dcc                             ; $6dbd: $38 $0d

    jr jr_004_6dca                                ; $6dbf: $18 $09

jr_004_6dc1:
    ld a, $0f                                     ; $6dc1: $3e $0f
    call Call_004_689e                            ; $6dc3: $cd $9e $68
    cp $02                                        ; $6dc6: $fe $02
    jr c, jr_004_6dcc                             ; $6dc8: $38 $02

jr_004_6dca:
    set 0, e                                      ; $6dca: $cb $c3

jr_004_6dcc:
    ld b, $02                                     ; $6dcc: $06 $02
    call Call_004_68c8                            ; $6dce: $cd $c8 $68
    cp $10                                        ; $6dd1: $fe $10
    jr z, jr_004_6ddd                             ; $6dd3: $28 $08

    ld a, $10                                     ; $6dd5: $3e $10
    call Call_004_689e                            ; $6dd7: $cd $9e $68
    or a                                          ; $6dda: $b7
    jr z, jr_004_6ddf                             ; $6ddb: $28 $02

jr_004_6ddd:
    set 1, e                                      ; $6ddd: $cb $cb

jr_004_6ddf:
    ld b, $01                                     ; $6ddf: $06 $01
    call Call_004_68c8                            ; $6de1: $cd $c8 $68
    cp $08                                        ; $6de4: $fe $08
    jr z, jr_004_6df0                             ; $6de6: $28 $08

    ld a, $08                                     ; $6de8: $3e $08
    call Call_004_689e                            ; $6dea: $cd $9e $68
    or a                                          ; $6ded: $b7
    jr z, jr_004_6df2                             ; $6dee: $28 $02

jr_004_6df0:
    set 2, e                                      ; $6df0: $cb $d3

jr_004_6df2:
    ld b, $00                                     ; $6df2: $06 $00
    call Call_004_68c8                            ; $6df4: $cd $c8 $68
    cp $01                                        ; $6df7: $fe $01
    jr z, jr_004_6e03                             ; $6df9: $28 $08

    ld a, $01                                     ; $6dfb: $3e $01
    call Call_004_689e                            ; $6dfd: $cd $9e $68
    or a                                          ; $6e00: $b7
    jr z, jr_004_6e05                             ; $6e01: $28 $02

jr_004_6e03:
    set 3, e                                      ; $6e03: $cb $db

jr_004_6e05:
    ld a, $27                                     ; $6e05: $3e $27
    call Call_004_689e                            ; $6e07: $cd $9e $68
    or a                                          ; $6e0a: $b7
    jr z, jr_004_6e0f                             ; $6e0b: $28 $02

    set 4, e                                      ; $6e0d: $cb $e3

jr_004_6e0f:
    ld a, $31                                     ; $6e0f: $3e $31
    call Call_004_689e                            ; $6e11: $cd $9e $68
    or a                                          ; $6e14: $b7
    jr z, jr_004_6e19                             ; $6e15: $28 $02

    set 5, e                                      ; $6e17: $cb $eb

jr_004_6e19:
    ld a, $38                                     ; $6e19: $3e $38
    call Call_004_689e                            ; $6e1b: $cd $9e $68
    or a                                          ; $6e1e: $b7
    jr z, jr_004_6e23                             ; $6e1f: $28 $02

    set 6, e                                      ; $6e21: $cb $f3

jr_004_6e23:
    ld a, $32                                     ; $6e23: $3e $32
    call Call_004_689e                            ; $6e25: $cd $9e $68
    or a                                          ; $6e28: $b7
    jr z, jr_004_6e2f                             ; $6e29: $28 $04

    set 7, e                                      ; $6e2b: $cb $fb
    jr jr_004_6e5d                                ; $6e2d: $18 $2e

jr_004_6e2f:
    ld a, $33                                     ; $6e2f: $3e $33
    call Call_004_689e                            ; $6e31: $cd $9e $68
    or a                                          ; $6e34: $b7
    jr z, jr_004_6e3b                             ; $6e35: $28 $04

    set 7, e                                      ; $6e37: $cb $fb
    jr jr_004_6e5d                                ; $6e39: $18 $22

jr_004_6e3b:
    ld a, $34                                     ; $6e3b: $3e $34
    call Call_004_689e                            ; $6e3d: $cd $9e $68
    or a                                          ; $6e40: $b7
    jr z, jr_004_6e47                             ; $6e41: $28 $04

    set 7, e                                      ; $6e43: $cb $fb
    jr jr_004_6e5d                                ; $6e45: $18 $16

jr_004_6e47:
    ld a, $35                                     ; $6e47: $3e $35
    call Call_004_689e                            ; $6e49: $cd $9e $68
    or a                                          ; $6e4c: $b7
    jr z, jr_004_6e53                             ; $6e4d: $28 $04

    set 7, e                                      ; $6e4f: $cb $fb
    jr jr_004_6e5d                                ; $6e51: $18 $0a

jr_004_6e53:
    ld a, $36                                     ; $6e53: $3e $36
    call Call_004_689e                            ; $6e55: $cd $9e $68
    or a                                          ; $6e58: $b7
    jr z, jr_004_6e5d                             ; $6e59: $28 $02

    set 7, e                                      ; $6e5b: $cb $fb

jr_004_6e5d:
    ld a, e                                       ; $6e5d: $7b
    ld [$ccf5], a                                 ; $6e5e: $ea $f5 $cc
    pop hl                                        ; $6e61: $e1
    pop de                                        ; $6e62: $d1
    ret                                           ; $6e63: $c9


    db $01, $01, $29, $cb, $90, $00, $41

    ld bc, $3501                                  ; $6e6b: $01 $01 $35
    bit 0, h                                      ; $6e6e: $cb $44
    db $01                                        ; $6e70: $01
    ret nz                                        ; $6e71: $c0

    db $01, $01, $3d, $cb, $44, $01, $41

    ld bc, $8001                                  ; $6e79: $01 $01 $80
    ld l, [hl]                                    ; $6e7c: $6e
    ld b, h                                       ; $6e7d: $44
    ld bc, $d040                                  ; $6e7e: $01 $40 $d0
    ret c                                         ; $6e81: $d8

    db $10                                        ; $6e82: $10
    reti                                          ; $6e83: $d9


    ld d, b                                       ; $6e84: $50
    reti                                          ; $6e85: $d9


    ret nc                                        ; $6e86: $d0

    reti                                          ; $6e87: $d9


    db $10                                        ; $6e88: $10
    jp c, $d990                                   ; $6e89: $da $90 $d9

    db $94, $6e, $9b, $6e, $a2, $6e

    xor c                                         ; $6e92: $a9
    ld l, [hl]                                    ; $6e93: $6e

    db $01, $01, $45, $cb, $90, $00, $41, $01, $01, $49, $cb, $a8, $00, $41, $01, $01
    db $4d, $cb, $c0, $00, $41

    ld bc, $5101                                  ; $6ea9: $01 $01 $51
    set 3, b                                      ; $6eac: $cb $d8
    nop                                           ; $6eae: $00
    ld b, c                                       ; $6eaf: $41
    nop                                           ; $6eb0: $00
    nop                                           ; $6eb1: $00
    jr nz, jr_004_6eb4                            ; $6eb2: $20 $00

jr_004_6eb4:
    ld b, b                                       ; $6eb4: $40
    nop                                           ; $6eb5: $00
    ld h, b                                       ; $6eb6: $60
    nop                                           ; $6eb7: $00

    db $80, $00, $a0, $00, $c0, $00, $e0, $00, $00, $01, $20, $01, $40, $01, $60, $01
    db $80, $01, $a0, $01, $c0, $01, $e0, $01

    nop                                           ; $6ed0: $00
    ld [bc], a                                    ; $6ed1: $02
    jr nz, jr_004_6ed6                            ; $6ed2: $20 $02

    ld b, b                                       ; $6ed4: $40
    ld [bc], a                                    ; $6ed5: $02

jr_004_6ed6:
    ld h, b                                       ; $6ed6: $60
    ld [bc], a                                    ; $6ed7: $02
    add b                                         ; $6ed8: $80
    ld [bc], a                                    ; $6ed9: $02
    and b                                         ; $6eda: $a0
    ld [bc], a                                    ; $6edb: $02
    ret nz                                        ; $6edc: $c0

    ld [bc], a                                    ; $6edd: $02
    ldh [rSC], a                                  ; $6ede: $e0 $02
    nop                                           ; $6ee0: $00
    inc bc                                        ; $6ee1: $03
    jr nz, jr_004_6ee7                            ; $6ee2: $20 $03

    ld b, b                                       ; $6ee4: $40
    inc bc                                        ; $6ee5: $03
    ld h, b                                       ; $6ee6: $60

jr_004_6ee7:
    inc bc                                        ; $6ee7: $03
    add b                                         ; $6ee8: $80
    inc bc                                        ; $6ee9: $03
    and b                                         ; $6eea: $a0
    inc bc                                        ; $6eeb: $03
    ret nz                                        ; $6eec: $c0

    inc bc                                        ; $6eed: $03
    ldh [$03], a                                  ; $6eee: $e0 $03
    nop                                           ; $6ef0: $00
    nop                                           ; $6ef1: $00

    db $01, $00, $02, $00, $03, $00, $04, $00, $05, $00

    ld b, $00                                     ; $6efc: $06 $00
    rlca                                          ; $6efe: $07
    nop                                           ; $6eff: $00
    ld [$0900], sp                                ; $6f00: $08 $00 $09
    nop                                           ; $6f03: $00
    ld a, [bc]                                    ; $6f04: $0a
    nop                                           ; $6f05: $00
    dec bc                                        ; $6f06: $0b
    nop                                           ; $6f07: $00
    inc c                                         ; $6f08: $0c
    nop                                           ; $6f09: $00

    db $0d, $00

    ld c, $00                                     ; $6f0c: $0e $00
    rrca                                          ; $6f0e: $0f
    nop                                           ; $6f0f: $00

    db $10, $00

    ld de, $1200                                  ; $6f12: $11 $00 $12
    nop                                           ; $6f15: $00

    db $13, $00

    xor a                                         ; $6f18: $af
    ld [$cb91], a                                 ; $6f19: $ea $91 $cb
    ld [$cb93], a                                 ; $6f1c: $ea $93 $cb
    ld [$cb94], a                                 ; $6f1f: $ea $94 $cb
    ld [$cb92], a                                 ; $6f22: $ea $92 $cb
    rst $18                                       ; $6f25: $df
    ld c, $70                                     ; $6f26: $0e $70
    ld e, $09                                     ; $6f28: $1e $09
    ld d, $0c                                     ; $6f2a: $16 $0c
    ld hl, $0080                                  ; $6f2c: $21 $80 $00
    call Call_000_13c2                            ; $6f2f: $cd $c2 $13
    rst $20                                       ; $6f32: $e7
    call Call_000_3308                            ; $6f33: $cd $08 $33
    ldh [$bc], a                                  ; $6f36: $e0 $bc
    ldh a, [rSVBK]                                ; $6f38: $f0 $70
    push af                                       ; $6f3a: $f5
    ld a, $06                                     ; $6f3b: $3e $06
    ldh [rSVBK], a                                ; $6f3d: $e0 $70
    ldh a, [$bc]                                  ; $6f3f: $f0 $bc
    ld a, [$d109]                                 ; $6f41: $fa $09 $d1
    ldh [$bc], a                                  ; $6f44: $e0 $bc
    pop af                                        ; $6f46: $f1
    ldh [rSVBK], a                                ; $6f47: $e0 $70
    ldh a, [$bc]                                  ; $6f49: $f0 $bc
    or a                                          ; $6f4b: $b7
    jr z, jr_004_6f93                             ; $6f4c: $28 $45

    xor a                                         ; $6f4e: $af
    ldh [$d5], a                                  ; $6f4f: $e0 $d5
    call Call_004_6fca                            ; $6f51: $cd $ca $6f
    xor a                                         ; $6f54: $af
    ld [$cbe7], a                                 ; $6f55: $ea $e7 $cb
    ldh a, [rSVBK]                                ; $6f58: $f0 $70
    push af                                       ; $6f5a: $f5
    ld a, $06                                     ; $6f5b: $3e $06
    ldh [rSVBK], a                                ; $6f5d: $e0 $70
    ld a, $ff                                     ; $6f5f: $3e $ff
    ld [$cb90], a                                 ; $6f61: $ea $90 $cb
    call Call_004_7033                            ; $6f64: $cd $33 $70
    pop af                                        ; $6f67: $f1
    ldh [rSVBK], a                                ; $6f68: $e0 $70
    ld a, [$cb8f]                                 ; $6f6a: $fa $8f $cb
    cp $ff                                        ; $6f6d: $fe $ff
    jr z, jr_004_6f79                             ; $6f6f: $28 $08

    cp $fe                                        ; $6f71: $fe $fe
    jr z, jr_004_6f79                             ; $6f73: $28 $04

    ld a, $04                                     ; $6f75: $3e $04
    jr jr_004_6f7b                                ; $6f77: $18 $02

jr_004_6f79:
    ld a, $04                                     ; $6f79: $3e $04

jr_004_6f7b:
    ld [$cbe9], a                                 ; $6f7b: $ea $e9 $cb
    xor a                                         ; $6f7e: $af
    ld hl, $cb55                                  ; $6f7f: $21 $55 $cb
    ldh [$c1], a                                  ; $6f82: $e0 $c1
    ld a, $6f                                     ; $6f84: $3e $6f
    ldh [$bd], a                                  ; $6f86: $e0 $bd
    ld a, $4f                                     ; $6f88: $3e $4f
    ldh [$be], a                                  ; $6f8a: $e0 $be
    call Call_000_33fe                            ; $6f8c: $cd $fe $33
    call Call_004_77b3                            ; $6f8f: $cd $b3 $77
    ret                                           ; $6f92: $c9


jr_004_6f93:
    xor a                                         ; $6f93: $af
    ld [$cbe9], a                                 ; $6f94: $ea $e9 $cb
    ld hl, $6e64                                  ; $6f97: $21 $64 $6e
    call Call_000_301f                            ; $6f9a: $cd $1f $30
    ld a, $40                                     ; $6f9d: $3e $40
    ld [$c1eb], a                                 ; $6f9f: $ea $eb $c1
    ld a, $06                                     ; $6fa2: $3e $06
    ld [$c234], a                                 ; $6fa4: $ea $34 $c2
    ld hl, $11bc                                  ; $6fa7: $21 $bc $11
    ld de, $0000                                  ; $6faa: $11 $00 $00
    ldh [$c1], a                                  ; $6fad: $e0 $c1
    ld a, $fd                                     ; $6faf: $3e $fd
    ldh [$bd], a                                  ; $6fb1: $e0 $bd
    ld a, $6d                                     ; $6fb3: $3e $6d
    ldh [$be], a                                  ; $6fb5: $e0 $be
    call Call_000_341a                            ; $6fb7: $cd $1a $34
    ret                                           ; $6fba: $c9


Call_004_6fbb:
    call Call_004_7559                            ; $6fbb: $cd $59 $75
    call Call_004_7598                            ; $6fbe: $cd $98 $75
    call Call_004_75de                            ; $6fc1: $cd $de $75
    call Call_004_7624                            ; $6fc4: $cd $24 $76
    jp Jump_004_769b                              ; $6fc7: $c3 $9b $76


Call_004_6fca:
    ldh [$bc], a                                  ; $6fca: $e0 $bc
    ldh a, [rSVBK]                                ; $6fcc: $f0 $70
    push af                                       ; $6fce: $f5
    ld a, $06                                     ; $6fcf: $3e $06
    ldh [rSVBK], a                                ; $6fd1: $e0 $70
    ldh a, [$bc]                                  ; $6fd3: $f0 $bc
    ld a, [$d109]                                 ; $6fd5: $fa $09 $d1
    ldh [$bc], a                                  ; $6fd8: $e0 $bc
    pop af                                        ; $6fda: $f1
    ldh [rSVBK], a                                ; $6fdb: $e0 $70
    ldh a, [$bc]                                  ; $6fdd: $f0 $bc
    add $05                                       ; $6fdf: $c6 $05
    ld c, a                                       ; $6fe1: $4f
    ld b, $05                                     ; $6fe2: $06 $05

jr_004_6fe4:
    ld a, b                                       ; $6fe4: $78
    call Call_004_778a                            ; $6fe5: $cd $8a $77
    inc b                                         ; $6fe8: $04
    ld a, b                                       ; $6fe9: $78
    cp c                                          ; $6fea: $b9
    jr nz, jr_004_6fe4                            ; $6feb: $20 $f7

Call_004_6fed:
    ld hl, $6266                                  ; $6fed: $21 $66 $62
    ld a, $70                                     ; $6ff0: $3e $70
    ld d, $07                                     ; $6ff2: $16 $07
    ld e, $01                                     ; $6ff4: $1e $01
    ldh [$c1], a                                  ; $6ff6: $e0 $c1
    ld a, $3d                                     ; $6ff8: $3e $3d
    ldh [$bd], a                                  ; $6ffa: $e0 $bd
    ld a, $25                                     ; $6ffc: $3e $25
    ldh [$be], a                                  ; $6ffe: $e0 $be
    jp Jump_000_3421                              ; $7000: $c3 $21 $34


Call_004_7003:
    ld hl, $cb8b                                  ; $7003: $21 $8b $cb
    ld a, [hl+]                                   ; $7006: $2a
    ld h, [hl]                                    ; $7007: $66

Jump_004_7008:
    ld l, a                                       ; $7008: $6f
    ld de, $001f                                  ; $7009: $11 $1f $00
    add hl, de                                    ; $700c: $19
    ldh a, [rSVBK]                                ; $700d: $f0 $70
    push af                                       ; $700f: $f5
    ld a, $06                                     ; $7010: $3e $06
    ldh [rSVBK], a                                ; $7012: $e0 $70
    ld a, [$d109]                                 ; $7014: $fa $09 $d1
    ld d, a                                       ; $7017: $57
    add d                                         ; $7018: $82
    add d                                         ; $7019: $82
    dec a                                         ; $701a: $3d
    ld d, a                                       ; $701b: $57
    pop af                                        ; $701c: $f1
    ldh [rSVBK], a                                ; $701d: $e0 $70
    ld c, $70                                     ; $701f: $0e $70
    ld a, [$cb88]                                 ; $7021: $fa $88 $cb
    ld e, a                                       ; $7024: $5f
    ld a, [$cb8f]                                 ; $7025: $fa $8f $cb
    and $f0                                       ; $7028: $e6 $f0
    jr z, jr_004_7030                             ; $702a: $28 $04

    ld a, $04                                     ; $702c: $3e $04
    add e                                         ; $702e: $83
    ld e, a                                       ; $702f: $5f

jr_004_7030:
    jp Jump_000_13c2                              ; $7030: $c3 $c2 $13


Call_004_7033:
    rst $18                                       ; $7033: $df
    call Call_004_7003                            ; $7034: $cd $03 $70
    ld a, [$cb93]                                 ; $7037: $fa $93 $cb
    xor $48                                       ; $703a: $ee $48
    ld [$cb93], a                                 ; $703c: $ea $93 $cb
    ld a, [$cb88]                                 ; $703f: $fa $88 $cb
    add a                                         ; $7042: $87
    add a                                         ; $7043: $87
    add a                                         ; $7044: $87
    ld [$c1eb], a                                 ; $7045: $ea $eb $c1
    ld a, $02                                     ; $7048: $3e $02
    ld [$c234], a                                 ; $704a: $ea $34 $c2
    ld a, [$cb91]                                 ; $704d: $fa $91 $cb
    or a                                          ; $7050: $b7
    jr z, jr_004_707b                             ; $7051: $28 $28

    call Call_000_3674                            ; $7053: $cd $74 $36
    inc d                                         ; $7056: $14
    inc b                                         ; $7057: $04
    ld bc, $0101                                  ; $7058: $01 $01 $01
    nop                                           ; $705b: $00
    nop                                           ; $705c: $00
    ld hl, $cb8b                                  ; $705d: $21 $8b $cb
    ld a, [hl+]                                   ; $7060: $2a
    ld h, [hl]                                    ; $7061: $66
    ld l, a                                       ; $7062: $6f
    ld de, $d800                                  ; $7063: $11 $00 $d8
    add hl, de                                    ; $7066: $19
    ld d, h                                       ; $7067: $54
    ld e, l                                       ; $7068: $5d
    ld hl, $d800                                  ; $7069: $21 $00 $d8
    ldh a, [rSVBK]                                ; $706c: $f0 $70
    push af                                       ; $706e: $f5
    ld a, $01                                     ; $706f: $3e $01
    ldh [rSVBK], a                                ; $7071: $e0 $70
    call Call_000_12d8                            ; $7073: $cd $d8 $12
    pop af                                        ; $7076: $f1
    ldh [rSVBK], a                                ; $7077: $e0 $70
    jr jr_004_708a                                ; $7079: $18 $0f

jr_004_707b:
    ld c, $70                                     ; $707b: $0e $70
    ld e, $01                                     ; $707d: $1e $01
    ld d, $01                                     ; $707f: $16 $01
    ld hl, $cb8b                                  ; $7081: $21 $8b $cb
    ld a, [hl+]                                   ; $7084: $2a
    ld h, [hl]                                    ; $7085: $66
    ld l, a                                       ; $7086: $6f
    call Call_000_13c2                            ; $7087: $cd $c2 $13

jr_004_708a:
    ld hl, $d108                                  ; $708a: $21 $08 $d1
    inc hl                                        ; $708d: $23
    ld a, [$cb91]                                 ; $708e: $fa $91 $cb
    add [hl]                                      ; $7091: $86
    ld b, a                                       ; $7092: $47
    ld hl, $d108                                  ; $7093: $21 $08 $d1
    ld a, b                                       ; $7096: $78
    cp [hl]                                       ; $7097: $be
    inc hl                                        ; $7098: $23
    jr c, jr_004_70ac                             ; $7099: $38 $11

    ld c, $70                                     ; $709b: $0e $70
    ld e, $01                                     ; $709d: $1e $01
    ld d, $01                                     ; $709f: $16 $01
    ld hl, $cb8d                                  ; $70a1: $21 $8d $cb
    ld a, [hl+]                                   ; $70a4: $2a
    ld h, [hl]                                    ; $70a5: $66
    ld l, a                                       ; $70a6: $6f
    call Call_000_13c2                            ; $70a7: $cd $c2 $13
    jr jr_004_70d2                                ; $70aa: $18 $26

jr_004_70ac:
    call Call_000_3674                            ; $70ac: $cd $74 $36
    inc d                                         ; $70af: $14
    dec b                                         ; $70b0: $05
    ld bc, $0101                                  ; $70b1: $01 $01 $01
    nop                                           ; $70b4: $00
    nop                                           ; $70b5: $00
    ld hl, $cb8d                                  ; $70b6: $21 $8d $cb
    ld a, [hl+]                                   ; $70b9: $2a
    ld h, [hl]                                    ; $70ba: $66
    ld l, a                                       ; $70bb: $6f
    ld de, $d800                                  ; $70bc: $11 $00 $d8
    add hl, de                                    ; $70bf: $19
    ld d, h                                       ; $70c0: $54
    ld e, l                                       ; $70c1: $5d
    ld hl, $d800                                  ; $70c2: $21 $00 $d8
    ldh a, [rSVBK]                                ; $70c5: $f0 $70
    push af                                       ; $70c7: $f5
    ld a, $01                                     ; $70c8: $3e $01
    ldh [rSVBK], a                                ; $70ca: $e0 $70
    call Call_000_12d8                            ; $70cc: $cd $d8 $12
    pop af                                        ; $70cf: $f1
    ldh [rSVBK], a                                ; $70d0: $e0 $70

jr_004_70d2:
    call Call_004_70d9                            ; $70d2: $cd $d9 $70
    rst $20                                       ; $70d5: $e7
    jp z, Jump_004_719d                           ; $70d6: $ca $9d $71

Call_004_70d9:
    call Call_004_725e                            ; $70d9: $cd $5e $72
    ld b, $00                                     ; $70dc: $06 $00
    ld a, [$d109]                                 ; $70de: $fa $09 $d1
    ld c, a                                       ; $70e1: $4f

jr_004_70e2:
    push hl                                       ; $70e2: $e5
    ld a, [hl+]                                   ; $70e3: $2a
    ld h, [hl]                                    ; $70e4: $66
    ld l, a                                       ; $70e5: $6f
    ld a, $01                                     ; $70e6: $3e $01
    ldh [rSVBK], a                                ; $70e8: $e0 $70
    call Call_004_738b                            ; $70ea: $cd $8b $73
    ld de, $0000                                  ; $70ed: $11 $00 $00
    ldh [$c1], a                                  ; $70f0: $e0 $c1
    ld a, $fd                                     ; $70f2: $3e $fd
    ldh [$bd], a                                  ; $70f4: $e0 $bd
    ld a, $6d                                     ; $70f6: $3e $6d
    ldh [$be], a                                  ; $70f8: $e0 $be
    call Call_000_341a                            ; $70fa: $cd $1a $34
    ld a, $06                                     ; $70fd: $3e $06
    ldh [rSVBK], a                                ; $70ff: $e0 $70
    pop hl                                        ; $7101: $e1
    ld de, $0002                                  ; $7102: $11 $02 $00
    add hl, de                                    ; $7105: $19
    ld a, [hl]                                    ; $7106: $7e
    add hl, de                                    ; $7107: $19
    push hl                                       ; $7108: $e5
    ld d, a                                       ; $7109: $57
    ld a, b                                       ; $710a: $78
    add $05                                       ; $710b: $c6 $05
    ld e, a                                       ; $710d: $5f
    push bc                                       ; $710e: $c5
    push de                                       ; $710f: $d5
    call Call_004_7738                            ; $7110: $cd $38 $77
    pop de                                        ; $7113: $d1
    ldh a, [$d5]                                  ; $7114: $f0 $d5
    add $05                                       ; $7116: $c6 $05
    cp e                                          ; $7118: $bb
    jr nz, jr_004_7120                            ; $7119: $20 $05

    call Call_004_7767                            ; $711b: $cd $67 $77
    jr jr_004_712d                                ; $711e: $18 $0d

jr_004_7120:
    ld a, [$cb92]                                 ; $7120: $fa $92 $cb
    add $05                                       ; $7123: $c6 $05
    cp e                                          ; $7125: $bb
    jr nz, jr_004_712d                            ; $7126: $20 $05

    ld d, $07                                     ; $7128: $16 $07
    call Call_004_7757                            ; $712a: $cd $57 $77

jr_004_712d:
    pop bc                                        ; $712d: $c1
    pop hl                                        ; $712e: $e1
    inc b                                         ; $712f: $04
    ld a, c                                       ; $7130: $79
    cp b                                          ; $7131: $b8
    jr nz, jr_004_70e2                            ; $7132: $20 $ae

    ld a, [$cb8f]                                 ; $7134: $fa $8f $cb
    cp $ff                                        ; $7137: $fe $ff
    call z, Call_004_726f                         ; $7139: $cc $6f $72
    ld a, [$cb8f]                                 ; $713c: $fa $8f $cb
    cp $fe                                        ; $713f: $fe $fe
    call z, Call_004_72df                         ; $7141: $cc $df $72
    call Call_004_725e                            ; $7144: $cd $5e $72
    ldh a, [$d5]                                  ; $7147: $f0 $d5
    call Call_000_317d                            ; $7149: $cd $7d $31
    inc hl                                        ; $714c: $23
    inc hl                                        ; $714d: $23
    ld d, [hl]                                    ; $714e: $56
    jp Jump_004_7360                              ; $714f: $c3 $60 $73


Call_004_7152:
    call Call_004_725e                            ; $7152: $cd $5e $72
    inc hl                                        ; $7155: $23
    inc hl                                        ; $7156: $23
    ld a, [$d109]                                 ; $7157: $fa $09 $d1
    ld c, a                                       ; $715a: $4f
    ld b, $00                                     ; $715b: $06 $00

jr_004_715d:
    ld a, [hl]                                    ; $715d: $7e
    ld de, $0004                                  ; $715e: $11 $04 $00
    add hl, de                                    ; $7161: $19
    push hl                                       ; $7162: $e5
    ld d, a                                       ; $7163: $57
    ldh a, [$d5]                                  ; $7164: $f0 $d5
    cp b                                          ; $7166: $b8
    jr nz, jr_004_7178                            ; $7167: $20 $0f

    ld a, b                                       ; $7169: $78
    add $05                                       ; $716a: $c6 $05
    ld e, a                                       ; $716c: $5f
    push bc                                       ; $716d: $c5
    call Call_004_7767                            ; $716e: $cd $67 $77
    pop bc                                        ; $7171: $c1
    ld a, $06                                     ; $7172: $3e $06
    ldh [rSVBK], a                                ; $7174: $e0 $70
    jr jr_004_7188                                ; $7176: $18 $10

jr_004_7178:
    ld a, [$cb92]                                 ; $7178: $fa $92 $cb
    cp b                                          ; $717b: $b8
    jr nz, jr_004_7188                            ; $717c: $20 $0a

    add $05                                       ; $717e: $c6 $05
    ld e, a                                       ; $7180: $5f
    push bc                                       ; $7181: $c5
    ld d, $07                                     ; $7182: $16 $07
    call Call_004_7757                            ; $7184: $cd $57 $77
    pop bc                                        ; $7187: $c1

jr_004_7188:
    pop hl                                        ; $7188: $e1
    inc b                                         ; $7189: $04
    ld a, c                                       ; $718a: $79
    cp b                                          ; $718b: $b8
    jr nz, jr_004_715d                            ; $718c: $20 $cf

    jp Jump_004_719d                              ; $718e: $c3 $9d $71


    rst $08                                       ; $7191: $cf
    ret c                                         ; $7192: $d8

    rrca                                          ; $7193: $0f
    reti                                          ; $7194: $d9


    ld c, a                                       ; $7195: $4f
    reti                                          ; $7196: $d9


    adc a                                         ; $7197: $8f
    reti                                          ; $7198: $d9


    rst $08                                       ; $7199: $cf
    reti                                          ; $719a: $d9


    rrca                                          ; $719b: $0f
    db $da                                        ; $719c: $da

Jump_004_719d:
    ld a, [$cb8f]                                 ; $719d: $fa $8f $cb
    and $80                                       ; $71a0: $e6 $80
    ret nz                                        ; $71a2: $c0

    rst $18                                       ; $71a3: $df
    ld b, $00                                     ; $71a4: $06 $00
    ldh a, [rSVBK]                                ; $71a6: $f0 $70
    push af                                       ; $71a8: $f5
    ld a, $01                                     ; $71a9: $3e $01
    ldh [rSVBK], a                                ; $71ab: $e0 $70

jr_004_71ad:
    ld a, b                                       ; $71ad: $78
    ld hl, $7191                                  ; $71ae: $21 $91 $71
    call Call_000_319d                            ; $71b1: $cd $9d $31
    ld a, $70                                     ; $71b4: $3e $70
    ld [hl+], a                                   ; $71b6: $22
    ld [hl+], a                                   ; $71b7: $22
    ld [hl+], a                                   ; $71b8: $22
    inc b                                         ; $71b9: $04
    ld a, b                                       ; $71ba: $78
    cp $06                                        ; $71bb: $fe $06
    jr nz, jr_004_71ad                            ; $71bd: $20 $ee

    pop af                                        ; $71bf: $f1
    ldh [rSVBK], a                                ; $71c0: $e0 $70
    rst $20                                       ; $71c2: $e7
    call Call_000_3308                            ; $71c3: $cd $08 $33
    rst $18                                       ; $71c6: $df
    ld hl, $6e79                                  ; $71c7: $21 $79 $6e
    call Call_000_301f                            ; $71ca: $cd $1f $30
    ld a, $18                                     ; $71cd: $3e $18
    ld [$c1eb], a                                 ; $71cf: $ea $eb $c1
    ld a, $01                                     ; $71d2: $3e $01
    ld [$c234], a                                 ; $71d4: $ea $34 $c2
    ldh a, [rSVBK]                                ; $71d7: $f0 $70
    push af                                       ; $71d9: $f5
    ld a, $06                                     ; $71da: $3e $06
    ldh [rSVBK], a                                ; $71dc: $e0 $70
    ldh a, [$d5]                                  ; $71de: $f0 $d5
    ld b, a                                       ; $71e0: $47
    ld a, [$cb91]                                 ; $71e1: $fa $91 $cb
    add b                                         ; $71e4: $80
    ld hl, $d10c                                  ; $71e5: $21 $0c $d1
    call Call_000_317d                            ; $71e8: $cd $7d $31
    ld a, [hl]                                    ; $71eb: $7e
    ldh [$bc], a                                  ; $71ec: $e0 $bc
    pop af                                        ; $71ee: $f1
    ldh [rSVBK], a                                ; $71ef: $e0 $70
    ldh a, [$bc]                                  ; $71f1: $f0 $bc
    ld hl, $6452                                  ; $71f3: $21 $52 $64
    call Call_000_3171                            ; $71f6: $cd $71 $31
    ld b, $00                                     ; $71f9: $06 $00

jr_004_71fb:
    ld a, [hl+]                                   ; $71fb: $2a
    push hl                                       ; $71fc: $e5
    push bc                                       ; $71fd: $c5
    or a                                          ; $71fe: $b7
    jr z, jr_004_7206                             ; $71ff: $28 $05

    call Call_004_721e                            ; $7201: $cd $1e $72
    jr jr_004_7213                                ; $7204: $18 $0d

jr_004_7206:
    ldh [$c1], a                                  ; $7206: $e0 $c1
    ld a, $b3                                     ; $7208: $3e $b3
    ldh [$bd], a                                  ; $720a: $e0 $bd
    ld a, $6c                                     ; $720c: $3e $6c
    ldh [$be], a                                  ; $720e: $e0 $be
    call Call_000_341a                            ; $7210: $cd $1a $34

jr_004_7213:
    pop bc                                        ; $7213: $c1
    pop hl                                        ; $7214: $e1
    inc b                                         ; $7215: $04
    ld a, b                                       ; $7216: $78
    cp $06                                        ; $7217: $fe $06
    jr nz, jr_004_71fb                            ; $7219: $20 $e0

    jp RST_20                                     ; $721b: $c3 $20 $00


Call_004_721e:
    bit 7, a                                      ; $721e: $cb $7f
    jr z, jr_004_7241                             ; $7220: $28 $1f

    cpl                                           ; $7222: $2f
    inc a                                         ; $7223: $3c
    ldh [$c1], a                                  ; $7224: $e0 $c1
    ld a, $07                                     ; $7226: $3e $07
    ldh [$bd], a                                  ; $7228: $e0 $bd
    ld a, $6f                                     ; $722a: $3e $6f
    ldh [$be], a                                  ; $722c: $e0 $be
    call Call_000_341a                            ; $722e: $cd $1a $34
    ld hl, $2194                                  ; $7231: $21 $94 $21
    ldh [$c1], a                                  ; $7234: $e0 $c1
    ld a, $d3                                     ; $7236: $3e $d3
    ldh [$bd], a                                  ; $7238: $e0 $bd
    ld a, $6d                                     ; $723a: $3e $6d
    ldh [$be], a                                  ; $723c: $e0 $be
    jp Jump_000_341a                              ; $723e: $c3 $1a $34


jr_004_7241:
    ldh [$c1], a                                  ; $7241: $e0 $c1
    ld a, $07                                     ; $7243: $3e $07
    ldh [$bd], a                                  ; $7245: $e0 $bd
    ld a, $6f                                     ; $7247: $3e $6f
    ldh [$be], a                                  ; $7249: $e0 $be
    call Call_000_341a                            ; $724b: $cd $1a $34
    ld hl, $2191                                  ; $724e: $21 $91 $21
    ldh [$c1], a                                  ; $7251: $e0 $c1
    ld a, $d3                                     ; $7253: $3e $d3
    ldh [$bd], a                                  ; $7255: $e0 $bd
    ld a, $6d                                     ; $7257: $3e $6d
    ldh [$be], a                                  ; $7259: $e0 $be
    jp Jump_000_341a                              ; $725b: $c3 $1a $34


Call_004_725e:
    ld hl, $d108                                  ; $725e: $21 $08 $d1
    inc hl                                        ; $7261: $23
    inc hl                                        ; $7262: $23
    ld d, h                                       ; $7263: $54
    ld e, l                                       ; $7264: $5d
    ld a, [$cb91]                                 ; $7265: $fa $91 $cb
    ld l, a                                       ; $7268: $6f
    ld h, $00                                     ; $7269: $26 $00
    add hl, hl                                    ; $726b: $29
    add hl, hl                                    ; $726c: $29
    add hl, de                                    ; $726d: $19
    ret                                           ; $726e: $c9


Call_004_726f:
    ld a, [$cb94]                                 ; $726f: $fa $94 $cb
    xor $10                                       ; $7272: $ee $10
    ld [$cb94], a                                 ; $7274: $ea $94 $cb
    ld a, $01                                     ; $7277: $3e $01
    ldh [rSVBK], a                                ; $7279: $e0 $70
    ld hl, $6e72                                  ; $727b: $21 $72 $6e
    call Call_000_301f                            ; $727e: $cd $1f $30
    ld a, $20                                     ; $7281: $3e $20
    ld [$c1eb], a                                 ; $7283: $ea $eb $c1
    ld hl, $c1f0                                  ; $7286: $21 $f0 $c1
    ld a, [hl+]                                   ; $7289: $2a
    ld h, [hl]                                    ; $728a: $66
    ld l, a                                       ; $728b: $6f
    ld a, [$cb94]                                 ; $728c: $fa $94 $cb
    rst $08                                       ; $728f: $cf
    ld a, l                                       ; $7290: $7d
    ld [$c1f0], a                                 ; $7291: $ea $f0 $c1
    ld a, h                                       ; $7294: $7c
    ld [$c1f1], a                                 ; $7295: $ea $f1 $c1
    ld a, $06                                     ; $7298: $3e $06
    ldh [rSVBK], a                                ; $729a: $e0 $70
    call Call_004_725e                            ; $729c: $cd $5e $72
    inc hl                                        ; $729f: $23
    inc hl                                        ; $72a0: $23
    inc hl                                        ; $72a1: $23
    ld a, [$d109]                                 ; $72a2: $fa $09 $d1
    ld c, a                                       ; $72a5: $4f
    ld b, $00                                     ; $72a6: $06 $00

jr_004_72a8:
    push bc                                       ; $72a8: $c5
    ld a, [hl]                                    ; $72a9: $7e
    push hl                                       ; $72aa: $e5
    ld l, a                                       ; $72ab: $6f
    ld h, $00                                     ; $72ac: $26 $00
    ld a, $01                                     ; $72ae: $3e $01
    ldh [rSVBK], a                                ; $72b0: $e0 $70
    ldh [$c1], a                                  ; $72b2: $e0 $c1
    ld a, $1c                                     ; $72b4: $3e $1c
    ldh [$bd], a                                  ; $72b6: $e0 $bd
    ld a, $6f                                     ; $72b8: $3e $6f
    ldh [$be], a                                  ; $72ba: $e0 $be
    call Call_000_341a                            ; $72bc: $cd $1a $34
    ld hl, $11c5                                  ; $72bf: $21 $c5 $11
    ldh [$c1], a                                  ; $72c2: $e0 $c1
    ld a, $d3                                     ; $72c4: $3e $d3
    ldh [$bd], a                                  ; $72c6: $e0 $bd
    ld a, $6d                                     ; $72c8: $3e $6d
    ldh [$be], a                                  ; $72ca: $e0 $be
    call Call_000_341a                            ; $72cc: $cd $1a $34
    ld a, $06                                     ; $72cf: $3e $06
    ldh [rSVBK], a                                ; $72d1: $e0 $70
    pop hl                                        ; $72d3: $e1
    ld de, $0004                                  ; $72d4: $11 $04 $00
    add hl, de                                    ; $72d7: $19
    pop bc                                        ; $72d8: $c1
    inc b                                         ; $72d9: $04
    ld a, b                                       ; $72da: $78
    cp c                                          ; $72db: $b9
    jr nz, jr_004_72a8                            ; $72dc: $20 $ca

    ret                                           ; $72de: $c9


Call_004_72df:
    ld a, [$cb94]                                 ; $72df: $fa $94 $cb
    xor $10                                       ; $72e2: $ee $10
    ld [$cb94], a                                 ; $72e4: $ea $94 $cb
    ld a, $01                                     ; $72e7: $3e $01
    ldh [rSVBK], a                                ; $72e9: $e0 $70
    ld hl, $6e6b                                  ; $72eb: $21 $6b $6e
    call Call_000_301f                            ; $72ee: $cd $1f $30
    ld a, $20                                     ; $72f1: $3e $20
    ld [$c1eb], a                                 ; $72f3: $ea $eb $c1
    ld hl, $c1f0                                  ; $72f6: $21 $f0 $c1
    ld a, [hl+]                                   ; $72f9: $2a
    ld h, [hl]                                    ; $72fa: $66
    ld l, a                                       ; $72fb: $6f
    ld a, [$cb94]                                 ; $72fc: $fa $94 $cb
    rst $08                                       ; $72ff: $cf
    ld a, l                                       ; $7300: $7d
    ld [$c1f0], a                                 ; $7301: $ea $f0 $c1
    ld a, h                                       ; $7304: $7c
    ld [$c1f1], a                                 ; $7305: $ea $f1 $c1
    ld a, $06                                     ; $7308: $3e $06
    ldh [rSVBK], a                                ; $730a: $e0 $70
    call Call_004_725e                            ; $730c: $cd $5e $72
    inc hl                                        ; $730f: $23
    inc hl                                        ; $7310: $23
    ld a, [$d109]                                 ; $7311: $fa $09 $d1
    ld c, a                                       ; $7314: $4f
    ld b, $00                                     ; $7315: $06 $00

jr_004_7317:
    push bc                                       ; $7317: $c5
    push hl                                       ; $7318: $e5
    ld a, [$cbca]                                 ; $7319: $fa $ca $cb
    or a                                          ; $731c: $b7
    jr z, jr_004_7328                             ; $731d: $28 $09

    ld a, [hl]                                    ; $731f: $7e
    ld hl, $669e                                  ; $7320: $21 $9e $66
    call Call_000_319d                            ; $7323: $cd $9d $31
    jr jr_004_732f                                ; $7326: $18 $07

jr_004_7328:
    ld a, [hl]                                    ; $7328: $7e
    ld hl, $65be                                  ; $7329: $21 $be $65
    call Call_000_319d                            ; $732c: $cd $9d $31

jr_004_732f:
    ld a, $01                                     ; $732f: $3e $01
    ldh [rSVBK], a                                ; $7331: $e0 $70
    ldh [$c1], a                                  ; $7333: $e0 $c1
    ld a, $1c                                     ; $7335: $3e $1c
    ldh [$bd], a                                  ; $7337: $e0 $bd
    ld a, $6f                                     ; $7339: $3e $6f
    ldh [$be], a                                  ; $733b: $e0 $be
    call Call_000_341a                            ; $733d: $cd $1a $34
    ld hl, $11ef                                  ; $7340: $21 $ef $11
    ldh [$c1], a                                  ; $7343: $e0 $c1
    ld a, $d3                                     ; $7345: $3e $d3
    ldh [$bd], a                                  ; $7347: $e0 $bd
    ld a, $6d                                     ; $7349: $3e $6d
    ldh [$be], a                                  ; $734b: $e0 $be
    call Call_000_341a                            ; $734d: $cd $1a $34
    ld a, $06                                     ; $7350: $3e $06
    ldh [rSVBK], a                                ; $7352: $e0 $70
    pop hl                                        ; $7354: $e1
    ld de, $0004                                  ; $7355: $11 $04 $00
    add hl, de                                    ; $7358: $19
    pop bc                                        ; $7359: $c1
    inc b                                         ; $735a: $04
    ld a, b                                       ; $735b: $78
    cp c                                          ; $735c: $b9
    jr nz, jr_004_7317                            ; $735d: $20 $b8

    ret                                           ; $735f: $c9


Call_004_7360:
Jump_004_7360:
    ld hl, $6266                                  ; $7360: $21 $66 $62
    ld a, d                                       ; $7363: $7a
    ld d, $06                                     ; $7364: $16 $06
    ld e, $01                                     ; $7366: $1e $01
    ldh [$c1], a                                  ; $7368: $e0 $c1
    ld a, $3d                                     ; $736a: $3e $3d
    ldh [$bd], a                                  ; $736c: $e0 $bd
    ld a, $25                                     ; $736e: $3e $25
    ldh [$be], a                                  ; $7370: $e0 $be
    call Call_000_3421                            ; $7372: $cd $21 $34
    ret                                           ; $7375: $c9


    ld hl, $6266                                  ; $7376: $21 $66 $62
    ld a, d                                       ; $7379: $7a
    ld d, e                                       ; $737a: $53
    ld e, $01                                     ; $737b: $1e $01
    ldh [$c1], a                                  ; $737d: $e0 $c1
    ld a, $3d                                     ; $737f: $3e $3d
    ldh [$bd], a                                  ; $7381: $e0 $bd
    ld a, $25                                     ; $7383: $3e $25
    ldh [$be], a                                  ; $7385: $e0 $be
    call Call_000_3421                            ; $7387: $cd $21 $34
    ret                                           ; $738a: $c9


Call_004_738b:
    push hl                                       ; $738b: $e5
    ld hl, $6e8c                                  ; $738c: $21 $8c $6e
    ld a, b                                       ; $738f: $78
    call Call_000_319d                            ; $7390: $cd $9d $31
    call Call_000_301f                            ; $7393: $cd $1f $30
    ld a, [$cb88]                                 ; $7396: $fa $88 $cb
    add a                                         ; $7399: $87
    add a                                         ; $739a: $87
    add a                                         ; $739b: $87
    ld [$c1eb], a                                 ; $739c: $ea $eb $c1
    ld a, $02                                     ; $739f: $3e $02
    ld [$c234], a                                 ; $73a1: $ea $34 $c2
    ld hl, $c1f0                                  ; $73a4: $21 $f0 $c1
    ld a, [hl+]                                   ; $73a7: $2a
    ld h, [hl]                                    ; $73a8: $66
    ld l, a                                       ; $73a9: $6f
    ld a, [$cb93]                                 ; $73aa: $fa $93 $cb
    rst $08                                       ; $73ad: $cf
    ld a, l                                       ; $73ae: $7d
    ld [$c1f0], a                                 ; $73af: $ea $f0 $c1
    ld a, h                                       ; $73b2: $7c
    ld [$c1f1], a                                 ; $73b3: $ea $f1 $c1
    pop hl                                        ; $73b6: $e1
    ret                                           ; $73b7: $c9


Call_004_73b8:
    ld e, $05                                     ; $73b8: $1e $05
    call Call_004_779e                            ; $73ba: $cd $9e $77
    ld e, $06                                     ; $73bd: $1e $06
    call Call_004_779e                            ; $73bf: $cd $9e $77
    ld e, $07                                     ; $73c2: $1e $07
    call Call_004_779e                            ; $73c4: $cd $9e $77
    ld e, $08                                     ; $73c7: $1e $08
    jp Jump_004_779e                              ; $73c9: $c3 $9e $77


Call_004_73cc:
    ld a, $82                                     ; $73cc: $3e $82
    ld e, $ff                                     ; $73ce: $1e $ff
    call Call_000_0a6f                            ; $73d0: $cd $6f $0a
    ret nz                                        ; $73d3: $c0

    ld c, l                                       ; $73d4: $4d
    ld b, h                                       ; $73d5: $44
    jp Jump_000_0e9d                              ; $73d6: $c3 $9d $0e


    ldh a, [rSVBK]                                ; $73d9: $f0 $70
    push af                                       ; $73db: $f5
    ld a, $06                                     ; $73dc: $3e $06
    ldh [rSVBK], a                                ; $73de: $e0 $70
    ld a, [$d109]                                 ; $73e0: $fa $09 $d1
    or a                                          ; $73e3: $b7
    jp z, Jump_004_74e6                           ; $73e4: $ca $e6 $74

    ldh a, [$d5]                                  ; $73e7: $f0 $d5
    ld [$cb92], a                                 ; $73e9: $ea $92 $cb
    ldh a, [$a5]                                  ; $73ec: $f0 $a5
    and $30                                       ; $73ee: $e6 $30
    call nz, Call_004_74fc                        ; $73f0: $c4 $fc $74
    ld c, $00                                     ; $73f3: $0e $00
    ld e, $00                                     ; $73f5: $1e $00
    ldh a, [$a5]                                  ; $73f7: $f0 $a5
    bit 7, a                                      ; $73f9: $cb $7f
    jr z, jr_004_7446                             ; $73fb: $28 $49

    ld c, $01                                     ; $73fd: $0e $01
    ld hl, $d108                                  ; $73ff: $21 $08 $d1
    inc hl                                        ; $7402: $23
    ld b, [hl]                                    ; $7403: $46
    dec b                                         ; $7404: $05
    ldh a, [$d5]                                  ; $7405: $f0 $d5
    cp b                                          ; $7407: $b8
    jr nz, jr_004_7442                            ; $7408: $20 $38

    ld b, a                                       ; $740a: $47
    ld a, [$cb91]                                 ; $740b: $fa $91 $cb
    add b                                         ; $740e: $80
    inc a                                         ; $740f: $3c
    ld b, a                                       ; $7410: $47
    ld hl, $d108                                  ; $7411: $21 $08 $d1
    ld a, b                                       ; $7414: $78
    cp [hl]                                       ; $7415: $be
    jr z, jr_004_7442                             ; $7416: $28 $2a

    ld a, [$cb91]                                 ; $7418: $fa $91 $cb
    ld e, a                                       ; $741b: $5f
    ld a, [$d109]                                 ; $741c: $fa $09 $d1
    add e                                         ; $741f: $83
    ld [$cb91], a                                 ; $7420: $ea $91 $cb
    ld a, [$d109]                                 ; $7423: $fa $09 $d1
    ld d, a                                       ; $7426: $57
    ld a, [$d108]                                 ; $7427: $fa $08 $d1
    sub d                                         ; $742a: $92
    ld hl, $cb91                                  ; $742b: $21 $91 $cb
    cp [hl]                                       ; $742e: $be
    jr nc, jr_004_7434                            ; $742f: $30 $03

    ld [$cb91], a                                 ; $7431: $ea $91 $cb

jr_004_7434:
    ld c, $02                                     ; $7434: $0e $02
    ld a, [$d109]                                 ; $7436: $fa $09 $d1
    add e                                         ; $7439: $83
    ld hl, $cb91                                  ; $743a: $21 $91 $cb
    sub [hl]                                      ; $743d: $96
    ldh [$d5], a                                  ; $743e: $e0 $d5
    ld e, $01                                     ; $7440: $1e $01

jr_004_7442:
    ldh a, [$a5]                                  ; $7442: $f0 $a5
    jr jr_004_7477                                ; $7444: $18 $31

jr_004_7446:
    bit 6, a                                      ; $7446: $cb $77
    jr z, jr_004_7477                             ; $7448: $28 $2d

    ld c, $01                                     ; $744a: $0e $01
    ldh a, [$d5]                                  ; $744c: $f0 $d5
    or a                                          ; $744e: $b7
    jr nz, jr_004_7475                            ; $744f: $20 $24

    ld a, [$cb91]                                 ; $7451: $fa $91 $cb
    or a                                          ; $7454: $b7
    jr z, jr_004_7475                             ; $7455: $28 $1e

    ld a, [$d109]                                 ; $7457: $fa $09 $d1
    ld d, a                                       ; $745a: $57
    ld a, [$cb91]                                 ; $745b: $fa $91 $cb
    ld e, a                                       ; $745e: $5f
    cp d                                          ; $745f: $ba
    jr c, jr_004_7465                             ; $7460: $38 $03

    sub d                                         ; $7462: $92
    jr jr_004_7466                                ; $7463: $18 $01

jr_004_7465:
    xor a                                         ; $7465: $af

jr_004_7466:
    ld [$cb91], a                                 ; $7466: $ea $91 $cb
    ld c, $02                                     ; $7469: $0e $02
    ld a, e                                       ; $746b: $7b
    dec a                                         ; $746c: $3d
    ld hl, $cb91                                  ; $746d: $21 $91 $cb
    sub [hl]                                      ; $7470: $96
    ldh [$d5], a                                  ; $7471: $e0 $d5
    ld e, $01                                     ; $7473: $1e $01

jr_004_7475:
    ldh a, [$a5]                                  ; $7475: $f0 $a5

jr_004_7477:
    bit 0, a                                      ; $7477: $cb $47
    jr nz, jr_004_74b4                            ; $7479: $20 $39

    ld d, $00                                     ; $747b: $16 $00
    bit 1, a                                      ; $747d: $cb $4f
    jr nz, jr_004_74ce                            ; $747f: $20 $4d

    bit 7, a                                      ; $7481: $cb $7f
    jr z, jr_004_7491                             ; $7483: $28 $0c

    ld a, [$d109]                                 ; $7485: $fa $09 $d1
    dec a                                         ; $7488: $3d
    ld hl, $ffd5                                  ; $7489: $21 $d5 $ff
    cp [hl]                                       ; $748c: $be
    jr nz, jr_004_7491                            ; $748d: $20 $02

    jr jr_004_74a2                                ; $748f: $18 $11

jr_004_7491:
    ld a, e                                       ; $7491: $7b
    or a                                          ; $7492: $b7
    jr nz, jr_004_74a2                            ; $7493: $20 $0d

    ldh [$c1], a                                  ; $7495: $e0 $c1
    ld a, $86                                     ; $7497: $3e $86
    ldh [$bd], a                                  ; $7499: $e0 $bd
    ld a, $4f                                     ; $749b: $3e $4f
    ldh [$be], a                                  ; $749d: $e0 $be
    call Call_000_33fe                            ; $749f: $cd $fe $33

jr_004_74a2:
    ld a, c                                       ; $74a2: $79
    or a                                          ; $74a3: $b7
    jr z, jr_004_74e2                             ; $74a4: $28 $3c

    cp $02                                        ; $74a6: $fe $02
    jr z, jr_004_74af                             ; $74a8: $28 $05

    call Call_004_7152                            ; $74aa: $cd $52 $71
    jr jr_004_74e2                                ; $74ad: $18 $33

jr_004_74af:
    call Call_004_7033                            ; $74af: $cd $33 $70
    jr jr_004_74e2                                ; $74b2: $18 $2e

jr_004_74b4:
    ld a, $17                                     ; $74b4: $3e $17
    call Call_000_393e                            ; $74b6: $cd $3e $39
    ldh a, [$d5]                                  ; $74b9: $f0 $d5
    ld b, a                                       ; $74bb: $47
    ld a, [$cb91]                                 ; $74bc: $fa $91 $cb
    add b                                         ; $74bf: $80
    ld hl, $d10c                                  ; $74c0: $21 $0c $d1
    call Call_000_317d                            ; $74c3: $cd $7d $31
    ld a, [hl]                                    ; $74c6: $7e
    ld [$cb90], a                                 ; $74c7: $ea $90 $cb
    ld d, $01                                     ; $74ca: $16 $01
    jr jr_004_74d8                                ; $74cc: $18 $0a

jr_004_74ce:
    ld a, $18                                     ; $74ce: $3e $18
    call Call_000_393e                            ; $74d0: $cd $3e $39
    ld a, $ff                                     ; $74d3: $3e $ff
    ld [$cb90], a                                 ; $74d5: $ea $90 $cb

jr_004_74d8:
    call Call_004_7515                            ; $74d8: $cd $15 $75
    call Call_004_73b8                            ; $74db: $cd $b8 $73
    xor a                                         ; $74de: $af
    ld [$cbe9], a                                 ; $74df: $ea $e9 $cb

jr_004_74e2:
    pop af                                        ; $74e2: $f1
    ldh [rSVBK], a                                ; $74e3: $e0 $70
    ret                                           ; $74e5: $c9


Jump_004_74e6:
    pop af                                        ; $74e6: $f1
    ldh [rSVBK], a                                ; $74e7: $e0 $70
    ldh a, [$a5]                                  ; $74e9: $f0 $a5
    bit 1, a                                      ; $74eb: $cb $4f
    ret z                                         ; $74ed: $c8

    xor a                                         ; $74ee: $af
    ld [$cbe9], a                                 ; $74ef: $ea $e9 $cb
    dec a                                         ; $74f2: $3d
    ld [$cb90], a                                 ; $74f3: $ea $90 $cb
    ld d, $00                                     ; $74f6: $16 $00
    call Call_004_7515                            ; $74f8: $cd $15 $75
    ret                                           ; $74fb: $c9


Call_004_74fc:
    ldh a, [$a5]                                  ; $74fc: $f0 $a5
    and $20                                       ; $74fe: $e6 $20
    jr nz, jr_004_750d                            ; $7500: $20 $0b

    ld a, [$d109]                                 ; $7502: $fa $09 $d1
    dec a                                         ; $7505: $3d
    ldh [$d5], a                                  ; $7506: $e0 $d5
    ld a, $80                                     ; $7508: $3e $80
    ldh [$a5], a                                  ; $750a: $e0 $a5
    ret                                           ; $750c: $c9


jr_004_750d:
    xor a                                         ; $750d: $af
    ldh [$d5], a                                  ; $750e: $e0 $d5
    ld a, $40                                     ; $7510: $3e $40
    ldh [$a5], a                                  ; $7512: $e0 $a5
    ret                                           ; $7514: $c9


Call_004_7515:
    ld a, [$cb8f]                                 ; $7515: $fa $8f $cb
    cp $ff                                        ; $7518: $fe $ff
    jr z, jr_004_7524                             ; $751a: $28 $08

    cp $fe                                        ; $751c: $fe $fe
    jr z, jr_004_7533                             ; $751e: $28 $13

    ld a, $12                                     ; $7520: $3e $12
    jr jr_004_7555                                ; $7522: $18 $31

jr_004_7524:
    ld a, d                                       ; $7524: $7a
    or a                                          ; $7525: $b7
    jr z, jr_004_752f                             ; $7526: $28 $07

    call Call_004_73cc                            ; $7528: $cd $cc $73
    ld a, $15                                     ; $752b: $3e $15
    jr jr_004_7555                                ; $752d: $18 $26

jr_004_752f:
    ld a, $10                                     ; $752f: $3e $10
    jr jr_004_7555                                ; $7531: $18 $22

jr_004_7533:
    ld a, d                                       ; $7533: $7a
    or a                                          ; $7534: $b7
    jr z, jr_004_753b                             ; $7535: $28 $04

    ld a, $26                                     ; $7537: $3e $26
    jr jr_004_7555                                ; $7539: $18 $1a

jr_004_753b:
    call Call_004_7adc                            ; $753b: $cd $dc $7a
    or a                                          ; $753e: $b7
    jr z, jr_004_7545                             ; $753f: $28 $04

    ld a, $25                                     ; $7541: $3e $25
    jr jr_004_7555                                ; $7543: $18 $10

jr_004_7545:
    ld a, $02                                     ; $7545: $3e $02
    ld [$c0bb], a                                 ; $7547: $ea $bb $c0
    ld hl, $cc12                                  ; $754a: $21 $12 $cc
    ld a, [hl+]                                   ; $754d: $2a
    ld h, [hl]                                    ; $754e: $66
    ld l, a                                       ; $754f: $6f
    call Call_000_3911                            ; $7550: $cd $11 $39
    ld a, $0b                                     ; $7553: $3e $0b

jr_004_7555:
    call Call_000_2448                            ; $7555: $cd $48 $24
    ret                                           ; $7558: $c9


Call_004_7559:
    ld a, [$cb86]                                 ; $7559: $fa $86 $cb
    inc a                                         ; $755c: $3c
    ld hl, $6ef0                                  ; $755d: $21 $f0 $6e
    call Call_000_319d                            ; $7560: $cd $9d $31
    ld de, $d800                                  ; $7563: $11 $00 $d8
    add hl, de                                    ; $7566: $19
    ld a, l                                       ; $7567: $7d
    ld [$cb89], a                                 ; $7568: $ea $89 $cb
    ld a, h                                       ; $756b: $7c
    ld [$cb8a], a                                 ; $756c: $ea $8a $cb
    ld de, $cb29                                  ; $756f: $11 $29 $cb
    ld b, $00                                     ; $7572: $06 $00
    ld c, $06                                     ; $7574: $0e $06

jr_004_7576:
    push de                                       ; $7576: $d5
    ld a, [$cb87]                                 ; $7577: $fa $87 $cb
    add b                                         ; $757a: $80
    inc a                                         ; $757b: $3c
    ld hl, $6eb0                                  ; $757c: $21 $b0 $6e
    call Call_000_319d                            ; $757f: $cd $9d $31
    push hl                                       ; $7582: $e5
    ld hl, $cb89                                  ; $7583: $21 $89 $cb
    ld e, [hl]                                    ; $7586: $5e
    inc hl                                        ; $7587: $23
    ld d, [hl]                                    ; $7588: $56
    pop hl                                        ; $7589: $e1
    add hl, de                                    ; $758a: $19
    pop de                                        ; $758b: $d1
    ld a, l                                       ; $758c: $7d
    ld [de], a                                    ; $758d: $12
    inc de                                        ; $758e: $13
    ld a, h                                       ; $758f: $7c
    ld [de], a                                    ; $7590: $12
    inc de                                        ; $7591: $13
    inc b                                         ; $7592: $04
    ld a, b                                       ; $7593: $78
    cp c                                          ; $7594: $b9
    jr nz, jr_004_7576                            ; $7595: $20 $df

    ret                                           ; $7597: $c9


Call_004_7598:
    ld a, [$cb86]                                 ; $7598: $fa $86 $cb
    ld b, a                                       ; $759b: $47
    ld a, [$cb88]                                 ; $759c: $fa $88 $cb
    add b                                         ; $759f: $80
    add $06                                       ; $75a0: $c6 $06
    ld hl, $6ef0                                  ; $75a2: $21 $f0 $6e
    call Call_000_319d                            ; $75a5: $cd $9d $31
    ld de, $d800                                  ; $75a8: $11 $00 $d8
    add hl, de                                    ; $75ab: $19
    ld a, l                                       ; $75ac: $7d
    ld [$cb89], a                                 ; $75ad: $ea $89 $cb
    ld a, h                                       ; $75b0: $7c
    ld [$cb8a], a                                 ; $75b1: $ea $8a $cb
    ld de, $cb35                                  ; $75b4: $11 $35 $cb
    ld b, $01                                     ; $75b7: $06 $01
    ld c, $0d                                     ; $75b9: $0e $0d

jr_004_75bb:
    push de                                       ; $75bb: $d5
    ld a, [$cb87]                                 ; $75bc: $fa $87 $cb
    add b                                         ; $75bf: $80
    ld hl, $6eb0                                  ; $75c0: $21 $b0 $6e
    call Call_000_319d                            ; $75c3: $cd $9d $31
    push hl                                       ; $75c6: $e5
    ld hl, $cb89                                  ; $75c7: $21 $89 $cb
    ld e, [hl]                                    ; $75ca: $5e
    inc hl                                        ; $75cb: $23
    ld d, [hl]                                    ; $75cc: $56
    pop hl                                        ; $75cd: $e1
    add hl, de                                    ; $75ce: $19
    pop de                                        ; $75cf: $d1
    ld a, l                                       ; $75d0: $7d
    ld [de], a                                    ; $75d1: $12
    inc de                                        ; $75d2: $13
    ld a, h                                       ; $75d3: $7c
    ld [de], a                                    ; $75d4: $12
    inc de                                        ; $75d5: $13
    inc b                                         ; $75d6: $04
    inc b                                         ; $75d7: $04
    inc b                                         ; $75d8: $04
    ld a, b                                       ; $75d9: $78
    cp c                                          ; $75da: $b9
    jr nz, jr_004_75bb                            ; $75db: $20 $de

    ret                                           ; $75dd: $c9


Call_004_75de:
    ld a, [$cb86]                                 ; $75de: $fa $86 $cb
    ld b, a                                       ; $75e1: $47
    ld a, [$cb88]                                 ; $75e2: $fa $88 $cb
    add b                                         ; $75e5: $80
    add $03                                       ; $75e6: $c6 $03
    ld hl, $6ef0                                  ; $75e8: $21 $f0 $6e
    call Call_000_319d                            ; $75eb: $cd $9d $31
    ld de, $d800                                  ; $75ee: $11 $00 $d8
    add hl, de                                    ; $75f1: $19
    ld a, l                                       ; $75f2: $7d
    ld [$cb89], a                                 ; $75f3: $ea $89 $cb
    ld a, h                                       ; $75f6: $7c
    ld [$cb8a], a                                 ; $75f7: $ea $8a $cb
    ld de, $cb3d                                  ; $75fa: $11 $3d $cb
    ld b, $01                                     ; $75fd: $06 $01
    ld c, $0d                                     ; $75ff: $0e $0d

jr_004_7601:
    push de                                       ; $7601: $d5
    ld a, [$cb87]                                 ; $7602: $fa $87 $cb
    add b                                         ; $7605: $80
    ld hl, $6eb0                                  ; $7606: $21 $b0 $6e
    call Call_000_319d                            ; $7609: $cd $9d $31
    push hl                                       ; $760c: $e5
    ld hl, $cb89                                  ; $760d: $21 $89 $cb
    ld e, [hl]                                    ; $7610: $5e
    inc hl                                        ; $7611: $23
    ld d, [hl]                                    ; $7612: $56
    pop hl                                        ; $7613: $e1
    add hl, de                                    ; $7614: $19
    pop de                                        ; $7615: $d1
    ld a, l                                       ; $7616: $7d
    ld [de], a                                    ; $7617: $12
    inc de                                        ; $7618: $13
    ld a, h                                       ; $7619: $7c
    ld [de], a                                    ; $761a: $12
    inc de                                        ; $761b: $13
    inc b                                         ; $761c: $04
    inc b                                         ; $761d: $04
    inc b                                         ; $761e: $04
    ld a, b                                       ; $761f: $78
    cp c                                          ; $7620: $b9
    jr nz, jr_004_7601                            ; $7621: $20 $de

    ret                                           ; $7623: $c9


Call_004_7624:
    ld a, [$cb86]                                 ; $7624: $fa $86 $cb
    add $03                                       ; $7627: $c6 $03
    ld hl, $6ef0                                  ; $7629: $21 $f0 $6e
    call Call_000_319d                            ; $762c: $cd $9d $31
    ld de, $d800                                  ; $762f: $11 $00 $d8
    add hl, de                                    ; $7632: $19
    ld a, l                                       ; $7633: $7d
    ld [$cb89], a                                 ; $7634: $ea $89 $cb
    ld a, h                                       ; $7637: $7c
    ld [$cb8a], a                                 ; $7638: $ea $8a $cb
    ld de, $cb45                                  ; $763b: $11 $45 $cb
    ld b, $00                                     ; $763e: $06 $00
    ld c, $01                                     ; $7640: $0e $01

jr_004_7642:
    push de                                       ; $7642: $d5
    ld a, [$cb87]                                 ; $7643: $fa $87 $cb
    add b                                         ; $7646: $80
    ld hl, $6eb0                                  ; $7647: $21 $b0 $6e
    call Call_000_319d                            ; $764a: $cd $9d $31
    push hl                                       ; $764d: $e5
    ld hl, $cb89                                  ; $764e: $21 $89 $cb
    ld e, [hl]                                    ; $7651: $5e
    inc hl                                        ; $7652: $23
    ld d, [hl]                                    ; $7653: $56
    pop hl                                        ; $7654: $e1
    add hl, de                                    ; $7655: $19
    pop de                                        ; $7656: $d1
    ld a, l                                       ; $7657: $7d
    ld [de], a                                    ; $7658: $12
    inc de                                        ; $7659: $13
    ld a, h                                       ; $765a: $7c
    ld [de], a                                    ; $765b: $12
    inc de                                        ; $765c: $13
    ld a, c                                       ; $765d: $79
    xor $01                                       ; $765e: $ee $01
    ld c, a                                       ; $7660: $4f
    inc b                                         ; $7661: $04
    ld a, b                                       ; $7662: $78
    add c                                         ; $7663: $81
    ld b, a                                       ; $7664: $47
    cp $0c                                        ; $7665: $fe $0c
    jr nz, jr_004_7642                            ; $7667: $20 $d9

    ret                                           ; $7669: $c9


    db $00, $03, $30, $00, $01, $00, $00, $00, $00, $03, $48, $00, $02, $01, $01, $00
    db $01, $03, $60, $01, $03, $02, $02, $00, $02, $03, $78, $02, $03, $03, $03, $00
    db $03, $00, $00, $00, $00, $00, $00, $00, $04, $00, $00, $03, $03, $03, $03, $00
    db $05

Jump_004_769b:
    ld bc, $0031                                  ; $769b: $01 $31 $00
    ld de, $cb55                                  ; $769e: $11 $55 $cb
    ld hl, $766a                                  ; $76a1: $21 $6a $76
    call Call_000_1140                            ; $76a4: $cd $40 $11
    ld a, [$cb86]                                 ; $76a7: $fa $86 $cb
    add a                                         ; $76aa: $87
    add a                                         ; $76ab: $87
    add a                                         ; $76ac: $87
    add $03                                       ; $76ad: $c6 $03
    ld [$cb56], a                                 ; $76af: $ea $56 $cb
    ld [$cb5e], a                                 ; $76b2: $ea $5e $cb
    ld [$cb66], a                                 ; $76b5: $ea $66 $cb
    ld [$cb6e], a                                 ; $76b8: $ea $6e $cb
    ld a, [$cb87]                                 ; $76bb: $fa $87 $cb
    inc a                                         ; $76be: $3c
    add a                                         ; $76bf: $87
    add a                                         ; $76c0: $87
    add a                                         ; $76c1: $87
    ld [$cb57], a                                 ; $76c2: $ea $57 $cb
    add $18                                       ; $76c5: $c6 $18
    ld [$cb5f], a                                 ; $76c7: $ea $5f $cb
    add $18                                       ; $76ca: $c6 $18
    ld [$cb67], a                                 ; $76cc: $ea $67 $cb
    add $18                                       ; $76cf: $c6 $18
    ld [$cb6f], a                                 ; $76d1: $ea $6f $cb
    ret                                           ; $76d4: $c9


Call_004_76d5:
    ld a, [$cb86]                                 ; $76d5: $fa $86 $cb
    add $04                                       ; $76d8: $c6 $04
    ld hl, $6ef0                                  ; $76da: $21 $f0 $6e
    call Call_000_3194                            ; $76dd: $cd $94 $31
    ld a, [$cb87]                                 ; $76e0: $fa $87 $cb
    dec a                                         ; $76e3: $3d
    ld hl, $6eb0                                  ; $76e4: $21 $b0 $6e
    call Call_000_319d                            ; $76e7: $cd $9d $31
    add hl, de                                    ; $76ea: $19
    ld a, l                                       ; $76eb: $7d
    ld [$cb8b], a                                 ; $76ec: $ea $8b $cb
    ld a, h                                       ; $76ef: $7c
    ld [$cb8c], a                                 ; $76f0: $ea $8c $cb
    ldh a, [rSVBK]                                ; $76f3: $f0 $70
    push af                                       ; $76f5: $f5
    ld a, $06                                     ; $76f6: $3e $06
    ldh [rSVBK], a                                ; $76f8: $e0 $70
    ld a, [$d109]                                 ; $76fa: $fa $09 $d1
    ld c, a                                       ; $76fd: $4f
    pop af                                        ; $76fe: $f1
    ldh [rSVBK], a                                ; $76ff: $e0 $70
    ld a, c                                       ; $7701: $79
    add c                                         ; $7702: $81
    add c                                         ; $7703: $81
    ld c, a                                       ; $7704: $4f
    ld a, [$cb87]                                 ; $7705: $fa $87 $cb
    dec a                                         ; $7708: $3d
    add c                                         ; $7709: $81
    ld hl, $6eb0                                  ; $770a: $21 $b0 $6e
    call Call_000_319d                            ; $770d: $cd $9d $31
    add hl, de                                    ; $7710: $19
    ld a, l                                       ; $7711: $7d
    ld [$cb8d], a                                 ; $7712: $ea $8d $cb
    ld a, h                                       ; $7715: $7c
    ld [$cb8e], a                                 ; $7716: $ea $8e $cb
    ldh a, [rSVBK]                                ; $7719: $f0 $70
    push af                                       ; $771b: $f5
    ld a, $06                                     ; $771c: $3e $06
    ldh [rSVBK], a                                ; $771e: $e0 $70
    ld a, [$d109]                                 ; $7720: $fa $09 $d1
    ldh [$bc], a                                  ; $7723: $e0 $bc
    pop af                                        ; $7725: $f1
    ldh [rSVBK], a                                ; $7726: $e0 $70
    ldh a, [$bc]                                  ; $7728: $f0 $bc
    dec a                                         ; $772a: $3d
    ld [$cb80], a                                 ; $772b: $ea $80 $cb
    ld [$cb81], a                                 ; $772e: $ea $81 $cb
    ld [$cb82], a                                 ; $7731: $ea $82 $cb
    ld [$cb83], a                                 ; $7734: $ea $83 $cb
    ret                                           ; $7737: $c9


Call_004_7738:
    push de                                       ; $7738: $d5
    ld hl, $cb96                                  ; $7739: $21 $96 $cb
    ld a, e                                       ; $773c: $7b
    call Call_000_318c                            ; $773d: $cd $8c $31
    ld a, [hl+]                                   ; $7740: $2a
    ld c, a                                       ; $7741: $4f
    ld b, [hl]                                    ; $7742: $46
    pop de                                        ; $7743: $d1
    ld a, d                                       ; $7744: $7a
    jp Jump_000_08ec                              ; $7745: $c3 $ec $08


    push bc                                       ; $7748: $c5
    ld hl, $cb96                                  ; $7749: $21 $96 $cb
    ld a, e                                       ; $774c: $7b
    call Call_000_318c                            ; $774d: $cd $8c $31
    ld a, [hl+]                                   ; $7750: $2a
    ld c, a                                       ; $7751: $4f
    ld b, [hl]                                    ; $7752: $46
    pop de                                        ; $7753: $d1
    jp Jump_000_090d                              ; $7754: $c3 $0d $09


Call_004_7757:
jr_004_7757:
    push de                                       ; $7757: $d5
    ld hl, $cb96                                  ; $7758: $21 $96 $cb
    ld a, e                                       ; $775b: $7b
    call Call_000_318c                            ; $775c: $cd $8c $31
    ld a, [hl+]                                   ; $775f: $2a
    ld c, a                                       ; $7760: $4f
    ld b, [hl]                                    ; $7761: $46
    pop de                                        ; $7762: $d1
    ld a, d                                       ; $7763: $7a
    jp Jump_000_0902                              ; $7764: $c3 $02 $09


Call_004_7767:
    push de                                       ; $7767: $d5
    call Call_004_7360                            ; $7768: $cd $60 $73
    pop de                                        ; $776b: $d1
    ld d, $06                                     ; $776c: $16 $06
    jr jr_004_7757                                ; $776e: $18 $e7

Call_004_7770:
    push de                                       ; $7770: $d5
    ld hl, $cb96                                  ; $7771: $21 $96 $cb
    ld a, e                                       ; $7774: $7b
    call Call_000_318c                            ; $7775: $cd $8c $31
    ld a, [hl+]                                   ; $7778: $2a
    ld c, a                                       ; $7779: $4f
    ld b, [hl]                                    ; $777a: $46
    pop de                                        ; $777b: $d1
    ld hl, $002b                                  ; $777c: $21 $2b $00
    add hl, bc                                    ; $777f: $09
    ld a, d                                       ; $7780: $7a
    or a                                          ; $7781: $b7
    jr z, jr_004_7787                             ; $7782: $28 $03

    res 0, [hl]                                   ; $7784: $cb $86
    ret                                           ; $7786: $c9


jr_004_7787:
    set 0, [hl]                                   ; $7787: $cb $c6
    ret                                           ; $7789: $c9


Call_004_778a:
    push af                                       ; $778a: $f5
    ldh [$9b], a                                  ; $778b: $e0 $9b
    ld a, $83                                     ; $778d: $3e $83
    call Call_000_03a0                            ; $778f: $cd $a0 $03
    pop af                                        ; $7792: $f1
    ld hl, $cb96                                  ; $7793: $21 $96 $cb
    call Call_000_318c                            ; $7796: $cd $8c $31
    ld a, e                                       ; $7799: $7b
    ld [hl+], a                                   ; $779a: $22
    ld a, d                                       ; $779b: $7a
    ld [hl], a                                    ; $779c: $77
    ret                                           ; $779d: $c9


Call_004_779e:
Jump_004_779e:
    ld hl, $cb96                                  ; $779e: $21 $96 $cb
    ld a, e                                       ; $77a1: $7b
    call Call_000_318c                            ; $77a2: $cd $8c $31
    xor a                                         ; $77a5: $af
    ld [hl+], a                                   ; $77a6: $22
    ld [hl], a                                    ; $77a7: $77
    ld a, $83                                     ; $77a8: $3e $83
    call Call_000_0a6f                            ; $77aa: $cd $6f $0a
    ret nz                                        ; $77ad: $c0

    ld b, h                                       ; $77ae: $44
    ld c, l                                       ; $77af: $4d
    jp Jump_000_0e9d                              ; $77b0: $c3 $9d $0e


Call_004_77b3:
Jump_004_77b3:
    ld e, $ff                                     ; $77b3: $1e $ff
    ld a, $82                                     ; $77b5: $3e $82
    call Call_000_0a6f                            ; $77b7: $cd $6f $0a
    ret z                                         ; $77ba: $c8

    xor a                                         ; $77bb: $af
    ldh [$9b], a                                  ; $77bc: $e0 $9b
    ld a, $82                                     ; $77be: $3e $82
    jp Jump_000_03a0                              ; $77c0: $c3 $a0 $03


    ld a, $82                                     ; $77c3: $3e $82
    ld e, $ff                                     ; $77c5: $1e $ff
    call Call_000_0a6f                            ; $77c7: $cd $6f $0a
    ret nz                                        ; $77ca: $c0

    ld b, h                                       ; $77cb: $44
    ld c, l                                       ; $77cc: $4d
    jp Jump_000_0e9d                              ; $77cd: $c3 $9d $0e


    db $01, $01, $d7, $77, $a8, $00, $41, $c1, $d8, $e1, $d8, $01, $d9, $21, $d9, $41
    db $d9, $61, $d9, $81, $d9, $a1, $d9, $c1, $d9, $af, $ea, $e9, $cb, $df, $0e, $70
    db $1e, $11, $16, $06, $21, $a1, $00, $cd, $c2, $13, $e7, $cd, $08, $33, $df, $21
    db $d0, $77, $cd, $1f, $30

    ld a, $7c                                     ; $7805: $3e $7c
    ld [$c1eb], a                                 ; $7807: $ea $eb $c1
    ld a, $02                                     ; $780a: $3e $02
    ld [$c234], a                                 ; $780c: $ea $34 $c2
    ld hl, $cb2a                                  ; $780f: $21 $2a $cb
    ld a, [hl+]                                   ; $7812: $2a
    ld h, [hl]                                    ; $7813: $66
    ld l, a                                       ; $7814: $6f
    ldh [$c1], a                                  ; $7815: $e0 $c1
    ld a, $94                                     ; $7817: $3e $94
    ldh [$bd], a                                  ; $7819: $e0 $bd
    ld a, $6e                                     ; $781b: $3e $6e
    ldh [$be], a                                  ; $781d: $e0 $be
    call Call_000_341a                            ; $781f: $cd $1a $34
    ldh [$c1], a                                  ; $7822: $e0 $c1
    ld a, $b3                                     ; $7824: $3e $b3
    ldh [$bd], a                                  ; $7826: $e0 $bd
    ld a, $6c                                     ; $7828: $3e $6c
    ldh [$be], a                                  ; $782a: $e0 $be
    call Call_000_341a                            ; $782c: $cd $1a $34
    ldh [$c1], a                                  ; $782f: $e0 $c1
    ld a, $b3                                     ; $7831: $3e $b3
    ldh [$bd], a                                  ; $7833: $e0 $bd
    ld a, $6c                                     ; $7835: $3e $6c
    ldh [$be], a                                  ; $7837: $e0 $be
    call Call_000_341a                            ; $7839: $cd $1a $34
    ld hl, $11ce                                  ; $783c: $21 $ce $11
    ldh [$c1], a                                  ; $783f: $e0 $c1
    ld a, $1a                                     ; $7841: $3e $1a
    ldh [$bd], a                                  ; $7843: $e0 $bd
    ld a, $6e                                     ; $7845: $3e $6e
    ldh [$be], a                                  ; $7847: $e0 $be
    call Call_000_341a                            ; $7849: $cd $1a $34
    jp RST_20                                     ; $784c: $c3 $20 $00


    ldh a, [$a5]                                  ; $784f: $f0 $a5
    or a                                          ; $7851: $b7
    ret z                                         ; $7852: $c8

    ld a, $10                                     ; $7853: $3e $10
    jp Jump_000_2448                              ; $7855: $c3 $48 $24


    ld bc, $701a                                  ; $7858: $01 $1a $70
    ld bc, $0000                                  ; $785b: $01 $00 $00
    xor d                                         ; $785e: $aa
    inc h                                         ; $785f: $24
    ld bc, $0102                                  ; $7860: $01 $02 $01
    ld [bc], a                                    ; $7863: $02
    ld [bc], a                                    ; $7864: $02
    ld bc, $786b                                  ; $7865: $01 $6b $78
    nop                                           ; $7868: $00
    ld [bc], a                                    ; $7869: $02
    ld b, c                                       ; $786a: $41
    inc b                                         ; $786b: $04
    ret c                                         ; $786c: $d8

    ld bc, $7401                                  ; $786d: $01 $01 $74
    ld a, b                                       ; $7870: $78
    db $10                                        ; $7871: $10
    ld [bc], a                                    ; $7872: $02
    ld b, c                                       ; $7873: $41
    inc h                                         ; $7874: $24
    ret c                                         ; $7875: $d8

    ld b, h                                       ; $7876: $44
    ret c                                         ; $7877: $d8

    ld h, h                                       ; $7878: $64
    ret c                                         ; $7879: $d8

    ld bc, $8101                                  ; $787a: $01 $01 $81
    ld a, b                                       ; $787d: $78
    xor b                                         ; $787e: $a8
    nop                                           ; $787f: $00
    ld b, c                                       ; $7880: $41
    ld [hl+], a                                   ; $7881: $22
    reti                                          ; $7882: $d9


    ld b, d                                       ; $7883: $42
    reti                                          ; $7884: $d9


    ld bc, $8c01                                  ; $7885: $01 $01 $8c
    ld a, b                                       ; $7888: $78
    dec sp                                        ; $7889: $3b
    ld bc, $0841                                  ; $788a: $01 $41 $08
    jp c, $0101                                   ; $788d: $da $01 $01

    sub l                                         ; $7890: $95
    ld a, b                                       ; $7891: $78
    xor b                                         ; $7892: $a8
    nop                                           ; $7893: $00
    ld b, c                                       ; $7894: $41
    and d                                         ; $7895: $a2
    ret c                                         ; $7896: $d8

    jp nz, $e2d8                                  ; $7897: $c2 $d8 $e2

    ret c                                         ; $789a: $d8

    ld bc, $a201                                  ; $789b: $01 $01 $a2
    ld a, b                                       ; $789e: $78
    ldh [rP1], a                                  ; $789f: $e0 $00
    ld b, c                                       ; $78a1: $41
    dec h                                         ; $78a2: $25
    reti                                          ; $78a3: $d9


    ld hl, $7858                                  ; $78a4: $21 $58 $78
    jp Jump_000_2837                              ; $78a7: $c3 $37 $28


    xor a                                         ; $78aa: $af
    ld [$cb86], a                                 ; $78ab: $ea $86 $cb
    ld a, $05                                     ; $78ae: $3e $05
    ld [$cb87], a                                 ; $78b0: $ea $87 $cb
    ld a, $0c                                     ; $78b3: $3e $0c
    ld [$cb88], a                                 ; $78b5: $ea $88 $cb
    call Call_004_6fbb                            ; $78b8: $cd $bb $6f
    call Call_000_38fb                            ; $78bb: $cd $fb $38
    ld a, l                                       ; $78be: $7d
    ld [$cc12], a                                 ; $78bf: $ea $12 $cc
    ld a, h                                       ; $78c2: $7c
    ld [$cc13], a                                 ; $78c3: $ea $13 $cc
    ld hl, $cbc8                                  ; $78c6: $21 $c8 $cb
    ld a, [hl+]                                   ; $78c9: $2a
    ld h, [hl]                                    ; $78ca: $66
    ld l, a                                       ; $78cb: $6f
    ld a, [hl]                                    ; $78cc: $7e
    ld hl, $5ced                                  ; $78cd: $21 $ed $5c
    call Call_000_0fad                            ; $78d0: $cd $ad $0f
    call Call_000_19b7                            ; $78d3: $cd $b7 $19
    ld hl, $c124                                  ; $78d6: $21 $24 $c1
    ld a, $04                                     ; $78d9: $3e $04
    ld [hl+], a                                   ; $78db: $22
    ld [hl+], a                                   ; $78dc: $22
    ld [hl+], a                                   ; $78dd: $22
    ld a, $8b                                     ; $78de: $3e $8b
    ld [hl+], a                                   ; $78e0: $22
    ld a, $5e                                     ; $78e1: $3e $5e
    ld [hl+], a                                   ; $78e3: $22
    ld a, $1e                                     ; $78e4: $3e $1e
    ld [$c141], a                                 ; $78e6: $ea $41 $c1
    ld hl, $c143                                  ; $78e9: $21 $43 $c1
    ld a, [hl+]                                   ; $78ec: $2a
    ld h, [hl]                                    ; $78ed: $66
    ld l, a                                       ; $78ee: $6f
    ld de, $0020                                  ; $78ef: $11 $20 $00
    add hl, de                                    ; $78f2: $19
    ld a, l                                       ; $78f3: $7d
    ld [$c143], a                                 ; $78f4: $ea $43 $c1
    ld a, h                                       ; $78f7: $7c
    ld [$c144], a                                 ; $78f8: $ea $44 $c1
    ld hl, $79ba                                  ; $78fb: $21 $ba $79
    ldh [$c1], a                                  ; $78fe: $e0 $c1
    ld a, $6d                                     ; $7900: $3e $6d
    ldh [$bd], a                                  ; $7902: $e0 $bd
    ld a, $7c                                     ; $7904: $3e $7c
    ldh [$be], a                                  ; $7906: $e0 $be
    call Call_000_340c                            ; $7908: $cd $0c $34
    ld hl, $0120                                  ; $790b: $21 $20 $01
    call Call_000_3929                            ; $790e: $cd $29 $39
    ld hl, $cbc8                                  ; $7911: $21 $c8 $cb
    ld a, [hl+]                                   ; $7914: $2a
    ld h, [hl]                                    ; $7915: $66
    ld l, a                                       ; $7916: $6f
    ld a, [hl]                                    ; $7917: $7e
    ld bc, $5b82                                  ; $7918: $01 $82 $5b
    ld hl, $0080                                  ; $791b: $21 $80 $00
    ldh [$c1], a                                  ; $791e: $e0 $c1
    ld a, $6a                                     ; $7920: $3e $6a
    ldh [$bd], a                                  ; $7922: $e0 $bd
    ld a, $0f                                     ; $7924: $3e $0f
    ldh [$be], a                                  ; $7926: $e0 $be
    call Call_000_3421                            ; $7928: $cd $21 $34
    ld bc, $5cea                                  ; $792b: $01 $ea $5c
    ld de, $d800                                  ; $792e: $11 $00 $d8
    ld hl, $0000                                  ; $7931: $21 $00 $00
    push af                                       ; $7934: $f5
    ldh [$c1], a                                  ; $7935: $e0 $c1
    ld a, $7a                                     ; $7937: $3e $7a
    ldh [$bd], a                                  ; $7939: $e0 $bd
    ld a, $0f                                     ; $793b: $3e $0f
    ldh [$be], a                                  ; $793d: $e0 $be
    call Call_000_3421                            ; $793f: $cd $21 $34
    pop af                                        ; $7942: $f1
    ld d, $04                                     ; $7943: $16 $04
    ld e, $01                                     ; $7945: $1e $01
    ld hl, $5ced                                  ; $7947: $21 $ed $5c
    ldh [$c1], a                                  ; $794a: $e0 $c1
    ld a, $50                                     ; $794c: $3e $50
    ldh [$bd], a                                  ; $794e: $e0 $bd
    ld a, $25                                     ; $7950: $3e $25
    ldh [$be], a                                  ; $7952: $e0 $be
    call Call_000_3421                            ; $7954: $cd $21 $34
    ld hl, $7864                                  ; $7957: $21 $64 $78
    call Call_000_301f                            ; $795a: $cd $1f $30
    ld a, $7c                                     ; $795d: $3e $7c
    ld [$c1eb], a                                 ; $795f: $ea $eb $c1
    ld hl, $cbc8                                  ; $7962: $21 $c8 $cb
    ld a, [hl+]                                   ; $7965: $2a
    ld h, [hl]                                    ; $7966: $66
    ld l, a                                       ; $7967: $6f
    inc hl                                        ; $7968: $23
    ld a, [hl+]                                   ; $7969: $2a
    ld h, [hl]                                    ; $796a: $66
    ld l, a                                       ; $796b: $6f
    ldh [$c1], a                                  ; $796c: $e0 $c1
    ld a, $1a                                     ; $796e: $3e $1a
    ldh [$bd], a                                  ; $7970: $e0 $bd
    ld a, $6e                                     ; $7972: $3e $6e
    ldh [$be], a                                  ; $7974: $e0 $be
    call Call_000_341a                            ; $7976: $cd $1a $34
    ld a, $03                                     ; $7979: $3e $03
    ldh [$c1], a                                  ; $797b: $e0 $c1
    ld a, $0f                                     ; $797d: $3e $0f
    ldh [$bd], a                                  ; $797f: $e0 $bd
    ld a, $25                                     ; $7981: $3e $25
    ldh [$be], a                                  ; $7983: $e0 $be
    call Call_000_3421                            ; $7985: $cd $21 $34
    ld hl, $ffb8                                  ; $7988: $21 $b8 $ff
    ld [hl], $00                                  ; $798b: $36 $00
    inc hl                                        ; $798d: $23
    ld [hl], $00                                  ; $798e: $36 $00
    ld a, $7c                                     ; $7990: $3e $7c
    ldh [$c1], a                                  ; $7992: $e0 $c1
    ld a, $d6                                     ; $7994: $3e $d6
    ldh [$bd], a                                  ; $7996: $e0 $bd
    ld a, $11                                     ; $7998: $3e $11
    ldh [$be], a                                  ; $799a: $e0 $be
    call Call_000_3421                            ; $799c: $cd $21 $34
    ld a, $02                                     ; $799f: $3e $02
    ldh [$9b], a                                  ; $79a1: $e0 $9b
    ld a, $7c                                     ; $79a3: $3e $7c
    call Call_000_03a0                            ; $79a5: $cd $a0 $03
    call Call_004_7adc                            ; $79a8: $cd $dc $7a
    or a                                          ; $79ab: $b7
    jp z, Jump_004_7b01                           ; $79ac: $ca $01 $7b

jr_004_79af:
    call Call_004_7e9a                            ; $79af: $cd $9a $7e
    ld a, $00                                     ; $79b2: $3e $00
    call Call_004_7ba9                            ; $79b4: $cd $a9 $7b
    ld hl, $788e                                  ; $79b7: $21 $8e $78
    call Call_000_301f                            ; $79ba: $cd $1f $30
    ld a, $7c                                     ; $79bd: $3e $7c
    ld [$c1eb], a                                 ; $79bf: $ea $eb $c1
    ld hl, $11f5                                  ; $79c2: $21 $f5 $11
    ldh [$c1], a                                  ; $79c5: $e0 $c1
    ld a, $1a                                     ; $79c7: $3e $1a
    ldh [$bd], a                                  ; $79c9: $e0 $bd
    ld a, $6e                                     ; $79cb: $3e $6e
    ldh [$be], a                                  ; $79cd: $e0 $be
    call Call_000_341a                            ; $79cf: $cd $1a $34
    ld hl, $11f8                                  ; $79d2: $21 $f8 $11
    ldh [$c1], a                                  ; $79d5: $e0 $c1
    ld a, $1a                                     ; $79d7: $3e $1a
    ldh [$bd], a                                  ; $79d9: $e0 $bd
    ld a, $6e                                     ; $79db: $3e $6e
    ldh [$be], a                                  ; $79dd: $e0 $be
    call Call_000_341a                            ; $79df: $cd $1a $34
    ld hl, $11fb                                  ; $79e2: $21 $fb $11
    ldh [$c1], a                                  ; $79e5: $e0 $c1
    ld a, $1a                                     ; $79e7: $3e $1a
    ldh [$bd], a                                  ; $79e9: $e0 $bd
    ld a, $6e                                     ; $79eb: $3e $6e
    ldh [$be], a                                  ; $79ed: $e0 $be
    call Call_000_341a                            ; $79ef: $cd $1a $34
    xor a                                         ; $79f2: $af
    ld [$cbe7], a                                 ; $79f3: $ea $e7 $cb
    ldh [$d5], a                                  ; $79f6: $e0 $d5
    ld a, $04                                     ; $79f8: $3e $04
    ld [$cbe9], a                                 ; $79fa: $ea $e9 $cb
    xor a                                         ; $79fd: $af
    ld hl, $48f1                                  ; $79fe: $21 $f1 $48
    ldh [$c1], a                                  ; $7a01: $e0 $c1
    ld a, $6f                                     ; $7a03: $3e $6f
    ldh [$bd], a                                  ; $7a05: $e0 $bd
    ld a, $4f                                     ; $7a07: $3e $4f
    ldh [$be], a                                  ; $7a09: $e0 $be
    jp Jump_000_33fe                              ; $7a0b: $c3 $fe $33


    rst $18                                       ; $7a0e: $df
    ld c, $70                                     ; $7a0f: $0e $70
    ld e, $14                                     ; $7a11: $1e $14
    ld d, $0a                                     ; $7a13: $16 $0a
    ld hl, $0080                                  ; $7a15: $21 $80 $00
    call Call_000_13c2                            ; $7a18: $cd $c2 $13
    ld c, $70                                     ; $7a1b: $0e $70
    ld e, $0a                                     ; $7a1d: $1e $0a
    ld d, $01                                     ; $7a1f: $16 $01
    ld hl, $0208                                  ; $7a21: $21 $08 $02
    call Call_000_13c2                            ; $7a24: $cd $c2 $13
    rst $20                                       ; $7a27: $e7
    call Call_000_3308                            ; $7a28: $cd $08 $33
    jr jr_004_79af                                ; $7a2b: $18 $82

    rst $18                                       ; $7a2d: $df
    ld a, $01                                     ; $7a2e: $3e $01
    ld [$cbcb], a                                 ; $7a30: $ea $cb $cb
    call Call_004_7a9e                            ; $7a33: $cd $9e $7a
    ld c, $70                                     ; $7a36: $0e $70
    ld e, $14                                     ; $7a38: $1e $14
    ld d, $0a                                     ; $7a3a: $16 $0a
    ld hl, $0080                                  ; $7a3c: $21 $80 $00
    call Call_000_13c2                            ; $7a3f: $cd $c2 $13
    rst $20                                       ; $7a42: $e7
    call Call_000_3308                            ; $7a43: $cd $08 $33
    rst $18                                       ; $7a46: $df
    ld hl, $787a                                  ; $7a47: $21 $7a $78
    call Call_000_301f                            ; $7a4a: $cd $1f $30
    ld a, $7c                                     ; $7a4d: $3e $7c
    ld [$c1eb], a                                 ; $7a4f: $ea $eb $c1
    ld a, $01                                     ; $7a52: $3e $01
    ld [$c234], a                                 ; $7a54: $ea $34 $c2
    ld hl, $11e9                                  ; $7a57: $21 $e9 $11
    ldh [$c1], a                                  ; $7a5a: $e0 $c1
    ld a, $1a                                     ; $7a5c: $3e $1a
    ldh [$bd], a                                  ; $7a5e: $e0 $bd
    ld a, $6e                                     ; $7a60: $3e $6e
    ldh [$be], a                                  ; $7a62: $e0 $be
    call Call_000_341a                            ; $7a64: $cd $1a $34
    ld hl, $11ec                                  ; $7a67: $21 $ec $11
    ldh [$c1], a                                  ; $7a6a: $e0 $c1
    ld a, $1a                                     ; $7a6c: $3e $1a
    ldh [$bd], a                                  ; $7a6e: $e0 $bd
    ld a, $6e                                     ; $7a70: $3e $6e
    ldh [$be], a                                  ; $7a72: $e0 $be
    call Call_000_341a                            ; $7a74: $cd $1a $34
    call Call_004_63c0                            ; $7a77: $cd $c0 $63
    rst $20                                       ; $7a7a: $e7
    call Call_004_7c0a                            ; $7a7b: $cd $0a $7c
    call Call_004_7b7b                            ; $7a7e: $cd $7b $7b
    call Call_004_7d8e                            ; $7a81: $cd $8e $7d
    ld a, $04                                     ; $7a84: $3e $04
    ld [$cbe9], a                                 ; $7a86: $ea $e9 $cb
    xor a                                         ; $7a89: $af
    ld hl, $48e0                                  ; $7a8a: $21 $e0 $48
    ldh [$c1], a                                  ; $7a8d: $e0 $c1
    ld a, $6f                                     ; $7a8f: $3e $6f
    ldh [$bd], a                                  ; $7a91: $e0 $bd
    ld a, $4f                                     ; $7a93: $3e $4f
    ldh [$be], a                                  ; $7a95: $e0 $be
    call Call_000_33fe                            ; $7a97: $cd $fe $33
    jp Jump_004_77b3                              ; $7a9a: $c3 $b3 $77


    ret                                           ; $7a9d: $c9


Call_004_7a9e:
    ld a, [$cbca]                                 ; $7a9e: $fa $ca $cb
    or a                                          ; $7aa1: $b7
    jr z, jr_004_7ab7                             ; $7aa2: $28 $13

    ld a, $06                                     ; $7aa4: $3e $06
    ldh [rSVBK], a                                ; $7aa6: $e0 $70
    ld a, [$cb90]                                 ; $7aa8: $fa $90 $cb
    ld hl, $d000                                  ; $7aab: $21 $00 $d0
    rst $08                                       ; $7aae: $cf
    ld [$cbcc], a                                 ; $7aaf: $ea $cc $cb
    ld a, $01                                     ; $7ab2: $3e $01
    ldh [rSVBK], a                                ; $7ab4: $e0 $70
    ret                                           ; $7ab6: $c9


jr_004_7ab7:
    ld a, [$cb90]                                 ; $7ab7: $fa $90 $cb
    ld hl, $65be                                  ; $7aba: $21 $be $65
    call Call_000_319d                            ; $7abd: $cd $9d $31
    ld a, h                                       ; $7ac0: $7c
    and $f0                                       ; $7ac1: $e6 $f0
    jr z, jr_004_7acb                             ; $7ac3: $28 $06

    ld a, $01                                     ; $7ac5: $3e $01
    ld [$cbcc], a                                 ; $7ac7: $ea $cc $cb
    ret                                           ; $7aca: $c9


jr_004_7acb:
    ld a, h                                       ; $7acb: $7c
    and $fc                                       ; $7acc: $e6 $fc
    jr z, jr_004_7ad6                             ; $7ace: $28 $06

    ld a, $0a                                     ; $7ad0: $3e $0a
    ld [$cbcc], a                                 ; $7ad2: $ea $cc $cb
    ret                                           ; $7ad5: $c9


jr_004_7ad6:
    ld a, $19                                     ; $7ad6: $3e $19
    ld [$cbcc], a                                 ; $7ad8: $ea $cc $cb
    ret                                           ; $7adb: $c9


Call_004_7adc:
    ld hl, $cbc8                                  ; $7adc: $21 $c8 $cb
    ld a, [hl+]                                   ; $7adf: $2a
    ld h, [hl]                                    ; $7ae0: $66
    ld l, a                                       ; $7ae1: $6f
    ld de, $0005                                  ; $7ae2: $11 $05 $00
    add hl, de                                    ; $7ae5: $19
    ld a, [hl]                                    ; $7ae6: $7e
    cp $ff                                        ; $7ae7: $fe $ff
    jr z, jr_004_7aff                             ; $7ae9: $28 $14

    ld hl, $cbc8                                  ; $7aeb: $21 $c8 $cb
    ld a, [hl+]                                   ; $7aee: $2a
    ld h, [hl]                                    ; $7aef: $66
    ld l, a                                       ; $7af0: $6f
    ld de, $0005                                  ; $7af1: $11 $05 $00
    add hl, de                                    ; $7af4: $19
    ld a, [hl]                                    ; $7af5: $7e
    call Call_004_693e                            ; $7af6: $cd $3e $69
    or a                                          ; $7af9: $b7
    jr z, jr_004_7aff                             ; $7afa: $28 $03

    ld a, $01                                     ; $7afc: $3e $01
    ret                                           ; $7afe: $c9


jr_004_7aff:
    xor a                                         ; $7aff: $af
    ret                                           ; $7b00: $c9


Call_004_7b01:
Jump_004_7b01:
    ld a, $02                                     ; $7b01: $3e $02
    call Call_004_7ba9                            ; $7b03: $cd $a9 $7b
    call Call_004_7e8a                            ; $7b06: $cd $8a $7e
    ld hl, $cbc8                                  ; $7b09: $21 $c8 $cb
    ld a, [hl+]                                   ; $7b0c: $2a
    ld h, [hl]                                    ; $7b0d: $66
    ld l, a                                       ; $7b0e: $6f
    ld de, $0006                                  ; $7b0f: $11 $06 $00
    add hl, de                                    ; $7b12: $19
    call Call_004_6969                            ; $7b13: $cd $69 $69
    ldh a, [rSVBK]                                ; $7b16: $f0 $70
    push af                                       ; $7b18: $f5
    ld a, $06                                     ; $7b19: $3e $06
    ldh [rSVBK], a                                ; $7b1b: $e0 $70
    xor a                                         ; $7b1d: $af
    ld [$cbca], a                                 ; $7b1e: $ea $ca $cb
    ld a, [$d10c]                                 ; $7b21: $fa $0c $d1
    ld d, a                                       ; $7b24: $57
    call Call_004_7360                            ; $7b25: $cd $60 $73
    pop af                                        ; $7b28: $f1
    ldh [rSVBK], a                                ; $7b29: $e0 $70
    call Call_004_6fed                            ; $7b2b: $cd $ed $6f
    call Call_004_7b7b                            ; $7b2e: $cd $7b $7b
    ld a, $fe                                     ; $7b31: $3e $fe
    ld [$cb8f], a                                 ; $7b33: $ea $8f $cb
    ld a, $13                                     ; $7b36: $3e $13
    jp Jump_000_2448                              ; $7b38: $c3 $48 $24


Jump_004_7b3b:
    ld a, $01                                     ; $7b3b: $3e $01
    call Call_004_7ba9                            ; $7b3d: $cd $a9 $7b
    call Call_004_7e8a                            ; $7b40: $cd $8a $7e
    ld hl, $cbc8                                  ; $7b43: $21 $c8 $cb
    ld a, [hl+]                                   ; $7b46: $2a
    ld h, [hl]                                    ; $7b47: $66
    ld l, a                                       ; $7b48: $6f
    ld de, $0005                                  ; $7b49: $11 $05 $00
    add hl, de                                    ; $7b4c: $19
    ld a, [hl]                                    ; $7b4d: $7e
    ld d, $03                                     ; $7b4e: $16 $03
    ld e, $01                                     ; $7b50: $1e $01
    call Call_004_69ae                            ; $7b52: $cd $ae $69
    ldh a, [rSVBK]                                ; $7b55: $f0 $70
    push af                                       ; $7b57: $f5
    ld a, $06                                     ; $7b58: $3e $06
    ldh [rSVBK], a                                ; $7b5a: $e0 $70
    ld a, $01                                     ; $7b5c: $3e $01
    ld [$cbca], a                                 ; $7b5e: $ea $ca $cb
    ld a, [$d10c]                                 ; $7b61: $fa $0c $d1
    ld d, a                                       ; $7b64: $57
    call Call_004_7360                            ; $7b65: $cd $60 $73
    pop af                                        ; $7b68: $f1
    ldh [rSVBK], a                                ; $7b69: $e0 $70
    call Call_004_6fed                            ; $7b6b: $cd $ed $6f
    call Call_004_7b7b                            ; $7b6e: $cd $7b $7b
    ld a, $fe                                     ; $7b71: $3e $fe
    ld [$cb8f], a                                 ; $7b73: $ea $8f $cb
    ld a, $13                                     ; $7b76: $3e $13
    jp Jump_000_2448                              ; $7b78: $c3 $48 $24


Call_004_7b7b:
    rst $18                                       ; $7b7b: $df
    ld c, $70                                     ; $7b7c: $0e $70
    ld e, $0a                                     ; $7b7e: $1e $0a
    ld d, $01                                     ; $7b80: $16 $01
    ld hl, $0208                                  ; $7b82: $21 $08 $02
    call Call_000_13c2                            ; $7b85: $cd $c2 $13
    ld hl, $7885                                  ; $7b88: $21 $85 $78
    call Call_000_301f                            ; $7b8b: $cd $1f $30
    ld a, $50                                     ; $7b8e: $3e $50
    ld [$c1eb], a                                 ; $7b90: $ea $eb $c1
    ld hl, $cdfc                                  ; $7b93: $21 $fc $cd
    ld a, [hl+]                                   ; $7b96: $2a
    ld h, [hl]                                    ; $7b97: $66
    ld l, a                                       ; $7b98: $6f
    ldh [$c1], a                                  ; $7b99: $e0 $c1
    ld a, $e7                                     ; $7b9b: $3e $e7
    ldh [$bd], a                                  ; $7b9d: $e0 $bd
    ld a, $6e                                     ; $7b9f: $3e $6e
    ldh [$be], a                                  ; $7ba1: $e0 $be
    call Call_000_341a                            ; $7ba3: $cd $1a $34
    jp RST_20                                     ; $7ba6: $c3 $20 $00


Call_004_7ba9:
    push af                                       ; $7ba9: $f5
    rst $18                                       ; $7baa: $df
    ld c, $70                                     ; $7bab: $0e $70
    ld e, $10                                     ; $7bad: $1e $10
    ld d, $03                                     ; $7baf: $16 $03
    ld hl, $0024                                  ; $7bb1: $21 $24 $00
    call Call_000_13c2                            ; $7bb4: $cd $c2 $13
    rst $20                                       ; $7bb7: $e7
    call Call_000_3308                            ; $7bb8: $cd $08 $33
    rst $18                                       ; $7bbb: $df
    ld hl, $786d                                  ; $7bbc: $21 $6d $78
    call Call_000_301f                            ; $7bbf: $cd $1f $30
    ld a, $78                                     ; $7bc2: $3e $78
    ld [$c1eb], a                                 ; $7bc4: $ea $eb $c1
    ld a, $03                                     ; $7bc7: $3e $03
    ld [$c234], a                                 ; $7bc9: $ea $34 $c2
    ld hl, $cbc8                                  ; $7bcc: $21 $c8 $cb
    ld a, [hl+]                                   ; $7bcf: $2a
    ld h, [hl]                                    ; $7bd0: $66
    ld l, a                                       ; $7bd1: $6f
    inc hl                                        ; $7bd2: $23
    inc hl                                        ; $7bd3: $23
    inc hl                                        ; $7bd4: $23
    ld a, [hl+]                                   ; $7bd5: $2a
    ld h, [hl]                                    ; $7bd6: $66
    ld l, a                                       ; $7bd7: $6f
    pop af                                        ; $7bd8: $f1
    cp $09                                        ; $7bd9: $fe $09
    jr z, jr_004_7bf7                             ; $7bdb: $28 $1a

    ld e, a                                       ; $7bdd: $5f
    add e                                         ; $7bde: $83
    add e                                         ; $7bdf: $83
    ld e, a                                       ; $7be0: $5f
    ld d, $00                                     ; $7be1: $16 $00
    add hl, de                                    ; $7be3: $19

jr_004_7be4:
    ld de, $0000                                  ; $7be4: $11 $00 $00
    ldh [$c1], a                                  ; $7be7: $e0 $c1
    ld a, $fd                                     ; $7be9: $3e $fd
    ldh [$bd], a                                  ; $7beb: $e0 $bd
    ld a, $6d                                     ; $7bed: $3e $6d
    ldh [$be], a                                  ; $7bef: $e0 $be
    call Call_000_341a                            ; $7bf1: $cd $1a $34
    jp RST_20                                     ; $7bf4: $c3 $20 $00


jr_004_7bf7:
    ld a, $64                                     ; $7bf7: $3e $64
    call Call_000_2722                            ; $7bf9: $cd $22 $27
    cp $32                                        ; $7bfc: $fe $32
    jr c, jr_004_7c05                             ; $7bfe: $38 $05

    ld hl, $12a0                                  ; $7c00: $21 $a0 $12
    jr jr_004_7be4                                ; $7c03: $18 $df

jr_004_7c05:
    ld hl, $12be                                  ; $7c05: $21 $be $12
    jr jr_004_7be4                                ; $7c08: $18 $da

Call_004_7c0a:
    rst $18                                       ; $7c0a: $df
    ld c, $70                                     ; $7c0b: $0e $70
    ld e, $10                                     ; $7c0d: $1e $10
    ld d, $03                                     ; $7c0f: $16 $03
    ld hl, $0024                                  ; $7c11: $21 $24 $00
    call Call_000_13c2                            ; $7c14: $cd $c2 $13
    rst $20                                       ; $7c17: $e7
    call Call_000_3308                            ; $7c18: $cd $08 $33
    rst $18                                       ; $7c1b: $df
    ld hl, $786d                                  ; $7c1c: $21 $6d $78
    call Call_000_301f                            ; $7c1f: $cd $1f $30
    ld a, $78                                     ; $7c22: $3e $78
    ld [$c1eb], a                                 ; $7c24: $ea $eb $c1
    ld a, $03                                     ; $7c27: $3e $03
    ld [$c234], a                                 ; $7c29: $ea $34 $c2
    ld hl, $cbc8                                  ; $7c2c: $21 $c8 $cb
    ld a, [hl+]                                   ; $7c2f: $2a
    ld h, [hl]                                    ; $7c30: $66
    ld l, a                                       ; $7c31: $6f
    inc hl                                        ; $7c32: $23
    inc hl                                        ; $7c33: $23
    inc hl                                        ; $7c34: $23
    ld a, [hl+]                                   ; $7c35: $2a
    ld h, [hl]                                    ; $7c36: $66
    ld l, a                                       ; $7c37: $6f
    push hl                                       ; $7c38: $e5
    ld a, [$cbca]                                 ; $7c39: $fa $ca $cb
    or a                                          ; $7c3c: $b7
    jr nz, jr_004_7c50                            ; $7c3d: $20 $11

    ld a, $05                                     ; $7c3f: $3e $05
    call Call_000_3185                            ; $7c41: $cd $85 $31
    push hl                                       ; $7c44: $e5
    ld a, [$cb90]                                 ; $7c45: $fa $90 $cb
    ld hl, $65be                                  ; $7c48: $21 $be $65
    call Call_000_319d                            ; $7c4b: $cd $9d $31
    jr jr_004_7c5f                                ; $7c4e: $18 $0f

jr_004_7c50:
    ld a, $06                                     ; $7c50: $3e $06
    call Call_000_3185                            ; $7c52: $cd $85 $31
    push hl                                       ; $7c55: $e5
    ld a, [$cb90]                                 ; $7c56: $fa $90 $cb
    ld hl, $669e                                  ; $7c59: $21 $9e $66
    call Call_000_319d                            ; $7c5c: $cd $9d $31

jr_004_7c5f:
    ldh [$c1], a                                  ; $7c5f: $e0 $c1
    ld a, $1c                                     ; $7c61: $3e $1c
    ldh [$bd], a                                  ; $7c63: $e0 $bd
    ld a, $6f                                     ; $7c65: $3e $6f
    ldh [$be], a                                  ; $7c67: $e0 $be
    call Call_000_341a                            ; $7c69: $cd $1a $34
    pop hl                                        ; $7c6c: $e1
    ldh [$c1], a                                  ; $7c6d: $e0 $c1
    ld a, $94                                     ; $7c6f: $3e $94
    ldh [$bd], a                                  ; $7c71: $e0 $bd
    ld a, $6e                                     ; $7c73: $3e $6e
    ldh [$be], a                                  ; $7c75: $e0 $be
    call Call_000_341a                            ; $7c77: $cd $1a $34
    ldh [$c1], a                                  ; $7c7a: $e0 $c1
    ld a, $b3                                     ; $7c7c: $3e $b3
    ldh [$bd], a                                  ; $7c7e: $e0 $bd
    ld a, $6c                                     ; $7c80: $3e $6c
    ldh [$be], a                                  ; $7c82: $e0 $be
    call Call_000_341a                            ; $7c84: $cd $1a $34
    pop hl                                        ; $7c87: $e1
    ld a, $07                                     ; $7c88: $3e $07
    call Call_000_3185                            ; $7c8a: $cd $85 $31
    ldh [$c1], a                                  ; $7c8d: $e0 $c1
    ld a, $1a                                     ; $7c8f: $3e $1a
    ldh [$bd], a                                  ; $7c91: $e0 $bd
    ld a, $6e                                     ; $7c93: $3e $6e
    ldh [$be], a                                  ; $7c95: $e0 $be
    call Call_000_341a                            ; $7c97: $cd $1a $34
    jp RST_20                                     ; $7c9a: $c3 $20 $00


    ldh a, [$a5]                                  ; $7c9d: $f0 $a5
    bit 0, a                                      ; $7c9f: $cb $47
    jr nz, jr_004_7cbc                            ; $7ca1: $20 $19

    bit 1, a                                      ; $7ca3: $cb $4f
    jr nz, jr_004_7cce                            ; $7ca5: $20 $27

    and $c0                                       ; $7ca7: $e6 $c0
    ret z                                         ; $7ca9: $c8

    ld a, $19                                     ; $7caa: $3e $19
    call Call_000_393e                            ; $7cac: $cd $3e $39
    ldh [$c1], a                                  ; $7caf: $e0 $c1
    ld a, $86                                     ; $7cb1: $3e $86
    ldh [$bd], a                                  ; $7cb3: $e0 $bd
    ld a, $4f                                     ; $7cb5: $3e $4f
    ldh [$be], a                                  ; $7cb7: $e0 $be
    jp Jump_000_33fe                              ; $7cb9: $c3 $fe $33


jr_004_7cbc:
    ld a, $17                                     ; $7cbc: $3e $17
    call Call_000_393e                            ; $7cbe: $cd $3e $39
    ldh a, [$d5]                                  ; $7cc1: $f0 $d5
    or a                                          ; $7cc3: $b7
    jp z, Jump_004_7b01                           ; $7cc4: $ca $01 $7b

    cp $02                                        ; $7cc7: $fe $02
    jr z, jr_004_7cce                             ; $7cc9: $28 $03

    jp Jump_004_7b3b                              ; $7ccb: $c3 $3b $7b


jr_004_7cce:
    ld a, $18                                     ; $7cce: $3e $18
    call Call_000_393e                            ; $7cd0: $cd $3e $39
    ld a, $02                                     ; $7cd3: $3e $02
    ld [$c0bb], a                                 ; $7cd5: $ea $bb $c0
    ld hl, $cc12                                  ; $7cd8: $21 $12 $cc
    ld a, [hl+]                                   ; $7cdb: $2a
    ld h, [hl]                                    ; $7cdc: $66
    ld l, a                                       ; $7cdd: $6f
    call Call_000_3911                            ; $7cde: $cd $11 $39
    ld a, $0b                                     ; $7ce1: $3e $0b
    call Call_000_2448                            ; $7ce3: $cd $48 $24
    ret                                           ; $7ce6: $c9


    ldh a, [$a5]                                  ; $7ce7: $f0 $a5
    bit 0, a                                      ; $7ce9: $cb $47
    jr nz, jr_004_7d37                            ; $7ceb: $20 $4a

    bit 1, a                                      ; $7ced: $cb $4f
    jr nz, jr_004_7d61                            ; $7cef: $20 $70

    and $f0                                       ; $7cf1: $e6 $f0
    ret z                                         ; $7cf3: $c8

    ld a, $19                                     ; $7cf4: $3e $19
    call Call_000_393e                            ; $7cf6: $cd $3e $39
    ldh a, [$a5]                                  ; $7cf9: $f0 $a5
    bit 4, a                                      ; $7cfb: $cb $67
    jr nz, jr_004_7d10                            ; $7cfd: $20 $11

    bit 5, a                                      ; $7cff: $cb $6f
    jr nz, jr_004_7d25                            ; $7d01: $20 $22

    ldh [$c1], a                                  ; $7d03: $e0 $c1
    ld a, $86                                     ; $7d05: $3e $86
    ldh [$bd], a                                  ; $7d07: $e0 $bd
    ld a, $4f                                     ; $7d09: $3e $4f
    ldh [$be], a                                  ; $7d0b: $e0 $be
    jp Jump_000_33fe                              ; $7d0d: $c3 $fe $33


jr_004_7d10:
    ld a, [$cbcb]                                 ; $7d10: $fa $cb $cb
    inc a                                         ; $7d13: $3c
    ld [$cbcb], a                                 ; $7d14: $ea $cb $cb
    ld d, a                                       ; $7d17: $57
    ld a, [$cbcc]                                 ; $7d18: $fa $cc $cb
    cp d                                          ; $7d1b: $ba
    jr nc, jr_004_7d8e                            ; $7d1c: $30 $70

    ld a, $01                                     ; $7d1e: $3e $01
    ld [$cbcb], a                                 ; $7d20: $ea $cb $cb
    jr jr_004_7d8e                                ; $7d23: $18 $69

jr_004_7d25:
    ld a, [$cbcb]                                 ; $7d25: $fa $cb $cb
    dec a                                         ; $7d28: $3d
    ld [$cbcb], a                                 ; $7d29: $ea $cb $cb
    or a                                          ; $7d2c: $b7
    jr nz, jr_004_7d8e                            ; $7d2d: $20 $5f

    ld a, [$cbcc]                                 ; $7d2f: $fa $cc $cb
    ld [$cbcb], a                                 ; $7d32: $ea $cb $cb
    jr jr_004_7d8e                                ; $7d35: $18 $57

jr_004_7d37:
    ld a, $01                                     ; $7d37: $3e $01
    call Call_000_393e                            ; $7d39: $cd $3e $39
    ldh a, [$d5]                                  ; $7d3c: $f0 $d5
    or a                                          ; $7d3e: $b7
    jr nz, jr_004_7d5a                            ; $7d3f: $20 $19

    ld a, [$cbca]                                 ; $7d41: $fa $ca $cb
    or a                                          ; $7d44: $b7
    jr nz, jr_004_7d4c                            ; $7d45: $20 $05

    call Call_004_7e03                            ; $7d47: $cd $03 $7e
    jr jr_004_7d78                                ; $7d4a: $18 $2c

jr_004_7d4c:
    call Call_004_7e42                            ; $7d4c: $cd $42 $7e
    call Call_004_7adc                            ; $7d4f: $cd $dc $7a
    or a                                          ; $7d52: $b7
    jr nz, jr_004_7d78                            ; $7d53: $20 $23

    call Call_004_7b01                            ; $7d55: $cd $01 $7b
    jr jr_004_7d78                                ; $7d58: $18 $1e

jr_004_7d5a:
    ld a, $04                                     ; $7d5a: $3e $04
    call Call_004_7ba9                            ; $7d5c: $cd $a9 $7b
    jr jr_004_7d78                                ; $7d5f: $18 $17

jr_004_7d61:
    ld a, $18                                     ; $7d61: $3e $18
    call Call_000_393e                            ; $7d63: $cd $3e $39
    ld a, [$cbca]                                 ; $7d66: $fa $ca $cb
    or a                                          ; $7d69: $b7
    jr nz, jr_004_7d73                            ; $7d6a: $20 $07

    ld a, $02                                     ; $7d6c: $3e $02
    call Call_004_7ba9                            ; $7d6e: $cd $a9 $7b
    jr jr_004_7d78                                ; $7d71: $18 $05

jr_004_7d73:
    ld a, $01                                     ; $7d73: $3e $01
    call Call_004_7ba9                            ; $7d75: $cd $a9 $7b

jr_004_7d78:
    ld c, $70                                     ; $7d78: $0e $70
    ld e, $0f                                     ; $7d7a: $1e $0f
    ld d, $01                                     ; $7d7c: $16 $01
    ld hl, $0125                                  ; $7d7e: $21 $25 $01
    call Call_000_13c2                            ; $7d81: $cd $c2 $13
    ld a, $13                                     ; $7d84: $3e $13
    call Call_000_2448                            ; $7d86: $cd $48 $24
    ld e, $05                                     ; $7d89: $1e $05
    jp Jump_004_779e                              ; $7d8b: $c3 $9e $77


Call_004_7d8e:
jr_004_7d8e:
    ld a, [$cbcc]                                 ; $7d8e: $fa $cc $cb
    cp $01                                        ; $7d91: $fe $01
    ret z                                         ; $7d93: $c8

    rst $18                                       ; $7d94: $df
    ld c, $70                                     ; $7d95: $0e $70
    ld e, $0f                                     ; $7d97: $1e $0f
    ld d, $02                                     ; $7d99: $16 $02
    ld hl, $0125                                  ; $7d9b: $21 $25 $01
    call Call_000_13c2                            ; $7d9e: $cd $c2 $13
    ld hl, $789b                                  ; $7da1: $21 $9b $78
    call Call_000_301f                            ; $7da4: $cd $1f $30
    ld a, $50                                     ; $7da7: $3e $50
    ld [$c1eb], a                                 ; $7da9: $ea $eb $c1
    ld a, $01                                     ; $7dac: $3e $01
    ld [$c234], a                                 ; $7dae: $ea $34 $c2
    ld a, [$cbcb]                                 ; $7db1: $fa $cb $cb
    ldh [$c1], a                                  ; $7db4: $e0 $c1
    ld a, $07                                     ; $7db6: $3e $07
    ldh [$bd], a                                  ; $7db8: $e0 $bd
    ld a, $6f                                     ; $7dba: $3e $6f
    ldh [$be], a                                  ; $7dbc: $e0 $be
    call Call_000_341a                            ; $7dbe: $cd $1a $34
    ld a, [$cbca]                                 ; $7dc1: $fa $ca $cb
    or a                                          ; $7dc4: $b7
    jr z, jr_004_7dd2                             ; $7dc5: $28 $0b

    ld a, [$cb90]                                 ; $7dc7: $fa $90 $cb
    ld hl, $669e                                  ; $7dca: $21 $9e $66
    call Call_000_319d                            ; $7dcd: $cd $9d $31
    jr jr_004_7ddb                                ; $7dd0: $18 $09

jr_004_7dd2:
    ld a, [$cb90]                                 ; $7dd2: $fa $90 $cb
    ld hl, $65be                                  ; $7dd5: $21 $be $65
    call Call_000_319d                            ; $7dd8: $cd $9d $31

jr_004_7ddb:
    ld a, [$cbcb]                                 ; $7ddb: $fa $cb $cb
    ld e, a                                       ; $7dde: $5f
    ld d, $00                                     ; $7ddf: $16 $00
    call Call_000_00dc                            ; $7de1: $cd $dc $00
    ldh [$c1], a                                  ; $7de4: $e0 $c1
    ld a, $22                                     ; $7de6: $3e $22
    ldh [$bd], a                                  ; $7de8: $e0 $bd
    ld a, $6f                                     ; $7dea: $3e $6f
    ldh [$be], a                                  ; $7dec: $e0 $be
    call Call_000_341a                            ; $7dee: $cd $1a $34
    ld hl, $1c0f                                  ; $7df1: $21 $0f $1c
    ldh [$c1], a                                  ; $7df4: $e0 $c1
    ld a, $d3                                     ; $7df6: $3e $d3
    ldh [$bd], a                                  ; $7df8: $e0 $bd
    ld a, $6d                                     ; $7dfa: $3e $6d
    ldh [$be], a                                  ; $7dfc: $e0 $be
    call Call_000_341a                            ; $7dfe: $cd $1a $34
    rst $20                                       ; $7e01: $e7
    ret                                           ; $7e02: $c9


Call_004_7e03:
    ld a, [$cb90]                                 ; $7e03: $fa $90 $cb
    ld hl, $65be                                  ; $7e06: $21 $be $65
    call Call_000_319d                            ; $7e09: $cd $9d $31
    ld a, [$cbcb]                                 ; $7e0c: $fa $cb $cb
    ld e, a                                       ; $7e0f: $5f
    ld d, $00                                     ; $7e10: $16 $00
    call Call_000_00dc                            ; $7e12: $cd $dc $00
    push hl                                       ; $7e15: $e5
    ld hl, $cdfc                                  ; $7e16: $21 $fc $cd
    ld e, [hl]                                    ; $7e19: $5e
    inc hl                                        ; $7e1a: $23
    ld d, [hl]                                    ; $7e1b: $56
    pop hl                                        ; $7e1c: $e1
    rst $10                                       ; $7e1d: $d7
    jr c, jr_004_7e3c                             ; $7e1e: $38 $1c

    call Call_000_3132                            ; $7e20: $cd $32 $31
    ld hl, $cdfc                                  ; $7e23: $21 $fc $cd
    ld [hl], e                                    ; $7e26: $73
    inc hl                                        ; $7e27: $23
    ld [hl], d                                    ; $7e28: $72
    ld a, [$cbcb]                                 ; $7e29: $fa $cb $cb
    ld b, a                                       ; $7e2c: $47
    ld a, [$cb90]                                 ; $7e2d: $fa $90 $cb
    call Call_004_6a64                            ; $7e30: $cd $64 $6a
    ld a, $03                                     ; $7e33: $3e $03
    call Call_004_7ba9                            ; $7e35: $cd $a9 $7b
    call Call_004_7b7b                            ; $7e38: $cd $7b $7b
    ret                                           ; $7e3b: $c9


jr_004_7e3c:
    ld a, $08                                     ; $7e3c: $3e $08
    call Call_004_7ba9                            ; $7e3e: $cd $a9 $7b
    ret                                           ; $7e41: $c9


Call_004_7e42:
    ld hl, $cdfc                                  ; $7e42: $21 $fc $cd
    ld a, [hl+]                                   ; $7e45: $2a
    ld h, [hl]                                    ; $7e46: $66
    ld l, a                                       ; $7e47: $6f
    push hl                                       ; $7e48: $e5
    ld a, [$cb90]                                 ; $7e49: $fa $90 $cb
    ld hl, $669e                                  ; $7e4c: $21 $9e $66
    call Call_000_319d                            ; $7e4f: $cd $9d $31
    ld a, [$cbcb]                                 ; $7e52: $fa $cb $cb
    ld e, a                                       ; $7e55: $5f
    ld d, $00                                     ; $7e56: $16 $00
    call Call_000_00dc                            ; $7e58: $cd $dc $00
    pop de                                        ; $7e5b: $d1
    add hl, de                                    ; $7e5c: $19
    ld a, l                                       ; $7e5d: $7d
    ld [$cdfc], a                                 ; $7e5e: $ea $fc $cd
    ld a, h                                       ; $7e61: $7c
    ld [$cdfd], a                                 ; $7e62: $ea $fd $cd
    ld a, [$cbcb]                                 ; $7e65: $fa $cb $cb
    ld b, a                                       ; $7e68: $47
    ld a, [$cb90]                                 ; $7e69: $fa $90 $cb
    call Call_004_6a8f                            ; $7e6c: $cd $8f $6a
    ld hl, $cbc8                                  ; $7e6f: $21 $c8 $cb
    ld a, [hl+]                                   ; $7e72: $2a
    ld h, [hl]                                    ; $7e73: $66
    ld l, a                                       ; $7e74: $6f
    ld de, $0005                                  ; $7e75: $11 $05 $00
    add hl, de                                    ; $7e78: $19
    ld a, [hl]                                    ; $7e79: $7e
    ld d, $03                                     ; $7e7a: $16 $03
    ld e, $01                                     ; $7e7c: $1e $01
    call Call_004_69ae                            ; $7e7e: $cd $ae $69
    ld a, $09                                     ; $7e81: $3e $09
    call Call_004_7ba9                            ; $7e83: $cd $a9 $7b
    call Call_004_7b7b                            ; $7e86: $cd $7b $7b
    ret                                           ; $7e89: $c9


Call_004_7e8a:
    ld e, $ff                                     ; $7e8a: $1e $ff
    ld a, $84                                     ; $7e8c: $3e $84
    call Call_000_0a6f                            ; $7e8e: $cd $6f $0a
    ret z                                         ; $7e91: $c8

    xor a                                         ; $7e92: $af
    ldh [$9b], a                                  ; $7e93: $e0 $9b
    ld a, $84                                     ; $7e95: $3e $84
    jp Jump_000_03a0                              ; $7e97: $c3 $a0 $03


Call_004_7e9a:
    ld a, $84                                     ; $7e9a: $3e $84
    ld e, $ff                                     ; $7e9c: $1e $ff
    call Call_000_0a6f                            ; $7e9e: $cd $6f $0a
    ret nz                                        ; $7ea1: $c0

    ld b, h                                       ; $7ea2: $44
    ld c, l                                       ; $7ea3: $4d
    jp Jump_000_0e9d                              ; $7ea4: $c3 $9d $0e


    cp e                                          ; $7ea7: $bb
    ld a, [hl]                                    ; $7ea8: $7e
    call $d87e                                    ; $7ea9: $cd $7e $d8
    ld a, [hl]                                    ; $7eac: $7e
    push hl                                       ; $7ead: $e5
    ld a, [hl]                                    ; $7eae: $7e
    di                                            ; $7eaf: $f3
    ld a, [hl]                                    ; $7eb0: $7e
    ld bc, $0e7f                                  ; $7eb1: $01 $7f $0e
    ld a, a                                       ; $7eb4: $7f
    dec de                                        ; $7eb5: $1b
    ld a, a                                       ; $7eb6: $7f
    dec l                                         ; $7eb7: $2d
    ld a, a                                       ; $7eb8: $7f
    call nz, Call_000_0b7e                        ; $7eb9: $c4 $7e $0b
    cp $11                                        ; $7ebc: $fe $11
    ld bc, $0812                                  ; $7ebe: $01 $12 $08
    ld [bc], a                                    ; $7ec1: $02
    ld [hl-], a                                   ; $7ec2: $32
    inc sp                                        ; $7ec3: $33
    dec bc                                        ; $7ec4: $0b
    cp $11                                        ; $7ec5: $fe $11
    ld bc, $0812                                  ; $7ec7: $01 $12 $08
    ld [bc], a                                    ; $7eca: $02
    inc [hl]                                      ; $7ecb: $34
    ld [hl], $0c                                  ; $7ecc: $36 $0c
    inc e                                         ; $7ece: $1c
    ld [de], a                                    ; $7ecf: $12
    rra                                           ; $7ed0: $1f
    ld [de], a                                    ; $7ed1: $12
    rlca                                          ; $7ed2: $07
    inc b                                         ; $7ed3: $04
    dec hl                                        ; $7ed4: $2b
    cpl                                           ; $7ed5: $2f
    ld a, [hl+]                                   ; $7ed6: $2a
    ld sp, $3a17                                  ; $7ed7: $31 $17 $3a
    ld [de], a                                    ; $7eda: $12
    dec a                                         ; $7edb: $3d
    ld [de], a                                    ; $7edc: $12
    dec c                                         ; $7edd: $0d
    ld b, $53                                     ; $7ede: $06 $53
    ld d, d                                       ; $7ee0: $52
    ld d, h                                       ; $7ee1: $54
    ld d, l                                       ; $7ee2: $55
    ld d, [hl]                                    ; $7ee3: $56
    ld d, a                                       ; $7ee4: $57
    db $10                                        ; $7ee5: $10
    ld e, b                                       ; $7ee6: $58
    ld [de], a                                    ; $7ee7: $12
    ld e, e                                       ; $7ee8: $5b
    ld [de], a                                    ; $7ee9: $12
    db $10                                        ; $7eea: $10
    rlca                                          ; $7eeb: $07
    rrca                                          ; $7eec: $0f
    db $10                                        ; $7eed: $10
    ld bc, $1608                                  ; $7eee: $01 $08 $16
    dec e                                         ; $7ef1: $1d
    daa                                           ; $7ef2: $27
    db $10                                        ; $7ef3: $10
    ld e, b                                       ; $7ef4: $58
    ld [de], a                                    ; $7ef5: $12
    ld e, e                                       ; $7ef6: $5b
    ld [de], a                                    ; $7ef7: $12
    db $10                                        ; $7ef8: $10
    rlca                                          ; $7ef9: $07
    ld d, $1d                                     ; $7efa: $16 $1d
    ld [de], a                                    ; $7efc: $12
    inc b                                         ; $7efd: $04
    dec bc                                        ; $7efe: $0b
    add hl, de                                    ; $7eff: $19
    jr nz, jr_004_7f1a                            ; $7f00: $20 $18

    halt                                          ; $7f02: $76
    ld [de], a                                    ; $7f03: $12
    ld a, c                                       ; $7f04: $79
    ld [de], a                                    ; $7f05: $12
    dec c                                         ; $7f06: $0d
    ld b, $53                                     ; $7f07: $06 $53
    ld d, d                                       ; $7f09: $52
    ld d, h                                       ; $7f0a: $54
    ld d, l                                       ; $7f0b: $55
    ld d, [hl]                                    ; $7f0c: $56
    ld d, a                                       ; $7f0d: $57
    ld a, [hl+]                                   ; $7f0e: $2a
    sub h                                         ; $7f0f: $94
    ld [de], a                                    ; $7f10: $12
    sub a                                         ; $7f11: $97
    ld [de], a                                    ; $7f12: $12
    dec c                                         ; $7f13: $0d
    ld b, $53                                     ; $7f14: $06 $53
    ld d, l                                       ; $7f16: $55
    ld d, a                                       ; $7f17: $57
    ld a, [hl+]                                   ; $7f18: $2a
    dec hl                                        ; $7f19: $2b

jr_004_7f1a:
    cpl                                           ; $7f1a: $2f
    dec hl                                        ; $7f1b: $2b
    or d                                          ; $7f1c: $b2
    ld [de], a                                    ; $7f1d: $12
    or l                                          ; $7f1e: $b5
    ld [de], a                                    ; $7f1f: $12
    nop                                           ; $7f20: $00
    dec bc                                        ; $7f21: $0b
    ld de, $0302                                  ; $7f22: $11 $02 $03
    add hl, bc                                    ; $7f25: $09
    ld a, [bc]                                    ; $7f26: $0a
    rla                                           ; $7f27: $17
    jr jr_004_7f48                                ; $7f28: $18 $1e

    rra                                           ; $7f2a: $1f
    inc sp                                        ; $7f2b: $33
    inc [hl]                                      ; $7f2c: $34
    dec hl                                        ; $7f2d: $2b
    or d                                          ; $7f2e: $b2
    ld [de], a                                    ; $7f2f: $12
    or l                                          ; $7f30: $b5
    ld [de], a                                    ; $7f31: $12
    nop                                           ; $7f32: $00
    inc c                                         ; $7f33: $0c
    ld de, $0313                                  ; $7f34: $11 $13 $03
    dec b                                         ; $7f37: $05
    ld a, [bc]                                    ; $7f38: $0a
    inc c                                         ; $7f39: $0c
    jr @+$1c                                      ; $7f3a: $18 $1a

    rra                                           ; $7f3c: $1f
    ld hl, $3534                                  ; $7f3d: $21 $34 $35
    ld a, d                                       ; $7f40: $7a
    call Call_004_47b7                            ; $7f41: $cd $b7 $47
    ld e, $71                                     ; $7f44: $1e $71
    ld d, $02                                     ; $7f46: $16 $02

jr_004_7f48:
    ld bc, $106c                                  ; $7f48: $01 $6c $10
    ld hl, $2197                                  ; $7f4b: $21 $97 $21
    ld a, $09                                     ; $7f4e: $3e $09
    ld [$cb17], a                                 ; $7f50: $ea $17 $cb
    xor a                                         ; $7f53: $af
    call Call_004_4426                            ; $7f54: $cd $26 $44
    ldh a, [rSVBK]                                ; $7f57: $f0 $70
    push af                                       ; $7f59: $f5
    ld a, $06                                     ; $7f5a: $3e $06
    ldh [rSVBK], a                                ; $7f5c: $e0 $70
    ld a, $01                                     ; $7f5e: $3e $01
    ld [$d6d3], a                                 ; $7f60: $ea $d3 $d6
    pop af                                        ; $7f63: $f1
    ldh [rSVBK], a                                ; $7f64: $e0 $70
    ret                                           ; $7f66: $c9


    push de                                       ; $7f67: $d5
    ldh a, [rSVBK]                                ; $7f68: $f0 $70
    push af                                       ; $7f6a: $f5
    ld a, $02                                     ; $7f6b: $3e $02
    ldh [rSVBK], a                                ; $7f6d: $e0 $70
    ld de, $d28f                                  ; $7f6f: $11 $8f $d2
    ld hl, $d080                                  ; $7f72: $21 $80 $d0
    call CopyHL2DE_64                            ; $7f75: $cd $f4 $11
    ld de, $d040                                  ; $7f78: $11 $40 $d0
    call CopyHL2DE_64                            ; $7f7b: $cd $f4 $11
    ld a, $01                                     ; $7f7e: $3e $01
    ldh [$c1], a                                  ; $7f80: $e0 $c1
    ld a, $74                                     ; $7f82: $3e $74
    ldh [$bd], a                                  ; $7f84: $e0 $bd
    ld a, $7f                                     ; $7f86: $3e $7f
    ldh [$be], a                                  ; $7f88: $e0 $be
    call Call_000_3405                            ; $7f8a: $cd $05 $34
    pop af                                        ; $7f8d: $f1
    ldh [rSVBK], a                                ; $7f8e: $e0 $70
    call Call_000_258a                            ; $7f90: $cd $8a $25
    pop de                                        ; $7f93: $d1
    ld a, d                                       ; $7f94: $7a
    ldh [$c1], a                                  ; $7f95: $e0 $c1
    ld a, $d8                                     ; $7f97: $3e $d8
    ldh [$bd], a                                  ; $7f99: $e0 $bd
    ld a, $7b                                     ; $7f9b: $3e $7b
    ldh [$be], a                                  ; $7f9d: $e0 $be
    jp Jump_000_3405                              ; $7f9f: $c3 $05 $34


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
