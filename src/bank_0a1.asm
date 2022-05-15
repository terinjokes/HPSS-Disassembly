; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0a1", ROMX[$4000], BANK[$a1]

    and c                                         ; $4000: $a1
    nop                                           ; $4001: $00
    add hl, de                                    ; $4002: $19
    ld a, [c]                                     ; $4003: $f2
    ld c, $54                                     ; $4004: $0e $54
    rst $38                                       ; $4006: $ff
    ld bc, $fcd0                                  ; $4007: $01 $d0 $fc
    rra                                           ; $400a: $1f
    ld h, b                                       ; $400b: $60
    cp $0c                                        ; $400c: $fe $0c
    ld d, b                                       ; $400e: $50
    db $fc                                        ; $400f: $fc
    rst $38                                       ; $4010: $ff
    ld b, b                                       ; $4011: $40
    ld hl, sp+$22                                 ; $4012: $f8 $22
    nop                                           ; $4014: $00
    ld a, [$e5fd]                                 ; $4015: $fa $fd $e5
    ld a, [$f5ca]                                 ; $4018: $fa $ca $f5
    nop                                           ; $401b: $00
    rla                                           ; $401c: $17
    add sp, $0e                                   ; $401d: $e8 $0e
    pop af                                        ; $401f: $f1
    ld e, l                                       ; $4020: $5d
    and d                                         ; $4021: $a2
    cp a                                          ; $4022: $bf
    ld b, b                                       ; $4023: $40
    add b                                         ; $4024: $80
    ld e, $48                                     ; $4025: $1e $48
    ldh a, [rIE]                                  ; $4027: $f0 $ff
    pop hl                                        ; $4029: $e1
    cp $e1                                        ; $402a: $fe $e1
    cp $c2                                        ; $402c: $fe $c2
    nop                                           ; $402e: $00
    db $fd                                        ; $402f: $fd
    adc e                                         ; $4030: $8b
    db $f4                                        ; $4031: $f4
    rlca                                          ; $4032: $07
    ld hl, sp+$2d                                 ; $4033: $f8 $2d
    jp nc, Jump_000_005b                          ; $4035: $d2 $5b $00

    and h                                         ; $4038: $a4
    cp l                                          ; $4039: $bd
    ld b, d                                       ; $403a: $42
    ld l, [hl]                                    ; $403b: $6e
    sub c                                         ; $403c: $91
    ld e, a                                       ; $403d: $5f
    and b                                         ; $403e: $a0

Call_0a1_403f:
    rst $30                                       ; $403f: $f7
    nop                                           ; $4040: $00
    add hl, bc                                    ; $4041: $09

jr_0a1_4042:
    ld l, [hl]                                    ; $4042: $6e
    sub d                                         ; $4043: $92
    db $f4                                        ; $4044: $f4
    inc c                                         ; $4045: $0c
    add sp, $18                                   ; $4046: $e8 $18
    and b                                         ; $4048: $a0
    inc b                                         ; $4049: $04
    ld h, b                                       ; $404a: $60
    ld b, b                                       ; $404b: $40
    ret nz                                        ; $404c: $c0

    nop                                           ; $404d: $00
    nop                                           ; $404e: $00
    ld l, b                                       ; $404f: $68
    jr z, jr_0a1_4042                             ; $4050: $28 $f0

    rst $38                                       ; $4052: $ff
    nop                                           ; $4053: $00
    jp nz, $04fd                                  ; $4054: $c2 $fd $04

    ei                                            ; $4057: $fb
    dec bc                                        ; $4058: $0b
    db $f4                                        ; $4059: $f4
    ldh a, [rIE]                                  ; $405a: $f0 $ff
    nop                                           ; $405c: $00
    pop bc                                        ; $405d: $c1
    cp $02                                        ; $405e: $fe $02
    db $fd                                        ; $4060: $fd
    dec d                                         ; $4061: $15
    ld [$d52a], a                                 ; $4062: $ea $2a $d5
    ld [bc], a                                    ; $4065: $02
    ld d, a                                       ; $4066: $57
    xor b                                         ; $4067: $a8
    cp [hl]                                       ; $4068: $be
    ld b, c                                       ; $4069: $41
    db $dd                                        ; $406a: $dd
    ld [hl+], a                                   ; $406b: $22
    jr nz, jr_0a1_40a6                            ; $406c: $20 $38

    ret nz                                        ; $406e: $c0

    db $10                                        ; $406f: $10
    rst $38                                       ; $4070: $ff
    add l                                         ; $4071: $85
    ld a, [$0820]                                 ; $4072: $fa $20 $08
    ret nz                                        ; $4075: $c0

    rst $38                                       ; $4076: $ff
    dec b                                         ; $4077: $05
    ld a, [$0a00]                                 ; $4078: $fa $00 $0a
    push af                                       ; $407b: $f5
    ld d, a                                       ; $407c: $57
    xor b                                         ; $407d: $a8
    db $fd                                        ; $407e: $fd
    ld [bc], a                                    ; $407f: $02
    cp e                                          ; $4080: $bb
    ld b, h                                       ; $4081: $44
    nop                                           ; $4082: $00
    ld a, a                                       ; $4083: $7f
    add b                                         ; $4084: $80
    rra                                           ; $4085: $1f
    ldh [$b6], a                                  ; $4086: $e0 $b6
    ld c, c                                       ; $4088: $49
    ld l, l                                       ; $4089: $6d
    sub d                                         ; $408a: $92
    nop                                           ; $408b: $00
    rst $18                                       ; $408c: $df
    jr nz, @+$01                                  ; $408d: $20 $ff

    nop                                           ; $408f: $00
    ld a, a                                       ; $4090: $7f
    add b                                         ; $4091: $80

Call_0a1_4092:
    rst $38                                       ; $4092: $ff
    nop                                           ; $4093: $00
    ld [bc], a                                    ; $4094: $02
    rst $38                                       ; $4095: $ff
    nop                                           ; $4096: $00
    cp a                                          ; $4097: $bf
    ld b, b                                       ; $4098: $40
    rst $30                                       ; $4099: $f7
    ld [$0808], sp                                ; $409a: $08 $08 $08
    rst $28                                       ; $409d: $ef
    nop                                           ; $409e: $00
    db $10                                        ; $409f: $10
    cp $01                                        ; $40a0: $fe $01
    push af                                       ; $40a2: $f5
    ld a, [bc]                                    ; $40a3: $0a
    db $db                                        ; $40a4: $db
    inc h                                         ; $40a5: $24

jr_0a1_40a6:
    ld d, a                                       ; $40a6: $57
    nop                                           ; $40a7: $00
    xor b                                         ; $40a8: $a8
    xor e                                         ; $40a9: $ab
    ld d, h                                       ; $40aa: $54
    ld a, [hl]                                    ; $40ab: $7e
    add c                                         ; $40ac: $81
    db $db                                        ; $40ad: $db
    inc h                                         ; $40ae: $24
    cp a                                          ; $40af: $bf
    nop                                           ; $40b0: $00
    ld b, b                                       ; $40b1: $40
    ld a, [$ed07]                                 ; $40b2: $fa $07 $ed
    rra                                           ; $40b5: $1f
    ei                                            ; $40b6: $fb
    ccf                                           ; $40b7: $3f
    rst $18                                       ; $40b8: $df
    ld h, [hl]                                    ; $40b9: $66
    jr nz, jr_0a1_40e4                            ; $40ba: $20 $28

    jr @+$2e                                      ; $40bc: $18 $2c

    ld [$807f], sp                                ; $40be: $08 $7f $80

jr_0a1_40c1:
    inc c                                         ; $40c1: $0c
    jr c, jr_0a1_40d8                             ; $40c2: $38 $14

    jr z, jr_0a1_40c1                             ; $40c4: $28 $fb

    ld bc, $f304                                  ; $40c6: $01 $04 $f3
    inc c                                         ; $40c9: $0c
    ldh a, [rIF]                                  ; $40ca: $f0 $0f
    ei                                            ; $40cc: $fb
    rlca                                          ; $40cd: $07
    ld a, [bc]                                    ; $40ce: $0a
    ld [$5080], sp                                ; $40cf: $08 $80 $50
    ld [$ff55], sp                                ; $40d2: $08 $55 $ff
    xor d                                         ; $40d5: $aa
    rst $38                                       ; $40d6: $ff
    push de                                       ; $40d7: $d5

jr_0a1_40d8:
    rst $38                                       ; $40d8: $ff
    add d                                         ; $40d9: $82
    ld hl, $c1ff                                  ; $40da: $21 $ff $c1
    inc b                                         ; $40dd: $04
    nop                                           ; $40de: $00
    add c                                         ; $40df: $81
    rst $38                                       ; $40e0: $ff
    add d                                         ; $40e1: $82
    db $fd                                        ; $40e2: $fd
    inc [hl]                                      ; $40e3: $34

jr_0a1_40e4:
    ld [$04c0], sp                                ; $40e4: $08 $c0 $04
    jr jr_0a1_412f                                ; $40e7: $18 $46

jr_0a1_40e9:
    jr jr_0a1_40e9                                ; $40e9: $18 $fe

    ld bc, $02fd                                  ; $40eb: $01 $fd $02
    db $fc                                        ; $40ee: $fc
    inc bc                                        ; $40ef: $03
    add hl, sp                                    ; $40f0: $39
    cp $01                                        ; $40f1: $fe $01
    ld c, b                                       ; $40f3: $48
    jr nc, jr_0a1_411e                            ; $40f4: $30 $28

    ld hl, $191e                                  ; $40f6: $21 $1e $19
    ld a, [c]                                     ; $40f9: $f2
    db $fd                                        ; $40fa: $fd
    jr nc, jr_0a1_4156                            ; $40fb: $30 $59

    ld b, b                                       ; $40fd: $40
    db $fc                                        ; $40fe: $fc
    ld [de], a                                    ; $40ff: $12
    ld bc, $f5ca                                  ; $4100: $01 $ca $f5
    push de                                       ; $4103: $d5
    ld [$f48b], a                                 ; $4104: $ea $8b $f4
    nop                                           ; $4107: $00
    rra                                           ; $4108: $1f
    ldh [$37], a                                  ; $4109: $e0 $37
    ret z                                         ; $410b: $c8

    xor a                                         ; $410c: $af
    ld d, b                                       ; $410d: $50
    ld e, a                                       ; $410e: $5f
    and b                                         ; $410f: $a0
    inc b                                         ; $4110: $04
    ld hl, sp-$01                                 ; $4111: $f8 $ff
    pop af                                        ; $4113: $f1

jr_0a1_4114:
    cp $e2                                        ; $4114: $fe $e2
    ld b, d                                       ; $4116: $42
    ld bc, $fcc3                                  ; $4117: $01 $c3 $fc
    inc bc                                        ; $411a: $03
    add a                                         ; $411b: $87
    ld hl, sp-$55                                 ; $411c: $f8 $ab

jr_0a1_411e:
    call nc, $e817                                ; $411e: $d4 $17 $e8
    sub b                                         ; $4121: $90
    ld c, b                                       ; $4122: $48
    jp nc, $8a10                                  ; $4123: $d2 $10 $8a

    ld l, h                                       ; $4126: $6c
    ld sp, $fef9                                  ; $4127: $31 $f9 $fe
    ld a, [c]                                     ; $412a: $f2
    jr z, @+$12                                   ; $412b: $28 $10

    adc d                                         ; $412d: $8a
    ld l, h                                       ; $412e: $6c

jr_0a1_412f:
    ld bc, $005d                                  ; $412f: $01 $5d $00
    and d                                         ; $4132: $a2
    cp e                                          ; $4133: $bb
    ld b, h                                       ; $4134: $44
    cp $01                                        ; $4135: $fe $01
    push de                                       ; $4137: $d5
    dec hl                                        ; $4138: $2b
    xor d                                         ; $4139: $aa
    nop                                           ; $413a: $00
    ld d, [hl]                                    ; $413b: $56
    cp $02                                        ; $413c: $fe $02
    db $fc                                        ; $413e: $fc
    inc b                                         ; $413f: $04
    add sp, $18                                   ; $4140: $e8 $18
    ldh [rSC], a                                  ; $4142: $e0 $02
    jr nz, @-$3e                                  ; $4144: $20 $c0

    ld b, b                                       ; $4146: $40
    add b                                         ; $4147: $80
    add b                                         ; $4148: $80
    nop                                           ; $4149: $00
    ld bc, $0330                                  ; $414a: $01 $30 $03
    nop                                           ; $414d: $00
    inc bc                                        ; $414e: $03

jr_0a1_414f:
    dec c                                         ; $414f: $0d
    ld c, $10                                     ; $4150: $0e $10
    rra                                           ; $4152: $1f
    ld h, c                                       ; $4153: $61
    ld a, [hl]                                    ; $4154: $7e
    add d                                         ; $4155: $82

jr_0a1_4156:
    nop                                           ; $4156: $00
    db $fd                                        ; $4157: $fd
    jp $86fc                                      ; $4158: $c3 $fc $86


    ld sp, hl                                     ; $415b: $f9
    dec d                                         ; $415c: $15
    ld [$002b], a                                 ; $415d: $ea $2b $00
    call nc, $a25d                                ; $4160: $d4 $5d $a2
    or a                                          ; $4163: $b7
    ld c, b                                       ; $4164: $48
    ld l, a                                       ; $4165: $6f
    sub b                                         ; $4166: $90
    cp a                                          ; $4167: $bf
    nop                                           ; $4168: $00
    ld b, b                                       ; $4169: $40
    db $fc                                        ; $416a: $fc
    inc c                                         ; $416b: $0c
    ret nc                                        ; $416c: $d0

    jr nc, jr_0a1_414f                            ; $416d: $30 $e0

    jr nz, @-$1e                                  ; $416f: $20 $e0

    nop                                           ; $4171: $00

jr_0a1_4172:
    jr nz, jr_0a1_4114                            ; $4172: $20 $a0

    ld h, b                                       ; $4174: $60
    and b                                         ; $4175: $a0
    ld h, b                                       ; $4176: $60
    pop hl                                        ; $4177: $e1
    ld hl, $00a7                                  ; $4178: $21 $a7 $00
    ld h, a                                       ; $417b: $67
    ld bc, $0601                                  ; $417c: $01 $01 $06
    rlca                                          ; $417f: $07
    ld [$300f], sp                                ; $4180: $08 $0f $30
    ld [bc], a                                    ; $4183: $02
    ccf                                           ; $4184: $3f
    ld h, b                                       ; $4185: $60
    ld a, a                                       ; $4186: $7f
    ret nz                                        ; $4187: $c0

    rst $38                                       ; $4188: $ff
    add c                                         ; $4189: $81
    ld a, d                                       ; $418a: $7a
    ld bc, $2005                                  ; $418b: $01 $05 $20
    ld a, [$8802]                                 ; $418e: $fa $02 $88
    ld bc, $d72a                                  ; $4191: $01 $2a $d7
    ld d, a                                       ; $4194: $57
    xor h                                         ; $4195: $ac
    sub a                                         ; $4196: $97
    nop                                           ; $4197: $00
    ld a, b                                       ; $4198: $78
    cpl                                           ; $4199: $2f
    ldh a, [$bf]                                  ; $419a: $f0 $bf
    ret nz                                        ; $419c: $c0

    ld [$f42f], a                                 ; $419d: $ea $2f $f4
    ld [bc], a                                    ; $41a0: $02
    ccf                                           ; $41a1: $3f
    cp d                                          ; $41a2: $ba
    ld a, a                                       ; $41a3: $7f
    or h                                          ; $41a4: $b4
    ld a, a                                       ; $41a5: $7f
    xor b                                         ; $41a6: $a8
    inc b                                         ; $41a7: $04
    nop                                           ; $41a8: $00
    xor d                                         ; $41a9: $aa
    nop                                           ; $41aa: $00
    ld a, a                                       ; $41ab: $7f
    or l                                          ; $41ac: $b5
    ld a, a                                       ; $41ad: $7f
    dec b                                         ; $41ae: $05
    ei                                            ; $41af: $fb
    nop                                           ; $41b0: $00
    rst $38                                       ; $41b1: $ff
    rlca                                          ; $41b2: $07
    nop                                           ; $41b3: $00
    db $fc                                        ; $41b4: $fc
    rla                                           ; $41b5: $17
    ld hl, sp+$0f                                 ; $41b6: $f8 $0f
    ldh a, [$5f]                                  ; $41b8: $f0 $5f
    ldh [$bf], a                                  ; $41ba: $e0 $bf
    ld h, b                                       ; $41bc: $60
    ret nz                                        ; $41bd: $c0

    ld b, d                                       ; $41be: $42
    add hl, hl                                    ; $41bf: $29
    ld l, h                                       ; $41c0: $6c
    add hl, bc                                    ; $41c1: $09
    ld [$5015], a                                 ; $41c2: $ea $15 $50
    xor a                                         ; $41c5: $af
    and b                                         ; $41c6: $a0
    ld bc, $ab5f                                  ; $41c7: $01 $5f $ab
    ld a, [hl]                                    ; $41ca: $7e
    rst $38                                       ; $41cb: $ff
    inc a                                         ; $41cc: $3c
    rst $10                                       ; $41cd: $d7
    jr c, jr_0a1_4226                             ; $41ce: $38 $56

    add hl, sp                                    ; $41d0: $39
    nop                                           ; $41d1: $00
    db $fd                                        ; $41d2: $fd
    ld [bc], a                                    ; $41d3: $02
    ld a, [$f405]                                 ; $41d4: $fa $05 $f4
    dec bc                                        ; $41d7: $0b
    ld [$0015], a                                 ; $41d8: $ea $15 $00
    call nc, $a82b                                ; $41db: $d4 $2b $a8
    ld d, a                                       ; $41de: $57
    call nc, $882e                                ; $41df: $d4 $2e $88
    ld a, b                                       ; $41e2: $78
    nop                                           ; $41e3: $00
    ld b, h                                       ; $41e4: $44
    cp [hl]                                       ; $41e5: $be

jr_0a1_41e6:
    ld [$10f8], sp                                ; $41e6: $08 $f8 $10
    ldh a, [rNR41]                                ; $41e9: $f0 $20
    ldh [rLCDC], a                                ; $41eb: $e0 $40
    nop                                           ; $41ed: $00
    xor [hl]                                      ; $41ee: $ae
    jr nz, jr_0a1_4172                            ; $41ef: $20 $81

    rst $38                                       ; $41f1: $ff
    xor e                                         ; $41f2: $ab
    push de                                       ; $41f3: $d5
    call nc, Call_000_00eb                        ; $41f4: $d4 $eb $00
    cpl                                           ; $41f7: $2f
    pop af                                        ; $41f8: $f1
    ld e, h                                       ; $41f9: $5c
    cp e                                          ; $41fa: $bb
    or l                                          ; $41fb: $b5
    ld c, a                                       ; $41fc: $4f
    ld a, d                                       ; $41fd: $7a
    add a                                         ; $41fe: $87
    jr nc, jr_0a1_41e6                            ; $41ff: $30 $e5

    ld e, $96                                     ; $4201: $1e $96
    add hl, de                                    ; $4203: $19
    sbc d                                         ; $4204: $9a
    adc c                                         ; $4205: $89
    cp $01                                        ; $4206: $fe $01
    db $ed                                        ; $4208: $ed
    ld [de], a                                    ; $4209: $12
    nop                                           ; $420a: $00
    jp c, $ff25                                   ; $420b: $da $25 $ff

    nop                                           ; $420e: $00
    sbc $21                                       ; $420f: $de $21
    cp l                                          ; $4211: $bd
    ld b, d                                       ; $4212: $42
    add b                                         ; $4213: $80
    ld d, b                                       ; $4214: $50
    ld [$5fa0], sp                                ; $4215: $08 $a0 $5f
    ld b, d                                       ; $4218: $42
    cp a                                          ; $4219: $bf
    inc b                                         ; $421a: $04
    db $fc                                        ; $421b: $fc
    sub a                                         ; $421c: $97
    inc c                                         ; $421d: $0c

jr_0a1_421e:
    ld a, b                                       ; $421e: $78
    ld e, a                                       ; $421f: $5f
    ldh [rIE], a                                  ; $4220: $e0 $ff
    ld a, [$8801]                                 ; $4222: $fa $01 $88
    add hl, bc                                    ; $4225: $09

jr_0a1_4226:
    rst $38                                       ; $4226: $ff
    nop                                           ; $4227: $00
    jr nz, jr_0a1_421e                            ; $4228: $20 $f4

    dec bc                                        ; $422a: $0b
    jp nz, $fe09                                  ; $422b: $c2 $09 $fe

    ld bc, $13ec                                  ; $422e: $01 $ec $13
    jp c, Jump_000_2500                           ; $4231: $da $00 $25

    and b                                         ; $4234: $a0
    ld e, a                                       ; $4235: $5f
    ld b, c                                       ; $4236: $41
    cp a                                          ; $4237: $bf
    ld [$a4fc], sp                                ; $4238: $08 $fc $a4
    nop                                           ; $423b: $00

jr_0a1_423c:
    ld e, e                                       ; $423c: $5b
    ld c, b                                       ; $423d: $48
    or a                                          ; $423e: $b7
    sub d                                         ; $423f: $92
    ld l, a                                       ; $4240: $6f
    inc b                                         ; $4241: $04
    db $fc                                        ; $4242: $fc
    jr nz, @+$4e                                  ; $4243: $20 $4c

    ldh a, [$6e]                                  ; $4245: $f0 $6e
    ld a, [bc]                                    ; $4247: $0a
    nop                                           ; $4248: $00
    nop                                           ; $4249: $00
    ld [$2c28], sp                                ; $424a: $08 $28 $2c
    add hl, hl                                    ; $424d: $29
    ld [$0015], a                                 ; $424e: $ea $15 $00
    call nz, Call_0a1_493b                        ; $4251: $c4 $3b $49
    or a                                          ; $4254: $b7
    add d                                         ; $4255: $82
    ld a, [hl]                                    ; $4256: $7e
    db $10                                        ; $4257: $10
    ld hl, sp+$23                                 ; $4258: $f8 $23
    jr nz, jr_0a1_423c                            ; $425a: $20 $e0

    sub b                                         ; $425c: $90
    ld a, [bc]                                    ; $425d: $0a
    db $10                                        ; $425e: $10
    ldh a, [$80]                                  ; $425f: $f0 $80
    jr nz, jr_0a1_42b3                            ; $4261: $20 $50

    rra                                           ; $4263: $1f
    ld h, d                                       ; $4264: $62
    add b                                         ; $4265: $80
    ld h, e                                       ; $4266: $63
    ld [bc], a                                    ; $4267: $02
    ld l, c                                       ; $4268: $69
    sub $00                                       ; $4269: $d6 $00
    rst $38                                       ; $426b: $ff
    ld e, b                                       ; $426c: $58
    or l                                          ; $426d: $b5
    nop                                           ; $426e: $00
    nop                                           ; $426f: $00
    rst $38                                       ; $4270: $ff
    ld e, $e5                                     ; $4271: $1e $e5
    nop                                           ; $4273: $00
    rst $38                                       ; $4274: $ff
    pop hl                                        ; $4275: $e1
    ld a, a                                       ; $4276: $7f
    nop                                           ; $4277: $00
    nop                                           ; $4278: $00
    rst $38                                       ; $4279: $ff
    ld h, c                                       ; $427a: $61
    sbc $00                                       ; $427b: $de $00
    rst $38                                       ; $427d: $ff
    ld a, b                                       ; $427e: $78
    sub l                                         ; $427f: $95
    nop                                           ; $4280: $00
    nop                                           ; $4281: $00
    rst $38                                       ; $4282: $ff
    add [hl]                                      ; $4283: $86
    db $fd                                        ; $4284: $fd
    nop                                           ; $4285: $00
    rst $38                                       ; $4286: $ff
    add l                                         ; $4287: $85

jr_0a1_4288:
    ld a, e                                       ; $4288: $7b
    ret nc                                        ; $4289: $d0

    nop                                           ; $428a: $00
    xor l                                         ; $428b: $ad
    ld l, c                                       ; $428c: $69
    sub $b2                                       ; $428d: $d6 $b2
    ld l, l                                       ; $428f: $6d
    jr jr_0a1_4288                                ; $4290: $18 $f6

    inc a                                         ; $4292: $3c
    nop                                           ; $4293: $00
    set 6, [hl]                                   ; $4294: $cb $f6
    dec a                                         ; $4296: $3d
    db $e3                                        ; $4297: $e3
    sbc $95                                       ; $4298: $de $95
    ld l, e                                       ; $429a: $6b
    ret z                                         ; $429b: $c8

    nop                                           ; $429c: $00
    or a                                          ; $429d: $b7
    ld h, h                                       ; $429e: $64
    db $db                                        ; $429f: $db
    ld [hl-], a                                   ; $42a0: $32
    db $ed                                        ; $42a1: $ed
    ld e, b                                       ; $42a2: $58
    or a                                          ; $42a3: $b7
    inc l                                         ; $42a4: $2c
    ld bc, $565b                                  ; $42a5: $01 $5b $56
    xor l                                         ; $42a8: $ad
    inc bc                                        ; $42a9: $03

jr_0a1_42aa:
    cp $85                                        ; $42aa: $fe $85
    ld a, e                                       ; $42ac: $7b
    ld a, [de]                                    ; $42ad: $1a
    ld a, [de]                                    ; $42ae: $1a
    jr nz, jr_0a1_42aa                            ; $42af: $20 $f9

    cp $1c                                        ; $42b1: $fe $1c

jr_0a1_42b3:
    ld a, [bc]                                    ; $42b3: $0a
    db $f4                                        ; $42b4: $f4
    ei                                            ; $42b5: $fb
    ld [c], a                                     ; $42b6: $e2
    db $fd                                        ; $42b7: $fd
    ld a, $00                                     ; $42b8: $3e $00
    pop bc                                        ; $42ba: $c1
    ld h, l                                       ; $42bb: $65
    sbc d                                         ; $42bc: $9a
    sbc e                                         ; $42bd: $9b
    ld h, h                                       ; $42be: $64
    dec sp                                        ; $42bf: $3b
    call nz, $01b8                                ; $42c0: $c4 $b8 $01
    ld b, a                                       ; $42c3: $47

jr_0a1_42c4:
    ld a, c                                       ; $42c4: $79
    add a                                         ; $42c5: $87
    ld sp, $8fce                                  ; $42c6: $31 $ce $8f
    ld a, b                                       ; $42c9: $78
    and h                                         ; $42ca: $a4
    add hl, bc                                    ; $42cb: $09
    nop                                           ; $42cc: $00
    cp e                                          ; $42cd: $bb
    ld b, h                                       ; $42ce: $44
    xor a                                         ; $42cf: $af
    ld d, b                                       ; $42d0: $50
    cp [hl]                                       ; $42d1: $be
    ld b, c                                       ; $42d2: $41
    ei                                            ; $42d3: $fb
    add h                                         ; $42d4: $84
    ld [$50af], sp                                ; $42d5: $08 $af $50
    add e                                         ; $42d8: $83
    ld a, h                                       ; $42d9: $7c
    ld a, [hl]                                    ; $42da: $7e
    ld e, e                                       ; $42db: $5b
    cp $ff                                        ; $42dc: $fe $ff
    call nz, $fb00                                ; $42de: $c4 $00 $fb
    set 6, h                                      ; $42e1: $cb $f4
    adc a                                         ; $42e3: $8f
    ldh a, [$97]                                  ; $42e4: $f0 $97
    add sp, $2f                                   ; $42e6: $e8 $2f
    nop                                           ; $42e8: $00
    ret nc                                        ; $42e9: $d0

jr_0a1_42ea:
    rra                                           ; $42ea: $1f
    ldh [$2f], a                                  ; $42eb: $e0 $2f
    ret nc                                        ; $42ed: $d0

    ld e, a                                       ; $42ee: $5f
    and b                                         ; $42ef: $a0
    rst $18                                       ; $42f0: $df
    nop                                           ; $42f1: $00
    jr c, jr_0a1_42ea                             ; $42f2: $38 $f6

    add hl, bc                                    ; $42f4: $09
    and c                                         ; $42f5: $a1
    ld e, a                                       ; $42f6: $5f
    sbc $27                                       ; $42f7: $de $27
    cp h                                          ; $42f9: $bc
    nop                                           ; $42fa: $00
    ld b, e                                       ; $42fb: $43
    sbc e                                         ; $42fc: $9b
    ld h, [hl]                                    ; $42fd: $66
    add l                                         ; $42fe: $85
    ld a, [hl]                                    ; $42ff: $7e
    ei                                            ; $4300: $fb
    inc a                                         ; $4301: $3c
    dec a                                         ; $4302: $3d
    nop                                           ; $4303: $00
    jp nz, $827d                                  ; $4304: $c2 $7d $82

    ld a, c                                       ; $4307: $79
    add [hl]                                      ; $4308: $86
    rrca                                          ; $4309: $0f
    db $fc                                        ; $430a: $fc
    or a                                          ; $430b: $b7
    nop                                           ; $430c: $00
    ld a, b                                       ; $430d: $78
    rst $38                                       ; $430e: $ff
    nop                                           ; $430f: $00
    adc l                                         ; $4310: $8d
    ld [hl], d                                    ; $4311: $72
    ld [hl], d                                    ; $4312: $72
    adc l                                         ; $4313: $8d
    db $fc                                        ; $4314: $fc
    jr nc, @+$01                                  ; $4315: $30 $ff

    db $fd                                        ; $4317: $fd
    ld l, h                                       ; $4318: $6c
    nop                                           ; $4319: $00
    inc a                                         ; $431a: $3c
    ld a, [bc]                                    ; $431b: $0a
    push af                                       ; $431c: $f5
    ld a, [$f4eb]                                 ; $431d: $fa $eb $f4
    ld [$f8e7], sp                                ; $4320: $08 $e7 $f8
    cp a                                          ; $4323: $bf
    ld b, b                                       ; $4324: $40
    db $f4                                        ; $4325: $f4
    ld e, d                                       ; $4326: $5a
    ld a, [$fe05]                                 ; $4327: $fa $05 $fe
    add hl, de                                    ; $432a: $19
    ld bc, $49b6                                  ; $432b: $01 $b6 $49

jr_0a1_432e:
    xor b                                         ; $432e: $a8
    add hl, bc                                    ; $432f: $09
    jp z, $fa0a                                   ; $4330: $ca $0a $fa

    dec b                                         ; $4333: $05
    ret z                                         ; $4334: $c8

    ld bc, $1d00                                  ; $4335: $01 $00 $1d
    dec d                                         ; $4338: $15
    ei                                            ; $4339: $fb
    ld h, b                                       ; $433a: $60
    cp $50                                        ; $433b: $fe $50
    xor [hl]                                      ; $433d: $ae
    and b                                         ; $433e: $a0
    nop                                           ; $433f: $00
    ld e, h                                       ; $4340: $5c
    ret nz                                        ; $4341: $c0

    jr c, jr_0a1_42c4                             ; $4342: $38 $80

    ld [hl], b                                    ; $4344: $70
    ld [hl], l                                    ; $4345: $75
    ld a, [$00eb]                                 ; $4346: $fa $eb $00
    db $fc                                        ; $4349: $fc
    rst $18                                       ; $434a: $df
    add sp, -$01                                  ; $434b: $e8 $ff
    add sp, -$11                                  ; $434d: $e8 $ef
    ld hl, sp-$11                                 ; $434f: $f8 $ef
    nop                                           ; $4351: $00
    ld hl, sp-$01                                 ; $4352: $f8 $ff
    ld hl, sp+$77                                 ; $4354: $f8 $77
    ld hl, sp-$04                                 ; $4356: $f8 $fc
    inc bc                                        ; $4358: $03
    ld hl, sp+$00                                 ; $4359: $f8 $00
    rlca                                          ; $435b: $07
    db $f4                                        ; $435c: $f4
    dec bc                                        ; $435d: $0b
    ret c                                         ; $435e: $d8

    daa                                           ; $435f: $27
    or c                                          ; $4360: $b1
    ld c, a                                       ; $4361: $4f
    ld b, d                                       ; $4362: $42
    nop                                           ; $4363: $00
    cp [hl]                                       ; $4364: $be
    and b                                         ; $4365: $a0
    ld e, h                                       ; $4366: $5c
    ld b, b                                       ; $4367: $40
    cp h                                          ; $4368: $bc
    nop                                           ; $4369: $00
    ldh [rP1], a                                  ; $436a: $e0 $00
    jr jr_0a1_432e                                ; $436c: $18 $c0

    ld b, b                                       ; $436e: $40
    ret nz                                        ; $436f: $c0

    ld a, h                                       ; $4370: $7c
    ld a, [hl-]                                   ; $4371: $3a
    ld hl, sp+$39                                 ; $4372: $f8 $39
    ei                                            ; $4374: $fb
    inc b                                         ; $4375: $04
    cp [hl]                                       ; $4376: $be
    db $10                                        ; $4377: $10
    ld b, c                                       ; $4378: $41
    db $fd                                        ; $4379: $fd
    ld [bc], a                                    ; $437a: $02
    jr jr_0a1_4387                                ; $437b: $18 $0a

    or h                                          ; $437d: $b4
    ld c, e                                       ; $437e: $4b
    ld b, b                                       ; $437f: $40
    cp a                                          ; $4380: $bf
    rrca                                          ; $4381: $0f
    add b                                         ; $4382: $80
    ld a, [hl]                                    ; $4383: $7e
    nop                                           ; $4384: $00
    db $fc                                        ; $4385: $fc
    ld h, h                                       ; $4386: $64

jr_0a1_4387:
    add hl, bc                                    ; $4387: $09
    db $fc                                        ; $4388: $fc
    add hl, bc                                    ; $4389: $09
    jr nc, jr_0a1_43d4                            ; $438a: $30 $48

    ld e, $0a                                     ; $438c: $1e $0a
    nop                                           ; $438e: $00
    ld sp, hl                                     ; $438f: $f9
    rlca                                          ; $4390: $07
    jp nc, $a42e                                  ; $4391: $d2 $2e $a4

    ld e, h                                       ; $4394: $5c
    ld c, b                                       ; $4395: $48
    cp b                                          ; $4396: $b8
    inc [hl]                                      ; $4397: $34
    sub b                                         ; $4398: $90
    ld [hl], b                                    ; $4399: $70
    inc e                                         ; $439a: $1c
    ld e, b                                       ; $439b: $58
    add b                                         ; $439c: $80
    add hl, de                                    ; $439d: $19
    ld a, c                                       ; $439e: $79
    ld h, b                                       ; $439f: $60
    ld bc, $b758                                  ; $43a0: $01 $58 $b7
    nop                                           ; $43a3: $00
    nop                                           ; $43a4: $00
    rst $38                                       ; $43a5: $ff
    ld d, [hl]                                    ; $43a6: $56
    xor l                                         ; $43a7: $ad
    nop                                           ; $43a8: $00
    rst $38                                       ; $43a9: $ff
    sub a                                         ; $43aa: $97
    ld l, c                                       ; $43ab: $69
    sub b                                         ; $43ac: $90
    ld [hl], b                                    ; $43ad: $70
    add hl, de                                    ; $43ae: $19
    ret c                                         ; $43af: $d8

    push af                                       ; $43b0: $f5
    ld [hl], b                                    ; $43b1: $70
    ld bc, $007d                                  ; $43b2: $01 $7d $00
    rst $38                                       ; $43b5: $ff

jr_0a1_43b6:
    xor c                                         ; $43b6: $a9
    nop                                           ; $43b7: $00
    ld d, a                                       ; $43b8: $57
    ret nz                                        ; $43b9: $c0

    xor a                                         ; $43ba: $af
    ld l, d                                       ; $43bb: $6a
    push de                                       ; $43bc: $d5
    or b                                          ; $43bd: $b0
    ld l, [hl]                                    ; $43be: $6e
    jr jr_0a1_43c1                                ; $43bf: $18 $00

jr_0a1_43c1:
    or a                                          ; $43c1: $b7
    inc l                                         ; $43c2: $2c
    db $db                                        ; $43c3: $db
    ld d, $ed                                     ; $43c4: $16 $ed
    ld b, e                                       ; $43c6: $43
    cp [hl]                                       ; $43c7: $be
    and a                                         ; $43c8: $a7
    nop                                           ; $43c9: $00
    ld e, c                                       ; $43ca: $59
    sbc $a7                                       ; $43cb: $de $a7
    ld a, b                                       ; $43cd: $78
    rst $18                                       ; $43ce: $df
    inc [hl]                                      ; $43cf: $34
    db $eb                                        ; $43d0: $eb
    ld a, [de]                                    ; $43d1: $1a
    nop                                           ; $43d2: $00
    ld [hl], l                                    ; $43d3: $75

jr_0a1_43d4:
    ld c, l                                       ; $43d4: $4d
    cp d                                          ; $43d5: $ba
    ld b, $fd                                     ; $43d6: $06 $fd
    dec bc                                        ; $43d8: $0b
    or $a5                                        ; $43d9: $f6 $a5
    ld b, b                                       ; $43db: $40
    ld e, e                                       ; $43dc: $5b
    ld b, b                                       ; $43dd: $40
    jr jr_0a1_4439                                ; $43de: $18 $59

    or [hl]                                       ; $43e0: $b6
    nop                                           ; $43e1: $00
    rst $38                                       ; $43e2: $ff
    or $3d                                        ; $43e3: $f6 $3d
    add b                                         ; $43e5: $80
    and b                                         ; $43e6: $a0
    add hl, bc                                    ; $43e7: $09
    ld c, $1f                                     ; $43e8: $0e $1f
    dec e                                         ; $43ea: $1d
    rra                                           ; $43eb: $1f
    dec de                                        ; $43ec: $1b
    dec e                                         ; $43ed: $1d
    rra                                           ; $43ee: $1f
    ld b, b                                       ; $43ef: $40
    dec e                                         ; $43f0: $1d
    inc bc                                        ; $43f1: $03
    nop                                           ; $43f2: $00
    rra                                           ; $43f3: $1f
    rra                                           ; $43f4: $1f
    rra                                           ; $43f5: $1f
    ld c, $1f                                     ; $43f6: $0e $1f
    sbc $00                                       ; $43f8: $de $00
    and a                                         ; $43fa: $a7
    ld a, c                                       ; $43fb: $79
    sbc $b4                                       ; $43fc: $de $b4
    ld l, e                                       ; $43fe: $6b
    jr jr_0a1_43b6                                ; $43ff: $18 $b5

    inc l                                         ; $4401: $2c
    nop                                           ; $4402: $00
    ld e, e                                       ; $4403: $5b
    ld b, [hl]                                    ; $4404: $46
    cp l                                          ; $4405: $bd
    inc de                                        ; $4406: $13
    xor $81                                       ; $4407: $ee $81
    ld [hl], a                                    ; $4409: $77
    ret nc                                        ; $440a: $d0

    nop                                           ; $440b: $00
    xor a                                         ; $440c: $af
    ld l, c                                       ; $440d: $69
    sub $37                                       ; $440e: $d6 $37
    ld l, c                                       ; $4410: $69
    ld e, [hl]                                    ; $4411: $5e
    or a                                          ; $4412: $b7
    inc c                                         ; $4413: $0c
    ld c, b                                       ; $4414: $48
    ei                                            ; $4415: $fb
    ld d, b                                       ; $4416: $50
    nop                                           ; $4417: $00
    or [hl]                                       ; $4418: $b6
    add c                                         ; $4419: $81
    ld b, b                                       ; $441a: $40
    nop                                           ; $441b: $00
    ld l, b                                       ; $441c: $68
    rst $10                                       ; $441d: $d7
    nop                                           ; $441e: $00
    nop                                           ; $441f: $00
    rst $38                                       ; $4420: $ff
    ld e, e                                       ; $4421: $5b
    or h                                          ; $4422: $b4
    nop                                           ; $4423: $00
    rst $38                                       ; $4424: $ff
    ld d, $ed                                     ; $4425: $16 $ed
    nop                                           ; $4427: $00
    nop                                           ; $4428: $00
    rst $38                                       ; $4429: $ff
    and a                                         ; $442a: $a7
    ld e, c                                       ; $442b: $59
    ret z                                         ; $442c: $c8

    or a                                          ; $442d: $b7
    ld h, b                                       ; $442e: $60
    db $db                                        ; $442f: $db
    ld a, [c]                                     ; $4430: $f2
    nop                                           ; $4431: $00
    dec l                                         ; $4432: $2d
    ret c                                         ; $4433: $d8

    rst $30                                       ; $4434: $f7
    inc c                                         ; $4435: $0c
    ei                                            ; $4436: $fb
    sub [hl]                                      ; $4437: $96
    ld l, l                                       ; $4438: $6d

jr_0a1_4439:
    ld c, e                                       ; $4439: $4b
    nop                                           ; $443a: $00
    or [hl]                                       ; $443b: $b6
    add c                                         ; $443c: $81
    ld a, a                                       ; $443d: $7f
    jp nz, Jump_0a1_68bd                          ; $443e: $c2 $bd $68

    rst $10                                       ; $4441: $d7
    jr nc, jr_0a1_4444                            ; $4442: $30 $00

jr_0a1_4444:
    db $eb                                        ; $4444: $eb
    ld a, [de]                                    ; $4445: $1a
    push af                                       ; $4446: $f5
    adc h                                         ; $4447: $8c
    ld a, e                                       ; $4448: $7b
    ld d, $ad                                     ; $4449: $16 $ad
    dec bc                                        ; $444b: $0b
    nop                                           ; $444c: $00
    sub $97                                       ; $444d: $d6 $97
    ld l, c                                       ; $444f: $69
    jp nc, $61ad                                  ; $4450: $d2 $ad $61

    sub $30                                       ; $4453: $d6 $30
    ld c, $eb                                     ; $4455: $0e $eb
    ld e, d                                       ; $4457: $5a
    or l                                          ; $4458: $b5
    inc c                                         ; $4459: $0c
    sub b                                         ; $445a: $90
    db $10                                        ; $445b: $10
    sbc d                                         ; $445c: $9a
    ld bc, $0060                                  ; $445d: $01 $60 $00
    jr nc, jr_0a1_4462                            ; $4460: $30 $00

jr_0a1_4462:
    ld l, a                                       ; $4462: $6f
    ld e, c                                       ; $4463: $59
    or [hl]                                       ; $4464: $b6
    inc c                                         ; $4465: $0c
    ei                                            ; $4466: $fb
    ld h, $5d                                     ; $4467: $26 $5d
    ld b, e                                       ; $4469: $43
    ld bc, $89ae                                  ; $446a: $01 $ae $89
    ld [hl], a                                    ; $446d: $77
    call nz, Call_0a1_60bb                        ; $446e: $c4 $bb $60
    db $dd                                        ; $4471: $dd
    or b                                          ; $4472: $b0
    nop                                           ; $4473: $00
    ld b, $f7                                     ; $4474: $06 $f7
    inc c                                         ; $4476: $0c
    ld a, d                                       ; $4477: $7a
    ld b, [hl]                                    ; $4478: $46
    cp l                                          ; $4479: $bd
    db $10                                        ; $447a: $10
    ld a, [bc]                                    ; $447b: $0a
    add b                                         ; $447c: $80
    ld [$0034], sp                                ; $447d: $08 $34 $00
    db $eb                                        ; $4480: $eb
    sbc d                                         ; $4481: $9a
    ld [hl], l                                    ; $4482: $75
    inc l                                         ; $4483: $2c
    db $db                                        ; $4484: $db
    add [hl]                                      ; $4485: $86
    ld l, l                                       ; $4486: $6d
    dec bc                                        ; $4487: $0b
    nop                                           ; $4488: $00
    or $81                                        ; $4489: $f6 $81
    ld a, a                                       ; $448b: $7f
    call nz, Call_0a1_62bb                        ; $448c: $c4 $bb $62
    db $dd                                        ; $448f: $dd
    jr nc, jr_0a1_4492                            ; $4490: $30 $00

jr_0a1_4492:
    ld l, a                                       ; $4492: $6f
    dec de                                        ; $4493: $1b
    db $f4                                        ; $4494: $f4
    adc a                                         ; $4495: $8f
    ld a, e                                       ; $4496: $7b
    ld b, $bd                                     ; $4497: $06 $bd
    dec hl                                        ; $4499: $2b
    nop                                           ; $449a: $00
    sub $85                                       ; $449b: $d6 $85
    ld a, e                                       ; $449d: $7b
    ret nz                                        ; $449e: $c0

    cp l                                          ; $449f: $bd
    ld l, b                                       ; $44a0: $68

Jump_0a1_44a1:
    sub $b0                                       ; $44a1: $d6 $b0
    nop                                           ; $44a3: $00
    ld l, e                                       ; $44a4: $6b
    ld e, d                                       ; $44a5: $5a
    or l                                          ; $44a6: $b5
    dec c                                         ; $44a7: $0d
    jp c, $ed07                                   ; $44a8: $da $07 $ed

    dec hl                                        ; $44ab: $2b
    nop                                           ; $44ac: $00
    sub $81                                       ; $44ad: $d6 $81
    ld l, a                                       ; $44af: $6f
    jp nz, Jump_0a1_60bd                          ; $44b0: $c2 $bd $60

    sbc $b2                                       ; $44b3: $de $b2
    nop                                           ; $44b5: $00
    ld l, l                                       ; $44b6: $6d
    ld a, b                                       ; $44b7: $78
    sub [hl]                                      ; $44b8: $96
    db $ec                                        ; $44b9: $ec
    ld a, e                                       ; $44ba: $7b
    sub [hl]                                      ; $44bb: $96
    db $ed                                        ; $44bc: $ed
    inc hl                                        ; $44bd: $23
    nop                                           ; $44be: $00
    sub $91                                       ; $44bf: $d6 $91
    ld l, e                                       ; $44c1: $6b
    jp nz, Jump_0a1_68ad                          ; $44c2: $c2 $ad $68

    rst $10                                       ; $44c5: $d7
    or b                                          ; $44c6: $b0
    add b                                         ; $44c7: $80
    jr nc, jr_0a1_44ca                            ; $44c8: $30 $00

jr_0a1_44ca:
    rrca                                          ; $44ca: $0f
    ei                                            ; $44cb: $fb
    ld b, [hl]                                    ; $44cc: $46
    cp l                                          ; $44cd: $bd
    inc hl                                        ; $44ce: $23
    sbc $87                                       ; $44cf: $de $87
    nop                                           ; $44d1: $00
    ld a, c                                       ; $44d2: $79
    ret nz                                        ; $44d3: $c0

    cp a                                          ; $44d4: $bf
    ld h, c                                       ; $44d5: $61
    sbc $f4                                       ; $44d6: $de $f4
    dec hl                                        ; $44d8: $2b
    ret c                                         ; $44d9: $d8

    nop                                           ; $44da: $00
    push af                                       ; $44db: $f5
    dec c                                         ; $44dc: $0d
    ld a, [$7d86]                                 ; $44dd: $fa $86 $7d
    inc bc                                        ; $44e0: $03
    cp [hl]                                       ; $44e1: $be
    xor c                                         ; $44e2: $a9
    nop                                           ; $44e3: $00
    ld d, a                                       ; $44e4: $57
    ret z                                         ; $44e5: $c8

    or a                                          ; $44e6: $b7
    push hl                                       ; $44e7: $e5
    ld e, d                                       ; $44e8: $5a
    or b                                          ; $44e9: $b0
    rst $28                                       ; $44ea: $ef
    dec de                                        ; $44eb: $1b
    nop                                           ; $44ec: $00
    db $f4                                        ; $44ed: $f4
    ld c, a                                       ; $44ee: $4f
    cp e                                          ; $44ef: $bb
    ld h, $dd                                     ; $44f0: $26 $dd
    ld c, e                                       ; $44f2: $4b
    or [hl]                                       ; $44f3: $b6
    and l                                         ; $44f4: $a5
    nop                                           ; $44f5: $00
    ld e, e                                       ; $44f6: $5b
    jp nz, Jump_0a1_64bd                          ; $44f7: $c2 $bd $64

    db $db                                        ; $44fa: $db
    ldh a, [$2d]                                  ; $44fb: $f0 $2d
    reti                                          ; $44fd: $d9


    ld b, h                                       ; $44fe: $44
    or $c0                                        ; $44ff: $f6 $c0
    ld [$f603], sp                                ; $4501: $08 $03 $f6
    add c                                         ; $4504: $81
    add b                                         ; $4505: $80
    db $10                                        ; $4506: $10
    jr nc, @-$0f                                  ; $4507: $30 $ef

    jr nz, jr_0a1_4564                            ; $4509: $20 $59

    or [hl]                                       ; $450b: $b6
    or b                                          ; $450c: $b0
    ld a, [bc]                                    ; $450d: $0a
    set 6, [hl]                                   ; $450e: $cb $f6
    add l                                         ; $4510: $85
    ld a, e                                       ; $4511: $7b
    call nz, $bb26                                ; $4512: $c4 $26 $bb
    ld h, c                                       ; $4515: $61
    db $10                                        ; $4516: $10
    ld bc, $f51a                                  ; $4517: $01 $1a $f5
    db $10                                        ; $451a: $10
    add hl, bc                                    ; $451b: $09
    sub b                                         ; $451c: $90
    nop                                           ; $451d: $00
    ld a, e                                       ; $451e: $7b
    xor l                                         ; $451f: $ad
    jr nz, jr_0a1_4580                            ; $4520: $20 $5e

    ldh a, [$0c]                                  ; $4522: $f0 $0c
    ld d, b                                       ; $4524: $50
    add d                                         ; $4525: $82
    ld l, $04                                     ; $4526: $2e $04
    ld h, $1e                                     ; $4528: $26 $1e
    ldh [$7b], a                                  ; $452a: $e0 $7b
    dec b                                         ; $452c: $05
    ld bc, $ea15                                  ; $452d: $01 $15 $ea
    xor d                                         ; $4530: $aa
    ld d, l                                       ; $4531: $55
    ld e, l                                       ; $4532: $5d
    and d                                         ; $4533: $a2
    db $fc                                        ; $4534: $fc
    adc l                                         ; $4535: $8d
    inc bc                                        ; $4536: $03
    nop                                           ; $4537: $00
    db $10                                        ; $4538: $10
    rst $28                                       ; $4539: $ef
    dec b                                         ; $453a: $05
    ld a, [$54ab]                                 ; $453b: $fa $ab $54
    ld d, a                                       ; $453e: $57
    xor b                                         ; $453f: $a8
    nop                                           ; $4540: $00

jr_0a1_4541:
    db $ed                                        ; $4541: $ed
    ld [de], a                                    ; $4542: $12
    ei                                            ; $4543: $fb
    inc b                                         ; $4544: $04
    nop                                           ; $4545: $00
    rst $38                                       ; $4546: $ff
    ld c, d                                       ; $4547: $4a
    or l                                          ; $4548: $b5
    nop                                           ; $4549: $00
    add l                                         ; $454a: $85
    ld a, d                                       ; $454b: $7a
    db $db                                        ; $454c: $db
    inc h                                         ; $454d: $24
    or a                                          ; $454e: $b7
    ld c, b                                       ; $454f: $48
    ld a, [hl]                                    ; $4550: $7e
    add c                                         ; $4551: $81
    jp nz, $0d96                                  ; $4552: $c2 $96 $0d

    ld [hl], b                                    ; $4555: $70
    ld c, [hl]                                    ; $4556: $4e
    ldh [rIE], a                                  ; $4557: $e0 $ff

jr_0a1_4559:
    ld [hl+], a                                   ; $4559: $22
    db $dd                                        ; $455a: $dd
    add b                                         ; $455b: $80
    ld a, $c0                                     ; $455c: $3e $c0
    inc b                                         ; $455e: $04
    rst $38                                       ; $455f: $ff
    jr nz, jr_0a1_4541                            ; $4560: $20 $df

    ld b, h                                       ; $4562: $44
    cp e                                          ; $4563: $bb

jr_0a1_4564:
    sub b                                         ; $4564: $90
    ld a, $00                                     ; $4565: $3e $00
    rst $38                                       ; $4567: $ff
    nop                                           ; $4568: $00
    ld b, d                                       ; $4569: $42
    cp l                                          ; $456a: $bd
    or l                                          ; $456b: $b5
    ld c, d                                       ; $456c: $4a
    ld b, h                                       ; $456d: $44
    cp e                                          ; $456e: $bb
    xor e                                         ; $456f: $ab
    ld d, h                                       ; $4570: $54
    inc bc                                        ; $4571: $03
    rst $30                                       ; $4572: $f7
    ld [$11ee], sp                                ; $4573: $08 $ee $11
    ld [hl], a                                    ; $4576: $77
    adc b                                         ; $4577: $88
    inc a                                         ; $4578: $3c
    nop                                           ; $4579: $00
    ldh [rTIMA], a                                ; $457a: $e0 $05
    nop                                           ; $457c: $00
    xor d                                         ; $457d: $aa
    ld d, l                                       ; $457e: $55
    db $fd                                        ; $457f: $fd

jr_0a1_4580:
    ld [bc], a                                    ; $4580: $02
    ld l, a                                       ; $4581: $6f
    sub b                                         ; $4582: $90
    rst $30                                       ; $4583: $f7
    ld [$be30], sp                                ; $4584: $08 $30 $be
    ld b, c                                       ; $4587: $41
    ldh a, [rNR33]                                ; $4588: $f0 $1d
    add sp, $0d                                   ; $458a: $e8 $0d
    or l                                          ; $458c: $b5
    ld c, d                                       ; $458d: $4a
    ld l, a                                       ; $458e: $6f
    sub b                                         ; $458f: $90
    sub b                                         ; $4590: $90
    call nc, $c71d                                ; $4591: $d4 $1d $c7
    jr c, jr_0a1_45a6                             ; $4594: $38 $10

    ld e, b                                       ; $4596: $58
    rst $38                                       ; $4597: $ff
    nop                                           ; $4598: $00
    rst $30                                       ; $4599: $f7
    ld [$7f02], sp                                ; $459a: $08 $02 $7f
    add b                                         ; $459d: $80
    xor l                                         ; $459e: $ad
    ld d, d                                       ; $459f: $52
    or $09                                        ; $45a0: $f6 $09
    db $f4                                        ; $45a2: $f4
    dec e                                         ; $45a3: $1d
    ld hl, sp+$00                                 ; $45a4: $f8 $00

jr_0a1_45a6:
    rlca                                          ; $45a6: $07
    dec hl                                        ; $45a7: $2b
    call nc, $a956                                ; $45a8: $d4 $56 $a9
    db $ed                                        ; $45ab: $ed
    ld [de], a                                    ; $45ac: $12
    ld e, a                                       ; $45ad: $5f
    ld b, $a0                                     ; $45ae: $06 $a0
    rst $28                                       ; $45b0: $ef
    db $10                                        ; $45b1: $10
    rst $18                                       ; $45b2: $df
    jr nz, jr_0a1_4559                            ; $45b3: $20 $a4

    ld a, [bc]                                    ; $45b5: $0a
    jr nc, jr_0a1_45c6                            ; $45b6: $30 $0e

    xor a                                         ; $45b8: $af
    ld h, c                                       ; $45b9: $61
    ld d, b                                       ; $45ba: $50
    ld [$cc4e], sp                                ; $45bb: $08 $4e $cc
    dec e                                         ; $45be: $1d
    ld e, $e1                                     ; $45bf: $1e $e1
    ld [$ae15], a                                 ; $45c1: $ea $15 $ae
    nop                                           ; $45c4: $00
    add b                                         ; $45c5: $80

jr_0a1_45c6:
    ld [hl], h                                    ; $45c6: $74
    db $10                                        ; $45c7: $10
    adc a                                         ; $45c8: $8f
    ld [hl], b                                    ; $45c9: $70
    ld [hl], a                                    ; $45ca: $77
    adc b                                         ; $45cb: $88
    rst $30                                       ; $45cc: $f7
    ld [$00d7], sp                                ; $45cd: $08 $d7 $00
    jr c, jr_0a1_463f                             ; $45d0: $38 $6d

    ld a, [c]                                     ; $45d2: $f2
    rst $38                                       ; $45d3: $ff
    nop                                           ; $45d4: $00
    db $d3                                        ; $45d5: $d3
    inc a                                         ; $45d6: $3c
    sbc l                                         ; $45d7: $9d
    nop                                           ; $45d8: $00
    ld h, d                                       ; $45d9: $62
    ld a, [hl]                                    ; $45da: $7e
    add c                                         ; $45db: $81
    ccf                                           ; $45dc: $3f
    ret nz                                        ; $45dd: $c0

    adc [hl]                                      ; $45de: $8e
    ld [hl], c                                    ; $45df: $71
    rst $00                                       ; $45e0: $c7
    ld bc, $b93f                                  ; $45e1: $01 $3f $b9
    ld b, [hl]                                    ; $45e4: $46
    ld a, l                                       ; $45e5: $7d
    add d                                         ; $45e6: $82
    ld a, a                                       ; $45e7: $7f
    add b                                         ; $45e8: $80
    db $f4                                        ; $45e9: $f4
    ld b, $c0                                     ; $45ea: $06 $c0
    ld a, h                                       ; $45ec: $7c
    ld c, $4c                                     ; $45ed: $0e $4c
    ld d, $bf                                     ; $45ef: $16 $bf
    ld b, b                                       ; $45f1: $40
    db $fd                                        ; $45f2: $fd
    ld [bc], a                                    ; $45f3: $02
    db $fd                                        ; $45f4: $fd
    ld [bc], a                                    ; $45f5: $02
    ld [bc], a                                    ; $45f6: $02
    di                                            ; $45f7: $f3
    ld c, $0d                                     ; $45f8: $0e $0d
    cp $77                                        ; $45fa: $fe $77
    ld hl, sp+$1c                                 ; $45fc: $f8 $1c
    ld c, $bd                                     ; $45fe: $0e $bd
    ld b, b                                       ; $4600: $40
    ld b, d                                       ; $4601: $42
    ld l, [hl]                                    ; $4602: $6e
    ld l, $dd                                     ; $4603: $2e $dd
    ld [hl+], a                                   ; $4605: $22
    cp d                                          ; $4606: $ba
    ld b, l                                       ; $4607: $45
    pop de                                        ; $4608: $d1
    ld l, $20                                     ; $4609: $2e $20
    xor b                                         ; $460b: $a8
    ld d, a                                       ; $460c: $57
    ld [hl], d                                    ; $460d: $72
    dec bc                                        ; $460e: $0b
    rst $30                                       ; $460f: $f7
    ld [$42bd], sp                                ; $4610: $08 $bd $42
    ld l, b                                       ; $4613: $68
    nop                                           ; $4614: $00
    sub a                                         ; $4615: $97
    push de                                       ; $4616: $d5
    ld a, [hl+]                                   ; $4617: $2a
    nop                                           ; $4618: $00
    rst $38                                       ; $4619: $ff
    dec b                                         ; $461a: $05
    rst $38                                       ; $461b: $ff
    ld a, [hl]                                    ; $461c: $7e
    nop                                           ; $461d: $00
    add c                                         ; $461e: $81
    rst $30                                       ; $461f: $f7
    ld [$12ed], sp                                ; $4620: $08 $ed $12

jr_0a1_4623:
    ld d, d                                       ; $4623: $52
    xor l                                         ; $4624: $ad
    add h                                         ; $4625: $84
    nop                                           ; $4626: $00
    ld a, e                                       ; $4627: $7b
    nop                                           ; $4628: $00
    rst $38                                       ; $4629: $ff
    ld a, [bc]                                    ; $462a: $0a
    rst $38                                       ; $462b: $ff
    ld b, b                                       ; $462c: $40
    ldh [$73], a                                  ; $462d: $e0 $73
    nop                                           ; $462f: $00
    db $fc                                        ; $4630: $fc
    db $eb                                        ; $4631: $eb
    db $fc                                        ; $4632: $fc
    db $db                                        ; $4633: $db
    db $ec                                        ; $4634: $ec
    ei                                            ; $4635: $fb
    db $ec                                        ; $4636: $ec
    db $eb                                        ; $4637: $eb
    add c                                         ; $4638: $81
    ld [$fb00], sp                                ; $4639: $08 $00 $fb
    db $fc                                        ; $463c: $fc
    ld [hl], e                                    ; $463d: $73
    db $fc                                        ; $463e: $fc

jr_0a1_463f:
    di                                            ; $463f: $f3
    ld a, h                                       ; $4640: $7c
    ld [$6738], sp                                ; $4641: $08 $38 $67
    db $db                                        ; $4644: $db
    ld d, $00                                     ; $4645: $16 $00
    ld e, d                                       ; $4647: $5a
    ld c, l                                       ; $4648: $4d
    ei                                            ; $4649: $fb
    inc b                                         ; $464a: $04
    ld d, h                                       ; $464b: $54
    add hl, bc                                    ; $464c: $09
    jp nz, Jump_000_203e                          ; $464d: $c2 $3e $20

    dec c                                         ; $4650: $0d
    add d                                         ; $4651: $82
    inc h                                         ; $4652: $24
    ld [$fccb], sp                                ; $4653: $08 $cb $fc
    jp hl                                         ; $4656: $e9


    cp $cb                                        ; $4657: $fe $cb
    ld c, b                                       ; $4659: $48
    nop                                           ; $465a: $00
    ret                                           ; $465b: $c9


    db $10                                        ; $465c: $10
    cp $ea                                        ; $465d: $fe $ea
    db $fd                                        ; $465f: $fd
    db $ec                                        ; $4660: $ec
    ld l, $ee                                     ; $4661: $2e $ee
    ld de, $a25d                                  ; $4663: $11 $5d $a2
    nop                                           ; $4666: $00
    db $eb                                        ; $4667: $eb
    inc d                                         ; $4668: $14
    push de                                       ; $4669: $d5
    ld a, [hl+]                                   ; $466a: $2a
    xor d                                         ; $466b: $aa
    rst $38                                       ; $466c: $ff
    ld a, a                                       ; $466d: $7f
    add b                                         ; $466e: $80
    jr z, @-$34                                   ; $466f: $28 $ca

    or l                                          ; $4671: $b5
    jr c, jr_0a1_4678                             ; $4672: $38 $04

    and b                                         ; $4674: $a0
    inc b                                         ; $4675: $04
    jr jr_0a1_4623                                ; $4676: $18 $ab

jr_0a1_4678:
    rst $38                                       ; $4678: $ff
    cp $01                                        ; $4679: $fe $01
    ld bc, $55ab                                  ; $467b: $01 $ab $55
    ld a, [$fb05]                                 ; $467e: $fa $05 $fb
    dec b                                         ; $4681: $05
    inc b                                         ; $4682: $04
    jr jr_0a1_4685                                ; $4683: $18 $00

jr_0a1_4685:
    db $fd                                        ; $4685: $fd
    rst $38                                       ; $4686: $ff
    ld [$f8fd], a                                 ; $4687: $ea $fd $f8
    rst $38                                       ; $468a: $ff
    add sp, -$01                                  ; $468b: $e8 $ff
    ld b, $fa                                     ; $468d: $06 $fa
    rst $38                                       ; $468f: $ff
    db $fd                                        ; $4690: $fd
    rst $38                                       ; $4691: $ff
    ei                                            ; $4692: $fb
    cp $07                                        ; $4693: $fe $07
    nop                                           ; $4695: $00
    rlca                                          ; $4696: $07
    ld d, l                                       ; $4697: $55
    adc b                                         ; $4698: $88
    call c, $ff01                                 ; $4699: $dc $01 $ff
    ld c, b                                       ; $469c: $48
    ldh a, [$e5]                                  ; $469d: $f0 $e5
    dec de                                        ; $469f: $1b
    xor $1f                                       ; $46a0: $ee $1f
    db $fd                                        ; $46a2: $fd
    ld [bc], a                                    ; $46a3: $02
    rra                                           ; $46a4: $1f
    ei                                            ; $46a5: $fb
    dec e                                         ; $46a6: $1d
    rst $38                                       ; $46a7: $ff
    dec e                                         ; $46a8: $1d
    db $fd                                        ; $46a9: $fd
    ld [$ff00], sp                                ; $46aa: $08 $00 $ff
    add hl, de                                    ; $46ad: $19
    rra                                           ; $46ae: $1f
    xor $1f                                       ; $46af: $ee $1f
    db $10                                        ; $46b1: $10
    ccf                                           ; $46b2: $3f
    ld a, [de]                                    ; $46b3: $1a
    rra                                           ; $46b4: $1f
    cp $0f                                        ; $46b5: $fe $0f
    jr jr_0a1_46d1                                ; $46b7: $18 $18

jr_0a1_46b9:
    or b                                          ; $46b9: $b0
    ld [$fb08], sp                                ; $46ba: $08 $08 $fb
    ld h, $00                                     ; $46bd: $26 $00

jr_0a1_46bf:
    ld l, h                                       ; $46bf: $6c
    rra                                           ; $46c0: $1f
    rst $18                                       ; $46c1: $df
    jr nz, jr_0a1_46bf                            ; $46c2: $20 $fb

    inc b                                         ; $46c4: $04
    ld [bc], a                                    ; $46c5: $02
    sbc $21                                       ; $46c6: $de $21
    or l                                          ; $46c8: $b5
    ld c, d                                       ; $46c9: $4a
    ld l, e                                       ; $46ca: $6b

jr_0a1_46cb:
    sub h                                         ; $46cb: $94
    inc d                                         ; $46cc: $14
    ld [$80f9], sp                                ; $46cd: $08 $f9 $80
    ld b, h                                       ; $46d0: $44

jr_0a1_46d1:
    nop                                           ; $46d1: $00
    cp c                                          ; $46d2: $b9
    ld e, a                                       ; $46d3: $5f
    db $dd                                        ; $46d4: $dd
    ccf                                           ; $46d5: $3f
    cp c                                          ; $46d6: $b9
    ld e, a                                       ; $46d7: $5f
    ld e, l                                       ; $46d8: $5d
    ld b, b                                       ; $46d9: $40
    cp a                                          ; $46da: $bf

jr_0a1_46db:
    ld b, b                                       ; $46db: $40
    ld c, b                                       ; $46dc: $48
    scf                                           ; $46dd: $37
    ret z                                         ; $46de: $c8

    ld e, e                                       ; $46df: $5b
    and h                                         ; $46e0: $a4
    cp a                                          ; $46e1: $bf
    rst $38                                       ; $46e2: $ff
    nop                                           ; $46e3: $00
    ld e, l                                       ; $46e4: $5d
    cp a                                          ; $46e5: $bf
    rra                                           ; $46e6: $1f
    rst $38                                       ; $46e7: $ff
    dec e                                         ; $46e8: $1d
    rst $38                                       ; $46e9: $ff
    ld e, a                                       ; $46ea: $5f
    rst $38                                       ; $46eb: $ff
    db $10                                        ; $46ec: $10
    cp a                                          ; $46ed: $bf
    rst $38                                       ; $46ee: $ff
    rst $18                                       ; $46ef: $df
    db $fd                                        ; $46f0: $fd
    rlca                                          ; $46f1: $07
    jr z, jr_0a1_46cb                             ; $46f2: $28 $d7

    ld d, h                                       ; $46f4: $54
    xor e                                         ; $46f5: $ab
    nop                                           ; $46f6: $00
    ld a, [hl+]                                   ; $46f7: $2a
    push de                                       ; $46f8: $d5
    nop                                           ; $46f9: $00
    rst $38                                       ; $46fa: $ff
    ld d, h                                       ; $46fb: $54
    rst $38                                       ; $46fc: $ff
    ld [bc], a                                    ; $46fd: $02
    inc bc                                        ; $46fe: $03
    add b                                         ; $46ff: $80
    ldh [$0e], a                                  ; $4700: $e0 $0e
    xor a                                         ; $4702: $af
    ld d, b                                       ; $4703: $50
    ld d, l                                       ; $4704: $55
    xor d                                         ; $4705: $aa
    cp d                                          ; $4706: $ba
    ld b, l                                       ; $4707: $45
    ld b, h                                       ; $4708: $44
    ld bc, $02bb                                  ; $4709: $01 $bb $02
    db $fd                                        ; $470c: $fd
    xor b                                         ; $470d: $a8
    rst $38                                       ; $470e: $ff
    dec b                                         ; $470f: $05
    rlca                                          ; $4710: $07
    sbc a                                         ; $4711: $9f
    dec l                                         ; $4712: $2d
    nop                                           ; $4713: $00
    cp a                                          ; $4714: $bf
    ld b, b                                       ; $4715: $40
    di                                            ; $4716: $f3
    inc c                                         ; $4717: $0c
    call $bd32                                    ; $4718: $cd $32 $bd
    ld b, d                                       ; $471b: $42
    jr nc, jr_0a1_46db                            ; $471c: $30 $bd

    ld b, d                                       ; $471e: $42
    ld a, [hl-]                                   ; $471f: $3a
    ld b, a                                       ; $4720: $47
    and $07                                       ; $4721: $e6 $07
    rst $08                                       ; $4723: $cf

jr_0a1_4724:
    jr nc, jr_0a1_46b9                            ; $4724: $30 $93

    ld l, [hl]                                    ; $4726: $6e
    jr c, jr_0a1_4724                             ; $4727: $38 $fb

    inc a                                         ; $4729: $3c
    sbc [hl]                                      ; $472a: $9e
    rrca                                          ; $472b: $0f
    sbc d                                         ; $472c: $9a
    add hl, bc                                    ; $472d: $09
    jp nc, $b10f                                  ; $472e: $d2 $0f $b1

    ld c, [hl]                                    ; $4731: $4e
    cp [hl]                                       ; $4732: $be
    nop                                           ; $4733: $00
    ld b, c                                       ; $4734: $41
    cp a                                          ; $4735: $bf
    ld b, b                                       ; $4736: $40
    sbc a                                         ; $4737: $9f
    ld h, b                                       ; $4738: $60
    add a                                         ; $4739: $87
    ld a, b                                       ; $473a: $78
    ret nc                                        ; $473b: $d0

    db $10                                        ; $473c: $10
    ccf                                           ; $473d: $3f
    xor [hl]                                      ; $473e: $ae
    ld e, a                                       ; $473f: $5f
    ld e, $0a                                     ; $4740: $1e $0a
    rst $38                                       ; $4742: $ff
    nop                                           ; $4743: $00
    ld e, a                                       ; $4744: $5f
    and b                                         ; $4745: $a0
    ret nz                                        ; $4746: $c0

    sub $1f                                       ; $4747: $d6 $1f
    ld c, $18                                     ; $4749: $0e $18
    db $fd                                        ; $474b: $fd
    ld [bc], a                                    ; $474c: $02
    rst $30                                       ; $474d: $f7
    ld [$01fe], sp                                ; $474e: $08 $fe $01
    ld [$06f9], sp                                ; $4751: $08 $f9 $06
    rst $30                                       ; $4754: $f7
    ld [$0802], sp                                ; $4755: $08 $02 $08
    or a                                          ; $4758: $b7
    ld c, b                                       ; $4759: $48
    ei                                            ; $475a: $fb
    nop                                           ; $475b: $00
    inc c                                         ; $475c: $0c
    db $e4                                        ; $475d: $e4
    rra                                           ; $475e: $1f
    ld e, l                                       ; $475f: $5d
    and e                                         ; $4760: $a3
    sbc [hl]                                      ; $4761: $9e
    ld h, c                                       ; $4762: $61
    sbc $00                                       ; $4763: $de $00
    ld hl, $33cc                                  ; $4765: $21 $cc $33
    pop af                                        ; $4768: $f1
    rra                                           ; $4769: $1f
    xor a                                         ; $476a: $af
    ld d, b                                       ; $476b: $50
    rst $18                                       ; $476c: $df
    jr nc, jr_0a1_478f                            ; $476d: $30 $20

    rra                                           ; $476f: $1f
    ld a, [$8e06]                                 ; $4770: $fa $06 $8e
    ld a, [bc]                                    ; $4773: $0a
    rst $18                                       ; $4774: $df
    jr nz, @+$01                                  ; $4775: $20 $ff

    nop                                           ; $4777: $00
    nop                                           ; $4778: $00
    ld [hl], e                                    ; $4779: $73
    adc h                                         ; $477a: $8c
    db $ec                                        ; $477b: $ec
    rla                                           ; $477c: $17
    or a                                          ; $477d: $b7
    ld c, e                                       ; $477e: $4b
    ld c, d                                       ; $477f: $4a
    or l                                          ; $4780: $b5
    ld b, b                                       ; $4781: $40
    ld hl, $0606                                  ; $4782: $21 $06 $06
    ld d, b                                       ; $4785: $50
    rst $38                                       ; $4786: $ff
    ld [bc], a                                    ; $4787: $02
    rlca                                          ; $4788: $07
    adc [hl]                                      ; $4789: $8e
    ld a, a                                       ; $478a: $7f
    nop                                           ; $478b: $00
    dec bc                                        ; $478c: $0b
    db $f4                                        ; $478d: $f4
    rst $18                                       ; $478e: $df

jr_0a1_478f:
    ldh [$bd], a                                  ; $478f: $e0 $bd
    ld b, d                                       ; $4791: $42
    ld d, $e9                                     ; $4792: $16 $e9
    inc bc                                        ; $4794: $03
    xor e                                         ; $4795: $ab
    ld d, h                                       ; $4796: $54
    nop                                           ; $4797: $00
    rst $38                                       ; $4798: $ff
    and b                                         ; $4799: $a0
    rst $38                                       ; $479a: $ff
    ld e, $0a                                     ; $479b: $1e $0a
    call nc, Call_000_000f                        ; $479d: $d4 $0f $00
    cp e                                          ; $47a0: $bb
    ld b, h                                       ; $47a1: $44
    ld e, l                                       ; $47a2: $5d
    and d                                         ; $47a3: $a2
    adc e                                         ; $47a4: $8b
    ld [hl], h                                    ; $47a5: $74
    dec d                                         ; $47a6: $15
    ld [$e080], a                                 ; $47a7: $ea $80 $e0
    ld e, a                                       ; $47aa: $5f
    cp l                                          ; $47ab: $bd
    ld b, d                                       ; $47ac: $42
    ld l, e                                       ; $47ad: $6b
    sub h                                         ; $47ae: $94
    ld d, h                                       ; $47af: $54
    xor e                                         ; $47b0: $ab
    jr nz, @+$4a                                  ; $47b1: $20 $48

    rst $18                                       ; $47b3: $df
    xor d                                         ; $47b4: $aa
    ld c, $40                                     ; $47b5: $0e $40
    ldh [$c0], a                                  ; $47b7: $e0 $c0

jr_0a1_47b9:
    rrca                                          ; $47b9: $0f
    ld b, b                                       ; $47ba: $40
    cp a                                          ; $47bb: $bf
    dec b                                         ; $47bc: $05
    db $10                                        ; $47bd: $10
    rst $38                                       ; $47be: $ff
    jr z, jr_0a1_47b9                             ; $47bf: $28 $f8

    ld e, $2f                                     ; $47c1: $1e $2f
    nop                                           ; $47c3: $00
    nop                                           ; $47c4: $00
    and b                                         ; $47c5: $a0
    ldh a, [$ee]                                  ; $47c6: $f0 $ee

jr_0a1_47c8:
    adc [hl]                                      ; $47c8: $8e
    ld d, [hl]                                    ; $47c9: $56
    sub b                                         ; $47ca: $90
    ld b, $80                                     ; $47cb: $06 $80
    ld c, $5e                                     ; $47cd: $0e $5e
    db $10                                        ; $47cf: $10
    dec b                                         ; $47d0: $05
    sub b                                         ; $47d1: $90
    inc c                                         ; $47d2: $0c
    and b                                         ; $47d3: $a0
    inc c                                         ; $47d4: $0c
    push hl                                       ; $47d5: $e5
    nop                                           ; $47d6: $00
    ld e, d                                       ; $47d7: $5a
    nop                                           ; $47d8: $00
    rst $38                                       ; $47d9: $ff
    dec de                                        ; $47da: $1b
    db $f4                                        ; $47db: $f4
    nop                                           ; $47dc: $00
    rst $38                                       ; $47dd: $ff
    ld h, $02                                     ; $47de: $26 $02
    db $dd                                        ; $47e0: $dd
    nop                                           ; $47e1: $00
    rst $38                                       ; $47e2: $ff
    and l                                         ; $47e3: $a5
    ld e, e                                       ; $47e4: $5b
    ret nz                                        ; $47e5: $c0

    ld b, b                                       ; $47e6: $40
    inc c                                         ; $47e7: $0c
    rst $28                                       ; $47e8: $ef
    nop                                           ; $47e9: $00
    sbc b                                         ; $47ea: $98
    ld [hl], a                                    ; $47eb: $77
    dec c                                         ; $47ec: $0d
    cp d                                          ; $47ed: $ba
    rlca                                          ; $47ee: $07
    db $dd                                        ; $47ef: $dd
    inc de                                        ; $47f0: $13
    xor $0a                                       ; $47f1: $ee $0a
    add l                                         ; $47f3: $85
    ld a, e                                       ; $47f4: $7b
    jp nc, $80ad                                  ; $47f5: $d2 $ad $80

    ld c, $79                                     ; $47f8: $0e $79
    jr nc, jr_0a1_4810                            ; $47fa: $30 $14

    inc bc                                        ; $47fc: $03
    and d                                         ; $47fd: $a2
    ldh [$03], a                                  ; $47fe: $e0 $03
    ret nz                                        ; $4800: $c0

    ld b, b                                       ; $4801: $40
    inc b                                         ; $4802: $04
    ld [hl-], a                                   ; $4803: $32
    db $ed                                        ; $4804: $ed
    add hl, de                                    ; $4805: $19
    and b                                         ; $4806: $a0
    ld [hl], $c2                                  ; $4807: $36 $c2
    jr nc, jr_0a1_47c8                            ; $4809: $30 $bd

    ld l, c                                       ; $480b: $69
    ld h, b                                       ; $480c: $60
    inc d                                         ; $480d: $14
    add b                                         ; $480e: $80
    inc c                                         ; $480f: $0c

jr_0a1_4810:
    inc hl                                        ; $4810: $23
    sub $85                                       ; $4811: $d6 $85
    ld l, e                                       ; $4813: $6b
    nop                                           ; $4814: $00
    jp nc, Jump_0a1_60ad                          ; $4815: $d2 $ad $60

    rst $10                                       ; $4818: $d7
    inc [hl]                                      ; $4819: $34
    db $eb                                        ; $481a: $eb
    ld e, e                                       ; $481b: $5b
    or h                                          ; $481c: $b4
    ld [$db0f], sp                                ; $481d: $08 $0f $db
    ld b, $ed                                     ; $4820: $06 $ed
    ldh [rDIV], a                                 ; $4822: $e0 $04
    ld e, a                                       ; $4824: $5f
    ret nc                                        ; $4825: $d0

    xor a                                         ; $4826: $af
    ld [hl+], a                                   ; $4827: $22
    ld h, b                                       ; $4828: $60
    rst $10                                       ; $4829: $d7
    ld d, b                                       ; $482a: $50
    inc b                                         ; $482b: $04
    rst $30                                       ; $482c: $f7
    dec l                                         ; $482d: $2d
    jp c, Jump_000_1010                           ; $482e: $da $10 $10

    ld a, a                                       ; $4831: $7f
    nop                                           ; $4832: $00
    ret z                                         ; $4833: $c8

    or l                                          ; $4834: $b5
    ld h, c                                       ; $4835: $61
    sbc $b0                                       ; $4836: $de $b0
    ld l, e                                       ; $4838: $6b
    ld a, [de]                                    ; $4839: $1a
    or l                                          ; $483a: $b5
    nop                                           ; $483b: $00
    dec l                                         ; $483c: $2d
    jp c, Jump_0a1_7d07                           ; $483d: $da $07 $7d

    ld d, e                                       ; $4840: $53
    xor [hl]                                      ; $4841: $ae
    add c                                         ; $4842: $81
    ld [hl], a                                    ; $4843: $77
    add b                                         ; $4844: $80
    db $10                                        ; $4845: $10
    ld [$eb34], sp                                ; $4846: $08 $34 $eb
    ld a, b                                       ; $4849: $78
    sub l                                         ; $484a: $95
    db $ed                                        ; $484b: $ed
    ld a, d                                       ; $484c: $7a
    add [hl]                                      ; $484d: $86
    nop                                           ; $484e: $00
    db $fd                                        ; $484f: $fd
    ld c, e                                       ; $4850: $4b
    or [hl]                                       ; $4851: $b6
    add l                                         ; $4852: $85
    ld a, e                                       ; $4853: $7b
    rst $18                                       ; $4854: $df
    and b                                         ; $4855: $a0
    ld d, l                                       ; $4856: $55
    db $10                                        ; $4857: $10
    xor d                                         ; $4858: $aa
    rst $38                                       ; $4859: $ff
    add b                                         ; $485a: $80
    inc bc                                        ; $485b: $03
    nop                                           ; $485c: $00
    rst $38                                       ; $485d: $ff
    cp a                                          ; $485e: $bf
    ldh [$a0], a                                  ; $485f: $e0 $a0
    nop                                           ; $4861: $00
    rst $38                                       ; $4862: $ff
    and c                                         ; $4863: $a1
    rst $38                                       ; $4864: $ff
    ei                                            ; $4865: $fb
    dec b                                         ; $4866: $05
    ld d, d                                       ; $4867: $52
    xor l                                         ; $4868: $ad
    rst $38                                       ; $4869: $ff
    nop                                           ; $486a: $00
    ld bc, $ffab                                  ; $486b: $01 $ab $ff

Call_0a1_486e:
    ld bc, $fdff                                  ; $486e: $01 $ff $fd
    rlca                                          ; $4871: $07
    dec b                                         ; $4872: $05
    nop                                           ; $4873: $00
    rst $38                                       ; $4874: $ff
    add l                                         ; $4875: $85
    rst $38                                       ; $4876: $ff
    and c                                         ; $4877: $a1
    pop bc                                        ; $4878: $c1
    jp $e381                                      ; $4879: $c3 $81 $e3


    nop                                           ; $487c: $00
    add c                                         ; $487d: $81
    rst $18                                       ; $487e: $df
    add b                                         ; $487f: $80
    and b                                         ; $4880: $a0
    ret nz                                        ; $4881: $c0

    ret nz                                        ; $4882: $c0

    add b                                         ; $4883: $80
    jp z, $a020                                   ; $4884: $ca $20 $a0

    cp a                                          ; $4887: $bf
    sub h                                         ; $4888: $94
    rla                                           ; $4889: $17
    ld d, l                                       ; $488a: $55
    add b                                         ; $488b: $80
    rst $08                                       ; $488c: $cf
    ldh a, [rIE]                                  ; $488d: $f0 $ff
    ld c, $3f                                     ; $488f: $0e $3f
    nop                                           ; $4891: $00
    nop                                           ; $4892: $00
    xor d                                         ; $4893: $aa
    jp z, $3a09                                   ; $4894: $ca $09 $3a

    jr nc, jr_0a1_48a3                            ; $4897: $30 $0a

    ld [$90ff], sp                                ; $4899: $08 $ff $90
    ld h, $07                                     ; $489c: $26 $07
    rst $28                                       ; $489e: $ef
    ld hl, sp-$80                                 ; $489f: $f8 $80
    ld a, $f7                                     ; $48a1: $3e $f7

jr_0a1_48a3:
    ld hl, sp-$2b                                 ; $48a3: $f8 $d5
    ld a, [hl+]                                   ; $48a5: $2a
    inc a                                         ; $48a6: $3c
    xor e                                         ; $48a7: $ab
    ld d, h                                       ; $48a8: $54
    sub e                                         ; $48a9: $93
    ld c, a                                       ; $48aa: $4f
    add b                                         ; $48ab: $80
    dec l                                         ; $48ac: $2d
    ret nz                                        ; $48ad: $c0

    inc l                                         ; $48ae: $2c
    ret nc                                        ; $48af: $d0

    ld [$eb30], sp                                ; $48b0: $08 $30 $eb
    ld b, b                                       ; $48b3: $40
    ld e, b                                       ; $48b4: $58
    and b                                         ; $48b5: $a0
    nop                                           ; $48b6: $00
    ld e, $e5                                     ; $48b7: $1e $e5
    ld a, e                                       ; $48b9: $7b
    sbc [hl]                                      ; $48ba: $9e
    pop hl                                        ; $48bb: $e1
    ld a, a                                       ; $48bc: $7f
    jr nz, @+$01                                  ; $48bd: $20 $ff

    ldh a, [$38]                                  ; $48bf: $f0 $38

jr_0a1_48c1:
    jr jr_0a1_48c1                                ; $48c1: $18 $fe

    pop af                                        ; $48c3: $f1
    jp hl                                         ; $48c4: $e9


    cp $da                                        ; $48c5: $fe $da
    db $10                                        ; $48c7: $10
    db $ed                                        ; $48c8: $ed
    db $ed                                        ; $48c9: $ed
    ld a, [$397c]                                 ; $48ca: $fa $7c $39
    rst $38                                       ; $48cd: $ff
    nop                                           ; $48ce: $00
    ld c, a                                       ; $48cf: $4f
    or b                                          ; $48d0: $b0
    db $dd                                        ; $48d1: $dd
    sbc d                                         ; $48d2: $9a
    ld [bc], a                                    ; $48d3: $02
    jp c, $cf06                                   ; $48d4: $da $06 $cf

    call c, Call_000_0406                         ; $48d7: $dc $06 $04
    jr z, @+$20                                   ; $48da: $28 $1e

jr_0a1_48dc:
    ld e, a                                       ; $48dc: $5f
    rst $38                                       ; $48dd: $ff
    rst $10                                       ; $48de: $d7
    ld d, $03                                     ; $48df: $16 $03
    ld d, [hl]                                    ; $48e1: $56
    ld bc, $0ff3                                  ; $48e2: $01 $f3 $0f
    rst $38                                       ; $48e5: $ff
    db $fc                                        ; $48e6: $fc
    xor b                                         ; $48e7: $a8
    nop                                           ; $48e8: $00
    inc e                                         ; $48e9: $1c
    inc b                                         ; $48ea: $04
    nop                                           ; $48eb: $00
    add l                                         ; $48ec: $85
    add e                                         ; $48ed: $83
    jp $c781                                      ; $48ee: $c3 $81 $c7


    add c                                         ; $48f1: $81
    ei                                            ; $48f2: $fb
    ld bc, $0500                                  ; $48f3: $01 $00 $05
    inc bc                                        ; $48f6: $03
    inc bc                                        ; $48f7: $03
    ld bc, $0553                                  ; $48f8: $01 $53 $05
    xor l                                         ; $48fb: $ad
    ld d, e                                       ; $48fc: $53
    ret z                                         ; $48fd: $c8

    xor $00                                       ; $48fe: $ee $00
    ld a, [hl-]                                   ; $4900: $3a
    ld d, h                                       ; $4901: $54
    ld l, a                                       ; $4902: $6f
    sbc a                                         ; $4903: $9f
    jr nz, @+$3d                                  ; $4904: $20 $3b

    ld a, a                                       ; $4906: $7f
    sbc a                                         ; $4907: $9f
    adc a                                         ; $4908: $8f
    ld de, $0f7f                                  ; $4909: $11 $7f $0f
    rst $38                                       ; $490c: $ff
    jr z, jr_0a1_491a                             ; $490d: $28 $0b

    rst $28                                       ; $490f: $ef
    rra                                           ; $4910: $1f
    rst $38                                       ; $4911: $ff
    db $10                                        ; $4912: $10
    inc hl                                        ; $4913: $23
    jp z, Jump_000_2b00                           ; $4914: $ca $00 $2b

    inc b                                         ; $4917: $04
    jr z, jr_0a1_48dc                             ; $4918: $28 $c2

jr_0a1_491a:
    xor l                                         ; $491a: $ad
    add b                                         ; $491b: $80
    ld bc, $c06f                                  ; $491c: $01 $6f $c0
    nop                                           ; $491f: $00
    jp z, $f60b                                   ; $4920: $ca $0b $f6

    dec a                                         ; $4923: $3d
    jp $c0fe                                      ; $4924: $c3 $fe $c0


    ld bc, $c0bf                                  ; $4927: $01 $bf $c0
    ld [$0580], sp                                ; $492a: $08 $80 $05
    add e                                         ; $492d: $83
    db $10                                        ; $492e: $10
    ld d, $87                                     ; $492f: $16 $87
    ld a, c                                       ; $4931: $79
    call nz, Call_0a1_68bb                        ; $4932: $c4 $bb $68
    sub b                                         ; $4935: $90
    ld hl, $1ee0                                  ; $4936: $21 $e0 $1e
    ld b, l                                       ; $4939: $45
    ret nz                                        ; $493a: $c0

Call_0a1_493b:
    jr nc, jr_0a1_493d                            ; $493b: $30 $00

jr_0a1_493d:
    ldh a, [$2f]                                  ; $493d: $f0 $2f
    jp c, Jump_000_05e0                           ; $493f: $da $e0 $05

    ld b, [hl]                                    ; $4942: $46
    jr nz, jr_0a1_494b                            ; $4943: $20 $06

    add b                                         ; $4945: $80
    ret nz                                        ; $4946: $c0

    dec l                                         ; $4947: $2d
    ld e, b                                       ; $4948: $58
    or a                                          ; $4949: $b7
    dec c                                         ; $494a: $0d

jr_0a1_494b:
    jp c, $ad56                                   ; $494b: $da $56 $ad

    inc bc                                        ; $494e: $03
    nop                                           ; $494f: $00
    sbc $97                                       ; $4950: $de $97
    ld l, c                                       ; $4952: $69
    db $fd                                        ; $4953: $fd
    ld a, [$faed]                                 ; $4954: $fa $ed $fa
    db $fc                                        ; $4957: $fc
    nop                                           ; $4958: $00
    ei                                            ; $4959: $fb
    jp hl                                         ; $495a: $e9


    cp $fa                                        ; $495b: $fe $fa
    db $fd                                        ; $495d: $fd
    db $fd                                        ; $495e: $fd
    rst $38                                       ; $495f: $ff
    ld a, [$cacf]                                 ; $4960: $fa $cf $ca
    inc bc                                        ; $4963: $03
    inc c                                         ; $4964: $0c
    dec hl                                        ; $4965: $2b
    ld c, e                                       ; $4966: $4b
    or h                                          ; $4967: $b4
    jp z, $c51b                                   ; $4968: $ca $1b $c5

    rlca                                          ; $496b: $07
    jp c, $0403                                   ; $496c: $da $03 $04

    ld [$e2da], sp                                ; $496f: $08 $da $e2
    dec bc                                        ; $4972: $0b
    ld h, [hl]                                    ; $4973: $66
    dec c                                         ; $4974: $0d
    nop                                           ; $4975: $00
    db $e4                                        ; $4976: $e4
    inc bc                                        ; $4977: $03
    inc b                                         ; $4978: $04
    ld [$ecaa], sp                                ; $4979: $08 $aa $ec
    inc bc                                        ; $497c: $03
    rst $38                                       ; $497d: $ff
    nop                                           ; $497e: $00
    rst $38                                       ; $497f: $ff
    ld [$a0ff], a                                 ; $4980: $ea $ff $a0
    rst $18                                       ; $4983: $df
    sub c                                         ; $4984: $91
    rst $28                                       ; $4985: $ef
    and c                                         ; $4986: $a1
    sub b                                         ; $4987: $90
    inc b                                         ; $4988: $04
    nop                                           ; $4989: $00
    or c                                          ; $498a: $b1
    rst $08                                       ; $498b: $cf
    inc b                                         ; $498c: $04
    ld [$ffa8], sp                                ; $498d: $08 $a8 $ff
    xor d                                         ; $4990: $aa
    push de                                       ; $4991: $d5
    jr nc, jr_0a1_49a9                            ; $4992: $30 $15

    ld [$0cdb], a                                 ; $4994: $ea $db $0c
    ld l, a                                       ; $4997: $6f
    dec b                                         ; $4998: $05
    xor d                                         ; $4999: $aa
    sub l                                         ; $499a: $95
    ret nz                                        ; $499b: $c0

    cp c                                          ; $499c: $b9
    nop                                           ; $499d: $00
    rst $00                                       ; $499e: $c7
    sub l                                         ; $499f: $95
    db $eb                                        ; $49a0: $eb
    xor c                                         ; $49a1: $a9
    rst $10                                       ; $49a2: $d7
    add c                                         ; $49a3: $81
    rst $38                                       ; $49a4: $ff
    xor e                                         ; $49a5: $ab
    jr nz, @+$01                                  ; $49a6: $20 $ff

    push de                                       ; $49a8: $d5

jr_0a1_49a9:
    dec de                                        ; $49a9: $1b
    ld h, $80                                     ; $49aa: $26 $80
    rst $38                                       ; $49ac: $ff
    ld a, [hl+]                                   ; $49ad: $2a
    push de                                       ; $49ae: $d5
    ccf                                           ; $49af: $3f
    add hl, bc                                    ; $49b0: $09
    ret nz                                        ; $49b1: $c0

    add b                                         ; $49b2: $80
    rst $38                                       ; $49b3: $ff
    xor b                                         ; $49b4: $a8
    dec hl                                        ; $49b5: $2b

jr_0a1_49b6:
    ld b, $fd                                     ; $49b6: $06 $fd
    cp $42                                        ; $49b8: $fe $42
    dec l                                         ; $49ba: $2d
    jr nc, jr_0a1_49b6                            ; $49bb: $30 $f9

    ld b, $50                                     ; $49bd: $06 $50
    nop                                           ; $49bf: $00
    pop de                                        ; $49c0: $d1
    ld bc, $5fbf                                  ; $49c1: $01 $bf $5f
    cp l                                          ; $49c4: $bd
    ld e, a                                       ; $49c5: $5f
    nop                                           ; $49c6: $00
    rst $18                                       ; $49c7: $df
    ccf                                           ; $49c8: $3f
    dec e                                         ; $49c9: $1d
    rst $38                                       ; $49ca: $ff
    sbc a                                         ; $49cb: $9f
    ld a, a                                       ; $49cc: $7f
    cp a                                          ; $49cd: $bf
    rst $38                                       ; $49ce: $ff
    ld l, [hl]                                    ; $49cf: $6e
    ld e, a                                       ; $49d0: $5f
    jp c, Jump_000_0203                           ; $49d1: $da $03 $02

    ld [$045f], sp                                ; $49d4: $08 $5f $04
    db $10                                        ; $49d7: $10
    stop                                          ; $49d8: $10 $00
    ld e, l                                       ; $49da: $5d
    ld b, $2a                                     ; $49db: $06 $2a
    dec b                                         ; $49dd: $05
    rst $38                                       ; $49de: $ff
    xor b                                         ; $49df: $a8
    ld d, a                                       ; $49e0: $57
    ld d, l                                       ; $49e1: $55
    xor e                                         ; $49e2: $ab
    ld [hl], e                                    ; $49e3: $73
    dec b                                         ; $49e4: $05
    db $fd                                        ; $49e5: $fd
    ld [hl], a                                    ; $49e6: $77
    dec b                                         ; $49e7: $05
    nop                                           ; $49e8: $00
    xor e                                         ; $49e9: $ab
    ld d, l                                       ; $49ea: $55
    ld bc, $ffd7                                  ; $49eb: $01 $d7 $ff
    add l                                         ; $49ee: $85
    ei                                            ; $49ef: $fb
    add hl, bc                                    ; $49f0: $09
    ld bc, $85f7                                  ; $49f1: $01 $f7 $85
    ei                                            ; $49f4: $fb
    adc c                                         ; $49f5: $89
    rst $30                                       ; $49f6: $f7
    adc l                                         ; $49f7: $8d
    di                                            ; $49f8: $f3
    inc b                                         ; $49f9: $04
    ld [$ff41], sp                                ; $49fa: $08 $41 $ff
    ld a, [hl-]                                   ; $49fd: $3a
    ld [bc], a                                    ; $49fe: $02

Jump_0a1_49ff:
    xor b                                         ; $49ff: $a8
    ld d, a                                       ; $4a00: $57
    db $fc                                        ; $4a01: $fc
    inc bc                                        ; $4a02: $03
    ld bc, $0484                                  ; $4a03: $01 $84 $04
    inc bc                                        ; $4a06: $03
    rst $38                                       ; $4a07: $ff
    rst $38                                       ; $4a08: $ff
    cp a                                          ; $4a09: $bf
    ld a, a                                       ; $4a0a: $7f
    db $fd                                        ; $4a0b: $fd
    ld [bc], a                                    ; $4a0c: $02
    ld [$e01e], sp                                ; $4a0d: $08 $1e $e0
    dec l                                         ; $4a10: $2d
    ld [bc], a                                    ; $4a11: $02
    ld hl, sp+$07                                 ; $4a12: $f8 $07
    ld l, l                                       ; $4a14: $6d
    sub d                                         ; $4a15: $92
    or [hl]                                       ; $4a16: $b6
    ld c, c                                       ; $4a17: $49
    jp c, $fe0b                                   ; $4a18: $da $0b $fe

jr_0a1_4a1b:
    nop                                           ; $4a1b: $00
    ld bc, $0ef1                                  ; $4a1c: $01 $f1 $0e
    xor $11                                       ; $4a1f: $ee $11
    rrca                                          ; $4a21: $0f
    rst $38                                       ; $4a22: $ff
    inc bc                                        ; $4a23: $03
    nop                                           ; $4a24: $00
    rst $38                                       ; $4a25: $ff
    and c                                         ; $4a26: $a1
    ld e, a                                       ; $4a27: $5f
    ld d, b                                       ; $4a28: $50
    xor a                                         ; $4a29: $af
    ld [$be15], a                                 ; $4a2a: $ea $15 $be
    jr jr_0a1_4a70                                ; $4a2d: $18 $41

    db $dd                                        ; $4a2f: $dd
    ld [hl+], a                                   ; $4a30: $22

jr_0a1_4a31:
    ld [hl], h                                    ; $4a31: $74
    ld b, $b6                                     ; $4a32: $06 $b6
    ld d, $aa                                     ; $4a34: $16 $aa
    push af                                       ; $4a36: $f5
    jp hl                                         ; $4a37: $e9


    nop                                           ; $4a38: $00
    sbc [hl]                                      ; $4a39: $9e
    inc d                                         ; $4a3a: $14
    adc a                                         ; $4a3b: $8f
    ld c, d                                       ; $4a3c: $4a
    add a                                         ; $4a3d: $87
    ld l, l                                       ; $4a3e: $6d
    add e                                         ; $4a3f: $83
    rst $08                                       ; $4a40: $cf
    nop                                           ; $4a41: $00
    jr nc, jr_0a1_4a1b                            ; $4a42: $30 $d7

    jr c, jr_0a1_4a31                             ; $4a44: $38 $eb

    inc e                                         ; $4a46: $1c
    rst $30                                       ; $4a47: $f7
    rrca                                          ; $4a48: $0f
    cp $00                                        ; $4a49: $fe $00
    ld bc, $22dd                                  ; $4a4b: $01 $dd $22
    ld sp, hl                                     ; $4a4e: $f9
    ld b, $fa                                     ; $4a4f: $06 $fa
    rlca                                          ; $4a51: $07
    cp e                                          ; $4a52: $bb
    nop                                           ; $4a53: $00
    ld b, h                                       ; $4a54: $44
    cp [hl]                                       ; $4a55: $be
    ld b, c                                       ; $4a56: $41
    scf                                           ; $4a57: $37
    ret z                                         ; $4a58: $c8

    ld a, [hl]                                    ; $4a59: $7e
    add c                                         ; $4a5a: $81
    ld a, [de]                                    ; $4a5b: $1a
    nop                                           ; $4a5c: $00
    push hl                                       ; $4a5d: $e5
    xor $11                                       ; $4a5e: $ee $11
    or $09                                        ; $4a60: $f6 $09
    ei                                            ; $4a62: $fb
    inc b                                         ; $4a63: $04
    ld [hl], e                                    ; $4a64: $73
    nop                                           ; $4a65: $00
    adc a                                         ; $4a66: $8f
    and d                                         ; $4a67: $a2
    rst $18                                       ; $4a68: $df
    adc c                                         ; $4a69: $89
    rst $38                                       ; $4a6a: $ff
    or $f9                                        ; $4a6b: $f6 $f9
    ld l, d                                       ; $4a6d: $6a
    nop                                           ; $4a6e: $00
    or c                                          ; $4a6f: $b1

jr_0a1_4a70:
    halt                                          ; $4a70: $76
    cp c                                          ; $4a71: $b9
    ld [$c5bd], a                                 ; $4a72: $ea $bd $c5
    rst $38                                       ; $4a75: $ff
    push af                                       ; $4a76: $f5
    db $10                                        ; $4a77: $10
    dec bc                                        ; $4a78: $0b
    sbc $21                                       ; $4a79: $de $21
    ld b, [hl]                                    ; $4a7b: $46
    ld c, $fd                                     ; $4a7c: $0e $fd
    ld [bc], a                                    ; $4a7e: $02
    rst $20                                       ; $4a7f: $e7
    jr jr_0a1_4a82                                ; $4a80: $18 $00

jr_0a1_4a82:
    reti                                          ; $4a82: $d9


    ld h, $de                                     ; $4a83: $26 $de
    ld hl, $847b                                  ; $4a85: $21 $7b $84
    ei                                            ; $4a88: $fb
    db $fc                                        ; $4a89: $fc
    ld [$7c83], sp                                ; $4a8a: $08 $83 $7c
    ld a, l                                       ; $4a8d: $7d
    add d                                         ; $4a8e: $82
    inc b                                         ; $4a8f: $04
    ld c, $ae                                     ; $4a90: $0e $ae
    ld [hl], c                                    ; $4a92: $71
    sbc $00                                       ; $4a93: $de $00
    ccf                                           ; $4a95: $3f
    sbc d                                         ; $4a96: $9a
    rst $20                                       ; $4a97: $e7
    call nz, $91f3                                ; $4a98: $c4 $f3 $91
    db $e3                                        ; $4a9b: $e3
    jp z, $f100                                   ; $4a9c: $ca $00 $f1

    and h                                         ; $4a9f: $a4
    ei                                            ; $4aa0: $fb
    ld h, d                                       ; $4aa1: $62
    sbc l                                         ; $4aa2: $9d
    ld e, c                                       ; $4aa3: $59
    adc a                                         ; $4aa4: $8f
    ld d, [hl]                                    ; $4aa5: $56
    ld b, b                                       ; $4aa6: $40
    adc a                                         ; $4aa7: $8f
    jr nc, jr_0a1_4ac9                            ; $4aa8: $30 $1f

    xor a                                         ; $4aaa: $af
    ld a, a                                       ; $4aab: $7f
    ld d, a                                       ; $4aac: $57
    rst $38                                       ; $4aad: $ff
    ld c, e                                       ; $4aae: $4b
    cp a                                          ; $4aaf: $bf
    nop                                           ; $4ab0: $00
    xor a                                         ; $4ab1: $af
    rst $10                                       ; $4ab2: $d7
    push de                                       ; $4ab3: $d5
    db $eb                                        ; $4ab4: $eb
    inc sp                                        ; $4ab5: $33
    rst $38                                       ; $4ab6: $ff
    ld [hl], h                                    ; $4ab7: $74
    adc a                                         ; $4ab8: $8f
    nop                                           ; $4ab9: $00
    ld e, c                                       ; $4aba: $59
    add [hl]                                      ; $4abb: $86
    and [hl]                                      ; $4abc: $a6
    jp $8371                                      ; $4abd: $c3 $71 $83


    cp d                                          ; $4ac0: $ba
    pop bc                                        ; $4ac1: $c1
    ld [$e917], sp                                ; $4ac2: $08 $17 $e9
    xor c                                         ; $4ac5: $a9
    ld [hl], a                                    ; $4ac6: $77
    or $08                                        ; $4ac7: $f6 $08

jr_0a1_4ac9:
    cpl                                           ; $4ac9: $2f
    rst $38                                       ; $4aca: $ff
    and a                                         ; $4acb: $a7
    nop                                           ; $4acc: $00
    ld e, a                                       ; $4acd: $5f
    ld c, a                                       ; $4ace: $4f
    cp a                                          ; $4acf: $bf
    db $d3                                        ; $4ad0: $d3
    rst $38                                       ; $4ad1: $ff
    db $f4                                        ; $4ad2: $f4
    dec sp                                        ; $4ad3: $3b
    cp e                                          ; $4ad4: $bb
    ld d, b                                       ; $4ad5: $50
    call z, Call_000_3f60                         ; $4ad6: $cc $60 $3f
    ld a, a                                       ; $4ad9: $7f
    ld a, [c]                                     ; $4ada: $f2
    inc b                                         ; $4adb: $04
    ld a, a                                       ; $4adc: $7f
    rst $38                                       ; $4add: $ff
    ld [hl], b                                    ; $4ade: $70
    rra                                           ; $4adf: $1f
    nop                                           ; $4ae0: $00
    xor l                                         ; $4ae1: $ad
    ld e, $17                                     ; $4ae2: $1e $17
    adc [hl]                                      ; $4ae4: $8e
    ld [$359f], a                                 ; $4ae5: $ea $9f $35
    db $db                                        ; $4ae8: $db
    nop                                           ; $4ae9: $00
    sbc d                                         ; $4aea: $9a
    pop af                                        ; $4aeb: $f1
    rst $20                                       ; $4aec: $e7
    ld hl, sp+$13                                 ; $4aed: $f8 $13
    db $fc                                        ; $4aef: $fc
    adc d                                         ; $4af0: $8a
    rlca                                          ; $4af1: $07
    nop                                           ; $4af2: $00
    add a                                         ; $4af3: $87
    inc bc                                        ; $4af4: $03
    ld b, d                                       ; $4af5: $42
    inc bc                                        ; $4af6: $03
    and b                                         ; $4af7: $a0
    inc bc                                        ; $4af8: $03
    ld d, l                                       ; $4af9: $55
    add d                                         ; $4afa: $82
    nop                                           ; $4afb: $00
    add sp, -$79                                  ; $4afc: $e8 $87
    scf                                           ; $4afe: $37
    rst $08                                       ; $4aff: $cf
    xor $f9                                       ; $4b00: $ee $f9
    sbc a                                         ; $4b02: $9f
    rst $38                                       ; $4b03: $ff
    nop                                           ; $4b04: $00
    daa                                           ; $4b05: $27
    rst $18                                       ; $4b06: $df
    ld e, e                                       ; $4b07: $5b
    rst $20                                       ; $4b08: $e7
    jp z, $3437                                   ; $4b09: $ca $37 $34

    rra                                           ; $4b0c: $1f
    ld [bc], a                                    ; $4b0d: $02
    sbc c                                         ; $4b0e: $99
    ld c, $44                                     ; $4b0f: $0e $44
    cp a                                          ; $4b11: $bf
    xor d                                         ; $4b12: $aa
    rst $30                                       ; $4b13: $f7
    ld a, $38                                     ; $4b14: $3e $38
    cpl                                           ; $4b16: $2f
    nop                                           ; $4b17: $00
    rst $38                                       ; $4b18: $ff
    sub a                                         ; $4b19: $97
    ld a, a                                       ; $4b1a: $7f
    srl a                                         ; $4b1b: $cb $3f
    xor $31                                       ; $4b1d: $ee $31
    ld a, [c]                                     ; $4b1f: $f2
    db $10                                        ; $4b20: $10
    rra                                           ; $4b21: $1f
    db $fd                                        ; $4b22: $fd
    ld c, $04                                     ; $4b23: $0e $04
    dec e                                         ; $4b25: $1d
    or a                                          ; $4b26: $b7
    ld c, b                                       ; $4b27: $48
    ld e, e                                       ; $4b28: $5b
    and h                                         ; $4b29: $a4
    inc h                                         ; $4b2a: $24
    push af                                       ; $4b2b: $f5
    ld c, $a6                                     ; $4b2c: $0e $a6
    inc c                                         ; $4b2e: $0c
    rst $30                                       ; $4b2f: $f7
    ld [$0f7e], sp                                ; $4b30: $08 $7e $0f
    cp $01                                        ; $4b33: $fe $01
    nop                                           ; $4b35: $00
    cp $01                                        ; $4b36: $fe $01
    inc sp                                        ; $4b38: $33
    call $b9cc                                    ; $4b39: $cd $cc $b9
    sub d                                         ; $4b3c: $92
    ld sp, hl                                     ; $4b3d: $f9
    nop                                           ; $4b3e: $00
    jp c, $b5b1                                   ; $4b3f: $da $b1 $b5

    sbc e                                         ; $4b42: $9b
    add d                                         ; $4b43: $82
    sbc a                                         ; $4b44: $9f
    rst $18                                       ; $4b45: $df
    adc l                                         ; $4b46: $8d
    nop                                           ; $4b47: $00
    or h                                          ; $4b48: $b4
    ret                                           ; $4b49: $c9


    cp $01                                        ; $4b4a: $fe $01
    rst $18                                       ; $4b4c: $df
    jr nz, jr_0a1_4bcd                            ; $4b4d: $20 $7e

    add c                                         ; $4b4f: $81
    nop                                           ; $4b50: $00
    dec [hl]                                      ; $4b51: $35
    jp z, $a55a                                   ; $4b52: $ca $5a $a5

    inc b                                         ; $4b55: $04
    ei                                            ; $4b56: $fb
    add d                                         ; $4b57: $82
    db $fd                                        ; $4b58: $fd
    nop                                           ; $4b59: $00
    db $10                                        ; $4b5a: $10
    ccf                                           ; $4b5b: $3f
    jp z, $dcfd                                   ; $4b5c: $ca $fd $dc

    rst $20                                       ; $4b5f: $e7
    and a                                         ; $4b60: $a7
    rst $08                                       ; $4b61: $cf
    nop                                           ; $4b62: $00
    jp c, $af8d                                   ; $4b63: $da $8d $af

    ret c                                         ; $4b66: $d8

    cp d                                          ; $4b67: $ba
    db $fd                                        ; $4b68: $fd
    rst $10                                       ; $4b69: $d7
    rst $28                                       ; $4b6a: $ef
    nop                                           ; $4b6b: $00
    adc d                                         ; $4b6c: $8a
    rst $00                                       ; $4b6d: $c7
    nop                                           ; $4b6e: $00
    rst $38                                       ; $4b6f: $ff
    ld l, b                                       ; $4b70: $68
    rst $10                                       ; $4b71: $d7
    nop                                           ; $4b72: $00
    rst $38                                       ; $4b73: $ff
    nop                                           ; $4b74: $00
    ld a, [de]                                    ; $4b75: $1a
    push af                                       ; $4b76: $f5
    nop                                           ; $4b77: $00
    rst $38                                       ; $4b78: $ff
    or $3d                                        ; $4b79: $f6 $3d
    nop                                           ; $4b7b: $00
    rst $38                                       ; $4b7c: $ff
    nop                                           ; $4b7d: $00
    add l                                         ; $4b7e: $85
    ld a, e                                       ; $4b7f: $7b
    inc bc                                        ; $4b80: $03
    inc bc                                        ; $4b81: $03
    dec b                                         ; $4b82: $05
    ld b, $0b                                     ; $4b83: $06 $0b
    inc c                                         ; $4b85: $0c
    nop                                           ; $4b86: $00
    dec c                                         ; $4b87: $0d
    ld c, $0a                                     ; $4b88: $0e $0a
    rrca                                          ; $4b8a: $0f
    add hl, bc                                    ; $4b8b: $09
    rrca                                          ; $4b8c: $0f
    inc b                                         ; $4b8d: $04
    rlca                                          ; $4b8e: $07
    nop                                           ; $4b8f: $00
    inc bc                                        ; $4b90: $03
    inc bc                                        ; $4b91: $03
    sub $e3                                       ; $4b92: $d6 $e3
    ld l, d                                       ; $4b94: $6a
    rst $30                                       ; $4b95: $f7
    push de                                       ; $4b96: $d5
    ccf                                           ; $4b97: $3f
    nop                                           ; $4b98: $00
    db $eb                                        ; $4b99: $eb
    dec e                                         ; $4b9a: $1d
    scf                                           ; $4b9b: $37
    db $fc                                        ; $4b9c: $fc
    push af                                       ; $4b9d: $f5
    db $e3                                        ; $4b9e: $e3
    ld c, d                                       ; $4b9f: $4a
    pop af                                        ; $4ba0: $f1
    nop                                           ; $4ba1: $00
    ld e, a                                       ; $4ba2: $5f
    ld hl, sp+$00                                 ; $4ba3: $f8 $00
    rst $38                                       ; $4ba5: $ff
    ld h, h                                       ; $4ba6: $64
    db $db                                        ; $4ba7: $db
    nop                                           ; $4ba8: $00
    rst $38                                       ; $4ba9: $ff
    ld c, b                                       ; $4baa: $48
    ld e, b                                       ; $4bab: $58
    and b                                         ; $4bac: $a0
    inc b                                         ; $4bad: $04
    ld d, [hl]                                    ; $4bae: $56
    xor l                                         ; $4baf: $ad
    jr nc, jr_0a1_4bba                            ; $4bb0: $30 $08

    db $db                                        ; $4bb2: $db
    rst $20                                       ; $4bb3: $e7
    cpl                                           ; $4bb4: $2f
    nop                                           ; $4bb5: $00
    ld [hl], $15                                  ; $4bb6: $36 $15
    rra                                           ; $4bb8: $1f
    dec c                                         ; $4bb9: $0d

jr_0a1_4bba:
    ld c, $02                                     ; $4bba: $0e $02
    inc bc                                        ; $4bbc: $03
    ld bc, $0152                                  ; $4bbd: $01 $52 $01
    ret nz                                        ; $4bc0: $c0

    dec c                                         ; $4bc1: $0d
    inc a                                         ; $4bc2: $3c
    ld e, $09                                     ; $4bc3: $1e $09
    rst $38                                       ; $4bc5: $ff
    sbc a                                         ; $4bc6: $9f
    inc b                                         ; $4bc7: $04
    ld bc, $807f                                  ; $4bc8: $01 $7f $80
    ld b, $10                                     ; $4bcb: $06 $10

jr_0a1_4bcd:
    or l                                          ; $4bcd: $b5
    ret c                                         ; $4bce: $d8

    ld e, [hl]                                    ; $4bcf: $5e
    adc b                                         ; $4bd0: $88
    ld h, e                                       ; $4bd1: $63
    adc h                                         ; $4bd2: $8c
    cp l                                          ; $4bd3: $bd
    nop                                           ; $4bd4: $00
    add $d4                                       ; $4bd5: $c6 $d4
    rst $28                                       ; $4bd7: $ef
    rst $38                                       ; $4bd8: $ff
    cp $fd                                        ; $4bd9: $fe $fd
    cp $fe                                        ; $4bdb: $fe $fe
    nop                                           ; $4bdd: $00
    rst $38                                       ; $4bde: $ff
    ld d, h                                       ; $4bdf: $54
    db $e3                                        ; $4be0: $e3
    pop af                                        ; $4be1: $f1
    ld b, e                                       ; $4be2: $43
    jp c, $bc61                                   ; $4be3: $da $61 $bc

    nop                                           ; $4be6: $00
    ld h, e                                       ; $4be7: $63
    ld h, c                                       ; $4be8: $61
    rst $38                                       ; $4be9: $ff
    or d                                          ; $4bea: $b2
    ld a, a                                       ; $4beb: $7f
    halt                                          ; $4bec: $76
    inc hl                                        ; $4bed: $23
    pop hl                                        ; $4bee: $e1
    nop                                           ; $4bef: $00
    ld b, e                                       ; $4bf0: $43
    ld h, a                                       ; $4bf1: $67
    sbc a                                         ; $4bf2: $9f
    dec b                                         ; $4bf3: $05
    rst $38                                       ; $4bf4: $ff
    ret z                                         ; $4bf5: $c8

    rst $38                                       ; $4bf6: $ff
    or h                                          ; $4bf7: $b4
    nop                                           ; $4bf8: $00
    ei                                            ; $4bf9: $fb
    ld a, d                                       ; $4bfa: $7a
    adc l                                         ; $4bfb: $8d
    xor l                                         ; $4bfc: $ad
    ld b, $c6                                     ; $4bfd: $06 $c6
    inc bc                                        ; $4bff: $03
    db $ed                                        ; $4c00: $ed
    ld a, [bc]                                    ; $4c01: $0a
    inc bc                                        ; $4c02: $03
    sbc a                                         ; $4c03: $9f
    ld a, a                                       ; $4c04: $7f
    ld a, a                                       ; $4c05: $7f
    ld b, b                                       ; $4c06: $40
    nop                                           ; $4c07: $00
    rra                                           ; $4c08: $1f
    ld b, h                                       ; $4c09: $44
    ld bc, $805f                                  ; $4c0a: $01 $5f $80
    ld c, b                                       ; $4c0d: $48
    nop                                           ; $4c0e: $00
    ld e, a                                       ; $4c0f: $5f
    cp a                                          ; $4c10: $bf
    jp nc, $fbe1                                  ; $4c11: $d2 $e1 $fb

    pop hl                                        ; $4c14: $e1
    db $ed                                        ; $4c15: $ed
    jr z, @-$0b                                   ; $4c16: $28 $f3

    ld a, [c]                                     ; $4c18: $f2
    ld a, d                                       ; $4c19: $7a
    ld [bc], a                                    ; $4c1a: $02
    db $fc                                        ; $4c1b: $fc
    ld b, b                                       ; $4c1c: $40
    db $10                                        ; $4c1d: $10
    ld a, a                                       ; $4c1e: $7f
    add e                                         ; $4c1f: $83
    ld [hl], l                                    ; $4c20: $75
    nop                                           ; $4c21: $00
    adc a                                         ; $4c22: $8f
    and h                                         ; $4c23: $a4
    reti                                          ; $4c24: $d9


    ld e, [hl]                                    ; $4c25: $5e
    ld sp, hl                                     ; $4c26: $f9
    rst $20                                       ; $4c27: $e7
    ld a, a                                       ; $4c28: $7f
    adc l                                         ; $4c29: $8d
    nop                                           ; $4c2a: $00
    ld [hl], e                                    ; $4c2b: $73
    db $10                                        ; $4c2c: $10
    ld h, e                                       ; $4c2d: $63
    xor e                                         ; $4c2e: $ab
    ld d, c                                       ; $4c2f: $51
    cp a                                          ; $4c30: $bf
    ld a, a                                       ; $4c31: $7f
    push af                                       ; $4c32: $f5
    nop                                           ; $4c33: $00
    rst $38                                       ; $4c34: $ff
    ld l, $df                                     ; $4c35: $2e $df
    sub c                                         ; $4c37: $91
    ld a, a                                       ; $4c38: $7f
    ld h, h                                       ; $4c39: $64
    ei                                            ; $4c3a: $fb
    ld [hl], e                                    ; $4c3b: $73
    dec b                                         ; $4c3c: $05
    sbc a                                         ; $4c3d: $9f
    xor h                                         ; $4c3e: $ac
    rra                                           ; $4c3f: $1f
    jp hl                                         ; $4c40: $e9


    or $6c                                        ; $4c41: $f6 $6c
    add hl, hl                                    ; $4c43: $29
    ccf                                           ; $4c44: $3f
    ld h, b                                       ; $4c45: $60
    ld b, $46                                     ; $4c46: $06 $46
    rla                                           ; $4c48: $17
    and h                                         ; $4c49: $a4
    ld bc, $fffe                                  ; $4c4a: $01 $fe $ff
    cp $c8                                        ; $4c4d: $fe $c8
    ld [de], a                                    ; $4c4f: $12
    ld [$d428], sp                                ; $4c50: $08 $28 $d4
    nop                                           ; $4c53: $00
    ld l, e                                       ; $4c54: $6b
    ld h, d                                       ; $4c55: $62
    db $fd                                        ; $4c56: $fd
    sbc c                                         ; $4c57: $99
    rst $38                                       ; $4c58: $ff
    ld [hl], l                                    ; $4c59: $75
    adc a                                         ; $4c5a: $8f
    xor [hl]                                      ; $4c5b: $ae
    nop                                           ; $4c5c: $00
    inc bc                                        ; $4c5d: $03
    ld b, [hl]                                    ; $4c5e: $46
    add e                                         ; $4c5f: $83
    or l                                          ; $4c60: $b5
    ld b, e                                       ; $4c61: $43
    ld e, l                                       ; $4c62: $5d
    and e                                         ; $4c63: $a3
    sub [hl]                                      ; $4c64: $96
    nop                                           ; $4c65: $00
    ld a, c                                       ; $4c66: $79
    xor l                                         ; $4c67: $ad
    rra                                           ; $4c68: $1f
    ld e, e                                       ; $4c69: $5b
    adc h                                         ; $4c6a: $8c
    call nc, $92f8                                ; $4c6b: $d4 $f8 $92
    nop                                           ; $4c6e: $00
    ld a, h                                       ; $4c6f: $7c
    cp d                                          ; $4c70: $ba
    db $ed                                        ; $4c71: $ed
    halt                                          ; $4c72: $76
    rst $28                                       ; $4c73: $ef
    dec hl                                        ; $4c74: $2b
    db $fd                                        ; $4c75: $fd
    sub l                                         ; $4c76: $95
    nop                                           ; $4c77: $00
    ld a, a                                       ; $4c78: $7f
    or d                                          ; $4c79: $b2
    rst $28                                       ; $4c7a: $ef
    jp hl                                         ; $4c7b: $e9


    ld [hl], a                                    ; $4c7c: $77
    ld d, e                                       ; $4c7d: $53
    ccf                                           ; $4c7e: $3f
    xor h                                         ; $4c7f: $ac
    ld [bc], a                                    ; $4c80: $02
    ld e, a                                       ; $4c81: $5f
    ld a, [hl-]                                   ; $4c82: $3a
    db $fd                                        ; $4c83: $fd
    jp hl                                         ; $4c84: $e9


    sbc [hl]                                      ; $4c85: $9e
    ld d, l                                       ; $4c86: $55
    ldh a, [rNR11]                                ; $4c87: $f0 $11
    ld a, a                                       ; $4c89: $7f
    nop                                           ; $4c8a: $00
    rst $38                                       ; $4c8b: $ff
    xor $ff                                       ; $4c8c: $ee $ff
    ld d, [hl]                                    ; $4c8e: $56
    rst $38                                       ; $4c8f: $ff
    dec de                                        ; $4c90: $1b
    rst $38                                       ; $4c91: $ff
    ld h, a                                       ; $4c92: $67
    nop                                           ; $4c93: $00
    rst $38                                       ; $4c94: $ff
    and d                                         ; $4c95: $a2
    rst $18                                       ; $4c96: $df
    xor e                                         ; $4c97: $ab
    rst $30                                       ; $4c98: $f7
    sub $ff                                       ; $4c99: $d6 $ff
    ld a, e                                       ; $4c9b: $7b
    nop                                           ; $4c9c: $00
    cp a                                          ; $4c9d: $bf
    inc [hl]                                      ; $4c9e: $34
    dec de                                        ; $4c9f: $1b
    add e                                         ; $4ca0: $83
    add hl, de                                    ; $4ca1: $19
    ld c, e                                       ; $4ca2: $4b
    sub c                                         ; $4ca3: $91
    or a                                          ; $4ca4: $b7
    inc l                                         ; $4ca5: $2c
    reti                                          ; $4ca6: $d9


    ld [hl], l                                    ; $4ca7: $75
    ld b, e                                       ; $4ca8: $43
    rlca                                          ; $4ca9: $07
    ld a, a                                       ; $4caa: $7f
    ld b, [hl]                                    ; $4cab: $46
    rlca                                          ; $4cac: $07
    ld l, [hl]                                    ; $4cad: $6e
    nop                                           ; $4cae: $00
    ld a, a                                       ; $4caf: $7f
    ccf                                           ; $4cb0: $3f
    ldh [$0a], a                                  ; $4cb1: $e0 $0a
    db $10                                        ; $4cb3: $10
    db $ec                                        ; $4cb4: $ec
    add hl, hl                                    ; $4cb5: $29
    inc d                                         ; $4cb6: $14
    ld [$ff9f], sp                                ; $4cb7: $08 $9f $ff
    ld c, a                                       ; $4cba: $4f
    cp a                                          ; $4cbb: $bf
    add a                                         ; $4cbc: $87
    nop                                           ; $4cbd: $00
    rst $38                                       ; $4cbe: $ff
    ld d, e                                       ; $4cbf: $53
    xor a                                         ; $4cc0: $af
    dec hl                                        ; $4cc1: $2b
    rst $10                                       ; $4cc2: $d7
    ld de, $38ef                                  ; $4cc3: $11 $ef $38
    nop                                           ; $4cc6: $00
    rst $00                                       ; $4cc7: $c7
    ld l, h                                       ; $4cc8: $6c
    sub e                                         ; $4cc9: $93
    dec [hl]                                      ; $4cca: $35
    jp z, $857a                                   ; $4ccb: $ca $7a $85

    ccf                                           ; $4cce: $3f
    ld a, b                                       ; $4ccf: $78
    ret nz                                        ; $4cd0: $c0

    ld d, d                                       ; $4cd1: $52
    cpl                                           ; $4cd2: $2f
    add $1e                                       ; $4cd3: $c6 $1e
    ldh a, [rNR33]                                ; $4cd5: $f0 $1d
    add b                                         ; $4cd7: $80
    add hl, hl                                    ; $4cd8: $29
    and l                                         ; $4cd9: $a5
    ld e, e                                       ; $4cda: $5b
    dec de                                        ; $4cdb: $1b
    jr jr_0a1_4cfa                                ; $4cdc: $18 $1c

    dec b                                         ; $4cde: $05
    ld b, $4c                                     ; $4cdf: $06 $4c

jr_0a1_4ce1:
    add hl, hl                                    ; $4ce1: $29
    db $10                                        ; $4ce2: $10
    rrca                                          ; $4ce3: $0f
    cp d                                          ; $4ce4: $ba
    db $dd                                        ; $4ce5: $dd
    db $fc                                        ; $4ce6: $fc
    nop                                           ; $4ce7: $00
    ld h, e                                       ; $4ce8: $63
    jp Jump_000_1971                              ; $4ce9: $c3 $71 $19


    pop af                                        ; $4cec: $f1
    or $c9                                        ; $4ced: $f6 $c9
    ld d, l                                       ; $4cef: $55
    jr nz, jr_0a1_4ce1                            ; $4cf0: $20 $ef

    ld [hl+], a                                   ; $4cf2: $22
    add h                                         ; $4cf3: $84
    nop                                           ; $4cf4: $00
    call nc, $e9ea                                ; $4cf5: $d4 $ea $e9
    or $b2                                        ; $4cf8: $f6 $b2

jr_0a1_4cfa:
    nop                                           ; $4cfa: $00
    rra                                           ; $4cfb: $1f
    ld a, [hl]                                    ; $4cfc: $7e
    adc a                                         ; $4cfd: $8f
    di                                            ; $4cfe: $f3
    rst $38                                       ; $4cff: $ff
    ld [hl], $c1                                  ; $4d00: $36 $c1
    ld c, e                                       ; $4d02: $4b
    nop                                           ; $4d03: $00
    add a                                         ; $4d04: $87
    ld l, l                                       ; $4d05: $6d
    sbc [hl]                                      ; $4d06: $9e
    cp d                                          ; $4d07: $ba
    ld a, a                                       ; $4d08: $7f
    ld c, a                                       ; $4d09: $4f
    scf                                           ; $4d0a: $37
    sub l                                         ; $4d0b: $95
    ld [bc], a                                    ; $4d0c: $02
    ld h, e                                       ; $4d0d: $63
    xor e                                         ; $4d0e: $ab
    ld b, c                                       ; $4d0f: $41
    ld d, a                                       ; $4d10: $57
    pop hl                                        ; $4d11: $e1
    db $db                                        ; $4d12: $db
    jr z, jr_0a1_4d16                             ; $4d13: $28 $01

    sub d                                         ; $4d15: $92

jr_0a1_4d16:
    jr jr_0a1_4d97                                ; $4d16: $18 $7f

    ld b, $07                                     ; $4d18: $06 $07
    ld a, $48                                     ; $4d1a: $3e $48
    ld b, b                                       ; $4d1c: $40
    rlca                                          ; $4d1d: $07
    ret nc                                        ; $4d1e: $d0

    xor a                                         ; $4d1f: $af
    ld [hl], b                                    ; $4d20: $70
    nop                                           ; $4d21: $00
    ld b, a                                       ; $4d22: $47
    cp b                                          ; $4d23: $b8
    ld a, [$5f9d]                                 ; $4d24: $fa $9d $5f
    rst $30                                       ; $4d27: $f7
    ld [hl], $f9                                  ; $4d28: $36 $f9
    nop                                           ; $4d2a: $00
    ld a, [bc]                                    ; $4d2b: $0a
    db $fd                                        ; $4d2c: $fd
    rlca                                          ; $4d2d: $07
    rst $38                                       ; $4d2e: $ff
    ld e, a                                       ; $4d2f: $5f
    rrca                                          ; $4d30: $0f
    jp hl                                         ; $4d31: $e9


    rra                                           ; $4d32: $1f
    nop                                           ; $4d33: $00
    or l                                          ; $4d34: $b5
    ld a, e                                       ; $4d35: $7b
    ret                                           ; $4d36: $c9


    rst $30                                       ; $4d37: $f7
    ld d, d                                       ; $4d38: $52
    xor a                                         ; $4d39: $af
    sbc l                                         ; $4d3a: $9d
    ld a, a                                       ; $4d3b: $7f
    inc h                                         ; $4d3c: $24
    ld [$31ff], a                                 ; $4d3d: $ea $ff $31
    rlca                                          ; $4d40: $07
    rst $38                                       ; $4d41: $ff
    ld h, b                                       ; $4d42: $60
    jp c, Jump_0a1_7806                           ; $4d43: $da $06 $78

    sub [hl]                                      ; $4d46: $96
    inc de                                        ; $4d47: $13
    nop                                           ; $4d48: $00
    rst $38                                       ; $4d49: $ff
    sub [hl]                                      ; $4d4a: $96
    ld [hl], b                                    ; $4d4b: $70
    ld b, $91                                     ; $4d4c: $06 $91
    ld l, e                                       ; $4d4e: $6b
    cp [hl]                                       ; $4d4f: $be
    ld c, [hl]                                    ; $4d50: $4e
    ld l, b                                       ; $4d51: $68
    rrca                                          ; $4d52: $0f
    inc bc                                        ; $4d53: $03
    db $fc                                        ; $4d54: $fc
    inc bc                                        ; $4d55: $03
    cp $01                                        ; $4d56: $fe $01
    db $fd                                        ; $4d58: $fd
    ld [bc], a                                    ; $4d59: $02

jr_0a1_4d5a:
    ld h, d                                       ; $4d5a: $62
    rrca                                          ; $4d5b: $0f
    ld a, d                                       ; $4d5c: $7a
    daa                                           ; $4d5d: $27
    adc b                                         ; $4d5e: $88
    ld e, h                                       ; $4d5f: $5c
    ld de, $7f9f                                  ; $4d60: $11 $9f $7f
    rra                                           ; $4d63: $1f
    call c, $af00                                 ; $4d64: $dc $00 $af
    ld e, a                                       ; $4d67: $5f
    rst $00                                       ; $4d68: $c7
    ld b, e                                       ; $4d69: $43
    ccf                                           ; $4d6a: $3f
    adc h                                         ; $4d6b: $8c
    rrca                                          ; $4d6c: $0f
    ccf                                           ; $4d6d: $3f
    ret nz                                        ; $4d6e: $c0

    ld e, a                                       ; $4d6f: $5f
    and b                                         ; $4d70: $a0
    ret c                                         ; $4d71: $d8

    ld [$0808], sp                                ; $4d72: $08 $08 $08
    nop                                           ; $4d75: $00
    and e                                         ; $4d76: $a3
    ld e, a                                       ; $4d77: $5f
    db $d3                                        ; $4d78: $d3
    cpl                                           ; $4d79: $2f
    pop af                                        ; $4d7a: $f1
    rrca                                          ; $4d7b: $0f
    jp hl                                         ; $4d7c: $e9


    rla                                           ; $4d7d: $17
    nop                                           ; $4d7e: $00
    db $f4                                        ; $4d7f: $f4
    dec bc                                        ; $4d80: $0b
    ld hl, sp+$07                                 ; $4d81: $f8 $07
    db $f4                                        ; $4d83: $f4
    dec bc                                        ; $4d84: $0b
    ld a, [$0005]                                 ; $4d85: $fa $05 $00
    xor a                                         ; $4d88: $af
    ld d, b                                       ; $4d89: $50
    ld e, a                                       ; $4d8a: $5f
    and b                                         ; $4d8b: $a0
    xor a                                         ; $4d8c: $af
    ret nc                                        ; $4d8d: $d0

    rlca                                          ; $4d8e: $07
    ld a, b                                       ; $4d8f: $78
    ld bc, $750a                                  ; $4d90: $01 $0a $75
    dec b                                         ; $4d93: $05
    ld a, [hl-]                                   ; $4d94: $3a
    inc bc                                        ; $4d95: $03
    inc e                                         ; $4d96: $1c

jr_0a1_4d97:
    ld bc, $12ba                                  ; $4d97: $01 $ba $12
    add b                                         ; $4d9a: $80
    call nz, $bf2f                                ; $4d9b: $c4 $2f $bf
    ld b, b                                       ; $4d9e: $40
    ld e, a                                       ; $4d9f: $5f
    and b                                         ; $4da0: $a0
    cp $ff                                        ; $4da1: $fe $ff
    db $fc                                        ; $4da3: $fc
    ret nz                                        ; $4da4: $c0

    ld [bc], a                                    ; $4da5: $02
    db $10                                        ; $4da6: $10
    cp b                                          ; $4da7: $b8
    inc c                                         ; $4da8: $0c
    ld a, [$f2fd]                                 ; $4da9: $fa $fd $f2
    db $fd                                        ; $4dac: $fd
    db $f4                                        ; $4dad: $f4
    ei                                            ; $4dae: $fb
    nop                                           ; $4daf: $00
    ld a, [c]                                     ; $4db0: $f2
    db $fd                                        ; $4db1: $fd
    and $f9                                       ; $4db2: $e6 $f9
    and $f9                                       ; $4db4: $e6 $f9
    ld [c], a                                     ; $4db6: $e2
    db $fd                                        ; $4db7: $fd
    nop                                           ; $4db8: $00
    add $f9                                       ; $4db9: $c6 $f9
    jp z, $c6f5                                   ; $4dbb: $ca $f5 $c6

    ld sp, hl                                     ; $4dbe: $f9
    adc [hl]                                      ; $4dbf: $8e
    pop af                                        ; $4dc0: $f1
    nop                                           ; $4dc1: $00
    sbc [hl]                                      ; $4dc2: $9e
    pop hl                                        ; $4dc3: $e1
    sbc [hl]                                      ; $4dc4: $9e
    pop hl                                        ; $4dc5: $e1
    xor [hl]                                      ; $4dc6: $ae
    pop de                                        ; $4dc7: $d1
    ld e, $e1                                     ; $4dc8: $1e $e1
    inc bc                                        ; $4dca: $03
    ld a, $c1                                     ; $4dcb: $3e $c1
    ld e, [hl]                                    ; $4dcd: $5e
    and c                                         ; $4dce: $a1
    ld a, $c1                                     ; $4dcf: $3e $c1
    call z, Call_000_0429                         ; $4dd1: $cc $29 $04
    jr z, jr_0a1_4d5a                             ; $4dd4: $28 $84

    inc d                                         ; $4dd6: $14
    ld [$a15e], sp                                ; $4dd7: $08 $5e $a1
    cp [hl]                                       ; $4dda: $be
    ld b, c                                       ; $4ddb: $41
    ld [$2c18], sp                                ; $4ddc: $08 $18 $2c
    db $d3                                        ; $4ddf: $d3
    ld e, b                                       ; $4de0: $58
    ld [hl], a                                    ; $4de1: $77
    ld c, b                                       ; $4de2: $48
    ld d, $77                                     ; $4de3: $16 $77
    ld [bc], a                                    ; $4de5: $02
    nop                                           ; $4de6: $00
    ld e, b                                       ; $4de7: $58
    ld c, $ef                                     ; $4de8: $0e $ef
    ld hl, sp-$03                                 ; $4dea: $f8 $fd
    nop                                           ; $4dec: $00
    ld [bc], a                                    ; $4ded: $02
    ei                                            ; $4dee: $fb
    inc b                                         ; $4def: $04
    db $fd                                        ; $4df0: $fd
    ld [bc], a                                    ; $4df1: $02
    ld a, [$fc05]                                 ; $4df2: $fa $05 $fc
    nop                                           ; $4df5: $00
    inc bc                                        ; $4df6: $03
    add sp, $17                                   ; $4df7: $e8 $17
    ret c                                         ; $4df9: $d8

    daa                                           ; $4dfa: $27
    db $f4                                        ; $4dfb: $f4
    dec bc                                        ; $4dfc: $0b
    add b                                         ; $4dfd: $80
    nop                                           ; $4dfe: $00
    ld a, b                                       ; $4dff: $78
    ld [$10f8], sp                                ; $4e00: $08 $f8 $10
    ldh a, [rNR41]                                ; $4e03: $f0 $20
    ldh [rLCDC], a                                ; $4e05: $e0 $40
    jr @-$3e                                      ; $4e07: $18 $c0

    nop                                           ; $4e09: $00
    ret nz                                        ; $4e0a: $c0

    add [hl]                                      ; $4e0b: $86
    rla                                           ; $4e0c: $17
    ld [hl], b                                    ; $4e0d: $70
    rla                                           ; $4e0e: $17
    ld e, d                                       ; $4e0f: $5a
    or l                                          ; $4e10: $b5
    nop                                           ; $4e11: $00
    db $10                                        ; $4e12: $10
    rst $38                                       ; $4e13: $ff
    add [hl]                                      ; $4e14: $86
    ld l, l                                       ; $4e15: $6d
    nop                                           ; $4e16: $00
    inc bc                                        ; $4e17: $03
    ld l, e                                       ; $4e18: $6b
    cp a                                          ; $4e19: $bf
    ret z                                         ; $4e1a: $c8

    ld h, a                                       ; $4e1b: $67
    sub b                                         ; $4e1c: $90
    sub b                                         ; $4e1d: $90
    ld d, $eb                                     ; $4e1e: $16 $eb
    db $fc                                        ; $4e20: $fc
    inc a                                         ; $4e21: $3c
    nop                                           ; $4e22: $00
    ld a, [$fdfa]                                 ; $4e23: $fa $fa $fd
    jp hl                                         ; $4e26: $e9


    nop                                           ; $4e27: $00
    rla                                           ; $4e28: $17
    jp nc, $a02e                                  ; $4e29: $d2 $2e $a0

    ld e, [hl]                                    ; $4e2c: $5e
    ldh [rNR32], a                                ; $4e2d: $e0 $1c
    ld b, b                                       ; $4e2f: $40
    nop                                           ; $4e30: $00
    cp b                                          ; $4e31: $b8
    adc b                                         ; $4e32: $88
    ld a, b                                       ; $4e33: $78
    db $10                                        ; $4e34: $10

jr_0a1_4e35:
    ldh a, [rP1]                                  ; $4e35: $f0 $00
    ldh a, [rIE]                                  ; $4e37: $f0 $ff
    jr nz, jr_0a1_4e35                            ; $4e39: $20 $fa

    add sp, $75                                   ; $4e3b: $e8 $75
    dec b                                         ; $4e3d: $05
    db $fc                                        ; $4e3e: $fc
    ld hl, sp-$08                                 ; $4e3f: $f8 $f8
    ld hl, sp-$18                                 ; $4e41: $f8 $e8
    db $10                                        ; $4e43: $10
    ld hl, sp-$28                                 ; $4e44: $f8 $d8
    add sp, $0c                                   ; $4e46: $e8 $0c
    nop                                           ; $4e48: $00
    xor d                                         ; $4e49: $aa
    ld hl, $e000                                  ; $4e4a: $21 $00 $e0
    nop                                           ; $4e4d: $00
    ldh [$79], a                                  ; $4e4e: $e0 $79
    jr jr_0a1_4e5e                                ; $4e50: $18 $0c

    inc b                                         ; $4e52: $04
    dec b                                         ; $4e53: $05
    inc b                                         ; $4e54: $04
    inc b                                         ; $4e55: $04
    sub c                                         ; $4e56: $91
    inc b                                         ; $4e57: $04
    nop                                           ; $4e58: $00
    cp a                                          ; $4e59: $bf
    ld [$06e4], a                                 ; $4e5a: $ea $e4 $06
    ld b, b                                       ; $4e5d: $40

jr_0a1_4e5e:
    rst $18                                       ; $4e5e: $df
    jr nz, @+$06                                  ; $4e5f: $20 $04

    ld [$7e80], sp                                ; $4e61: $08 $80 $7e
    ld b, $20                                     ; $4e64: $06 $20
    rst $38                                       ; $4e66: $ff
    xor d                                         ; $4e67: $aa

jr_0a1_4e68:
    sbc a                                         ; $4e68: $9f
    ld h, b                                       ; $4e69: $60
    ccf                                           ; $4e6a: $3f
    ret nz                                        ; $4e6b: $c0

    dec c                                         ; $4e6c: $0d
    xor a                                         ; $4e6d: $af
    ld d, b                                       ; $4e6e: $50
    ld [hl], a                                    ; $4e6f: $77
    adc b                                         ; $4e70: $88
    sub $1e                                       ; $4e71: $d6 $1e
    inc [hl]                                      ; $4e73: $34
    ld [$3cc8], sp                                ; $4e74: $08 $c8 $3c
    nop                                           ; $4e77: $00
    sbc e                                         ; $4e78: $9b
    inc b                                         ; $4e79: $04
    jr jr_0a1_4e68                                ; $4e7a: $18 $ec

    ld hl, sp+$34                                 ; $4e7c: $f8 $34
    ld [$3804], sp                                ; $4e7e: $08 $04 $38
    dec d                                         ; $4e81: $15
    add sp, $04                                   ; $4e82: $e8 $04
    inc a                                         ; $4e84: $3c
    jr jr_0a1_4ea7                                ; $4e85: $18 $20

    cp a                                          ; $4e87: $bf
    ld b, b                                       ; $4e88: $40
    ld c, b                                       ; $4e89: $48
    ld [$00ff], sp                                ; $4e8a: $08 $ff $00
    rra                                           ; $4e8d: $1f
    ld c, $1d                                     ; $4e8e: $0e $1d
    ld [$1f1f], sp                                ; $4e90: $08 $1f $1f
    rra                                           ; $4e93: $1f
    ld c, $03                                     ; $4e94: $0e $03
    nop                                           ; $4e96: $00
    dec e                                         ; $4e97: $1d
    rra                                           ; $4e98: $1f
    dec de                                        ; $4e99: $1b
    nop                                           ; $4e9a: $00
    dec e                                         ; $4e9b: $1d
    dec e                                         ; $4e9c: $1d
    rra                                           ; $4e9d: $1f
    nop                                           ; $4e9e: $00
    rst $38                                       ; $4e9f: $ff
    ld h, d                                       ; $4ea0: $62
    db $dd                                        ; $4ea1: $dd
    nop                                           ; $4ea2: $00
    ld [bc], a                                    ; $4ea3: $02
    rst $38                                       ; $4ea4: $ff
    sbc b                                         ; $4ea5: $98
    ld [hl], a                                    ; $4ea6: $77

jr_0a1_4ea7:
    nop                                           ; $4ea7: $00
    rst $38                                       ; $4ea8: $ff
    rlca                                          ; $4ea9: $07
    ld [$8500], sp                                ; $4eaa: $08 $00 $85
    nop                                           ; $4ead: $00
    ld a, e                                       ; $4eae: $7b
    rla                                           ; $4eaf: $17
    add hl, de                                    ; $4eb0: $19
    dec c                                         ; $4eb1: $0d
    ld e, $1b                                     ; $4eb2: $1e $1b
    dec e                                         ; $4eb4: $1d
    rra                                           ; $4eb5: $1f
    call nc, Call_000_001a                        ; $4eb6: $d4 $1a $00
    jr z, jr_0a1_4ec3                             ; $4eb9: $28 $08

    rra                                           ; $4ebb: $1f
    jr nz, jr_0a1_4ebe                            ; $4ebc: $20 $00

jr_0a1_4ebe:
    ld h, b                                       ; $4ebe: $60
    ret nc                                        ; $4ebf: $d0

    inc bc                                        ; $4ec0: $03
    ret c                                         ; $4ec1: $d8

    rst $30                                       ; $4ec2: $f7

jr_0a1_4ec3:
    inc de                                        ; $4ec3: $13
    nop                                           ; $4ec4: $00
    rst $38                                       ; $4ec5: $ff
    ld b, $d0                                     ; $4ec6: $06 $d0
    ld bc, $7f81                                  ; $4ec8: $01 $81 $7f
    rst $30                                       ; $4ecb: $f7
    dec b                                         ; $4ecc: $05
    cp h                                          ; $4ecd: $bc
    ld [hl], $88                                  ; $4ece: $36 $88
    ld e, b                                       ; $4ed0: $58
    rrca                                          ; $4ed1: $0f
    cp a                                          ; $4ed2: $bf
    rst $38                                       ; $4ed3: $ff
    dec e                                         ; $4ed4: $1d
    or h                                          ; $4ed5: $b4
    dec b                                         ; $4ed6: $05
    ld a, a                                       ; $4ed7: $7f
    sbc a                                         ; $4ed8: $9f
    rst $18                                       ; $4ed9: $df
    jr @+$41                                      ; $4eda: $18 $3f

    db $dd                                        ; $4edc: $dd
    ccf                                           ; $4edd: $3f
    or b                                          ; $4ede: $b0
    ld c, $68                                     ; $4edf: $0e $68
    ld a, [hl+]                                   ; $4ee1: $2a
    rlca                                          ; $4ee2: $07
    rlca                                          ; $4ee3: $07
    jr jr_0a1_4eea                                ; $4ee4: $18 $04

    rra                                           ; $4ee6: $1f
    dec h                                         ; $4ee7: $25
    ld a, [hl-]                                   ; $4ee8: $3a
    ld b, e                                       ; $4ee9: $43

jr_0a1_4eea:
    ld a, h                                       ; $4eea: $7c
    ld a, b                                       ; $4eeb: $78
    ld a, [hl+]                                   ; $4eec: $2a
    ldh [$e0], a                                  ; $4eed: $e0 $e0
    nop                                           ; $4eef: $00
    jr jr_0a1_4eea                                ; $4ef0: $18 $f8

    ld d, h                                       ; $4ef2: $54
    xor h                                         ; $4ef3: $ac
    ld a, [$c006]                                 ; $4ef4: $fa $06 $c0
    rst $38                                       ; $4ef7: $ff
    ld bc, $bfa7                                  ; $4ef8: $01 $a7 $bf
    call c, $b2ff                                 ; $4efb: $dc $ff $b2
    cp l                                          ; $4efe: $bd
    ret nc                                        ; $4eff: $d0

    xor d                                         ; $4f00: $aa
    rlca                                          ; $4f01: $07
    ld b, b                                       ; $4f02: $40
    ret nc                                        ; $4f03: $d0

    ld [$0d00], sp                                ; $4f04: $08 $00 $0d
    di                                            ; $4f07: $f3
    push hl                                       ; $4f08: $e5
    ei                                            ; $4f09: $fb
    add hl, sp                                    ; $4f0a: $39
    rst $38                                       ; $4f0b: $ff
    nop                                           ; $4f0c: $00
    dec c                                         ; $4f0d: $0d
    rst $18                                       ; $4f0e: $df
    dec de                                        ; $4f0f: $1b
    rst $28                                       ; $4f10: $ef
    dec c                                         ; $4f11: $0d
    db $eb                                        ; $4f12: $eb
    dec de                                        ; $4f13: $1b
    db $ed                                        ; $4f14: $ed
    jr nc, jr_0a1_4f26                            ; $4f15: $30 $0f

    jp hl                                         ; $4f17: $e9


    ret nz                                        ; $4f18: $c0

    add hl, hl                                    ; $4f19: $29
    ld b, $28                                     ; $4f1a: $06 $28
    ld e, [hl]                                    ; $4f1c: $5e
    and c                                         ; $4f1d: $a1
    cp h                                          ; $4f1e: $bc
    ld b, e                                       ; $4f1f: $43
    nop                                           ; $4f20: $00
    ld e, d                                       ; $4f21: $5a
    and l                                         ; $4f22: $a5
    inc [hl]                                      ; $4f23: $34
    bit 3, c                                      ; $4f24: $cb $59

jr_0a1_4f26:
    and a                                         ; $4f26: $a7
    or b                                          ; $4f27: $b0
    ld c, a                                       ; $4f28: $4f
    ld [$9668], sp                                ; $4f29: $08 $68 $96
    or d                                          ; $4f2c: $b2
    ld c, [hl]                                    ; $4f2d: $4e
    ld e, $58                                     ; $4f2e: $1e $58
    db $fc                                        ; $4f30: $fc
    rst $38                                       ; $4f31: $ff
    ld h, h                                       ; $4f32: $64
    nop                                           ; $4f33: $00
    sbc h                                         ; $4f34: $9c
    and b                                         ; $4f35: $a0
    ld e, h                                       ; $4f36: $5c
    ld b, b                                       ; $4f37: $40
    cp b                                          ; $4f38: $b8
    xor b                                         ; $4f39: $a8
    ld e, b                                       ; $4f3a: $58
    ld b, b                                       ; $4f3b: $40
    nop                                           ; $4f3c: $00
    cp b                                          ; $4f3d: $b8
    add b                                         ; $4f3e: $80
    ld [hl], b                                    ; $4f3f: $70
    db $10                                        ; $4f40: $10
    ldh a, [$80]                                  ; $4f41: $f0 $80
    ld [hl], b                                    ; $4f43: $70
    ld a, [$f883]                                 ; $4f44: $fa $83 $f8
    rlca                                          ; $4f47: $07

jr_0a1_4f48:
    ld sp, hl                                     ; $4f48: $f9
    cp $ef                                        ; $4f49: $fe $ef
    rst $38                                       ; $4f4b: $ff
    rst $38                                       ; $4f4c: $ff
    ld d, d                                       ; $4f4d: $52
    ld bc, $0803                                  ; $4f4e: $01 $03 $08
    nop                                           ; $4f51: $00
    xor h                                         ; $4f52: $ac
    inc b                                         ; $4f53: $04
    push af                                       ; $4f54: $f5
    inc c                                         ; $4f55: $0c
    sbc h                                         ; $4f56: $9c

jr_0a1_4f57:
    ld a, b                                       ; $4f57: $78
    ld sp, hl                                     ; $4f58: $f9
    ldh [rTMA], a                                 ; $4f59: $e0 $06
    ldh a, [rP1]                                  ; $4f5b: $f0 $00
    ld hl, $2000                                  ; $4f5d: $21 $00 $20
    inc b                                         ; $4f60: $04
    nop                                           ; $4f61: $00
    ld [$df19], sp                                ; $4f62: $08 $19 $df

jr_0a1_4f65:
    nop                                           ; $4f65: $00
    jr nz, jr_0a1_4f65                            ; $4f66: $20 $fd

    ld [bc], a                                    ; $4f68: $02
    rst $18                                       ; $4f69: $df
    jr nz, jr_0a1_4f48                            ; $4f6a: $20 $dc

    inc hl                                        ; $4f6c: $23
    cp c                                          ; $4f6d: $b9
    ld h, b                                       ; $4f6e: $60
    ld b, [hl]                                    ; $4f6f: $46
    and b                                         ; $4f70: $a0
    ld e, d                                       ; $4f71: $5a
    jr nz, jr_0a1_4f7a                            ; $4f72: $20 $06

    cp $f8                                        ; $4f74: $fe $f8
    ld hl, sp-$03                                 ; $4f76: $f8 $fd
    ld hl, sp+$02                                 ; $4f78: $f8 $02

jr_0a1_4f7a:
    ld a, [$fdf8]                                 ; $4f7a: $fa $f8 $fd
    rst $38                                       ; $4f7d: $ff
    ei                                            ; $4f7e: $fb
    db $fc                                        ; $4f7f: $fc
    ld [bc], a                                    ; $4f80: $02
    ld [$0001], sp                                ; $4f81: $08 $01 $00
    adc d                                         ; $4f84: $8a
    ld [hl+], a                                   ; $4f85: $22
    nop                                           ; $4f86: $00
    ld [hl], l                                    ; $4f87: $75
    nop                                           ; $4f88: $00
    xor d                                         ; $4f89: $aa
    ld bc, $0054                                  ; $4f8a: $01 $54 $00
    db $eb                                        ; $4f8d: $eb
    ld a, a                                       ; $4f8e: $7f
    add h                                         ; $4f8f: $84
    ei                                            ; $4f90: $fb
    add h                                         ; $4f91: $84
    ld a, l                                       ; $4f92: $7d
    add [hl]                                      ; $4f93: $86
    ld d, l                                       ; $4f94: $55
    nop                                           ; $4f95: $00
    xor d                                         ; $4f96: $aa
    xor e                                         ; $4f97: $ab
    ld d, h                                       ; $4f98: $54
    rst $38                                       ; $4f99: $ff
    nop                                           ; $4f9a: $00
    cp d                                          ; $4f9b: $ba
    ld b, l                                       ; $4f9c: $45
    inc d                                         ; $4f9d: $14
    db $10                                        ; $4f9e: $10
    db $eb                                        ; $4f9f: $eb
    xor a                                         ; $4fa0: $af
    ld d, b                                       ; $4fa1: $50
    and $0d                                       ; $4fa2: $e6 $0d
    ld d, l                                       ; $4fa4: $55
    xor d                                         ; $4fa5: $aa
    ld a, [$0005]                                 ; $4fa6: $fa $05 $00
    rst $18                                       ; $4fa9: $df
    jr nz, jr_0a1_4f57                            ; $4faa: $20 $ab

    ld d, h                                       ; $4fac: $54
    dec d                                         ; $4fad: $15
    ld [$09fe], a                                 ; $4fae: $ea $fe $09
    nop                                           ; $4fb1: $00
    rst $30                                       ; $4fb2: $f7
    ld [$0cfb], sp                                ; $4fb3: $08 $fb $0c
    or e                                          ; $4fb6: $b3
    adc $75                                       ; $4fb7: $ce $75
    adc [hl]                                      ; $4fb9: $8e
    nop                                           ; $4fba: $00
    or a                                          ; $4fbb: $b7
    adc $35                                       ; $4fbc: $ce $35
    adc $b2                                       ; $4fbe: $ce $b2
    rst $08                                       ; $4fc0: $cf
    inc d                                         ; $4fc1: $14
    rst $28                                       ; $4fc2: $ef
    ld b, b                                       ; $4fc3: $40
    xor e                                         ; $4fc4: $ab
    db $eb                                        ; $4fc5: $eb
    rlca                                          ; $4fc6: $07
    rst $38                                       ; $4fc7: $ff
    ld [bc], a                                    ; $4fc8: $02
    ld a, l                                       ; $4fc9: $7d
    add d                                         ; $4fca: $82
    cp $03                                        ; $4fcb: $fe $03
    ld bc, $867b                                  ; $4fcd: $01 $7b $86
    cp h                                          ; $4fd0: $bc
    ld b, a                                       ; $4fd1: $47
    ld b, d                                       ; $4fd2: $42
    cp a                                          ; $4fd3: $bf
    push de                                       ; $4fd4: $d5
    ei                                            ; $4fd5: $fb
    rlca                                          ; $4fd6: $07
    nop                                           ; $4fd7: $00
    rst $30                                       ; $4fd8: $f7

jr_0a1_4fd9:
    inc c                                         ; $4fd9: $0c
    ei                                            ; $4fda: $fb
    inc c                                         ; $4fdb: $0c
    rst $30                                       ; $4fdc: $f7
    inc c                                         ; $4fdd: $0c
    jp hl                                         ; $4fde: $e9


    ld e, $06                                     ; $4fdf: $1e $06
    and [hl]                                      ; $4fe1: $a6
    ld e, l                                       ; $4fe2: $5d
    ld e, c                                       ; $4fe3: $59
    cp [hl]                                       ; $4fe4: $be
    ld [hl], a                                    ; $4fe5: $77
    jr nz, jr_0a1_4ff0                            ; $4fe6: $20 $08

    sbc h                                         ; $4fe8: $9c
    ld h, $ef                                     ; $4fe9: $26 $ef
    nop                                           ; $4feb: $00
    db $10                                        ; $4fec: $10
    and a                                         ; $4fed: $a7
    ld e, b                                       ; $4fee: $58
    rst $08                                       ; $4fef: $cf

jr_0a1_4ff0:
    jr nc, jr_0a1_4fd9                            ; $4ff0: $30 $e7

    jr @+$01                                      ; $4ff2: $18 $ff

    rst $00                                       ; $4ff4: $c7
    db $ec                                        ; $4ff5: $ec
    rlca                                          ; $4ff6: $07
    inc b                                         ; $4ff7: $04
    jr @+$01                                      ; $4ff8: $18 $ff

    rra                                           ; $4ffa: $1f
    cp a                                          ; $4ffb: $bf
    ld a, [bc]                                    ; $4ffc: $0a
    rlca                                          ; $4ffd: $07
    inc h                                         ; $4ffe: $24
    add hl, bc                                    ; $4fff: $09
    inc b                                         ; $5000: $04
    jr jr_0a1_504f                                ; $5001: $18 $4c

    or a                                          ; $5003: $b7
    jr c, jr_0a1_5007                             ; $5004: $38 $01

    or l                                          ; $5006: $b5

jr_0a1_5007:
    cp d                                          ; $5007: $ba

Call_0a1_5008:
    inc h                                         ; $5008: $24
    add hl, bc                                    ; $5009: $09
    inc b                                         ; $500a: $04
    db $10                                        ; $500b: $10
    ld c, l                                       ; $500c: $4d
    rst $28                                       ; $500d: $ef
    nop                                           ; $500e: $00
    ld sp, hl                                     ; $500f: $f9
    dec sp                                        ; $5010: $3b
    db $fd                                        ; $5011: $fd
    ld c, l                                       ; $5012: $4d
    cp a                                          ; $5013: $bf
    ld d, l                                       ; $5014: $55
    xor d                                         ; $5015: $aa
    xor [hl]                                      ; $5016: $ae
    nop                                           ; $5017: $00
    ld d, c                                       ; $5018: $51
    db $fd                                        ; $5019: $fd
    ld [bc], a                                    ; $501a: $02
    ld [$0515], a                                 ; $501b: $ea $15 $05
    ld a, [$00af]                                 ; $501e: $fa $af $00
    ld d, d                                       ; $5021: $52
    db $dd                                        ; $5022: $dd
    ld [hl+], a                                   ; $5023: $22
    rst $38                                       ; $5024: $ff
    ld [hl+], a                                   ; $5025: $22
    ld e, a                                       ; $5026: $5f
    cp a                                          ; $5027: $bf
    cp a                                          ; $5028: $bf
    inc d                                         ; $5029: $14
    ld e, a                                       ; $502a: $5f
    ld e, a                                       ; $502b: $5f
    cp a                                          ; $502c: $bf
    ld d, b                                       ; $502d: $50
    dec bc                                        ; $502e: $0b
    cp a                                          ; $502f: $bf
    scf                                           ; $5030: $37
    rlca                                          ; $5031: $07
    rst $18                                       ; $5032: $df
    ccf                                           ; $5033: $3f
    nop                                           ; $5034: $00
    jp $e0fc                                      ; $5035: $c3 $fc $e0


    rst $38                                       ; $5038: $ff
    rst $00                                       ; $5039: $c7
    rst $38                                       ; $503a: $ff
    cp b                                          ; $503b: $b8
    cp a                                          ; $503c: $bf
    nop                                           ; $503d: $00
    ldh [rIE], a                                  ; $503e: $e0 $ff
    ret nc                                        ; $5040: $d0

    rst $38                                       ; $5041: $ff
    xor d                                         ; $5042: $aa
    cp a                                          ; $5043: $bf
    rst $38                                       ; $5044: $ff
    rst $38                                       ; $5045: $ff
    nop                                           ; $5046: $00

jr_0a1_5047:
    di                                            ; $5047: $f3
    rrca                                          ; $5048: $0f
    add hl, bc                                    ; $5049: $09
    rst $30                                       ; $504a: $f7
    push hl                                       ; $504b: $e5
    ei                                            ; $504c: $fb
    add hl, de                                    ; $504d: $19
    rst $38                                       ; $504e: $ff

jr_0a1_504f:
    ld d, b                                       ; $504f: $50
    dec b                                         ; $5050: $05
    ld hl, sp+$06                                 ; $5051: $f8 $06
    ld bc, $07d0                                  ; $5053: $01 $d0 $07
    db $dd                                        ; $5056: $dd
    ld [hl+], a                                   ; $5057: $22
    cp [hl]                                       ; $5058: $be
    ld h, e                                       ; $5059: $63
    add e                                         ; $505a: $83
    inc b                                         ; $505b: $04
    ld [$73cd], sp                                ; $505c: $08 $cd $73
    ld h, $fb                                     ; $505f: $26 $fb
    ld [hl], l                                    ; $5061: $75
    or b                                          ; $5062: $b0
    ld [$0034], sp                                ; $5063: $08 $34 $00
    jr nz, jr_0a1_5047                            ; $5066: $20 $df

    ccf                                           ; $5068: $3f
    ld a, [hl-]                                   ; $5069: $3a
    ld [$bf5f], sp                                ; $506a: $08 $5f $bf
    ld a, a                                       ; $506d: $7f
    rst $38                                       ; $506e: $ff
    ld c, $80                                     ; $506f: $0e $80
    ld a, [c]                                     ; $5071: $f2
    rlca                                          ; $5072: $07
    adc a                                         ; $5073: $8f
    or b                                          ; $5074: $b0
    sub l                                         ; $5075: $95
    xor d                                         ; $5076: $aa
    push de                                       ; $5077: $d5
    rst $38                                       ; $5078: $ff
    add b                                         ; $5079: $80
    sub b                                         ; $507a: $90
    cp [hl]                                       ; $507b: $be
    nop                                           ; $507c: $00
    xor d                                         ; $507d: $aa
    xor a                                         ; $507e: $af
    jp $fb0f                                      ; $507f: $c3 $0f $fb


    dec b                                         ; $5082: $05
    ld d, c                                       ; $5083: $51
    xor a                                         ; $5084: $af
    ld b, l                                       ; $5085: $45
    ld d, a                                       ; $5086: $57
    ld a, [hl]                                    ; $5087: $7e
    rlca                                          ; $5088: $07
    ld d, a                                       ; $5089: $57
    db $fd                                        ; $508a: $fd
    xor e                                         ; $508b: $ab
    xor [hl]                                      ; $508c: $ae
    inc b                                         ; $508d: $04
    db $fd                                        ; $508e: $fd
    ld [hl], b                                    ; $508f: $70
    inc bc                                        ; $5090: $03
    cp l                                          ; $5091: $bd
    inc b                                         ; $5092: $04
    ld a, b                                       ; $5093: $78
    cp $04                                        ; $5094: $fe $04
    or b                                          ; $5096: $b0
    ld a, [hl-]                                   ; $5097: $3a
    dec c                                         ; $5098: $0d
    inc b                                         ; $5099: $04
    jr c, @+$01                                   ; $509a: $38 $ff

    ld [$3061], sp                                ; $509c: $08 $61 $30
    inc b                                         ; $509f: $04
    sub b                                         ; $50a0: $90
    jr nc, jr_0a1_50b1                            ; $50a1: $30 $0e

    ld b, [hl]                                    ; $50a3: $46
    cp l                                          ; $50a4: $bd
    ld h, b                                       ; $50a5: $60
    ld [bc], a                                    ; $50a6: $02
    ld a, e                                       ; $50a7: $7b
    nop                                           ; $50a8: $00
    rst $38                                       ; $50a9: $ff
    ld l, d                                       ; $50aa: $6a
    ld a, [bc]                                    ; $50ab: $0a
    push de                                       ; $50ac: $d5
    nop                                           ; $50ad: $00
    rst $38                                       ; $50ae: $ff
    jr jr_0a1_50c1                                ; $50af: $18 $10

jr_0a1_50b1:
    ld b, $16                                     ; $50b1: $06 $16
    ld b, b                                       ; $50b3: $40
    inc b                                         ; $50b4: $04
    and a                                         ; $50b5: $a7
    ld a, [hl+]                                   ; $50b6: $2a
    ld e, c                                       ; $50b7: $59
    ld [hl], b                                    ; $50b8: $70
    jr @+$15                                      ; $50b9: $18 $13

    ld hl, sp+$1a                                 ; $50bb: $f8 $1a
    inc bc                                        ; $50bd: $03
    add sp, $24                                   ; $50be: $e8 $24
    inc bc                                        ; $50c0: $03

jr_0a1_50c1:
    ld [hl], b                                    ; $50c1: $70
    ld d, l                                       ; $50c2: $55
    ld hl, sp-$38                                 ; $50c3: $f8 $c8
    inc l                                         ; $50c5: $2c
    add b                                         ; $50c6: $80
    ld bc, $c020                                  ; $50c7: $01 $20 $c0
    ld bc, $e010                                  ; $50ca: $01 $10 $e0
    ld bc, $6b10                                  ; $50cd: $01 $10 $6b
    ldh a, [rSB]                                  ; $50d0: $f0 $01
    db $10                                        ; $50d2: $10
    ld sp, hl                                     ; $50d3: $f9
    add hl, de                                    ; $50d4: $19
    db $fc                                        ; $50d5: $fc
    ld bc, $fe10                                  ; $50d6: $01 $10 $fe
    ld bc, $3200                                  ; $50d9: $01 $00 $32
    ccf                                           ; $50dc: $3f
    cp b                                          ; $50dd: $b8
    call c, Call_0a1_7817                         ; $50de: $dc $17 $78
    ld c, b                                       ; $50e1: $48
    jr jr_0a1_50ec                                ; $50e2: $18 $08

    ld [$0b70], sp                                ; $50e4: $08 $70 $0b
    cp b                                          ; $50e7: $b8
    ret z                                         ; $50e8: $c8

    ld h, b                                       ; $50e9: $60
    cp c                                          ; $50ea: $b9
    ld h, b                                       ; $50eb: $60

jr_0a1_50ec:
    ld b, b                                       ; $50ec: $40
    ld hl, sp-$70                                 ; $50ed: $f8 $90
    ld b, $90                                     ; $50ef: $06 $90
    db $10                                        ; $50f1: $10
    ret nz                                        ; $50f2: $c0

    inc bc                                        ; $50f3: $03
    rlca                                          ; $50f4: $07
    ld a, l                                       ; $50f5: $7d
    ldh a, [rSC]                                  ; $50f6: $f0 $02
    jr nz, jr_0a1_5171                            ; $50f8: $20 $77

    ld a, [$63a0]                                 ; $50fa: $fa $a0 $63
    rst $08                                       ; $50fd: $cf
    ldh a, [$95]                                  ; $50fe: $f0 $95
    ld [$c080], a                                 ; $5100: $ea $80 $c0
    ld c, d                                       ; $5103: $4a
    ld bc, $0804                                  ; $5104: $01 $04 $08
    push de                                       ; $5107: $d5
    rst $10                                       ; $5108: $d7
    rst $38                                       ; $5109: $ff
    rst $38                                       ; $510a: $ff
    or $0d                                        ; $510b: $f6 $0d
    ld [$ad56], sp                                ; $510d: $08 $56 $ad
    dec b                                         ; $5110: $05
    cp $ea                                        ; $5111: $fe $ea
    add hl, bc                                    ; $5113: $09
    xor d                                         ; $5114: $aa
    rst $38                                       ; $5115: $ff
    ld d, l                                       ; $5116: $55
    add e                                         ; $5117: $83
    call $ef07                                    ; $5118: $cd $07 $ef
    or b                                          ; $511b: $b0
    ld [$a0b5], a                                 ; $511c: $ea $b5 $a0
    ld a, [bc]                                    ; $511f: $0a
    dec b                                         ; $5120: $05
    db $10                                        ; $5121: $10
    jr z, jr_0a1_5125                             ; $5122: $28 $01

    di                                            ; $5124: $f3

jr_0a1_5125:
    rrca                                          ; $5125: $0f
    xor c                                         ; $5126: $a9
    ld d, a                                       ; $5127: $57
    ld bc, $abff                                  ; $5128: $01 $ff $ab
    ld l, h                                       ; $512b: $6c
    ld bc, $ab03                                  ; $512c: $01 $03 $ab
    rst $38                                       ; $512f: $ff
    ld d, l                                       ; $5130: $55
    push de                                       ; $5131: $d5
    rst $38                                       ; $5132: $ff
    rst $38                                       ; $5133: $ff
    ld e, [hl]                                    ; $5134: $5e
    add hl, bc                                    ; $5135: $09
    ld h, d                                       ; $5136: $62
    ld bc, $bf62                                  ; $5137: $01 $62 $bf
    and h                                         ; $513a: $a4
    ld bc, $07c2                                  ; $513b: $01 $c2 $07
    ld c, $ff                                     ; $513e: $0e $ff
    ld [$0716], sp                                ; $5140: $08 $16 $07
    nop                                           ; $5143: $00
    ld b, d                                       ; $5144: $42
    rlca                                          ; $5145: $07
    inc b                                         ; $5146: $04
    jr z, jr_0a1_5149                             ; $5147: $28 $00

jr_0a1_5149:
    inc bc                                        ; $5149: $03
    ld [bc], a                                    ; $514a: $02
    inc bc                                        ; $514b: $03
    inc b                                         ; $514c: $04
    jr jr_0a1_514f                                ; $514d: $18 $00

jr_0a1_514f:
    ld [hl], d                                    ; $514f: $72
    ld bc, $0700                                  ; $5150: $01 $00 $07
    inc b                                         ; $5153: $04
    ld [$1750], sp                                ; $5154: $08 $50 $17
    dec de                                        ; $5157: $1b
    db $f4                                        ; $5158: $f4
    jr nz, jr_0a1_5174                            ; $5159: $20 $19

    add a                                         ; $515b: $87

jr_0a1_515c:
    ld d, d                                       ; $515c: $52
    ld a, c                                       ; $515d: $79
    ld h, b                                       ; $515e: $60
    ccf                                           ; $515f: $3f
    ld d, $30                                     ; $5160: $16 $30
    rlca                                          ; $5162: $07
    sub a                                         ; $5163: $97
    ld l, c                                       ; $5164: $69
    ld b, b                                       ; $5165: $40
    rra                                           ; $5166: $1f
    ld a, c                                       ; $5167: $79
    or d                                          ; $5168: $b2
    ld [hl], b                                    ; $5169: $70
    dec h                                         ; $516a: $25
    add l                                         ; $516b: $85
    ld b, b                                       ; $516c: $40
    ld bc, $0bb0                                  ; $516d: $01 $b0 $0b
    ld e, e                                       ; $5170: $5b

jr_0a1_5171:
    or h                                          ; $5171: $b4
    or b                                          ; $5172: $b0
    inc hl                                        ; $5173: $23

jr_0a1_5174:
    ld e, a                                       ; $5174: $5f
    ld hl, sp+$10                                 ; $5175: $f8 $10
    dec de                                        ; $5177: $1b
    or $07                                        ; $5178: $f6 $07
    inc d                                         ; $517a: $14
    ld hl, $6912                                  ; $517b: $21 $12 $69
    ldh [$2a], a                                  ; $517e: $e0 $2a

jr_0a1_5180:
    call nc, $ffeb                                ; $5180: $d4 $eb $ff
    nop                                           ; $5183: $00
    add h                                         ; $5184: $84
    ei                                            ; $5185: $fb
    call nz, $c6fd                                ; $5186: $c4 $fd $c6
    di                                            ; $5189: $f3
    xor $f5                                       ; $518a: $ee $f5
    cpl                                           ; $518c: $2f
    cp $f7                                        ; $518d: $fe $f7
    ld e, d                                       ; $518f: $5a
    rlca                                          ; $5190: $07
    ld a, [$0548]                                 ; $5191: $fa $48 $05
    and $0e                                       ; $5194: $e6 $0e
    ld l, d                                       ; $5196: $6a
    add hl, de                                    ; $5197: $19
    ld h, d                                       ; $5198: $62
    add hl, de                                    ; $5199: $19
    ret                                           ; $519a: $c9


    ld e, h                                       ; $519b: $5c
    add hl, bc                                    ; $519c: $09
    ld h, b                                       ; $519d: $60
    ld e, $18                                     ; $519e: $1e $18
    or $e0                                        ; $51a0: $f6 $e0
    rra                                           ; $51a2: $1f
    sub l                                         ; $51a3: $95
    ld l, e                                       ; $51a4: $6b
    ld h, [hl]                                    ; $51a5: $66
    add hl, de                                    ; $51a6: $19
    rst $38                                       ; $51a7: $ff
    ld h, h                                       ; $51a8: $64
    add hl, sp                                    ; $51a9: $39
    and b                                         ; $51aa: $a0
    add hl, sp                                    ; $51ab: $39
    sbc b                                         ; $51ac: $98
    add hl, de                                    ; $51ad: $19
    sub b                                         ; $51ae: $90
    add hl, bc                                    ; $51af: $09
    adc b                                         ; $51b0: $88

jr_0a1_51b1:
    ld c, c                                       ; $51b1: $49
    ldh a, [rSB]                                  ; $51b2: $f0 $01
    jr nz, jr_0a1_51db                            ; $51b4: $20 $25

    ldh [$09], a                                  ; $51b6: $e0 $09
    dec sp                                        ; $51b8: $3b
    and c                                         ; $51b9: $a1
    ld e, a                                       ; $51ba: $5f
    ld e, d                                       ; $51bb: $5a
    ld a, $34                                     ; $51bc: $3e $34
    jr jr_0a1_5180                                ; $51be: $18 $c0

    ld e, $da                                     ; $51c0: $1e $da
    db $10                                        ; $51c2: $10
    ld [hl-], a                                   ; $51c3: $32
    ld b, d                                       ; $51c4: $42
    jr c, jr_0a1_515c                             ; $51c5: $38 $95

    ld b, b                                       ; $51c7: $40
    jr z, @+$7a                                   ; $51c8: $28 $78

    rst $18                                       ; $51ca: $df
    ldh [rTMA], a                                 ; $51cb: $e0 $06
    ld [hl], l                                    ; $51cd: $75
    sub b                                         ; $51ce: $90
    inc b                                         ; $51cf: $04
    db $fd                                        ; $51d0: $fd
    ldh [$0e], a                                  ; $51d1: $e0 $0e
    rst $38                                       ; $51d3: $ff
    or $09                                        ; $51d4: $f6 $09
    add d                                         ; $51d6: $82
    ld c, b                                       ; $51d7: $48
    ld c, [hl]                                    ; $51d8: $4e
    ld e, b                                       ; $51d9: $58
    inc a                                         ; $51da: $3c

jr_0a1_51db:
    ld e, b                                       ; $51db: $58
    and b                                         ; $51dc: $a0
    jr c, jr_0a1_51b1                             ; $51dd: $38 $d2

    jr @+$28                                      ; $51df: $18 $26

    ld a, [bc]                                    ; $51e1: $0a
    ld c, d                                       ; $51e2: $4a
    ld a, [bc]                                    ; $51e3: $0a

jr_0a1_51e4:
    and $44                                       ; $51e4: $e6 $44
    jr jr_0a1_5228                                ; $51e6: $18 $40

    ld l, b                                       ; $51e8: $68
    ld a, [de]                                    ; $51e9: $1a
    jr jr_0a1_51e4                                ; $51ea: $18 $f8

    ld hl, sp+$42                                 ; $51ec: $f8 $42
    ld e, d                                       ; $51ee: $5a
    jr @+$6a                                      ; $51ef: $18 $68

    ld hl, sp-$34                                 ; $51f1: $f8 $cc
    cp [hl]                                       ; $51f3: $be
    dec b                                         ; $51f4: $05
    jr nz, jr_0a1_525f                            ; $51f5: $20 $68

    ret nz                                        ; $51f7: $c0

    ret nz                                        ; $51f8: $c0

    ld d, $38                                     ; $51f9: $16 $38
    ld a, [hl-]                                   ; $51fb: $3a
    ccf                                           ; $51fc: $3f
    ldh [$e0], a                                  ; $51fd: $e0 $e0
    db $fd                                        ; $51ff: $fd
    ld h, h                                       ; $5200: $64
    ld [$48f0], sp                                ; $5201: $08 $f0 $48
    ld a, [hl+]                                   ; $5204: $2a
    ld [$3fb0], sp                                ; $5205: $08 $b0 $3f
    jr nc, jr_0a1_5218                            ; $5208: $30 $0e

    ldh [$09], a                                  ; $520a: $e0 $09
    ld h, b                                       ; $520c: $60
    sub b                                         ; $520d: $90
    dec b                                         ; $520e: $05
    ld h, b                                       ; $520f: $60
    jr jr_0a1_5282                                ; $5210: $18 $70

    dec b                                         ; $5212: $05
    db $10                                        ; $5213: $10
    dec bc                                        ; $5214: $0b
    add l                                         ; $5215: $85
    ld a, e                                       ; $5216: $7b
    rst $38                                       ; $5217: $ff

jr_0a1_5218:
    rst $38                                       ; $5218: $ff
    add c                                         ; $5219: $81
    ld bc, $d7ff                                  ; $521a: $01 $ff $d7
    xor e                                         ; $521d: $ab
    add c                                         ; $521e: $81
    rst $38                                       ; $521f: $ff
    jp Jump_000_04bf                              ; $5220: $c3 $bf $04


    sbc b                                         ; $5223: $98
    or c                                          ; $5224: $b1
    ret c                                         ; $5225: $d8

    rra                                           ; $5226: $1f
    inc bc                                        ; $5227: $03

jr_0a1_5228:
    ld bc, $6030                                  ; $5228: $01 $30 $60
    ld e, b                                       ; $522b: $58
    ld bc, $0301                                  ; $522c: $01 $01 $03
    ld d, d                                       ; $522f: $52
    ld [bc], a                                    ; $5230: $02
    add b                                         ; $5231: $80
    ld e, $18                                     ; $5232: $1e $18
    inc de                                        ; $5234: $13
    inc de                                        ; $5235: $13
    ld l, d                                       ; $5236: $6a
    ld a, e                                       ; $5237: $7b
    adc e                                         ; $5238: $8b
    ld a, [$8002]                                 ; $5239: $fa $02 $80
    ld h, d                                       ; $523c: $62
    ld [bc], a                                    ; $523d: $02
    ld e, $1f                                     ; $523e: $1e $1f
    ld hl, $213f                                  ; $5240: $21 $3f $21
    ccf                                           ; $5243: $3f
    ld h, $00                                     ; $5244: $26 $00
    ccf                                           ; $5246: $3f
    ld e, b                                       ; $5247: $58
    ld l, a                                       ; $5248: $6f
    ld a, a                                       ; $5249: $7f
    ld a, h                                       ; $524a: $7c
    rlca                                          ; $524b: $07
    rst $38                                       ; $524c: $ff
    rlca                                          ; $524d: $07
    nop                                           ; $524e: $00
    rst $38                                       ; $524f: $ff
    dec c                                         ; $5250: $0d

jr_0a1_5251:
    rst $38                                       ; $5251: $ff
    di                                            ; $5252: $f3
    db $fd                                        ; $5253: $fd
    add e                                         ; $5254: $83
    rst $38                                       ; $5255: $ff
    rlca                                          ; $5256: $07
    ld bc, $07fb                                  ; $5257: $01 $fb $07
    rst $38                                       ; $525a: $ff

jr_0a1_525b:
    rrca                                          ; $525b: $0f
    rst $30                                       ; $525c: $f7
    ld a, a                                       ; $525d: $7f
    ld a, a                                       ; $525e: $7f

jr_0a1_525f:
    ld b, h                                       ; $525f: $44
    ld e, b                                       ; $5260: $58
    nop                                           ; $5261: $00
    rst $08                                       ; $5262: $cf
    ccf                                           ; $5263: $3f
    ei                                            ; $5264: $fb
    set 7, e                                      ; $5265: $cb $fb
    ei                                            ; $5267: $fb
    inc sp                                        ; $5268: $33
    inc sp                                        ; $5269: $33
    add d                                         ; $526a: $82
    ld h, b                                       ; $526b: $60
    ld a, b                                       ; $526c: $78
    inc bc                                        ; $526d: $03
    inc bc                                        ; $526e: $03
    inc e                                         ; $526f: $1c
    rra                                           ; $5270: $1f
    ldh [rSVBK], a                                ; $5271: $e0 $70
    ld b, c                                       ; $5273: $41
    ret nz                                        ; $5274: $c0

    nop                                           ; $5275: $00
    ret nz                                        ; $5276: $c0

    jr nz, @-$1e                                  ; $5277: $20 $e0

    jr nz, jr_0a1_525b                            ; $5279: $20 $e0

    nop                                           ; $527b: $00

jr_0a1_527c:
    rst $38                                       ; $527c: $ff
    dec hl                                        ; $527d: $2b
    ld b, b                                       ; $527e: $40
    call nc, $3908                                ; $527f: $d4 $08 $39

jr_0a1_5282:
    jr c, jr_0a1_527c                             ; $5282: $38 $f8

    jr nz, @-$1e                                  ; $5284: $20 $e0

    ret nc                                        ; $5286: $d0

    jr nc, jr_0a1_5251                            ; $5287: $30 $c8

    sbc b                                         ; $5289: $98
    dec bc                                        ; $528a: $0b
    jr jr_0a1_52c3                                ; $528b: $18 $36

    rst $38                                       ; $528d: $ff
    add b                                         ; $528e: $80
    ld l, c                                       ; $528f: $69
    dec b                                         ; $5290: $05
    jp $cfbc                                      ; $5291: $c3 $bc $cf


    inc bc                                        ; $5294: $03
    di                                            ; $5295: $f3
    ld a, a                                       ; $5296: $7f
    ld c, a                                       ; $5297: $4f
    db $fd                                        ; $5298: $fd
    rst $38                                       ; $5299: $ff
    or c                                          ; $529a: $b1
    ld h, b                                       ; $529b: $60
    ld [bc], a                                    ; $529c: $02
    cp [hl]                                       ; $529d: $be
    inc bc                                        ; $529e: $03
    jr jr_0a1_52c1                                ; $529f: $18 $20

    ldh [$e0], a                                  ; $52a1: $e0 $e0
    ld a, [$3801]                                 ; $52a3: $fa $01 $38
    ld e, $fb                                     ; $52a6: $1e $fb
    ld c, $f6                                     ; $52a8: $0e $f6
    nop                                           ; $52aa: $00
    inc a                                         ; $52ab: $3c
    call c, $b878                                 ; $52ac: $dc $78 $b8
    ld h, c                                       ; $52af: $61
    pop hl                                        ; $52b0: $e1
    adc $cf                                       ; $52b1: $ce $cf
    inc sp                                        ; $52b3: $33
    ldh a, [rIE]                                  ; $52b4: $f0 $ff
    sub e                                         ; $52b6: $93
    dec b                                         ; $52b7: $05
    ld b, b                                       ; $52b8: $40
    ld [hl], $10                                  ; $52b9: $36 $10
    ldh a, [rSC]                                  ; $52bb: $f0 $02
    ld [$0310], sp                                ; $52bd: $08 $10 $03
    and h                                         ; $52c0: $a4

jr_0a1_52c1:
    ld h, b                                       ; $52c1: $60
    daa                                           ; $52c2: $27

jr_0a1_52c3:
    rlca                                          ; $52c3: $07
    sub b                                         ; $52c4: $90
    ld c, $6f                                     ; $52c5: $0e $6f
    jp Jump_000_038a                              ; $52c7: $c3 $8a $03


    jp nz, Jump_000_19bd                          ; $52ca: $c2 $bd $19

    add b                                         ; $52cd: $80
    rst $38                                       ; $52ce: $ff
    ret nz                                        ; $52cf: $c0

    sub d                                         ; $52d0: $92
    dec bc                                        ; $52d1: $0b
    nop                                           ; $52d2: $00
    ld d, d                                       ; $52d3: $52
    ld bc, $ec01                                  ; $52d4: $01 $01 $ec
    ld [$fce6], sp                                ; $52d7: $08 $e6 $fc
    ld c, b                                       ; $52da: $48
    db $ec                                        ; $52db: $ec
    ld [$0d71], sp                                ; $52dc: $08 $71 $0d
    xor d                                         ; $52df: $aa
    ld d, l                                       ; $52e0: $55
    push af                                       ; $52e1: $f5
    dec e                                         ; $52e2: $1d
    jr nc, @+$0a                                  ; $52e3: $30 $08

    dec d                                         ; $52e5: $15
    ld [hl], e                                    ; $52e6: $73
    ld [$1ab6], a                                 ; $52e7: $ea $b6 $1a
    xor h                                         ; $52ea: $ac
    ld [$089c], sp                                ; $52eb: $08 $9c $08
    add sp, $18                                   ; $52ee: $e8 $18
    ld b, $14                                     ; $52f0: $06 $14
    and b                                         ; $52f2: $a0
    ld sp, $c301                                  ; $52f3: $31 $01 $c3
    cp a                                          ; $52f6: $bf
    ld bc, $83ff                                  ; $52f7: $01 $ff $83
    ld a, a                                       ; $52fa: $7f
    ld bc, $152e                                  ; $52fb: $01 $2e $15
    ld b, b                                       ; $52fe: $40
    xor e                                         ; $52ff: $ab
    jr nc, jr_0a1_5307                            ; $5300: $30 $05

    or b                                          ; $5302: $b0
    jr jr_0a1_5367                                ; $5303: $18 $62

    rrca                                          ; $5305: $0f
    ld b, l                                       ; $5306: $45

jr_0a1_5307:
    rst $38                                       ; $5307: $ff
    ld bc, $fec0                                  ; $5308: $01 $c0 $fe
    cp $fc                                        ; $530b: $fe $fc
    db $10                                        ; $530d: $10
    ld l, b                                       ; $530e: $68
    db $fd                                        ; $530f: $fd
    ld e, $40                                     ; $5310: $1e $40
    nop                                           ; $5312: $00
    rst $38                                       ; $5313: $ff
    db $fc                                        ; $5314: $fc
    rst $38                                       ; $5315: $ff
    di                                            ; $5316: $f3
    db $f4                                        ; $5317: $f4
    ld sp, hl                                     ; $5318: $f9
    cp $f2                                        ; $5319: $fe $f2
    nop                                           ; $531b: $00
    db $fd                                        ; $531c: $fd
    push bc                                       ; $531d: $c5
    jp c, $b48b                                   ; $531e: $da $8b $b4

    scf                                           ; $5321: $37
    ret z                                         ; $5322: $c8

    ld e, [hl]                                    ; $5323: $5e
    inc b                                         ; $5324: $04
    and c                                         ; $5325: $a1
    add hl, sp                                    ; $5326: $39
    rst $00                                       ; $5327: $c7
    ld [hl], d                                    ; $5328: $72
    adc [hl]                                      ; $5329: $8e
    ld e, $48                                     ; $532a: $1e $48
    ld hl, sp-$01                                 ; $532c: $f8 $ff
    nop                                           ; $532e: $00
    pop af                                        ; $532f: $f1
    cp $e5                                        ; $5330: $fe $e5
    ld [$ecd3], a                                 ; $5332: $ea $d3 $ec
    sbc a                                         ; $5335: $9f
    ldh [rP1], a                                  ; $5336: $e0 $00
    cpl                                           ; $5338: $2f
    ret nc                                        ; $5339: $d0

    rst $18                                       ; $533a: $df
    jr nz, @+$71                                  ; $533b: $20 $6f

    sub b                                         ; $533d: $90
    rst $38                                       ; $533e: $ff
    nop                                           ; $533f: $00
    nop                                           ; $5340: $00
    ld a, a                                       ; $5341: $7f
    add b                                         ; $5342: $80
    push hl                                       ; $5343: $e5
    inc e                                         ; $5344: $1c
    adc a                                         ; $5345: $8f
    ld a, b                                       ; $5346: $78
    ccf                                           ; $5347: $3f
    ldh a, [rP1]                                  ; $5348: $f0 $00
    ld e, h                                       ; $534a: $5c
    jp $c779                                      ; $534b: $c3 $79 $c7


    ld e, l                                       ; $534e: $5d
    add $7e                                       ; $534f: $c6 $7e
    pop bc                                        ; $5351: $c1
    jr nc, jr_0a1_53b1                            ; $5352: $30 $5d

    jp Jump_000_386c                              ; $5354: $c3 $6c $38


    ld d, b                                       ; $5357: $50
    ld [$fcfb], sp                                ; $5358: $08 $fb $fc
    ld [$00f5], a                                 ; $535b: $ea $f5 $00
    rst $10                                       ; $535e: $d7
    add sp, -$55                                  ; $535f: $e8 $ab

jr_0a1_5361:
    call nc, Call_0a1_403f                        ; $5361: $d4 $3f $40
    ld e, a                                       ; $5364: $5f
    and b                                         ; $5365: $a0
    ld [bc], a                                    ; $5366: $02

jr_0a1_5367:
    cpl                                           ; $5367: $2f
    ret nc                                        ; $5368: $d0

    ld a, a                                       ; $5369: $7f
    add b                                         ; $536a: $80
    rst $38                                       ; $536b: $ff
    nop                                           ; $536c: $00
    ld [bc], a                                    ; $536d: $02
    ld l, b                                       ; $536e: $68
    ld a, l                                       ; $536f: $7d
    nop                                           ; $5370: $00
    add $5f                                       ; $5371: $c6 $5f
    ret nz                                        ; $5373: $c0

    ld a, [hl]                                    ; $5374: $7e
    pop bc                                        ; $5375: $c1
    ld e, e                                       ; $5376: $5b
    add $7b                                       ; $5377: $c6 $7b
    nop                                           ; $5379: $00
    call nz, $c05f                                ; $537a: $c4 $5f $c0
    ld a, a                                       ; $537d: $7f
    ret nz                                        ; $537e: $c0

    ld e, [hl]                                    ; $537f: $5e
    ret nz                                        ; $5380: $c0

    push af                                       ; $5381: $f5
    nop                                           ; $5382: $00
    ld a, [$f4eb]                                 ; $5383: $fa $eb $f4
    rst $10                                       ; $5386: $d7
    ret z                                         ; $5387: $c8

    set 6, h                                      ; $5388: $cb $f4
    and a                                         ; $538a: $a7
    inc b                                         ; $538b: $04
    ret c                                         ; $538c: $d8

    ccf                                           ; $538d: $3f
    ret nz                                        ; $538e: $c0

    ld e, a                                       ; $538f: $5f
    and b                                         ; $5390: $a0
    ld h, d                                       ; $5391: $62
    nop                                           ; $5392: $00
    jp $015e                                      ; $5393: $c3 $5e $01


    rst $00                                       ; $5396: $c7
    ld l, l                                       ; $5397: $6d
    adc $5f                                       ; $5398: $ce $5f
    ret c                                         ; $539a: $d8

    rst $38                                       ; $539b: $ff
    ld [hl], b                                    ; $539c: $70
    inc a                                         ; $539d: $3c
    jr nz, jr_0a1_53a0                            ; $539e: $20 $00

jr_0a1_53a0:
    rst $38                                       ; $53a0: $ff
    add b                                         ; $53a1: $80
    rst $38                                       ; $53a2: $ff
    xor d                                         ; $53a3: $aa
    push de                                       ; $53a4: $d5

jr_0a1_53a5:
    add b                                         ; $53a5: $80
    rst $38                                       ; $53a6: $ff
    ret nz                                        ; $53a7: $c0

    ld d, b                                       ; $53a8: $50
    cp a                                          ; $53a9: $bf
    inc b                                         ; $53aa: $04
    ld [$ef81], sp                                ; $53ab: $08 $81 $ef
    nop                                           ; $53ae: $00
    nop                                           ; $53af: $00
    rst $38                                       ; $53b0: $ff

jr_0a1_53b1:
    xor d                                         ; $53b1: $aa
    ld d, l                                       ; $53b2: $55
    xor h                                         ; $53b3: $ac
    ld d, a                                       ; $53b4: $57
    jr jr_0a1_5361                                ; $53b5: $18 $aa

    db $fd                                        ; $53b7: $fd
    nop                                           ; $53b8: $00
    jp Jump_000_0014                              ; $53b9: $c3 $14 $00


    inc b                                         ; $53bc: $04
    ld c, b                                       ; $53bd: $48
    add b                                         ; $53be: $80
    push de                                       ; $53bf: $d5
    nop                                           ; $53c0: $00
    ld [hl+], a                                   ; $53c1: $22
    db $dd                                        ; $53c2: $dd
    sub $a9                                       ; $53c3: $d6 $a9
    dec l                                         ; $53c5: $2d
    jp nc, $c1be                                  ; $53c6: $d2 $be $c1

    ld bc, $cb34                                  ; $53c9: $01 $34 $cb
    xor l                                         ; $53cc: $ad
    jp nc, $c03f                                  ; $53cd: $d2 $3f $c0

    nop                                           ; $53d0: $00
    inc l                                         ; $53d1: $2c
    nop                                           ; $53d2: $00
    nop                                           ; $53d3: $00
    dec b                                         ; $53d4: $05
    ld a, [$a55a]                                 ; $53d5: $fa $5a $a5
    or [hl]                                       ; $53d8: $b6
    ld c, c                                       ; $53d9: $49
    rst $28                                       ; $53da: $ef
    db $10                                        ; $53db: $10
    add h                                         ; $53dc: $84
    adc [hl]                                      ; $53dd: $8e
    ld [$e09f], sp                                ; $53de: $08 $9f $e0
    ccf                                           ; $53e1: $3f
    ret nz                                        ; $53e2: $c0

    inc b                                         ; $53e3: $04
    jr z, jr_0a1_53a5                             ; $53e4: $28 $bf

    ret nz                                        ; $53e6: $c0

    ld a, [bc]                                    ; $53e7: $0a
    ccf                                           ; $53e8: $3f

jr_0a1_53e9:
    ret nz                                        ; $53e9: $c0

    rst $38                                       ; $53ea: $ff
    ld bc, $6002                                  ; $53eb: $01 $02 $60
    add b                                         ; $53ee: $80

jr_0a1_53ef:
    ld [bc], a                                    ; $53ef: $02

jr_0a1_53f0:
    jr jr_0a1_53f0                                ; $53f0: $18 $fe

    inc bc                                        ; $53f2: $03
    add c                                         ; $53f3: $81
    rst $30                                       ; $53f4: $f7
    adc a                                         ; $53f5: $8f
    cp b                                          ; $53f6: $b8
    rst $38                                       ; $53f7: $ff
    ret nz                                        ; $53f8: $c0

    ld l, a                                       ; $53f9: $6f
    ld [$10c4], sp                                ; $53fa: $08 $c4 $10
    inc de                                        ; $53fd: $13
    rst $30                                       ; $53fe: $f7
    ld hl, sp+$0f                                 ; $53ff: $f8 $0f
    ld [bc], a                                    ; $5401: $02
    nop                                           ; $5402: $00
    dec bc                                        ; $5403: $0b
    db $fc                                        ; $5404: $fc
    inc [hl]                                      ; $5405: $34
    ld [$0838], sp                                ; $5406: $08 $38 $08
    ldh [rOBP0], a                                ; $5409: $e0 $48
    jr z, jr_0a1_53ef                             ; $540b: $28 $e2

    ld d, b                                       ; $540d: $50
    ld c, h                                       ; $540e: $4c
    nop                                           ; $540f: $00
    cp a                                          ; $5410: $bf
    ret nz                                        ; $5411: $c0

    rra                                           ; $5412: $1f
    ldh [$ae], a                                  ; $5413: $e0 $ae
    nop                                           ; $5415: $00
    pop de                                        ; $5416: $d1
    ld a, [hl-]                                   ; $5417: $3a
    push bc                                       ; $5418: $c5
    or l                                          ; $5419: $b5
    jp z, $e01f                                   ; $541a: $ca $1f $e0

    or l                                          ; $541d: $b5
    nop                                           ; $541e: $00
    jp z, $c53a                                   ; $541f: $ca $3a $c5

    rst $38                                       ; $5422: $ff
    nop                                           ; $5423: $00
    ld a, e                                       ; $5424: $7b
    add h                                         ; $5425: $84
    rst $10                                       ; $5426: $d7
    nop                                           ; $5427: $00
    jr z, jr_0a1_53e9                             ; $5428: $28 $bf

    ld b, b                                       ; $542a: $40
    rst $30                                       ; $542b: $f7
    ld [$51ae], sp                                ; $542c: $08 $ae $51
    push de                                       ; $542f: $d5
    nop                                           ; $5430: $00
    ld a, [hl+]                                   ; $5431: $2a
    xor d                                         ; $5432: $aa
    ld d, l                                       ; $5433: $55
    rst $28                                       ; $5434: $ef
    rra                                           ; $5435: $1f
    ld [hl], b                                    ; $5436: $70
    sbc a                                         ; $5437: $9f

jr_0a1_5438:
    ret nc                                        ; $5438: $d0

    nop                                           ; $5439: $00
    ccf                                           ; $543a: $3f
    sub e                                         ; $543b: $93
    ld a, a                                       ; $543c: $7f
    db $ec                                        ; $543d: $ec
    scf                                           ; $543e: $37
    cp l                                          ; $543f: $bd
    ld a, [hl]                                    ; $5440: $7e
    rst $38                                       ; $5441: $ff

jr_0a1_5442:
    nop                                           ; $5442: $00
    ccf                                           ; $5443: $3f
    xor c                                         ; $5444: $a9
    ld d, a                                       ; $5445: $57
    xor h                                         ; $5446: $ac
    db $d3                                        ; $5447: $d3
    ld a, [de]                                    ; $5448: $1a
    push hl                                       ; $5449: $e5
    or l                                          ; $544a: $b5
    nop                                           ; $544b: $00
    jp z, $dc23                                   ; $544c: $ca $23 $dc

    and h                                         ; $544f: $a4
    db $db                                        ; $5450: $db
    ld [$80f7], sp                                ; $5451: $08 $f7 $80
    nop                                           ; $5454: $00
    push de                                       ; $5455: $d5
    push de                                       ; $5456: $d5
    push de                                       ; $5457: $d5
    ld c, l                                       ; $5458: $4d
    or d                                          ; $5459: $b2
    sbc b                                         ; $545a: $98
    ld h, a                                       ; $545b: $67
    sub h                                         ; $545c: $94
    inc b                                         ; $545d: $04
    ld l, e                                       ; $545e: $6b
    jr z, jr_0a1_5438                             ; $545f: $28 $d7

    ld b, c                                       ; $5461: $41
    cp [hl]                                       ; $5462: $be
    dec sp                                        ; $5463: $3b
    ld bc, $5555                                  ; $5464: $01 $55 $55
    ld d, b                                       ; $5467: $50
    ld d, l                                       ; $5468: $55
    ldh [rOBP0], a                                ; $5469: $e0 $48
    add e                                         ; $546b: $83
    db $ed                                        ; $546c: $ed
    ld bc, $7be5                                  ; $546d: $01 $e5 $7b
    ei                                            ; $5470: $fb
    ld e, $00                                     ; $5471: $1e $00
    sub $2c                                       ; $5473: $d6 $2c
    xor h                                         ; $5475: $ac
    ld e, c                                       ; $5476: $59
    ld e, l                                       ; $5477: $5d
    ld [hl-], a                                   ; $5478: $32
    cp [hl]                                       ; $5479: $be
    ld h, b                                       ; $547a: $60
    nop                                           ; $547b: $00
    ld h, l                                       ; $547c: $65
    ret nc                                        ; $547d: $d0

    jp z, $b5a5                                   ; $547e: $ca $a5 $b5

    dec bc                                        ; $5481: $0b
    dec hl                                        ; $5482: $2b
    ld b, [hl]                                    ; $5483: $46
    nop                                           ; $5484: $00
    ld d, [hl]                                    ; $5485: $56
    adc l                                         ; $5486: $8d
    db $ed                                        ; $5487: $ed
    ld a, [de]                                    ; $5488: $1a
    ld e, e                                       ; $5489: $5b
    jr nc, jr_0a1_5442                            ; $548a: $30 $b6

    ld h, b                                       ; $548c: $60
    dec b                                         ; $548d: $05
    ld l, l                                       ; $548e: $6d
    ret nz                                        ; $548f: $c0

    sbc d                                         ; $5490: $9a
    push hl                                       ; $5491: $e5
    nop                                           ; $5492: $00
    ld bc, $0120                                  ; $5493: $01 $20 $01
    ld bc, $0800                                  ; $5496: $01 $00 $08
    rrca                                          ; $5499: $0f
    rrca                                          ; $549a: $0f
    db $10                                        ; $549b: $10
    rra                                           ; $549c: $1f
    ldh [rNR23], a                                ; $549d: $e0 $18
    db $eb                                        ; $549f: $eb
    dec e                                         ; $54a0: $1d
    or a                                          ; $54a1: $b7
    add hl, bc                                    ; $54a2: $09
    ld a, l                                       ; $54a3: $7d
    push bc                                       ; $54a4: $c5
    rst $38                                       ; $54a5: $ff
    inc bc                                        ; $54a6: $03
    ld [bc], a                                    ; $54a7: $02
    nop                                           ; $54a8: $00
    adc d                                         ; $54a9: $8a
    push af                                       ; $54aa: $f5
    ld [hl-], a                                   ; $54ab: $32
    ld a, [bc]                                    ; $54ac: $0a
    ld bc, $c0bf                                  ; $54ad: $01 $bf $c0
    ld l, a                                       ; $54b0: $6f
    ldh a, [$9d]                                  ; $54b1: $f0 $9d
    ld a, [hl]                                    ; $54b3: $7e
    add e                                         ; $54b4: $83
    ld d, [hl]                                    ; $54b5: $56
    ld bc, $f72c                                  ; $54b6: $01 $2c $f7
    inc c                                         ; $54b9: $0c
    rlca                                          ; $54ba: $07
    ld [bc], a                                    ; $54bb: $02
    db $fc                                        ; $54bc: $fc
    xor b                                         ; $54bd: $a8
    add hl, de                                    ; $54be: $19
    ld d, $08                                     ; $54bf: $16 $08
    ld b, $ff                                     ; $54c1: $06 $ff
    nop                                           ; $54c3: $00
    ld sp, hl                                     ; $54c4: $f9
    cp $c1                                        ; $54c5: $fe $c1
    rst $38                                       ; $54c7: $ff
    inc bc                                        ; $54c8: $03
    db $fd                                        ; $54c9: $fd
    inc bc                                        ; $54ca: $03
    rst $38                                       ; $54cb: $ff
    nop                                           ; $54cc: $00
    add a                                         ; $54cd: $87
    ld a, e                                       ; $54ce: $7b
    ld h, a                                       ; $54cf: $67
    sbc a                                         ; $54d0: $9f
    db $dd                                        ; $54d1: $dd
    rst $20                                       ; $54d2: $e7
    ret nz                                        ; $54d3: $c0

    rst $38                                       ; $54d4: $ff
    nop                                           ; $54d5: $00
    pop hl                                        ; $54d6: $e1
    sbc $e6                                       ; $54d7: $de $e6
    ld sp, hl                                     ; $54d9: $f9
    cp e                                          ; $54da: $bb
    rst $20                                       ; $54db: $e7
    cp $ff                                        ; $54dc: $fe $ff
    nop                                           ; $54de: $00
    ret c                                         ; $54df: $d8

    rst $38                                       ; $54e0: $ff
    add e                                         ; $54e1: $83
    db $fd                                        ; $54e2: $fd
    add a                                         ; $54e3: $87
    ei                                            ; $54e4: $fb
    ld a, a                                       ; $54e5: $7f
    sub b                                         ; $54e6: $90
    nop                                           ; $54e7: $00
    cp e                                          ; $54e8: $bb
    ld [hl], h                                    ; $54e9: $74
    rst $30                                       ; $54ea: $f7
    add sp, -$41                                  ; $54eb: $e8 $bf
    ret nz                                        ; $54ed: $c0

    rst $30                                       ; $54ee: $f7
    adc b                                         ; $54ef: $88
    nop                                           ; $54f0: $00
    xor [hl]                                      ; $54f1: $ae
    pop de                                        ; $54f2: $d1
    push de                                       ; $54f3: $d5
    xor d                                         ; $54f4: $aa
    xor d                                         ; $54f5: $aa
    ld d, l                                       ; $54f6: $55
    ld a, l                                       ; $54f7: $7d
    rst $38                                       ; $54f8: $ff
    nop                                           ; $54f9: $00
    sbc c                                         ; $54fa: $99
    ld a, a                                       ; $54fb: $7f
    sub l                                         ; $54fc: $95
    ld l, e                                       ; $54fd: $6b
    add hl, hl                                    ; $54fe: $29
    rst $10                                       ; $54ff: $d7
    ld b, c                                       ; $5500: $41
    cp a                                          ; $5501: $bf
    ret nz                                        ; $5502: $c0

    ld c, c                                       ; $5503: $49
    ld bc, $00b0                                  ; $5504: $01 $b0 $00
    sbc a                                         ; $5507: $9f
    xor $bc                                       ; $5508: $ee $bc
    rst $18                                       ; $550a: $df
    or h                                          ; $550b: $b4
    ei                                            ; $550c: $fb
    inc e                                         ; $550d: $1c
    rst $28                                       ; $550e: $ef
    rst $30                                       ; $550f: $f7
    ld hl, sp+$3c                                 ; $5510: $f8 $3c
    ld bc, $086c                                  ; $5512: $01 $6c $08
    ret nc                                        ; $5515: $d0

    ld [$fbf4], sp                                ; $5516: $08 $f4 $fb
    nop                                           ; $5519: $00
    ld [$09ff], sp                                ; $551a: $08 $ff $09
    cp $08                                        ; $551d: $fe $08
    rst $38                                       ; $551f: $ff
    db $f4                                        ; $5520: $f4
    dec c                                         ; $5521: $0d
    nop                                           ; $5522: $00
    db $fd                                        ; $5523: $fd
    db $fd                                        ; $5524: $fd
    ld bc, $0901                                  ; $5525: $01 $01 $09
    add hl, bc                                    ; $5528: $09
    dec [hl]                                      ; $5529: $35
    dec a                                         ; $552a: $3d
    ld c, h                                       ; $552b: $4c
    push bc                                       ; $552c: $c5
    ld h, b                                       ; $552d: $60
    nop                                           ; $552e: $00
    inc bc                                        ; $552f: $03
    rst $38                                       ; $5530: $ff
    ld l, h                                       ; $5531: $6c
    ld [$01e0], sp                                ; $5532: $08 $e0 $01
    add b                                         ; $5535: $80
    ld h, b                                       ; $5536: $60
    add hl, de                                    ; $5537: $19
    ldh [$9c], a                                  ; $5538: $e0 $9c
    ld a, h                                       ; $553a: $7c
    adc h                                         ; $553b: $8c
    ld [$086c], sp                                ; $553c: $08 $6c $08
    db $fc                                        ; $553f: $fc
    db $fc                                        ; $5540: $fc
    jp nz, $8618                                  ; $5541: $c2 $18 $86

    ld d, $08                                     ; $5544: $16 $08
    ld [hl], b                                    ; $5546: $70
    sub b                                         ; $5547: $90
    or b                                          ; $5548: $b0
    ld [hl], b                                    ; $5549: $70
    jp nc, $bc62                                  ; $554a: $d2 $62 $bc

    ld [hl-], a                                   ; $554d: $32
    ld hl, sp+$01                                 ; $554e: $f8 $01
    ei                                            ; $5550: $fb
    and $e9                                       ; $5551: $e6 $e9
    add e                                         ; $5553: $83
    cp h                                          ; $5554: $bc
    call $0032                                    ; $5555: $cd $32 $00
    dec hl                                        ; $5558: $2b
    nop                                           ; $5559: $00
    db $fc                                        ; $555a: $fc
    rst $38                                       ; $555b: $ff
    pop af                                        ; $555c: $f1
    or $e5                                        ; $555d: $f6 $e5
    ld a, [$bd82]                                 ; $555f: $fa $82 $bd
    nop                                           ; $5562: $00
    ld sp, hl                                     ; $5563: $f9
    ld a, [$f7e8]                                 ; $5564: $fa $e8 $f7
    sub a                                         ; $5567: $97
    xor b                                         ; $5568: $a8
    dec bc                                        ; $5569: $0b
    db $f4                                        ; $556a: $f4
    nop                                           ; $556b: $00
    ld e, a                                       ; $556c: $5f
    and b                                         ; $556d: $a0
    cp a                                          ; $556e: $bf
    ld b, b                                       ; $556f: $40
    rst $18                                       ; $5570: $df
    jr nz, @+$01                                  ; $5571: $20 $ff

    nop                                           ; $5573: $00
    nop                                           ; $5574: $00
    halt                                          ; $5575: $76
    adc c                                         ; $5576: $89
    cp a                                          ; $5577: $bf
    ld b, b                                       ; $5578: $40
    ld a, a                                       ; $5579: $7f
    add b                                         ; $557a: $80
    cp a                                          ; $557b: $bf
    ld b, b                                       ; $557c: $40
    add b                                         ; $557d: $80
    adc d                                         ; $557e: $8a
    ld [hl-], a                                   ; $557f: $32
    rst $38                                       ; $5580: $ff
    db $fc                                        ; $5581: $fc
    db $fd                                        ; $5582: $fd
    ld hl, sp-$01                                 ; $5583: $f8 $ff
    push hl                                       ; $5585: $e5
    ld a, [$db00]                                 ; $5586: $fa $00 $db
    db $e4                                        ; $5589: $e4
    xor l                                         ; $558a: $ad
    jp nc, $e01f                                  ; $558b: $d2 $1f $e0

    cp $01                                        ; $558e: $fe $01
    nop                                           ; $5590: $00
    rla                                           ; $5591: $17
    add sp, $6f                                   ; $5592: $e8 $6f
    sub b                                         ; $5594: $90
    cp a                                          ; $5595: $bf
    ld b, b                                       ; $5596: $40
    ld e, c                                       ; $5597: $59
    and [hl]                                      ; $5598: $a6
    nop                                           ; $5599: $00
    ld a, [c]                                     ; $559a: $f2
    rrca                                          ; $559b: $0f
    call z, $963c                                 ; $559c: $cc $3c $96
    ld [hl], b                                    ; $559f: $70
    ld a, [hl]                                    ; $55a0: $7e
    ldh [$81], a                                  ; $55a1: $e0 $81

jr_0a1_55a3:
    ld d, b                                       ; $55a3: $50
    dec sp                                        ; $55a4: $3b
    ld hl, sp-$03                                 ; $55a5: $f8 $fd
    add $e9                                       ; $55a7: $c6 $e9
    ld hl, $5cde                                  ; $55a9: $21 $de $5c
    stop                                          ; $55ac: $10 $00
    cp $e0                                        ; $55ae: $fe $e0
    rst $30                                       ; $55b0: $f7
    ld [bc], a                                    ; $55b1: $02
    cp l                                          ; $55b2: $bd
    dec sp                                        ; $55b3: $3b
    call nz, $002d                                ; $55b4: $c4 $2d $00
    jp nc, $8877                                  ; $55b7: $d2 $77 $88

    cp $fe                                        ; $55ba: $fe $fe
    add b                                         ; $55bc: $80
    xor e                                         ; $55bd: $ab
    ld bc, $fe01                                  ; $55be: $01 $01 $fe
    ld e, $e1                                     ; $55c1: $1e $e1
    swap h                                        ; $55c3: $cb $34
    ld l, l                                       ; $55c5: $6d
    sub d                                         ; $55c6: $92
    ld d, [hl]                                    ; $55c7: $56
    ld [$f800], sp                                ; $55c8: $08 $00 $f8
    db $fd                                        ; $55cb: $fd
    ld [c], a                                     ; $55cc: $e2
    db $ed                                        ; $55cd: $ed
    adc c                                         ; $55ce: $89
    or [hl]                                       ; $55cf: $b6
    add l                                         ; $55d0: $85
    ld a, d                                       ; $55d1: $7a
    ld [$946b], sp                                ; $55d2: $08 $6b $94
    or a                                          ; $55d5: $b7
    ld c, b                                       ; $55d6: $48
    ret nz                                        ; $55d7: $c0

    ld a, [bc]                                    ; $55d8: $0a
    ld d, d                                       ; $55d9: $52
    xor l                                         ; $55da: $ad
    ld l, l                                       ; $55db: $6d
    db $10                                        ; $55dc: $10
    sub d                                         ; $55dd: $92
    ld [hl], a                                    ; $55de: $77
    adc b                                         ; $55df: $88
    ld [hl], b                                    ; $55e0: $70
    jr c, @-$29                                   ; $55e1: $38 $d5

    dec bc                                        ; $55e3: $0b
    ld l, e                                       ; $55e4: $6b
    sub [hl]                                      ; $55e5: $96
    nop                                           ; $55e6: $00
    sub [hl]                                      ; $55e7: $96
    db $ec                                        ; $55e8: $ec
    db $ed                                        ; $55e9: $ed
    ld a, b                                       ; $55ea: $78
    ld e, [hl]                                    ; $55eb: $5e
    jr nc, jr_0a1_55a3                            ; $55ec: $30 $b5

    ld l, b                                       ; $55ee: $68
    nop                                           ; $55ef: $00
    ld l, c                                       ; $55f0: $69
    jp nc, $a5d2                                  ; $55f1: $d2 $d2 $a5

    push af                                       ; $55f4: $f5
    ld a, [hl+]                                   ; $55f5: $2a
    ld a, a                                       ; $55f6: $7f
    adc d                                         ; $55f7: $8a
    nop                                           ; $55f8: $00
    rst $10                                       ; $55f9: $d7
    jr z, jr_0a1_5679                             ; $55fa: $28 $7d

    ld [$20df], sp                                ; $55fc: $08 $df $20
    db $fd                                        ; $55ff: $fd
    ld [hl+], a                                   ; $5600: $22
    nop                                           ; $5601: $00
    ld [hl], a                                    ; $5602: $77
    adc b                                         ; $5603: $88
    rst $18                                       ; $5604: $df
    add b                                         ; $5605: $80
    db $10                                        ; $5606: $10
    rra                                           ; $5607: $1f
    inc de                                        ; $5608: $13
    rra                                           ; $5609: $1f
    nop                                           ; $560a: $00
    inc l                                         ; $560b: $2c
    scf                                           ; $560c: $37
    dec a                                         ; $560d: $3d
    ld a, $3f                                     ; $560e: $3e $3f
    ccf                                           ; $5610: $3f
    ld bc, $8001                                  ; $5611: $01 $01 $80
    cp h                                          ; $5614: $bc
    add hl, bc                                    ; $5615: $09
    and l                                         ; $5616: $a5
    dec bc                                        ; $5617: $0b
    ld e, e                                       ; $5618: $5b
    ld h, $b6                                     ; $5619: $26 $b6
    ld c, h                                       ; $561b: $4c
    ld l, c                                       ; $561c: $69
    nop                                           ; $561d: $00
    sbc [hl]                                      ; $561e: $9e
    sbc $37                                       ; $561f: $de $37
    or a                                          ; $5621: $b7
    ld l, c                                       ; $5622: $69
    ld l, e                                       ; $5623: $6b
    ret nc                                        ; $5624: $d0

    sub $00                                       ; $5625: $d6 $00
    and c                                         ; $5627: $a1
    push de                                       ; $5628: $d5
    ld [hl+], a                                   ; $5629: $22
    ld a, a                                       ; $562a: $7f
    ld [bc], a                                    ; $562b: $02
    rst $10                                       ; $562c: $d7
    ld [$00fd], sp                                ; $562d: $08 $fd $00
    ld [$a25d], sp                                ; $5630: $08 $5d $a2
    rst $30                                       ; $5633: $f7
    and b                                         ; $5634: $a0
    ld [hl], l                                    ; $5635: $75
    adc b                                         ; $5636: $88
    rst $18                                       ; $5637: $df
    ld h, b                                       ; $5638: $60
    and b                                         ; $5639: $a0
    ldh [$29], a                                  ; $563a: $e0 $29
    add sp, $29                                   ; $563c: $e8 $29
    push hl                                       ; $563e: $e5
    dec bc                                        ; $563f: $0b
    ld l, e                                       ; $5640: $6b
    ld d, $d4                                     ; $5641: $16 $d4
    inc b                                         ; $5643: $04
    cpl                                           ; $5644: $2f
    xor a                                         ; $5645: $af
    dec de                                        ; $5646: $1b
    ld e, e                                       ; $5647: $5b
    inc [hl]                                      ; $5648: $34
    ld h, b                                       ; $5649: $60
    nop                                           ; $564a: $00
    jp nz, Jump_000_00d6                          ; $564b: $c2 $d6 $00

    add c                                         ; $564e: $81
    sub l                                         ; $564f: $95
    ld c, e                                       ; $5650: $4b
    xor e                                         ; $5651: $ab
    ld d, $d7                                     ; $5652: $16 $d7
    inc l                                         ; $5654: $2c
    dec l                                         ; $5655: $2d
    nop                                           ; $5656: $00
    jp c, $f4db                                   ; $5657: $da $db $f4

    or e                                          ; $565a: $b3
    ld l, b                                       ; $565b: $68
    ld l, l                                       ; $565c: $6d
    jp nc, $00f2                                  ; $565d: $d2 $f2 $00

    add l                                         ; $5660: $85
    db $fd                                        ; $5661: $fd
    inc bc                                        ; $5662: $03
    ld c, e                                       ; $5663: $4b
    sub [hl]                                      ; $5664: $96
    sub [hl]                                      ; $5665: $96
    inc l                                         ; $5666: $2c
    xor l                                         ; $5667: $ad
    nop                                           ; $5668: $00
    ld e, b                                       ; $5669: $58
    ld e, e                                       ; $566a: $5b
    inc [hl]                                      ; $566b: $34
    or [hl]                                       ; $566c: $b6
    ld l, c                                       ; $566d: $69
    ld l, l                                       ; $566e: $6d
    ret nc                                        ; $566f: $d0

    sbc d                                         ; $5670: $9a
    nop                                           ; $5671: $00
    pop hl                                        ; $5672: $e1
    and l                                         ; $5673: $a5
    ld c, e                                       ; $5674: $4b
    ld l, e                                       ; $5675: $6b
    sub [hl]                                      ; $5676: $96
    or $0d                                        ; $5677: $f6 $0d

jr_0a1_5679:
    xor l                                         ; $5679: $ad

jr_0a1_567a:
    nop                                           ; $567a: $00
    ld e, b                                       ; $567b: $58
    ld d, e                                       ; $567c: $53
    cp h                                          ; $567d: $bc
    cp h                                          ; $567e: $bc
    ld l, a                                       ; $567f: $6f
    ld l, a                                       ; $5680: $6f
    jp Jump_000_00da                              ; $5681: $c3 $da $00


    add l                                         ; $5684: $85
    push af                                       ; $5685: $f5
    ld [bc], a                                    ; $5686: $02
    ld a, a                                       ; $5687: $7f

jr_0a1_5688:
    add d                                         ; $5688: $82

jr_0a1_5689:
    rst $10                                       ; $5689: $d7
    jr z, jr_0a1_5689                             ; $568a: $28 $fd

    nop                                           ; $568c: $00
    ld a, [bc]                                    ; $568d: $0a
    rst $18                                       ; $568e: $df
    jr nz, jr_0a1_5688                            ; $568f: $20 $f7

    jr nz, jr_0a1_5710                            ; $5691: $20 $7d

    add d                                         ; $5693: $82
    rst $38                                       ; $5694: $ff
    ld b, c                                       ; $5695: $41
    add b                                         ; $5696: $80
    db $fc                                        ; $5697: $fc
    ld b, c                                       ; $5698: $41
    push hl                                       ; $5699: $e5
    ld a, l                                       ; $569a: $7d
    ld a, l                                       ; $569b: $7d
    add hl, de                                    ; $569c: $19
    add hl, de                                    ; $569d: $19
    db $fc                                        ; $569e: $fc
    ld bc, $a740                                  ; $569f: $01 $40 $a7
    db $fc                                        ; $56a2: $fc
    add hl, hl                                    ; $56a3: $29
    sbc [hl]                                      ; $56a4: $9e
    xor $bc                                       ; $56a5: $ee $bc
    call c, $e0e0                                 ; $56a7: $dc $e0 $e0
    ld h, h                                       ; $56aa: $64
    add b                                         ; $56ab: $80
    ld bc, $6a20                                  ; $56ac: $01 $20 $6a
    ld a, [de]                                    ; $56af: $1a

jr_0a1_56b0:
    push de                                       ; $56b0: $d5
    ld a, [bc]                                    ; $56b1: $0a
    ld b, b                                       ; $56b2: $40
    nop                                           ; $56b3: $00
    xor b                                         ; $56b4: $a8
    db $fd                                        ; $56b5: $fd
    nop                                           ; $56b6: $00
    jr z, @+$61                                   ; $56b7: $28 $5f

    jr nz, jr_0a1_56b0                            ; $56b9: $20 $f5

    jr z, jr_0a1_573a                             ; $56bb: $28 $7d

    add d                                         ; $56bd: $82
    rst $10                                       ; $56be: $d7
    ld h, c                                       ; $56bf: $61
    and b                                         ; $56c0: $a0
    ld a, b                                       ; $56c1: $78
    ld a, [bc]                                    ; $56c2: $0a
    inc b                                         ; $56c3: $04
    ld c, b                                       ; $56c4: $48
    or b                                          ; $56c5: $b0
    ldh a, [$e7]                                  ; $56c6: $f0 $e7
    rst $20                                       ; $56c8: $e7
    inc c                                         ; $56c9: $0c
    ld a, [hl+]                                   ; $56ca: $2a
    add h                                         ; $56cb: $84
    db $ec                                        ; $56cc: $ec
    add hl, bc                                    ; $56cd: $09
    ldh a, [$f0]                                  ; $56ce: $f0 $f0
    ld [$02f8], sp                                ; $56d0: $08 $f8 $02
    ld [$0cf4], sp                                ; $56d3: $08 $f4 $0c
    ld b, b                                       ; $56d6: $40
    db $fc                                        ; $56d7: $fc
    ld bc, $0000                                  ; $56d8: $01 $00 $00
    nop                                           ; $56db: $00
    push af                                       ; $56dc: $f5
    ld a, [bc]                                    ; $56dd: $0a
    ld e, a                                       ; $56de: $5f
    ld [hl+], a                                   ; $56df: $22
    nop                                           ; $56e0: $00
    rst $30                                       ; $56e1: $f7
    ld [$8a7d], sp                                ; $56e2: $08 $7d $8a
    rst $18                                       ; $56e5: $df
    ld [hl+], a                                   ; $56e6: $22
    rst $30                                       ; $56e7: $f7
    jr z, jr_0a1_56ea                             ; $56e8: $28 $00

jr_0a1_56ea:
    ld a, a                                       ; $56ea: $7f
    add b                                         ; $56eb: $80
    rst $10                                       ; $56ec: $d7
    and b                                         ; $56ed: $a0
    push af                                       ; $56ee: $f5
    ld a, [bc]                                    ; $56ef: $0a
    ld a, a                                       ; $56f0: $7f
    ld [bc], a                                    ; $56f1: $02
    add hl, bc                                    ; $56f2: $09
    push de                                       ; $56f3: $d5
    ld a, [hl+]                                   ; $56f4: $2a
    rst $38                                       ; $56f5: $ff
    ld a, [bc]                                    ; $56f6: $0a
    ld d, b                                       ; $56f7: $50
    jr nz, jr_0a1_567a                            ; $56f8: $20 $80

    db $dd                                        ; $56fa: $dd
    nop                                           ; $56fb: $00
    add hl, bc                                    ; $56fc: $09
    ld d, b                                       ; $56fd: $50
    jr z, jr_0a1_5720                             ; $56fe: $28 $20

    nop                                           ; $5700: $00
    and b                                         ; $5701: $a0
    and b                                         ; $5702: $a0
    nop                                           ; $5703: $00
    add b                                         ; $5704: $80
    rst $18                                       ; $5705: $df
    and b                                         ; $5706: $a0
    db $fc                                        ; $5707: $fc
    nop                                           ; $5708: $00
    inc bc                                        ; $5709: $03
    di                                            ; $570a: $f3
    rrca                                          ; $570b: $0f
    push hl                                       ; $570c: $e5
    inc e                                         ; $570d: $1c
    sbc a                                         ; $570e: $9f
    ld a, b                                       ; $570f: $78

jr_0a1_5710:
    ld l, $00                                     ; $5710: $2e $00
    pop hl                                        ; $5712: $e1
    ld e, [hl]                                    ; $5713: $5e
    pop bc                                        ; $5714: $c1
    cp $81                                        ; $5715: $fe $81
    cp $01                                        ; $5717: $fe $01
    cp [hl]                                       ; $5719: $be
    nop                                           ; $571a: $00
    add b                                         ; $571b: $80
    cp $00                                        ; $571c: $fe $00
    ld [c], a                                     ; $571e: $e2
    db $10                                        ; $571f: $10

jr_0a1_5720:
    sbc d                                         ; $5720: $9a
    ld [hl], b                                    ; $5721: $70
    ld e, d                                       ; $5722: $5a
    nop                                           ; $5723: $00
    ret nz                                        ; $5724: $c0

    ld a, [$7a80]                                 ; $5725: $fa $80 $7a
    nop                                           ; $5728: $00
    ld a, [$fe80]                                 ; $5729: $fa $80 $fe
    ld bc, $e601                                  ; $572c: $01 $01 $e6
    add hl, de                                    ; $572f: $19
    ld e, $f1                                     ; $5730: $1e $f1
    ld a, [hl]                                    ; $5732: $7e
    pop bc                                        ; $5733: $c1
    adc $02                                       ; $5734: $ce $02
    inc b                                         ; $5736: $04
    ld b, b                                       ; $5737: $40
    ei                                            ; $5738: $fb
    add h                                         ; $5739: $84

jr_0a1_573a:
    di                                            ; $573a: $f3
    inc c                                         ; $573b: $0c
    inc d                                         ; $573c: $14
    ld [$0066], sp                                ; $573d: $08 $66 $00
    nop                                           ; $5740: $00
    sbc $80                                       ; $5741: $de $80
    ld a, $00                                     ; $5743: $3e $00
    cp $02                                        ; $5745: $fe $02
    or $07                                        ; $5747: $f6 $07
    nop                                           ; $5749: $00
    db $fd                                        ; $574a: $fd
    ld e, $ff                                     ; $574b: $1e $ff
    nop                                           ; $574d: $00
    cp $01                                        ; $574e: $fe $01
    rst $38                                       ; $5750: $ff
    nop                                           ; $5751: $00
    nop                                           ; $5752: $00
    ld l, [hl]                                    ; $5753: $6e
    sub c                                         ; $5754: $91
    push af                                       ; $5755: $f5
    ld a, [bc]                                    ; $5756: $0a
    ld e, d                                       ; $5757: $5a
    and l                                         ; $5758: $a5
    or a                                          ; $5759: $b7
    ld c, b                                       ; $575a: $48
    nop                                           ; $575b: $00
    ld e, d                                       ; $575c: $5a
    and l                                         ; $575d: $a5
    rst $28                                       ; $575e: $ef
    jr jr_0a1_5710                                ; $575f: $18 $af

    ld [hl], b                                    ; $5761: $70
    cp l                                          ; $5762: $bd
    pop bc                                        ; $5763: $c1
    nop                                           ; $5764: $00
    rst $38                                       ; $5765: $ff
    rlca                                          ; $5766: $07

jr_0a1_5767:
    db $ed                                        ; $5767: $ed
    ld c, $ff                                     ; $5768: $0e $ff
    jr c, jr_0a1_57db                             ; $576a: $38 $6f

    ld [hl], b                                    ; $576c: $70
    nop                                           ; $576d: $00

jr_0a1_576e:
    rst $38                                       ; $576e: $ff
    ret nz                                        ; $576f: $c0

    or a                                          ; $5770: $b7
    jr c, @+$01                                   ; $5771: $38 $ff

    ldh [$bb], a                                  ; $5773: $e0 $bb
    call nz, $bd00                                ; $5775: $c4 $00 $bd
    ld b, d                                       ; $5778: $42
    rst $18                                       ; $5779: $df
    jr nz, jr_0a1_5767                            ; $577a: $20 $eb

    inc d                                         ; $577c: $14
    cp l                                          ; $577d: $bd
    ld b, d                                       ; $577e: $42
    nop                                           ; $577f: $00
    jp c, $ba25                                   ; $5780: $da $25 $ba

    ld b, l                                       ; $5783: $45
    db $dd                                        ; $5784: $dd
    ld [hl+], a                                   ; $5785: $22
    db $eb                                        ; $5786: $eb
    inc d                                         ; $5787: $14
    nop                                           ; $5788: $00
    ld h, c                                       ; $5789: $61
    sbc [hl]                                      ; $578a: $9e
    or b                                          ; $578b: $b0
    ld c, a                                       ; $578c: $4f
    ld c, d                                       ; $578d: $4a
    or l                                          ; $578e: $b5
    jr nz, jr_0a1_576e                            ; $578f: $20 $dd

    nop                                           ; $5791: $00
    inc b                                         ; $5792: $04
    cp $84                                        ; $5793: $fe $84
    ld a, e                                       ; $5795: $7b
    ld b, b                                       ; $5796: $40
    cp a                                          ; $5797: $bf
    xor b                                         ; $5798: $a8
    ld d, l                                       ; $5799: $55
    inc b                                         ; $579a: $04
    ld b, h                                       ; $579b: $44
    cp [hl]                                       ; $579c: $be
    adc b                                         ; $579d: $88
    ld e, b                                       ; $579e: $58
    ld b, b                                       ; $579f: $40
    ld a, [bc]                                    ; $57a0: $0a
    ld bc, $0000                                  ; $57a1: $01 $00 $00
    nop                                           ; $57a4: $00
    sbc $a1                                       ; $57a5: $de $a1
    rst $28                                       ; $57a7: $ef
    db $10                                        ; $57a8: $10
    ld a, [$ad05]                                 ; $57a9: $fa $05 $ad
    ld d, d                                       ; $57ac: $52
    nop                                           ; $57ad: $00
    ret nc                                        ; $57ae: $d0

    cpl                                           ; $57af: $2f
    ldh [$1f], a                                  ; $57b0: $e0 $1f
    ret nc                                        ; $57b2: $d0

    cpl                                           ; $57b3: $2f
    xor b                                         ; $57b4: $a8
    ld d, [hl]                                    ; $57b5: $56
    nop                                           ; $57b6: $00
    pop bc                                        ; $57b7: $c1
    ld a, $60                                     ; $57b8: $3e $60
    sbc a                                         ; $57ba: $9f
    or h                                          ; $57bb: $b4
    ld c, e                                       ; $57bc: $4b
    ld bc, $00fb                                  ; $57bd: $01 $fb $00
    adc b                                         ; $57c0: $88
    ld a, h                                       ; $57c1: $7c
    db $10                                        ; $57c2: $10
    ldh a, [rNR41]                                ; $57c3: $f0 $20
    ld h, b                                       ; $57c5: $60
    nop                                           ; $57c6: $00
    add b                                         ; $57c7: $80
    jr c, jr_0a1_57d2                             ; $57c8: $38 $08

    ret c                                         ; $57ca: $d8

    jr z, jr_0a1_57e5                             ; $57cb: $28 $18

    sbc b                                         ; $57cd: $98
    dec hl                                        ; $57ce: $2b
    ld [de], a                                    ; $57cf: $12
    dec e                                         ; $57d0: $1d
    db $fd                                        ; $57d1: $fd

jr_0a1_57d2:
    ld [bc], a                                    ; $57d2: $02
    or $01                                        ; $57d3: $f6 $01
    add hl, bc                                    ; $57d5: $09
    ei                                            ; $57d6: $fb
    inc b                                         ; $57d7: $04
    db $f4                                        ; $57d8: $f4
    dec bc                                        ; $57d9: $0b
    ld e, c                                       ; $57da: $59

jr_0a1_57db:
    and [hl]                                      ; $57db: $a6
    sub [hl]                                      ; $57dc: $96
    inc c                                         ; $57dd: $0c
    ld [bc], a                                    ; $57de: $02
    or $09                                        ; $57df: $f6 $09
    db $eb                                        ; $57e1: $eb
    inc d                                         ; $57e2: $14
    and a                                         ; $57e3: $a7
    ld e, b                                       ; $57e4: $58

jr_0a1_57e5:
    ld e, $0c                                     ; $57e5: $1e $0c
    ld d, h                                       ; $57e7: $54
    nop                                           ; $57e8: $00
    xor e                                         ; $57e9: $ab
    db $dd                                        ; $57ea: $dd
    ld [hl+], a                                   ; $57eb: $22
    ld l, d                                       ; $57ec: $6a
    sub l                                         ; $57ed: $95
    or l                                          ; $57ee: $b5
    ld c, d                                       ; $57ef: $4a
    ld [de], a                                    ; $57f0: $12
    nop                                           ; $57f1: $00
    db $ed                                        ; $57f2: $ed
    cp b                                          ; $57f3: $b8
    ld b, a                                       ; $57f4: $47
    call nc, Call_000_282b                        ; $57f5: $d4 $2b $28
    sub $82                                       ; $57f8: $d6 $82
    db $10                                        ; $57fa: $10
    ld d, [hl]                                    ; $57fb: $56

jr_0a1_57fc:
    cp $01                                        ; $57fc: $fe $01
    jr z, @+$0a                                   ; $57fe: $28 $08

    xor d                                         ; $5800: $aa
    ld d, l                                       ; $5801: $55
    ld h, b                                       ; $5802: $60
    sbc a                                         ; $5803: $9f
    nop                                           ; $5804: $00
    or c                                          ; $5805: $b1
    ld c, [hl]                                    ; $5806: $4e
    ld de, $42eb                                  ; $5807: $11 $eb $42
    cp e                                          ; $580a: $bb
    db $ec                                        ; $580b: $ec
    inc de                                        ; $580c: $13
    nop                                           ; $580d: $00
    ld d, h                                       ; $580e: $54
    xor e                                         ; $580f: $ab

Jump_0a1_5810:
    ld [c], a                                     ; $5810: $e2
    dec e                                         ; $5811: $1d
    ld b, b                                       ; $5812: $40
    cp l                                          ; $5813: $bd
    dec h                                         ; $5814: $25
    call Call_000_2808                            ; $5815: $cd $08 $28
    ld l, b                                       ; $5818: $68
    ld b, b                                       ; $5819: $40
    ld b, b                                       ; $581a: $40
    jr z, jr_0a1_5820                             ; $581b: $28 $03

    ld a, [hl]                                    ; $581d: $7e
    ld b, d                                       ; $581e: $42
    or [hl]                                       ; $581f: $b6

jr_0a1_5820:
    inc de                                        ; $5820: $13
    inc d                                         ; $5821: $14
    or h                                          ; $5822: $b4
    and b                                         ; $5823: $a0
    jr jr_0a1_5858                                ; $5824: $18 $32

    ld d, h                                       ; $5826: $54
    call nc, Call_0a1_486e                        ; $5827: $d4 $6e $48

jr_0a1_582a:
    ld h, b                                       ; $582a: $60
    ld bc, $2a18                                  ; $582b: $01 $18 $2a
    ld e, a                                       ; $582e: $5f
    adc d                                         ; $582f: $8a
    ld h, b                                       ; $5830: $60
    add hl, bc                                    ; $5831: $09
    db $e4                                        ; $5832: $e4
    ld bc, $7f2a                                  ; $5833: $01 $2a $7f
    add d                                         ; $5836: $82
    nop                                           ; $5837: $00
    rst $18                                       ; $5838: $df
    and b                                         ; $5839: $a0
    xor l                                         ; $583a: $ad
    ld b, e                                       ; $583b: $43
    ld e, e                                       ; $583c: $5b
    ld h, $94                                     ; $583d: $26 $94
    ld c, a                                       ; $583f: $4f

Call_0a1_5840:
    inc b                                         ; $5840: $04
    cpl                                           ; $5841: $2f
    sbc e                                         ; $5842: $9b
    ld e, a                                       ; $5843: $5f
    jr nc, jr_0a1_57fc                            ; $5844: $30 $b6

    ld h, b                                       ; $5846: $60
    ld [de], a                                    ; $5847: $12
    cp l                                          ; $5848: $bd
    ld b, e                                       ; $5849: $43
    db $10                                        ; $584a: $10
    dec hl                                        ; $584b: $2b
    sub [hl]                                      ; $584c: $96
    ld d, a                                       ; $584d: $57
    jr nz, jr_0a1_585a                            ; $584e: $20 $0a

    or b                                          ; $5850: $b0
    and [hl]                                      ; $5851: $a6
    ld a, b                                       ; $5852: $78
    ld a, c                                       ; $5853: $79
    nop                                           ; $5854: $00
    sbc $de                                       ; $5855: $de $de
    add a                                         ; $5857: $87

jr_0a1_5858:
    sub l                                         ; $5858: $95
    ld b, e                                       ; $5859: $43

jr_0a1_585a:
    xor e                                         ; $585a: $ab
    ld d, $56                                     ; $585b: $16 $56
    inc b                                         ; $585d: $04
    inc l                                         ; $585e: $2c
    xor a                                         ; $585f: $af
    ld e, b                                       ; $5860: $58
    jp nc, Jump_000_203c                          ; $5861: $d2 $3c $20

    ld a, [bc]                                    ; $5864: $0a
    sbc $81                                       ; $5865: $de $81
    nop                                           ; $5867: $00
    cp l                                          ; $5868: $bd
    inc bc                                        ; $5869: $03
    ld l, e                                       ; $586a: $6b
    ld d, $96                                     ; $586b: $16 $96
    dec l                                         ; $586d: $2d
    dec l                                         ; $586e: $2d
    ld e, b                                       ; $586f: $58
    nop                                           ; $5870: $00
    db $db                                        ; $5871: $db
    jr nc, jr_0a1_582a                            ; $5872: $30 $b6

    ld h, c                                       ; $5874: $61
    ld l, e                                       ; $5875: $6b
    call nc, $a1d6                                ; $5876: $d4 $d6 $a1
    nop                                           ; $5879: $00
    push hl                                       ; $587a: $e5
    ld a, e                                       ; $587b: $7b
    dec sp                                        ; $587c: $3b
    sbc [hl]                                      ; $587d: $9e
    ld [hl], a                                    ; $587e: $77
    inc c                                         ; $587f: $0c
    xor l                                         ; $5880: $ad
    ld a, [de]                                    ; $5881: $1a
    add b                                         ; $5882: $80
    ld [hl], b                                    ; $5883: $70
    ld [bc], a                                    ; $5884: $02
    ld l, d                                       ; $5885: $6a
    ld l, c                                       ; $5886: $69
    call nz, $c992                                ; $5887: $c4 $92 $c9
    or l                                          ; $588a: $b5
    ld c, e                                       ; $588b: $4b
    nop                                           ; $588c: $00
    ld c, e                                       ; $588d: $4b
    sub [hl]                                      ; $588e: $96
    or h                                          ; $588f: $b4
    rrca                                          ; $5890: $0f
    cpl                                           ; $5891: $2f
    ld e, e                                       ; $5892: $5b
    ld e, a                                       ; $5893: $5f
    or b                                          ; $5894: $b0
    nop                                           ; $5895: $00
    or l                                          ; $5896: $b5
    ld h, d                                       ; $5897: $62
    ld l, c                                       ; $5898: $69
    call nz, $a1da                                ; $5899: $c4 $da $a1
    push de                                       ; $589c: $d5
    inc hl                                        ; $589d: $23
    nop                                           ; $589e: $00
    xor e                                         ; $589f: $ab
    ld b, [hl]                                    ; $58a0: $46
    or $0d                                        ; $58a1: $f6 $0d
    dec l                                         ; $58a3: $2d
    ret c                                         ; $58a4: $d8

    jp c, $01f1                                   ; $58a5: $da $f1 $01

    or l                                          ; $58a8: $b5
    ld h, d                                       ; $58a9: $62
    ld l, d                                       ; $58aa: $6a
    call nc, $a1dc                                ; $58ab: $d4 $dc $a1
    push af                                       ; $58ae: $f5
    call z, $8101                                 ; $58af: $cc $01 $81
    ld h, b                                       ; $58b2: $60
    ld [bc], a                                    ; $58b3: $02
    ld [$225d], sp                                ; $58b4: $08 $5d $22
    rst $38                                       ; $58b7: $ff
    jr nz, jr_0a1_592f                            ; $58b8: $20 $75

    ret nz                                        ; $58ba: $c0

    ld bc, $f500                                  ; $58bb: $01 $00 $f5
    inc bc                                        ; $58be: $03
    dec hl                                        ; $58bf: $2b
    add [hl]                                      ; $58c0: $86
    ld d, h                                       ; $58c1: $54
    cpl                                           ; $58c2: $2f
    xor a                                         ; $58c3: $af
    ld e, e                                       ; $58c4: $5b
    nop                                           ; $58c5: $00
    ld e, e                                       ; $58c6: $5b
    or b                                          ; $58c7: $b0
    or [hl]                                       ; $58c8: $b6
    ld h, c                                       ; $58c9: $61
    ld l, l                                       ; $58ca: $6d
    jp nz, $95ea                                  ; $58cb: $c2 $ea $95

    inc b                                         ; $58ce: $04
    xor l                                         ; $58cf: $ad
    inc de                                        ; $58d0: $13
    ld e, d                                       ; $58d1: $5a
    and a                                         ; $58d2: $a7
    rst $30                                       ; $58d3: $f7
    jr nc, jr_0a1_58d6                            ; $58d4: $30 $00

jr_0a1_58d6:
    db $dd                                        ; $58d6: $dd
    ld a, [c]                                     ; $58d7: $f2
    nop                                           ; $58d8: $00
    or e                                          ; $58d9: $b3
    ld h, h                                       ; $58da: $64
    ld l, l                                       ; $58db: $6d
    jp nz, $85da                                  ; $58dc: $c2 $da $85

    push hl                                       ; $58df: $e5
    ld a, e                                       ; $58e0: $7b
    nop                                           ; $58e1: $00
    ld a, e                                       ; $58e2: $7b
    sbc [hl]                                      ; $58e3: $9e
    sub $2c                                       ; $58e4: $d6 $2c
    dec l                                         ; $58e6: $2d
    ld e, b                                       ; $58e7: $58
    jp c, Jump_000_0035                           ; $58e8: $da $35 $00

    cp l                                          ; $58eb: $bd
    ld h, d                                       ; $58ec: $62
    ld [hl], a                                    ; $58ed: $77
    ret z                                         ; $58ee: $c8

    jp z, $d591                                   ; $58ef: $ca $91 $d5

    inc hl                                        ; $58f2: $23
    inc b                                         ; $58f3: $04
    ld l, e                                       ; $58f4: $6b
    add [hl]                                      ; $58f5: $86
    sub [hl]                                      ; $58f6: $96
    dec l                                         ; $58f7: $2d
    cpl                                           ; $58f8: $2f
    stop                                          ; $58f9: $10 $00
    or h                                          ; $58fb: $b4
    ld h, d                                       ; $58fc: $62
    nop                                           ; $58fd: $00
    ld l, l                                       ; $58fe: $6d
    ret nz                                        ; $58ff: $c0

    jp c, $b5a1                                   ; $5900: $da $a1 $b5

    ld b, e                                       ; $5903: $43
    ld l, e                                       ; $5904: $6b
    add [hl]                                      ; $5905: $86
    inc b                                         ; $5906: $04
    or [hl]                                       ; $5907: $b6
    ld c, h                                       ; $5908: $4c
    ld l, a                                       ; $5909: $6f
    sbc b                                         ; $590a: $98
    db $d3                                        ; $590b: $d3
    and b                                         ; $590c: $a0
    nop                                           ; $590d: $00
    ld a, e                                       ; $590e: $7b
    rst $00                                       ; $590f: $c7
    nop                                           ; $5910: $00
    sub $a9                                       ; $5911: $d6 $a9
    sub l                                         ; $5913: $95
    inc hl                                        ; $5914: $23
    dec hl                                        ; $5915: $2b
    ld b, [hl]                                    ; $5916: $46
    rst $10                                       ; $5917: $d7
    inc c                                         ; $5918: $0c
    nop                                           ; $5919: $00
    db $ec                                        ; $591a: $ec
    add hl, de                                    ; $591b: $19
    ld e, c                                       ; $591c: $59
    or d                                          ; $591d: $b2
    or e                                          ; $591e: $b3
    db $e4                                        ; $591f: $e4
    ld [hl], l                                    ; $5920: $75
    ret z                                         ; $5921: $c8

    ld b, c                                       ; $5922: $41
    jp c, Jump_000_0070                           ; $5923: $da $70 $00

    ld a, a                                       ; $5926: $7f
    adc d                                         ; $5927: $8a
    ld d, a                                       ; $5928: $57
    jr z, @+$01                                   ; $5929: $28 $ff

    ld h, b                                       ; $592b: $60
    inc bc                                        ; $592c: $03
    ld [bc], a                                    ; $592d: $02
    ld [hl], a                                    ; $592e: $77

jr_0a1_592f:
    jr z, jr_0a1_59a8                             ; $592f: $28 $77

    add b                                         ; $5931: $80
    db $fd                                        ; $5932: $fd
    add b                                         ; $5933: $80
    jr nz, jr_0a1_593e                            ; $5934: $20 $08

    ld d, [hl]                                    ; $5936: $56
    ld b, $8d                                     ; $5937: $06 $8d
    rst $28                                       ; $5939: $ef
    jr jr_0a1_599a                                ; $593a: $18 $5e

    or c                                          ; $593c: $b1
    ld b, b                                       ; $593d: $40

jr_0a1_593e:
    jr jr_0a1_59a0                                ; $593e: $18 $60

    db $10                                        ; $5940: $10
    dec c                                         ; $5941: $0d
    nop                                           ; $5942: $00
    dec l                                         ; $5943: $2d
    sbc d                                         ; $5944: $9a
    rst $18                                       ; $5945: $df
    jr nc, @-$4c                                  ; $5946: $30 $b2

    ld h, l                                       ; $5948: $65
    ld h, l                                       ; $5949: $65
    jp z, $ce02                                   ; $594a: $ca $02 $ce

    sub c                                         ; $594d: $91
    or l                                          ; $594e: $b5
    ld c, e                                       ; $594f: $4b
    db $eb                                        ; $5950: $eb
    ld b, $10                                     ; $5951: $06 $10
    nop                                           ; $5953: $00
    ret c                                         ; $5954: $d8

    ld [de], a                                    ; $5955: $12
    rst $18                                       ; $5956: $df
    ldh a, [$b4]                                  ; $5957: $f0 $b4
    ret nz                                        ; $5959: $c0

    nop                                           ; $595a: $00
    sbc [hl]                                      ; $595b: $9e
    pop hl                                        ; $595c: $e1
    ld h, b                                       ; $595d: $60
    db $10                                        ; $595e: $10
    ld c, l                                       ; $595f: $4d
    jr @+$6b                                      ; $5960: $18 $69

    sbc [hl]                                      ; $5962: $9e
    ld e, [hl]                                    ; $5963: $5e
    add b                                         ; $5964: $80
    dec bc                                        ; $5965: $0b
    ldh a, [rP1]                                  ; $5966: $f0 $00
    cp l                                          ; $5968: $bd
    ld b, e                                       ; $5969: $43
    ld l, e                                       ; $596a: $6b
    inc b                                         ; $596b: $04
    sub [hl]                                      ; $596c: $96
    sub $2d                                       ; $596d: $d6 $2d
    xor l                                         ; $596f: $ad
    ld e, d                                       ; $5970: $5a
    or b                                          ; $5971: $b0
    nop                                           ; $5972: $00
    ldh [rBCPD], a                                ; $5973: $e0 $69
    nop                                           ; $5975: $00
    call nc, $89d6                                ; $5976: $d4 $d6 $89
    push hl                                       ; $5979: $e5
    ld a, e                                       ; $597a: $7b
    ld e, e                                       ; $597b: $5b
    sbc [hl]                                      ; $597c: $9e
    or [hl]                                       ; $597d: $b6
    db $10                                        ; $597e: $10
    inc c                                         ; $597f: $0c
    ld l, l                                       ; $5980: $6d
    sbc d                                         ; $5981: $9a
    add b                                         ; $5982: $80
    ld [$d36f], sp                                ; $5983: $08 $6f $d3
    jp c, Jump_0a1_44a1                           ; $5986: $da $a1 $44

    rst $38                                       ; $5989: $ff
    ld b, c                                       ; $598a: $41
    ld b, $83                                     ; $598b: $06 $83
    ld a, a                                       ; $598d: $7f
    ld bc, $055c                                  ; $598e: $01 $5c $05
    ld bc, $60ff                                  ; $5991: $01 $ff $60
    ld b, e                                       ; $5994: $43
    and b                                         ; $5995: $a0
    ld b, $70                                     ; $5996: $06 $70
    ld c, $45                                     ; $5998: $0e $45

jr_0a1_599a:
    cp d                                          ; $599a: $ba
    sbc d                                         ; $599b: $9a
    ld h, l                                       ; $599c: $65
    or l                                          ; $599d: $b5
    jr jr_0a1_59ea                                ; $599e: $18 $4a

jr_0a1_59a0:
    xor $11                                       ; $59a0: $ee $11
    ld l, h                                       ; $59a2: $6c
    ld a, [de]                                    ; $59a3: $1a
    inc b                                         ; $59a4: $04
    ld l, b                                       ; $59a5: $68
    or $09                                        ; $59a6: $f6 $09

jr_0a1_59a8:
    rst $28                                       ; $59a8: $ef
    nop                                           ; $59a9: $00
    db $10                                        ; $59aa: $10
    sub $29                                       ; $59ab: $d6 $29
    rst $28                                       ; $59ad: $ef
    db $10                                        ; $59ae: $10
    cp d                                          ; $59af: $ba
    ld b, l                                       ; $59b0: $45
    ld a, a                                       ; $59b1: $7f
    nop                                           ; $59b2: $00
    add b                                         ; $59b3: $80
    or [hl]                                       ; $59b4: $b6
    ld c, c                                       ; $59b5: $49
    ld c, l                                       ; $59b6: $4d
    or d                                          ; $59b7: $b2
    ld a, [de]                                    ; $59b8: $1a
    push hl                                       ; $59b9: $e5
    ld sp, $ce01                                  ; $59ba: $31 $01 $ce
    ld a, [hl+]                                   ; $59bd: $2a
    push de                                       ; $59be: $d5
    ld d, c                                       ; $59bf: $51
    xor [hl]                                      ; $59c0: $ae
    ld [hl+], a                                   ; $59c1: $22
    db $dd                                        ; $59c2: $dd
    ldh a, [$0d]                                  ; $59c3: $f0 $0d
    nop                                           ; $59c5: $00
    ld hl, sp+$07                                 ; $59c6: $f8 $07
    rst $28                                       ; $59c8: $ef
    rra                                           ; $59c9: $1f
    call c, $f23c                                 ; $59ca: $dc $3c $f2
    dec [hl]                                      ; $59cd: $35
    nop                                           ; $59ce: $00
    and l                                         ; $59cf: $a5
    ld l, d                                       ; $59d0: $6a
    ld [$d571], a                                 ; $59d1: $ea $71 $d5
    ld c, b                                       ; $59d4: $48
    jp z, $0054                                   ; $59d5: $ca $54 $00

    ccf                                           ; $59d8: $3f
    ret nz                                        ; $59d9: $c0

    adc a                                         ; $59da: $8f
    ldh a, [$e7]                                  ; $59db: $f0 $e7
    ld hl, sp-$4d                                 ; $59dd: $f8 $b3
    inc a                                         ; $59df: $3c
    nop                                           ; $59e0: $00
    ld d, e                                       ; $59e1: $53
    sbc h                                         ; $59e2: $9c
    cp c                                          ; $59e3: $b9
    ld e, [hl]                                    ; $59e4: $5e
    ld c, c                                       ; $59e5: $49
    ld l, $a9                                     ; $59e6: $2e $a9
    ld c, $00                                     ; $59e8: $0e $00

jr_0a1_59ea:
    push de                                       ; $59ea: $d5
    ld c, d                                       ; $59eb: $4a
    jp z, $f555                                   ; $59ec: $ca $55 $f5

    ld l, d                                       ; $59ef: $6a
    xor d                                         ; $59f0: $aa
    ld h, l                                       ; $59f1: $65
    nop                                           ; $59f2: $00
    push af                                       ; $59f3: $f5
    ld [hl-], a                                   ; $59f4: $32
    db $fc                                        ; $59f5: $fc
    inc e                                         ; $59f6: $1c
    rst $30                                       ; $59f7: $f7
    rrca                                          ; $59f8: $0f
    db $fc                                        ; $59f9: $fc
    inc bc                                        ; $59fa: $03
    add b                                         ; $59fb: $80
    inc d                                         ; $59fc: $14
    ld [$bc5b], sp                                ; $59fd: $08 $5b $bc
    sub e                                         ; $5a00: $93
    ld e, h                                       ; $5a01: $5c
    scf                                           ; $5a02: $37
    cp b                                          ; $5a03: $b8
    rst $28                                       ; $5a04: $ef
    nop                                           ; $5a05: $00
    ldh a, [$df]                                  ; $5a06: $f0 $df
    ldh [$7f], a                                  ; $5a08: $e0 $7f
    add b                                         ; $5a0a: $80
    add sp, $17                                   ; $5a0b: $e8 $17
    or $04                                        ; $5a0d: $f6 $04
    add hl, bc                                    ; $5a0f: $09
    db $fd                                        ; $5a10: $fd

jr_0a1_5a11:
    ld [bc], a                                    ; $5a11: $02
    ld a, [$f005]                                 ; $5a12: $fa $05 $f0
    inc a                                         ; $5a15: $3c
    ccf                                           ; $5a16: $3f
    cp a                                          ; $5a17: $bf

jr_0a1_5a18:
    nop                                           ; $5a18: $00
    rra                                           ; $5a19: $1f
    rst $38                                       ; $5a1a: $ff
    and a                                         ; $5a1b: $a7
    ld e, a                                       ; $5a1c: $5f
    db $db                                        ; $5a1d: $db
    daa                                           ; $5a1e: $27
    or l                                          ; $5a1f: $b5
    ld c, e                                       ; $5a20: $4b
    db $10                                        ; $5a21: $10
    ld hl, sp+$07                                 ; $5a22: $f8 $07
    rst $38                                       ; $5a24: $ff
    ld [hl], b                                    ; $5a25: $70
    inc bc                                        ; $5a26: $03
    ld a, a                                       ; $5a27: $7f
    ld [bc], a                                    ; $5a28: $02
    ld d, a                                       ; $5a29: $57
    adc b                                         ; $5a2a: $88
    ld h, c                                       ; $5a2b: $61
    db $fd                                        ; $5a2c: $fd
    ld h, b                                       ; $5a2d: $60
    inc bc                                        ; $5a2e: $03
    ld d, b                                       ; $5a2f: $50
    dec de                                        ; $5a30: $1b
    db $fd                                        ; $5a31: $fd
    ld [bc], a                                    ; $5a32: $02
    ld e, a                                       ; $5a33: $5f
    ld [hl+], a                                   ; $5a34: $22
    call nz, Call_0a1_6003                        ; $5a35: $c4 $03 $60
    adc d                                         ; $5a38: $8a
    stop                                          ; $5a39: $10 $00
    add b                                         ; $5a3b: $80
    inc de                                        ; $5a3c: $13
    sbc a                                         ; $5a3d: $9f
    ld a, a                                       ; $5a3e: $7f
    ld c, a                                       ; $5a3f: $4f
    cp a                                          ; $5a40: $bf
    and e                                         ; $5a41: $a3
    nop                                           ; $5a42: $00
    ld e, e                                       ; $5a43: $5b
    pop de                                        ; $5a44: $d1
    dec l                                         ; $5a45: $2d
    db $ec                                        ; $5a46: $ec
    inc de                                        ; $5a47: $13
    ld a, [$fc05]                                 ; $5a48: $fa $05 $fc
    ld b, b                                       ; $5a4b: $40
    inc bc                                        ; $5a4c: $03
    inc l                                         ; $5a4d: $2c
    dec bc                                        ; $5a4e: $0b
    rst $38                                       ; $5a4f: $ff
    nop                                           ; $5a50: $00
    rst $18                                       ; $5a51: $df
    jr nz, jr_0a1_5a11                            ; $5a52: $20 $bd

    ld b, d                                       ; $5a54: $42
    nop                                           ; $5a55: $00
    ei                                            ; $5a56: $fb
    inc b                                         ; $5a57: $04
    rst $10                                       ; $5a58: $d7
    jr z, jr_0a1_5a18                             ; $5a59: $28 $bd

    ld b, d                                       ; $5a5b: $42
    ld e, e                                       ; $5a5c: $5b
    and h                                         ; $5a5d: $a4
    nop                                           ; $5a5e: $00
    ld a, e                                       ; $5a5f: $7b
    add h                                         ; $5a60: $84
    rst $30                                       ; $5a61: $f7
    ld [$a05f], sp                                ; $5a62: $08 $5f $a0
    or l                                          ; $5a65: $b5
    ld c, d                                       ; $5a66: $4a
    nop                                           ; $5a67: $00
    dec bc                                        ; $5a68: $0b
    db $f4                                        ; $5a69: $f4
    rlca                                          ; $5a6a: $07
    ld hl, sp+$0b                                 ; $5a6b: $f8 $0b
    db $f4                                        ; $5a6d: $f4
    dec d                                         ; $5a6e: $15
    ld l, d                                       ; $5a6f: $6a
    ld [$fefd], sp                                ; $5a70: $08 $fd $fe
    ld a, [$c4fd]                                 ; $5a73: $fa $fd $c4
    rrca                                          ; $5a76: $0f
    push hl                                       ; $5a77: $e5
    ld a, [$10d7]                                 ; $5a78: $fa $d7 $10
    add sp, -$51                                  ; $5a7b: $e8 $af
    ret nc                                        ; $5a7d: $d0

    xor l                                         ; $5a7e: $ad
    rlca                                          ; $5a7f: $07
    rst $38                                       ; $5a80: $ff
    cp $fe                                        ; $5a81: $fe $fe
    cp $40                                        ; $5a83: $fe $40

jr_0a1_5a85:
    rst $38                                       ; $5a85: $ff
    ld d, $00                                     ; $5a86: $16 $00
    ld sp, hl                                     ; $5a88: $f9
    ld sp, hl                                     ; $5a89: $f9
    cp $f2                                        ; $5a8a: $fe $f2
    push af                                       ; $5a8c: $f5
    push af                                       ; $5a8d: $f5
    inc e                                         ; $5a8e: $1c
    ld a, [$d02f]                                 ; $5a8f: $fa $2f $d0
    ld a, [hl]                                    ; $5a92: $7e
    dec c                                         ; $5a93: $0d
    add d                                         ; $5a94: $82
    dec c                                         ; $5a95: $0d
    adc [hl]                                      ; $5a96: $8e
    dec c                                         ; $5a97: $0d
    rst $38                                       ; $5a98: $ff
    nop                                           ; $5a99: $00
    nop                                           ; $5a9a: $00
    ld [$d7f5], a                                 ; $5a9b: $ea $f5 $d7
    ret z                                         ; $5a9e: $c8

    jp z, $9ff5                                   ; $5a9f: $ca $f5 $9f

    and b                                         ; $5aa2: $a0
    nop                                           ; $5aa3: $00
    xor e                                         ; $5aa4: $ab
    call nc, $807f                                ; $5aa5: $d4 $7f $80
    xor e                                         ; $5aa8: $ab
    ld d, h                                       ; $5aa9: $54
    ld e, l                                       ; $5aaa: $5d
    and d                                         ; $5aab: $a2
    add d                                         ; $5aac: $82
    inc l                                         ; $5aad: $2c
    nop                                           ; $5aae: $00
    db $fc                                        ; $5aaf: $fc
    db $fc                                        ; $5ab0: $fc
    rst $38                                       ; $5ab1: $ff
    ld sp, hl                                     ; $5ab2: $f9
    ld a, [$0046]                                 ; $5ab3: $fa $46 $00
    ld a, [c]                                     ; $5ab6: $f2
    nop                                           ; $5ab7: $00
    ldh a, [rIE]                                  ; $5ab8: $f0 $ff
    push hl                                       ; $5aba: $e5
    ld [$54ab], a                                 ; $5abb: $ea $ab $54
    ld [hl], a                                    ; $5abe: $77
    adc b                                         ; $5abf: $88
    nop                                           ; $5ac0: $00
    xor a                                         ; $5ac1: $af
    ld d, b                                       ; $5ac2: $50
    ld a, a                                       ; $5ac3: $7f
    add b                                         ; $5ac4: $80
    rst $38                                       ; $5ac5: $ff
    nop                                           ; $5ac6: $00
    ld a, a                                       ; $5ac7: $7f
    add b                                         ; $5ac8: $80
    jr c, jr_0a1_5a85                             ; $5ac9: $38 $ba

    ld b, l                                       ; $5acb: $45
    inc [hl]                                      ; $5acc: $34
    jr @-$11                                      ; $5acd: $18 $ed

    rrca                                          ; $5acf: $0f

jr_0a1_5ad0:
    or [hl]                                       ; $5ad0: $b6
    dec bc                                        ; $5ad1: $0b
    db $fd                                        ; $5ad2: $fd
    ld [bc], a                                    ; $5ad3: $02
    cp $70                                        ; $5ad4: $fe $70
    ld bc, $55cc                                  ; $5ad6: $01 $cc $55
    ld c, [hl]                                    ; $5ad9: $4e
    inc sp                                        ; $5ada: $33
    inc b                                         ; $5adb: $04
    jr @-$07                                      ; $5adc: $18 $f7

    ld [$05fa], sp                                ; $5ade: $08 $fa $05
    jr nz, jr_0a1_5ad0                            ; $5ae1: $20 $ed

    ld [de], a                                    ; $5ae3: $12
    ld b, $08                                     ; $5ae4: $06 $08
    ld d, l                                       ; $5ae6: $55
    xor d                                         ; $5ae7: $aa
    and b                                         ; $5ae8: $a0
    ld e, a                                       ; $5ae9: $5f
    ld d, c                                       ; $5aea: $51
    inc b                                         ; $5aeb: $04
    xor a                                         ; $5aec: $af
    add d                                         ; $5aed: $82
    ld a, [hl]                                    ; $5aee: $7e
    ld b, h                                       ; $5aef: $44
    cp h                                          ; $5af0: $bc
    ld a, $28                                     ; $5af1: $3e $28
    ei                                            ; $5af3: $fb
    inc b                                         ; $5af4: $04
    nop                                           ; $5af5: $00
    db $ed                                        ; $5af6: $ed
    ld [de], a                                    ; $5af7: $12
    or $09                                        ; $5af8: $f6 $09
    xor $11                                       ; $5afa: $ee $11
    call nc, $002b                                ; $5afc: $d4 $2b $00
    ld [$b815], a                                 ; $5aff: $ea $15 $b8
    ld b, a                                       ; $5b02: $47

jr_0a1_5b03:
    ret z                                         ; $5b03: $c8

    ld [hl], $20                                  ; $5b04: $36 $20
    db $dd                                        ; $5b06: $dd
    nop                                           ; $5b07: $00
    sub b                                         ; $5b08: $90
    ld l, d                                       ; $5b09: $6a
    ld [$90fc], sp                                ; $5b0a: $08 $fc $90
    ld [hl], b                                    ; $5b0d: $70
    ld [$06f8], sp                                ; $5b0e: $08 $f8 $06
    db $10                                        ; $5b11: $10
    ldh a, [rP1]                                  ; $5b12: $f0 $00
    ret nz                                        ; $5b14: $c0

    nop                                           ; $5b15: $00
    and d                                         ; $5b16: $a2
    inc sp                                        ; $5b17: $33
    ld l, d                                       ; $5b18: $6a
    jr c, @+$01                                   ; $5b19: $38 $ff

    nop                                           ; $5b1b: $00
    nop                                           ; $5b1c: $00
    ld a, [$f805]                                 ; $5b1d: $fa $05 $f8
    rlca                                          ; $5b20: $07
    ld a, [c]                                     ; $5b21: $f2
    dec c                                         ; $5b22: $0d
    add sp, $00                                   ; $5b23: $e8 $00
    rla                                           ; $5b25: $17
    ld d, b                                       ; $5b26: $50
    xor a                                         ; $5b27: $af
    and c                                         ; $5b28: $a1
    ld e, a                                       ; $5b29: $5f
    jp z, $2436                                   ; $5b2a: $ca $36 $24

    ld de, $88dc                                  ; $5b2d: $11 $dc $88
    ld a, b                                       ; $5b30: $78
    call nc, $e003                                ; $5b31: $d4 $03 $e0
    ld b, b                                       ; $5b34: $40
    ret nz                                        ; $5b35: $c0

    ret nc                                        ; $5b36: $d0

    ld c, e                                       ; $5b37: $4b
    nop                                           ; $5b38: $00
    db $ec                                        ; $5b39: $ec
    inc de                                        ; $5b3a: $13
    db $f4                                        ; $5b3b: $f4
    dec bc                                        ; $5b3c: $0b
    xor b                                         ; $5b3d: $a8
    ld d, a                                       ; $5b3e: $57
    pop de                                        ; $5b3f: $d1
    cpl                                           ; $5b40: $2f
    nop                                           ; $5b41: $00
    ldh [rNR32], a                                ; $5b42: $e0 $1c
    and b                                         ; $5b44: $a0
    ld e, d                                       ; $5b45: $5a
    add b                                         ; $5b46: $80
    ld a, h                                       ; $5b47: $7c
    ret nz                                        ; $5b48: $c0

    jr c, jr_0a1_5b03                             ; $5b49: $38 $b8

    ld d, b                                       ; $5b4b: $50
    dec c                                         ; $5b4c: $0d
    ld d, l                                       ; $5b4d: $55
    ret nz                                        ; $5b4e: $c0

    inc c                                         ; $5b4f: $0c
    or b                                          ; $5b50: $b0
    inc c                                         ; $5b51: $0c
    ld d, b                                       ; $5b52: $50
    dec b                                         ; $5b53: $05
    ld [c], a                                     ; $5b54: $e2
    db $fd                                        ; $5b55: $fd
    push de                                       ; $5b56: $d5
    nop                                           ; $5b57: $00
    jp z, $f5ca                                   ; $5b58: $ca $ca $f5

    sub l                                         ; $5b5b: $95
    xor d                                         ; $5b5c: $aa
    xor d                                         ; $5b5d: $aa
    push de                                       ; $5b5e: $d5
    dec d                                         ; $5b5f: $15
    nop                                           ; $5b60: $00
    ld l, d                                       ; $5b61: $6a
    ld [$55f7], sp                                ; $5b62: $08 $f7 $55
    xor d                                         ; $5b65: $aa
    cp a                                          ; $5b66: $bf
    ld b, b                                       ; $5b67: $40
    rst $30                                       ; $5b68: $f7
    ld bc, $ef08                                  ; $5b69: $01 $08 $ef
    db $10                                        ; $5b6c: $10
    ld a, a                                       ; $5b6d: $7f
    add b                                         ; $5b6e: $80
    cp [hl]                                       ; $5b6f: $be
    ld b, c                                       ; $5b70: $41
    and d                                         ; $5b71: $a2
    inc c                                         ; $5b72: $0c
    ld hl, $807f                                  ; $5b73: $21 $7f $80
    or h                                          ; $5b76: $b4
    ld [$0bf4], sp                                ; $5b77: $08 $f4 $0b
    ld a, [c]                                     ; $5b7a: $f2
    dec c                                         ; $5b7b: $0d
    ld b, h                                       ; $5b7c: $44
    ld [$e208], sp                                ; $5b7d: $08 $08 $e2
    ld e, $c0                                     ; $5b80: $1e $c0
    jr c, jr_0a1_5bc2                             ; $5b82: $38 $3e

    add hl, bc                                    ; $5b84: $09
    db $fc                                        ; $5b85: $fc
    db $fd                                        ; $5b86: $fd
    db $fd                                        ; $5b87: $fd
    ld d, b                                       ; $5b88: $50
    cp $14                                        ; $5b89: $fe $14
    add hl, bc                                    ; $5b8b: $09
    ld hl, sp-$74                                 ; $5b8c: $f8 $8c
    rlca                                          ; $5b8e: $07
    ld [hl+], a                                   ; $5b8f: $22
    db $dd                                        ; $5b90: $dd
    ld d, l                                       ; $5b91: $55
    xor d                                         ; $5b92: $aa
    nop                                           ; $5b93: $00
    ld a, [bc]                                    ; $5b94: $0a
    push af                                       ; $5b95: $f5
    ld d, a                                       ; $5b96: $57
    xor b                                         ; $5b97: $a8
    ld a, [hl+]                                   ; $5b98: $2a
    push de                                       ; $5b99: $d5
    ld d, l                                       ; $5b9a: $55
    xor d                                         ; $5b9b: $aa
    add b                                         ; $5b9c: $80
    ld b, b                                       ; $5b9d: $40
    ld [$14eb], sp                                ; $5b9e: $08 $eb $14
    halt                                          ; $5ba1: $76
    adc c                                         ; $5ba2: $89
    rst $38                                       ; $5ba3: $ff
    nop                                           ; $5ba4: $00
    ld e, [hl]                                    ; $5ba5: $5e
    nop                                           ; $5ba6: $00

jr_0a1_5ba7:
    and c                                         ; $5ba7: $a1
    xor e                                         ; $5ba8: $ab
    ld d, h                                       ; $5ba9: $54
    rst $38                                       ; $5baa: $ff
    nop                                           ; $5bab: $00
    xor d                                         ; $5bac: $aa
    ld d, l                                       ; $5bad: $55
    ld a, h                                       ; $5bae: $7c
    nop                                           ; $5baf: $00
    add e                                         ; $5bb0: $83
    add b                                         ; $5bb1: $80
    ld [hl], h                                    ; $5bb2: $74
    add b                                         ; $5bb3: $80
    ld a, b                                       ; $5bb4: $78
    nop                                           ; $5bb5: $00
    ldh a, [$a0]                                  ; $5bb6: $f0 $a0
    jr @+$62                                      ; $5bb8: $18 $60

    add b                                         ; $5bba: $80
    jr nz, @-$38                                  ; $5bbb: $20 $c6

    ld [$0560], sp                                ; $5bbd: $08 $60 $05
    rst $30                                       ; $5bc0: $f7
    db $f4                                        ; $5bc1: $f4

jr_0a1_5bc2:
    ei                                            ; $5bc2: $fb
    nop                                           ; $5bc3: $00
    ldh a, [$f7]                                  ; $5bc4: $f0 $f7
    push hl                                       ; $5bc6: $e5
    ld [$ffe0], a                                 ; $5bc7: $ea $e0 $ff
    db $e4                                        ; $5bca: $e4
    db $eb                                        ; $5bcb: $eb
    add hl, bc                                    ; $5bcc: $09
    ret nz                                        ; $5bcd: $c0

    rst $18                                       ; $5bce: $df
    call nz, $40db                                ; $5bcf: $c4 $db $40
    jr jr_0a1_5c29                                ; $5bd2: $18 $55

    xor d                                         ; $5bd4: $aa
    ld b, b                                       ; $5bd5: $40
    jr z, jr_0a1_5bd8                             ; $5bd6: $28 $00

jr_0a1_5bd8:
    xor c                                         ; $5bd8: $a9
    ld d, a                                       ; $5bd9: $57
    ld [hl], b                                    ; $5bda: $70
    adc h                                         ; $5bdb: $8c
    and b                                         ; $5bdc: $a0

jr_0a1_5bdd:
    ld e, [hl]                                    ; $5bdd: $5e
    ld d, b                                       ; $5bde: $50
    xor h                                         ; $5bdf: $ac
    nop                                           ; $5be0: $00
    and b                                         ; $5be1: $a0
    ld e, b                                       ; $5be2: $58
    ld l, b                                       ; $5be3: $68
    sbc b                                         ; $5be4: $98
    jr nz, jr_0a1_5ba7                            ; $5be5: $20 $c0

    nop                                           ; $5be7: $00
    ldh a, [rP1]                                  ; $5be8: $f0 $00
    ret nz                                        ; $5bea: $c0

    rst $38                                       ; $5beb: $ff
    sub c                                         ; $5bec: $91
    xor [hl]                                      ; $5bed: $ae
    add b                                         ; $5bee: $80
    cp a                                          ; $5bef: $bf
    add l                                         ; $5bf0: $85
    ld a, [$800a]                                 ; $5bf1: $fa $0a $80
    rst $38                                       ; $5bf4: $ff
    inc b                                         ; $5bf5: $04
    ld a, e                                       ; $5bf6: $7b
    inc hl                                        ; $5bf7: $23
    rlca                                          ; $5bf8: $07
    ld a, a                                       ; $5bf9: $7f
    ld [hl], b                                    ; $5bfa: $70
    jr jr_0a1_5c51                                ; $5bfb: $18 $54

    nop                                           ; $5bfd: $00
    xor e                                         ; $5bfe: $ab
    ld a, [hl+]                                   ; $5bff: $2a
    call nc, $ab54                                ; $5c00: $d4 $54 $ab
    add hl, bc                                    ; $5c03: $09
    rst $30                                       ; $5c04: $f7
    ld d, d                                       ; $5c05: $52
    ld b, $ae                                     ; $5c06: $06 $ae
    add b                                         ; $5c08: $80
    ld h, b                                       ; $5c09: $60
    nop                                           ; $5c0a: $00
    ret nz                                        ; $5c0b: $c0

    ld a, [c]                                     ; $5c0c: $f2
    db $10                                        ; $5c0d: $10
    ldh a, [rNR51]                                ; $5c0e: $f0 $25
    push af                                       ; $5c10: $f5
    ld [hl+], a                                   ; $5c11: $22
    ld [bc], a                                    ; $5c12: $02
    rst $18                                       ; $5c13: $df
    jr nc, jr_0a1_5c18                            ; $5c14: $30 $02

    rst $38                                       ; $5c16: $ff
    ld a, [bc]                                    ; $5c17: $0a

jr_0a1_5c18:
    db $dd                                        ; $5c18: $dd
    jr nc, jr_0a1_5c1d                            ; $5c19: $30 $02

    ld [hl], l                                    ; $5c1b: $75
    sbc b                                         ; $5c1c: $98

jr_0a1_5c1d:
    jr nc, jr_0a1_5c25                            ; $5c1d: $30 $06

    nop                                           ; $5c1f: $00
    ldh a, [rNR43]                                ; $5c20: $f0 $22
    jr nc, jr_0a1_5bdd                            ; $5c22: $30 $b9

    rla                                           ; $5c24: $17

jr_0a1_5c25:
    ld b, d                                       ; $5c25: $42
    ld a, [hl]                                    ; $5c26: $7e
    sub l                                         ; $5c27: $95
    nop                                           ; $5c28: $00

jr_0a1_5c29:
    db $eb                                        ; $5c29: $eb
    cp d                                          ; $5c2a: $ba
    push bc                                       ; $5c2b: $c5
    inc e                                         ; $5c2c: $1c
    db $e3                                        ; $5c2d: $e3
    cp a                                          ; $5c2e: $bf
    pop bc                                        ; $5c2f: $c1
    inc e                                         ; $5c30: $1c
    ld [$bde3], sp                                ; $5c31: $08 $e3 $bd
    jp Jump_000_04df                              ; $5c34: $c3 $df $04


    nop                                           ; $5c37: $00
    rra                                           ; $5c38: $1f
    pop hl                                        ; $5c39: $e1
    cp l                                          ; $5c3a: $bd
    add hl, bc                                    ; $5c3b: $09
    jp $e19f                                      ; $5c3c: $c3 $9f $e1


    cp h                                          ; $5c3f: $bc
    inc b                                         ; $5c40: $04
    db $10                                        ; $5c41: $10
    rst $18                                       ; $5c42: $df
    db $e3                                        ; $5c43: $e3
    ld [hl], b                                    ; $5c44: $70
    ld b, $c0                                     ; $5c45: $06 $c0
    ret nc                                        ; $5c47: $d0

    dec b                                         ; $5c48: $05
    add b                                         ; $5c49: $80
    ld [bc], a                                    ; $5c4a: $02
    and b                                         ; $5c4b: $a0
    db $fd                                        ; $5c4c: $fd
    and b                                         ; $5c4d: $a0
    ld [hl], l                                    ; $5c4e: $75
    adc d                                         ; $5c4f: $8a
    rst $10                                       ; $5c50: $d7

jr_0a1_5c51:
    nop                                           ; $5c51: $00
    add b                                         ; $5c52: $80
    db $d3                                        ; $5c53: $d3
    rst $38                                       ; $5c54: $ff
    pop hl                                        ; $5c55: $e1
    rst $38                                       ; $5c56: $ff
    jp nz, $81fd                                  ; $5c57: $c2 $fd $81

    ld [$c3fe], sp                                ; $5c5a: $08 $fe $c3
    db $fc                                        ; $5c5d: $fc
    add c                                         ; $5c5e: $81
    rst $08                                       ; $5c5f: $cf
    dec b                                         ; $5c60: $05
    add e                                         ; $5c61: $83
    db $fc                                        ; $5c62: $fc
    sbc l                                         ; $5c63: $9d
    jr nz, @+$25                                  ; $5c64: $20 $23

    ld l, e                                       ; $5c66: $6b
    ret nz                                        ; $5c67: $c0

    ld e, $f0                                     ; $5c68: $1e $f0
    or [hl]                                       ; $5c6a: $b6
    ld h, b                                       ; $5c6b: $60
    ld l, l                                       ; $5c6c: $6d
    ret nz                                        ; $5c6d: $c0

    nop                                           ; $5c6e: $00
    sbc d                                         ; $5c6f: $9a
    push hl                                       ; $5c70: $e5
    add c                                         ; $5c71: $81
    cp $82                                        ; $5c72: $fe $82
    db $fd                                        ; $5c74: $fd
    ret nz                                        ; $5c75: $c0

    rst $38                                       ; $5c76: $ff
    dec d                                         ; $5c77: $15
    add c                                         ; $5c78: $81
    cp $c0                                        ; $5c79: $fe $c0
    ld e, e                                       ; $5c7b: $5b
    ld [bc], a                                    ; $5c7c: $02
    add b                                         ; $5c7d: $80
    ld c, b                                       ; $5c7e: $48
    ld b, $fc                                     ; $5c7f: $06 $fc
    ld [bc], a                                    ; $5c81: $02
    db $10                                        ; $5c82: $10
    rlca                                          ; $5c83: $07
    ld hl, sp-$01                                 ; $5c84: $f8 $ff
    db $fd                                        ; $5c86: $fd
    rst $38                                       ; $5c87: $ff
    ld a, [$0004]                                 ; $5c88: $fa $04 $00
    ld l, [hl]                                    ; $5c8b: $6e
    ld [bc], a                                    ; $5c8c: $02
    ld [$0500], sp                                ; $5c8d: $08 $00 $05
    ld a, [c]                                     ; $5c90: $f2
    rst $38                                       ; $5c91: $ff
    or $ff                                        ; $5c92: $f6 $ff
    ei                                            ; $5c94: $fb
    inc c                                         ; $5c95: $0c
    db $10                                        ; $5c96: $10

jr_0a1_5c97:
    db $f4                                        ; $5c97: $f4
    jr nz, jr_0a1_5c9a                            ; $5c98: $20 $00

jr_0a1_5c9a:
    ld b, b                                       ; $5c9a: $40
    or $0e                                        ; $5c9b: $f6 $0e
    nop                                           ; $5c9d: $00
    rst $38                                       ; $5c9e: $ff
    rst $38                                       ; $5c9f: $ff
    pop af                                        ; $5ca0: $f1
    rst $38                                       ; $5ca1: $ff
    and $f9                                       ; $5ca2: $e6 $f9
    nop                                           ; $5ca4: $00
    db $eb                                        ; $5ca5: $eb
    db $f4                                        ; $5ca6: $f4
    db $e3                                        ; $5ca7: $e3
    db $fc                                        ; $5ca8: $fc
    cp $ff                                        ; $5ca9: $fe $ff
    add a                                         ; $5cab: $87
    rst $38                                       ; $5cac: $ff
    nop                                           ; $5cad: $00
    dec sp                                        ; $5cae: $3b
    rst $00                                       ; $5caf: $c7
    dec d                                         ; $5cb0: $15
    db $eb                                        ; $5cb1: $eb
    add hl, hl                                    ; $5cb2: $29
    rst $10                                       ; $5cb3: $d7
    add l                                         ; $5cb4: $85
    ei                                            ; $5cb5: $fb
    nop                                           ; $5cb6: $00
    ld b, c                                       ; $5cb7: $41
    rst $38                                       ; $5cb8: $ff
    xor e                                         ; $5cb9: $ab
    rst $38                                       ; $5cba: $ff
    jr nz, jr_0a1_5c97                            ; $5cbb: $20 $da

    ld d, b                                       ; $5cbd: $50
    xor h                                         ; $5cbe: $ac
    nop                                           ; $5cbf: $00
    inc b                                         ; $5cc0: $04
    db $fc                                        ; $5cc1: $fc
    ld c, b                                       ; $5cc2: $48
    cp b                                          ; $5cc3: $b8
    jr nz, @-$36                                  ; $5cc4: $20 $c8

    ld b, b                                       ; $5cc6: $40
    or b                                          ; $5cc7: $b0
    nop                                           ; $5cc8: $00
    db $10                                        ; $5cc9: $10
    ldh a, [$60]                                  ; $5cca: $f0 $60
    and b                                         ; $5ccc: $a0
    ld a, a                                       ; $5ccd: $7f
    rst $38                                       ; $5cce: $ff
    ld b, c                                       ; $5ccf: $41
    rst $38                                       ; $5cd0: $ff
    nop                                           ; $5cd1: $00
    ld d, l                                       ; $5cd2: $55
    db $eb                                        ; $5cd3: $eb
    jp hl                                         ; $5cd4: $e9


    rst $10                                       ; $5cd5: $d7
    pop de                                        ; $5cd6: $d1
    rst $28                                       ; $5cd7: $ef
    jp Jump_0a1_49ff                              ; $5cd8: $c3 $ff $49


    ld h, l                                       ; $5cdb: $65
    ld b, [hl]                                    ; $5cdc: $46
    nop                                           ; $5cdd: $00
    nop                                           ; $5cde: $00
    and b                                         ; $5cdf: $a0
    ldh a, [$60]                                  ; $5ce0: $f0 $60
    ld a, [bc]                                    ; $5ce2: $0a
    rst $38                                       ; $5ce3: $ff
    add b                                         ; $5ce4: $80
    rlca                                          ; $5ce5: $07
    ld c, b                                       ; $5ce6: $48
    ld a, l                                       ; $5ce7: $7d
    ld a, d                                       ; $5ce8: $7a
    rlca                                          ; $5ce9: $07
    push af                                       ; $5cea: $f5
    ld [hl+], a                                   ; $5ceb: $22
    add b                                         ; $5cec: $80
    ld c, $1f                                     ; $5ced: $0e $1f
    rst $38                                       ; $5cef: $ff
    ld l, [hl]                                    ; $5cf0: $6e
    nop                                           ; $5cf1: $00
    sbc [hl]                                      ; $5cf2: $9e
    or [hl]                                       ; $5cf3: $b6
    ld c, [hl]                                    ; $5cf4: $4e
    ld a, [hl-]                                   ; $5cf5: $3a
    add $13                                       ; $5cf6: $c6 $13
    rst $28                                       ; $5cf8: $ef
    db $e3                                        ; $5cf9: $e3
    ld [$1bff], sp                                ; $5cfa: $08 $ff $1b
    rst $38                                       ; $5cfd: $ff
    rlca                                          ; $5cfe: $07
    ld hl, sp+$03                                 ; $5cff: $f8 $03
    inc bc                                        ; $5d01: $03
    rst $38                                       ; $5d02: $ff
    add e                                         ; $5d03: $83
    ld [$57ff], sp                                ; $5d04: $08 $ff $57
    rst $38                                       ; $5d07: $ff
    rst $28                                       ; $5d08: $ef
    rst $18                                       ; $5d09: $df
    ld b, $7e                                     ; $5d0a: $06 $7e
    rst $38                                       ; $5d0c: $ff
    ld l, a                                       ; $5d0d: $6f
    nop                                           ; $5d0e: $00
    rst $38                                       ; $5d0f: $ff
    ret nz                                        ; $5d10: $c0

    ret nz                                        ; $5d11: $c0

    cp c                                          ; $5d12: $b9
    ld sp, hl                                     ; $5d13: $f9
    ld c, [hl]                                    ; $5d14: $4e
    rst $38                                       ; $5d15: $ff
    add [hl]                                      ; $5d16: $86
    nop                                           ; $5d17: $00
    rst $38                                       ; $5d18: $ff
    push bc                                       ; $5d19: $c5
    rst $38                                       ; $5d1a: $ff
    and a                                         ; $5d1b: $a7
    rst $38                                       ; $5d1c: $ff
    rst $18                                       ; $5d1d: $df
    rst $38                                       ; $5d1e: $ff
    di                                            ; $5d1f: $f3
    nop                                           ; $5d20: $00
    rst $38                                       ; $5d21: $ff
    ldh a, [$f0]                                  ; $5d22: $f0 $f0
    inc c                                         ; $5d24: $0c
    db $fc                                        ; $5d25: $fc
    ld [hl], d                                    ; $5d26: $72
    adc [hl]                                      ; $5d27: $8e
    cp c                                          ; $5d28: $b9
    inc bc                                        ; $5d29: $03
    ld b, a                                       ; $5d2a: $47
    ld d, c                                       ; $5d2b: $51
    xor a                                         ; $5d2c: $af
    add hl, bc                                    ; $5d2d: $09
    rst $30                                       ; $5d2e: $f7
    add c                                         ; $5d2f: $81
    add b                                         ; $5d30: $80
    nop                                           ; $5d31: $00
    call nz, Call_0a1_5008                        ; $5d32: $c4 $08 $50
    and b                                         ; $5d35: $a0
    inc b                                         ; $5d36: $04
    db $10                                        ; $5d37: $10
    call nc, Call_000_10c2                        ; $5d38: $d4 $c2 $10
    push hl                                       ; $5d3b: $e5
    ld a, [$fdf2]                                 ; $5d3c: $fa $f2 $fd
    nop                                           ; $5d3f: $00
    ld sp, hl                                     ; $5d40: $f9
    cp $f4                                        ; $5d41: $fe $f4
    rst $38                                       ; $5d43: $ff
    ld [$e7ff], a                                 ; $5d44: $ea $ff $e7
    rst $38                                       ; $5d47: $ff
    dec b                                         ; $5d48: $05
    db $e4                                        ; $5d49: $e4
    rst $38                                       ; $5d4a: $ff
    jp hl                                         ; $5d4b: $e9


    cp $ec                                        ; $5d4c: $fe $ec
    ld a, [bc]                                    ; $5d4e: $0a
    nop                                           ; $5d4f: $00
    db $ed                                        ; $5d50: $ed
    sub $00                                       ; $5d51: $d6 $00
    ld d, $e7                                     ; $5d53: $16 $e7
    rst $38                                       ; $5d55: $ff
    db $e3                                        ; $5d56: $e3
    ld a, $00                                     ; $5d57: $3e $00
    ld a, [c]                                     ; $5d59: $f2
    ret c                                         ; $5d5a: $d8

    nop                                           ; $5d5b: $00
    adc $08                                       ; $5d5c: $ce $08
    di                                            ; $5d5e: $f3
    adc a                                         ; $5d5f: $8f
    ret nc                                        ; $5d60: $d0

    nop                                           ; $5d61: $00
    ld hl, sp-$01                                 ; $5d62: $f8 $ff
    push af                                       ; $5d64: $f5
    db $f4                                        ; $5d65: $f4
    nop                                           ; $5d66: $00
    ld e, h                                       ; $5d67: $5c
    inc bc                                        ; $5d68: $03
    db $f4                                        ; $5d69: $f4
    nop                                           ; $5d6a: $00
    ld c, h                                       ; $5d6b: $4c
    rrca                                          ; $5d6c: $0f
    ld b, c                                       ; $5d6d: $41
    ei                                            ; $5d6e: $fb
    inc c                                         ; $5d6f: $0c
    ld de, $ef53                                  ; $5d70: $11 $53 $ef
    ld e, d                                       ; $5d73: $5a
    rst $20                                       ; $5d74: $e7
    ld b, l                                       ; $5d75: $45
    jp c, RST_00                                  ; $5d76: $da $00 $00

    pop af                                        ; $5d79: $f1
    rst $38                                       ; $5d7a: $ff
    ld c, e                                       ; $5d7b: $4b
    cp a                                          ; $5d7c: $bf
    or a                                          ; $5d7d: $b7
    ld c, a                                       ; $5d7e: $4f
    ld e, e                                       ; $5d7f: $5b
    and a                                         ; $5d80: $a7
    nop                                           ; $5d81: $00
    ret z                                         ; $5d82: $c8

    rst $30                                       ; $5d83: $f7
    sbc [hl]                                      ; $5d84: $9e
    pop hl                                        ; $5d85: $e1
    add l                                         ; $5d86: $85
    ld a, [$f7c8]                                 ; $5d87: $fa $c8 $f7
    inc b                                         ; $5d8a: $04
    pop af                                        ; $5d8b: $f1
    rst $38                                       ; $5d8c: $ff
    cp [hl]                                       ; $5d8d: $be
    rst $38                                       ; $5d8e: $ff
    rst $08                                       ; $5d8f: $cf
    add h                                         ; $5d90: $84
    nop                                           ; $5d91: $00
    rst $10                                       ; $5d92: $d7
    rst $38                                       ; $5d93: $ff
    inc b                                         ; $5d94: $04
    ld a, [hl]                                    ; $5d95: $7e
    cp $7e                                        ; $5d96: $fe $7e
    cp $83                                        ; $5d98: $fe $83
    and [hl]                                      ; $5d9a: $a6
    inc b                                         ; $5d9b: $04
    add c                                         ; $5d9c: $81
    rst $38                                       ; $5d9d: $ff
    ld h, b                                       ; $5d9e: $60

jr_0a1_5d9f:
    ld d, c                                       ; $5d9f: $51
    add e                                         ; $5da0: $83
    rlca                                          ; $5da1: $07
    nop                                           ; $5da2: $00
    ld b, $06                                     ; $5da3: $06 $06
    sub $2c                                       ; $5da5: $d6 $2c
    xor c                                         ; $5da7: $a9
    ld e, [hl]                                    ; $5da8: $5e
    db $10                                        ; $5da9: $10
    ld e, [hl]                                    ; $5daa: $5e
    or a                                          ; $5dab: $b7
    or a                                          ; $5dac: $b7
    add b                                         ; $5dad: $80
    dec b                                         ; $5dae: $05
    jp c, $23a1                                   ; $5daf: $da $a1 $23

    rst $18                                       ; $5db2: $df
    inc b                                         ; $5db3: $04
    dec b                                         ; $5db4: $05
    rst $38                                       ; $5db5: $ff
    ld c, e                                       ; $5db6: $4b
    rst $38                                       ; $5db7: $ff
    cp l                                          ; $5db8: $bd
    ld b, b                                       ; $5db9: $40
    ld bc, $ff8f                                  ; $5dba: $01 $8f $ff
    ld b, b                                       ; $5dbd: $40
    dec b                                         ; $5dbe: $05
    add $04                                       ; $5dbf: $c6 $04
    add $ff                                       ; $5dc1: $c6 $ff
    add h                                         ; $5dc3: $84
    rst $38                                       ; $5dc4: $ff
    sub $ff                                       ; $5dc5: $d6 $ff
    ld b, b                                       ; $5dc7: $40
    xor l                                         ; $5dc8: $ad
    ld e, b                                       ; $5dc9: $58
    ld bc, $ffbf                                  ; $5dca: $01 $bf $ff
    ld h, b                                       ; $5dcd: $60
    rst $38                                       ; $5dce: $ff
    xor a                                         ; $5dcf: $af
    ldh a, [rP1]                                  ; $5dd0: $f0 $00
    ld l, e                                       ; $5dd2: $6b
    sub a                                         ; $5dd3: $97
    cp l                                          ; $5dd4: $bd
    ld b, e                                       ; $5dd5: $43
    ld d, l                                       ; $5dd6: $55
    xor e                                         ; $5dd7: $ab
    ld bc, $40ff                                  ; $5dd8: $01 $ff $40
    xor c                                         ; $5ddb: $a9
    ld c, d                                       ; $5ddc: $4a
    nop                                           ; $5ddd: $00
    ld a, d                                       ; $5dde: $7a
    cp $22                                        ; $5ddf: $fe $22
    cp $e5                                        ; $5de1: $fe $e5
    inc de                                        ; $5de3: $13
    ld b, b                                       ; $5de4: $40
    bit 0, b                                      ; $5de5: $cb $40
    ld b, $ef                                     ; $5de7: $06 $ef
    dec de                                        ; $5de9: $1b
    db $dd                                        ; $5dea: $dd
    jr nc, jr_0a1_5d9f                            ; $5deb: $30 $b2

    ld l, c                                       ; $5ded: $69
    ld a, [bc]                                    ; $5dee: $0a
    ld h, l                                       ; $5def: $65
    jp nc, $81fe                                  ; $5df0: $d2 $fe $81

    cp $08                                        ; $5df3: $fe $08
    ld b, e                                       ; $5df5: $43
    ld e, b                                       ; $5df6: $58
    ld bc, $80f7                                  ; $5df7: $01 $f7 $80
    rst $18                                       ; $5dfa: $df
    rlca                                          ; $5dfb: $07
    rlca                                          ; $5dfc: $07
    rst $38                                       ; $5dfd: $ff
    ld [hl], a                                    ; $5dfe: $77
    adc e                                         ; $5dff: $8b
    rst $10                                       ; $5e00: $d7
    add sp, -$36                                  ; $5e01: $e8 $ca
    ld [bc], a                                    ; $5e03: $02
    push af                                       ; $5e04: $f5
    pop hl                                        ; $5e05: $e1
    rst $38                                       ; $5e06: $ff
    jp nc, $eeff                                  ; $5e07: $d2 $ff $ee

    and d                                         ; $5e0a: $a2
    ld bc, $0006                                  ; $5e0b: $01 $06 $00
    rst $38                                       ; $5e0e: $ff
    ld e, e                                       ; $5e0f: $5b
    and a                                         ; $5e10: $a7
    cp d                                          ; $5e11: $ba
    ld a, [hl]                                    ; $5e12: $7e
    cp $fe                                        ; $5e13: $fe $fe
    ld [bc], a                                    ; $5e15: $02
    nop                                           ; $5e16: $00
    cp $75                                        ; $5e17: $fe $75
    adc e                                         ; $5e19: $8b
    db $fd                                        ; $5e1a: $fd
    inc bc                                        ; $5e1b: $03
    dec d                                         ; $5e1c: $15
    db $eb                                        ; $5e1d: $eb
    add c                                         ; $5e1e: $81
    nop                                           ; $5e1f: $00
    rst $38                                       ; $5e20: $ff
    db $d3                                        ; $5e21: $d3
    rst $38                                       ; $5e22: $ff
    cp c                                          ; $5e23: $b9
    ld b, a                                       ; $5e24: $47
    dec b                                         ; $5e25: $05
    ei                                            ; $5e26: $fb
    and c                                         ; $5e27: $a1
    nop                                           ; $5e28: $00
    rst $38                                       ; $5e29: $ff
    ld [hl], e                                    ; $5e2a: $73
    rst $38                                       ; $5e2b: $ff
    adc l                                         ; $5e2c: $8d
    rst $38                                       ; $5e2d: $ff
    and a                                         ; $5e2e: $a7
    rst $18                                       ; $5e2f: $df
    sbc e                                         ; $5e30: $9b
    nop                                           ; $5e31: $00
    rst $20                                       ; $5e32: $e7
    ld c, e                                       ; $5e33: $4b
    rst $30                                       ; $5e34: $f7
    xor e                                         ; $5e35: $ab
    rst $10                                       ; $5e36: $d7
    jp nz, $a6ff                                  ; $5e37: $c2 $ff $a6

    ld a, [hl+]                                   ; $5e3a: $2a
    rst $38                                       ; $5e3b: $ff
    push de                                       ; $5e3c: $d5
    call nc, $8310                                ; $5e3d: $d4 $10 $83
    and h                                         ; $5e40: $a4
    nop                                           ; $5e41: $00
    ld a, a                                       ; $5e42: $7f
    ld d, h                                       ; $5e43: $54
    ld bc, $0002                                  ; $5e44: $01 $02 $00
    cp $42                                        ; $5e47: $fe $42
    cp $b2                                        ; $5e49: $fe $b2
    cp $6c                                        ; $5e4b: $fe $6c
    db $fc                                        ; $5e4d: $fc
    db $fc                                        ; $5e4e: $fc
    inc bc                                        ; $5e4f: $03
    db $fc                                        ; $5e50: $fc
    jp nz, $a5fe                                  ; $5e51: $c2 $fe $a5

    ld d, e                                       ; $5e54: $53
    ld l, e                                       ; $5e55: $6b
    or b                                          ; $5e56: $b0
    nop                                           ; $5e57: $00
    add b                                         ; $5e58: $80
    dec b                                         ; $5e59: $05
    nop                                           ; $5e5a: $00
    or h                                          ; $5e5b: $b4
    cp h                                          ; $5e5c: $bc
    pop hl                                        ; $5e5d: $e1
    ld [hl], c                                    ; $5e5e: $71
    jp z, $91c6                                   ; $5e5f: $ca $c6 $91

    ld d, d                                       ; $5e62: $52
    dec b                                         ; $5e63: $05
    xor a                                         ; $5e64: $af
    and h                                         ; $5e65: $a4
    ld e, h                                       ; $5e66: $5c
    ld c, b                                       ; $5e67: $48
    cp b                                          ; $5e68: $b8
    and [hl]                                      ; $5e69: $a6
    ld bc, $b440                                  ; $5e6a: $01 $40 $b4
    dec de                                        ; $5e6d: $1b
    nop                                           ; $5e6e: $00
    xor l                                         ; $5e6f: $ad
    inc de                                        ; $5e70: $13
    db $db                                        ; $5e71: $db
    ld h, $97                                     ; $5e72: $26 $97
    ld c, h                                       ; $5e74: $4c
    xor l                                         ; $5e75: $ad
    ld a, [de]                                    ; $5e76: $1a
    ld d, b                                       ; $5e77: $50
    ld e, d                                       ; $5e78: $5a
    jr nz, jr_0a1_5e99                            ; $5e79: $20 $1e

    add c                                         ; $5e7b: $81
    sub b                                         ; $5e7c: $90
    ld c, $b6                                     ; $5e7d: $0e $b6
    inc c                                         ; $5e7f: $0c
    ld l, a                                       ; $5e80: $6f
    jr @-$79                                      ; $5e81: $18 $85

    jr nz, jr_0a1_5e93                            ; $5e83: $20 $0e

    ld l, e                                       ; $5e85: $6b
    rst $00                                       ; $5e86: $c7
    sub $89                                       ; $5e87: $d6 $89
    jr nc, @+$08                                  ; $5e89: $30 $06

    sub [hl]                                      ; $5e8b: $96
    ld b, b                                       ; $5e8c: $40
    ld [$c083], sp                                ; $5e8d: $08 $83 $c0
    ld b, $60                                     ; $5e90: $06 $60
    ld l, l                                       ; $5e92: $6d

jr_0a1_5e93:
    jp nz, $85fa                                  ; $5e93: $c2 $fa $85

    ld b, b                                       ; $5e96: $40
    ld b, $50                                     ; $5e97: $06 $50

jr_0a1_5e99:
    ld [$5800], sp                                ; $5e99: $08 $00 $58
    ld e, d                                       ; $5e9c: $5a
    ld sp, $6ab4                                  ; $5e9d: $31 $b4 $6a
    ld l, c                                       ; $5ea0: $69
    call nc, Call_0a1_4092                        ; $5ea1: $d4 $92 $40
    jp hl                                         ; $5ea4: $e9


    ret nc                                        ; $5ea5: $d0

    ld c, $56                                     ; $5ea6: $0e $56
    inc l                                         ; $5ea8: $2c
    xor [hl]                                      ; $5ea9: $ae
    ld e, c                                       ; $5eaa: $59
    db $db                                        ; $5eab: $db
    inc [hl]                                      ; $5eac: $34
    nop                                           ; $5ead: $00
    ld [hl-], a                                   ; $5eae: $32
    ld l, c                                       ; $5eaf: $69
    ld h, [hl]                                    ; $5eb0: $66
    ret nc                                        ; $5eb1: $d0

    db $ec                                        ; $5eb2: $ec
    add c                                         ; $5eb3: $81
    ret nc                                        ; $5eb4: $d0

    rst $38                                       ; $5eb5: $ff
    nop                                           ; $5eb6: $00
    rra                                           ; $5eb7: $1f
    ldh [$2b], a                                  ; $5eb8: $e0 $2b
    call nc, $ea15                                ; $5eba: $d4 $15 $ea
    add b                                         ; $5ebd: $80
    rst $38                                       ; $5ebe: $ff
    db $10                                        ; $5ebf: $10
    ld b, b                                       ; $5ec0: $40
    rst $38                                       ; $5ec1: $ff
    add sp, $64                                   ; $5ec2: $e8 $64
    ld [bc], a                                    ; $5ec4: $02
    ld d, $fe                                     ; $5ec5: $16 $fe
    jp hl                                         ; $5ec7: $e9


    rla                                           ; $5ec8: $17
    nop                                           ; $5ec9: $00
    call nc, Call_0a1_692b                        ; $5eca: $d4 $2b $69
    sub a                                         ; $5ecd: $97
    sub d                                         ; $5ece: $92
    ld l, a                                       ; $5ecf: $6f
    dec b                                         ; $5ed0: $05
    rst $38                                       ; $5ed1: $ff
    ld de, $ff0f                                  ; $5ed2: $11 $0f $ff
    xor a                                         ; $5ed5: $af
    sbc h                                         ; $5ed6: $9c
    ld bc, $f6c9                                  ; $5ed7: $01 $c9 $f6
    sub a                                         ; $5eda: $97
    ld [$0004], a                                 ; $5edb: $ea $04 $00
    sbc a                                         ; $5ede: $9f
    ldh [$ab], a                                  ; $5edf: $e0 $ab
    call nc, $e996                                ; $5ee1: $d4 $96 $e9
    jp nz, Jump_000_00fd                          ; $5ee4: $c2 $fd $00

    ld d, a                                       ; $5ee7: $57
    rst $38                                       ; $5ee8: $ff
    db $eb                                        ; $5ee9: $eb
    rla                                           ; $5eea: $17
    push af                                       ; $5eeb: $f5
    dec bc                                        ; $5eec: $0b

jr_0a1_5eed:
    ld hl, sp+$07                                 ; $5eed: $f8 $07
    ld bc, $0bf5                                  ; $5eef: $01 $f5 $0b
    cp b                                          ; $5ef2: $b8
    ld b, a                                       ; $5ef3: $47
    inc d                                         ; $5ef4: $14
    db $eb                                        ; $5ef5: $eb
    ld bc, $02a2                                  ; $5ef6: $01 $a2 $02
    ld d, b                                       ; $5ef9: $50
    cp $a6                                        ; $5efa: $fe $a6
    ld [bc], a                                    ; $5efc: $02
    sbc a                                         ; $5efd: $9f
    ld b, h                                       ; $5efe: $44
    nop                                           ; $5eff: $00
    ld b, b                                       ; $5f00: $40
    cp a                                          ; $5f01: $bf
    inc b                                         ; $5f02: $04
    ei                                            ; $5f03: $fb
    db $10                                        ; $5f04: $10
    ld bc, $05fe                                  ; $5f05: $01 $fe $05
    ld c, b                                       ; $5f08: $48
    ld bc, $ff07                                  ; $5f09: $01 $07 $ff
    jp hl                                         ; $5f0c: $e9


    rla                                           ; $5f0d: $17
    add c                                         ; $5f0e: $81
    ld h, $0c                                     ; $5f0f: $26 $0c
    ld de, $0aef                                  ; $5f11: $11 $ef $0a
    rst $30                                       ; $5f14: $f7
    ld [$28ff], a                                 ; $5f15: $ea $ff $28
    dec c                                         ; $5f18: $0d
    nop                                           ; $5f19: $00
    rra                                           ; $5f1a: $1f
    ldh [$af], a                                  ; $5f1b: $e0 $af
    ret nc                                        ; $5f1d: $d0

    dec e                                         ; $5f1e: $1d
    ld [c], a                                     ; $5f1f: $e2
    ld a, [hl+]                                   ; $5f20: $2a
    push de                                       ; $5f21: $d5
    ld bc, $ff80                                  ; $5f22: $01 $80 $ff
    or a                                          ; $5f25: $b7
    rst $38                                       ; $5f26: $ff
    sub e                                         ; $5f27: $93
    ld l, a                                       ; $5f28: $6f
    jp hl                                         ; $5f29: $e9


    ld b, d                                       ; $5f2a: $42
    nop                                           ; $5f2b: $00
    nop                                           ; $5f2c: $00
    ld sp, hl                                     ; $5f2d: $f9
    rlca                                          ; $5f2e: $07
    push de                                       ; $5f2f: $d5

jr_0a1_5f30:
    dec hl                                        ; $5f30: $2b
    jp hl                                         ; $5f31: $e9


    rla                                           ; $5f32: $17
    ld b, e                                       ; $5f33: $43
    cp a                                          ; $5f34: $bf
    dec d                                         ; $5f35: $15
    nop                                           ; $5f36: $00
    rst $38                                       ; $5f37: $ff
    ld d, d                                       ; $5f38: $52
    rst $18                                       ; $5f39: $df
    ld b, h                                       ; $5f3a: $44
    ld d, d                                       ; $5f3b: $52
    sub h                                         ; $5f3c: $94
    ld bc, $62af                                  ; $5f3d: $01 $af $62
    ld b, $56                                     ; $5f40: $06 $56
    nop                                           ; $5f42: $00
    sbc h                                         ; $5f43: $9c
    ld bc, $660b                                  ; $5f44: $01 $0b $66
    ld [bc], a                                    ; $5f47: $02
    cp a                                          ; $5f48: $bf
    jr z, @+$04                                   ; $5f49: $28 $02

    ld b, b                                       ; $5f4b: $40
    jr c, jr_0a1_5f79                             ; $5f4c: $38 $2b

    ld b, h                                       ; $5f4e: $44
    call nc, Call_0a1_5840                        ; $5f4f: $d4 $40 $58
    xor c                                         ; $5f52: $a9
    ld d, a                                       ; $5f53: $57
    inc bc                                        ; $5f54: $03
    jr nz, jr_0a1_5fa7                            ; $5f55: $20 $50

    jr z, jr_0a1_5f30                             ; $5f57: $28 $d7

    jr jr_0a1_5eed                                ; $5f59: $18 $92

    db $ed                                        ; $5f5b: $ed
    ld d, a                                       ; $5f5c: $57
    ld h, b                                       ; $5f5d: $60
    nop                                           ; $5f5e: $00
    and d                                         ; $5f5f: $a2
    ld [$47b9], sp                                ; $5f60: $08 $b9 $47
    ld de, $ef00                                  ; $5f63: $11 $00 $ef
    xor c                                         ; $5f66: $a9
    ld d, a                                       ; $5f67: $57
    ld d, c                                       ; $5f68: $51
    xor a                                         ; $5f69: $af
    or l                                          ; $5f6a: $b5
    set 7, c                                      ; $5f6b: $cb $f9
    nop                                           ; $5f6d: $00
    add a                                         ; $5f6e: $87
    or l                                          ; $5f6f: $b5
    srl c                                         ; $5f70: $cb $39
    rst $00                                       ; $5f72: $c7
    or c                                          ; $5f73: $b1
    rst $08                                       ; $5f74: $cf
    ld l, c                                       ; $5f75: $69
    ld [bc], a                                    ; $5f76: $02
    sub a                                         ; $5f77: $97
    and c                                         ; $5f78: $a1

jr_0a1_5f79:
    rst $18                                       ; $5f79: $df
    ld bc, $fdff                                  ; $5f7a: $01 $ff $fd
    ret nc                                        ; $5f7d: $d0

    inc bc                                        ; $5f7e: $03
    rst $10                                       ; $5f7f: $d7
    ld l, d                                       ; $5f80: $6a
    ld [$0e10], sp                                ; $5f81: $08 $10 $0e
    ldh [rNR12], a                                ; $5f84: $e0 $12
    add b                                         ; $5f86: $80
    and b                                         ; $5f87: $a0
    inc hl                                        ; $5f88: $23
    ld [$0010], sp                                ; $5f89: $08 $10 $00
    ld a, [hl+]                                   ; $5f8c: $2a
    ld [bc], a                                    ; $5f8d: $02
    ld a, l                                       ; $5f8e: $7d
    add b                                         ; $5f8f: $80
    rst $10                                       ; $5f90: $d7
    xor b                                         ; $5f91: $a8
    push de                                       ; $5f92: $d5
    ld [hl+], a                                   ; $5f93: $22
    jr nc, @+$10                                  ; $5f94: $30 $0e

    rst $38                                       ; $5f96: $ff
    reti                                          ; $5f97: $d9


    db $f4                                        ; $5f98: $f4
    dec b                                         ; $5f99: $05
    nop                                           ; $5f9a: $00
    dec de                                        ; $5f9b: $1b
    db $fd                                        ; $5f9c: $fd
    ldh [rDIV], a                                 ; $5f9d: $e0 $04
    ret nz                                        ; $5f9f: $c0

    dec de                                        ; $5fa0: $1b
    rst $30                                       ; $5fa1: $f7
    and b                                         ; $5fa2: $a0
    jr nz, jr_0a1_5fa5                            ; $5fa3: $20 $00

jr_0a1_5fa5:
    ld b, h                                       ; $5fa5: $44
    adc b                                         ; $5fa6: $88

jr_0a1_5fa7:
    jr c, jr_0a1_5fce                             ; $5fa7: $38 $25

    rra                                           ; $5fa9: $1f
    rrca                                          ; $5faa: $0f
    inc de                                        ; $5fab: $13
    ld [bc], a                                    ; $5fac: $02
    nop                                           ; $5fad: $00
    inc e                                         ; $5fae: $1c
    rrca                                          ; $5faf: $0f
    ld c, b                                       ; $5fb0: $48
    inc e                                         ; $5fb1: $1c
    ld b, a                                       ; $5fb2: $47
    dec l                                         ; $5fb3: $2d
    rst $38                                       ; $5fb4: $ff
    inc sp                                        ; $5fb5: $33
    ld [bc], a                                    ; $5fb6: $02
    nop                                           ; $5fb7: $00
    call z, $ccff                                 ; $5fb8: $cc $ff $cc
    adc b                                         ; $5fbb: $88
    ld e, b                                       ; $5fbc: $58
    dec h                                         ; $5fbd: $25
    ld hl, sp-$10                                 ; $5fbe: $f8 $f0
    jr c, jr_0a1_5fc4                             ; $5fc0: $38 $02

    nop                                           ; $5fc2: $00
    ret z                                         ; $5fc3: $c8

jr_0a1_5fc4:
    ldh a, [$c8]                                  ; $5fc4: $f0 $c8
    ldh a, [$28]                                  ; $5fc6: $f0 $28
    jr z, jr_0a1_5ffa                             ; $5fc8: $28 $30

    jr z, jr_0a1_5ff4                             ; $5fca: $28 $28

    jr z, jr_0a1_5ffe                             ; $5fcc: $28 $30

jr_0a1_5fce:
    jr z, jr_0a1_5fdf                             ; $5fce: $28 $0f

    inc de                                        ; $5fd0: $13
    adc a                                         ; $5fd1: $8f
    sub e                                         ; $5fd2: $93
    nop                                           ; $5fd3: $00
    ld c, a                                       ; $5fd4: $4f
    ld e, h                                       ; $5fd5: $5c
    adc a                                         ; $5fd6: $8f
    sbc h                                         ; $5fd7: $9c

jr_0a1_5fd8:
    ld b, b                                       ; $5fd8: $40
    ld e, a                                       ; $5fd9: $5f
    sbc a                                         ; $5fda: $9f
    sbc a                                         ; $5fdb: $9f
    inc c                                         ; $5fdc: $0c
    ld e, a                                       ; $5fdd: $5f
    ld e, a                                       ; $5fde: $5f

jr_0a1_5fdf:
    and b                                         ; $5fdf: $a0
    and b                                         ; $5fe0: $a0
    ld c, b                                       ; $5fe1: $48
    jr nc, jr_0a1_5fd8                            ; $5fe2: $30 $f4

    ld [de], a                                    ; $5fe4: $12
    inc e                                         ; $5fe5: $1c
    inc a                                         ; $5fe6: $3c
    sub b                                         ; $5fe7: $90
    ld c, b                                       ; $5fe8: $48
    jr z, jr_0a1_5feb                             ; $5fe9: $28 $00

jr_0a1_5feb:
    ld hl, sp+$01                                 ; $5feb: $f8 $01
    ld [$0000], sp                                ; $5fed: $08 $00 $00
    cp [hl]                                       ; $5ff0: $be
    cp [hl]                                       ; $5ff1: $be
    nop                                           ; $5ff2: $00
    ld e, l                                       ; $5ff3: $5d

jr_0a1_5ff4:
    ld e, l                                       ; $5ff4: $5d
    sbc a                                         ; $5ff5: $9f
    rst $38                                       ; $5ff6: $ff
    ld e, [hl]                                    ; $5ff7: $5e
    ld a, [hl]                                    ; $5ff8: $7e
    cp h                                          ; $5ff9: $bc

jr_0a1_5ffa:
    cp h                                          ; $5ffa: $bc
    ld bc, $3d1d                                  ; $5ffb: $01 $1d $3d

jr_0a1_5ffe:
    xor [hl]                                      ; $5ffe: $ae
    xor $d7                                       ; $5fff: $ee $d7
    rst $10                                       ; $6001: $d7
    ld b, b                                       ; $6002: $40

Call_0a1_6003:
    ld a, [hl-]                                   ; $6003: $3a
    ld b, $40                                     ; $6004: $06 $40
    ld d, l                                       ; $6006: $55
    inc b                                         ; $6007: $04
    ld [$f98a], sp                                ; $6008: $08 $8a $f9
    nop                                           ; $600b: $00
    ld d, d                                       ; $600c: $52
    adc c                                         ; $600d: $89
    ld a, [$0160]                                 ; $600e: $fa $60 $01
    jp nc, $930d                                  ; $6011: $d2 $0d $93

    rlca                                          ; $6014: $07
    nop                                           ; $6015: $00
    ld b, c                                       ; $6016: $41
    cp [hl]                                       ; $6017: $be
    inc h                                         ; $6018: $24
    jp $bf00                                      ; $6019: $c3 $00 $bf


    nop                                           ; $601c: $00
    ld c, a                                       ; $601d: $4f
    jr nc, @+$53                                  ; $601e: $30 $51

    adc d                                         ; $6020: $8a
    ld hl, sp+$02                                 ; $6021: $f8 $02
    nop                                           ; $6023: $00
    ld d, c                                       ; $6024: $51
    adc d                                         ; $6025: $8a
    ld a, [$5101]                                 ; $6026: $fa $01 $51
    adc c                                         ; $6029: $89
    ld sp, hl                                     ; $602a: $f9
    nop                                           ; $602b: $00
    db $10                                        ; $602c: $10
    ld d, b                                       ; $602d: $50
    adc b                                         ; $602e: $88
    ld hl, sp-$7c                                 ; $602f: $f8 $84
    dec b                                         ; $6031: $05
    cp $00                                        ; $6032: $fe $00
    db $fc                                        ; $6034: $fc
    ld [bc], a                                    ; $6035: $02
    nop                                           ; $6036: $00
    pop af                                        ; $6037: $f1
    inc c                                         ; $6038: $0c
    ld d, d                                       ; $6039: $52
    add c                                         ; $603a: $81
    db $db                                        ; $603b: $db
    rst $20                                       ; $603c: $e7
    cp l                                          ; $603d: $bd
    ld a, [hl]                                    ; $603e: $7e
    ld b, b                                       ; $603f: $40
    ld a, $14                                     ; $6040: $3e $14
    db $10                                        ; $6042: $10
    ld d, b                                       ; $6043: $50
    adc b                                         ; $6044: $88
    ld a, [$5f05]                                 ; $6045: $fa $05 $5f
    add b                                         ; $6048: $80
    ld d, e                                       ; $6049: $53
    ld [$0682], a                                 ; $604a: $ea $82 $06
    ret nz                                        ; $604d: $c0

    rla                                           ; $604e: $17
    ld h, $aa                                     ; $604f: $26 $aa
    ld d, l                                       ; $6051: $55
    ld l, [hl]                                    ; $6052: $6e
    dec b                                         ; $6053: $05
    ld d, d                                       ; $6054: $52
    rlca                                          ; $6055: $07
    add b                                         ; $6056: $80
    ld hl, $800e                                  ; $6057: $21 $0e $80
    ret nz                                        ; $605a: $c0

    rra                                           ; $605b: $1f
    ret nz                                        ; $605c: $c0

    sbc [hl]                                      ; $605d: $9e
    pop bc                                        ; $605e: $c1
    rra                                           ; $605f: $1f
    inc c                                         ; $6060: $0c
    pop bc                                        ; $6061: $c1
    and b                                         ; $6062: $a0
    rst $18                                       ; $6063: $df
    ccf                                           ; $6064: $3f
    rst $28                                       ; $6065: $ef
    ld b, $67                                     ; $6066: $06 $67
    rlca                                          ; $6068: $07
    inc bc                                        ; $6069: $03
    ld a, [$0703]                                 ; $606a: $fa $03 $07
    ld a, d                                       ; $606d: $7a
    add a                                         ; $606e: $87
    ld a, [$0287]                                 ; $606f: $fa $87 $02
    adc h                                         ; $6072: $8c
    inc b                                         ; $6073: $04
    ld [hl], l                                    ; $6074: $75
    rlca                                          ; $6075: $07
    nop                                           ; $6076: $00
    ret nz                                        ; $6077: $c0

    sbc a                                         ; $6078: $9f
    ret nz                                        ; $6079: $c0

    ld e, $c1                                     ; $607a: $1e $c1
    sbc a                                         ; $607c: $9f
    pop bc                                        ; $607d: $c1
    jr nz, jr_0a1_60bf                            ; $607e: $20 $3f

    rst $18                                       ; $6080: $df
    cp a                                          ; $6081: $bf
    add e                                         ; $6082: $83
    rlca                                          ; $6083: $07
    ld b, c                                       ; $6084: $41
    ld [$0eca], sp                                ; $6085: $08 $ca $0e
    jr z, jr_0a1_608f                             ; $6088: $28 $05

    xor h                                         ; $608a: $ac
    inc b                                         ; $608b: $04
    ld b, c                                       ; $608c: $41
    jr jr_0a1_608f                                ; $608d: $18 $00

jr_0a1_608f:
    inc d                                         ; $608f: $14
    ld [$1426], sp                                ; $6090: $08 $26 $14
    jr nc, jr_0a1_60a7                            ; $6093: $30 $12

    ld [de], a                                    ; $6095: $12
    ld [hl-], a                                   ; $6096: $32
    ld c, d                                       ; $6097: $4a
    ld [hl+], a                                   ; $6098: $22
    ld bc, $ff10                                  ; $6099: $01 $10 $ff
    rst $38                                       ; $609c: $ff
    or l                                          ; $609d: $b5
    dec b                                         ; $609e: $05
    cp a                                          ; $609f: $bf
    ld [bc], a                                    ; $60a0: $02
    db $10                                        ; $60a1: $10
    cp l                                          ; $60a2: $bd
    nop                                           ; $60a3: $00
    add b                                         ; $60a4: $80
    cp d                                          ; $60a5: $ba
    add b                                         ; $60a6: $80

jr_0a1_60a7:
    cp l                                          ; $60a7: $bd
    ld h, $22                                     ; $60a8: $26 $22
    ld l, $26                                     ; $60aa: $2e $26
    db $10                                        ; $60ac: $10

Jump_0a1_60ad:
    ld a, [hl-]                                   ; $60ad: $3a
    ld a, [hl+]                                   ; $60ae: $2a
    ld [hl-], a                                   ; $60af: $32
    ld e, $10                                     ; $60b0: $1e $10
    inc hl                                        ; $60b2: $23
    inc hl                                        ; $60b3: $23
    inc h                                         ; $60b4: $24
    daa                                           ; $60b5: $27
    and c                                         ; $60b6: $a1
    ld l, d                                       ; $60b7: $6a
    ld a, $00                                     ; $60b8: $3e $00
    rst $18                                       ; $60ba: $df

Call_0a1_60bb:
    dec b                                         ; $60bb: $05
    db $10                                        ; $60bc: $10

Jump_0a1_60bd:
    ldh a, [$80]                                  ; $60bd: $f0 $80

jr_0a1_60bf:
    cp e                                          ; $60bf: $bb
    jr z, jr_0a1_60c2                             ; $60c0: $28 $00

jr_0a1_60c2:
    add b                                         ; $60c2: $80
    inc b                                         ; $60c3: $04
    ld b, b                                       ; $60c4: $40
    jr nz, jr_0a1_60ee                            ; $60c5: $20 $27

    jr z, jr_0a1_60f8                             ; $60c7: $28 $2f

    jr nc, jr_0a1_610a                            ; $60c9: $30 $3f

    jr z, jr_0a1_60cd                             ; $60cb: $28 $00

jr_0a1_60cd:
    scf                                           ; $60cd: $37
    dec [hl]                                      ; $60ce: $35
    ld a, [hl-]                                   ; $60cf: $3a
    ld a, [hl+]                                   ; $60d0: $2a
    dec a                                         ; $60d1: $3d
    dec a                                         ; $60d2: $3d
    ccf                                           ; $60d3: $3f
    daa                                           ; $60d4: $27
    ld a, [bc]                                    ; $60d5: $0a
    daa                                           ; $60d6: $27
    inc b                                         ; $60d7: $04
    db $fc                                        ; $60d8: $fc
    ld [bc], a                                    ; $60d9: $02
    ld [hl], b                                    ; $60da: $70
    inc bc                                        ; $60db: $03
    ld b, $02                                     ; $60dc: $06 $02
    nop                                           ; $60de: $00
    xor d                                         ; $60df: $aa
    inc b                                         ; $60e0: $04
    ld e, d                                       ; $60e1: $5a
    ld a, [de]                                    ; $60e2: $1a
    ld a, [$f2f2]                                 ; $60e3: $fa $f2 $f2
    adc d                                         ; $60e6: $8a
    ld bc, $7580                                  ; $60e7: $01 $80 $75
    nop                                           ; $60ea: $00
    cp [hl]                                       ; $60eb: $be
    ret                                           ; $60ec: $c9


    cp [hl]                                       ; $60ed: $be

jr_0a1_60ee:
    ld h, e                                       ; $60ee: $63
    cp [hl]                                       ; $60ef: $be
    rst $00                                       ; $60f0: $c7
    cp [hl]                                       ; $60f1: $be
    ld l, l                                       ; $60f2: $6d
    db $10                                        ; $60f3: $10
    cp [hl]                                       ; $60f4: $be
    push de                                       ; $60f5: $d5
    cp [hl]                                       ; $60f6: $be
    sbc d                                         ; $60f7: $9a

jr_0a1_60f8:
    ld bc, $d700                                  ; $60f8: $01 $00 $d7
    xor d                                         ; $60fb: $aa
    ld d, l                                       ; $60fc: $55
    nop                                           ; $60fd: $00
    xor d                                         ; $60fe: $aa
    rst $38                                       ; $60ff: $ff
    nop                                           ; $6100: $00
    ld b, l                                       ; $6101: $45
    ld a, [$faf7]                                 ; $6102: $fa $f7 $fa
    xor a                                         ; $6105: $af
    ld b, b                                       ; $6106: $40
    ld a, [$01aa]                                 ; $6107: $fa $aa $01

jr_0a1_610a:
    ld bc, $a9de                                  ; $610a: $01 $de $a9
    ld d, a                                       ; $610d: $57
    xor c                                         ; $610e: $a9
    cp $00                                        ; $610f: $fe $00
    ld bc, $21df                                  ; $6111: $01 $df $21
    ld d, [hl]                                    ; $6114: $56
    xor c                                         ; $6115: $a9
    rst $38                                       ; $6116: $ff
    xor c                                         ; $6117: $a9
    ld a, a                                       ; $6118: $7f
    db $10                                        ; $6119: $10
    add b                                         ; $611a: $80
    xor d                                         ; $611b: $aa
    push de                                       ; $611c: $d5
    inc [hl]                                      ; $611d: $34
    ld [$be41], sp                                ; $611e: $08 $41 $be
    pop de                                        ; $6121: $d1
    cp [hl]                                       ; $6122: $be
    ld [c], a                                     ; $6123: $e2
    jr c, @+$0a                                   ; $6124: $38 $08

    ld h, [hl]                                    ; $6126: $66
    ld c, $34                                     ; $6127: $0e $34
    db $10                                        ; $6129: $10
    jr z, @+$5f                                   ; $612a: $28 $5d

    and d                                         ; $612c: $a2
    jr c, jr_0a1_6137                             ; $612d: $38 $08

    cp $2c                                        ; $612f: $fe $2c
    ld bc, $10ab                                  ; $6131: $01 $ab $10
    ld [$2c01], sp                                ; $6134: $08 $01 $2c

jr_0a1_6137:
    ld [$0838], sp                                ; $6137: $08 $38 $08
    ld a, a                                       ; $613a: $7f
    add b                                         ; $613b: $80
    dec b                                         ; $613c: $05
    db $dd                                        ; $613d: $dd
    and d                                         ; $613e: $a2
    ld [hl], a                                    ; $613f: $77
    xor d                                         ; $6140: $aa
    rst $38                                       ; $6141: $ff
    ld d, d                                       ; $6142: $52
    ld [$5680], sp                                ; $6143: $08 $80 $56
    nop                                           ; $6146: $00
    adc e                                         ; $6147: $8b
    push hl                                       ; $6148: $e5
    nop                                           ; $6149: $00
    db $dd                                        ; $614a: $dd
    ld [hl+], a                                   ; $614b: $22
    ld d, a                                       ; $614c: $57
    stop                                          ; $614d: $10 $00
    push de                                       ; $614f: $d5
    ld h, d                                       ; $6150: $62
    nop                                           ; $6151: $00
    db $10                                        ; $6152: $10
    ld [$fe00], sp                                ; $6153: $08 $00 $fe
    ld bc, $f917                                  ; $6156: $01 $17 $f9
    ld a, [hl]                                    ; $6159: $7e
    ld sp, hl                                     ; $615a: $f9
    xor a                                         ; $615b: $af
    ld sp, hl                                     ; $615c: $f9
    nop                                           ; $615d: $00
    ld h, $f9                                     ; $615e: $26 $f9
    rst $38                                       ; $6160: $ff
    ld bc, $ab54                                  ; $6161: $01 $54 $ab
    rst $38                                       ; $6164: $ff
    rst $38                                       ; $6165: $ff
    ld hl, sp+$3c                                 ; $6166: $f8 $3c
    ld e, c                                       ; $6168: $59
    ld sp, $1e00                                  ; $6169: $31 $00 $1e
    ld c, c                                       ; $616c: $49
    stop                                          ; $616d: $10 $00
    or b                                          ; $616f: $b0
    add hl, hl                                    ; $6170: $29
    ld d, l                                       ; $6171: $55
    xor d                                         ; $6172: $aa
    add b                                         ; $6173: $80
    nop                                           ; $6174: $00
    nop                                           ; $6175: $00
    ld b, b                                       ; $6176: $40
    add b                                         ; $6177: $80
    ld h, b                                       ; $6178: $60
    add b                                         ; $6179: $80
    rlca                                          ; $617a: $07
    inc bc                                        ; $617b: $03
    db $fd                                        ; $617c: $fd
    nop                                           ; $617d: $00
    inc bc                                        ; $617e: $03
    ld d, l                                       ; $617f: $55
    inc bc                                        ; $6180: $03
    ei                                            ; $6181: $fb
    ld bc, $a15f                                  ; $6182: $01 $5f $a1
    ld a, [bc]                                    ; $6185: $0a
    nop                                           ; $6186: $00
    ld de, $011e                                  ; $6187: $11 $1e $01
    ld a, [bc]                                    ; $618a: $0a
    ld de, $40e0                                  ; $618b: $11 $e0 $40
    and b                                         ; $618e: $a0
    ld b, e                                       ; $618f: $43
    ld b, b                                       ; $6190: $40
    inc b                                         ; $6191: $04
    nop                                           ; $6192: $00
    ret nz                                        ; $6193: $c0

    ldh [$80], a                                  ; $6194: $e0 $80
    ld b, b                                       ; $6196: $40
    add a                                         ; $6197: $87
    rla                                           ; $6198: $17
    inc d                                         ; $6199: $14
    ld [$04c4], sp                                ; $619a: $08 $c4 $04
    ld c, b                                       ; $619d: $48
    ld d, b                                       ; $619e: $50
    ld bc, $c2ff                                  ; $619f: $01 $ff $c2
    cp l                                          ; $61a2: $bd
    ld a, [hl+]                                   ; $61a3: $2a
    ld b, $bf                                     ; $61a4: $06 $bf
    add b                                         ; $61a6: $80
    and b                                         ; $61a7: $a0
    ld e, [hl]                                    ; $61a8: $5e
    ld [$20ff], sp                                ; $61a9: $08 $ff $20
    jr @-$54                                      ; $61ac: $18 $aa

    ld d, c                                       ; $61ae: $51
    cp $01                                        ; $61af: $fe $01
    xor d                                         ; $61b1: $aa
    inc b                                         ; $61b2: $04
    ld bc, $01fe                                  ; $61b3: $01 $fe $01
    ld [bc], a                                    ; $61b6: $02
    ld bc, $07e1                                  ; $61b7: $01 $e1 $07
    add b                                         ; $61ba: $80
    ccf                                           ; $61bb: $3f
    nop                                           ; $61bc: $00
    add b                                         ; $61bd: $80
    inc a                                         ; $61be: $3c
    add e                                         ; $61bf: $83
    ccf                                           ; $61c0: $3f
    add e                                         ; $61c1: $83
    ld b, b                                       ; $61c2: $40
    cp a                                          ; $61c3: $bf
    ld a, a                                       ; $61c4: $7f
    add l                                         ; $61c5: $85
    ld l, d                                       ; $61c6: $6a
    inc de                                        ; $61c7: $13
    ld bc, $f507                                  ; $61c8: $01 $07 $f5
    rrca                                          ; $61cb: $0f
    ld [bc], a                                    ; $61cc: $02
    ld [$5405], sp                                ; $61cd: $08 $05 $54
    ld b, $dc                                     ; $61d0: $06 $dc
    ei                                            ; $61d2: $fb
    rlca                                          ; $61d3: $07
    dec b                                         ; $61d4: $05
    rlca                                          ; $61d5: $07
    db $fc                                        ; $61d6: $fc
    push de                                       ; $61d7: $d5
    dec b                                         ; $61d8: $05
    or b                                          ; $61d9: $b0
    add hl, hl                                    ; $61da: $29
    ld e, $58                                     ; $61db: $1e $58
    ld bc, $0f07                                  ; $61dd: $01 $07 $0f
    rst $20                                       ; $61e0: $e7
    rst $18                                       ; $61e1: $df
    jp $04ff                                      ; $61e2: $c3 $ff $04


    ld c, b                                       ; $61e5: $48
    ld l, $50                                     ; $61e6: $2e $50
    ret nc                                        ; $61e8: $d0

    nop                                           ; $61e9: $00
    ld l, $50                                     ; $61ea: $2e $50
    sbc [hl]                                      ; $61ec: $9e
    ld [hl], b                                    ; $61ed: $70
    ld b, $ff                                     ; $61ee: $06 $ff
    dec d                                         ; $61f0: $15
    dec [hl]                                      ; $61f1: $35
    inc b                                         ; $61f2: $04
    inc b                                         ; $61f3: $04
    ld b, b                                       ; $61f4: $40
    ret nz                                        ; $61f5: $c0

    dec a                                         ; $61f6: $3d
    add $1d                                       ; $61f7: $c6 $1d
    ld h, d                                       ; $61f9: $62
    add b                                         ; $61fa: $80
    ld a, [c]                                     ; $61fb: $f2
    inc b                                         ; $61fc: $04
    add a                                         ; $61fd: $87
    rst $38                                       ; $61fe: $ff
    dec hl                                        ; $61ff: $2b
    rst $10                                       ; $6200: $d7
    ld d, e                                       ; $6201: $53
    xor a                                         ; $6202: $af
    add hl, sp                                    ; $6203: $39
    ld [bc], a                                    ; $6204: $02
    rst $00                                       ; $6205: $c7
    ld [hl], l                                    ; $6206: $75
    adc e                                         ; $6207: $8b
    xor c                                         ; $6208: $a9
    rst $10                                       ; $6209: $d7
    ret                                           ; $620a: $c9


    ld c, $05                                     ; $620b: $0e $05
    db $dd                                        ; $620d: $dd
    ld [hl+], a                                   ; $620e: $22
    cp $f8                                        ; $620f: $fe $f8
    add sp, $06                                   ; $6211: $e8 $06
    add [hl]                                      ; $6213: $86
    rst $38                                       ; $6214: $ff
    or e                                          ; $6215: $b3
    and h                                         ; $6216: $a4
    inc bc                                        ; $6217: $03
    ld e, d                                       ; $6218: $5a
    nop                                           ; $6219: $00
    and [hl]                                      ; $621a: $a6
    pop af                                        ; $621b: $f1
    rrca                                          ; $621c: $0f
    ld c, c                                       ; $621d: $49
    or a                                          ; $621e: $b7
    add e                                         ; $621f: $83
    ld a, a                                       ; $6220: $7f
    dec d                                         ; $6221: $15
    add b                                         ; $6222: $80
    sub b                                         ; $6223: $90
    dec b                                         ; $6224: $05
    add $fe                                       ; $6225: $c6 $fe
    ld a, [hl-]                                   ; $6227: $3a
    add $15                                       ; $6228: $c6 $15
    db $eb                                        ; $622a: $eb
    adc c                                         ; $622b: $89
    ld a, [bc]                                    ; $622c: $0a
    rst $30                                       ; $622d: $f7
    ld b, c                                       ; $622e: $41
    rst $38                                       ; $622f: $ff
    and c                                         ; $6230: $a1
    ret c                                         ; $6231: $d8

    dec b                                         ; $6232: $05
    xor a                                         ; $6233: $af
    inc b                                         ; $6234: $04
    ld d, $ab                                     ; $6235: $16 $ab
    add b                                         ; $6237: $80
    ld h, [hl]                                    ; $6238: $66
    ld b, $f8                                     ; $6239: $06 $f8
    rst $38                                       ; $623b: $ff
    jr nc, @+$01                                  ; $623c: $30 $ff

    sub h                                         ; $623e: $94
    rst $38                                       ; $623f: $ff
    ld e, d                                       ; $6240: $5a
    add b                                         ; $6241: $80
    ld d, h                                       ; $6242: $54
    dec b                                         ; $6243: $05
    ld d, [hl]                                    ; $6244: $56
    rst $38                                       ; $6245: $ff
    ld d, d                                       ; $6246: $52
    xor [hl]                                      ; $6247: $ae
    and [hl]                                      ; $6248: $a6
    cp $de                                        ; $6249: $fe $de
    nop                                           ; $624b: $00
    cp $73                                        ; $624c: $fe $73
    rst $38                                       ; $624e: $ff
    dec h                                         ; $624f: $25
    ei                                            ; $6250: $fb
    xor c                                         ; $6251: $a9
    rst $30                                       ; $6252: $f7
    ld e, a                                       ; $6253: $5f
    inc bc                                        ; $6254: $03
    pop hl                                        ; $6255: $e1
    push de                                       ; $6256: $d5
    db $eb                                        ; $6257: $eb
    push af                                       ; $6258: $f5
    rst $38                                       ; $6259: $ff
    jp hl                                         ; $625a: $e9


    jr c, jr_0a1_6263                             ; $625b: $38 $06

    ld e, $0f                                     ; $625d: $1e $0f
    ld d, b                                       ; $625f: $50
    rst $30                                       ; $6260: $f7
    inc h                                         ; $6261: $24
    rlca                                          ; $6262: $07

jr_0a1_6263:
    db $fd                                        ; $6263: $fd
    ld [hl], $10                                  ; $6264: $36 $10
    add b                                         ; $6266: $80
    rst $38                                       ; $6267: $ff
    ld d, l                                       ; $6268: $55
    ld [$ae05], a                                 ; $6269: $ea $05 $ae
    pop de                                        ; $626c: $d1
    ld e, l                                       ; $626d: $5d
    and d                                         ; $626e: $a2
    and b                                         ; $626f: $a0
    ld a, b                                       ; $6270: $78
    dec b                                         ; $6271: $05
    res 5, [hl]                                   ; $6272: $cb $ae
    dec b                                         ; $6274: $05
    nop                                           ; $6275: $00
    push de                                       ; $6276: $d5
    rst $38                                       ; $6277: $ff
    ld l, e                                       ; $6278: $6b
    rst $38                                       ; $6279: $ff
    halt                                          ; $627a: $76
    cp $3e                                        ; $627b: $fe $3e
    cp $0e                                        ; $627d: $fe $0e
    cp $fe                                        ; $627f: $fe $fe
    add $fe                                       ; $6281: $c6 $fe
    inc h                                         ; $6283: $24
    ld [$0f4c], sp                                ; $6284: $08 $4c $0f
    inc bc                                        ; $6287: $03

jr_0a1_6288:
    jr jr_0a1_6288                                ; $6288: $18 $fe

    adc l                                         ; $628a: $8d
    ld e, b                                       ; $628b: $58
    rlca                                          ; $628c: $07
    cp a                                          ; $628d: $bf
    rst $38                                       ; $628e: $ff
    ld c, $1a                                     ; $628f: $0e $1a
    ld d, $e6                                     ; $6291: $16 $e6
    ld c, $af                                     ; $6293: $0e $af
    db $ec                                        ; $6295: $ec
    ld b, $40                                     ; $6296: $06 $40
    ld b, c                                       ; $6298: $41
    ld c, d                                       ; $6299: $4a
    ld b, $41                                     ; $629a: $06 $41
    rst $38                                       ; $629c: $ff
    db $eb                                        ; $629d: $eb
    rst $38                                       ; $629e: $ff
    cp $fe                                        ; $629f: $fe $fe
    nop                                           ; $62a1: $00
    jp nz, Jump_000_3dfe                          ; $62a2: $c2 $fe $3d

    jp $ff71                                      ; $62a5: $c3 $71 $ff


    call z, Call_000_04f3                         ; $62a8: $cc $f3 $04
    cp d                                          ; $62ab: $ba
    push bc                                       ; $62ac: $c5
    sub h                                         ; $62ad: $94
    db $eb                                        ; $62ae: $eb
    pop bc                                        ; $62af: $c1
    ld [de], a                                    ; $62b0: $12
    nop                                           ; $62b1: $00
    rst $38                                       ; $62b2: $ff
    rst $38                                       ; $62b3: $ff
    ld bc, $ffc1                                  ; $62b4: $01 $c1 $ff
    ld d, l                                       ; $62b7: $55
    xor e                                         ; $62b8: $ab
    adc c                                         ; $62b9: $89
    rst $30                                       ; $62ba: $f7

Call_0a1_62bb:
    ld l, e                                       ; $62bb: $6b
    add $05                                       ; $62bc: $c6 $05
    nop                                           ; $62be: $00
    add e                                         ; $62bf: $83
    rst $38                                       ; $62c0: $ff
    ld e, c                                       ; $62c1: $59
    and a                                         ; $62c2: $a7
    and l                                         ; $62c3: $a5
    db $db                                        ; $62c4: $db
    db $d3                                        ; $62c5: $d3
    rst $38                                       ; $62c6: $ff
    inc bc                                        ; $62c7: $03
    ld [$f7f5], a                                 ; $62c8: $ea $f5 $f7
    ld hl, sp-$06                                 ; $62cb: $f8 $fa
    db $fd                                        ; $62cd: $fd
    and b                                         ; $62ce: $a0
    rra                                           ; $62cf: $1f
    cp d                                          ; $62d0: $ba
    ld c, $04                                     ; $62d1: $0e $04
    ld h, l                                       ; $62d3: $65
    rst $38                                       ; $62d4: $ff
    dec sp                                        ; $62d5: $3b
    rst $38                                       ; $62d6: $ff
    ld c, a                                       ; $62d7: $4f
    ld [hl-], a                                   ; $62d8: $32
    rlca                                          ; $62d9: $07
    ld [bc], a                                    ; $62da: $02
    cp $07                                        ; $62db: $fe $07
    add d                                         ; $62dd: $82
    cp $d2                                        ; $62de: $fe $d2
    cp $6e                                        ; $62e0: $fe $6e
    rlc [hl]                                      ; $62e2: $cb $06
    adc $1e                                       ; $62e4: $ce $1e
    ld [hl], e                                    ; $62e6: $73
    jr z, jr_0a1_62e9                             ; $62e7: $28 $00

jr_0a1_62e9:
    add hl, sp                                    ; $62e9: $39
    rst $38                                       ; $62ea: $ff
    dec d                                         ; $62eb: $15
    ei                                            ; $62ec: $fb
    ld e, l                                       ; $62ed: $5d
    di                                            ; $62ee: $f3
    or l                                          ; $62ef: $b5
    ei                                            ; $62f0: $fb
    db $10                                        ; $62f1: $10
    pop de                                        ; $62f2: $d1
    rst $38                                       ; $62f3: $ff
    cp c                                          ; $62f4: $b9
    ld b, h                                       ; $62f5: $44
    rlca                                          ; $62f6: $07
    ld [c], a                                     ; $62f7: $e2
    cp $e2                                        ; $62f8: $fe $e2
    cp $19                                        ; $62fa: $fe $19
    pop af                                        ; $62fc: $f1
    rst $38                                       ; $62fd: $ff
    ld sp, hl                                     ; $62fe: $f9
    sub h                                         ; $62ff: $94
    db $10                                        ; $6300: $10
    xor $0f                                       ; $6301: $ee $0f
    rst $38                                       ; $6303: $ff
    rst $38                                       ; $6304: $ff
    and b                                         ; $6305: $a0
    inc b                                         ; $6306: $04
    dec b                                         ; $6307: $05
    add d                                         ; $6308: $82
    rst $30                                       ; $6309: $f7
    ld [$887f], sp                                ; $630a: $08 $7f $88
    and h                                         ; $630d: $a4
    inc b                                         ; $630e: $04
    ld a, [hl+]                                   ; $630f: $2a
    adc d                                         ; $6310: $8a
    inc b                                         ; $6311: $04
    ld b, c                                       ; $6312: $41
    xor b                                         ; $6313: $a8
    ld d, $0b                                     ; $6314: $16 $0b
    add b                                         ; $6316: $80
    add b                                         ; $6317: $80
    ret nz                                        ; $6318: $c0

    ret nz                                        ; $6319: $c0

    ldh [rSB], a                                  ; $631a: $e0 $01
    nop                                           ; $631c: $00
    add hl, bc                                    ; $631d: $09
    ldh a, [$f0]                                  ; $631e: $f0 $f0

jr_0a1_6320:
    ld hl, sp-$08                                 ; $6320: $f8 $f8
    dec [hl]                                      ; $6322: $35
    ld b, $fc                                     ; $6323: $06 $fc
    cp $53                                        ; $6325: $fe $53
    ld b, b                                       ; $6327: $40
    and c                                         ; $6328: $a1
    inc a                                         ; $6329: $3c
    dec sp                                        ; $632a: $3b
    ret nz                                        ; $632b: $c0

    ld bc, $e000                                  ; $632c: $01 $00 $e0
    ldh [$f5], a                                  ; $632f: $e0 $f5
    ld a, [bc]                                    ; $6331: $0a
    ld b, b                                       ; $6332: $40
    ld [$fd09], sp                                ; $6333: $08 $09 $fd
    ld [$a857], sp                                ; $6336: $08 $57 $a8
    ld b, b                                       ; $6339: $40
    ld [$80df], sp                                ; $633a: $08 $df $80
    inc [hl]                                      ; $633d: $34
    jr jr_0a1_6320                                ; $633e: $18 $e0

    ei                                            ; $6340: $fb
    nop                                           ; $6341: $00
    add a                                         ; $6342: $87
    jr nz, @+$72                                  ; $6343: $20 $70

    ld e, e                                       ; $6345: $5b
    ret nz                                        ; $6346: $c0

    ret nz                                        ; $6347: $c0

    push de                                       ; $6348: $d5
    ld [hl+], a                                   ; $6349: $22
    rst $38                                       ; $634a: $ff
    inc bc                                        ; $634b: $03
    ld [bc], a                                    ; $634c: $02
    rst $30                                       ; $634d: $f7
    ld [$887d], sp                                ; $634e: $08 $7d $88
    rst $18                                       ; $6351: $df
    nop                                           ; $6352: $00
    dec b                                         ; $6353: $05
    db $ec                                        ; $6354: $ec
    ld [bc], a                                    ; $6355: $02
    ld a, a                                       ; $6356: $7f
    and b                                         ; $6357: $a0
    ld h, [hl]                                    ; $6358: $66
    jr z, @+$66                                   ; $6359: $28 $64

    jr z, @+$78                                   ; $635b: $28 $76

    ld [$4872], sp                                ; $635d: $08 $72 $48
    ld a, $58                                     ; $6360: $3e $58
    inc l                                         ; $6362: $2c
    ld e, b                                       ; $6363: $58
    or a                                          ; $6364: $b7
    rrca                                          ; $6365: $0f
    nop                                           ; $6366: $00

jr_0a1_6367:
    add b                                         ; $6367: $80
    rst $38                                       ; $6368: $ff
    ld l, d                                       ; $6369: $6a
    sub l                                         ; $636a: $95
    add b                                         ; $636b: $80
    rst $38                                       ; $636c: $ff
    ld [hl], $c9                                  ; $636d: $36 $c9
    ld b, d                                       ; $636f: $42
    add b                                         ; $6370: $80
    ld b, d                                       ; $6371: $42
    ld bc, $abd4                                  ; $6372: $01 $d4 $ab
    ld [bc], a                                    ; $6375: $02
    db $fd                                        ; $6376: $fd
    ld d, b                                       ; $6377: $50
    inc b                                         ; $6378: $04
    ld a, a                                       ; $6379: $7f
    inc d                                         ; $637a: $14
    ld [hl], l                                    ; $637b: $75
    adc d                                         ; $637c: $8a
    nop                                           ; $637d: $00
    ld d, $00                                     ; $637e: $16 $00
    ld b, a                                       ; $6380: $47
    ld hl, sp+$05                                 ; $6381: $f8 $05
    or l                                          ; $6383: $b5
    ld c, d                                       ; $6384: $4a
    ld [bc], a                                    ; $6385: $02
    nop                                           ; $6386: $00
    rst $38                                       ; $6387: $ff
    dec d                                         ; $6388: $15
    ld [$bf40], a                                 ; $6389: $ea $40 $bf
    jp c, $7f05                                   ; $638c: $da $05 $7f

    ld h, b                                       ; $638f: $60
    jp z, $002a                                   ; $6390: $ca $2a $00

    sbc [hl]                                      ; $6393: $9e
    ld [bc], a                                    ; $6394: $02
    rst $38                                       ; $6395: $ff
    ld c, b                                       ; $6396: $48
    or a                                          ; $6397: $b7
    dec d                                         ; $6398: $15
    db $eb                                        ; $6399: $eb
    inc b                                         ; $639a: $04
    ld b, b                                       ; $639b: $40
    cp a                                          ; $639c: $bf
    ld bc, $efff                                  ; $639d: $01 $ff $ef
    inc a                                         ; $63a0: $3c
    rlca                                          ; $63a1: $07
    ld [bc], a                                    ; $63a2: $02
    db $fd                                        ; $63a3: $fd
    ld d, $21                                     ; $63a4: $16 $21
    ld hl, $0120                                  ; $63a6: $21 $20 $01
    db $10                                        ; $63a9: $10
    ld h, b                                       ; $63aa: $60
    ld bc, $0000                                  ; $63ab: $01 $00 $00
    rrca                                          ; $63ae: $0f
    jp nz, $c22c                                  ; $63af: $c2 $2c $c2

    ld b, e                                       ; $63b2: $43
    ld bc, $4000                                  ; $63b3: $01 $00 $40
    ld bc, $e210                                  ; $63b6: $01 $10 $e2
    ld [$d7a8], sp                                ; $63b9: $08 $a8 $d7
    inc b                                         ; $63bc: $04
    ld bc, $bafe                                  ; $63bd: $01 $fe $ba
    push bc                                       ; $63c0: $c5
    rst $30                                       ; $63c1: $f7
    ld l, b                                       ; $63c2: $68
    jr nc, jr_0a1_63cf                            ; $63c3: $30 $0a

    push af                                       ; $63c5: $f5
    ld b, $a0                                     ; $63c6: $06 $a0
    ld e, a                                       ; $63c8: $5f
    ld b, $f9                                     ; $63c9: $06 $f9
    ld d, a                                       ; $63cb: $57
    adc h                                         ; $63cc: $8c
    inc c                                         ; $63cd: $0c
    ld l, b                                       ; $63ce: $68

jr_0a1_63cf:
    db $10                                        ; $63cf: $10
    add hl, hl                                    ; $63d0: $29
    inc bc                                        ; $63d1: $03
    sub $80                                       ; $63d2: $d6 $80
    ld a, a                                       ; $63d4: $7f
    ld a, [de]                                    ; $63d5: $1a
    push hl                                       ; $63d6: $e5
    add d                                         ; $63d7: $82
    ld h, h                                       ; $63d8: $64

Jump_0a1_63d9:
    ld b, $68                                     ; $63d9: $06 $68
    jr jr_0a1_63de                                ; $63db: $18 $01

    xor c                                         ; $63dd: $a9

jr_0a1_63de:
    ld d, a                                       ; $63de: $57
    ld d, b                                       ; $63df: $50
    xor a                                         ; $63e0: $af
    xor l                                         ; $63e1: $ad
    ld d, e                                       ; $63e2: $53
    rst $10                                       ; $63e3: $d7
    ld l, b                                       ; $63e4: $68
    jr nc, jr_0a1_6367                            ; $63e5: $30 $80

    sbc b                                         ; $63e7: $98
    ld [$e29d], sp                                ; $63e8: $08 $9d $e2
    ld b, b                                       ; $63eb: $40
    cp a                                          ; $63ec: $bf
    sub l                                         ; $63ed: $95
    ld [$080a], a                                 ; $63ee: $ea $0a $08
    push af                                       ; $63f1: $f5
    or l                                          ; $63f2: $b5
    jp z, $aef7                                   ; $63f3: $ca $f7 $ae

    nop                                           ; $63f6: $00
    ld e, a                                       ; $63f7: $5f
    rst $38                                       ; $63f8: $ff
    ld d, [hl]                                    ; $63f9: $56
    nop                                           ; $63fa: $00
    xor c                                         ; $63fb: $a9
    nop                                           ; $63fc: $00
    rst $38                                       ; $63fd: $ff
    sub h                                         ; $63fe: $94
    ld l, e                                       ; $63ff: $6b
    ld bc, $58fe                                  ; $6400: $01 $fe $58
    jr z, @-$57                                   ; $6403: $28 $a7

    ld d, c                                       ; $6405: $51
    xor [hl]                                      ; $6406: $ae
    nop                                           ; $6407: $00
    ld a, [bc]                                    ; $6408: $0a
    and b                                         ; $6409: $a0
    ld b, $ad                                     ; $640a: $06 $ad
    ld d, d                                       ; $640c: $52
    ld d, b                                       ; $640d: $50
    ld [bc], a                                    ; $640e: $02
    xor a                                         ; $640f: $af
    dec b                                         ; $6410: $05
    ld a, [$9f60]                                 ; $6411: $fa $60 $9f
    ld a, [c]                                     ; $6414: $f2
    sbc h                                         ; $6415: $9c
    ld b, $ef                                     ; $6416: $06 $ef
    nop                                           ; $6418: $00
    rst $38                                       ; $6419: $ff
    dec hl                                        ; $641a: $2b
    push de                                       ; $641b: $d5
    ld b, b                                       ; $641c: $40
    cp a                                          ; $641d: $bf
    dec d                                         ; $641e: $15
    db $eb                                        ; $641f: $eb
    add b                                         ; $6420: $80
    dec c                                         ; $6421: $0d
    ld a, a                                       ; $6422: $7f
    ld e, l                                       ; $6423: $5d
    and e                                         ; $6424: $a3
    rst $10                                       ; $6425: $d7

jr_0a1_6426:
    call nc, $8410                                ; $6426: $d4 $10 $84
    jr jr_0a1_6426                                ; $6429: $18 $fb

    ld [de], a                                    ; $642b: $12
    ld [de], a                                    ; $642c: $12
    rst $00                                       ; $642d: $c7
    call nc, $8408                                ; $642e: $d4 $08 $84
    jr jr_0a1_6473                                ; $6431: $18 $40

    rst $38                                       ; $6433: $ff
    xor [hl]                                      ; $6434: $ae
    db $e4                                        ; $6435: $e4
    rlca                                          ; $6436: $07
    call nc, $8408                                ; $6437: $d4 $08 $84
    jr jr_0a1_64ad                                ; $643a: $18 $71

    ld a, [bc]                                    ; $643c: $0a
    jp nz, $d412                                  ; $643d: $c2 $12 $d4

    ld [$1884], sp                                ; $6440: $08 $84 $18
    rst $28                                       ; $6443: $ef
    rst $38                                       ; $6444: $ff
    or l                                          ; $6445: $b5
    db $e4                                        ; $6446: $e4
    dec b                                         ; $6447: $05
    nop                                           ; $6448: $00
    xor a                                         ; $6449: $af
    xor a                                         ; $644a: $af
    ld e, l                                       ; $644b: $5d
    ld e, a                                       ; $644c: $5f
    xor b                                         ; $644d: $a8
    xor a                                         ; $644e: $af
    ld e, d                                       ; $644f: $5a
    ld d, a                                       ; $6450: $57
    nop                                           ; $6451: $00
    di                                            ; $6452: $f3
    rst $28                                       ; $6453: $ef
    or l                                          ; $6454: $b5
    call $faca                                    ; $6455: $cd $ca $fa
    ld [hl], l                                    ; $6458: $75
    ld [hl], l                                    ; $6459: $75
    nop                                           ; $645a: $00
    ld a, [$55fa]                                 ; $645b: $fa $fa $55
    push af                                       ; $645e: $f5
    ld a, [de]                                    ; $645f: $1a
    ld a, [$ed5d]                                 ; $6460: $fa $5d $ed
    nop                                           ; $6463: $00
    adc $f6                                       ; $6464: $ce $f6
    ld l, l                                       ; $6466: $6d
    ld [hl], e                                    ; $6467: $73
    or e                                          ; $6468: $b3
    cp a                                          ; $6469: $bf
    ld e, [hl]                                    ; $646a: $5e
    ld e, [hl]                                    ; $646b: $5e
    sbc a                                         ; $646c: $9f
    adc $39                                       ; $646d: $ce $39
    ldh [$e0], a                                  ; $646f: $e0 $e0
    xor $09                                       ; $6471: $ee $09

jr_0a1_6473:
    ld d, $0d                                     ; $6473: $16 $0d
    add h                                         ; $6475: $84
    add hl, de                                    ; $6476: $19
    ret nz                                        ; $6477: $c0

    adc c                                         ; $6478: $89
    inc h                                         ; $6479: $24
    ld [$0ee2], sp                                ; $647a: $08 $e2 $0e
    ld c, d                                       ; $647d: $4a
    db $10                                        ; $647e: $10
    ld a, [de]                                    ; $647f: $1a
    jr jr_0a1_64ca                                ; $6480: $18 $48

    push de                                       ; $6482: $d5
    ld a, [bc]                                    ; $6483: $0a

jr_0a1_6484:
    rst $38                                       ; $6484: $ff
    ldh a, [rTMA]                                 ; $6485: $f0 $06
    ld a, l                                       ; $6487: $7d
    nop                                           ; $6488: $00
    adc d                                         ; $6489: $8a
    rst $18                                       ; $648a: $df
    and b                                         ; $648b: $a0
    rst $30                                       ; $648c: $f7
    jr z, jr_0a1_650c                             ; $648d: $28 $7d

    add d                                         ; $648f: $82
    rst $30                                       ; $6490: $f7
    ld c, l                                       ; $6491: $4d
    add b                                         ; $6492: $80
    and [hl]                                      ; $6493: $a6
    dec c                                         ; $6494: $0d
    ld b, b                                       ; $6495: $40
    cp a                                          ; $6496: $bf
    ld [bc], a                                    ; $6497: $02
    jr c, jr_0a1_650a                             ; $6498: $38 $70

    ld e, l                                       ; $649a: $5d
    rst $38                                       ; $649b: $ff
    inc e                                         ; $649c: $1c
    ld d, b                                       ; $649d: $50
    cp b                                          ; $649e: $b8
    jr nz, jr_0a1_64d1                            ; $649f: $20 $30

    cp d                                          ; $64a1: $ba
    jp nz, $3c15                                  ; $64a2: $c2 $15 $3c

    nop                                           ; $64a5: $00
    and b                                         ; $64a6: $a0
    ld [bc], a                                    ; $64a7: $02
    ld a, [hl+]                                   ; $64a8: $2a

jr_0a1_64a9:
    ld a, a                                       ; $64a9: $7f
    adc d                                         ; $64aa: $8a
    jr nz, jr_0a1_6484                            ; $64ab: $20 $d7

jr_0a1_64ad:
    ld [$0050], sp                                ; $64ad: $08 $50 $00
    jr nz, jr_0a1_64a9                            ; $64b0: $20 $f7

    jr nz, @+$77                                  ; $64b2: $20 $75

    adc d                                         ; $64b4: $8a
    inc c                                         ; $64b5: $0c
    rst $18                                       ; $64b6: $df
    add b                                         ; $64b7: $80
    rst $38                                       ; $64b8: $ff
    ld a, [bc]                                    ; $64b9: $0a
    jp Jump_000_0407                              ; $64ba: $c3 $07 $04


Jump_0a1_64bd:
    ld d, b                                       ; $64bd: $50
    cp a                                          ; $64be: $bf
    ld b, l                                       ; $64bf: $45
    ld [$2adf], sp                                ; $64c0: $08 $df $2a
    xor a                                         ; $64c3: $af
    ld d, b                                       ; $64c4: $50
    push hl                                       ; $64c5: $e5
    rrca                                          ; $64c6: $0f
    ld e, e                                       ; $64c7: $5b
    and h                                         ; $64c8: $a4
    or a                                          ; $64c9: $b7

jr_0a1_64ca:
    ld a, b                                       ; $64ca: $78
    ld c, b                                       ; $64cb: $48
    sbc a                                         ; $64cc: $9f
    ld d, $5b                                     ; $64cd: $16 $5b
    ld c, $fa                                     ; $64cf: $0e $fa

jr_0a1_64d1:
    inc c                                         ; $64d1: $0c
    db $e4                                        ; $64d2: $e4
    ld b, $01                                     ; $64d3: $06 $01
    cp l                                          ; $64d5: $bd
    ld bc, $5d54                                  ; $64d6: $01 $54 $5d
    inc b                                         ; $64d9: $04
    nop                                           ; $64da: $00
    db $fd                                        ; $64db: $fd
    ld [bc], a                                    ; $64dc: $02
    nop                                           ; $64dd: $00
    ld bc, $16f3                                  ; $64de: $01 $f3 $16
    xor a                                         ; $64e1: $af
    db $fd                                        ; $64e2: $fd
    nop                                           ; $64e3: $00
    ld e, a                                       ; $64e4: $5f
    ld hl, sp-$51                                 ; $64e5: $f8 $af
    ld a, [c]                                     ; $64e7: $f2
    ld d, a                                       ; $64e8: $57
    db $e3                                        ; $64e9: $e3
    rst $28                                       ; $64ea: $ef
    add a                                         ; $64eb: $87

jr_0a1_64ec:
    nop                                           ; $64ec: $00
    call $facf                                    ; $64ed: $cd $cf $fa
    rst $38                                       ; $64f0: $ff
    ld [hl], l                                    ; $64f1: $75
    rst $38                                       ; $64f2: $ff
    ld a, [$005f]                                 ; $64f3: $fa $5f $00
    push af                                       ; $64f6: $f5
    rra                                           ; $64f7: $1f
    ld a, [$ed4f]                                 ; $64f8: $fa $4f $ed
    rst $00                                       ; $64fb: $c7
    or $e1                                        ; $64fc: $f6 $e1
    nop                                           ; $64fe: $00
    ld [hl], e                                    ; $64ff: $73
    di                                            ; $6500: $f3
    cp a                                          ; $6501: $bf
    rst $38                                       ; $6502: $ff
    ld e, [hl]                                    ; $6503: $5e
    db $fd                                        ; $6504: $fd
    xor d                                         ; $6505: $aa
    rst $38                                       ; $6506: $ff
    nop                                           ; $6507: $00
    ld d, h                                       ; $6508: $54
    ei                                            ; $6509: $fb

jr_0a1_650a:
    xor h                                         ; $650a: $ac
    db $fd                                        ; $650b: $fd

jr_0a1_650c:
    ld d, [hl]                                    ; $650c: $56
    rst $38                                       ; $650d: $ff
    xor b                                         ; $650e: $a8
    rst $38                                       ; $650f: $ff
    ld h, b                                       ; $6510: $60
    ld d, h                                       ; $6511: $54
    inc b                                         ; $6512: $04
    ld [$1b20], sp                                ; $6513: $08 $20 $1b
    ld a, l                                       ; $6516: $7d
    adc d                                         ; $6517: $8a
    ld e, a                                       ; $6518: $5f
    ld [hl+], a                                   ; $6519: $22
    rst $30                                       ; $651a: $f7
    inc b                                         ; $651b: $04
    jr z, @+$81                                   ; $651c: $28 $7f

    add b                                         ; $651e: $80
    rst $10                                       ; $651f: $d7
    and b                                         ; $6520: $a0
    ld h, e                                       ; $6521: $63
    dec b                                         ; $6522: $05
    ld d, l                                       ; $6523: $55
    rst $38                                       ; $6524: $ff
    ld b, c                                       ; $6525: $41
    xor d                                         ; $6526: $aa
    add d                                         ; $6527: $82
    ld b, $00                                     ; $6528: $06 $00
    rst $18                                       ; $652a: $df
    jr nz, jr_0a1_64ec                            ; $652b: $20 $bf

    ld b, b                                       ; $652d: $40
    ld [hl], e                                    ; $652e: $73
    dec d                                         ; $652f: $15
    db $fd                                        ; $6530: $fd
    stop                                          ; $6531: $10 $00
    ld l, l                                       ; $6533: $6d
    dec d                                         ; $6534: $15
    inc b                                         ; $6535: $04
    jr jr_0a1_6570                                ; $6536: $18 $38

    jr @+$12                                      ; $6538: $18 $10

    jr nc, jr_0a1_65ac                            ; $653a: $30 $70

    ld l, $01                                     ; $653c: $2e $01
    ld bc, $6100                                  ; $653e: $01 $00 $61
    inc bc                                        ; $6541: $03
    ld bc, $f000                                  ; $6542: $01 $00 $f0
    rrca                                          ; $6545: $0f

jr_0a1_6546:
    ld d, a                                       ; $6546: $57
    jr z, jr_0a1_6546                             ; $6547: $28 $fd

    ld [$07f0], sp                                ; $6549: $08 $f0 $07
    add l                                         ; $654c: $85
    ld h, $09                                     ; $654d: $26 $09
    add d                                         ; $654f: $82
    rlca                                          ; $6550: $07
    rlca                                          ; $6551: $07
    rrca                                          ; $6552: $0f
    ld bc, $1f00                                  ; $6553: $01 $00 $1f
    ld bc, $1000                                  ; $6556: $01 $00 $10
    ccf                                           ; $6559: $3f
    ccf                                           ; $655a: $3f
    ld a, a                                       ; $655b: $7f
    ld bc, $fd00                                  ; $655c: $01 $00 $fd
    ld [bc], a                                    ; $655f: $02
    ld e, a                                       ; $6560: $5f
    add d                                         ; $6561: $82
    adc b                                         ; $6562: $88
    adc h                                         ; $6563: $8c
    inc bc                                        ; $6564: $03
    ld [$205f], sp                                ; $6565: $08 $5f $20
    ld b, b                                       ; $6568: $40
    ld bc, $df80                                  ; $6569: $01 $80 $df
    and b                                         ; $656c: $a0
    rst $00                                       ; $656d: $c7
    ld b, b                                       ; $656e: $40
    ld c, b                                       ; $656f: $48

jr_0a1_6570:
    ld b, h                                       ; $6570: $44
    jr z, @+$05                                   ; $6571: $28 $03

    inc bc                                        ; $6573: $03
    rlca                                          ; $6574: $07
    ld bc, $3a10                                  ; $6575: $01 $10 $3a
    ld [$183c], sp                                ; $6578: $08 $3c $18
    call nz, Call_000_083e                        ; $657b: $c4 $3e $08
    ld [bc], a                                    ; $657e: $02
    ld [$7f7f], sp                                ; $657f: $08 $7f $7f
    jp $02da                                      ; $6582: $c3 $da $02


    add e                                         ; $6585: $83
    ld a, a                                       ; $6586: $7f
    ld h, d                                       ; $6587: $62
    ld bc, $0460                                  ; $6588: $01 $60 $04
    ld l, $15                                     ; $658b: $2e $15
    rst $38                                       ; $658d: $ff
    ld a, a                                       ; $658e: $7f
    ld a, a                                       ; $658f: $7f
    rrca                                          ; $6590: $0f
    ld d, h                                       ; $6591: $54
    rst $38                                       ; $6592: $ff
    di                                            ; $6593: $f3
    jr c, jr_0a1_65be                             ; $6594: $38 $28

    inc [hl]                                      ; $6596: $34
    jr z, @+$76                                   ; $6597: $28 $74

    ld [$4c31], sp                                ; $6599: $08 $31 $4c
    ld hl, sp-$08                                 ; $659c: $f8 $f8
    jr nc, jr_0a1_65f8                            ; $659e: $30 $58

    or c                                          ; $65a0: $b1
    rrca                                          ; $65a1: $0f
    inc sp                                        ; $65a2: $33
    ret nz                                        ; $65a3: $c0

    ret nz                                        ; $65a4: $c0

    ld d, $38                                     ; $65a5: $16 $38
    ld b, b                                       ; $65a7: $40
    ccf                                           ; $65a8: $3f
    ldh [$e0], a                                  ; $65a9: $e0 $e0
    inc h                                         ; $65ab: $24

jr_0a1_65ac:
    ld a, [bc]                                    ; $65ac: $0a
    ld d, b                                       ; $65ad: $50
    ld c, a                                       ; $65ae: $4f
    ret nz                                        ; $65af: $c0

    ld a, [hl+]                                   ; $65b0: $2a
    ld [$09b0], sp                                ; $65b1: $08 $b0 $09
    ld [hl], a                                    ; $65b4: $77
    ld [$0afd], sp                                ; $65b5: $08 $fd $0a
    ld e, a                                       ; $65b8: $5f
    jr nz, jr_0a1_65bc                            ; $65b9: $20 $01

    push af                                       ; $65bb: $f5

jr_0a1_65bc:
    ld a, [hl+]                                   ; $65bc: $2a
    ld a, l                                       ; $65bd: $7d

jr_0a1_65be:
    add b                                         ; $65be: $80
    rst $10                                       ; $65bf: $d7
    adc b                                         ; $65c0: $88
    rst $38                                       ; $65c1: $ff
    sbc $04                                       ; $65c2: $de $04
    inc bc                                        ; $65c4: $03
    rst $10                                       ; $65c5: $d7
    xor e                                         ; $65c6: $ab
    add c                                         ; $65c7: $81
    rst $38                                       ; $65c8: $ff
    jp Jump_000_04bf                              ; $65c9: $c3 $bf $04


    jr jr_0a1_65fe                                ; $65cc: $18 $30

    ld e, b                                       ; $65ce: $58
    nop                                           ; $65cf: $00
    ld bc, $0201                                  ; $65d0: $01 $01 $02
    inc bc                                        ; $65d3: $03
    ld [bc], a                                    ; $65d4: $02
    inc bc                                        ; $65d5: $03
    ld e, $1f                                     ; $65d6: $1e $1f

jr_0a1_65d8:
    nop                                           ; $65d8: $00
    ld hl, $213f                                  ; $65d9: $21 $3f $21
    ccf                                           ; $65dc: $3f
    ld h, $3f                                     ; $65dd: $26 $3f
    ld e, b                                       ; $65df: $58
    ld l, a                                       ; $65e0: $6f
    inc a                                         ; $65e1: $3c
    ld a, a                                       ; $65e2: $7f
    ld a, h                                       ; $65e3: $7c
    and b                                         ; $65e4: $a0
    rra                                           ; $65e5: $1f
    and $18                                       ; $65e6: $e6 $18
    jr nc, jr_0a1_65f3                            ; $65e8: $30 $09

    or b                                          ; $65ea: $b0
    ccf                                           ; $65eb: $3f
    inc bc                                        ; $65ec: $03
    inc bc                                        ; $65ed: $03
    db $10                                        ; $65ee: $10
    inc e                                         ; $65ef: $1c
    rra                                           ; $65f0: $1f
    ldh [$50], a                                  ; $65f1: $e0 $50

Call_0a1_65f3:
jr_0a1_65f3:
    ld b, h                                       ; $65f3: $44
    ret nz                                        ; $65f4: $c0

    ret nz                                        ; $65f5: $c0

    jr nz, jr_0a1_65d8                            ; $65f6: $20 $e0

jr_0a1_65f8:
    jr jr_0a1_661a                                ; $65f8: $18 $20

    ldh [$03], a                                  ; $65fa: $e0 $03
    ld b, b                                       ; $65fc: $40
    nop                                           ; $65fd: $00

jr_0a1_65fe:
    inc d                                         ; $65fe: $14
    add hl, de                                    ; $65ff: $19
    inc de                                        ; $6600: $13
    inc de                                        ; $6601: $13
    ld l, d                                       ; $6602: $6a
    inc h                                         ; $6603: $24

jr_0a1_6604:
    ld a, e                                       ; $6604: $7b
    adc e                                         ; $6605: $8b

jr_0a1_6606:
    add b                                         ; $6606: $80
    rlca                                          ; $6607: $07
    dec hl                                        ; $6608: $2b
    call nc, $38b8                                ; $6609: $d4 $b8 $38
    jr c, jr_0a1_6606                             ; $660c: $38 $f8

    ld b, $20                                     ; $660e: $06 $20
    ldh [$d0], a                                  ; $6610: $e0 $d0
    jr nc, jr_0a1_6604                            ; $6612: $30 $f0

    ld bc, $f800                                  ; $6614: $01 $00 $f8
    cpl                                           ; $6617: $2f
    rlca                                          ; $6618: $07
    nop                                           ; $6619: $00

jr_0a1_661a:
    rst $38                                       ; $661a: $ff
    rlca                                          ; $661b: $07
    rst $38                                       ; $661c: $ff
    dec c                                         ; $661d: $0d
    rst $38                                       ; $661e: $ff
    di                                            ; $661f: $f3

jr_0a1_6620:
    db $fd                                        ; $6620: $fd
    add e                                         ; $6621: $83
    nop                                           ; $6622: $00
    rst $38                                       ; $6623: $ff
    rlca                                          ; $6624: $07
    ei                                            ; $6625: $fb
    rlca                                          ; $6626: $07
    rst $38                                       ; $6627: $ff
    rrca                                          ; $6628: $0f
    rst $30                                       ; $6629: $f7
    rlca                                          ; $662a: $07
    add b                                         ; $662b: $80
    jr nc, @+$06                                  ; $662c: $30 $04

    add b                                         ; $662e: $80
    rst $38                                       ; $662f: $ff
    jp $cfbc                                      ; $6630: $c3 $bc $cf


    di                                            ; $6633: $f3
    ld a, a                                       ; $6634: $7f
    inc c                                         ; $6635: $0c
    ld c, a                                       ; $6636: $4f
    db $fd                                        ; $6637: $fd
    rst $38                                       ; $6638: $ff
    or c                                          ; $6639: $b1
    jr nc, jr_0a1_6643                            ; $663a: $30 $07

    db $fc                                        ; $663c: $fc
    inc b                                         ; $663d: $04
    jr nz, jr_0a1_6620                            ; $663e: $20 $e0

    inc de                                        ; $6640: $13
    ldh [$c0], a                                  ; $6641: $e0 $c0

jr_0a1_6643:
    ret nz                                        ; $6643: $c0

    ld [$7f1c], a                                 ; $6644: $ea $1c $7f
    ld a, a                                       ; $6647: $7f
    add h                                         ; $6648: $84
    ld c, b                                       ; $6649: $48
    cp h                                          ; $664a: $bc
    ld a, b                                       ; $664b: $78
    ld h, b                                       ; $664c: $60
    jp Jump_000_0718                              ; $664d: $c3 $18 $07


    jr nz, jr_0a1_66a1                            ; $6650: $20 $4f

    rst $08                                       ; $6652: $cf
    ccf                                           ; $6653: $3f
    ei                                            ; $6654: $fb
    set 7, e                                      ; $6655: $cb $fb
    db $10                                        ; $6657: $10
    ei                                            ; $6658: $fb
    inc sp                                        ; $6659: $33
    inc sp                                        ; $665a: $33
    jp nz, Jump_000_0728                          ; $665b: $c2 $28 $07

    ei                                            ; $665e: $fb
    ld c, $f6                                     ; $665f: $0e $f6
    nop                                           ; $6661: $00
    inc a                                         ; $6662: $3c
    call c, $b878                                 ; $6663: $dc $78 $b8
    ld h, c                                       ; $6666: $61
    pop hl                                        ; $6667: $e1
    adc $cf                                       ; $6668: $ce $cf
    ld h, a                                       ; $666a: $67
    ldh a, [$a4]                                  ; $666b: $f0 $a4
    rrca                                          ; $666d: $0f
    ld a, $31                                     ; $666e: $3e $31
    db $10                                        ; $6670: $10
    ldh a, [rSC]                                  ; $6671: $f0 $02
    ld [$48bc], sp                                ; $6673: $08 $bc $48
    sbc h                                         ; $6676: $9c
    ld [$1538], sp                                ; $6677: $08 $38 $15
    ld [$1d66], a                                 ; $667a: $ea $66 $1d
    cp h                                          ; $667d: $bc
    ld [$089c], sp                                ; $667e: $08 $9c $08
    add sp, $18                                   ; $6681: $e8 $18
    ld hl, sp-$3c                                 ; $6683: $f8 $c4
    ld bc, $6000                                  ; $6685: $01 $00 $60
    ld b, c                                       ; $6688: $41
    ld a, [bc]                                    ; $6689: $0a
    ld e, a                                       ; $668a: $5f
    add d                                         ; $668b: $82
    ld [hl], h                                    ; $668c: $74
    dec b                                         ; $668d: $05
    ld a, [bc]                                    ; $668e: $0a
    ld e, a                                       ; $668f: $5f
    ret nz                                        ; $6690: $c0

    ld b, b                                       ; $6691: $40
    dec b                                         ; $6692: $05
    jr nz, jr_0a1_669f                            ; $6693: $20 $0a

    or b                                          ; $6695: $b0
    rla                                           ; $6696: $17
    and l                                         ; $6697: $a5
    rrca                                          ; $6698: $0f
    ld b, d                                       ; $6699: $42
    rst $38                                       ; $669a: $ff
    ld bc, $c360                                  ; $669b: $01 $60 $c3
    db $fd                                        ; $669e: $fd

jr_0a1_669f:
    add e                                         ; $669f: $83
    db $fd                                        ; $66a0: $fd

jr_0a1_66a1:
    inc b                                         ; $66a1: $04
    ld c, b                                       ; $66a2: $48
    ld l, a                                       ; $66a3: $6f
    nop                                           ; $66a4: $00
    sub b                                         ; $66a5: $90
    cp a                                          ; $66a6: $bf
    ret nz                                        ; $66a7: $c0

    cpl                                           ; $66a8: $2f
    ret nc                                        ; $66a9: $d0

    rst $18                                       ; $66aa: $df
    and b                                         ; $66ab: $a0
    xor a                                         ; $66ac: $af
    nop                                           ; $66ad: $00
    ret nc                                        ; $66ae: $d0

    rst $10                                       ; $66af: $d7
    add sp, $2f                                   ; $66b0: $e8 $2f
    ret nc                                        ; $66b2: $d0

    rst $38                                       ; $66b3: $ff
    add b                                         ; $66b4: $80
    rst $38                                       ; $66b5: $ff
    ld b, b                                       ; $66b6: $40
    nop                                           ; $66b7: $00
    ld [bc], a                                    ; $66b8: $02
    ld e, b                                       ; $66b9: $58
    scf                                           ; $66ba: $37
    ret z                                         ; $66bb: $c8

    db $db                                        ; $66bc: $db
    and h                                         ; $66bd: $a4
    cpl                                           ; $66be: $2f
    ret nc                                        ; $66bf: $d0

    nop                                           ; $66c0: $00
    rst $10                                       ; $66c1: $d7
    xor b                                         ; $66c2: $a8
    ccf                                           ; $66c3: $3f
    ret nz                                        ; $66c4: $c0

    rst $18                                       ; $66c5: $df
    and b                                         ; $66c6: $a0
    cpl                                           ; $66c7: $2f
    ret nc                                        ; $66c8: $d0

    nop                                           ; $66c9: $00
    rst $30                                       ; $66ca: $f7
    adc b                                         ; $66cb: $88
    rst $38                                       ; $66cc: $ff
    ld bc, $0bf4                                  ; $66cd: $01 $f4 $0b
    ei                                            ; $66d0: $fb
    dec b                                         ; $66d1: $05
    ld [$03fc], sp                                ; $66d2: $08 $fc $03
    db $eb                                        ; $66d5: $eb
    dec d                                         ; $66d6: $15
    ld [$0700], sp                                ; $66d7: $08 $00 $07
    db $fd                                        ; $66da: $fd
    inc bc                                        ; $66db: $03
    nop                                           ; $66dc: $00
    ld e, a                                       ; $66dd: $5f
    and b                                         ; $66de: $a0
    or a                                          ; $66df: $b7
    ret z                                         ; $66e0: $c8

    db $db                                        ; $66e1: $db
    db $e4                                        ; $66e2: $e4
    xor a                                         ; $66e3: $af
    ret nc                                        ; $66e4: $d0

    add b                                         ; $66e5: $80
    jr nz, jr_0a1_66f0                            ; $66e6: $20 $08

    scf                                           ; $66e8: $37
    ret z                                         ; $66e9: $c8

    rst $18                                       ; $66ea: $df
    and b                                         ; $66eb: $a0
    ld e, [hl]                                    ; $66ec: $5e
    and b                                         ; $66ed: $a0
    or [hl]                                       ; $66ee: $b6
    nop                                           ; $66ef: $00

jr_0a1_66f0:
    ret z                                         ; $66f0: $c8

    jp c, $aee4                                   ; $66f1: $da $e4 $ae

    ret nc                                        ; $66f4: $d0

    ld a, $c0                                     ; $66f5: $3e $c0
    sbc $00                                       ; $66f7: $de $00
    and b                                         ; $66f9: $a0
    ld [hl], $c8                                  ; $66fa: $36 $c8
    sbc $a0                                       ; $66fc: $de $a0
    ld l, [hl]                                    ; $66fe: $6e
    sub b                                         ; $66ff: $90
    cp [hl]                                       ; $6700: $be
    nop                                           ; $6701: $00
    ret nz                                        ; $6702: $c0

    ld l, $d0                                     ; $6703: $2e $d0
    sbc $a0                                       ; $6705: $de $a0
    xor [hl]                                      ; $6707: $ae
    ret nc                                        ; $6708: $d0

    sub $00                                       ; $6709: $d6 $00
    add sp, $2e                                   ; $670b: $e8 $2e
    ret nc                                        ; $670d: $d0

    cp $80                                        ; $670e: $fe $80
    ld l, a                                       ; $6710: $6f
    ld de, $0074                                  ; $6711: $11 $74 $00
    dec bc                                        ; $6714: $0b
    ld a, e                                       ; $6715: $7b
    dec b                                         ; $6716: $05
    ld a, h                                       ; $6717: $7c
    inc bc                                        ; $6718: $03
    ld l, e                                       ; $6719: $6b
    dec d                                         ; $671a: $15
    ld [hl], h                                    ; $671b: $74
    ld bc, $5b0b                                  ; $671c: $01 $0b $5b
    dec h                                         ; $671f: $25
    ld l, h                                       ; $6720: $6c
    inc de                                        ; $6721: $13
    ld a, a                                       ; $6722: $7f
    ld bc, $3810                                  ; $6723: $01 $10 $38
    nop                                           ; $6726: $00
    ld a, e                                       ; $6727: $7b
    rlca                                          ; $6728: $07
    ld a, l                                       ; $6729: $7d
    inc bc                                        ; $672a: $03
    or e                                          ; $672b: $b3
    cp $8f                                        ; $672c: $fe $8f
    xor l                                         ; $672e: $ad
    nop                                           ; $672f: $00
    add h                                         ; $6730: $84
    call nc, $a88c                                ; $6731: $d4 $8c $a8
    adc b                                         ; $6734: $88
    ret c                                         ; $6735: $d8

    sbc a                                         ; $6736: $9f
    cp a                                          ; $6737: $bf
    nop                                           ; $6738: $00
    ld a, [c]                                     ; $6739: $f2
    rst $38                                       ; $673a: $ff
    sbc a                                         ; $673b: $9f
    ld [c], a                                     ; $673c: $e2
    rrca                                          ; $673d: $0f
    ld [$9c97], sp                                ; $673e: $08 $97 $9c
    nop                                           ; $6741: $00
    ld h, e                                       ; $6742: $63
    ld a, a                                       ; $6743: $7f
    ld hl, $733f                                  ; $6744: $21 $3f $73
    ld e, [hl]                                    ; $6747: $5e
    sbc $ac                                       ; $6748: $de $ac
    nop                                           ; $674a: $00
    xor h                                         ; $674b: $ac
    ld d, h                                       ; $674c: $54
    ld d, h                                       ; $674d: $54
    xor h                                         ; $674e: $ac
    ld [c], a                                     ; $674f: $e2
    ccf                                           ; $6750: $3f
    push af                                       ; $6751: $f5
    ld e, [hl]                                    ; $6752: $5e
    nop                                           ; $6753: $00
    res 1, h                                      ; $6754: $cb $8c
    add a                                         ; $6756: $87
    inc b                                         ; $6757: $04
    inc bc                                        ; $6758: $03
    ld [bc], a                                    ; $6759: $02
    ld bc, $0001                                  ; $675a: $01 $01 $00
    ld [bc], a                                    ; $675d: $02
    inc bc                                        ; $675e: $03
    ld [bc], a                                    ; $675f: $02

jr_0a1_6760:
    ld [bc], a                                    ; $6760: $02
    pop hl                                        ; $6761: $e1
    ccf                                           ; $6762: $3f
    pop af                                        ; $6763: $f1
    rra                                           ; $6764: $1f
    add b                                         ; $6765: $80
    ld [bc], a                                    ; $6766: $02
    nop                                           ; $6767: $00
    ld a, a                                       ; $6768: $7f
    adc a                                         ; $6769: $8f
    rst $18                                       ; $676a: $df
    ld bc, $01ab                                  ; $676b: $01 $ab $01
    ld d, l                                       ; $676e: $55
    nop                                           ; $676f: $00
    inc bc                                        ; $6770: $03
    xor e                                         ; $6771: $ab
    cp $85                                        ; $6772: $fe $85
    db $fd                                        ; $6774: $fd
    add [hl]                                      ; $6775: $86
    cp $f5                                        ; $6776: $fe $f5
    nop                                           ; $6778: $00
    adc a                                         ; $6779: $8f
    rst $38                                       ; $677a: $ff
    add c                                         ; $677b: $81
    rst $38                                       ; $677c: $ff
    add e                                         ; $677d: $83
    cp $86                                        ; $677e: $fe $86
    db $fc                                        ; $6780: $fc
    nop                                           ; $6781: $00
    adc h                                         ; $6782: $8c
    ld hl, sp-$54                                 ; $6783: $f8 $ac
    ld e, h                                       ; $6785: $5c
    ld d, d                                       ; $6786: $52
    cp [hl]                                       ; $6787: $be
    and e                                         ; $6788: $a3
    ld a, a                                       ; $6789: $7f
    db $10                                        ; $678a: $10
    pop bc                                        ; $678b: $c1
    rst $38                                       ; $678c: $ff
    ret nz                                        ; $678d: $c0

    ld b, h                                       ; $678e: $44
    nop                                           ; $678f: $00
    inc de                                        ; $6790: $13
    rra                                           ; $6791: $1f
    dec c                                         ; $6792: $0d
    rrca                                          ; $6793: $0f
    ld [$0f0d], sp                                ; $6794: $08 $0d $0f
    ld [hl], b                                    ; $6797: $70
    ld a, a                                       ; $6798: $7f
    push hl                                       ; $6799: $e5
    ld [$ff81], sp                                ; $679a: $08 $81 $ff
    jp $fe00                                      ; $679d: $c3 $00 $fe


    ld a, $fc                                     ; $67a0: $3e $fc
    inc c                                         ; $67a2: $0c
    ld hl, sp+$05                                 ; $67a3: $f8 $05
    ld d, a                                       ; $67a5: $57
    adc c                                         ; $67a6: $89
    nop                                           ; $67a7: $00
    xor a                                         ; $67a8: $af
    pop de                                        ; $67a9: $d1
    rst $18                                       ; $67aa: $df
    pop af                                        ; $67ab: $f1
    cp a                                          ; $67ac: $bf
    sub c                                         ; $67ad: $91
    rra                                           ; $67ae: $1f
    add hl, bc                                    ; $67af: $09
    nop                                           ; $67b0: $00
    rrca                                          ; $67b1: $0f
    dec b                                         ; $67b2: $05
    rlca                                          ; $67b3: $07
    rrca                                          ; $67b4: $0f
    dec bc                                        ; $67b5: $0b
    cp $fe                                        ; $67b6: $fe $fe
    di                                            ; $67b8: $f3
    nop                                           ; $67b9: $00
    add e                                         ; $67ba: $83
    add d                                         ; $67bb: $82
    add e                                         ; $67bc: $83
    ld [c], a                                     ; $67bd: $e2
    db $e3                                        ; $67be: $e3
    sbc [hl]                                      ; $67bf: $9e
    rst $38                                       ; $67c0: $ff
    add d                                         ; $67c1: $82
    add b                                         ; $67c2: $80
    ld b, h                                       ; $67c3: $44
    nop                                           ; $67c4: $00
    pop bc                                        ; $67c5: $c1
    rst $38                                       ; $67c6: $ff
    rlca                                          ; $67c7: $07
    rlca                                          ; $67c8: $07
    ret z                                         ; $67c9: $c8

    rst $08                                       ; $67ca: $cf
    jr nc, @+$22                                  ; $67cb: $30 $20

    rst $38                                       ; $67cd: $ff
    ld [$0002], sp                                ; $67ce: $08 $02 $00
    ld a, a                                       ; $67d1: $7f

jr_0a1_67d2:
    rst $38                                       ; $67d2: $ff
    ret                                           ; $67d3: $c9


    adc [hl]                                      ; $67d4: $8e
    adc e                                         ; $67d5: $8b
    nop                                           ; $67d6: $00
    inc c                                         ; $67d7: $0c
    jr jr_0a1_67d2                                ; $67d8: $18 $f8

    and [hl]                                      ; $67da: $a6
    cp $61                                        ; $67db: $fe $61
    rst $38                                       ; $67dd: $ff
    jr nz, jr_0a1_6760                            ; $67de: $20 $80

    ld [bc], a                                    ; $67e0: $02
    nop                                           ; $67e1: $00
    ld l, $ff                                     ; $67e2: $2e $ff
    pop af                                        ; $67e4: $f1
    rst $38                                       ; $67e5: $ff
    pop bc                                        ; $67e6: $c1

jr_0a1_67e7:
    ld a, a                                       ; $67e7: $7f
    rla                                           ; $67e8: $17
    nop                                           ; $67e9: $00
    add hl, de                                    ; $67ea: $19
    cpl                                           ; $67eb: $2f
    ld sp, $d9ff                                  ; $67ec: $31 $ff $d9
    cp a                                          ; $67ef: $bf
    rst $00                                       ; $67f0: $c7
    cp a                                          ; $67f1: $bf
    nop                                           ; $67f2: $00
    pop bc                                        ; $67f3: $c1
    rst $38                                       ; $67f4: $ff
    add c                                         ; $67f5: $81
    ld a, a                                       ; $67f6: $7f
    cp a                                          ; $67f7: $bf
    pop hl                                        ; $67f8: $e1
    rst $38                                       ; $67f9: $ff
    cp a                                          ; $67fa: $bf
    ld [de], a                                    ; $67fb: $12
    ret nz                                        ; $67fc: $c0

    rst $18                                       ; $67fd: $df
    ldh [$30], a                                  ; $67fe: $e0 $30
    add hl, sp                                    ; $6800: $39
    add b                                         ; $6801: $80
    rst $38                                       ; $6802: $ff
    ld d, b                                       ; $6803: $50
    ld c, c                                       ; $6804: $49
    ld [hl], a                                    ; $6805: $77
    db $10                                        ; $6806: $10
    adc b                                         ; $6807: $88
    xor d                                         ; $6808: $aa
    ld d, l                                       ; $6809: $55
    ld h, b                                       ; $680a: $60
    add hl, sp                                    ; $680b: $39
    ei                                            ; $680c: $fb
    inc b                                         ; $680d: $04
    db $fd                                        ; $680e: $fd
    ld [bc], a                                    ; $680f: $02
    add b                                         ; $6810: $80
    db $10                                        ; $6811: $10
    ld c, b                                       ; $6812: $48
    cp $01                                        ; $6813: $fe $01
    ld a, a                                       ; $6815: $7f
    add b                                         ; $6816: $80
    xor d                                         ; $6817: $aa
    ld d, l                                       ; $6818: $55
    nop                                           ; $6819: $00
    ld de, $7fff                                  ; $681a: $11 $ff $7f
    add b                                         ; $681d: $80
    add e                                         ; $681e: $83
    add hl, hl                                    ; $681f: $29
    rst $38                                       ; $6820: $ff
    rst $38                                       ; $6821: $ff
    xor d                                         ; $6822: $aa
    ld b, $08                                     ; $6823: $06 $08
    ld h, d                                       ; $6825: $62
    nop                                           ; $6826: $00
    db $10                                        ; $6827: $10
    ld c, b                                       ; $6828: $48
    add b                                         ; $6829: $80
    add hl, bc                                    ; $682a: $09
    db $eb                                        ; $682b: $eb
    rla                                           ; $682c: $17
    push af                                       ; $682d: $f5
    add h                                         ; $682e: $84
    ld bc, $00f4                                  ; $682f: $01 $f4 $00
    dec bc                                        ; $6832: $0b
    ld l, l                                       ; $6833: $6d
    sub e                                         ; $6834: $93
    add b                                         ; $6835: $80
    ld a, a                                       ; $6836: $7f
    ld [hl], $c8                                  ; $6837: $36 $c8
    jp c, $a40a                                   ; $6839: $da $0a $a4

    ld l, $d0                                     ; $683c: $2e $d0
    sub $a0                                       ; $683e: $d6 $a0
    ld bc, $a0de                                  ; $6840: $01 $de $a0
    ld bc, $0192                                  ; $6843: $01 $92 $01
    db $ec                                        ; $6846: $ec
    nop                                           ; $6847: $00
    rst $38                                       ; $6848: $ff
    cp $01                                        ; $6849: $fe $01
    ld [bc], a                                    ; $684b: $02
    db $fd                                        ; $684c: $fd
    ld [bc], a                                    ; $684d: $02
    ld [$4081], sp                                ; $684e: $08 $81 $40
    jr jr_0a1_67e7                                ; $6851: $18 $94

    db $fc                                        ; $6853: $fc
    xor [hl]                                      ; $6854: $ae
    ld a, [c]                                     ; $6855: $f2
    rst $18                                       ; $6856: $df
    pop hl                                        ; $6857: $e1
    sbc [hl]                                      ; $6858: $9e
    ld [$fe00], sp                                ; $6859: $08 $00 $fe
    add e                                         ; $685c: $83
    cp $83                                        ; $685d: $fe $83
    rst $38                                       ; $685f: $ff
    rst $38                                       ; $6860: $ff
    scf                                           ; $6861: $37
    jr c, jr_0a1_6864                             ; $6862: $38 $00

jr_0a1_6864:
    ld e, a                                       ; $6864: $5f
    ld h, b                                       ; $6865: $60
    rst $38                                       ; $6866: $ff
    add b                                         ; $6867: $80
    ld a, a                                       ; $6868: $7f
    pop bc                                        ; $6869: $c1
    ld a, $f3                                     ; $686a: $3e $f3
    db $10                                        ; $686c: $10
    inc c                                         ; $686d: $0c
    rst $38                                       ; $686e: $ff
    inc b                                         ; $686f: $04
    dec e                                         ; $6870: $1d
    ld [bc], a                                    ; $6871: $02
    adc b                                         ; $6872: $88
    ld hl, sp-$70                                 ; $6873: $f8 $90
    ldh a, [rP1]                                  ; $6875: $f0 $00
    ret nc                                        ; $6877: $d0

    ldh a, [$38]                                  ; $6878: $f0 $38
    ld hl, sp+$07                                 ; $687a: $f8 $07
    rst $38                                       ; $687c: $ff
    inc bc                                        ; $687d: $03
    cp $40                                        ; $687e: $fe $40
    ld bc, $022d                                  ; $6880: $01 $2d $02
    dec de                                        ; $6883: $1b
    dec d                                         ; $6884: $15
    dec [hl]                                      ; $6885: $35
    dec hl                                        ; $6886: $2b
    ld l, e                                       ; $6887: $6b
    ld d, l                                       ; $6888: $55
    rlca                                          ; $6889: $07
    push de                                       ; $688a: $d5
    xor e                                         ; $688b: $ab
    xor e                                         ; $688c: $ab
    ld d, l                                       ; $688d: $55
    ld d, l                                       ; $688e: $55
    inc b                                         ; $688f: $04
    nop                                           ; $6890: $00
    ld a, l                                       ; $6891: $7d
    ld [$0802], sp                                ; $6892: $08 $02 $08
    inc d                                         ; $6895: $14

jr_0a1_6896:
    xor d                                         ; $6896: $aa
    nop                                           ; $6897: $00
    ld d, l                                       ; $6898: $55
    inc b                                         ; $6899: $04
    nop                                           ; $689a: $00
    rst $38                                       ; $689b: $ff
    ld [$0c00], sp                                ; $689c: $08 $00 $0c
    rst $38                                       ; $689f: $ff
    ld [bc], a                                    ; $68a0: $02
    ld sp, hl                                     ; $68a1: $f9
    ld c, $1c                                     ; $68a2: $0e $1c
    rst $28                                       ; $68a4: $ef
    jr jr_0a1_6896                                ; $68a5: $18 $ef

    inc b                                         ; $68a7: $04
    adc b                                         ; $68a8: $88
    inc c                                         ; $68a9: $0c
    add b                                         ; $68aa: $80
    or b                                          ; $68ab: $b0
    db $10                                        ; $68ac: $10

Jump_0a1_68ad:
    xor d                                         ; $68ad: $aa
    rst $38                                       ; $68ae: $ff
    push af                                       ; $68af: $f5
    rst $38                                       ; $68b0: $ff
    rst $18                                       ; $68b1: $df
    ccf                                           ; $68b2: $3f
    dec bc                                        ; $68b3: $0b
    nop                                           ; $68b4: $00
    rlca                                          ; $68b5: $07
    sbc d                                         ; $68b6: $9a
    nop                                           ; $68b7: $00
    and e                                         ; $68b8: $a3
    inc e                                         ; $68b9: $1c
    inc e                                         ; $68ba: $1c

Call_0a1_68bb:
    inc hl                                        ; $68bb: $23
    dec e                                         ; $68bc: $1d

Jump_0a1_68bd:
    nop                                           ; $68bd: $00
    ld hl, sp+$38                                 ; $68be: $f8 $38
    di                                            ; $68c0: $f3
    ld [hl], e                                    ; $68c1: $73
    db $e4                                        ; $68c2: $e4
    db $e4                                        ; $68c3: $e4
    ret z                                         ; $68c4: $c8

    ld b, a                                       ; $68c5: $47
    nop                                           ; $68c6: $00
    sbc b                                         ; $68c7: $98
    ld a, [de]                                    ; $68c8: $1a
    sbc l                                         ; $68c9: $9d
    ld e, $4f                                     ; $68ca: $1e $4f
    ld b, l                                       ; $68cc: $45
    add e                                         ; $68cd: $83
    xor e                                         ; $68ce: $ab
    nop                                           ; $68cf: $00
    rra                                           ; $68d0: $1f
    inc de                                        ; $68d1: $13
    call z, Call_000_2050                         ; $68d2: $cc $50 $20
    jr nz, jr_0a1_68e8                            ; $68d5: $20 $11

    pop hl                                        ; $68d7: $e1
    nop                                           ; $68d8: $00
    inc de                                        ; $68d9: $13
    sub [hl]                                      ; $68da: $96
    ld h, a                                       ; $68db: $67
    ld a, l                                       ; $68dc: $7d
    rst $08                                       ; $68dd: $cf
    rst $38                                       ; $68de: $ff
    sbc a                                         ; $68df: $9f
    ld h, e                                       ; $68e0: $63
    nop                                           ; $68e1: $00
    add h                                         ; $68e2: $84
    inc b                                         ; $68e3: $04
    inc bc                                        ; $68e4: $03
    cp e                                          ; $68e5: $bb
    ld a, l                                       ; $68e6: $7d
    rst $20                                       ; $68e7: $e7

jr_0a1_68e8:
    cp $82                                        ; $68e8: $fe $82

jr_0a1_68ea:
    jr nz, @+$01                                  ; $68ea: $20 $ff

    ld a, l                                       ; $68ec: $7d
    xor e                                         ; $68ed: $ab
    ld [bc], a                                    ; $68ee: $02
    cp $ff                                        ; $68ef: $fe $ff
    ld d, c                                       ; $68f1: $51
    jr nz, @+$30                                  ; $68f2: $20 $2e

    nop                                           ; $68f4: $00
    ld b, b                                       ; $68f5: $40
    cp a                                          ; $68f6: $bf
    ld b, b                                       ; $68f7: $40
    ld a, a                                       ; $68f8: $7f
    add b                                         ; $68f9: $80
    ld a, a                                       ; $68fa: $7f
    add b                                         ; $68fb: $80
    cp a                                          ; $68fc: $bf
    nop                                           ; $68fd: $00
    ret nz                                        ; $68fe: $c0

    rst $10                                       ; $68ff: $d7
    add sp, -$56                                  ; $6900: $e8 $aa
    push af                                       ; $6902: $f5
    sub b                                         ; $6903: $90
    ld h, b                                       ; $6904: $60
    ld l, c                                       ; $6905: $69
    nop                                           ; $6906: $00
    db $10                                        ; $6907: $10
    xor e                                         ; $6908: $ab
    ld de, $23d7                                  ; $6909: $11 $d7 $23
    jp $a327                                      ; $690c: $c3 $27 $a3


    nop                                           ; $690f: $00
    ld b, a                                       ; $6910: $47
    add l                                         ; $6911: $85
    ld b, e                                       ; $6912: $43
    sbc c                                         ; $6913: $99
    add b                                         ; $6914: $80
    ld [hl], a                                    ; $6915: $77
    ccf                                           ; $6916: $3f
    ld a, a                                       ; $6917: $7f
    add h                                         ; $6918: $84
    db $d3                                        ; $6919: $d3
    ld [hl-], a                                   ; $691a: $32
    ld sp, hl                                     ; $691b: $f9
    cp $88                                        ; $691c: $fe $88
    ld [hl], b                                    ; $691e: $70
    ldh [$0a], a                                  ; $691f: $e0 $0a
    cp $ff                                        ; $6921: $fe $ff
    nop                                           ; $6923: $00
    ld a, [$d5fc]                                 ; $6924: $fa $fc $d5
    ldh [$5a], a                                  ; $6927: $e0 $5a
    add b                                         ; $6929: $80
    ld b, e                                       ; $692a: $43

Call_0a1_692b:
    inc a                                         ; $692b: $3c
    jr z, jr_0a1_68ea                             ; $692c: $28 $bc

    ld b, e                                       ; $692e: $43
    ldh [rWY], a                                  ; $692f: $e0 $4a
    pop bc                                        ; $6931: $c1
    ld b, b                                       ; $6932: $40
    ld bc, $0b91                                  ; $6933: $01 $91 $0b
    rst $30                                       ; $6936: $f7
    nop                                           ; $6937: $00
    add hl, bc                                    ; $6938: $09
    ld l, c                                       ; $6939: $69
    sbc b                                         ; $693a: $98
    ld hl, sp-$10                                 ; $693b: $f8 $f0
    sub h                                         ; $693d: $94
    ld h, e                                       ; $693e: $63
    adc e                                         ; $693f: $8b
    nop                                           ; $6940: $00
    inc b                                         ; $6941: $04
    ld b, [hl]                                    ; $6942: $46
    adc c                                         ; $6943: $89
    sub h                                         ; $6944: $94
    set 7, a                                      ; $6945: $cb $ff
    rst $38                                       ; $6947: $ff
    db $fc                                        ; $6948: $fc
    nop                                           ; $6949: $00
    rst $38                                       ; $694a: $ff
    ld h, [hl]                                    ; $694b: $66
    ld hl, sp+$01                                 ; $694c: $f8 $01
    nop                                           ; $694e: $00
    ld b, $f8                                     ; $694f: $06 $f8
    ldh a, [rP1]                                  ; $6951: $f0 $00
    rrca                                          ; $6953: $0f
    ld l, $d1                                     ; $6954: $2e $d1
    nop                                           ; $6956: $00
    rst $38                                       ; $6957: $ff
    ret z                                         ; $6958: $c8

    ldh [$d0], a                                  ; $6959: $e0 $d0
    nop                                           ; $695b: $00
    nop                                           ; $695c: $00
    and b                                         ; $695d: $a0
    inc bc                                        ; $695e: $03
    ld b, e                                       ; $695f: $43
    inc b                                         ; $6960: $04
    and d                                         ; $6961: $a2
    inc b                                         ; $6962: $04
    ld c, c                                       ; $6963: $49
    nop                                           ; $6964: $00
    add h                                         ; $6965: $84
    rlca                                          ; $6966: $07
    ret z                                         ; $6967: $c8

    add a                                         ; $6968: $87
    ld c, b                                       ; $6969: $48
    ld b, l                                       ; $696a: $45
    rrca                                          ; $696b: $0f
    xor e                                         ; $696c: $ab
    nop                                           ; $696d: $00
    rlca                                          ; $696e: $07
    push bc                                       ; $696f: $c5
    inc bc                                        ; $6970: $03
    nop                                           ; $6971: $00
    ldh a, [$72]                                  ; $6972: $f0 $72
    inc c                                         ; $6974: $0c
    dec c                                         ; $6975: $0d
    jr nz, jr_0a1_697a                            ; $6976: $20 $02

    push de                                       ; $6978: $d5
    ld c, c                                       ; $6979: $49

jr_0a1_697a:
    ld bc, $df80                                  ; $697a: $01 $80 $df
    ldh a, [$9f]                                  ; $697d: $f0 $9f
    sub b                                         ; $697f: $90
    nop                                           ; $6980: $00
    ccf                                           ; $6981: $3f

jr_0a1_6982:
    xor b                                         ; $6982: $a8
    ld a, a                                       ; $6983: $7f
    inc [hl]                                      ; $6984: $34
    ld a, a                                       ; $6985: $7f
    ld e, [hl]                                    ; $6986: $5e
    ccf                                           ; $6987: $3f
    cpl                                           ; $6988: $2f
    ld de, $151f                                  ; $6989: $11 $1f $15
    db $e3                                        ; $698c: $e3
    rra                                           ; $698d: $1f
    dec sp                                        ; $698e: $3b
    add c                                         ; $698f: $81
    rst $38                                       ; $6990: $ff
    ld c, e                                       ; $6991: $4b
    or b                                          ; $6992: $b0
    nop                                           ; $6993: $00
    nop                                           ; $6994: $00
    rla                                           ; $6995: $17
    ret z                                         ; $6996: $c8

    rrca                                          ; $6997: $0f
    ret nc                                        ; $6998: $d0

    ld [hl], a                                    ; $6999: $77
    sbc b                                         ; $699a: $98
    ld a, d                                       ; $699b: $7a
    sbc l                                         ; $699c: $9d
    nop                                           ; $699d: $00
    sbc l                                         ; $699e: $9d
    adc a                                         ; $699f: $8f
    ld c, $87                                     ; $69a0: $0e $87
    add a                                         ; $69a2: $87
    inc bc                                        ; $69a3: $03
    ld b, d                                       ; $69a4: $42
    ld bc, $fa10                                  ; $69a5: $01 $10 $fa
    inc b                                         ; $69a8: $04
    ld hl, sp+$02                                 ; $69a9: $f8 $02
    nop                                           ; $69ab: $00
    ld sp, hl                                     ; $69ac: $f9
    inc b                                         ; $69ad: $04
    ld [hl], l                                    ; $69ae: $75
    adc b                                         ; $69af: $88
    nop                                           ; $69b0: $00
    xor e                                         ; $69b1: $ab
    ret c                                         ; $69b2: $d8

    ld e, e                                       ; $69b3: $5b
    ld hl, sp-$47                                 ; $69b4: $f8 $b9
    ld hl, sp-$2b                                 ; $69b6: $f8 $d5
    ld a, e                                       ; $69b8: $7b
    nop                                           ; $69b9: $00
    ld l, e                                       ; $69ba: $6b
    ccf                                           ; $69bb: $3f
    scf                                           ; $69bc: $37
    ld a, $be                                     ; $69bd: $3e $be
    inc e                                         ; $69bf: $1c
    jr nz, jr_0a1_6982                            ; $69c0: $20 $c0

    ld bc, $38c4                                  ; $69c2: $01 $c4 $38
    ld a, [de]                                    ; $69c5: $1a
    inc b                                         ; $69c6: $04
    db $fc                                        ; $69c7: $fc
    ld [bc], a                                    ; $69c8: $02
    and d                                         ; $69c9: $a2
    inc d                                         ; $69ca: $14
    ld bc, $1101                                  ; $69cb: $01 $01 $11
    jr nz, @+$4e                                  ; $69ce: $20 $4c

    jr nz, jr_0a1_6a11                            ; $69d0: $20 $3f

    ld b, b                                       ; $69d2: $40
    rst $38                                       ; $69d3: $ff
    add sp, $00                                   ; $69d4: $e8 $00
    nop                                           ; $69d6: $00
    rst $18                                       ; $69d7: $df
    ld h, b                                       ; $69d8: $60
    add hl, hl                                    ; $69d9: $29
    nop                                           ; $69da: $00
    ld d, d                                       ; $69db: $52
    add c                                         ; $69dc: $81
    sub c                                         ; $69dd: $91
    ld h, d                                       ; $69de: $62
    nop                                           ; $69df: $00
    ld l, b                                       ; $69e0: $68
    inc de                                        ; $69e1: $13
    xor h                                         ; $69e2: $ac
    inc de                                        ; $69e3: $13
    and h                                         ; $69e4: $a4
    inc de                                        ; $69e5: $13
    ldh [rNR22], a                                ; $69e6: $e0 $17
    ld [bc], a                                    ; $69e8: $02
    db $e4                                        ; $69e9: $e4
    rla                                           ; $69ea: $17
    ld h, a                                       ; $69eb: $67
    sbc b                                         ; $69ec: $98
    ret nz                                        ; $69ed: $c0

    ccf                                           ; $69ee: $3f
    add e                                         ; $69ef: $83
    ld c, e                                       ; $69f0: $4b
    db $fc                                        ; $69f1: $fc
    nop                                           ; $69f2: $00
    ld [bc], a                                    ; $69f3: $02
    ld a, [c]                                     ; $69f4: $f2
    inc c                                         ; $69f5: $0c
    ld d, [hl]                                    ; $69f6: $56
    xor h                                         ; $69f7: $ac
    adc l                                         ; $69f8: $8d
    ld hl, sp+$7a                                 ; $69f9: $f8 $7a
    nop                                           ; $69fb: $00
    ldh a, [$d1]                                  ; $69fc: $f0 $d1
    db $e4                                        ; $69fe: $e4
    ret nz                                        ; $69ff: $c0

    ld [bc], a                                    ; $6a00: $02
    ld [$6f07], sp                                ; $6a01: $08 $07 $6f
    nop                                           ; $6a04: $00
    ld d, b                                       ; $6a05: $50
    ld d, a                                       ; $6a06: $57

jr_0a1_6a07:
    ld l, b                                       ; $6a07: $68
    dec hl                                        ; $6a08: $2b
    ld [hl], h                                    ; $6a09: $74
    dec h                                         ; $6a0a: $25
    ld a, [hl-]                                   ; $6a0b: $3a
    ld [hl-], a                                   ; $6a0c: $32
    nop                                           ; $6a0d: $00
    dec a                                         ; $6a0e: $3d
    jr jr_0a1_6a50                                ; $6a0f: $18 $3f

jr_0a1_6a11:
    adc l                                         ; $6a11: $8d
    rra                                           ; $6a12: $1f
    sub $0f                                       ; $6a13: $d6 $0f
    xor $00                                       ; $6a15: $ee $00
    rla                                           ; $6a17: $17
    push de                                       ; $6a18: $d5
    daa                                           ; $6a19: $27
    ld [$1727], a                                 ; $6a1a: $ea $27 $17
    db $e3                                        ; $6a1d: $e3
    ld c, e                                       ; $6a1e: $4b
    ld bc, $81e1                                  ; $6a1f: $01 $e1 $81
    ret nc                                        ; $6a22: $d0

    inc h                                         ; $6a23: $24
    adc b                                         ; $6a24: $88
    ld [hl+], a                                   ; $6a25: $22
    inc e                                         ; $6a26: $1c
    cp a                                          ; $6a27: $bf
    dec bc                                        ; $6a28: $0b
    inc b                                         ; $6a29: $04
    add b                                         ; $6a2a: $80
    rst $38                                       ; $6a2b: $ff
    ld d, b                                       ; $6a2c: $50
    rst $38                                       ; $6a2d: $ff
    db $ec                                        ; $6a2e: $ec
    ld c, h                                       ; $6a2f: $4c
    ld bc, $7fff                                  ; $6a30: $01 $ff $7f
    ld [bc], a                                    ; $6a33: $02
    ld e, a                                       ; $6a34: $5f
    ccf                                           ; $6a35: $3f
    add b                                         ; $6a36: $80
    ld a, a                                       ; $6a37: $7f
    rra                                           ; $6a38: $1f
    ldh [rHDMA2], a                               ; $6a39: $e0 $52
    jr c, jr_0a1_6a82                             ; $6a3b: $38 $45

    nop                                           ; $6a3d: $00
    rst $38                                       ; $6a3e: $ff
    jr nz, jr_0a1_6a07                            ; $6a3f: $20 $c6

    adc b                                         ; $6a41: $88
    ld [hl], b                                    ; $6a42: $70
    ld a, [hl+]                                   ; $6a43: $2a
    ret c                                         ; $6a44: $d8

    dec c                                         ; $6a45: $0d
    nop                                           ; $6a46: $00
    ld hl, sp+$1a                                 ; $6a47: $f8 $1a
    pop af                                        ; $6a49: $f1
    ld [hl], c                                    ; $6a4a: $71
    and $e6                                       ; $6a4b: $e6 $e6
    ret z                                         ; $6a4d: $c8

    ret                                           ; $6a4e: $c9


    nop                                           ; $6a4f: $00

jr_0a1_6a50:
    sub b                                         ; $6a50: $90
    ld d, h                                       ; $6a51: $54
    inc hl                                        ; $6a52: $23
    ld [hl+], a                                   ; $6a53: $22
    ld b, b                                       ; $6a54: $40
    ccf                                           ; $6a55: $3f
    ld b, b                                       ; $6a56: $40
    ld l, a                                       ; $6a57: $6f
    nop                                           ; $6a58: $00
    jr nc, jr_0a1_6a95                            ; $6a59: $30 $3a

    db $dd                                        ; $6a5b: $dd
    sub $2f                                       ; $6a5c: $d6 $2f
    dec h                                         ; $6a5e: $25
    inc de                                        ; $6a5f: $13
    pop de                                        ; $6a60: $d1
    nop                                           ; $6a61: $00
    ld [$9c63], sp                                ; $6a62: $08 $63 $9c
    adc d                                         ; $6a65: $8a
    ld h, b                                       ; $6a66: $60
    db $ed                                        ; $6a67: $ed
    db $10                                        ; $6a68: $10
    db $eb                                        ; $6a69: $eb
    nop                                           ; $6a6a: $00
    ld de, $63b7                                  ; $6a6b: $11 $b7 $63
    db $e3                                        ; $6a6e: $e3
    rst $00                                       ; $6a6f: $c7
    jp $8587                                      ; $6a70: $c3 $87 $85


    nop                                           ; $6a73: $00
    inc bc                                        ; $6a74: $03
    xor a                                         ; $6a75: $af
    rst $38                                       ; $6a76: $ff
    db $fc                                        ; $6a77: $fc
    cp $f4                                        ; $6a78: $fe $f4
    ld a, b                                       ; $6a7a: $78
    ld d, b                                       ; $6a7b: $50
    nop                                           ; $6a7c: $00
    nop                                           ; $6a7d: $00
    inc l                                         ; $6a7e: $2c
    inc bc                                        ; $6a7f: $03
    rla                                           ; $6a80: $17
    rrca                                          ; $6a81: $0f

jr_0a1_6a82:
    inc a                                         ; $6a82: $3c
    rra                                           ; $6a83: $1f
    or a                                          ; $6a84: $b7
    jr nz, jr_0a1_6b06                            ; $6a85: $20 $7f

    sbc a                                         ; $6a87: $9f
    cp d                                          ; $6a88: $ba
    nop                                           ; $6a89: $00
    rra                                           ; $6a8a: $1f
    ld h, b                                       ; $6a8b: $60
    dec e                                         ; $6a8c: $1d
    ld [hl-], a                                   ; $6a8d: $32
    adc d                                         ; $6a8e: $8a
    nop                                           ; $6a8f: $00
    dec e                                         ; $6a90: $1d
    db $db                                        ; $6a91: $db
    rst $20                                       ; $6a92: $e7
    ld a, e                                       ; $6a93: $7b
    db $fc                                        ; $6a94: $fc

jr_0a1_6a95:
    rrca                                          ; $6a95: $0f
    rst $38                                       ; $6a96: $ff
    db $f4                                        ; $6a97: $f4
    ld b, b                                       ; $6a98: $40
    ld [$00f0], sp                                ; $6a99: $08 $f0 $00
    dec b                                         ; $6a9c: $05
    ld [c], a                                     ; $6a9d: $e2
    add hl, de                                    ; $6a9e: $19
    and c                                         ; $6a9f: $a1
    ld [hl], d                                    ; $6aa0: $72
    ld b, d                                       ; $6aa1: $42
    nop                                           ; $6aa2: $00
    db $e4                                        ; $6aa3: $e4
    inc bc                                        ; $6aa4: $03

jr_0a1_6aa5:
    call nz, $8443                                ; $6aa5: $c4 $43 $84
    add hl, bc                                    ; $6aa8: $09
    ld [hl], b                                    ; $6aa9: $70
    ld [hl], c                                    ; $6aaa: $71

jr_0a1_6aab:
    ld [bc], a                                    ; $6aab: $02
    adc [hl]                                      ; $6aac: $8e
    adc [hl]                                      ; $6aad: $8e
    ld bc, $0031                                  ; $6aae: $01 $31 $00
    ld a, [hl]                                    ; $6ab1: $7e
    ld c, b                                       ; $6ab2: $48
    inc h                                         ; $6ab3: $24
    jp nz, Jump_000_3c00                          ; $6ab4: $c2 $00 $3c

    cp b                                          ; $6ab7: $b8
    ld b, [hl]                                    ; $6ab8: $46
    dec b                                         ; $6ab9: $05
    ld a, [$fe01]                                 ; $6aba: $fa $01 $fe
    ld bc, $fe20                                  ; $6abd: $01 $20 $fe
    nop                                           ; $6ac0: $00
    ld [bc], a                                    ; $6ac1: $02
    nop                                           ; $6ac2: $00
    ld [bc], a                                    ; $6ac3: $02
    db $fd                                        ; $6ac4: $fd
    cp d                                          ; $6ac5: $ba
    ld a, h                                       ; $6ac6: $7c
    ld hl, $8000                                  ; $6ac7: $21 $00 $80
    inc e                                         ; $6aca: $1c
    ld b, b                                       ; $6acb: $40
    and c                                         ; $6acc: $a1
    ld e, $42                                     ; $6acd: $1e $42
    ld hl, $003f                                  ; $6acf: $21 $3f $00
    ld b, b                                       ; $6ad2: $40
    ld l, d                                       ; $6ad3: $6a
    sub l                                         ; $6ad4: $95
    ld d, l                                       ; $6ad5: $55
    rst $28                                       ; $6ad6: $ef
    ld de, $008c                                  ; $6ad7: $11 $8c $00
    nop                                           ; $6ada: $00
    ld e, [hl]                                    ; $6adb: $5e
    xor h                                         ; $6adc: $ac
    inc de                                        ; $6add: $13
    db $10                                        ; $6ade: $10
    ld a, a                                       ; $6adf: $7f
    sub d                                         ; $6ae0: $92
    ccf                                           ; $6ae1: $3f
    dec a                                         ; $6ae2: $3d
    nop                                           ; $6ae3: $00
    sbc [hl]                                      ; $6ae4: $9e
    adc d                                         ; $6ae5: $8a
    sbc h                                         ; $6ae6: $9c
    inc c                                         ; $6ae7: $0c
    add b                                         ; $6ae8: $80
    ld l, b                                       ; $6ae9: $68
    ldh a, [$90]                                  ; $6aea: $f0 $90
    nop                                           ; $6aec: $00

jr_0a1_6aed:
    ld h, b                                       ; $6aed: $60
    ld h, [hl]                                    ; $6aee: $66
    nop                                           ; $6aef: $00
    ld [$4707], sp                                ; $6af0: $08 $07 $47
    jr c, jr_0a1_6aa5                             ; $6af3: $38 $b0

    jr nz, jr_0a1_6b37                            ; $6af5: $20 $40

    xor [hl]                                      ; $6af7: $ae
    sbc d                                         ; $6af8: $9a
    nop                                           ; $6af9: $00
    ld a, [bc]                                    ; $6afa: $0a
    db $fd                                        ; $6afb: $fd
    ld bc, $09fc                                  ; $6afc: $01 $fc $09
    nop                                           ; $6aff: $00
    db $fc                                        ; $6b00: $fc
    ld a, [hl+]                                   ; $6b01: $2a
    db $fc                                        ; $6b02: $fc
    add hl, de                                    ; $6b03: $19
    db $fc                                        ; $6b04: $fc
    or [hl]                                       ; $6b05: $b6

jr_0a1_6b06:
    ld hl, sp-$14                                 ; $6b06: $f8 $ec
    nop                                           ; $6b08: $00
    ldh a, [$37]                                  ; $6b09: $f0 $37
    adc $be                                       ; $6b0b: $ce $be
    rst $38                                       ; $6b0d: $ff
    ld [hl], d                                    ; $6b0e: $72
    db $fc                                        ; $6b0f: $fc
    sbc b                                         ; $6b10: $98
    nop                                           ; $6b11: $00
    ld h, b                                       ; $6b12: $60
    add h                                         ; $6b13: $84
    inc bc                                        ; $6b14: $03
    ld [hl+], a                                   ; $6b15: $22
    inc e                                         ; $6b16: $1c
    ld d, e                                       ; $6b17: $53
    jr nz, jr_0a1_6b79                            ; $6b18: $20 $5f

    nop                                           ; $6b1a: $00
    jr nz, jr_0a1_6b4c                            ; $6b1b: $20 $2f

    jr nc, jr_0a1_6aab                            ; $6b1d: $30 $8c

    nop                                           ; $6b1f: $00

jr_0a1_6b20:
    ld hl, $9e1e                                  ; $6b20: $21 $1e $9e
    ld [$6361], sp                                ; $6b23: $08 $61 $63
    add b                                         ; $6b26: $80
    ld b, $b8                                     ; $6b27: $06 $b8
    inc h                                         ; $6b29: $24
    ld e, a                                       ; $6b2a: $5f
    jr nz, jr_0a1_6b58                            ; $6b2b: $20 $2b

    nop                                           ; $6b2d: $00
    inc [hl]                                      ; $6b2e: $34
    or l                                          ; $6b2f: $b5
    ld a, [de]                                    ; $6b30: $1a
    ld e, d                                       ; $6b31: $5a
    adc a                                         ; $6b32: $8f
    xor a                                         ; $6b33: $af
    ld b, a                                       ; $6b34: $47
    ld d, l                                       ; $6b35: $55
    nop                                           ; $6b36: $00

jr_0a1_6b37:
    inc hl                                        ; $6b37: $23
    db $eb                                        ; $6b38: $eb
    db $10                                        ; $6b39: $10
    ldh a, [$08]                                  ; $6b3a: $f0 $08
    ld a, a                                       ; $6b3c: $7f
    ccf                                           ; $6b3d: $3f
    pop hl                                        ; $6b3e: $e1
    ld [$df7f], sp                                ; $6b3f: $08 $7f $df
    rst $38                                       ; $6b42: $ff
    cp a                                          ; $6b43: $bf
    ld e, e                                       ; $6b44: $5b
    ld [bc], a                                    ; $6b45: $02
    db $fc                                        ; $6b46: $fc
    cp $ff                                        ; $6b47: $fe $ff
    nop                                           ; $6b49: $00
    db $fc                                        ; $6b4a: $fc
    db $fc                                        ; $6b4b: $fc

jr_0a1_6b4c:
    ld sp, hl                                     ; $6b4c: $f9
    or a                                          ; $6b4d: $b7
    jr jr_0a1_6aed                                ; $6b4e: $18 $9d

    adc [hl]                                      ; $6b50: $8e
    ld c, [hl]                                    ; $6b51: $4e
    nop                                           ; $6b52: $00
    add a                                         ; $6b53: $87
    and a                                         ; $6b54: $a7
    inc bc                                        ; $6b55: $03

jr_0a1_6b56:
    nop                                           ; $6b56: $00
    ld a, l                                       ; $6b57: $7d

jr_0a1_6b58:
    jr c, jr_0a1_6b20                             ; $6b58: $38 $c6

    ld h, l                                       ; $6b5a: $65
    nop                                           ; $6b5b: $00
    sbc d                                         ; $6b5c: $9a
    ld [bc], a                                    ; $6b5d: $02
    db $fd                                        ; $6b5e: $fd
    rst $38                                       ; $6b5f: $ff
    nop                                           ; $6b60: $00

jr_0a1_6b61:
    ld a, d                                       ; $6b61: $7a
    add l                                         ; $6b62: $85
    inc h                                         ; $6b63: $24
    jr nz, jr_0a1_6b61                            ; $6b64: $20 $fb

    db $d3                                        ; $6b66: $d3
    ld a, d                                       ; $6b67: $7a
    ld [bc], a                                    ; $6b68: $02
    cp [hl]                                       ; $6b69: $be
    ld a, h                                       ; $6b6a: $7c
    cp b                                          ; $6b6b: $b8
    nop                                           ; $6b6c: $00
    ld b, h                                       ; $6b6d: $44
    nop                                           ; $6b6e: $00
    inc bc                                        ; $6b6f: $03
    ldh a, [$08]                                  ; $6b70: $f0 $08
    xor d                                         ; $6b72: $aa
    ld d, c                                       ; $6b73: $51
    call nc, $45e3                                ; $6b74: $d4 $e3 $45
    nop                                           ; $6b77: $00
    add [hl]                                      ; $6b78: $86

jr_0a1_6b79:
    add h                                         ; $6b79: $84
    rlca                                          ; $6b7a: $07
    inc c                                         ; $6b7b: $0c
    daa                                           ; $6b7c: $27
    add [hl]                                      ; $6b7d: $86
    ld d, e                                       ; $6b7e: $53
    inc de                                        ; $6b7f: $13
    nop                                           ; $6b80: $00
    db $eb                                        ; $6b81: $eb
    ld [hl], e                                    ; $6b82: $73
    ld sp, hl                                     ; $6b83: $f9
    ld c, b                                       ; $6b84: $48
    inc sp                                        ; $6b85: $33
    dec d                                         ; $6b86: $15
    add e                                         ; $6b87: $83
    and e                                         ; $6b88: $a3
    nop                                           ; $6b89: $00
    ld c, c                                       ; $6b8a: $49
    ret nz                                        ; $6b8b: $c0

    ld sp, $20c5                                  ; $6b8c: $31 $c5 $20
    add $28                                       ; $6b8f: $c6 $28
    xor b                                         ; $6b91: $a8
    jr @+$53                                      ; $6b92: $18 $51

    inc b                                         ; $6b94: $04
    ei                                            ; $6b95: $fb
    ld e, d                                       ; $6b96: $5a
    dec bc                                        ; $6b97: $0b
    ld b, b                                       ; $6b98: $40
    inc c                                         ; $6b99: $0c
    add b                                         ; $6b9a: $80
    rst $38                                       ; $6b9b: $ff
    ld b, c                                       ; $6b9c: $41
    add b                                         ; $6b9d: $80
    nop                                           ; $6b9e: $00
    inc b                                         ; $6b9f: $04
    and e                                         ; $6ba0: $a3
    inc e                                         ; $6ba1: $1c
    ld e, h                                       ; $6ba2: $5c
    jr nz, jr_0a1_6b56                            ; $6ba3: $20 $b1

    ld b, b                                       ; $6ba5: $40
    xor a                                         ; $6ba6: $af
    db $10                                        ; $6ba7: $10
    ld b, b                                       ; $6ba8: $40
    rra                                           ; $6ba9: $1f
    and b                                         ; $6baa: $a0
    ld [bc], a                                    ; $6bab: $02
    ld [$20bf], sp                                ; $6bac: $08 $bf $20
    db $ed                                        ; $6baf: $ed
    ld de, $1404                                  ; $6bb0: $11 $04 $14
    ld [$04ea], sp                                ; $6bb3: $08 $ea $04
    db $f4                                        ; $6bb6: $f4
    add e                                         ; $6bb7: $83
    inc bc                                        ; $6bb8: $03
    rst $38                                       ; $6bb9: $ff
    ld [bc], a                                    ; $6bba: $02
    ld [bc], a                                    ; $6bbb: $02
    ld a, [$fe06]                                 ; $6bbc: $fa $06 $fe
    inc b                                         ; $6bbf: $04
    rst $30                                       ; $6bc0: $f7
    adc b                                         ; $6bc1: $88
    ld [de], a                                    ; $6bc2: $12
    ld e, h                                       ; $6bc3: $5c
    rst $38                                       ; $6bc4: $ff
    ld [hl], d                                    ; $6bc5: $72
    add b                                         ; $6bc6: $80
    ld [hl-], a                                   ; $6bc7: $32
    ld l, l                                       ; $6bc8: $6d
    add d                                         ; $6bc9: $82
    ld l, l                                       ; $6bca: $6d
    ld [hl], d                                    ; $6bcb: $72
    ld e, l                                       ; $6bcc: $5d
    db $ec                                        ; $6bcd: $ec
    inc de                                        ; $6bce: $13
    ld a, [c]                                     ; $6bcf: $f2
    ld c, e                                       ; $6bd0: $4b
    db $fd                                        ; $6bd1: $fd
    ld bc, $f603                                  ; $6bd2: $01 $03 $f6
    add hl, bc                                    ; $6bd5: $09
    ei                                            ; $6bd6: $fb
    dec b                                         ; $6bd7: $05
    db $ec                                        ; $6bd8: $ec
    inc de                                        ; $6bd9: $13
    add d                                         ; $6bda: $82
    dec c                                         ; $6bdb: $0d
    nop                                           ; $6bdc: $00
    push af                                       ; $6bdd: $f5
    dec bc                                        ; $6bde: $0b
    db $db                                        ; $6bdf: $db
    daa                                           ; $6be0: $27
    db $ed                                        ; $6be1: $ed
    inc de                                        ; $6be2: $13
    ld a, [$9005]                                 ; $6be3: $fa $05 $90
    sub d                                         ; $6be6: $92
    ld l, l                                       ; $6be7: $6d
    rst $28                                       ; $6be8: $ef
    ld de, $3da2                                  ; $6be9: $11 $a2 $3d
    db $db                                        ; $6bec: $db
    dec h                                         ; $6bed: $25
    ld a, e                                       ; $6bee: $7b
    dec b                                         ; $6bef: $05
    inc d                                         ; $6bf0: $14
    ld l, h                                       ; $6bf1: $6c
    inc de                                        ; $6bf2: $13
    ld a, e                                       ; $6bf3: $7b
    or b                                          ; $6bf4: $b0
    dec b                                         ; $6bf5: $05
    ld [hl], l                                    ; $6bf6: $75
    ld l, $10                                     ; $6bf7: $2e $10
    sub b                                         ; $6bf9: $90
    ld l, a                                       ; $6bfa: $6f
    sbc [hl]                                      ; $6bfb: $9e
    ldh [$5d], a                                  ; $6bfc: $e0 $5d
    ld [hl], a                                    ; $6bfe: $77
    adc b                                         ; $6bff: $88
    pop af                                        ; $6c00: $f1
    dec c                                         ; $6c01: $0d
    ld [hl], d                                    ; $6c02: $72
    ld d, h                                       ; $6c03: $54
    add d                                         ; $6c04: $82
    inc b                                         ; $6c05: $04
    ld [hl], d                                    ; $6c06: $72
    ld c, h                                       ; $6c07: $4c
    nop                                           ; $6c08: $00
    jr @+$01                                      ; $6c09: $18 $ff

    ccf                                           ; $6c0b: $3f
    ret nz                                        ; $6c0c: $c0

    xor e                                         ; $6c0d: $ab
    ld [bc], a                                    ; $6c0e: $02
    ld [bc], a                                    ; $6c0f: $02
    jr nc, jr_0a1_6c15                            ; $6c10: $30 $03

    rst $38                                       ; $6c12: $ff
    ld sp, hl                                     ; $6c13: $f9
    ld e, d                                       ; $6c14: $5a

jr_0a1_6c15:
    rlca                                          ; $6c15: $07
    ld d, e                                       ; $6c16: $53
    inc bc                                        ; $6c17: $03
    rst $30                                       ; $6c18: $f7
    inc b                                         ; $6c19: $04
    jr z, jr_0a1_6c38                             ; $6c1a: $28 $1c

    jr jr_0a1_6c9d                                ; $6c1c: $18 $7f

    scf                                           ; $6c1e: $37
    ld b, $3c                                     ; $6c1f: $06 $3c
    dec b                                         ; $6c21: $05
    jp $fb44                                      ; $6c22: $c3 $44 $fb


    ld b, h                                       ; $6c25: $44
    ei                                            ; $6c26: $fb
    inc e                                         ; $6c27: $1c
    jr @-$0d                                      ; $6c28: $18 $f1

    jr z, jr_0a1_6c2c                             ; $6c2a: $28 $00

jr_0a1_6c2c:
    inc bc                                        ; $6c2c: $03
    ld a, c                                       ; $6c2d: $79
    add a                                         ; $6c2e: $87
    adc e                                         ; $6c2f: $8b
    rst $30                                       ; $6c30: $f7
    adc c                                         ; $6c31: $89
    rst $30                                       ; $6c32: $f7
    ld d, b                                       ; $6c33: $50
    ld c, [hl]                                    ; $6c34: $4e
    ld [c], a                                     ; $6c35: $e2
    inc c                                         ; $6c36: $0c
    ld [c], a                                     ; $6c37: $e2

jr_0a1_6c38:
    ret nc                                        ; $6c38: $d0

    ld e, b                                       ; $6c39: $58
    jp nz, $b20c                                  ; $6c3a: $c2 $0c $b2

    ld e, h                                       ; $6c3d: $5c
    ld b, h                                       ; $6c3e: $44
    ei                                            ; $6c3f: $fb
    ld a, b                                       ; $6c40: $78
    ld [hl], h                                    ; $6c41: $74
    ld d, b                                       ; $6c42: $50
    xor e                                         ; $6c43: $ab
    nop                                           ; $6c44: $00
    rst $00                                       ; $6c45: $c7
    pop de                                        ; $6c46: $d1
    rst $18                                       ; $6c47: $df
    ld b, e                                       ; $6c48: $43
    rst $18                                       ; $6c49: $df
    reti                                          ; $6c4a: $d9


    ld b, a                                       ; $6c4b: $47
    ld c, e                                       ; $6c4c: $4b
    ld b, $d7                                     ; $6c4d: $06 $d7
    ld l, c                                       ; $6c4f: $69
    rst $00                                       ; $6c50: $c7
    dec sp                                        ; $6c51: $3b
    rst $20                                       ; $6c52: $e7
    ld [hl], b                                    ; $6c53: $70
    jr z, jr_0a1_6cca                             ; $6c54: $28 $74

    jr z, @+$57                                   ; $6c56: $28 $55

    ld h, b                                       ; $6c58: $60
    rst $38                                       ; $6c59: $ff
    adc h                                         ; $6c5a: $8c
    jr c, jr_0a1_6cd1                             ; $6c5b: $38 $74

    ld [$ff55], sp                                ; $6c5d: $08 $55 $ff
    ld h, h                                       ; $6c60: $64
    bit 6, b                                      ; $6c61: $cb $70
    nop                                           ; $6c63: $00
    rst $30                                       ; $6c64: $f7
    db $10                                        ; $6c65: $10
    rst $30                                       ; $6c66: $f7
    scf                                           ; $6c67: $37
    ret nc                                        ; $6c68: $d0

    ld d, b                                       ; $6c69: $50
    rst $30                                       ; $6c6a: $f7
    ld l, b                                       ; $6c6b: $68
    inc bc                                        ; $6c6c: $03
    rst $00                                       ; $6c6d: $c7
    ld [hl], b                                    ; $6c6e: $70
    rst $28                                       ; $6c6f: $ef
    ld b, b                                       ; $6c70: $40
    rst $38                                       ; $6c71: $ff
    adc e                                         ; $6c72: $8b
    adc h                                         ; $6c73: $8c
    db $10                                        ; $6c74: $10
    or h                                          ; $6c75: $b4
    jr c, jr_0a1_6c78                             ; $6c76: $38 $00

jr_0a1_6c78:
    nop                                           ; $6c78: $00
    add b                                         ; $6c79: $80
    ld h, b                                       ; $6c7a: $60
    ld a, a                                       ; $6c7b: $7f
    rra                                           ; $6c7c: $1f
    and b                                         ; $6c7d: $a0
    ccf                                           ; $6c7e: $3f
    ld b, b                                       ; $6c7f: $40
    ld [bc], a                                    ; $6c80: $02
    dec sp                                        ; $6c81: $3b
    ld b, h                                       ; $6c82: $44
    dec [hl]                                      ; $6c83: $35
    ld c, [hl]                                    ; $6c84: $4e
    dec sp                                        ; $6c85: $3b
    ld b, h                                       ; $6c86: $44
    ld [$bb18], sp                                ; $6c87: $08 $18 $bb
    nop                                           ; $6c8a: $00
    ld b, h                                       ; $6c8b: $44
    dec hl                                        ; $6c8c: $2b
    ld d, h                                       ; $6c8d: $54

jr_0a1_6c8e:
    ld d, l                                       ; $6c8e: $55
    rst $38                                       ; $6c8f: $ff
    cp a                                          ; $6c90: $bf
    ld b, b                                       ; $6c91: $40
    jr nz, jr_0a1_6c94                            ; $6c92: $20 $00

jr_0a1_6c94:
    rst $18                                       ; $6c94: $df
    and b                                         ; $6c95: $a0
    ld e, a                                       ; $6c96: $5f
    call c, $ac22                                 ; $6c97: $dc $22 $ac
    ld [hl], d                                    ; $6c9a: $72
    db $dd                                        ; $6c9b: $dd
    nop                                           ; $6c9c: $00

jr_0a1_6c9d:
    ld [hl+], a                                   ; $6c9d: $22
    ld d, h                                       ; $6c9e: $54
    xor d                                         ; $6c9f: $aa
    ld d, h                                       ; $6ca0: $54
    rst $38                                       ; $6ca1: $ff
    db $fd                                        ; $6ca2: $fd
    ld [bc], a                                    ; $6ca3: $02
    inc b                                         ; $6ca4: $04
    ld b, b                                       ; $6ca5: $40
    ei                                            ; $6ca6: $fb
    or [hl]                                       ; $6ca7: $b6
    ld [bc], a                                    ; $6ca8: $02
    add b                                         ; $6ca9: $80
    ld e, h                                       ; $6caa: $5c
    ld h, e                                       ; $6cab: $63
    ld a, $41                                     ; $6cac: $3e $41
    ld a, [hl+]                                   ; $6cae: $2a
    nop                                           ; $6caf: $00
    ld d, l                                       ; $6cb0: $55
    ld bc, $63bf                                  ; $6cb1: $01 $bf $63
    ld a, a                                       ; $6cb4: $7f
    ld b, c                                       ; $6cb5: $41
    ld a, a                                       ; $6cb6: $7f
    inc e                                         ; $6cb7: $1c
    add l                                         ; $6cb8: $85
    inc c                                         ; $6cb9: $0c
    jr jr_0a1_6d3b                                ; $6cba: $18 $7f

    ld h, e                                       ; $6cbc: $63
    ld a, a                                       ; $6cbd: $7f
    ld e, l                                       ; $6cbe: $5d
    ld a, [bc]                                    ; $6cbf: $0a
    ld b, b                                       ; $6cc0: $40
    cp [hl]                                       ; $6cc1: $be
    jr nz, jr_0a1_6cc4                            ; $6cc2: $20 $00

jr_0a1_6cc4:
    add c                                         ; $6cc4: $81
    ld b, b                                       ; $6cc5: $40
    jr z, jr_0a1_6c8e                             ; $6cc6: $28 $c6

    cp $ba                                        ; $6cc8: $fe $ba

jr_0a1_6cca:
    add $7d                                       ; $6cca: $c6 $7d
    add d                                         ; $6ccc: $82
    ld b, b                                       ; $6ccd: $40
    jr c, jr_0a1_6d14                             ; $6cce: $38 $44

    rst $18                                       ; $6cd0: $df

jr_0a1_6cd1:
    add c                                         ; $6cd1: $81
    ld d, a                                       ; $6cd2: $57
    ld a, a                                       ; $6cd3: $7f
    rst $38                                       ; $6cd4: $ff
    ld sp, hl                                     ; $6cd5: $f9
    sub c                                         ; $6cd6: $91
    ld h, a                                       ; $6cd7: $67
    db $d3                                        ; $6cd8: $d3
    db $e4                                        ; $6cd9: $e4
    nop                                           ; $6cda: $00
    dec [hl]                                      ; $6cdb: $35
    ld a, [$fbd8]                                 ; $6cdc: $fa $d8 $fb
    ld sp, hl                                     ; $6cdf: $f9
    ei                                            ; $6ce0: $fb
    ldh a, [$f9]                                  ; $6ce1: $f0 $f9
    ld [bc], a                                    ; $6ce3: $02
    ld hl, sp-$10                                 ; $6ce4: $f8 $f0
    di                                            ; $6ce6: $f3
    ldh [rLY], a                                  ; $6ce7: $e0 $44
    add e                                         ; $6ce9: $83
    add b                                         ; $6cea: $80
    rrca                                          ; $6ceb: $0f
    cp a                                          ; $6cec: $bf
    nop                                           ; $6ced: $00
    ld b, b                                       ; $6cee: $40
    ld e, l                                       ; $6cef: $5d
    and e                                         ; $6cf0: $a3
    adc d                                         ; $6cf1: $8a
    rst $30                                       ; $6cf2: $f7
    ld l, h                                       ; $6cf3: $6c
    cp $20                                        ; $6cf4: $fe $20
    nop                                           ; $6cf6: $00
    inc e                                         ; $6cf7: $1c
    db $10                                        ; $6cf8: $10
    pop hl                                        ; $6cf9: $e1
    ld a, a                                       ; $6cfa: $7f
    ld a, a                                       ; $6cfb: $7f
    rra                                           ; $6cfc: $1f
    ccf                                           ; $6cfd: $3f
    ld d, $01                                     ; $6cfe: $16 $01
    rrca                                          ; $6d00: $0f
    ld sp, $80c0                                  ; $6d01: $31 $c0 $80
    ld a, a                                       ; $6d04: $7f
    pop af                                        ; $6d05: $f1
    ld c, $9b                                     ; $6d06: $0e $9b
    rrca                                          ; $6d08: $0f
    nop                                           ; $6d09: $00
    db $fd                                        ; $6d0a: $fd
    cp $c8                                        ; $6d0b: $fe $c8
    ld a, [c]                                     ; $6d0d: $f2
    ld h, c                                       ; $6d0e: $61
    add h                                         ; $6d0f: $84
    adc e                                         ; $6d10: $8b
    ld [hl], b                                    ; $6d11: $70
    nop                                           ; $6d12: $00
    dec b                                         ; $6d13: $05

jr_0a1_6d14:
    ld hl, sp+$67                                 ; $6d14: $f8 $67
    sbc b                                         ; $6d16: $98
    nop                                           ; $6d17: $00
    db $fc                                        ; $6d18: $fc
    ld [$01fc], sp                                ; $6d19: $08 $fc $01
    inc hl                                        ; $6d1c: $23
    inc e                                         ; $6d1d: $1c
    sub h                                         ; $6d1e: $94
    ld h, b                                       ; $6d1f: $60
    ld l, a                                       ; $6d20: $6f
    add b                                         ; $6d21: $80
    ld e, a                                       ; $6d22: $5f
    jr nc, jr_0a1_6d2a                            ; $6d23: $30 $05

    nop                                           ; $6d25: $00
    ld e, a                                       ; $6d26: $5f
    and b                                         ; $6d27: $a0
    adc e                                         ; $6d28: $8b
    ld [hl], h                                    ; $6d29: $74

jr_0a1_6d2a:
    ld d, h                                       ; $6d2a: $54
    dec sp                                        ; $6d2b: $3b
    db $e4                                        ; $6d2c: $e4
    add hl, de                                    ; $6d2d: $19
    inc b                                         ; $6d2e: $04
    add hl, de                                    ; $6d2f: $19
    inc b                                         ; $6d30: $04
    jp z, $ea04                                   ; $6d31: $ca $04 $ea

    add [hl]                                      ; $6d34: $86
    inc b                                         ; $6d35: $04
    db $f4                                        ; $6d36: $f4
    add hl, bc                                    ; $6d37: $09
    nop                                           ; $6d38: $00
    pop de                                        ; $6d39: $d1
    ld a, [hl-]                                   ; $6d3a: $3a

jr_0a1_6d3b:
    ld h, d                                       ; $6d3b: $62
    db $f4                                        ; $6d3c: $f4
    add [hl]                                      ; $6d3d: $86
    ld e, c                                       ; $6d3e: $59
    sub l                                         ; $6d3f: $95
    ld c, [hl]                                    ; $6d40: $4e
    nop                                           ; $6d41: $00
    ld a, [bc]                                    ; $6d42: $0a
    rst $00                                       ; $6d43: $c7
    inc bc                                        ; $6d44: $03
    add b                                         ; $6d45: $80
    ld c, h                                       ; $6d46: $4c
    jr nc, jr_0a1_6cca                            ; $6d47: $30 $81

    ld a, [hl]                                    ; $6d49: $7e
    nop                                           ; $6d4a: $00
    jr c, jr_0a1_6d14                             ; $6d4b: $38 $c7

    ld b, d                                       ; $6d4d: $42
    cp l                                          ; $6d4e: $bd
    ldh [rP1], a                                  ; $6d4f: $e0 $00
    db $eb                                        ; $6d51: $eb
    nop                                           ; $6d52: $00
    nop                                           ; $6d53: $00
    ret                                           ; $6d54: $c9


    rst $38                                       ; $6d55: $ff
    jp c, Jump_000_04a1                           ; $6d56: $da $a1 $04

    ei                                            ; $6d59: $fb
    jp z, $00bf                                   ; $6d5a: $ca $bf $00

    ld d, a                                       ; $6d5d: $57
    xor b                                         ; $6d5e: $a8
    xor l                                         ; $6d5f: $ad
    ret z                                         ; $6d60: $c8

    cp a                                          ; $6d61: $bf
    ld b, b                                       ; $6d62: $40
    ret c                                         ; $6d63: $d8

    daa                                           ; $6d64: $27
    nop                                           ; $6d65: $00
    adc d                                         ; $6d66: $8a
    rst $38                                       ; $6d67: $ff
    ld d, h                                       ; $6d68: $54
    adc e                                         ; $6d69: $8b
    ret z                                         ; $6d6a: $c8

    scf                                           ; $6d6b: $37
    xor d                                         ; $6d6c: $aa
    rst $38                                       ; $6d6d: $ff
    nop                                           ; $6d6e: $00
    inc de                                        ; $6d6f: $13
    ldh [rIE], a                                  ; $6d70: $e0 $ff
    nop                                           ; $6d72: $00
    add b                                         ; $6d73: $80
    rst $38                                       ; $6d74: $ff
    add e                                         ; $6d75: $83
    rst $38                                       ; $6d76: $ff
    nop                                           ; $6d77: $00
    rst $10                                       ; $6d78: $d7
    cp $ef                                        ; $6d79: $fe $ef
    ld a, h                                       ; $6d7b: $7c
    ld a, h                                       ; $6d7c: $7c
    add hl, sp                                    ; $6d7d: $39
    ld [bc], a                                    ; $6d7e: $02
    add c                                         ; $6d7f: $81
    nop                                           ; $6d80: $00
    and e                                         ; $6d81: $a3
    ld b, c                                       ; $6d82: $41
    ld b, c                                       ; $6d83: $41
    inc sp                                        ; $6d84: $33
    db $10                                        ; $6d85: $10
    add sp, -$54                                  ; $6d86: $e8 $ac
    ret z                                         ; $6d88: $c8

    nop                                           ; $6d89: $00
    ld d, a                                       ; $6d8a: $57

jr_0a1_6d8b:
    xor b                                         ; $6d8b: $a8
    adc a                                         ; $6d8c: $8f
    cp d                                          ; $6d8d: $ba
    ld b, a                                       ; $6d8e: $47
    cp b                                          ; $6d8f: $b8
    xor a                                         ; $6d90: $af
    ret c                                         ; $6d91: $d8

    nop                                           ; $6d92: $00
    inc b                                         ; $6d93: $04
    db $db                                        ; $6d94: $db
    ld hl, sp-$71                                 ; $6d95: $f8 $8f
    ld d, [hl]                                    ; $6d97: $56
    dec l                                         ; $6d98: $2d
    dec c                                         ; $6d99: $0d
    or [hl]                                       ; $6d9a: $b6
    inc b                                         ; $6d9b: $04
    ld e, $a5                                     ; $6d9c: $1e $a5
    adc l                                         ; $6d9e: $8d
    or [hl]                                       ; $6d9f: $b6
    sbc [hl]                                      ; $6da0: $9e
    inc b                                         ; $6da1: $04
    jr nz, jr_0a1_6d8b                            ; $6da2: $20 $e7

    jr jr_0a1_6da6                                ; $6da4: $18 $00

jr_0a1_6da6:
    jp $e17c                                      ; $6da6: $c3 $7c $e1


    rra                                           ; $6da9: $1f
    ld sp, $1f0e                                  ; $6daa: $31 $0e $1f
    db $10                                        ; $6dad: $10
    jr nz, jr_0a1_6dc7                            ; $6dae: $20 $17

    ld bc, $051d                                  ; $6db0: $01 $1d $05
    jr nz, jr_0a1_6df5                            ; $6db3: $20 $40

    xor a                                         ; $6db5: $af
    sbc l                                         ; $6db6: $9d
    xor e                                         ; $6db7: $ab
    nop                                           ; $6db8: $00
    daa                                           ; $6db9: $27
    sbc b                                         ; $6dba: $98
    call c, Call_000_20a8                         ; $6dbb: $dc $a8 $20
    ret c                                         ; $6dbe: $d8

    sbc c                                         ; $6dbf: $99
    add sp, $00                                   ; $6dc0: $e8 $00
    ld h, a                                       ; $6dc2: $67
    sbc h                                         ; $6dc3: $9c
    rst $28                                       ; $6dc4: $ef
    sbc b                                         ; $6dc5: $98
    sbc h                                         ; $6dc6: $9c

jr_0a1_6dc7:
    and a                                         ; $6dc7: $a7
    adc l                                         ; $6dc8: $8d
    or [hl]                                       ; $6dc9: $b6
    nop                                           ; $6dca: $00
    adc a                                         ; $6dcb: $8f
    or h                                          ; $6dcc: $b4
    sub a                                         ; $6dcd: $97
    xor h                                         ; $6dce: $ac
    rst $18                                       ; $6dcf: $df
    and h                                         ; $6dd0: $a4
    sbc a                                         ; $6dd1: $9f
    and h                                         ; $6dd2: $a4
    jp nc, $0804                                  ; $6dd3: $d2 $04 $08

    ret nc                                        ; $6dd6: $d0

    ld c, $ae                                     ; $6dd7: $0e $ae
    ld b, [hl]                                    ; $6dd9: $46
    inc bc                                        ; $6dda: $03
    xor [hl]                                      ; $6ddb: $ae
    ld d, c                                       ; $6ddc: $51
    ld a, [de]                                    ; $6ddd: $1a
    rrca                                          ; $6dde: $0f
    xor [hl]                                      ; $6ddf: $ae
    nop                                           ; $6de0: $00
    ld d, c                                       ; $6de1: $51
    sbc a                                         ; $6de2: $9f
    db $e4                                        ; $6de3: $e4
    sbc a                                         ; $6de4: $9f
    and h                                         ; $6de5: $a4
    rst $10                                       ; $6de6: $d7
    db $ec                                        ; $6de7: $ec
    add l                                         ; $6de8: $85
    cpl                                           ; $6de9: $2f
    cp $c4                                        ; $6dea: $fe $c4
    ld a, b                                       ; $6dec: $78
    nop                                           ; $6ded: $00
    ret nz                                        ; $6dee: $c0

    cp d                                          ; $6def: $ba
    inc b                                         ; $6df0: $04
    ld a, [de]                                    ; $6df1: $1a
    jr z, jr_0a1_6e70                             ; $6df2: $28 $7c

    ld a, [de]                                    ; $6df4: $1a

jr_0a1_6df5:
    dec a                                         ; $6df5: $3d
    rrca                                          ; $6df6: $0f
    nop                                           ; $6df7: $00
    rra                                           ; $6df8: $1f
    ldh [rNR44], a                                ; $6df9: $e0 $23
    call c, $e01f                                 ; $6dfb: $dc $1f $e0
    daa                                           ; $6dfe: $27
    ret c                                         ; $6dff: $d8

    inc c                                         ; $6e00: $0c
    ld e, a                                       ; $6e01: $5f
    and b                                         ; $6e02: $a0
    ld e, a                                       ; $6e03: $5f
    and b                                         ; $6e04: $a0
    inc e                                         ; $6e05: $1c
    rrca                                          ; $6e06: $0f
    ld d, d                                       ; $6e07: $52
    ld c, a                                       ; $6e08: $4f
    db $fc                                        ; $6e09: $fc
    inc bc                                        ; $6e0a: $03
    jp Jump_0a1_5810                              ; $6e0b: $c3 $10 $58


    jr nz, jr_0a1_6e28                            ; $6e0e: $20 $18

    cp $01                                        ; $6e10: $fe $01
    db $fd                                        ; $6e12: $fd
    ld [bc], a                                    ; $6e13: $02
    call Call_000_1206                            ; $6e14: $cd $06 $12
    jr nz, jr_0a1_6e19                            ; $6e17: $20 $00

jr_0a1_6e19:
    ld a, b                                       ; $6e19: $78
    add a                                         ; $6e1a: $87
    ld [hl], a                                    ; $6e1b: $77
    adc a                                         ; $6e1c: $8f
    ld l, b                                       ; $6e1d: $68
    sbc a                                         ; $6e1e: $9f
    ld d, a                                       ; $6e1f: $57
    cp a                                          ; $6e20: $bf
    nop                                           ; $6e21: $00
    ld e, a                                       ; $6e22: $5f
    cp a                                          ; $6e23: $bf
    ld e, a                                       ; $6e24: $5f
    or a                                          ; $6e25: $b7
    ld c, a                                       ; $6e26: $4f
    adc e                                         ; $6e27: $8b

jr_0a1_6e28:
    ei                                            ; $6e28: $fb
    ld b, $00                                     ; $6e29: $06 $00
    ld a, e                                       ; $6e2b: $7b
    add a                                         ; $6e2c: $87
    cp b                                          ; $6e2d: $b8
    jp Jump_0a1_63d9                              ; $6e2e: $c3 $d9 $63


    db $ed                                        ; $6e31: $ed
    or b                                          ; $6e32: $b0
    nop                                           ; $6e33: $00
    xor e                                         ; $6e34: $ab
    rst $30                                       ; $6e35: $f7
    xor c                                         ; $6e36: $a9
    di                                            ; $6e37: $f3
    ld e, b                                       ; $6e38: $58
    push bc                                       ; $6e39: $c5
    cp a                                          ; $6e3a: $bf
    ld b, b                                       ; $6e3b: $40
    ld a, [bc]                                    ; $6e3c: $0a
    cp a                                          ; $6e3d: $bf
    ret nz                                        ; $6e3e: $c0

    ld a, a                                       ; $6e3f: $7f
    ret nz                                        ; $6e40: $c0

    inc b                                         ; $6e41: $04
    nop                                           ; $6e42: $00
    add b                                         ; $6e43: $80
    ld a, [bc]                                    ; $6e44: $0a
    db $10                                        ; $6e45: $10
    add b                                         ; $6e46: $80
    nop                                           ; $6e47: $00
    ld h, a                                       ; $6e48: $67
    sub a                                         ; $6e49: $97
    ld [hl], b                                    ; $6e4a: $70
    adc b                                         ; $6e4b: $88
    ld a, b                                       ; $6e4c: $78
    add a                                         ; $6e4d: $87
    ld a, a                                       ; $6e4e: $7f
    add b                                         ; $6e4f: $80
    dec b                                         ; $6e50: $05
    ld [hl], b                                    ; $6e51: $70
    adc a                                         ; $6e52: $8f
    ld l, e                                       ; $6e53: $6b
    sbc a                                         ; $6e54: $9f
    ld h, b                                       ; $6e55: $60
    ld b, $00                                     ; $6e56: $06 $00
    sbc a                                         ; $6e58: $9f
    inc l                                         ; $6e59: $2c
    ld [bc], a                                    ; $6e5a: $02
    ld [hl], b                                    ; $6e5b: $70
    ld a, a                                       ; $6e5c: $7f
    dec h                                         ; $6e5d: $25
    inc bc                                        ; $6e5e: $03
    sub b                                         ; $6e5f: $90

jr_0a1_6e60:
    ld c, $0a                                     ; $6e60: $0e $0a
    jr jr_0a1_6e60                                ; $6e62: $18 $fc

    ld [bc], a                                    ; $6e64: $02
    ld hl, sp+$05                                 ; $6e65: $f8 $05
    nop                                           ; $6e67: $00
    db $f4                                        ; $6e68: $f4
    dec c                                         ; $6e69: $0d
    db $f4                                        ; $6e6a: $f4
    dec c                                         ; $6e6b: $0d
    add sp, $1d                                   ; $6e6c: $e8 $1d
    add sp, $1c                                   ; $6e6e: $e8 $1c

jr_0a1_6e70:
    nop                                           ; $6e70: $00
    db $ec                                        ; $6e71: $ec
    inc e                                         ; $6e72: $1c
    ld a, a                                       ; $6e73: $7f
    add b                                         ; $6e74: $80
    db $db                                        ; $6e75: $db
    inc h                                         ; $6e76: $24
    rst $10                                       ; $6e77: $d7
    jr z, jr_0a1_6e7a                             ; $6e78: $28 $00

jr_0a1_6e7a:
    ld c, a                                       ; $6e7a: $4f
    or b                                          ; $6e7b: $b0
    xor l                                         ; $6e7c: $ad
    ld d, d                                       ; $6e7d: $52
    dec de                                        ; $6e7e: $1b
    db $e4                                        ; $6e7f: $e4
    and a                                         ; $6e80: $a7
    ld e, b                                       ; $6e81: $58
    ld h, h                                       ; $6e82: $64
    rra                                           ; $6e83: $1f
    ld b, d                                       ; $6e84: $42
    ld bc, $4ff2                                  ; $6e85: $01 $f2 $4f
    ld d, a                                       ; $6e88: $57
    xor b                                         ; $6e89: $a8
    ld [hl], b                                    ; $6e8a: $70
    ld e, e                                       ; $6e8b: $5b
    xor d                                         ; $6e8c: $aa
    ld d, l                                       ; $6e8d: $55
    nop                                           ; $6e8e: $00
    db $ec                                        ; $6e8f: $ec
    ld c, $f7                                     ; $6e90: $0e $f7
    ld b, $f1                                     ; $6e92: $06 $f1
    dec bc                                        ; $6e94: $0b

jr_0a1_6e95:
    ld hl, sp+$04                                 ; $6e95: $f8 $04
    jr nz, jr_0a1_6e95                            ; $6e97: $20 $fc

    inc bc                                        ; $6e99: $03
    ld [$c019], a                                 ; $6e9a: $ea $19 $c0
    rst $38                                       ; $6e9d: $ff
    adc a                                         ; $6e9e: $8f
    rst $38                                       ; $6e9f: $ff
    sbc a                                         ; $6ea0: $9f
    ld [bc], a                                    ; $6ea1: $02
    rst $38                                       ; $6ea2: $ff
    sbc d                                         ; $6ea3: $9a
    rst $38                                       ; $6ea4: $ff
    sub l                                         ; $6ea5: $95
    rst $38                                       ; $6ea6: $ff
    sub b                                         ; $6ea7: $90
    inc b                                         ; $6ea8: $04
    nop                                           ; $6ea9: $00
    ldh a, [$08]                                  ; $6eaa: $f0 $08
    rst $38                                       ; $6eac: $ff
    ld bc, $f1ff                                  ; $6ead: $01 $ff $f1
    inc h                                         ; $6eb0: $24
    ld [bc], a                                    ; $6eb1: $02
    xor c                                         ; $6eb2: $a9
    rst $38                                       ; $6eb3: $ff
    ld e, c                                       ; $6eb4: $59
    jr nz, @+$01                                  ; $6eb5: $20 $ff

    add hl, bc                                    ; $6eb7: $09
    inc b                                         ; $6eb8: $04
    nop                                           ; $6eb9: $00
    rrca                                          ; $6eba: $0f
    rst $38                                       ; $6ebb: $ff
    dec b                                         ; $6ebc: $05
    rst $28                                       ; $6ebd: $ef
    ret nc                                        ; $6ebe: $d0

    ld [bc], a                                    ; $6ebf: $02
    xor a                                         ; $6ec0: $af
    ld b, [hl]                                    ; $6ec1: $46
    cp c                                          ; $6ec2: $b9
    sub h                                         ; $6ec3: $94
    res 6, c                                      ; $6ec4: $cb $b1
    or $16                                        ; $6ec6: $f6 $16
    ld d, l                                       ; $6ec8: $55
    add b                                         ; $6ec9: $80
    ld a, [c]                                     ; $6eca: $f2
    ld [bc], a                                    ; $6ecb: $02
    add hl, hl                                    ; $6ecc: $29
    add $45                                       ; $6ecd: $c6 $45
    cp b                                          ; $6ecf: $b8
    and c                                         ; $6ed0: $a1
    ld e, $8c                                     ; $6ed1: $1e $8c
    add b                                         ; $6ed3: $80
    db $10                                        ; $6ed4: $10
    jr nz, @+$04                                  ; $6ed5: $20 $02

    ld a, l                                       ; $6ed7: $7d
    ld [$0677], sp                                ; $6ed8: $08 $77 $06
    ld e, c                                       ; $6edb: $59
    inc c                                         ; $6edc: $0c
    nop                                           ; $6edd: $00
    or e                                          ; $6ede: $b3
    ld [$0057], sp                                ; $6edf: $08 $57 $00
    ccf                                           ; $6ee2: $3f
    nop                                           ; $6ee3: $00
    ld d, a                                       ; $6ee4: $57
    nop                                           ; $6ee5: $00

jr_0a1_6ee6:
    nop                                           ; $6ee6: $00
    sub h                                         ; $6ee7: $94

jr_0a1_6ee8:
    jp nz, $c03d                                  ; $6ee8: $c2 $3d $c0

    ccf                                           ; $6eeb: $3f
    jp nz, $863d                                  ; $6eec: $c2 $3d $86

    inc b                                         ; $6eef: $04
    ld l, c                                       ; $6ef0: $69
    ld b, $f9                                     ; $6ef1: $06 $f9
    add d                                         ; $6ef3: $82
    ld l, l                                       ; $6ef4: $6d
    or c                                          ; $6ef5: $b1
    rlca                                          ; $6ef6: $07
    ld l, d                                       ; $6ef7: $6a
    inc bc                                        ; $6ef8: $03
    db $10                                        ; $6ef9: $10
    db $fc                                        ; $6efa: $fc
    inc bc                                        ; $6efb: $03
    db $ec                                        ; $6efc: $ec
    rst $00                                       ; $6efd: $c7
    ld b, $ed                                     ; $6efe: $06 $ed
    ld [bc], a                                    ; $6f00: $02
    db $dd                                        ; $6f01: $dd
    ld [bc], a                                    ; $6f02: $02
    ld bc, $00ed                                  ; $6f03: $01 $ed $00
    rst $08                                       ; $6f06: $cf
    nop                                           ; $6f07: $00
    and c                                         ; $6f08: $a1
    ld b, d                                       ; $6f09: $42
    cp l                                          ; $6f0a: $bd
    jp nz, $280c                                  ; $6f0b: $c2 $0c $28

    ld b, $e9                                     ; $6f0e: $06 $e9
    db $10                                        ; $6f10: $10
    jr nz, jr_0a1_6f36                            ; $6f11: $20 $23

    or d                                          ; $6f13: $b2
    rrca                                          ; $6f14: $0f
    adc b                                         ; $6f15: $88
    rlca                                          ; $6f16: $07
    sbc c                                         ; $6f17: $99
    nop                                           ; $6f18: $00
    ld d, $f6                                     ; $6f19: $16 $f6
    ld b, b                                       ; $6f1b: $40
    inc hl                                        ; $6f1c: $23
    ret nz                                        ; $6f1d: $c0

jr_0a1_6f1e:
    inc de                                        ; $6f1e: $13
    ld [c], a                                     ; $6f1f: $e2
    rst $38                                       ; $6f20: $ff
    ld b, d                                       ; $6f21: $42
    jr nz, jr_0a1_6ee6                            ; $6f22: $20 $c2

    rrca                                          ; $6f24: $0f
    pop hl                                        ; $6f25: $e1
    ld e, [hl]                                    ; $6f26: $5e
    ld sp, $d00f                                  ; $6f27: $31 $0f $d0
    ld bc, $0000                                  ; $6f2a: $01 $00 $00
    db $e3                                        ; $6f2d: $e3
    ld [bc], a                                    ; $6f2e: $02
    rst $38                                       ; $6f2f: $ff
    jr nz, jr_0a1_6f87                            ; $6f30: $20 $55

    rst $38                                       ; $6f32: $ff
    sub e                                         ; $6f33: $93
    inc c                                         ; $6f34: $0c
    inc b                                         ; $6f35: $04

jr_0a1_6f36:
    dec hl                                        ; $6f36: $2b
    call nc, $2b54                                ; $6f37: $d4 $54 $2b
    db $d3                                        ; $6f3a: $d3
    add b                                         ; $6f3b: $80
    jr nz, jr_0a1_6ee8                            ; $6f3c: $20 $aa

    ld a, a                                       ; $6f3e: $7f
    nop                                           ; $6f3f: $00
    ld [hl], a                                    ; $6f40: $77
    cp [hl]                                       ; $6f41: $be
    sbc h                                         ; $6f42: $9c
    ld a, $29                                     ; $6f43: $3e $29
    inc e                                         ; $6f45: $1c
    ld [bc], a                                    ; $6f46: $02
    jr @+$03                                      ; $6f47: $18 $01

    ld c, $01                                     ; $6f49: $0e $01
    ld d, a                                       ; $6f4b: $57
    adc a                                         ; $6f4c: $8f
    cp a                                          ; $6f4d: $bf
    rst $18                                       ; $6f4e: $df
    rra                                           ; $6f4f: $1f
    add h                                         ; $6f50: $84
    dec b                                         ; $6f51: $05
    nop                                           ; $6f52: $00
    ld [hl], l                                    ; $6f53: $75
    ld a, [hl-]                                   ; $6f54: $3a
    ld e, d                                       ; $6f55: $5a
    dec a                                         ; $6f56: $3d
    ld l, h                                       ; $6f57: $6c
    sbc a                                         ; $6f58: $9f
    ld b, a                                       ; $6f59: $47
    inc bc                                        ; $6f5a: $03
    nop                                           ; $6f5b: $00
    jr nc, jr_0a1_6f1e                            ; $6f5c: $30 $c0

    ld a, [$f5fc]                                 ; $6f5e: $fa $fc $f5
    inc c                                         ; $6f61: $0c
    db $eb                                        ; $6f62: $eb
    add hl, de                                    ; $6f63: $19
    nop                                           ; $6f64: $00
    reti                                          ; $6f65: $d9


    dec sp                                        ; $6f66: $3b
    or c                                          ; $6f67: $b1
    ld [hl], e                                    ; $6f68: $73
    db $e3                                        ; $6f69: $e3
    pop hl                                        ; $6f6a: $e1
    adc l                                         ; $6f6b: $8d
    pop bc                                        ; $6f6c: $c1
    nop                                           ; $6f6d: $00
    inc hl                                        ; $6f6e: $23
    inc e                                         ; $6f6f: $1c
    ld e, l                                       ; $6f70: $5d
    ld [hl+], a                                   ; $6f71: $22
    pop af                                        ; $6f72: $f1
    cp a                                          ; $6f73: $bf
    rst $28                                       ; $6f74: $ef
    ld a, a                                       ; $6f75: $7f
    ld b, b                                       ; $6f76: $40
    ld e, a                                       ; $6f77: $5f
    inc b                                         ; $6f78: $04
    ld b, e                                       ; $6f79: $43
    ld e, h                                       ; $6f7a: $5c
    cp $ef                                        ; $6f7b: $fe $ef
    cp $ff                                        ; $6f7d: $fe $ff
    cp $00                                        ; $6f7f: $fe $00
    db $fd                                        ; $6f81: $fd
    cp $fe                                        ; $6f82: $fe $fe
    db $fd                                        ; $6f84: $fd
    ld hl, sp-$03                                 ; $6f85: $f8 $fd

jr_0a1_6f87:
    pop af                                        ; $6f87: $f1
    ld sp, hl                                     ; $6f88: $f9
    nop                                           ; $6f89: $00
    pop hl                                        ; $6f8a: $e1
    ldh a, [$32]                                  ; $6f8b: $f0 $32
    ld b, c                                       ; $6f8d: $41
    sbc [hl]                                      ; $6f8e: $9e
    ld b, c                                       ; $6f8f: $41
    ld a, l                                       ; $6f90: $7d
    add d                                         ; $6f91: $82
    nop                                           ; $6f92: $00
    ld a, d                                       ; $6f93: $7a
    add l                                         ; $6f94: $85
    xor l                                         ; $6f95: $ad
    ld e, d                                       ; $6f96: $5a
    ld e, d                                       ; $6f97: $5a
    or l                                          ; $6f98: $b5
    cp b                                          ; $6f99: $b8
    rst $28                                       ; $6f9a: $ef
    nop                                           ; $6f9b: $00
    db $fc                                        ; $6f9c: $fc
    rst $08                                       ; $6f9d: $cf
    rst $10                                       ; $6f9e: $d7
    res 6, c                                      ; $6f9f: $cb $b1
    rst $00                                       ; $6fa1: $c7
    ld c, [hl]                                    ; $6fa2: $4e
    and e                                         ; $6fa3: $a3
    nop                                           ; $6fa4: $00
    or l                                          ; $6fa5: $b5
    db $e3                                        ; $6fa6: $e3
    ld c, d                                       ; $6fa7: $4a
    and a                                         ; $6fa8: $a7
    pop af                                        ; $6fa9: $f1

jr_0a1_6faa:
    and a                                         ; $6faa: $a7
    ld a, [bc]                                    ; $6fab: $0a
    rst $30                                       ; $6fac: $f7
    nop                                           ; $6fad: $00
    db $ed                                        ; $6fae: $ed
    or e                                          ; $6faf: $b3
    ld [de], a                                    ; $6fb0: $12
    db $eb                                        ; $6fb1: $eb
    and l                                         ; $6fb2: $a5
    rrc d                                         ; $6fb3: $cb $0a
    db $e3                                        ; $6fb5: $e3
    nop                                           ; $6fb6: $00
    or l                                          ; $6fb7: $b5
    bit 1, d                                      ; $6fb8: $cb $4a
    db $e3                                        ; $6fba: $e3
    push af                                       ; $6fbb: $f5
    bit 4, [hl]                                   ; $6fbc: $cb $66
    db $db                                        ; $6fbe: $db
    jr nc, @-$41                                  ; $6fbf: $30 $bd

    db $db                                        ; $6fc1: $db
    nop                                           ; $6fc2: $00
    ld e, d                                       ; $6fc3: $5a
    adc $4c                                       ; $6fc4: $ce $4c
    pop hl                                        ; $6fc6: $e1
    ld [de], a                                    ; $6fc7: $12
    ret nz                                        ; $6fc8: $c0

    inc l                                         ; $6fc9: $2c
    nop                                           ; $6fca: $00
    add h                                         ; $6fcb: $84
    ld e, a                                       ; $6fcc: $5f
    add c                                         ; $6fcd: $81
    scf                                           ; $6fce: $37
    nop                                           ; $6fcf: $00
    cp a                                          ; $6fd0: $bf
    nop                                           ; $6fd1: $00
    xor e                                         ; $6fd2: $ab
    nop                                           ; $6fd3: $00
    add b                                         ; $6fd4: $80
    cpl                                           ; $6fd5: $2f
    add c                                         ; $6fd6: $81
    ld c, d                                       ; $6fd7: $4a
    and c                                         ; $6fd8: $a1
    ld a, [hl+]                                   ; $6fd9: $2a
    or c                                          ; $6fda: $b1
    ld [hl-], a                                   ; $6fdb: $32
    jr nz, jr_0a1_6faa                            ; $6fdc: $20 $cc

    add hl, de                                    ; $6fde: $19
    ld e, $5a                                     ; $6fdf: $1e $5a
    rra                                           ; $6fe1: $1f
    jr nz, jr_0a1_6feb                            ; $6fe2: $20 $07

    ret z                                         ; $6fe4: $c8

    ld d, e                                       ; $6fe5: $53
    nop                                           ; $6fe6: $00
    db $e4                                        ; $6fe7: $e4
    ld b, e                                       ; $6fe8: $43
    adc b                                         ; $6fe9: $88
    sbc e                                         ; $6fea: $9b

jr_0a1_6feb:
    jr nz, @+$7b                                  ; $6feb: $20 $79

    ld [bc], a                                    ; $6fed: $02

jr_0a1_6fee:
    ld a, c                                       ; $6fee: $79
    inc b                                         ; $6fef: $04

jr_0a1_6ff0:
    nop                                           ; $6ff0: $00
    ld h, l                                       ; $6ff1: $65
    inc d                                         ; $6ff2: $14
    inc bc                                        ; $6ff3: $03
    ld c, b                                       ; $6ff4: $48
    cp $0c                                        ; $6ff5: $fe $0c
    rst $30                                       ; $6ff7: $f7
    ld [$6b00], sp                                ; $6ff8: $08 $00 $6b
    sbc h                                         ; $6ffb: $9c

jr_0a1_6ffc:
    db $e3                                        ; $6ffc: $e3
    inc e                                         ; $6ffd: $1c
    xor d                                         ; $6ffe: $aa
    ld e, l                                       ; $6fff: $5d
    ld l, d                                       ; $7000: $6a
    sbc l                                         ; $7001: $9d
    jr nz, jr_0a1_6fee                            ; $7002: $20 $ea

    dec e                                         ; $7004: $1d
    cp $0c                                        ; $7005: $fe $0c
    jp $bd3c                                      ; $7007: $c3 $3c $bd


    ld a, [hl]                                    ; $700a: $7e
    ld h, d                                       ; $700b: $62

jr_0a1_700c:
    inc bc                                        ; $700c: $03
    rst $18                                       ; $700d: $df
    db $fd                                        ; $700e: $fd
    cp a                                          ; $700f: $bf
    cp a                                          ; $7010: $bf
    rst $38                                       ; $7011: $ff
    cp a                                          ; $7012: $bf
    sub h                                         ; $7013: $94
    inc c                                         ; $7014: $0c
    ld e, h                                       ; $7015: $5c
    ld [hl-], a                                   ; $7016: $32
    add h                                         ; $7017: $84
    ld [bc], a                                    ; $7018: $02
    ld [$08e3], sp                                ; $7019: $08 $e3 $08
    db $e3                                        ; $701c: $e3
    inc d                                         ; $701d: $14
    sbc a                                         ; $701e: $9f
    ccf                                           ; $701f: $3f
    pop bc                                        ; $7020: $c1
    nop                                           ; $7021: $00
    nop                                           ; $7022: $00
    ld e, [hl]                                    ; $7023: $5e
    ld a, d                                       ; $7024: $7a
    inc a                                         ; $7025: $3c
    cp l                                          ; $7026: $bd
    add c                                         ; $7027: $81
    ld b, d                                       ; $7028: $42
    jp $803c                                      ; $7029: $c3 $3c $80


    or e                                          ; $702c: $b3
    rrca                                          ; $702d: $0f
    rst $08                                       ; $702e: $cf
    nop                                           ; $702f: $00
    or a                                          ; $7030: $b7
    nop                                           ; $7031: $00
    rst $00                                       ; $7032: $c7
    jr c, jr_0a1_6ff0                             ; $7033: $38 $bb

    nop                                           ; $7035: $00
    ld c, h                                       ; $7036: $4c
    cp e                                          ; $7037: $bb
    ld a, h                                       ; $7038: $7c
    jp $b378                                      ; $7039: $c3 $78 $b3


    ld a, b                                       ; $703c: $78
    rst $10                                       ; $703d: $d7
    nop                                           ; $703e: $00
    jr nz, jr_0a1_6ffc                            ; $703f: $20 $bb

    ld e, h                                       ; $7041: $5c
    or e                                          ; $7042: $b3
    ld a, b                                       ; $7043: $78
    ld [$543e], sp                                ; $7044: $08 $3e $54
    nop                                           ; $7047: $00
    rst $38                                       ; $7048: $ff
    and b                                         ; $7049: $a0
    rst $38                                       ; $704a: $ff
    ld b, b                                       ; $704b: $40
    ld hl, sp+$00                                 ; $704c: $f8 $00
    rst $20                                       ; $704e: $e7
    nop                                           ; $704f: $00
    ld b, b                                       ; $7050: $40
    rst $18                                       ; $7051: $df
    ld [bc], a                                    ; $7052: $02

jr_0a1_7053:
    rlca                                          ; $7053: $07
    ld e, [hl]                                    ; $7054: $5e
    dec bc                                        ; $7055: $0b
    ld b, b                                       ; $7056: $40
    inc sp                                        ; $7057: $33
    add h                                         ; $7058: $84
    ld [hl], a                                    ; $7059: $77
    ld bc, $8b00                                  ; $705a: $01 $00 $8b
    inc c                                         ; $705d: $0c
    dec de                                        ; $705e: $1b
    ld c, h                                       ; $705f: $4c
    dec e                                         ; $7060: $1d
    ld e, [hl]                                    ; $7061: $5e
    ld [bc], a                                    ; $7062: $02
    nop                                           ; $7063: $00
    db $10                                        ; $7064: $10

jr_0a1_7065:
    sbc $c3                                       ; $7065: $de $c3
    inc [hl]                                      ; $7067: $34
    sub d                                         ; $7068: $92
    ld e, l                                       ; $7069: $5d
    nop                                           ; $706a: $00
    jr z, jr_0a1_706d                             ; $706b: $28 $00

jr_0a1_706d:
    add c                                         ; $706d: $81
    inc h                                         ; $706e: $24
    add b                                         ; $706f: $80
    and b                                         ; $7070: $a0
    ld d, b                                       ; $7071: $50
    dec b                                         ; $7072: $05
    nop                                           ; $7073: $00
    add b                                         ; $7074: $80
    ld d, l                                       ; $7075: $55
    dec b                                         ; $7076: $05
    ld d, l                                       ; $7077: $55
    xor d                                         ; $7078: $aa
    nop                                           ; $7079: $00
    dec d                                         ; $707a: $15
    sbc h                                         ; $707b: $9c
    dec hl                                        ; $707c: $2b
    jr c, jr_0a1_70a2                             ; $707d: $38 $23

    db $f4                                        ; $707f: $f4
    add a                                         ; $7080: $87
    ret z                                         ; $7081: $c8

    ld [hl-], a                                   ; $7082: $32
    rrca                                          ; $7083: $0f
    jr nc, jr_0a1_700c                            ; $7084: $30 $86

    ld a, [bc]                                    ; $7086: $0a
    ld d, b                                       ; $7087: $50
    ld l, d                                       ; $7088: $6a
    cp a                                          ; $7089: $bf
    ld b, b                                       ; $708a: $40
    db $10                                        ; $708b: $10
    ld e, e                                       ; $708c: $5b
    adc a                                         ; $708d: $8f
    ld a, b                                       ; $708e: $78
    ld [hl], b                                    ; $708f: $70
    jr nz, jr_0a1_70ad                            ; $7090: $20 $1b

    ld l, a                                       ; $7092: $6f
    rlca                                          ; $7093: $07
    ld [bc], a                                    ; $7094: $02
    jr nz, jr_0a1_7065                            ; $7095: $20 $ce

    dec c                                         ; $7097: $0d
    ld a, h                                       ; $7098: $7c
    add e                                         ; $7099: $83
    cp e                                          ; $709a: $bb
    nop                                           ; $709b: $00

jr_0a1_709c:
    rst $00                                       ; $709c: $c7
    ld [hl], $cd                                  ; $709d: $36 $cd
    xor a                                         ; $709f: $af
    db $db                                        ; $70a0: $db
    xor e                                         ; $70a1: $ab

jr_0a1_70a2:
    rst $18                                       ; $70a2: $df
    xor e                                         ; $70a3: $ab
    ld b, b                                       ; $70a4: $40
    rst $18                                       ; $70a5: $df
    nop                                           ; $70a6: $00
    ld e, [hl]                                    ; $70a7: $5e
    ld a, a                                       ; $70a8: $7f
    add b                                         ; $70a9: $80
    ld [hl], a                                    ; $70aa: $77
    add b                                         ; $70ab: $80
    add a                                         ; $70ac: $87

jr_0a1_70ad:
    ld c, b                                       ; $70ad: $48
    ld b, b                                       ; $70ae: $40
    xor a                                         ; $70af: $af
    ret nz                                        ; $70b0: $c0

    ld b, $af                                     ; $70b1: $06 $af
    ld b, b                                       ; $70b3: $40
    and a                                         ; $70b4: $a7
    ld c, b                                       ; $70b5: $48
    ld h, e                                       ; $70b6: $63
    sub h                                         ; $70b7: $94
    nop                                           ; $70b8: $00
    di                                            ; $70b9: $f3
    ld [$00fe], sp                                ; $70ba: $08 $fe $00
    or $09                                        ; $70bd: $f6 $09
    db $eb                                        ; $70bf: $eb
    stop                                          ; $70c0: $10 $00
    push de                                       ; $70c2: $d5
    jr z, jr_0a1_7053                             ; $70c3: $28 $8e

    ld d, b                                       ; $70c5: $50
    inc c                                         ; $70c6: $0c
    or b                                          ; $70c7: $b0
    jr z, jr_0a1_709c                             ; $70c8: $28 $d2

    inc bc                                        ; $70ca: $03
    ld b, b                                       ; $70cb: $40
    or [hl]                                       ; $70cc: $b6
    dec [hl]                                      ; $70cd: $35
    add a                                         ; $70ce: $87
    inc sp                                        ; $70cf: $33
    ld c, e                                       ; $70d0: $4b

jr_0a1_70d1:
    xor [hl]                                      ; $70d1: $ae
    ld a, [hl+]                                   ; $70d2: $2a
    call nz, $c015                                ; $70d3: $c4 $15 $c0
    ld e, h                                       ; $70d6: $5c
    ld [$3804], sp                                ; $70d7: $08 $04 $38
    nop                                           ; $70da: $00
    db $e3                                        ; $70db: $e3
    jr jr_0a1_70d1                                ; $70dc: $18 $f3

    db $fc                                        ; $70de: $fc
    db $e3                                        ; $70df: $e3
    ld b, b                                       ; $70e0: $40
    sbc b                                         ; $70e1: $98
    inc b                                         ; $70e2: $04
    nop                                           ; $70e3: $00
    ld hl, sp-$0d                                 ; $70e4: $f8 $f3
    ld hl, sp-$1d                                 ; $70e6: $f8 $e3
    ld hl, sp+$73                                 ; $70e8: $f8 $73
    rlca                                          ; $70ea: $07
    ld hl, sp+$70                                 ; $70eb: $f8 $70
    adc [hl]                                      ; $70ed: $8e
    ld [hl], b                                    ; $70ee: $70
    add [hl]                                      ; $70ef: $86
    inc b                                         ; $70f0: $04
    ld c, b                                       ; $70f1: $48
    adc b                                         ; $70f2: $88
    dec hl                                        ; $70f3: $2b
    sbc [hl]                                      ; $70f4: $9e
    rra                                           ; $70f5: $1f
    inc bc                                        ; $70f6: $03
    ld d, l                                       ; $70f7: $55
    xor d                                         ; $70f8: $aa
    inc hl                                        ; $70f9: $23
    ld [hl], h                                    ; $70fa: $74
    rlca                                          ; $70fb: $07
    adc b                                         ; $70fc: $88
    jr nz, jr_0a1_714a                            ; $70fd: $20 $4b

    jr nc, @+$12                                  ; $70ff: $30 $10

    inc e                                         ; $7101: $1c
    adc l                                         ; $7102: $8d
    ld sp, $08c2                                  ; $7103: $31 $c2 $08
    add hl, de                                    ; $7106: $19
    ld a, [hl]                                    ; $7107: $7e
    ld e, $2a                                     ; $7108: $1e $2a
    rlca                                          ; $710a: $07
    ldh [$2f], a                                  ; $710b: $e0 $2f
    ld bc, $d7f0                                  ; $710d: $01 $f0 $d7
    ld hl, sp-$09                                 ; $7110: $f8 $f7
    ld hl, sp-$09                                 ; $7112: $f8 $f7
    ret c                                         ; $7114: $d8

    sbc [hl]                                      ; $7115: $9e
    ld c, $e0                                     ; $7116: $0e $e0
    ret c                                         ; $7118: $d8

    dec bc                                        ; $7119: $0b
    ld d, $0d                                     ; $711a: $16 $0d
    adc b                                         ; $711c: $88
    dec bc                                        ; $711d: $0b
    db $ec                                        ; $711e: $ec
    and e                                         ; $711f: $a3
    set 2, h                                      ; $7120: $cb $d4
    dec de                                        ; $7122: $1b
    db $10                                        ; $7123: $10
    daa                                           ; $7124: $27
    inc a                                         ; $7125: $3c
    rst $00                                       ; $7126: $c7
    ld [$0206], a                                 ; $7127: $ea $06 $02
    ei                                            ; $712a: $fb
    dec b                                         ; $712b: $05
    ei                                            ; $712c: $fb
    ld h, b                                       ; $712d: $60
    rlca                                          ; $712e: $07
    sbc b                                         ; $712f: $98
    dec bc                                        ; $7130: $0b
    sbc d                                         ; $7131: $9a
    inc bc                                        ; $7132: $03
    add b                                         ; $7133: $80
    ccf                                           ; $7134: $3f
    add b                                         ; $7135: $80
    ld a, h                                       ; $7136: $7c
    ld [bc], a                                    ; $7137: $02
    rrca                                          ; $7138: $0f
    cp b                                          ; $7139: $b8
    push bc                                       ; $713a: $c5
    inc [hl]                                      ; $713b: $34
    adc l                                         ; $713c: $8d
    sbc b                                         ; $713d: $98
    add hl, hl                                    ; $713e: $29
    ld a, b                                       ; $713f: $78
    add hl, hl                                    ; $7140: $29
    sbc b                                         ; $7141: $98
    add hl, hl                                    ; $7142: $29
    ld a, b                                       ; $7143: $78
    add hl, hl                                    ; $7144: $29
    rst $08                                       ; $7145: $cf
    jp z, $0a38                                   ; $7146: $ca $38 $0a

    rra                                           ; $7149: $1f

jr_0a1_714a:
    inc [hl]                                      ; $714a: $34
    ld c, l                                       ; $714b: $4d
    ret z                                         ; $714c: $c8

    dec de                                        ; $714d: $1b
    sbc b                                         ; $714e: $98
    dec hl                                        ; $714f: $2b
    xor b                                         ; $7150: $a8
    add hl, hl                                    ; $7151: $29
    adc b                                         ; $7152: $88
    add hl, hl                                    ; $7153: $29
    rst $20                                       ; $7154: $e7
    xor b                                         ; $7155: $a8
    add hl, hl                                    ; $7156: $29
    adc b                                         ; $7157: $88
    add hl, hl                                    ; $7158: $29
    ld b, b                                       ; $7159: $40
    ld e, b                                       ; $715a: $58
    ld d, a                                       ; $715b: $57
    xor b                                         ; $715c: $a8
    xor b                                         ; $715d: $a8
    add hl, de                                    ; $715e: $19
    ldh [$3b], a                                  ; $715f: $e0 $3b
    xor b                                         ; $7161: $a8
    add hl, de                                    ; $7162: $19
    add b                                         ; $7163: $80
    and b                                         ; $7164: $a0
    ld e, c                                       ; $7165: $59
    ei                                            ; $7166: $fb
    inc b                                         ; $7167: $04
    push af                                       ; $7168: $f5
    ld c, $f1                                     ; $7169: $0e $f1
    ld c, $f5                                     ; $716b: $0e $f5
    ret nz                                        ; $716d: $c0

    ld [bc], a                                    ; $716e: $02
    db $10                                        ; $716f: $10
    ld e, [hl]                                    ; $7170: $5e
    rrca                                          ; $7171: $0f
    pop hl                                        ; $7172: $e1
    ld e, $de                                     ; $7173: $1e $de
    ccf                                           ; $7175: $3f
    or c                                          ; $7176: $b1
    ld l, a                                       ; $7177: $6f
    inc bc                                        ; $7178: $03
    ld a, [hl]                                    ; $7179: $7e
    rst $18                                       ; $717a: $df
    ld e, a                                       ; $717b: $5f
    rst $38                                       ; $717c: $ff
    ld e, a                                       ; $717d: $5f
    cp $d0                                        ; $717e: $fe $d0
    inc l                                         ; $7180: $2c
    ret z                                         ; $7181: $c8

    jr jr_0a1_7186                                ; $7182: $18 $02

    cp a                                          ; $7184: $bf
    ret nz                                        ; $7185: $c0

jr_0a1_7186:
    pop af                                        ; $7186: $f1
    inc b                                         ; $7187: $04
    pop af                                        ; $7188: $f1
    ld a, [bc]                                    ; $7189: $0a
    and h                                         ; $718a: $a4
    ld c, a                                       ; $718b: $4f

jr_0a1_718c:
    xor a                                         ; $718c: $af
    ld bc, $9e3d                                  ; $718d: $01 $3d $9e
    ld e, [hl]                                    ; $7190: $5e
    ret nz                                        ; $7191: $c0

    ld hl, $1ee1                                  ; $7192: $21 $e1 $1e
    cp b                                          ; $7195: $b8
    cpl                                           ; $7196: $2f
    nop                                           ; $7197: $00
    ld h, e                                       ; $7198: $63
    inc e                                         ; $7199: $1c
    ld e, l                                       ; $719a: $5d
    and [hl]                                      ; $719b: $a6
    db $dd                                        ; $719c: $dd
    ld a, $e1                                     ; $719d: $3e $e1
    inc a                                         ; $719f: $3c
    nop                                           ; $71a0: $00
    reti                                          ; $71a1: $d9


    inc a                                         ; $71a2: $3c

jr_0a1_71a3:
    db $eb                                        ; $71a3: $eb
    db $10                                        ; $71a4: $10
    db $dd                                        ; $71a5: $dd
    ld l, $d9                                     ; $71a6: $2e $d9
    inc a                                         ; $71a8: $3c
    jr nz, jr_0a1_718c                            ; $71a9: $20 $e1

    ld a, [de]                                    ; $71ab: $1a
    adc b                                         ; $71ac: $88

jr_0a1_71ad:
    add hl, de                                    ; $71ad: $19
    db $fc                                        ; $71ae: $fc
    ld [bc], a                                    ; $71af: $02
    db $fc                                        ; $71b0: $fc
    nop                                           ; $71b1: $00
    db $fd                                        ; $71b2: $fd
    ret nz                                        ; $71b3: $c0

    sbc d                                         ; $71b4: $9a
    ld de, $5c80                                  ; $71b5: $11 $80 $5c
    ld a, [de]                                    ; $71b8: $1a
    push hl                                       ; $71b9: $e5
    jr jr_0a1_71a3                                ; $71ba: $18 $e7

    ld [$08b7], sp                                ; $71bc: $08 $b7 $08
    ld [$08f7], sp                                ; $71bf: $08 $f7 $08
    or a                                          ; $71c2: $b7
    add b                                         ; $71c3: $80
    ld [bc], a                                    ; $71c4: $02
    sbc [hl]                                      ; $71c5: $9e
    nop                                           ; $71c6: $00
    ld d, [hl]                                    ; $71c7: $56
    nop                                           ; $71c8: $00
    nop                                           ; $71c9: $00
    cp $10                                        ; $71ca: $fe $10
    ld l, [hl]                                    ; $71cc: $6e
    jr nz, jr_0a1_71ad                            ; $71cd: $20 $de

    jr nc, @+$51                                  ; $71cf: $30 $4f

    ld [$ee10], sp                                ; $71d1: $08 $10 $ee
    nop                                           ; $71d4: $00
    ld a, [hl]                                    ; $71d5: $7e
    inc b                                         ; $71d6: $04
    nop                                           ; $71d7: $00
    add hl, hl                                    ; $71d8: $29
    add hl, bc                                    ; $71d9: $09
    ld [hl], b                                    ; $71da: $70
    ld bc, $8e71                                  ; $71db: $01 $71 $8e
    adc [hl]                                      ; $71de: $8e
    ld bc, $0031                                  ; $71df: $01 $31 $00
    ld a, d                                       ; $71e2: $7a
    di                                            ; $71e3: $f3
    daa                                           ; $71e4: $27
    nop                                           ; $71e5: $00
    ld [hl], e                                    ; $71e6: $73
    ld sp, hl                                     ; $71e7: $f9
    ld c, b                                       ; $71e8: $48
    inc sp                                        ; $71e9: $33
    dec d                                         ; $71ea: $15
    add e                                         ; $71eb: $83
    and e                                         ; $71ec: $a3
    ld c, c                                       ; $71ed: $49
    nop                                           ; $71ee: $00
    ret nz                                        ; $71ef: $c0

    ld sp, $2045                                  ; $71f0: $31 $45 $20
    add $28                                       ; $71f3: $c6 $28
    xor b                                         ; $71f5: $a8
    ld d, c                                       ; $71f6: $51
    nop                                           ; $71f7: $00
    push de                                       ; $71f8: $d5
    and $33                                       ; $71f9: $e6 $33
    rst $38                                       ; $71fb: $ff
    reti                                          ; $71fc: $d9


    ei                                            ; $71fd: $fb
    ld hl, sp-$08                                 ; $71fe: $f8 $f8
    ld b, l                                       ; $7200: $45
    ldh a, [$03]                                  ; $7201: $f0 $03
    nop                                           ; $7203: $00
    ldh a, [$e0]                                  ; $7204: $f0 $e0
    ld b, b                                       ; $7206: $40
    ld h, [hl]                                    ; $7207: $66
    ld b, $2c                                     ; $7208: $06 $2c
    dec bc                                        ; $720a: $0b
    inc b                                         ; $720b: $04
    nop                                           ; $720c: $00
    ld a, h                                       ; $720d: $7c
    cp $00                                        ; $720e: $fe $00
    nop                                           ; $7210: $00
    inc d                                         ; $7211: $14
    inc bc                                        ; $7212: $03
    ld [hl+], a                                   ; $7213: $22
    inc c                                         ; $7214: $0c
    jr nz, jr_0a1_7233                            ; $7215: $20 $1c

    db $10                                        ; $7217: $10
    sub b                                         ; $7218: $90
    ld c, $60                                     ; $7219: $0e $60
    add h                                         ; $721b: $84
    adc d                                         ; $721c: $8a
    ld [hl], b                                    ; $721d: $70
    inc b                                         ; $721e: $04
    ld hl, $66f8                                  ; $721f: $21 $f8 $66
    sub b                                         ; $7222: $90
    ld d, $10                                     ; $7223: $16 $10
    nop                                           ; $7225: $00
    ld b, b                                       ; $7226: $40
    nop                                           ; $7227: $00
    cp h                                          ; $7228: $bc

jr_0a1_7229:
    ld [bc], a                                    ; $7229: $02
    and b                                         ; $722a: $a0
    inc b                                         ; $722b: $04
    nop                                           ; $722c: $00
    nop                                           ; $722d: $00
    ld a, [bc]                                    ; $722e: $0a
    nop                                           ; $722f: $00
    ld [$3000], sp                                ; $7230: $08 $00 $30

jr_0a1_7233:
    jr nz, jr_0a1_729d                            ; $7233: $20 $68

    nop                                           ; $7235: $00
    ld b, b                                       ; $7236: $40
    ld d, b                                       ; $7237: $50
    ld b, b                                       ; $7238: $40
    ld h, c                                       ; $7239: $61
    ld b, b                                       ; $723a: $40
    ld [hl], d                                    ; $723b: $72
    ld h, b                                       ; $723c: $60
    ld a, b                                       ; $723d: $78
    nop                                           ; $723e: $00
    jr nc, jr_0a1_727c                            ; $723f: $30 $3b

    inc e                                         ; $7241: $1c
    ld l, $1f                                     ; $7242: $2e $1f
    add b                                         ; $7244: $80
    nop                                           ; $7245: $00
    jr nz, jr_0a1_7248                            ; $7246: $20 $00

jr_0a1_7248:
    ret nz                                        ; $7248: $c0

jr_0a1_7249:
    ld d, b                                       ; $7249: $50
    jr nz, jr_0a1_726c                            ; $724a: $20 $20

    db $10                                        ; $724c: $10
    db $e4                                        ; $724d: $e4
    db $10                                        ; $724e: $10
    sub b                                         ; $724f: $90
    nop                                           ; $7250: $00
    ld h, b                                       ; $7251: $60
    ld [hl], b                                    ; $7252: $70
    ret nz                                        ; $7253: $c0

    db $fc                                        ; $7254: $fc
    sbc b                                         ; $7255: $98
    dec bc                                        ; $7256: $0b
    rla                                           ; $7257: $17
    inc bc                                        ; $7258: $03
    ld bc, $0016                                  ; $7259: $01 $16 $00
    inc l                                         ; $725c: $2c
    inc b                                         ; $725d: $04
    inc l                                         ; $725e: $2c
    ld [$2018], sp                                ; $725f: $08 $18 $20
    jr jr_0a1_7274                                ; $7262: $18 $10

    ld [hl], a                                    ; $7264: $77
    ld a, $7f                                     ; $7265: $3e $7f
    ld [hl-], a                                   ; $7267: $32
    scf                                           ; $7268: $37
    ld sp, hl                                     ; $7269: $f9
    cp $88                                        ; $726a: $fe $88

jr_0a1_726c:
    ld [hl], b                                    ; $726c: $70
    add b                                         ; $726d: $80
    ld c, h                                       ; $726e: $4c
    ld [$8080], sp                                ; $726f: $08 $80 $80
    add d                                         ; $7272: $82
    add b                                         ; $7273: $80

jr_0a1_7274:
    sub l                                         ; $7274: $95
    add b                                         ; $7275: $80
    ld e, d                                       ; $7276: $5a
    nop                                           ; $7277: $00
    add b                                         ; $7278: $80
    ld b, e                                       ; $7279: $43
    inc a                                         ; $727a: $3c
    cp h                                          ; $727b: $bc

jr_0a1_727c:
    ld b, e                                       ; $727c: $43
    ld b, [hl]                                    ; $727d: $46
    reti                                          ; $727e: $d9


    sub l                                         ; $727f: $95
    ld [$0ace], sp                                ; $7280: $08 $ce $0a
    add a                                         ; $7283: $87
    inc bc                                        ; $7284: $03
    ld h, h                                       ; $7285: $64
    nop                                           ; $7286: $00
    jr nc, jr_0a1_7249                            ; $7287: $30 $c0

    ld c, b                                       ; $7289: $48
    db $10                                        ; $728a: $10
    jr nc, jr_0a1_7229                            ; $728b: $30 $9c

    ld [$3c90], sp                                ; $728d: $08 $90 $3c
    ld a, [bc]                                    ; $7290: $0a
    ld bc, $0713                                  ; $7291: $01 $13 $07
    nop                                           ; $7294: $00
    inc b                                         ; $7295: $04
    rrca                                          ; $7296: $0f
    ld h, $04                                     ; $7297: $26 $04
    ld b, [hl]                                    ; $7299: $46
    ld [bc], a                                    ; $729a: $02
    dec hl                                        ; $729b: $2b
    ld [bc], a                                    ; $729c: $02

jr_0a1_729d:
    nop                                           ; $729d: $00
    ld d, $02                                     ; $729e: $16 $02
    rlca                                          ; $72a0: $07
    ld b, $1e                                     ; $72a1: $06 $1e
    inc c                                         ; $72a3: $0c
    call c, Call_000_0238                         ; $72a4: $dc $38 $02
    ld [hl], b                                    ; $72a7: $70
    ld hl, sp+$08                                 ; $72a8: $f8 $08
    rrca                                          ; $72aa: $0f
    rrca                                          ; $72ab: $0f
    rra                                           ; $72ac: $1f
    ld [bc], a                                    ; $72ad: $02
    ld [$0107], sp                                ; $72ae: $08 $07 $01
    rrca                                          ; $72b1: $0f
    inc bc                                        ; $72b2: $03
    rlca                                          ; $72b3: $07
    nop                                           ; $72b4: $00
    ld bc, $0000                                  ; $72b5: $01 $00 $00
    add b                                         ; $72b8: $80
    ld c, h                                       ; $72b9: $4c
    nop                                           ; $72ba: $00
    ld [hl], c                                    ; $72bb: $71
    ld sp, hl                                     ; $72bc: $f9
    ld d, c                                       ; $72bd: $51
    nop                                           ; $72be: $00
    ldh a, [$e8]                                  ; $72bf: $f0 $e8
    call nz, $0368                                ; $72c1: $c4 $68 $03
    ld h, b                                       ; $72c4: $60
    inc [hl]                                      ; $72c5: $34
    jr z, @+$36                                   ; $72c6: $28 $34

    inc [hl]                                      ; $72c8: $34
    ld e, $30                                     ; $72c9: $1e $30
    jr jr_0a1_72f0                                ; $72cb: $18 $23

    nop                                           ; $72cd: $00
    jr nz, jr_0a1_72d0                            ; $72ce: $20 $00

jr_0a1_72d0:
    inc b                                         ; $72d0: $04
    add hl, hl                                    ; $72d1: $29
    ld [$4100], sp                                ; $72d2: $08 $00 $41
    nop                                           ; $72d5: $00
    ld c, $01                                     ; $72d6: $0e $01
    db $10                                        ; $72d8: $10
    ld b, c                                       ; $72d9: $41
    ld a, $24                                     ; $72da: $3e $24
    call nz, Call_000_2000                        ; $72dc: $c4 $00 $20
    inc bc                                        ; $72df: $03
    ld b, e                                       ; $72e0: $43
    inc b                                         ; $72e1: $04
    nop                                           ; $72e2: $00
    ld [hl+], a                                   ; $72e3: $22
    inc b                                         ; $72e4: $04
    adc c                                         ; $72e5: $89
    inc b                                         ; $72e6: $04
    rlca                                          ; $72e7: $07
    ret z                                         ; $72e8: $c8

    and a                                         ; $72e9: $a7
    ld c, b                                       ; $72ea: $48
    nop                                           ; $72eb: $00
    ld bc, $0400                                  ; $72ec: $01 $00 $04
    inc bc                                        ; $72ef: $03

jr_0a1_72f0:
    ld bc, $0006                                  ; $72f0: $01 $06 $00
    rlca                                          ; $72f3: $07
    nop                                           ; $72f4: $00
    inc b                                         ; $72f5: $04
    rlca                                          ; $72f6: $07
    ld b, $03                                     ; $72f7: $06 $03
    inc bc                                        ; $72f9: $03
    ld bc, $e011                                  ; $72fa: $01 $11 $e0
    ld [$c738], sp                                ; $72fd: $08 $38 $c7
    ret nz                                        ; $7300: $c0

    ccf                                           ; $7301: $3f
    xor b                                         ; $7302: $a8
    ld e, $81                                     ; $7303: $1e $81
    rst $38                                       ; $7305: $ff
    ld c, e                                       ; $7306: $4b
    nop                                           ; $7307: $00
    rst $38                                       ; $7308: $ff
    cp $ff                                        ; $7309: $fe $ff
    scf                                           ; $730b: $37
    ret z                                         ; $730c: $c8

    cpl                                           ; $730d: $2f
    ret nc                                        ; $730e: $d0

    ld [hl], a                                    ; $730f: $77
    nop                                           ; $7310: $00
    sbc b                                         ; $7311: $98
    ld a, d                                       ; $7312: $7a
    sbc l                                         ; $7313: $9d
    sbc l                                         ; $7314: $9d
    adc a                                         ; $7315: $8f
    ld c, $87                                     ; $7316: $0e $87
    add a                                         ; $7318: $87
    jr nz, jr_0a1_731e                            ; $7319: $20 $03

    ld b, d                                       ; $731b: $42
    cp $42                                        ; $731c: $fe $42

jr_0a1_731e:
    db $fc                                        ; $731e: $fc
    ld [bc], a                                    ; $731f: $02
    ldh a, [$09]                                  ; $7320: $f0 $09
    pop bc                                        ; $7322: $c1
    ld bc, $fd27                                  ; $7323: $01 $27 $fd
    ld [bc], a                                    ; $7326: $02
    db $fd                                        ; $7327: $fd
    inc bc                                        ; $7328: $03
    cp $03                                        ; $7329: $fe $03
    inc b                                         ; $732b: $04
    nop                                           ; $732c: $00
    nop                                           ; $732d: $00
    ld bc, $423d                                  ; $732e: $01 $3d $42
    dec e                                         ; $7331: $1d
    and e                                         ; $7332: $a3
    ld c, $d1                                     ; $7333: $0e $d1
    inc b                                         ; $7335: $04
    nop                                           ; $7336: $00
    sbc a                                         ; $7337: $9f
    ld d, b                                       ; $7338: $50
    ccf                                           ; $7339: $3f
    db $10                                        ; $733a: $10
    adc [hl]                                      ; $733b: $8e
    ret z                                         ; $733c: $c8

    daa                                           ; $733d: $27
    db $f4                                        ; $733e: $f4
    nop                                           ; $733f: $00
    ld [bc], a                                    ; $7340: $02
    db $f4                                        ; $7341: $f4
    ld [bc], a                                    ; $7342: $02
    inc [hl]                                      ; $7343: $34
    ld b, d                                       ; $7344: $42
    ld bc, $0f94                                  ; $7345: $01 $94 $0f
    nop                                           ; $7348: $00
    ld h, b                                       ; $7349: $60
    rlca                                          ; $734a: $07
    add sp, $07                                   ; $734b: $e8 $07
    xor b                                         ; $734d: $a8
    rrca                                          ; $734e: $0f
    and b                                         ; $734f: $a0
    rrca                                          ; $7350: $0f
    nop                                           ; $7351: $00
    sub b                                         ; $7352: $90
    cpl                                           ; $7353: $2f

jr_0a1_7354:
    and b                                         ; $7354: $a0
    ld l, a                                       ; $7355: $6f
    ld h, b                                       ; $7356: $60
    sbc a                                         ; $7357: $9f
    ret nz                                        ; $7358: $c0

    ld [bc], a                                    ; $7359: $02
    inc b                                         ; $735a: $04
    inc hl                                        ; $735b: $23
    nop                                           ; $735c: $00
    ret nz                                        ; $735d: $c0

    ret nz                                        ; $735e: $c0

    ccf                                           ; $735f: $3f
    ld b, b                                       ; $7360: $40
    ld a, $1f                                     ; $7361: $3e $1f
    jr nz, jr_0a1_7385                            ; $7363: $20 $20

    ccf                                           ; $7365: $3f
    ret nz                                        ; $7366: $c0

    nop                                           ; $7367: $00
    ld c, h                                       ; $7368: $4c
    cp $01                                        ; $7369: $fe $01
    jp c, $ea24                                   ; $736b: $da $24 $ea

    nop                                           ; $736e: $00
    inc d                                         ; $736f: $14
    ld a, [c]                                     ; $7370: $f2
    dec c                                         ; $7371: $0d
    or h                                          ; $7372: $b4
    ld c, d                                       ; $7373: $4a
    ret c                                         ; $7374: $d8

    daa                                           ; $7375: $27
    db $e4                                        ; $7376: $e4
    inc c                                         ; $7377: $0c
    ld a, [de]                                    ; $7378: $1a
    xor b                                         ; $7379: $a8
    ld d, a                                       ; $737a: $57
    rst $38                                       ; $737b: $ff
    adc b                                         ; $737c: $88
    nop                                           ; $737d: $00
    ld l, a                                       ; $737e: $6f
    dec l                                         ; $737f: $2d
    ret nc                                        ; $7380: $d0

    cpl                                           ; $7381: $2f
    ld hl, $17e8                                  ; $7382: $21 $e8 $17

jr_0a1_7385:
    db $10                                        ; $7385: $10
    ld c, b                                       ; $7386: $48
    rla                                           ; $7387: $17
    add sp, $0b                                   ; $7388: $e8 $0b
    db $f4                                        ; $738a: $f4
    add $1c                                       ; $738b: $c6 $1c
    ldh a, [rTMA]                                 ; $738d: $f0 $06
    jr c, jr_0a1_73df                             ; $738f: $38 $4e

    ld c, a                                       ; $7391: $4f
    ld [hl], $0c                                  ; $7392: $36 $0c
    ld e, [hl]                                    ; $7394: $5e
    ccf                                           ; $7395: $3f
    rra                                           ; $7396: $1f
    ldh [$ef], a                                  ; $7397: $e0 $ef
    sub b                                         ; $7399: $90

jr_0a1_739a:
    nop                                           ; $739a: $00
    rst $28                                       ; $739b: $ef
    ldh a, [$c2]                                  ; $739c: $f0 $c2
    ld h, $e0                                     ; $739e: $26 $e0
    jr jr_0a1_739a                                ; $73a0: $18 $f8

    rlca                                          ; $73a2: $07
    sub b                                         ; $73a3: $90
    inc h                                         ; $73a4: $24
    ld b, b                                       ; $73a5: $40
    nop                                           ; $73a6: $00
    ld a, [hl]                                    ; $73a7: $7e
    ld a, [bc]                                    ; $73a8: $0a
    rlca                                          ; $73a9: $07
    sbc $61                                       ; $73aa: $de $61

jr_0a1_73ac:
    xor $b0                                       ; $73ac: $ee $b0
    nop                                           ; $73ae: $00
    xor [hl]                                      ; $73af: $ae
    pop af                                        ; $73b0: $f1
    xor a                                         ; $73b1: $af
    ldh a, [$5f]                                  ; $73b2: $f0 $5f
    ret nz                                        ; $73b4: $c0

    rra                                           ; $73b5: $1f
    ldh a, [rP1]                                  ; $73b6: $f0 $00
    ld l, a                                       ; $73b8: $6f
    ldh a, [$5f]                                  ; $73b9: $f0 $5f
    jr nz, jr_0a1_73ac                            ; $73bb: $20 $ef

    ret nc                                        ; $73bd: $d0

    ld l, a                                       ; $73be: $6f
    ldh a, [$30]                                  ; $73bf: $f0 $30
    rra                                           ; $73c1: $1f
    ld h, b                                       ; $73c2: $60
    jp nc, $ec0f                                  ; $73c3: $d2 $0f $ec

    ld [bc], a                                    ; $73c6: $02
    ld [$14ea], sp                                ; $73c7: $08 $ea $14
    rst $00                                       ; $73ca: $c7
    nop                                           ; $73cb: $00
    jr z, jr_0a1_7354                             ; $73cc: $28 $86

    ld e, b                                       ; $73ce: $58
    sub h                                         ; $73cf: $94
    ld l, c                                       ; $73d0: $69
    and b                                         ; $73d1: $a0
    ld e, e                                       ; $73d2: $5b
    cp b                                          ; $73d3: $b8
    ld b, c                                       ; $73d4: $41
    ld b, a                                       ; $73d5: $47
    ld d, b                                       ; $73d6: $50
    cpl                                           ; $73d7: $2f
    ld a, h                                       ; $73d8: $7c
    add e                                         ; $73d9: $83
    ld a, d                                       ; $73da: $7a
    add a                                         ; $73db: $87
    ld a, b                                       ; $73dc: $78
    ld b, $00                                     ; $73dd: $06 $00

jr_0a1_73df:
    ret nz                                        ; $73df: $c0

    ld d, b                                       ; $73e0: $50
    cpl                                           ; $73e1: $2f
    ld e, [hl]                                    ; $73e2: $5e
    nop                                           ; $73e3: $00
    ldh a, [rIF]                                  ; $73e4: $f0 $0f
    db $10                                        ; $73e6: $10
    rra                                           ; $73e7: $1f
    ldh [$b8], a                                  ; $73e8: $e0 $b8
    db $10                                        ; $73ea: $10
    ld b, e                                       ; $73eb: $43
    cp b                                          ; $73ec: $b8
    ld b, a                                       ; $73ed: $47
    inc b                                         ; $73ee: $04
    ld h, b                                       ; $73ef: $60
    ld b, [hl]                                    ; $73f0: $46
    sbc b                                         ; $73f1: $98
    ld h, c                                       ; $73f2: $61
    pop hl                                        ; $73f3: $e1
    ld b, e                                       ; $73f4: $43
    ld a, [de]                                    ; $73f5: $1a
    and $2f                                       ; $73f6: $e6 $2f
    inc bc                                        ; $73f8: $03
    inc h                                         ; $73f9: $24
    rlca                                          ; $73fa: $07
    jr jr_0a1_7453                                ; $73fb: $18 $56

    ld l, a                                       ; $73fd: $6f
    add sp, $07                                   ; $73fe: $e8 $07
    add b                                         ; $7400: $80
    ld [bc], a                                    ; $7401: $02

jr_0a1_7402:
    jr nc, jr_0a1_7402                            ; $7402: $30 $fe

    ld bc, $e11e                                  ; $7404: $01 $1e $e1
    xor $f1                                       ; $7407: $ee $f1
    ld d, $00                                     ; $7409: $16 $00
    ld hl, sp-$17                                 ; $740b: $f8 $e9
    db $fd                                        ; $740d: $fd
    ld a, [$e8fc]                                 ; $740e: $fa $fc $e8
    db $ec                                        ; $7411: $ec
    db $d3                                        ; $7412: $d3
    ld h, b                                       ; $7413: $60
    db $d3                                        ; $7414: $d3
    ld a, [de]                                    ; $7415: $1a
    jr c, jr_0a1_743c                             ; $7416: $38 $24

    jr @-$19                                      ; $7418: $18 $e5

    jp hl                                         ; $741a: $e9


    ld c, $10                                     ; $741b: $0e $10
    ld e, $00                                     ; $741d: $1e $00
    pop hl                                        ; $741f: $e1
    cp $01                                        ; $7420: $fe $01
    ld a, $c1                                     ; $7422: $3e $c1
    ld e, [hl]                                    ; $7424: $5e
    pop hl                                        ; $7425: $e1
    ld e, $f2                                     ; $7426: $1e $f2
    ld b, $00                                     ; $7428: $06 $00
    ld a, [hl-]                                   ; $742a: $3a
    nop                                           ; $742b: $00
    db $f4                                        ; $742c: $f4
    ld d, b                                       ; $742d: $50
    or b                                          ; $742e: $b0
    cpl                                           ; $742f: $2f
    db $fd                                        ; $7430: $fd
    ld [bc], a                                    ; $7431: $02
    cp d                                          ; $7432: $ba
    rrca                                          ; $7433: $0f
    ccf                                           ; $7434: $3f
    ld b, b                                       ; $7435: $40
    ret nz                                        ; $7436: $c0

    ld a, [hl-]                                   ; $7437: $3a
    dec c                                         ; $7438: $0d
    ld [$d415], a                                 ; $7439: $ea $15 $d4

jr_0a1_743c:
    dec hl                                        ; $743c: $2b
    ld a, [hl]                                    ; $743d: $7e
    add c                                         ; $743e: $81
    add b                                         ; $743f: $80
    ld b, h                                       ; $7440: $44
    dec e                                         ; $7441: $1d
    rst $10                                       ; $7442: $d7
    res 7, c                                      ; $7443: $cb $b9
    rst $18                                       ; $7445: $df
    ld [hl], h                                    ; $7446: $74
    rst $30                                       ; $7447: $f7
    db $db                                        ; $7448: $db
    nop                                           ; $7449: $00
    db $db                                        ; $744a: $db
    xor [hl]                                      ; $744b: $ae
    xor a                                         ; $744c: $af
    db $ed                                        ; $744d: $ed
    rst $28                                       ; $744e: $ef
    db $ec                                        ; $744f: $ec
    rst $28                                       ; $7450: $ef
    adc l                                         ; $7451: $8d
    nop                                           ; $7452: $00

jr_0a1_7453:
    adc a                                         ; $7453: $8f
    sbc h                                         ; $7454: $9c
    sbc l                                         ; $7455: $9d
    rst $38                                       ; $7456: $ff
    rst $38                                       ; $7457: $ff
    cp [hl]                                       ; $7458: $be
    cp a                                          ; $7459: $bf
    rst $18                                       ; $745a: $df
    nop                                           ; $745b: $00
    db $dd                                        ; $745c: $dd
    db $fc                                        ; $745d: $fc
    ei                                            ; $745e: $fb
    cp e                                          ; $745f: $bb
    push de                                       ; $7460: $d5
    ld b, h                                       ; $7461: $44
    rst $38                                       ; $7462: $ff
    sbc c                                         ; $7463: $99
    inc b                                         ; $7464: $04
    rst $30                                       ; $7465: $f7
    and a                                         ; $7466: $a7
    sub a                                         ; $7467: $97
    ld [hl], b                                    ; $7468: $70
    ld [$08e0], sp                                ; $7469: $08 $e0 $08
    ld [hl], b                                    ; $746c: $70
    adc a                                         ; $746d: $8f
    jr jr_0a1_74db                                ; $746e: $18 $6b

    sbc a                                         ; $7470: $9f
    ld h, b                                       ; $7471: $60
    ld b, $00                                     ; $7472: $06 $00
    cp $0f                                        ; $7474: $fe $0f
    ld hl, sp+$00                                 ; $7476: $f8 $00
    pop hl                                        ; $7478: $e1
    nop                                           ; $7479: $00
    rlca                                          ; $747a: $07
    adc d                                         ; $747b: $8a
    ld e, a                                       ; $747c: $5f
    inc d                                         ; $747d: $14
    cp a                                          ; $747e: $bf
    adc b                                         ; $747f: $88
    cp a                                          ; $7480: $bf
    add b                                         ; $7481: $80
    ld b, b                                       ; $7482: $40
    cp h                                          ; $7483: $bc
    ld [hl], b                                    ; $7484: $70
    add hl, hl                                    ; $7485: $29
    ld a, e                                       ; $7486: $7b
    add h                                         ; $7487: $84
    ld d, [hl]                                    ; $7488: $56
    xor c                                         ; $7489: $a9
    cpl                                           ; $748a: $2f
    ret nc                                        ; $748b: $d0

    inc e                                         ; $748c: $1c
    ld a, a                                       ; $748d: $7f
    add b                                         ; $748e: $80
    db $fd                                        ; $748f: $fd
    db $fc                                        ; $7490: $fc
    ld bc, $0004                                  ; $7491: $01 $04 $00
    xor d                                         ; $7494: $aa
    inc sp                                        ; $7495: $33
    nop                                           ; $7496: $00
    cp e                                          ; $7497: $bb
    nop                                           ; $7498: $00
    nop                                           ; $7499: $00
    sbc a                                         ; $749a: $9f
    add b                                         ; $749b: $80
    adc e                                         ; $749c: $8b
    add b                                         ; $749d: $80
    push bc                                       ; $749e: $c5
    ldh [$d0], a                                  ; $749f: $e0 $d0
    nop                                           ; $74a1: $00
    jr c, jr_0a1_7518                             ; $74a2: $38 $74

    rrca                                          ; $74a4: $0f
    sbc a                                         ; $74a5: $9f
    add b                                         ; $74a6: $80
    ld h, b                                       ; $74a7: $60
    ccf                                           ; $74a8: $3f
    ret nz                                        ; $74a9: $c0

    nop                                           ; $74aa: $00
    ld a, b                                       ; $74ab: $78
    add a                                         ; $74ac: $87
    ld [hl], a                                    ; $74ad: $77
    adc a                                         ; $74ae: $8f
    ld l, b                                       ; $74af: $68
    rra                                           ; $74b0: $1f
    rla                                           ; $74b1: $17
    cp a                                          ; $74b2: $bf
    ld [bc], a                                    ; $74b3: $02
    ld e, a                                       ; $74b4: $5f
    ccf                                           ; $74b5: $3f
    rra                                           ; $74b6: $1f
    scf                                           ; $74b7: $37
    rst $08                                       ; $74b8: $cf
    rr d                                          ; $74b9: $cb $1a
    inc e                                         ; $74bb: $1c
    pop de                                        ; $74bc: $d1
    nop                                           ; $74bd: $00
    ld l, [hl]                                    ; $74be: $6e
    xor $b9                                       ; $74bf: $ee $b9
    xor [hl]                                      ; $74c1: $ae
    rst $38                                       ; $74c2: $ff
    and c                                         ; $74c3: $a1
    rst $28                                       ; $74c4: $ef
    ld b, [hl]                                    ; $74c5: $46
    db $10                                        ; $74c6: $10
    rst $08                                       ; $74c7: $cf
    ldh [$1f], a                                  ; $74c8: $e0 $1f
    nop                                           ; $74ca: $00
    ld l, a                                       ; $74cb: $6f
    ld sp, hl                                     ; $74cc: $f9
    nop                                           ; $74cd: $00
    ld [hl], $00                                  ; $74ce: $36 $00
    nop                                           ; $74d0: $00
    ld bc, $86c8                                  ; $74d1: $01 $c8 $86
    ldh a, [$0e]                                  ; $74d4: $f0 $0e
    ldh [rNR11], a                                ; $74d6: $e0 $11
    ld bc, $0330                                  ; $74d8: $01 $30 $03

jr_0a1_74db:
    jp hl                                         ; $74db: $e9


    jr nz, @+$33                                  ; $74dc: $20 $31

    ld [hl], $15                                  ; $74de: $36 $15
    ld a, a                                       ; $74e0: $7f
    add b                                         ; $74e1: $80
    inc bc                                        ; $74e2: $03
    db $eb                                        ; $74e3: $eb
    nop                                           ; $74e4: $00
    inc bc                                        ; $74e5: $03
    rlc e                                         ; $74e6: $cb $03
    db $db                                        ; $74e8: $db
    ld [bc], a                                    ; $74e9: $02
    inc de                                        ; $74ea: $13
    dec b                                         ; $74eb: $05
    daa                                           ; $74ec: $27
    ld [bc], a                                    ; $74ed: $02
    inc b                                         ; $74ee: $04
    ld e, $f0                                     ; $74ef: $1e $f0
    ld sp, hl                                     ; $74f1: $f9
    ld bc, $3006                                  ; $74f2: $01 $06 $30
    ld hl, $00f9                                  ; $74f5: $21 $f9 $00
    ld [$f9fc], a                                 ; $74f8: $ea $fc $f9

Call_0a1_74fb:
    db $fd                                        ; $74fb: $fd
    ld hl, sp-$13                                 ; $74fc: $f8 $ed
    di                                            ; $74fe: $f3
    db $d3                                        ; $74ff: $d3
    add b                                         ; $7500: $80
    ret nz                                        ; $7501: $c0

    jr z, jr_0a1_7577                             ; $7502: $28 $73

    adc h                                         ; $7504: $8c
    ld l, b                                       ; $7505: $68
    sbc a                                         ; $7506: $9f
    ld h, e                                       ; $7507: $63
    add e                                         ; $7508: $83
    ld [hl], b                                    ; $7509: $70
    nop                                           ; $750a: $00
    adc h                                         ; $750b: $8c
    sub l                                         ; $750c: $95
    and d                                         ; $750d: $a2
    ld l, $5d                                     ; $750e: $2e $5d
    ld h, [hl]                                    ; $7510: $66
    adc a                                         ; $7511: $8f
    pop hl                                        ; $7512: $e1
    ld c, b                                       ; $7513: $48
    ld d, $92                                     ; $7514: $16 $92
    inc e                                         ; $7516: $1c
    ccf                                           ; $7517: $3f

jr_0a1_7518:
    ld b, b                                       ; $7518: $40
    ld c, h                                       ; $7519: $4c
    ld c, $fd                                     ; $751a: $0e $fd
    ld [bc], a                                    ; $751c: $02
    ld a, [$0500]                                 ; $751d: $fa $00 $05
    push af                                       ; $7520: $f5
    ld a, [bc]                                    ; $7521: $0a
    ld a, [c]                                     ; $7522: $f2
    add hl, bc                                    ; $7523: $09
    ld sp, hl                                     ; $7524: $f9
    dec b                                         ; $7525: $05
    ld a, [$0210]                                 ; $7526: $fa $10 $02
    ld a, h                                       ; $7529: $7c
    add e                                         ; $752a: $83
    ld b, d                                       ; $752b: $42
    jp z, Jump_000_03fc                           ; $752c: $ca $fc $03

    ld a, [$1007]                                 ; $752f: $fa $07 $10
    ld sp, hl                                     ; $7532: $f9
    inc bc                                        ; $7533: $03
    ei                                            ; $7534: $fb
    inc b                                         ; $7535: $04
    nop                                           ; $7536: $00
    ld sp, hl                                     ; $7537: $f9
    dec b                                         ; $7538: $05
    db $fc                                        ; $7539: $fc
    ld [bc], a                                    ; $753a: $02
    ret nz                                        ; $753b: $c0

    db $fc                                        ; $753c: $fc

Jump_0a1_753d:
    dec c                                         ; $753d: $0d
    sub [hl]                                      ; $753e: $96
    ld l, a                                       ; $753f: $6f
    rrca                                          ; $7540: $0f
    ldh a, [$f7]                                  ; $7541: $f0 $f7
    ld [$847b], sp                                ; $7543: $08 $7b $84
    nop                                           ; $7546: $00
    db $fd                                        ; $7547: $fd
    ld [bc], a                                    ; $7548: $02
    inc c                                         ; $7549: $0c
    di                                            ; $754a: $f3
    db $f4                                        ; $754b: $f4
    ei                                            ; $754c: $fb
    ld sp, hl                                     ; $754d: $f9
    ld a, [$f520]                                 ; $754e: $fa $20 $f5
    or $9e                                        ; $7551: $f6 $9e
    ld c, a                                       ; $7553: $4f
    ccf                                           ; $7554: $3f
    ret nz                                        ; $7555: $c0

    ccf                                           ; $7556: $3f
    ret nz                                        ; $7557: $c0

    inc b                                         ; $7558: $04
    nop                                           ; $7559: $00
    rrca                                          ; $755a: $0f
    ld hl, sp-$42                                 ; $755b: $f8 $be
    db $fd                                        ; $755d: $fd
    ld a, [hl]                                    ; $755e: $7e
    ld sp, hl                                     ; $755f: $f9
    inc a                                         ; $7560: $3c
    ld sp, hl                                     ; $7561: $f9
    rlca                                          ; $7562: $07
    ld a, d                                       ; $7563: $7a
    ld h, e                                       ; $7564: $63
    db $f4                                        ; $7565: $f4
    rlca                                          ; $7566: $07
    ld [$09ea], sp                                ; $7567: $08 $ea $09
    and d                                         ; $756a: $a2
    ld e, d                                       ; $756b: $5a
    add $3f                                       ; $756c: $c6 $3f
    nop                                           ; $756e: $00
    ld b, c                                       ; $756f: $41
    adc d                                         ; $7570: $8a
    sbc c                                         ; $7571: $99
    ld [hl+], a                                   ; $7572: $22
    ld a, c                                       ; $7573: $79
    ld [bc], a                                    ; $7574: $02
    rst $38                                       ; $7575: $ff
    rst $38                                       ; $7576: $ff

jr_0a1_7577:
    ld bc, $ff80                                  ; $7577: $01 $80 $ff
    jp $80fc                                      ; $757a: $c3 $fc $80


    rst $38                                       ; $757d: $ff
    ret nz                                        ; $757e: $c0

    ld [$0e00], sp                                ; $757f: $08 $00 $0e
    ret nz                                        ; $7582: $c0

    rst $38                                       ; $7583: $ff
    add e                                         ; $7584: $83
    db $fd                                        ; $7585: $fd
    xor a                                         ; $7586: $af
    rrca                                          ; $7587: $0f
    ld b, [hl]                                    ; $7588: $46
    rlca                                          ; $7589: $07
    rst $30                                       ; $758a: $f7
    daa                                           ; $758b: $27
    rst $38                                       ; $758c: $ff
    ld h, $ff                                     ; $758d: $26 $ff
    jp Jump_000_0171                              ; $758f: $c3 $71 $01


    jp Jump_0a1_753d                              ; $7592: $c3 $3d $75


    ld hl, $045a                                  ; $7595: $21 $5a $04
    rst $20                                       ; $7598: $e7
    db $10                                        ; $7599: $10
    ei                                            ; $759a: $fb
    rst $00                                       ; $759b: $c7
    ei                                            ; $759c: $fb
    inc b                                         ; $759d: $04
    ld c, b                                       ; $759e: $48
    db $f4                                        ; $759f: $f4
    dec bc                                        ; $75a0: $0b
    db $eb                                        ; $75a1: $eb
    rla                                           ; $75a2: $17
    nop                                           ; $75a3: $00
    push af                                       ; $75a4: $f5
    dec bc                                        ; $75a5: $0b
    ei                                            ; $75a6: $fb
    dec b                                         ; $75a7: $05
    db $f4                                        ; $75a8: $f4
    dec bc                                        ; $75a9: $0b
    ld l, l                                       ; $75aa: $6d
    sub e                                         ; $75ab: $93
    ld b, b                                       ; $75ac: $40
    add b                                         ; $75ad: $80
    ld l, l                                       ; $75ae: $6d
    nop                                           ; $75af: $00
    rst $38                                       ; $75b0: $ff
    nop                                           ; $75b1: $00
    pop af                                        ; $75b2: $f1
    ld c, $ee                                     ; $75b3: $0e $ee
    add hl, de                                    ; $75b5: $19
    nop                                           ; $75b6: $00
    xor $1f                                       ; $75b7: $ee $1f
    pop hl                                        ; $75b9: $e1
    rrca                                          ; $75ba: $0f
    and $0f                                       ; $75bb: $e6 $0f
    push af                                       ; $75bd: $f5
    ld [bc], a                                    ; $75be: $02
    nop                                           ; $75bf: $00
    xor $1d                                       ; $75c0: $ee $1d
    and c                                         ; $75c2: $a1
    ld a, [hl+]                                   ; $75c3: $2a
    or c                                          ; $75c4: $b1
    ld [hl-], a                                   ; $75c5: $32
    call z, $8019                                 ; $75c6: $cc $19 $80
    ld b, $3b                                     ; $75c9: $06 $3b
    and $0f                                       ; $75cb: $e6 $0f
    ld h, c                                       ; $75cd: $61
    sub [hl]                                      ; $75ce: $96
    cp a                                          ; $75cf: $bf
    ret nz                                        ; $75d0: $c0

    rst $18                                       ; $75d1: $df
    ld b, $60                                     ; $75d2: $06 $60
    rst $28                                       ; $75d4: $ef
    or b                                          ; $75d5: $b0
    xor a                                         ; $75d6: $af
    ldh a, [rP1]                                  ; $75d7: $f0 $00
    dec bc                                        ; $75d9: $0b
    ldh [rNR30], a                                ; $75da: $e0 $1a
    ld [hl], e                                    ; $75dc: $73
    nop                                           ; $75dd: $00
    adc a                                         ; $75de: $8f
    ld l, b                                       ; $75df: $68
    sbc h                                         ; $75e0: $9c
    ld h, b                                       ; $75e1: $60
    inc bc                                        ; $75e2: $03
    ld [hl], e                                    ; $75e3: $73
    adc h                                         ; $75e4: $8c
    ld a, a                                       ; $75e5: $7f
    ld [hl], b                                    ; $75e6: $70
    nop                                           ; $75e7: $00
    ldh [rNR30], a                                ; $75e8: $e0 $1a
    ld a, [hl-]                                   ; $75ea: $3a
    add hl, bc                                    ; $75eb: $09
    ld [$791e], sp                                ; $75ec: $08 $1e $79
    nop                                           ; $75ef: $00
    ld h, l                                       ; $75f0: $65
    inc d                                         ; $75f1: $14
    jr nc, jr_0a1_75f7                            ; $75f2: $30 $03

    ld c, b                                       ; $75f4: $48
    add $3a                                       ; $75f5: $c6 $3a

jr_0a1_75f7:
    sbc d                                         ; $75f7: $9a
    rrca                                          ; $75f8: $0f
    cp [hl]                                       ; $75f9: $be
    ld b, c                                       ; $75fa: $41
    sbc $21                                       ; $75fb: $de $21
    ld b, $f4                                     ; $75fd: $06 $f4
    dec bc                                        ; $75ff: $0b
    ld [$fc15], a                                 ; $7600: $ea $15 $fc
    ld b, $04                                     ; $7603: $06 $04
    and b                                         ; $7605: $a0
    ld a, [de]                                    ; $7606: $1a
    adc $00                                       ; $7607: $ce $00
    pop af                                        ; $7609: $f1
    ld d, $39                                     ; $760a: $16 $39
    ld b, $c0                                     ; $760c: $06 $c0
    adc $31                                       ; $760e: $ce $31
    cp $00                                        ; $7610: $fe $00
    nop                                           ; $7612: $00
    db $eb                                        ; $7613: $eb
    db $d3                                        ; $7614: $d3
    sbc l                                         ; $7615: $9d
    ei                                            ; $7616: $fb
    ld l, $ef                                     ; $7617: $2e $ef
    db $db                                        ; $7619: $db
    nop                                           ; $761a: $00
    db $db                                        ; $761b: $db
    ld [hl], l                                    ; $761c: $75
    push af                                       ; $761d: $f5
    or l                                          ; $761e: $b5
    push af                                       ; $761f: $f5
    daa                                           ; $7620: $27

jr_0a1_7621:
    rst $20                                       ; $7621: $e7
    and l                                         ; $7622: $a5
    nop                                           ; $7623: $00
    push hl                                       ; $7624: $e5
    ld [hl], d                                    ; $7625: $72
    ld a, [c]                                     ; $7626: $f2
    pop af                                        ; $7627: $f1
    pop af                                        ; $7628: $f1
    ld a, l                                       ; $7629: $7d
    db $fd                                        ; $762a: $fd
    cp e                                          ; $762b: $bb
    nop                                           ; $762c: $00
    ei                                            ; $762d: $fb
    rra                                           ; $762e: $1f
    rst $18                                       ; $762f: $df
    xor a                                         ; $7630: $af
    db $d3                                        ; $7631: $d3
    ld h, $db                                     ; $7632: $26 $db
    cp l                                          ; $7634: $bd
    nop                                           ; $7635: $00
    db $db                                        ; $7636: $db
    rst $38                                       ; $7637: $ff
    rst $18                                       ; $7638: $df
    cp l                                          ; $7639: $bd
    rst $38                                       ; $763a: $ff
    ld l, d                                       ; $763b: $6a
    db $eb                                        ; $763c: $eb
    ld [hl], l                                    ; $763d: $75
    nop                                           ; $763e: $00
    push af                                       ; $763f: $f5
    rst $10                                       ; $7640: $d7
    rst $10                                       ; $7641: $d7
    or a                                          ; $7642: $b7
    or a                                          ; $7643: $b7
    or $f7                                        ; $7644: $f6 $f7
    ld c, a                                       ; $7646: $4f
    nop                                           ; $7647: $00
    ld c, a                                       ; $7648: $4f
    rst $38                                       ; $7649: $ff
    rst $38                                       ; $764a: $ff
    or a                                          ; $764b: $b7
    rst $30                                       ; $764c: $f7
    ld e, e                                       ; $764d: $5b
    db $db                                        ; $764e: $db
    xor a                                         ; $764f: $af
    nop                                           ; $7650: $00
    xor a                                         ; $7651: $af
    db $eb                                        ; $7652: $eb
    db $eb                                        ; $7653: $eb
    db $ed                                        ; $7654: $ed
    db $ed                                        ; $7655: $ed
    ld h, a                                       ; $7656: $67
    rst $20                                       ; $7657: $e7
    pop af                                        ; $7658: $f1
    nop                                           ; $7659: $00
    pop af                                        ; $765a: $f1
    ld c, $0f                                     ; $765b: $0e $0f
    ld a, a                                       ; $765d: $7f
    ld a, a                                       ; $765e: $7f
    rst $28                                       ; $765f: $ef
    rst $28                                       ; $7660: $ef
    rst $38                                       ; $7661: $ff
    adc b                                         ; $7662: $88
    adc d                                         ; $7663: $8a
    inc b                                         ; $7664: $04
    xor a                                         ; $7665: $af
    db $d3                                        ; $7666: $d3
    ld h, [hl]                                    ; $7667: $66
    jr nc, jr_0a1_766a                            ; $7668: $30 $00

jr_0a1_766a:
    ld a, b                                       ; $766a: $78
    ld hl, sp-$01                                 ; $766b: $f8 $ff
    nop                                           ; $766d: $00
    rst $38                                       ; $766e: $ff
    ei                                            ; $766f: $fb
    ei                                            ; $7670: $fb
    rst $30                                       ; $7671: $f7
    rst $30                                       ; $7672: $f7
    ccf                                           ; $7673: $3f
    rst $38                                       ; $7674: $ff
    db $dd                                        ; $7675: $dd
    ld bc, $22ab                                  ; $7676: $01 $ab $22
    rst $38                                       ; $7679: $ff
    sbc c                                         ; $767a: $99
    rst $28                                       ; $767b: $ef
    ld a, a                                       ; $767c: $7f
    add b                                         ; $767d: $80
    ld h, b                                       ; $767e: $60
    ld [de], a                                    ; $767f: $12
    jr nz, jr_0a1_7621                            ; $7680: $20 $9f

    ld d, a                                       ; $7682: $57
    ld h, b                                       ; $7683: $60
    ld [bc], a                                    ; $7684: $02
    ld e, a                                       ; $7685: $5f
    scf                                           ; $7686: $37
    xor a                                         ; $7687: $af
    adc e                                         ; $7688: $8b
    daa                                           ; $7689: $27
    ld h, b                                       ; $768a: $60
    rla                                           ; $768b: $17
    and b                                         ; $768c: $a0
    ld e, e                                       ; $768d: $5b
    ld d, b                                       ; $768e: $50
    ld c, e                                       ; $768f: $4b
    ld hl, sp-$18                                 ; $7690: $f8 $e8
    ldh a, [$d2]                                  ; $7692: $f0 $d2
    and $00                                       ; $7694: $e6 $00
    rst $20                                       ; $7696: $e7
    ld a, [bc]                                    ; $7697: $0a
    inc de                                        ; $7698: $13
    inc e                                         ; $7699: $1c
    ldh [$fe], a                                  ; $769a: $e0 $fe
    ld bc, $0e0e                                  ; $769c: $01 $0e $0e
    pop af                                        ; $769f: $f1
    sub $f9                                       ; $76a0: $d6 $f9
    ld b, $06                                     ; $76a2: $06 $06
    nop                                           ; $76a4: $00
    jr nc, jr_0a1_76cf                            ; $76a5: $30 $28

    ldh a, [$2a]                                  ; $76a7: $f0 $2a
    and $10                                       ; $76a9: $e6 $10
    jp hl                                         ; $76ab: $e9


    ld c, $11                                     ; $76ac: $0e $11
    ld h, b                                       ; $76ae: $60
    dec bc                                        ; $76af: $0b
    adc $31                                       ; $76b0: $ce $31
    ld d, $f9                                     ; $76b2: $16 $f9
    nop                                           ; $76b4: $00
    add $c1                                       ; $76b5: $c6 $c1
    ld c, $31                                     ; $76b7: $0e $31
    add a                                         ; $76b9: $87
    ld a, b                                       ; $76ba: $78
    ld b, e                                       ; $76bb: $43
    adc h                                         ; $76bc: $8c
    nop                                           ; $76bd: $00
    ld e, c                                       ; $76be: $59
    db $e3                                        ; $76bf: $e3
    inc sp                                        ; $76c0: $33
    ldh [$e9], a                                  ; $76c1: $e0 $e9
    ld h, $df                                     ; $76c3: $26 $df
    inc a                                         ; $76c5: $3c
    nop                                           ; $76c6: $00
    push af                                       ; $76c7: $f5
    inc c                                         ; $76c8: $0c
    ld [hl], l                                    ; $76c9: $75
    call z, $acb1                                 ; $76ca: $cc $b1 $ac
    db $dd                                        ; $76cd: $dd
    sbc b                                         ; $76ce: $98

jr_0a1_76cf:
    nop                                           ; $76cf: $00
    ld [$e049], a                                 ; $76d0: $ea $49 $e0
    ld sp, $e117                                  ; $76d3: $31 $17 $e1
    ld l, a                                       ; $76d6: $6f
    and a                                         ; $76d7: $a7
    nop                                           ; $76d8: $00
    ld a, h                                       ; $76d9: $7c
    xor a                                         ; $76da: $af
    ld a, d                                       ; $76db: $7a
    cp l                                          ; $76dc: $bd
    jp $82fd                                      ; $76dd: $c3 $fd $82


    db $fd                                        ; $76e0: $fd
    add sp, -$50                                  ; $76e1: $e8 $b0
    add hl, sp                                    ; $76e3: $39
    db $eb                                        ; $76e4: $eb
    dec c                                         ; $76e5: $0d
    sub [hl]                                      ; $76e6: $96
    ld bc, $1501                                  ; $76e7: $01 $01 $15
    dec de                                        ; $76ea: $1b
    inc bc                                        ; $76eb: $03
    db $fd                                        ; $76ec: $fd
    add e                                         ; $76ed: $83
    ld [$a8fd], sp                                ; $76ee: $08 $fd $a8
    rst $38                                       ; $76f1: $ff
    ld b, b                                       ; $76f2: $40
    jp nc, Jump_000_0001                          ; $76f3: $d2 $01 $00

    rst $38                                       ; $76f6: $ff
    add e                                         ; $76f7: $83
    nop                                           ; $76f8: $00
    rst $38                                       ; $76f9: $ff
    dec b                                         ; $76fa: $05
    rst $38                                       ; $76fb: $ff
    adc e                                         ; $76fc: $8b

jr_0a1_76fd:
    rst $38                                       ; $76fd: $ff
    rlca                                          ; $76fe: $07
    rst $38                                       ; $76ff: $ff
    adc a                                         ; $7700: $8f
    jr z, @+$01                                   ; $7701: $28 $ff

    rla                                           ; $7703: $17
    inc b                                         ; $7704: $04
    nop                                           ; $7705: $00
    rra                                           ; $7706: $1f
    inc b                                         ; $7707: $04

jr_0a1_7708:
    jr nc, jr_0a1_7708                            ; $7708: $30 $fe

    ld bc, $9002                                  ; $770a: $01 $02 $90

jr_0a1_770d:
    ld b, e                                       ; $770d: $43
    dec b                                         ; $770e: $05
    ld [bc], a                                    ; $770f: $02
    db $fd                                        ; $7710: $fd
    call c, $aa09                                 ; $7711: $dc $09 $aa
    rst $38                                       ; $7714: $ff
    inc c                                         ; $7715: $0c
    rst $38                                       ; $7716: $ff
    ld [bc], a                                    ; $7717: $02
    ld sp, hl                                     ; $7718: $f9
    ld c, $1c                                     ; $7719: $0e $1c
    rst $28                                       ; $771b: $ef
    jr jr_0a1_770d                                ; $771c: $18 $ef

jr_0a1_771e:
    inc b                                         ; $771e: $04
    adc b                                         ; $771f: $88
    inc c                                         ; $7720: $0c
    xor l                                         ; $7721: $ad
    jr nz, jr_0a1_7724                            ; $7722: $20 $00

jr_0a1_7724:
    rst $38                                       ; $7724: $ff
    ld [de], a                                    ; $7725: $12
    ld [bc], a                                    ; $7726: $02
    jp $0056                                      ; $7727: $c3 $56 $00


    inc b                                         ; $772a: $04
    ld [$10c1], sp                                ; $772b: $08 $c1 $10
    db $10                                        ; $772e: $10
    ld [$f5ff], sp                                ; $772f: $08 $ff $f5
    rst $38                                       ; $7732: $ff
    xor b                                         ; $7733: $a8
    inc b                                         ; $7734: $04
    ld c, b                                       ; $7735: $48
    add a                                         ; $7736: $87
    ld c, b                                       ; $7737: $48
    rla                                           ; $7738: $17
    ld [hl-], a                                   ; $7739: $32
    ret z                                         ; $773a: $c8

    rrca                                          ; $773b: $0f
    or d                                          ; $773c: $b2
    ld b, l                                       ; $773d: $45
    db $ec                                        ; $773e: $ec
    ld [bc], a                                    ; $773f: $02
    inc b                                         ; $7740: $04
    ld hl, sp+$02                                 ; $7741: $f8 $02
    nop                                           ; $7743: $00
    ld sp, hl                                     ; $7744: $f9
    nop                                           ; $7745: $00
    inc b                                         ; $7746: $04
    ld [hl], l                                    ; $7747: $75
    adc b                                         ; $7748: $88
    xor e                                         ; $7749: $ab
    ret c                                         ; $774a: $d8

    ld e, e                                       ; $774b: $5b
    ld hl, sp+$42                                 ; $774c: $f8 $42
    nop                                           ; $774e: $00
    ld bc, $8c11                                  ; $774f: $01 $11 $8c
    nop                                           ; $7752: $00
    ld e, [hl]                                    ; $7753: $5e
    xor h                                         ; $7754: $ac
    inc de                                        ; $7755: $13
    stop                                          ; $7756: $10 $00
    ld a, a                                       ; $7758: $7f
    sub d                                         ; $7759: $92
    ccf                                           ; $775a: $3f
    dec a                                         ; $775b: $3d
    sbc [hl]                                      ; $775c: $9e
    adc d                                         ; $775d: $8a
    sbc h                                         ; $775e: $9c
    cp c                                          ; $775f: $b9
    nop                                           ; $7760: $00
    ld hl, sp+$68                                 ; $7761: $f8 $68
    ldh a, [$90]                                  ; $7763: $f0 $90
    ld h, b                                       ; $7765: $60
    ld h, [hl]                                    ; $7766: $66
    nop                                           ; $7767: $00
    ld [$0700], sp                                ; $7768: $08 $00 $07

jr_0a1_776b:
    ld b, a                                       ; $776b: $47
    jr c, jr_0a1_771e                             ; $776c: $38 $b0

    ld b, b                                       ; $776e: $40
    xor [hl]                                      ; $776f: $ae
    ld b, b                                       ; $7770: $40
    inc c                                         ; $7771: $0c
    nop                                           ; $7772: $00
    add b                                         ; $7773: $80
    adc h                                         ; $7774: $8c
    nop                                           ; $7775: $00
    ld hl, $9e1e                                  ; $7776: $21 $1e $9e
    ld h, c                                       ; $7779: $61
    ld h, e                                       ; $777a: $63
    jr nz, jr_0a1_76fd                            ; $777b: $20 $80

    ld b, $f6                                     ; $777d: $06 $f6
    rla                                           ; $777f: $17
    ccf                                           ; $7780: $3f
    ld b, b                                       ; $7781: $40
    ld e, a                                       ; $7782: $5f
    jr nz, jr_0a1_77b0                            ; $7783: $20 $2b

    nop                                           ; $7785: $00
    inc [hl]                                      ; $7786: $34
    or l                                          ; $7787: $b5
    ld a, [de]                                    ; $7788: $1a
    ld e, d                                       ; $7789: $5a
    adc a                                         ; $778a: $8f
    xor a                                         ; $778b: $af
    ld b, a                                       ; $778c: $47
    ld d, l                                       ; $778d: $55
    db $10                                        ; $778e: $10
    inc hl                                        ; $778f: $23
    db $eb                                        ; $7790: $eb
    db $10                                        ; $7791: $10
    sbc $0f                                       ; $7792: $de $0f
    ld a, d                                       ; $7794: $7a
    add l                                         ; $7795: $85
    inc h                                         ; $7796: $24
    ei                                            ; $7797: $fb
    ld b, b                                       ; $7798: $40
    db $d3                                        ; $7799: $d3
    inc e                                         ; $779a: $1c
    ld b, $be                                     ; $779b: $06 $be
    ld a, h                                       ; $779d: $7c
    cp b                                          ; $779e: $b8
    nop                                           ; $779f: $00
    ldh a, [$08]                                  ; $77a0: $f0 $08
    nop                                           ; $77a2: $00
    ldh a, [$08]                                  ; $77a3: $f0 $08
    xor d                                         ; $77a5: $aa
    ld d, c                                       ; $77a6: $51
    call nc, $45e3                                ; $77a7: $d4 $e3 $45
    add [hl]                                      ; $77aa: $86
    nop                                           ; $77ab: $00
    add h                                         ; $77ac: $84
    rlca                                          ; $77ad: $07
    inc c                                         ; $77ae: $0c
    daa                                           ; $77af: $27

jr_0a1_77b0:
    add [hl]                                      ; $77b0: $86
    ld d, e                                       ; $77b1: $53
    ld b, h                                       ; $77b2: $44
    inc bc                                        ; $77b3: $03
    nop                                           ; $77b4: $00
    and e                                         ; $77b5: $a3
    inc e                                         ; $77b6: $1c
    ld e, h                                       ; $77b7: $5c
    jr nz, jr_0a1_776b                            ; $77b8: $20 $b1

    ld b, b                                       ; $77ba: $40
    xor a                                         ; $77bb: $af
    ld b, b                                       ; $77bc: $40
    jr nz, jr_0a1_77de                            ; $77bd: $20 $1f

    and b                                         ; $77bf: $a0
    ld [bc], a                                    ; $77c0: $02
    ld [$eb13], sp                                ; $77c1: $08 $13 $eb
    db $ed                                        ; $77c4: $ed
    ld de, $0814                                  ; $77c5: $11 $14 $08
    ld [$04ea], sp                                ; $77c8: $08 $ea $04
    db $f4                                        ; $77cb: $f4
    rst $20                                       ; $77cc: $e7
    nop                                           ; $77cd: $00
    rst $38                                       ; $77ce: $ff
    ld [bc], a                                    ; $77cf: $02
    ld a, [$0600]                                 ; $77d0: $fa $00 $06
    cp a                                          ; $77d3: $bf
    jr nz, jr_0a1_77f5                            ; $77d4: $20 $1f

    jr nz, jr_0a1_7807                            ; $77d6: $20 $2f

    jr nc, @+$77                                  ; $77d8: $30 $75

    nop                                           ; $77da: $00
    ld a, [hl-]                                   ; $77db: $3a
    ld e, d                                       ; $77dc: $5a
    dec a                                         ; $77dd: $3d

jr_0a1_77de:
    ld l, h                                       ; $77de: $6c
    sbc a                                         ; $77df: $9f
    ld b, a                                       ; $77e0: $47
    inc bc                                        ; $77e1: $03
    jr nc, jr_0a1_77e4                            ; $77e2: $30 $00

jr_0a1_77e4:
    ret nz                                        ; $77e4: $c0

    cp $04                                        ; $77e5: $fe $04
    push af                                       ; $77e7: $f5
    inc c                                         ; $77e8: $0c
    db $eb                                        ; $77e9: $eb
    add hl, de                                    ; $77ea: $19
    reti                                          ; $77eb: $d9


    nop                                           ; $77ec: $00
    dec sp                                        ; $77ed: $3b
    or c                                          ; $77ee: $b1
    ld [hl], e                                    ; $77ef: $73
    db $e3                                        ; $77f0: $e3
    pop hl                                        ; $77f1: $e1
    adc l                                         ; $77f2: $8d
    pop bc                                        ; $77f3: $c1
    inc hl                                        ; $77f4: $23

jr_0a1_77f5:
    db $10                                        ; $77f5: $10
    inc e                                         ; $77f6: $1c
    ld a, [$d2fc]                                 ; $77f7: $fa $fc $d2
    ld c, [hl]                                    ; $77fa: $4e
    pop af                                        ; $77fb: $f1
    ld sp, hl                                     ; $77fc: $f9
    ld e, l                                       ; $77fd: $5d
    ld [hl+], a                                   ; $77fe: $22
    nop                                           ; $77ff: $00
    ld [hl-], a                                   ; $7800: $32
    ld b, c                                       ; $7801: $41
    sbc [hl]                                      ; $7802: $9e
    ld b, c                                       ; $7803: $41
    ld a, l                                       ; $7804: $7d
    add d                                         ; $7805: $82

Jump_0a1_7806:
    ld a, d                                       ; $7806: $7a

jr_0a1_7807:
    add l                                         ; $7807: $85
    nop                                           ; $7808: $00
    xor l                                         ; $7809: $ad
    ld e, d                                       ; $780a: $5a
    ld e, d                                       ; $780b: $5a
    or l                                          ; $780c: $b5
    cp b                                          ; $780d: $b8
    rst $28                                       ; $780e: $ef
    ld [hl], h                                    ; $780f: $74
    sbc e                                         ; $7810: $9b
    nop                                           ; $7811: $00
    ld l, c                                       ; $7812: $69
    or a                                          ; $7813: $b7
    ld l, l                                       ; $7814: $6d
    cp $c1                                        ; $7815: $fe $c1

Call_0a1_7817:
    cp $b6                                        ; $7817: $fe $b6
    ret                                           ; $7819: $c9


    nop                                           ; $781a: $00
    ld e, d                                       ; $781b: $5a
    add c                                         ; $781c: $81
    and [hl]                                      ; $781d: $a6
    pop de                                        ; $781e: $d1
    call Call_0a1_65f3                            ; $781f: $cd $f3 $65
    sbc [hl]                                      ; $7822: $9e
    nop                                           ; $7823: $00
    sbc d                                         ; $7824: $9a
    inc c                                         ; $7825: $0c
    ld [hl], l                                    ; $7826: $75
    adc [hl]                                      ; $7827: $8e
    adc c                                         ; $7828: $89
    di                                            ; $7829: $f3
    ld [hl], l                                    ; $782a: $75
    and d                                         ; $782b: $a2
    nop                                           ; $782c: $00
    cp [hl]                                       ; $782d: $be
    jr nz, @+$5b                                  ; $782e: $20 $59

    cp h                                          ; $7830: $bc
    or e                                          ; $7831: $b3
    call z, $c708                                 ; $7832: $cc $08 $c7
    nop                                           ; $7835: $00
    jp c, $f445                                   ; $7836: $da $45 $f4

    ld c, b                                       ; $7839: $48
    ld [hl], a                                    ; $783a: $77
    ld hl, sp-$76                                 ; $783b: $f8 $8a
    rst $00                                       ; $783d: $c7
    nop                                           ; $783e: $00
    sbc l                                         ; $783f: $9d
    ld b, e                                       ; $7840: $43
    ld a, b                                       ; $7841: $78
    add l                                         ; $7842: $85
    or e                                          ; $7843: $b3
    ld sp, hl                                     ; $7844: $f9
    ld b, [hl]                                    ; $7845: $46
    sbc c                                         ; $7846: $99
    nop                                           ; $7847: $00
    or a                                          ; $7848: $b7
    rra                                           ; $7849: $1f
    ld [$1711], a                                 ; $784a: $ea $11 $17
    pop hl                                        ; $784d: $e1
    call c, Call_000_01e3                         ; $784e: $dc $e3 $01
    ld a, [de]                                    ; $7851: $1a
    db $e4                                        ; $7852: $e4
    ld c, d                                       ; $7853: $4a
    sbc h                                         ; $7854: $9c
    cp l                                          ; $7855: $bd
    ld [de], a                                    ; $7856: $12
    sbc a                                         ; $7857: $9f
    ld a, h                                       ; $7858: $7c
    ld bc, $04e0                                  ; $7859: $01 $e0 $04
    ld e, b                                       ; $785c: $58
    ld [bc], a                                    ; $785d: $02
    ld [$3814], sp                                ; $785e: $08 $14 $38
    ld [c], a                                     ; $7861: $e2
    ld de, $a157                                  ; $7862: $11 $57 $a1
    call c, $e300                                 ; $7865: $dc $00 $e3
    db $fd                                        ; $7868: $fd
    ld [hl+], a                                   ; $7869: $22
    adc d                                         ; $786a: $8a
    ld a, h                                       ; $786b: $7c
    dec [hl]                                      ; $786c: $35
    call z, Call_000_00cb                         ; $786d: $cc $cb $00
    add h                                         ; $7870: $84
    cp h                                          ; $7871: $bc
    rst $00                                       ; $7872: $c7
    ld [bc], a                                    ; $7873: $02
    db $fd                                        ; $7874: $fd
    dec b                                         ; $7875: $05
    sbc b                                         ; $7876: $98
    rst $30                                       ; $7877: $f7
    nop                                           ; $7878: $00
    adc b                                         ; $7879: $88
    ld [hl], h                                    ; $787a: $74
    rst $08                                       ; $787b: $cf
    adc l                                         ; $787c: $8d

jr_0a1_787d:
    ld a, [hl]                                    ; $787d: $7e
    jp nc, $a924                                  ; $787e: $d2 $24 $a9

    nop                                           ; $7881: $00
    ld b, h                                       ; $7882: $44
    dec de                                        ; $7883: $1b
    db $e4                                        ; $7884: $e4
    ld l, c                                       ; $7885: $69
    or a                                          ; $7886: $b7
    or l                                          ; $7887: $b5
    jr jr_0a1_787d                                ; $7888: $18 $f3

    nop                                           ; $788a: $00
    jr jr_0a1_78e3                                ; $788b: $18 $56

    cp c                                          ; $788d: $b9
    sbc b                                         ; $788e: $98
    rst $20                                       ; $788f: $e7
    ld b, a                                       ; $7890: $47
    ld [c], a                                     ; $7891: $e2
    ld e, a                                       ; $7892: $5f
    nop                                           ; $7893: $00
    or d                                          ; $7894: $b2
    xor l                                         ; $7895: $ad
    ld e, $ea                                     ; $7896: $1e $ea
    rla                                           ; $7898: $17
    ld [hl], d                                    ; $7899: $72
    add c                                         ; $789a: $81
    xor [hl]                                      ; $789b: $ae
    nop                                           ; $789c: $00
    pop de                                        ; $789d: $d1
    ld c, h                                       ; $789e: $4c
    cp $51                                        ; $789f: $fe $51
    and d                                         ; $78a1: $a2
    ld e, l                                       ; $78a2: $5d
    ld [hl+], a                                   ; $78a3: $22
    db $ec                                        ; $78a4: $ec
    dec e                                         ; $78a5: $1d
    rra                                           ; $78a6: $1f
    ld d, e                                       ; $78a7: $53
    cp a                                          ; $78a8: $bf
    ld e, h                                       ; $78a9: $5c
    adc b                                         ; $78aa: $88
    ldh a, [$39]                                  ; $78ab: $f0 $39
    db $fc                                        ; $78ad: $fc
    add hl, bc                                    ; $78ae: $09
    rlca                                          ; $78af: $07
    ld [$5012], sp                                ; $78b0: $08 $12 $50
    adc d                                         ; $78b3: $8a
    db $10                                        ; $78b4: $10
    ld [bc], a                                    ; $78b5: $02
    add b                                         ; $78b6: $80
    db $ec                                        ; $78b7: $ec
    inc bc                                        ; $78b8: $03
    ld h, l                                       ; $78b9: $65
    di                                            ; $78ba: $f3
    inc e                                         ; $78bb: $1c
    di                                            ; $78bc: $f3
    nop                                           ; $78bd: $00
    ld e, c                                       ; $78be: $59
    sub a                                         ; $78bf: $97
    and h                                         ; $78c0: $a4
    add hl, de                                    ; $78c1: $19
    db $eb                                        ; $78c2: $eb
    ld de, $b16f                                  ; $78c3: $11 $6f $b1
    nop                                           ; $78c6: $00
    call z, Call_0a1_74fb                         ; $78c7: $cc $fb $74
    adc $89                                       ; $78ca: $ce $89
    call nz, $c43f                                ; $78cc: $c4 $3f $c4
    nop                                           ; $78cf: $00
    or h                                          ; $78d0: $b4
    rst $38                                       ; $78d1: $ff
    inc h                                         ; $78d2: $24
    sbc [hl]                                      ; $78d3: $9e
    and c                                         ; $78d4: $a1
    ld [de], a                                    ; $78d5: $12
    call nc, Call_000_0023                        ; $78d6: $d4 $23 $00
    cp [hl]                                       ; $78d9: $be
    ld h, e                                       ; $78da: $63
    ld c, l                                       ; $78db: $4d
    rst $38                                       ; $78dc: $ff
    ld b, [hl]                                    ; $78dd: $46
    sbc c                                         ; $78de: $99
    ld [c], a                                     ; $78df: $e2
    sub c                                         ; $78e0: $91
    nop                                           ; $78e1: $00
    ld l, [hl]                                    ; $78e2: $6e

jr_0a1_78e3:
    pop af                                        ; $78e3: $f1
    xor b                                         ; $78e4: $a8
    rst $18                                       ; $78e5: $df
    ld d, b                                       ; $78e6: $50
    adc a                                         ; $78e7: $8f
    inc hl                                        ; $78e8: $23
    sbc h                                         ; $78e9: $9c
    nop                                           ; $78ea: $00
    ld h, d                                       ; $78eb: $62
    sbc l                                         ; $78ec: $9d
    ld [$9ef7], sp                                ; $78ed: $08 $f7 $9e
    ld h, e                                       ; $78f0: $63
    sub e                                         ; $78f1: $93
    ld l, a                                       ; $78f2: $6f
    nop                                           ; $78f3: $00
    sub d                                         ; $78f4: $92
    ld l, a                                       ; $78f5: $6f
    jp z, $fe3f                                   ; $78f6: $ca $3f $fe

    rra                                           ; $78f9: $1f
    ld a, $d1                                     ; $78fa: $3e $d1
    nop                                           ; $78fc: $00
    cp b                                          ; $78fd: $b8
    ld h, a                                       ; $78fe: $67
    ld [hl], l                                    ; $78ff: $75
    rst $28                                       ; $7900: $ef
    ld a, d                                       ; $7901: $7a
    add l                                         ; $7902: $85
    sub c                                         ; $7903: $91
    rrca                                          ; $7904: $0f
    nop                                           ; $7905: $00
    ld hl, $c21f                                  ; $7906: $21 $1f $c2
    ccf                                           ; $7909: $3f
    and l                                         ; $790a: $a5
    ld e, a                                       ; $790b: $5f
    jp $00bf                                      ; $790c: $c3 $bf $00


    add l                                         ; $790f: $85
    rst $38                                       ; $7910: $ff
    ld c, e                                       ; $7911: $4b
    cp a                                          ; $7912: $bf
    add a                                         ; $7913: $87
    ld a, a                                       ; $7914: $7f
    adc e                                         ; $7915: $8b
    rst $38                                       ; $7916: $ff
    ld bc, $7f87                                  ; $7917: $01 $87 $7f
    rrca                                          ; $791a: $0f
    rst $38                                       ; $791b: $ff
    sub a                                         ; $791c: $97
    ld a, a                                       ; $791d: $7f
    adc a                                         ; $791e: $8f
    add sp, $00                                   ; $791f: $e8 $00
    nop                                           ; $7921: $00
    xor a                                         ; $7922: $af
    rst $38                                       ; $7923: $ff
    xor [hl]                                      ; $7924: $ae
    ld a, a                                       ; $7925: $7f
    ld a, [c]                                     ; $7926: $f2
    ld a, a                                       ; $7927: $7f
    ld b, l                                       ; $7928: $45
    rst $38                                       ; $7929: $ff
    nop                                           ; $792a: $00
    ld a, [bc]                                    ; $792b: $0a
    rst $38                                       ; $792c: $ff
    ld d, l                                       ; $792d: $55
    rst $38                                       ; $792e: $ff
    xor d                                         ; $792f: $aa
    ld a, a                                       ; $7930: $7f
    rst $10                                       ; $7931: $d7
    ld a, a                                       ; $7932: $7f
    nop                                           ; $7933: $00
    dec l                                         ; $7934: $2d
    cp h                                          ; $7935: $bc
    sbc d                                         ; $7936: $9a
    ld e, c                                       ; $7937: $59
    db $ed                                        ; $7938: $ed
    ld b, e                                       ; $7939: $43
    db $db                                        ; $793a: $db
    ld b, a                                       ; $793b: $47
    nop                                           ; $793c: $00
    ld d, l                                       ; $793d: $55
    rst $08                                       ; $793e: $cf
    ld e, a                                       ; $793f: $5f
    rr d                                          ; $7940: $cb $1a
    rst $00                                       ; $7942: $c7
    adc l                                         ; $7943: $8d
    ld b, a                                       ; $7944: $47
    nop                                           ; $7945: $00
    or [hl]                                       ; $7946: $b6
    ld c, a                                       ; $7947: $4f
    call $feff                                    ; $7948: $cd $ff $fe
    ld a, l                                       ; $794b: $7d
    dec a                                         ; $794c: $3d
    cp d                                          ; $794d: $ba
    nop                                           ; $794e: $00
    and [hl]                                      ; $794f: $a6
    reti                                          ; $7950: $d9


    db $db                                        ; $7951: $db
    ldh a, [$75]                                  ; $7952: $f0 $75
    ldh [$a8], a                                  ; $7954: $e0 $a8
    ld h, c                                       ; $7956: $61
    nop                                           ; $7957: $00
    ld d, b                                       ; $7958: $50
    db $e3                                        ; $7959: $e3
    ld h, e                                       ; $795a: $63
    rst $08                                       ; $795b: $cf
    ld a, d                                       ; $795c: $7a
    pop bc                                        ; $795d: $c1
    ld e, l                                       ; $795e: $5d
    db $e3                                        ; $795f: $e3
    nop                                           ; $7960: $00
    ld c, [hl]                                    ; $7961: $4e
    pop af                                        ; $7962: $f1
    ld h, d                                       ; $7963: $62
    db $fd                                        ; $7964: $fd
    ld a, c                                       ; $7965: $79
    cp a                                          ; $7966: $bf
    ld a, a                                       ; $7967: $7f
    sbc a                                         ; $7968: $9f
    nop                                           ; $7969: $00
    ld d, l                                       ; $796a: $55
    cp a                                          ; $796b: $bf
    rst $10                                       ; $796c: $d7
    jp $dba5                                      ; $796d: $c3 $a5 $db


    ld d, d                                       ; $7970: $52
    adc a                                         ; $7971: $8f
    nop                                           ; $7972: $00
    and l                                         ; $7973: $a5
    sbc e                                         ; $7974: $9b
    ld a, [bc]                                    ; $7975: $0a
    cp e                                          ; $7976: $bb
    push hl                                       ; $7977: $e5
    sbc e                                         ; $7978: $9b
    ld a, [de]                                    ; $7979: $1a
    xor e                                         ; $797a: $ab
    nop                                           ; $797b: $00
    jp hl                                         ; $797c: $e9


    adc e                                         ; $797d: $8b
    ld d, $ab                                     ; $797e: $16 $ab
    jp hl                                         ; $7980: $e9


    add e                                         ; $7981: $83
    ld [hl-], a                                   ; $7982: $32
    add e                                         ; $7983: $83
    ld [$a3d9], sp                                ; $7984: $08 $d9 $a3

jr_0a1_7987:
    ld h, $db                                     ; $7987: $26 $db
    add b                                         ; $7989: $80
    dec de                                        ; $798a: $1b
    nop                                           ; $798b: $00
    inc bc                                        ; $798c: $03
    nop                                           ; $798d: $00
    ld [bc], a                                    ; $798e: $02
    pop hl                                        ; $798f: $e1
    ldh [$f1], a                                  ; $7990: $e0 $f1
    db $10                                        ; $7992: $10
    ld sp, hl                                     ; $7993: $f9
    add sp, -$52                                  ; $7994: $e8 $ae
    ld bc, $00e8                                  ; $7996: $01 $e8 $00
    db $ed                                        ; $7999: $ed
    ret c                                         ; $799a: $d8

    pop de                                        ; $799b: $d1
    dec e                                         ; $799c: $1d
    jp z, $94ba                                   ; $799d: $ca $ba $94

    ld a, c                                       ; $79a0: $79
    jr z, jr_0a1_7987                             ; $79a1: $28 $e4

    ei                                            ; $79a3: $fb
    ld [hl+], a                                   ; $79a4: $22
    rlca                                          ; $79a5: $07
    add b                                         ; $79a6: $80
    cp b                                          ; $79a7: $b8
    rla                                           ; $79a8: $17
    ld [de], a                                    ; $79a9: $12
    nop                                           ; $79aa: $00
    nop                                           ; $79ab: $00
    jr jr_0a1_79ae                                ; $79ac: $18 $00

jr_0a1_79ae:
    ld bc, $001e                                  ; $79ae: $01 $1e $00
    ld [bc], a                                    ; $79b1: $02
    ld a, [hl+]                                   ; $79b2: $2a
    nop                                           ; $79b3: $00
    inc b                                         ; $79b4: $04
    ld b, d                                       ; $79b5: $42
    nop                                           ; $79b6: $00
    ld [$0042], sp                                ; $79b7: $08 $42 $00
    ld [$160a], sp                                ; $79ba: $08 $0a $16
    inc a                                         ; $79bd: $3c
    nop                                           ; $79be: $00
    ld h, b                                       ; $79bf: $60
    nop                                           ; $79c0: $00
    inc c                                         ; $79c1: $0c
    ld bc, $0068                                  ; $79c2: $01 $68 $00
    ld l, h                                       ; $79c5: $6c
    nop                                           ; $79c6: $00
    inc c                                         ; $79c7: $0c
    ld [bc], a                                    ; $79c8: $02
    sub [hl]                                      ; $79c9: $96
    nop                                           ; $79ca: $00
    ld l, h                                       ; $79cb: $6c
    nop                                           ; $79cc: $00
    rlca                                          ; $79cd: $07
    ld [bc], a                                    ; $79ce: $02
    xor b                                         ; $79cf: $a8
    nop                                           ; $79d0: $00
    sub $00                                       ; $79d1: $d6 $00
    inc c                                         ; $79d3: $0c
    inc b                                         ; $79d4: $04
    db $d3                                        ; $79d5: $d3
    nop                                           ; $79d6: $00
    xor l                                         ; $79d7: $ad
    nop                                           ; $79d8: $00
    inc c                                         ; $79d9: $0c
    inc bc                                        ; $79da: $03
    db $d3                                        ; $79db: $d3
    nop                                           ; $79dc: $00
    add l                                         ; $79dd: $85
    nop                                           ; $79de: $00
    rlca                                          ; $79df: $07
    nop                                           ; $79e0: $00
    ei                                            ; $79e1: $fb
    nop                                           ; $79e2: $00
    db $eb                                        ; $79e3: $eb
    nop                                           ; $79e4: $00
    ld [bc], a                                    ; $79e5: $02
    nop                                           ; $79e6: $00
    rst $38                                       ; $79e7: $ff
    nop                                           ; $79e8: $00
    jr nz, jr_0a1_79ec                            ; $79e9: $20 $01

    rst $38                                       ; $79eb: $ff

jr_0a1_79ec:
    rst $38                                       ; $79ec: $ff
    rst $38                                       ; $79ed: $ff
    rst $38                                       ; $79ee: $ff
    rst $38                                       ; $79ef: $ff
    rst $38                                       ; $79f0: $ff
    ld [de], a                                    ; $79f1: $12
    nop                                           ; $79f2: $00
    nop                                           ; $79f3: $00
    ld [de], a                                    ; $79f4: $12
    nop                                           ; $79f5: $00
    nop                                           ; $79f6: $00
    ld [de], a                                    ; $79f7: $12
    nop                                           ; $79f8: $00
    nop                                           ; $79f9: $00
    inc h                                         ; $79fa: $24
    nop                                           ; $79fb: $00
    inc bc                                        ; $79fc: $03
    ld b, d                                       ; $79fd: $42
    nop                                           ; $79fe: $00
    ld [$0048], sp                                ; $79ff: $08 $48 $00
    add hl, bc                                    ; $7a02: $09
    rlca                                          ; $7a03: $07
    nop                                           ; $7a04: $00
    cp [hl]                                       ; $7a05: $be
    nop                                           ; $7a06: $00
    ld e, [hl]                                    ; $7a07: $5e
    nop                                           ; $7a08: $00
    inc c                                         ; $7a09: $0c
    dec b                                         ; $7a0a: $05
    cp [hl]                                       ; $7a0b: $be
    nop                                           ; $7a0c: $00
    sbc $00                                       ; $7a0d: $de $00
    inc c                                         ; $7a0f: $0c
    dec b                                         ; $7a10: $05
    cp [hl]                                       ; $7a11: $be
    nop                                           ; $7a12: $00
    reti                                          ; $7a13: $d9


    nop                                           ; $7a14: $00
    inc c                                         ; $7a15: $0c
    ld b, $ce                                     ; $7a16: $06 $ce
    nop                                           ; $7a18: $00
    ld hl, sp+$00                                 ; $7a19: $f8 $00
    inc c                                         ; $7a1b: $0c
    inc b                                         ; $7a1c: $04
    db $d3                                        ; $7a1d: $d3
    nop                                           ; $7a1e: $00
    ret c                                         ; $7a1f: $d8

    nop                                           ; $7a20: $00
    inc c                                         ; $7a21: $0c
    inc b                                         ; $7a22: $04
    db $d3                                        ; $7a23: $d3
    nop                                           ; $7a24: $00
    jp nc, $0c00                                  ; $7a25: $d2 $00 $0c

    ld b, $d4                                     ; $7a28: $06 $d4
    nop                                           ; $7a2a: $00
    ld hl, sp+$00                                 ; $7a2b: $f8 $00
    ld a, [bc]                                    ; $7a2d: $0a
    ld [$00f5], sp                                ; $7a2e: $08 $f5 $00
    ret nc                                        ; $7a31: $d0

    nop                                           ; $7a32: $00
    ld [bc], a                                    ; $7a33: $02
    nop                                           ; $7a34: $00
    dec l                                         ; $7a35: $2d
    ld bc, $00df                                  ; $7a36: $01 $df $00
    rst $38                                       ; $7a39: $ff
    rst $38                                       ; $7a3a: $ff
    rst $38                                       ; $7a3b: $ff
    rst $38                                       ; $7a3c: $ff
    rst $38                                       ; $7a3d: $ff
    rst $38                                       ; $7a3e: $ff
    jr jr_0a1_7a41                                ; $7a3f: $18 $00

jr_0a1_7a41:
    nop                                           ; $7a41: $00
    inc h                                         ; $7a42: $24
    nop                                           ; $7a43: $00
    ld [bc], a                                    ; $7a44: $02
    jr nc, jr_0a1_7a47                            ; $7a45: $30 $00

jr_0a1_7a47:
    inc b                                         ; $7a47: $04
    ld [hl], $00                                  ; $7a48: $36 $00
    dec b                                         ; $7a4a: $05
    ld [hl], $00                                  ; $7a4b: $36 $00
    dec b                                         ; $7a4d: $05
    ld [hl], $00                                  ; $7a4e: $36 $00
    dec b                                         ; $7a50: $05
    inc a                                         ; $7a51: $3c
    nop                                           ; $7a52: $00
    ld b, $48                                     ; $7a53: $06 $48
    nop                                           ; $7a55: $00
    ld [$010b], sp                                ; $7a56: $08 $0b $01
    dec sp                                        ; $7a59: $3b
    nop                                           ; $7a5a: $00
    dec [hl]                                      ; $7a5b: $35
    nop                                           ; $7a5c: $00
    ld [bc], a                                    ; $7a5d: $02
    ld bc, $003f                                  ; $7a5e: $01 $3f $00
    rra                                           ; $7a61: $1f
    nop                                           ; $7a62: $00
    dec bc                                        ; $7a63: $0b
    ld bc, $0053                                  ; $7a64: $01 $53 $00
    ld b, c                                       ; $7a67: $41
    nop                                           ; $7a68: $00
    dec bc                                        ; $7a69: $0b
    ld bc, $0064                                  ; $7a6a: $01 $64 $00
    cpl                                           ; $7a6d: $2f
    nop                                           ; $7a6e: $00
    rlca                                          ; $7a6f: $07
    ld [bc], a                                    ; $7a70: $02
    adc a                                         ; $7a71: $8f
    nop                                           ; $7a72: $00
    ld sp, $0700                                  ; $7a73: $31 $00 $07
    nop                                           ; $7a76: $00
    ld b, e                                       ; $7a77: $43
    ld bc, $007d                                  ; $7a78: $01 $7d $00
    ld [bc], a                                    ; $7a7b: $02
    nop                                           ; $7a7c: $00
    sub b                                         ; $7a7d: $90
    ld bc, $001f                                  ; $7a7e: $01 $1f $00
    dec bc                                        ; $7a81: $0b
    nop                                           ; $7a82: $00
    xor b                                         ; $7a83: $a8
    ld bc, $0037                                  ; $7a84: $01 $37 $00
    rst $38                                       ; $7a87: $ff
    rst $38                                       ; $7a88: $ff
    rst $38                                       ; $7a89: $ff
    rst $38                                       ; $7a8a: $ff
    rst $38                                       ; $7a8b: $ff
    rst $38                                       ; $7a8c: $ff
    ld hl, $0000                                  ; $7a8d: $21 $00 $00
    add hl, sp                                    ; $7a90: $39
    nop                                           ; $7a91: $00
    inc b                                         ; $7a92: $04
    ld c, e                                       ; $7a93: $4b
    nop                                           ; $7a94: $00
    rlca                                          ; $7a95: $07
    ld d, a                                       ; $7a96: $57
    nop                                           ; $7a97: $00
    add hl, bc                                    ; $7a98: $09
    ld l, c                                       ; $7a99: $69
    nop                                           ; $7a9a: $00
    inc c                                         ; $7a9b: $0c
    ld [hl], l                                    ; $7a9c: $75
    nop                                           ; $7a9d: $00
    ld c, $7b                                     ; $7a9e: $0e $7b
    nop                                           ; $7aa0: $00
    rrca                                          ; $7aa1: $0f
    sub e                                         ; $7aa2: $93
    nop                                           ; $7aa3: $00
    inc de                                        ; $7aa4: $13
    sbc a                                         ; $7aa5: $9f
    nop                                           ; $7aa6: $00
    dec d                                         ; $7aa7: $15
    and l                                         ; $7aa8: $a5
    nop                                           ; $7aa9: $00
    ld d, $bd                                     ; $7aaa: $16 $bd
    nop                                           ; $7aac: $00
    ld a, [de]                                    ; $7aad: $1a
    ld [bc], a                                    ; $7aae: $02
    nop                                           ; $7aaf: $00
    cpl                                           ; $7ab0: $2f
    nop                                           ; $7ab1: $00
    ld de, $0c03                                  ; $7ab2: $11 $03 $0c
    ld [$003a], sp                                ; $7ab5: $08 $3a $00
    ldh [rP1], a                                  ; $7ab8: $e0 $00
    inc c                                         ; $7aba: $0c
    dec b                                         ; $7abb: $05
    ld a, [hl-]                                   ; $7abc: $3a
    nop                                           ; $7abd: $00
    xor d                                         ; $7abe: $aa
    ld bc, $0004                                  ; $7abf: $01 $04 $00
    dec sp                                        ; $7ac2: $3b
    nop                                           ; $7ac3: $00
    ld [hl-], a                                   ; $7ac4: $32
    ld [bc], a                                    ; $7ac5: $02
    inc c                                         ; $7ac6: $0c
    inc bc                                        ; $7ac7: $03
    ld e, d                                       ; $7ac8: $5a
    nop                                           ; $7ac9: $00
    ld c, d                                       ; $7aca: $4a
    ld [bc], a                                    ; $7acb: $02
    inc b                                         ; $7acc: $04
    nop                                           ; $7acd: $00
    ld e, e                                       ; $7ace: $5b
    nop                                           ; $7acf: $00
    jp z, Jump_000_0400                           ; $7ad0: $ca $00 $04

    nop                                           ; $7ad3: $00
    ld h, e                                       ; $7ad4: $63
    nop                                           ; $7ad5: $00
    sub d                                         ; $7ad6: $92
    ld bc, $0c71                                  ; $7ad7: $01 $71 $0c
    adc a                                         ; $7ada: $8f
    nop                                           ; $7adb: $00
    sbc [hl]                                      ; $7adc: $9e
    nop                                           ; $7add: $00
    inc c                                         ; $7ade: $0c
    ld a, [bc]                                    ; $7adf: $0a
    cp d                                          ; $7ae0: $ba
    nop                                           ; $7ae1: $00
    ld c, d                                       ; $7ae2: $4a
    nop                                           ; $7ae3: $00
    inc b                                         ; $7ae4: $04
    nop                                           ; $7ae5: $00
    db $d3                                        ; $7ae6: $d3
    nop                                           ; $7ae7: $00
    jp z, Jump_000_0400                           ; $7ae8: $ca $00 $04

    nop                                           ; $7aeb: $00
    db $db                                        ; $7aec: $db
    nop                                           ; $7aed: $00
    ld [hl-], a                                   ; $7aee: $32
    nop                                           ; $7aef: $00
    rlca                                          ; $7af0: $07
    ld bc, $00e3                                  ; $7af1: $01 $e3 $00
    sbc $01                                       ; $7af4: $de $01
    inc c                                         ; $7af6: $0c
    ld b, $32                                     ; $7af7: $06 $32
    ld bc, $015a                                  ; $7af9: $01 $5a $01
    inc c                                         ; $7afc: $0c
    ld [bc], a                                    ; $7afd: $02
    ld a, [hl-]                                   ; $7afe: $3a
    ld bc, $02ba                                  ; $7aff: $01 $ba $02
    inc b                                         ; $7b02: $04
    nop                                           ; $7b03: $00
    ld e, e                                       ; $7b04: $5b
    ld bc, $02a2                                  ; $7b05: $01 $a2 $02
    inc c                                         ; $7b08: $0c
    dec bc                                        ; $7b09: $0b
    adc d                                         ; $7b0a: $8a
    ld bc, $0049                                  ; $7b0b: $01 $49 $00
    dec bc                                        ; $7b0e: $0b
    ld bc, $018a                                  ; $7b0f: $01 $8a $01
    ld h, l                                       ; $7b12: $65
    nop                                           ; $7b13: $00
    inc b                                         ; $7b14: $04
    nop                                           ; $7b15: $00
    sbc e                                         ; $7b16: $9b
    ld bc, $0142                                  ; $7b17: $01 $42 $01
    inc c                                         ; $7b1a: $0c
    add hl, bc                                    ; $7b1b: $09
    or d                                          ; $7b1c: $b2
    ld bc, $00da                                  ; $7b1d: $01 $da $00
    inc b                                         ; $7b20: $04
    nop                                           ; $7b21: $00
    db $d3                                        ; $7b22: $d3
    ld bc, $00c2                                  ; $7b23: $01 $c2 $00
    ld [hl], c                                    ; $7b26: $71
    inc c                                         ; $7b27: $0c
    rst $38                                       ; $7b28: $ff
    ld bc, $00a0                                  ; $7b29: $01 $a0 $00
    inc b                                         ; $7b2c: $04
    nop                                           ; $7b2d: $00
    inc hl                                        ; $7b2e: $23
    ld [bc], a                                    ; $7b2f: $02
    ld [hl-], a                                   ; $7b30: $32
    nop                                           ; $7b31: $00
    inc c                                         ; $7b32: $0c
    dec bc                                        ; $7b33: $0b
    ld c, d                                       ; $7b34: $4a
    ld [bc], a                                    ; $7b35: $02
    ld c, b                                       ; $7b36: $48
    nop                                           ; $7b37: $00
    inc c                                         ; $7b38: $0c
    rlca                                          ; $7b39: $07
    ld d, d                                       ; $7b3a: $52
    ld [bc], a                                    ; $7b3b: $02
    ld e, d                                       ; $7b3c: $5a
    ld bc, $0007                                  ; $7b3d: $01 $07 $00
    ld d, h                                       ; $7b40: $54
    ld [bc], a                                    ; $7b41: $02
    ld d, l                                       ; $7b42: $55
    ld [bc], a                                    ; $7b43: $02
    inc c                                         ; $7b44: $0c
    inc b                                         ; $7b45: $04
    ld a, d                                       ; $7b46: $7a
    ld [bc], a                                    ; $7b47: $02
    ld e, d                                       ; $7b48: $5a
    ld [bc], a                                    ; $7b49: $02
    rst $38                                       ; $7b4a: $ff
    rst $38                                       ; $7b4b: $ff
    rst $38                                       ; $7b4c: $ff
    rst $38                                       ; $7b4d: $ff
    rst $38                                       ; $7b4e: $ff
    rst $38                                       ; $7b4f: $ff
    rrca                                          ; $7b50: $0f
    nop                                           ; $7b51: $00
    nop                                           ; $7b52: $00
    daa                                           ; $7b53: $27
    nop                                           ; $7b54: $00
    inc b                                         ; $7b55: $04
    daa                                           ; $7b56: $27
    nop                                           ; $7b57: $00
    inc b                                         ; $7b58: $04
    dec l                                         ; $7b59: $2d
    nop                                           ; $7b5a: $00
    dec b                                         ; $7b5b: $05
    ld c, e                                       ; $7b5c: $4b
    nop                                           ; $7b5d: $00
    ld a, [bc]                                    ; $7b5e: $0a
    rlca                                          ; $7b5f: $07
    nop                                           ; $7b60: $00
    rra                                           ; $7b61: $1f
    nop                                           ; $7b62: $00
    ld l, h                                       ; $7b63: $6c
    ld bc, $0206                                  ; $7b64: $01 $06 $02
    dec l                                         ; $7b67: $2d
    nop                                           ; $7b68: $00
    cp c                                          ; $7b69: $b9
    nop                                           ; $7b6a: $00
    ld b, $03                                     ; $7b6b: $06 $03
    ld l, $00                                     ; $7b6d: $2e $00
    add d                                         ; $7b6f: $82
    nop                                           ; $7b70: $00
    ld b, $04                                     ; $7b71: $06 $04
    dec a                                         ; $7b73: $3d
    nop                                           ; $7b74: $00
    ld c, e                                       ; $7b75: $4b
    ld bc, $0006                                  ; $7b76: $01 $06 $00
    add a                                         ; $7b79: $87
    nop                                           ; $7b7a: $00
    or a                                          ; $7b7b: $b7
    nop                                           ; $7b7c: $00
    inc c                                         ; $7b7d: $0c
    nop                                           ; $7b7e: $00
    rst $00                                       ; $7b7f: $c7
    nop                                           ; $7b80: $00
    ld a, a                                       ; $7b81: $7f
    nop                                           ; $7b82: $00
    rlca                                          ; $7b83: $07
    ld [bc], a                                    ; $7b84: $02
    pop hl                                        ; $7b85: $e1
    nop                                           ; $7b86: $00
    ld l, h                                       ; $7b87: $6c
    ld bc, $0506                                  ; $7b88: $01 $06 $05
    db $ed                                        ; $7b8b: $ed
    nop                                           ; $7b8c: $00
    adc e                                         ; $7b8d: $8b
    nop                                           ; $7b8e: $00
    ld b, $01                                     ; $7b8f: $06 $01
    or $00                                        ; $7b91: $f6 $00
    ld b, d                                       ; $7b93: $42
    ld bc, $090c                                  ; $7b94: $01 $0c $09
    ld a, [$9600]                                 ; $7b97: $fa $00 $96
    nop                                           ; $7b9a: $00
    dec bc                                        ; $7b9b: $0b
    ld [$010b], sp                                ; $7b9c: $08 $0b $01
    dec a                                         ; $7b9f: $3d
    nop                                           ; $7ba0: $00
    rst $38                                       ; $7ba1: $ff
    rst $38                                       ; $7ba2: $ff
    rst $38                                       ; $7ba3: $ff
    rst $38                                       ; $7ba4: $ff
    rst $38                                       ; $7ba5: $ff
    rst $38                                       ; $7ba6: $ff
    rrca                                          ; $7ba7: $0f
    nop                                           ; $7ba8: $00
    nop                                           ; $7ba9: $00
    dec d                                         ; $7baa: $15
    nop                                           ; $7bab: $00
    ld bc, $0021                                  ; $7bac: $01 $21 $00
    inc bc                                        ; $7baf: $03
    ld hl, $0300                                  ; $7bb0: $21 $00 $03
    daa                                           ; $7bb3: $27
    nop                                           ; $7bb4: $00
    inc b                                         ; $7bb5: $04
    rlca                                          ; $7bb6: $07
    ld [bc], a                                    ; $7bb7: $02
    add hl, hl                                    ; $7bb8: $29
    nop                                           ; $7bb9: $00
    db $ec                                        ; $7bba: $ec
    nop                                           ; $7bbb: $00
    ld [bc], a                                    ; $7bbc: $02
    nop                                           ; $7bbd: $00
    ld h, c                                       ; $7bbe: $61
    nop                                           ; $7bbf: $00
    ld b, [hl]                                    ; $7bc0: $46
    ld bc, $010c                                  ; $7bc1: $01 $0c $01
    ld h, d                                       ; $7bc4: $62
    nop                                           ; $7bc5: $00
    db $d3                                        ; $7bc6: $d3
    nop                                           ; $7bc7: $00
    ld a, [bc]                                    ; $7bc8: $0a
    ld bc, $00d9                                  ; $7bc9: $01 $d9 $00
    inc b                                         ; $7bcc: $04
    ld bc, $000b                                  ; $7bcd: $01 $0b $00
    ld [$9401], sp                                ; $7bd0: $08 $01 $94
    nop                                           ; $7bd3: $00
    rlca                                          ; $7bd4: $07
    nop                                           ; $7bd5: $00
    inc e                                         ; $7bd6: $1c
    ld bc, $00ea                                  ; $7bd7: $01 $ea $00
    rst $38                                       ; $7bda: $ff
    rst $38                                       ; $7bdb: $ff
    rst $38                                       ; $7bdc: $ff
    rst $38                                       ; $7bdd: $ff
    rst $38                                       ; $7bde: $ff
    rst $38                                       ; $7bdf: $ff
    rrca                                          ; $7be0: $0f
    nop                                           ; $7be1: $00
    nop                                           ; $7be2: $00
    ld c, e                                       ; $7be3: $4b
    nop                                           ; $7be4: $00
    ld a, [bc]                                    ; $7be5: $0a
    ld l, c                                       ; $7be6: $69
    nop                                           ; $7be7: $00
    rrca                                          ; $7be8: $0f
    add a                                         ; $7be9: $87
    nop                                           ; $7bea: $00
    inc d                                         ; $7beb: $14
    pop hl                                        ; $7bec: $e1
    nop                                           ; $7bed: $00
    inc hl                                        ; $7bee: $23
    ld [bc], a                                    ; $7bef: $02
    inc b                                         ; $7bf0: $04
    rrca                                          ; $7bf1: $0f
    nop                                           ; $7bf2: $00
    rst $08                                       ; $7bf3: $cf
    nop                                           ; $7bf4: $00
    ld [bc], a                                    ; $7bf5: $02
    dec b                                         ; $7bf6: $05
    rrca                                          ; $7bf7: $0f
    nop                                           ; $7bf8: $00
    ld a, a                                       ; $7bf9: $7f
    ld bc, $0302                                  ; $7bfa: $01 $02 $03
    stop                                          ; $7bfd: $10 $00
    ld h, [hl]                                    ; $7bff: $66
    nop                                           ; $7c00: $00
    dec bc                                        ; $7c01: $0b
    dec bc                                        ; $7c02: $0b
    dec l                                         ; $7c03: $2d
    nop                                           ; $7c04: $00
    ld a, $00                                     ; $7c05: $3e $00
    inc bc                                        ; $7c07: $03
    ld [bc], a                                    ; $7c08: $02
    cpl                                           ; $7c09: $2f
    nop                                           ; $7c0a: $00
    or c                                          ; $7c0b: $b1
    ld bc, $0103                                  ; $7c0c: $01 $03 $01
    jr nc, jr_0a1_7c11                            ; $7c0f: $30 $00

jr_0a1_7c11:
    ld l, [hl]                                    ; $7c11: $6e
    ld bc, $0002                                  ; $7c12: $01 $02 $00
    jr nc, jr_0a1_7c17                            ; $7c15: $30 $00

jr_0a1_7c17:
    ld hl, $0c00                                  ; $7c17: $21 $00 $0c
    ld b, $38                                     ; $7c1a: $06 $38
    nop                                           ; $7c1c: $00
    ld h, e                                       ; $7c1d: $63
    ld bc, $0107                                  ; $7c1e: $01 $07 $01
    dec sp                                        ; $7c21: $3b
    nop                                           ; $7c22: $00
    and e                                         ; $7c23: $a3
    ld bc, $020c                                  ; $7c24: $01 $0c $02
    ld a, $00                                     ; $7c27: $3e $00
    call nz, Call_000_0b00                        ; $7c29: $c4 $00 $0b
    dec bc                                        ; $7c2c: $0b
    ld c, h                                       ; $7c2d: $4c
    nop                                           ; $7c2e: $00
    ld a, $00                                     ; $7c2f: $3e $00
    ld [bc], a                                    ; $7c31: $02
    ld bc, $006b                                  ; $7c32: $01 $6b $00
    ld c, $00                                     ; $7c35: $0e $00
    ld [bc], a                                    ; $7c37: $02
    rlca                                          ; $7c38: $07
    ld [hl], b                                    ; $7c39: $70
    nop                                           ; $7c3a: $00
    pop hl                                        ; $7c3b: $e1
    ld bc, $0e0b                                  ; $7c3c: $01 $0b $0e
    ld [hl], b                                    ; $7c3f: $70
    nop                                           ; $7c40: $00
    pop de                                        ; $7c41: $d1
    ld bc, $0a0b                                  ; $7c42: $01 $0b $0a
    ld a, d                                       ; $7c45: $7a
    nop                                           ; $7c46: $00
    dec h                                         ; $7c47: $25
    nop                                           ; $7c48: $00
    dec bc                                        ; $7c49: $0b
    ld c, $82                                     ; $7c4a: $0e $82
    nop                                           ; $7c4c: $00
    add $01                                       ; $7c4d: $c6 $01
    dec bc                                        ; $7c4f: $0b
    ld a, [bc]                                    ; $7c50: $0a
    adc [hl]                                      ; $7c51: $8e
    nop                                           ; $7c52: $00
    dec h                                         ; $7c53: $25
    nop                                           ; $7c54: $00
    dec bc                                        ; $7c55: $0b
    ld c, $9c                                     ; $7c56: $0e $9c
    nop                                           ; $7c58: $00
    push bc                                       ; $7c59: $c5
    ld bc, $0a0b                                  ; $7c5a: $01 $0b $0a
    and e                                         ; $7c5d: $a3
    nop                                           ; $7c5e: $00
    dec h                                         ; $7c5f: $25
    nop                                           ; $7c60: $00
    dec bc                                        ; $7c61: $0b
    ld c, $ab                                     ; $7c62: $0e $ab
    nop                                           ; $7c64: $00
    jp nc, Jump_000_0c01                          ; $7c65: $d2 $01 $0c

    inc b                                         ; $7c68: $04
    ret nz                                        ; $7c69: $c0

    nop                                           ; $7c6a: $00
    and [hl]                                      ; $7c6b: $a6
    nop                                           ; $7c6c: $00
    dec bc                                        ; $7c6d: $0b
    nop                                           ; $7c6e: $00
    rst $08                                       ; $7c6f: $cf
    nop                                           ; $7c70: $00
    ld e, a                                       ; $7c71: $5f
    nop                                           ; $7c72: $00
    rlca                                          ; $7c73: $07
    nop                                           ; $7c74: $00
    pop de                                        ; $7c75: $d1
    nop                                           ; $7c76: $00
    ld a, e                                       ; $7c77: $7b
    nop                                           ; $7c78: $00
    dec bc                                        ; $7c79: $0b
    inc c                                         ; $7c7a: $0c
    sub $00                                       ; $7c7b: $d6 $00
    add hl, sp                                    ; $7c7d: $39
    nop                                           ; $7c7e: $00
    ld [bc], a                                    ; $7c7f: $02
    ld [bc], a                                    ; $7c80: $02
    ret c                                         ; $7c81: $d8

    nop                                           ; $7c82: $00
    jr nz, jr_0a1_7c85                            ; $7c83: $20 $00

jr_0a1_7c85:
    inc c                                         ; $7c85: $0c
    rrca                                          ; $7c86: $0f
    db $e3                                        ; $7c87: $e3
    nop                                           ; $7c88: $00
    ld a, $01                                     ; $7c89: $3e $01
    inc c                                         ; $7c8b: $0c
    rrca                                          ; $7c8c: $0f
    db $e4                                        ; $7c8d: $e4
    nop                                           ; $7c8e: $00
    db $e3                                        ; $7c8f: $e3
    nop                                           ; $7c90: $00
    dec bc                                        ; $7c91: $0b
    nop                                           ; $7c92: $00
    db $e4                                        ; $7c93: $e4
    nop                                           ; $7c94: $00
    ld h, b                                       ; $7c95: $60
    nop                                           ; $7c96: $00
    dec bc                                        ; $7c97: $0b
    dec c                                         ; $7c98: $0d
    push hl                                       ; $7c99: $e5
    nop                                           ; $7c9a: $00
    rrca                                          ; $7c9b: $0f
    ld bc, $0d0b                                  ; $7c9c: $01 $0b $0d
    jp hl                                         ; $7c9f: $e9


    nop                                           ; $7ca0: $00
    ld a, [$0b00]                                 ; $7ca1: $fa $00 $0b
    dec c                                         ; $7ca4: $0d
    db $eb                                        ; $7ca5: $eb
    nop                                           ; $7ca6: $00
    daa                                           ; $7ca7: $27
    ld bc, $0c0b                                  ; $7ca8: $01 $0b $0c
    ldh a, [rP1]                                  ; $7cab: $f0 $00
    inc a                                         ; $7cad: $3c
    nop                                           ; $7cae: $00
    inc c                                         ; $7caf: $0c
    rrca                                          ; $7cb0: $0f
    ld a, [c]                                     ; $7cb1: $f2
    nop                                           ; $7cb2: $00
    ld c, a                                       ; $7cb3: $4f
    ld bc, $0f0c                                  ; $7cb4: $01 $0c $0f
    di                                            ; $7cb7: $f3
    nop                                           ; $7cb8: $00
    db $d3                                        ; $7cb9: $d3
    nop                                           ; $7cba: $00
    dec bc                                        ; $7cbb: $0b
    nop                                           ; $7cbc: $00
    ld sp, hl                                     ; $7cbd: $f9
    nop                                           ; $7cbe: $00
    ld e, [hl]                                    ; $7cbf: $5e
    nop                                           ; $7cc0: $00
    ld [bc], a                                    ; $7cc1: $02
    ld b, $07                                     ; $7cc2: $06 $07
    ld bc, $00ef                                  ; $7cc4: $01 $ef $00
    rst $38                                       ; $7cc7: $ff
    rst $38                                       ; $7cc8: $ff
    rst $38                                       ; $7cc9: $ff
    rst $38                                       ; $7cca: $ff
    rst $38                                       ; $7ccb: $ff
    rst $38                                       ; $7ccc: $ff
    ld [de], a                                    ; $7ccd: $12
    nop                                           ; $7cce: $00
    nop                                           ; $7ccf: $00
    ld e, $00                                     ; $7cd0: $1e $00
    ld [bc], a                                    ; $7cd2: $02
    ld a, [hl+]                                   ; $7cd3: $2a
    nop                                           ; $7cd4: $00
    inc b                                         ; $7cd5: $04
    ld b, d                                       ; $7cd6: $42
    nop                                           ; $7cd7: $00
    ld [$0048], sp                                ; $7cd8: $08 $48 $00
    add hl, bc                                    ; $7cdb: $09
    ld e, d                                       ; $7cdc: $5a
    nop                                           ; $7cdd: $00
    inc c                                         ; $7cde: $0c
    ld a, [bc]                                    ; $7cdf: $0a
    rla                                           ; $7ce0: $17
    inc e                                         ; $7ce1: $1c
    nop                                           ; $7ce2: $00
    push bc                                       ; $7ce3: $c5
    nop                                           ; $7ce4: $00
    inc c                                         ; $7ce5: $0c
    ld bc, $0037                                  ; $7ce6: $01 $37 $00
    cp e                                          ; $7ce9: $bb
    nop                                           ; $7cea: $00
    inc c                                         ; $7ceb: $0c
    ld b, $5b                                     ; $7cec: $06 $5b
    nop                                           ; $7cee: $00
    ld bc, $0c01                                  ; $7cef: $01 $01 $0c
    ld b, $5d                                     ; $7cf2: $06 $5d
    nop                                           ; $7cf4: $00
    and e                                         ; $7cf5: $a3
    nop                                           ; $7cf6: $00
    dec bc                                        ; $7cf7: $0b
    ld [$00a3], sp                                ; $7cf8: $08 $a3 $00
    halt                                          ; $7cfb: $76
    nop                                           ; $7cfc: $00
    inc c                                         ; $7cfd: $0c
    dec b                                         ; $7cfe: $05
    or c                                          ; $7cff: $b1
    nop                                           ; $7d00: $00
    ld d, b                                       ; $7d01: $50
    nop                                           ; $7d02: $00
    ld [bc], a                                    ; $7d03: $02
    nop                                           ; $7d04: $00
    or c                                          ; $7d05: $b1
    nop                                           ; $7d06: $00

Jump_0a1_7d07:
    halt                                          ; $7d07: $76
    ld bc, $000b                                  ; $7d08: $01 $0b $00
    cp [hl]                                       ; $7d0b: $be
    nop                                           ; $7d0c: $00
    ld e, l                                       ; $7d0d: $5d
    ld bc, $0107                                  ; $7d0e: $01 $07 $01
    ret nz                                        ; $7d11: $c0

    nop                                           ; $7d12: $00
    add c                                         ; $7d13: $81
    nop                                           ; $7d14: $00
    inc c                                         ; $7d15: $0c
    ld b, $21                                     ; $7d16: $06 $21
    ld bc, $0102                                  ; $7d18: $01 $02 $01
    rlca                                          ; $7d1b: $07
    nop                                           ; $7d1c: $00
    ld hl, $6101                                  ; $7d1d: $21 $01 $61
    nop                                           ; $7d20: $00
    inc c                                         ; $7d21: $0c
    ld b, $22                                     ; $7d22: $06 $22
    ld bc, $00a3                                  ; $7d24: $01 $a3 $00
    inc c                                         ; $7d27: $0c
    ld [bc], a                                    ; $7d28: $02
    ld c, c                                       ; $7d29: $49
    ld bc, $00e9                                  ; $7d2a: $01 $e9 $00
    rst $38                                       ; $7d2d: $ff
    rst $38                                       ; $7d2e: $ff
    rst $38                                       ; $7d2f: $ff
    rst $38                                       ; $7d30: $ff
    rst $38                                       ; $7d31: $ff
    rst $38                                       ; $7d32: $ff
    dec d                                         ; $7d33: $15
    nop                                           ; $7d34: $00
    nop                                           ; $7d35: $00
    dec d                                         ; $7d36: $15
    nop                                           ; $7d37: $00
    nop                                           ; $7d38: $00
    dec d                                         ; $7d39: $15
    nop                                           ; $7d3a: $00
    nop                                           ; $7d3b: $00
    daa                                           ; $7d3c: $27
    nop                                           ; $7d3d: $00
    inc bc                                        ; $7d3e: $03
    ld d, c                                       ; $7d3f: $51
    nop                                           ; $7d40: $00
    ld a, [bc]                                    ; $7d41: $0a
    ld [hl], l                                    ; $7d42: $75
    nop                                           ; $7d43: $00
    db $10                                        ; $7d44: $10
    add a                                         ; $7d45: $87
    nop                                           ; $7d46: $00
    inc de                                        ; $7d47: $13
    inc c                                         ; $7d48: $0c
    ld [$0085], sp                                ; $7d49: $08 $85 $00
    ld [hl], d                                    ; $7d4c: $72
    nop                                           ; $7d4d: $00
    rlca                                          ; $7d4e: $07
    ld [bc], a                                    ; $7d4f: $02
    cp b                                          ; $7d50: $b8
    nop                                           ; $7d51: $00
    ld a, [hl+]                                   ; $7d52: $2a
    ld bc, $030c                                  ; $7d53: $01 $0c $03
    cp d                                          ; $7d56: $ba
    nop                                           ; $7d57: $00
    jp hl                                         ; $7d58: $e9


    nop                                           ; $7d59: $00
    inc c                                         ; $7d5a: $0c
    dec bc                                        ; $7d5b: $0b
    rst $00                                       ; $7d5c: $c7
    nop                                           ; $7d5d: $00
    halt                                          ; $7d5e: $76
    nop                                           ; $7d5f: $00
    dec bc                                        ; $7d60: $0b
    ld bc, $00cb                                  ; $7d61: $01 $cb $00
    ld d, b                                       ; $7d64: $50
    nop                                           ; $7d65: $00
    dec bc                                        ; $7d66: $0b
    add hl, bc                                    ; $7d67: $09
    call $8400                                    ; $7d68: $cd $00 $84
    ld bc, $050c                                  ; $7d6b: $01 $0c $05
    ret c                                         ; $7d6e: $d8

    nop                                           ; $7d6f: $00
    rst $18                                       ; $7d70: $df
    nop                                           ; $7d71: $00
    ld [bc], a                                    ; $7d72: $02
    ld bc, $00d9                                  ; $7d73: $01 $d9 $00
    sbc [hl]                                      ; $7d76: $9e
    ld bc, $010b                                  ; $7d77: $01 $0b $01
    rst $20                                       ; $7d7a: $e7
    nop                                           ; $7d7b: $00
    ld d, l                                       ; $7d7c: $55
    nop                                           ; $7d7d: $00
    dec bc                                        ; $7d7e: $0b
    add hl, bc                                    ; $7d7f: $09
    db $eb                                        ; $7d80: $eb
    nop                                           ; $7d81: $00
    ld a, c                                       ; $7d82: $79
    ld bc, $010b                                  ; $7d83: $01 $0b $01
    ld bc, $5201                                  ; $7d86: $01 $01 $52
    nop                                           ; $7d89: $00
    dec bc                                        ; $7d8a: $0b
    add hl, bc                                    ; $7d8b: $09
    rlca                                          ; $7d8c: $07
    ld bc, $0183                                  ; $7d8d: $01 $83 $01
    inc c                                         ; $7d90: $0c
    inc b                                         ; $7d91: $04
    dec c                                         ; $7d92: $0d
    ld bc, $012c                                  ; $7d93: $01 $2c $01
    rlca                                          ; $7d96: $07
    nop                                           ; $7d97: $00
    ld d, $01                                     ; $7d98: $16 $01
    xor [hl]                                      ; $7d9a: $ae
    nop                                           ; $7d9b: $00
    inc c                                         ; $7d9c: $0c
    ld a, [bc]                                    ; $7d9d: $0a
    ld a, [hl+]                                   ; $7d9e: $2a
    ld bc, $00ec                                  ; $7d9f: $01 $ec $00
    inc c                                         ; $7da2: $0c
    ld a, [bc]                                    ; $7da3: $0a
    ld [hl-], a                                   ; $7da4: $32
    ld bc, $00fc                                  ; $7da5: $01 $fc $00
    dec bc                                        ; $7da8: $0b
    ld [bc], a                                    ; $7da9: $02
    ld c, b                                       ; $7daa: $48
    ld bc, $00e9                                  ; $7dab: $01 $e9 $00
    inc c                                         ; $7dae: $0c
    rlca                                          ; $7daf: $07
    ld d, c                                       ; $7db0: $51
    ld bc, $0105                                  ; $7db1: $01 $05 $01
    rlca                                          ; $7db4: $07
    ld bc, $017d                                  ; $7db5: $01 $7d $01
    sbc $00                                       ; $7db8: $de $00
    dec bc                                        ; $7dba: $0b
    nop                                           ; $7dbb: $00
    adc e                                         ; $7dbc: $8b
    ld bc, $00f7                                  ; $7dbd: $01 $f7 $00
    ld [bc], a                                    ; $7dc0: $02
    nop                                           ; $7dc1: $00
    sbc [hl]                                      ; $7dc2: $9e
    ld bc, $00ee                                  ; $7dc3: $01 $ee $00
    rst $38                                       ; $7dc6: $ff
    rst $38                                       ; $7dc7: $ff
    rst $38                                       ; $7dc8: $ff
    rst $38                                       ; $7dc9: $ff
    rst $38                                       ; $7dca: $ff
    rst $38                                       ; $7dcb: $ff
    ld [de], a                                    ; $7dcc: $12
    nop                                           ; $7dcd: $00
    nop                                           ; $7dce: $00
    ld e, d                                       ; $7dcf: $5a
    nop                                           ; $7dd0: $00
    inc c                                         ; $7dd1: $0c
    add h                                         ; $7dd2: $84
    nop                                           ; $7dd3: $00
    inc de                                        ; $7dd4: $13
    jp nc, Jump_000_2000                          ; $7dd5: $d2 $00 $20

    ld c, $01                                     ; $7dd8: $0e $01
    ld a, [hl+]                                   ; $7dda: $2a
    jr c, @+$03                                   ; $7ddb: $38 $01

    ld sp, $2a0c                                  ; $7ddd: $31 $0c $2a
    ld de, $c900                                  ; $7de0: $11 $00 $c9
    ld bc, $2a0c                                  ; $7de3: $01 $0c $2a
    inc de                                        ; $7de6: $13
    nop                                           ; $7de7: $00
    or d                                          ; $7de8: $b2
    ld bc, $2a0c                                  ; $7de9: $01 $0c $2a
    inc de                                        ; $7dec: $13
    nop                                           ; $7ded: $00
    sbc h                                         ; $7dee: $9c
    ld bc, $0024                                  ; $7def: $01 $24 $00
    ld a, [hl+]                                   ; $7df2: $2a
    nop                                           ; $7df3: $00
    ret nz                                        ; $7df4: $c0

    nop                                           ; $7df5: $00
    inc c                                         ; $7df6: $0c
    add hl, hl                                    ; $7df7: $29
    inc l                                         ; $7df8: $2c
    nop                                           ; $7df9: $00
    add $00                                       ; $7dfa: $c6 $00
    jr jr_0a1_7e0a                                ; $7dfc: $18 $0c

    jr c, jr_0a1_7e00                             ; $7dfe: $38 $00

jr_0a1_7e00:
    ld c, c                                       ; $7e00: $49
    ld [bc], a                                    ; $7e01: $02
    jr @+$0c                                      ; $7e02: $18 $0a

    jr c, jr_0a1_7e06                             ; $7e04: $38 $00

jr_0a1_7e06:
    nop                                           ; $7e06: $00
    ld [bc], a                                    ; $7e07: $02
    jr jr_0a1_7e12                                ; $7e08: $18 $08

jr_0a1_7e0a:
    jr c, jr_0a1_7e0c                             ; $7e0a: $38 $00

jr_0a1_7e0c:
    jp hl                                         ; $7e0c: $e9


    ld bc, $0218                                  ; $7e0d: $01 $18 $02
    jr c, jr_0a1_7e12                             ; $7e10: $38 $00

jr_0a1_7e12:
    ld [hl+], a                                   ; $7e12: $22
    ld bc, $0418                                  ; $7e13: $01 $18 $04
    jr c, jr_0a1_7e18                             ; $7e16: $38 $00

jr_0a1_7e18:
    add hl, sp                                    ; $7e18: $39
    ld bc, $0618                                  ; $7e19: $01 $18 $06
    jr c, jr_0a1_7e1e                             ; $7e1c: $38 $00

jr_0a1_7e1e:
    ld d, c                                       ; $7e1e: $51
    ld bc, $0e18                                  ; $7e1f: $01 $18 $0e
    jr c, jr_0a1_7e24                             ; $7e22: $38 $00

jr_0a1_7e24:
    ld h, c                                       ; $7e24: $61
    ld [bc], a                                    ; $7e25: $02
    inc c                                         ; $7e26: $0c
    dec h                                         ; $7e27: $25
    ld d, d                                       ; $7e28: $52
    nop                                           ; $7e29: $00
    add l                                         ; $7e2a: $85
    nop                                           ; $7e2b: $00
    inc c                                         ; $7e2c: $0c
    dec h                                         ; $7e2d: $25
    ld d, e                                       ; $7e2e: $53
    nop                                           ; $7e2f: $00
    and h                                         ; $7e30: $a4
    nop                                           ; $7e31: $00
    rra                                           ; $7e32: $1f
    nop                                           ; $7e33: $00
    ld e, l                                       ; $7e34: $5d
    nop                                           ; $7e35: $00
    sub l                                         ; $7e36: $95
    ld bc, $1608                                  ; $7e37: $01 $08 $16
    ld e, [hl]                                    ; $7e3a: $5e
    nop                                           ; $7e3b: $00
    sbc d                                         ; $7e3c: $9a
    nop                                           ; $7e3d: $00
    inc c                                         ; $7e3e: $0c
    inc hl                                        ; $7e3f: $23
    ld e, [hl]                                    ; $7e40: $5e
    nop                                           ; $7e41: $00
    sub a                                         ; $7e42: $97
    ld bc, $0021                                  ; $7e43: $01 $21 $00
    ld e, a                                       ; $7e46: $5f
    nop                                           ; $7e47: $00
    adc [hl]                                      ; $7e48: $8e
    ld [bc], a                                    ; $7e49: $02
    inc c                                         ; $7e4a: $0c
    ld [hl+], a                                   ; $7e4b: $22
    ld h, b                                       ; $7e4c: $60
    nop                                           ; $7e4d: $00
    adc a                                         ; $7e4e: $8f
    ld [bc], a                                    ; $7e4f: $02
    jr @+$0d                                      ; $7e50: $18 $0b

    add b                                         ; $7e52: $80
    nop                                           ; $7e53: $00
    jr jr_0a1_7e58                                ; $7e54: $18 $02

    jr jr_0a1_7e5b                                ; $7e56: $18 $03

jr_0a1_7e58:
    add b                                         ; $7e58: $80
    nop                                           ; $7e59: $00
    ld a, [bc]                                    ; $7e5a: $0a

jr_0a1_7e5b:
    ld bc, $0d18                                  ; $7e5b: $01 $18 $0d
    add b                                         ; $7e5e: $80
    nop                                           ; $7e5f: $00
    ld c, b                                       ; $7e60: $48
    ld [bc], a                                    ; $7e61: $02
    jr jr_0a1_7e6d                                ; $7e62: $18 $09

    add b                                         ; $7e64: $80
    nop                                           ; $7e65: $00
    add sp, $01                                   ; $7e66: $e8 $01
    jr jr_0a1_7e71                                ; $7e68: $18 $07

    add c                                         ; $7e6a: $81
    nop                                           ; $7e6b: $00
    ld l, c                                       ; $7e6c: $69

jr_0a1_7e6d:
    ld bc, $0f18                                  ; $7e6d: $01 $18 $0f
    add c                                         ; $7e70: $81

jr_0a1_7e71:
    nop                                           ; $7e71: $00
    ld h, b                                       ; $7e72: $60
    ld [bc], a                                    ; $7e73: $02
    jr @+$07                                      ; $7e74: $18 $05

    add c                                         ; $7e76: $81

jr_0a1_7e77:
    nop                                           ; $7e77: $00
    add hl, sp                                    ; $7e78: $39
    ld bc, $1508                                  ; $7e79: $01 $08 $15
    add a                                         ; $7e7c: $87
    nop                                           ; $7e7d: $00
    ld a, [hl]                                    ; $7e7e: $7e
    nop                                           ; $7e7f: $00
    inc c                                         ; $7e80: $0c
    ld h, $88                                     ; $7e81: $26 $88
    nop                                           ; $7e83: $00
    ld [hl], e                                    ; $7e84: $73
    nop                                           ; $7e85: $00
    ld [bc], a                                    ; $7e86: $02
    ld bc, $00af                                  ; $7e87: $01 $af $00
    ld c, b                                       ; $7e8a: $48
    nop                                           ; $7e8b: $00
    inc hl                                        ; $7e8c: $23
    nop                                           ; $7e8d: $00
    cp a                                          ; $7e8e: $bf
    nop                                           ; $7e8f: $00
    rlc b                                         ; $7e90: $cb $00
    ld [$bf18], sp                                ; $7e92: $08 $18 $bf
    nop                                           ; $7e95: $00
    ld a, [hl]                                    ; $7e96: $7e
    nop                                           ; $7e97: $00
    inc c                                         ; $7e98: $0c
    daa                                           ; $7e99: $27
    cp a                                          ; $7e9a: $bf
    nop                                           ; $7e9b: $00
    ld [hl], d                                    ; $7e9c: $72
    nop                                           ; $7e9d: $00
    inc c                                         ; $7e9e: $0c
    jr z, jr_0a1_7e77                             ; $7e9f: $28 $d6

    nop                                           ; $7ea1: $00
    ret nz                                        ; $7ea2: $c0

    nop                                           ; $7ea3: $00
    ld d, $00                                     ; $7ea4: $16 $00
    rst $10                                       ; $7ea6: $d7
    nop                                           ; $7ea7: $00
    pop bc                                        ; $7ea8: $c1
    nop                                           ; $7ea9: $00
    jr jr_0a1_7ec6                                ; $7eaa: $18 $1a

    ld hl, sp+$00                                 ; $7eac: $f8 $00
    ld a, [de]                                    ; $7eae: $1a
    ld [bc], a                                    ; $7eaf: $02
    jr @+$1e                                      ; $7eb0: $18 $1c

    ld hl, sp+$00                                 ; $7eb2: $f8 $00
    ld c, c                                       ; $7eb4: $49
    ld [bc], a                                    ; $7eb5: $02
    jr jr_0a1_7ed6                                ; $7eb6: $18 $1e

    ld hl, sp+$00                                 ; $7eb8: $f8 $00
    ld h, b                                       ; $7eba: $60
    ld [bc], a                                    ; $7ebb: $02
    jr @+$12                                      ; $7ebc: $18 $10

    ld hl, sp+$00                                 ; $7ebe: $f8 $00
    add hl, bc                                    ; $7ec0: $09
    ld bc, $1218                                  ; $7ec1: $01 $18 $12
    ld hl, sp+$00                                 ; $7ec4: $f8 $00

jr_0a1_7ec6:
    add hl, sp                                    ; $7ec6: $39
    ld bc, $1418                                  ; $7ec7: $01 $18 $14
    ld hl, sp+$00                                 ; $7eca: $f8 $00
    ld d, c                                       ; $7ecc: $51
    ld bc, $1618                                  ; $7ecd: $01 $18 $16
    ld hl, sp+$00                                 ; $7ed0: $f8 $00
    ld l, c                                       ; $7ed2: $69
    ld bc, $1818                                  ; $7ed3: $01 $18 $18

jr_0a1_7ed6:
    ld hl, sp+$00                                 ; $7ed6: $f8 $00
    ld [$0801], a                                 ; $7ed8: $ea $01 $08
    rla                                           ; $7edb: $17
    rra                                           ; $7edc: $1f
    ld bc, $0096                                  ; $7edd: $01 $96 $00
    jr nz, jr_0a1_7ee2                            ; $7ee0: $20 $00

jr_0a1_7ee2:
    ld hl, $9201                                  ; $7ee2: $21 $01 $92
    ld bc, $210c                                  ; $7ee5: $01 $0c $21
    ld [hl+], a                                   ; $7ee8: $22
    ld bc, $0194                                  ; $7ee9: $01 $94 $01
    rla                                           ; $7eec: $17
    nop                                           ; $7eed: $00
    inc h                                         ; $7eee: $24
    ld bc, $0295                                  ; $7eef: $01 $95 $02
    inc c                                         ; $7ef2: $0c
    inc h                                         ; $7ef3: $24
    ld h, $01                                     ; $7ef4: $26 $01
    sub [hl]                                      ; $7ef6: $96
    ld [bc], a                                    ; $7ef7: $02
    inc c                                         ; $7ef8: $0c
    ld [bc], a                                    ; $7ef9: $02
    ld a, [hl+]                                   ; $7efa: $2a
    ld bc, $0085                                  ; $7efb: $01 $85 $00
    inc c                                         ; $7efe: $0c
    ld [bc], a                                    ; $7eff: $02
    dec hl                                        ; $7f00: $2b
    ld bc, $00a4                                  ; $7f01: $01 $a4 $00
    jr jr_0a1_7f19                                ; $7f04: $18 $13

    ld b, b                                       ; $7f06: $40
    ld bc, $0120                                  ; $7f07: $01 $20 $01
    jr jr_0a1_7f2b                                ; $7f0a: $18 $1f

    ld b, b                                       ; $7f0c: $40
    ld bc, $0261                                  ; $7f0d: $01 $61 $02
    jr jr_0a1_7f2f                                ; $7f10: $18 $1d

    ld b, b                                       ; $7f12: $40
    ld bc, $0231                                  ; $7f13: $01 $31 $02
    jr jr_0a1_7f31                                ; $7f16: $18 $19

    ld b, b                                       ; $7f18: $40

jr_0a1_7f19:
    ld bc, $01e8                                  ; $7f19: $01 $e8 $01
    jr @+$19                                      ; $7f1c: $18 $17

    ld b, b                                       ; $7f1e: $40
    ld bc, $0169                                  ; $7f1f: $01 $69 $01
    jr @+$17                                      ; $7f22: $18 $15

    ld b, b                                       ; $7f24: $40
    ld bc, $0150                                  ; $7f25: $01 $50 $01
    rst $38                                       ; $7f28: $ff
    rst $38                                       ; $7f29: $ff
    rst $38                                       ; $7f2a: $ff

jr_0a1_7f2b:
    rst $38                                       ; $7f2b: $ff
    rst $38                                       ; $7f2c: $ff
    rst $38                                       ; $7f2d: $ff
    rrca                                          ; $7f2e: $0f

jr_0a1_7f2f:
    nop                                           ; $7f2f: $00
    nop                                           ; $7f30: $00

jr_0a1_7f31:
    dec d                                         ; $7f31: $15
    nop                                           ; $7f32: $00
    ld bc, $0021                                  ; $7f33: $01 $21 $00
    inc bc                                        ; $7f36: $03
    ld hl, $0300                                  ; $7f37: $21 $00 $03
    dec l                                         ; $7f3a: $2d
    nop                                           ; $7f3b: $00
    dec b                                         ; $7f3c: $05
    rlca                                          ; $7f3d: $07
    nop                                           ; $7f3e: $00
    ld [hl], $00                                  ; $7f3f: $36 $00
    or b                                          ; $7f41: $b0
    nop                                           ; $7f42: $00
    rlca                                          ; $7f43: $07
    ld [bc], a                                    ; $7f44: $02
    ld d, c                                       ; $7f45: $51
    nop                                           ; $7f46: $00
    rst $00                                       ; $7f47: $c7
    ld bc, $060a                                  ; $7f48: $01 $0a $06
    ld d, h                                       ; $7f4b: $54
    nop                                           ; $7f4c: $00
    xor $00                                       ; $7f4d: $ee $00
    rlca                                          ; $7f4f: $07
    ld bc, $00ce                                  ; $7f50: $01 $ce $00
    jp nz, $0701                                  ; $7f53: $c2 $01 $07

    inc bc                                        ; $7f56: $03
    db $f4                                        ; $7f57: $f4
    nop                                           ; $7f58: $00
    jp nz, Jump_000_0200                          ; $7f59: $c2 $00 $02

    nop                                           ; $7f5c: $00
    rlca                                          ; $7f5d: $07
    ld bc, $014f                                  ; $7f5e: $01 $4f $01
    rst $38                                       ; $7f61: $ff
    rst $38                                       ; $7f62: $ff
    rst $38                                       ; $7f63: $ff
    rst $38                                       ; $7f64: $ff
    rst $38                                       ; $7f65: $ff
    rst $38                                       ; $7f66: $ff
    dec de                                        ; $7f67: $1b
    nop                                           ; $7f68: $00
    nop                                           ; $7f69: $00
    daa                                           ; $7f6a: $27
    nop                                           ; $7f6b: $00
    ld [bc], a                                    ; $7f6c: $02
    dec l                                         ; $7f6d: $2d
    nop                                           ; $7f6e: $00
    inc bc                                        ; $7f6f: $03
    inc sp                                        ; $7f70: $33
    nop                                           ; $7f71: $00
    inc b                                         ; $7f72: $04
    inc sp                                        ; $7f73: $33
    nop                                           ; $7f74: $00
    inc b                                         ; $7f75: $04
    ld c, e                                       ; $7f76: $4b
    nop                                           ; $7f77: $00
    ld [$0057], sp                                ; $7f78: $08 $57 $00
    ld a, [bc]                                    ; $7f7b: $0a
    ld l, a                                       ; $7f7c: $6f
    nop                                           ; $7f7d: $00
    ld c, $75                                     ; $7f7e: $0e $75
    nop                                           ; $7f80: $00
    rrca                                          ; $7f81: $0f
    ld [bc], a                                    ; $7f82: $02
    ld bc, $001f                                  ; $7f83: $01 $1f $00
    sbc $01                                       ; $7f86: $de $01
    ld [bc], a                                    ; $7f88: $02
    nop                                           ; $7f89: $00
    ccf                                           ; $7f8a: $3f
    nop                                           ; $7f8b: $00
    ld b, $02                                     ; $7f8c: $06 $02
    inc b                                         ; $7f8e: $04
    nop                                           ; $7f8f: $00
    ld e, b                                       ; $7f90: $58
    nop                                           ; $7f91: $00
    ld h, d                                       ; $7f92: $62
    ld bc, $0202                                  ; $7f93: $01 $02 $02
    add a                                         ; $7f96: $87
    nop                                           ; $7f97: $00
    sbc $01                                       ; $7f98: $de $01
    inc b                                         ; $7f9a: $04
    nop                                           ; $7f9b: $00
    ld [$6201], sp                                ; $7f9c: $08 $01 $62
    ld bc, $000c                                  ; $7f9f: $01 $0c $00
    dec hl                                        ; $7fa2: $2b
    ld bc, $0040                                  ; $7fa3: $01 $40 $00
    rlca                                          ; $7fa6: $07
    ld bc, $012e                                  ; $7fa7: $01 $2e $01
    ld hl, sp+$00                                 ; $7faa: $f8 $00
    inc b                                         ; $7fac: $04
    nop                                           ; $7fad: $00
    jr nc, jr_0a1_7fb1                            ; $7fae: $30 $01

    ld a, [de]                                    ; $7fb0: $1a

jr_0a1_7fb1:
    nop                                           ; $7fb1: $00
    inc bc                                        ; $7fb2: $03
    inc b                                         ; $7fb3: $04
    ld d, c                                       ; $7fb4: $51
    ld bc, $0012                                  ; $7fb5: $01 $12 $00
    inc b                                         ; $7fb8: $04
    nop                                           ; $7fb9: $00
    ld [hl], b                                    ; $7fba: $70
    ld bc, $001a                                  ; $7fbb: $01 $1a $00
    inc b                                         ; $7fbe: $04
    nop                                           ; $7fbf: $00
    sbc b                                         ; $7fc0: $98
    ld bc, $00c2                                  ; $7fc1: $01 $c2 $00
    inc b                                         ; $7fc4: $04
    nop                                           ; $7fc5: $00
    sbc b                                         ; $7fc6: $98
    ld bc, $004a                                  ; $7fc7: $01 $4a $00
    inc b                                         ; $7fca: $04
    nop                                           ; $7fcb: $00
    and b                                         ; $7fcc: $a0
    ld bc, $0163                                  ; $7fcd: $01 $63 $01
    inc c                                         ; $7fd0: $0c
    dec b                                         ; $7fd1: $05
    cp b                                          ; $7fd2: $b8
    ld bc, $0061                                  ; $7fd3: $01 $61 $00
    rlca                                          ; $7fd6: $07
    nop                                           ; $7fd7: $00
    rst $08                                       ; $7fd8: $cf
    ld bc, $016f                                  ; $7fd9: $01 $6f $01
    rst $38                                       ; $7fdc: $ff
    rst $38                                       ; $7fdd: $ff
    rst $38                                       ; $7fde: $ff
    rst $38                                       ; $7fdf: $ff
    rst $38                                       ; $7fe0: $ff
    rst $38                                       ; $7fe1: $ff
    add hl, bc                                    ; $7fe2: $09
    nop                                           ; $7fe3: $00
    nop                                           ; $7fe4: $00
    rrca                                          ; $7fe5: $0f
    nop                                           ; $7fe6: $00
    ld bc, $000f                                  ; $7fe7: $01 $0f $00
    ld bc, $0002                                  ; $7fea: $01 $02 $00
    ld e, $00                                     ; $7fed: $1e $00
    ld l, a                                       ; $7fef: $6f
    nop                                           ; $7ff0: $00
    rlca                                          ; $7ff1: $07
    nop                                           ; $7ff2: $00
    and e                                         ; $7ff3: $a3
    nop                                           ; $7ff4: $00
    ccf                                           ; $7ff5: $3f
    nop                                           ; $7ff6: $00
    rst $38                                       ; $7ff7: $ff
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
