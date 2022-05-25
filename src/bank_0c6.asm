; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0c6", ROMX[$4000], BANK[$c6]

    add $60                                       ; $4000: $c6 $60
    ld a, [bc]                                    ; $4002: $0a
    dec b                                         ; $4003: $05
    ld [$a500], sp                                ; $4004: $08 $00 $a5
    jp $e7db                                      ; $4007: $c3 $db $e7


    add c                                         ; $400a: $81
    rst $38                                       ; $400b: $ff
    add c                                         ; $400c: $81
    jp $8100                                      ; $400d: $c3 $00 $81


    jp $c3a5                                      ; $4010: $c3 $a5 $c3


    cp l                                          ; $4013: $bd
    jp $ff7e                                      ; $4014: $c3 $7e $ff


    nop                                           ; $4017: $00
    cp $00                                        ; $4018: $fe $00
    inc a                                         ; $401a: $3c
    nop                                           ; $401b: $00
    ld e, $00                                     ; $401c: $1e $00
    ld b, a                                       ; $401e: $47
    nop                                           ; $401f: $00
    nop                                           ; $4020: $00
    add a                                         ; $4021: $87
    ld b, b                                       ; $4022: $40
    ld d, l                                       ; $4023: $55
    xor d                                         ; $4024: $aa
    xor d                                         ; $4025: $aa
    rst $38                                       ; $4026: $ff
    rst $38                                       ; $4027: $ff
    nop                                           ; $4028: $00
    nop                                           ; $4029: $00
    and d                                         ; $402a: $a2
    ld bc, $0304                                  ; $402b: $01 $04 $03
    ld [$bd07], sp                                ; $402e: $08 $07 $bd
    ld [bc], a                                    ; $4031: $02
    ld [$05fa], sp                                ; $4032: $08 $fa $05
    call nc, Call_000_102b                        ; $4035: $d4 $2b $10
    ld [$0cf3], sp                                ; $4038: $08 $f3 $0c
    cp c                                          ; $403b: $b9
    ld bc, $1d06                                  ; $403c: $01 $06 $1d
    nop                                           ; $403f: $00
    add b                                         ; $4040: $80
    nop                                           ; $4041: $00
    ret nz                                        ; $4042: $c0

    nop                                           ; $4043: $00
    jr nz, jr_0c6_405e                            ; $4044: $20 $18

    nop                                           ; $4046: $00
    rst $10                                       ; $4047: $d7
    jr z, jr_0c6_4089                             ; $4048: $28 $3f

    nop                                           ; $404a: $00
    add c                                         ; $404b: $81
    nop                                           ; $404c: $00
    inc bc                                        ; $404d: $03
    nop                                           ; $404e: $00
    inc b                                         ; $404f: $04
    rst $28                                       ; $4050: $ef
    nop                                           ; $4051: $00
    call nc, Call_0c6_552b                        ; $4052: $d4 $2b $55
    jr nc, jr_0c6_4057                            ; $4055: $30 $00

jr_0c6_4057:
    push de                                       ; $4057: $d5
    xor e                                         ; $4058: $ab
    nop                                           ; $4059: $00
    xor c                                         ; $405a: $a9
    rst $10                                       ; $405b: $d7
    db $dd                                        ; $405c: $dd
    db $e3                                        ; $405d: $e3

jr_0c6_405e:
    rst $08                                       ; $405e: $cf
    pop af                                        ; $405f: $f1
    db $ed                                        ; $4060: $ed
    di                                            ; $4061: $f3
    ld bc, $f9e7                                  ; $4062: $01 $e7 $f9
    db $ed                                        ; $4065: $ed
    di                                            ; $4066: $f3
    rst $10                                       ; $4067: $d7
    ld sp, hl                                     ; $4068: $f9
    nop                                           ; $4069: $00
    ld b, h                                       ; $406a: $44
    nop                                           ; $406b: $00
    jr jr_0c6_406e                                ; $406c: $18 $00

jr_0c6_406e:
    add b                                         ; $406e: $80
    add b                                         ; $406f: $80
    inc b                                         ; $4070: $04
    jr c, jr_0c6_4083                             ; $4071: $38 $10

    ld [$0400], sp                                ; $4073: $08 $00 $04
    nop                                           ; $4076: $00
    nop                                           ; $4077: $00
    ld [$1000], sp                                ; $4078: $08 $00 $10
    nop                                           ; $407b: $00
    jr nz, jr_0c6_407e                            ; $407c: $20 $00

jr_0c6_407e:
    ld b, b                                       ; $407e: $40
    nop                                           ; $407f: $00
    nop                                           ; $4080: $00
    cp a                                          ; $4081: $bf
    ld b, b                                       ; $4082: $40

jr_0c6_4083:
    ei                                            ; $4083: $fb
    nop                                           ; $4084: $00
    rst $30                                       ; $4085: $f7
    nop                                           ; $4086: $00
    cp a                                          ; $4087: $bf

jr_0c6_4088:
    nop                                           ; $4088: $00

jr_0c6_4089:
    and b                                         ; $4089: $a0
    ld h, $00                                     ; $408a: $26 $00
    rst $38                                       ; $408c: $ff
    ld bc, $bf08                                  ; $408d: $01 $08 $bf
    ld b, b                                       ; $4090: $40
    rst $10                                       ; $4091: $d7
    jr nz, @+$01                                  ; $4092: $20 $ff

    inc b                                         ; $4094: $04
    nop                                           ; $4095: $00
    ld a, a                                       ; $4096: $7f
    add b                                         ; $4097: $80
    db $fd                                        ; $4098: $fd
    ld [bc], a                                    ; $4099: $02
    db $10                                        ; $409a: $10
    jr jr_0c6_4088                                ; $409b: $18 $eb

    inc d                                         ; $409d: $14
    dec b                                         ; $409e: $05
    rst $38                                       ; $409f: $ff
    nop                                           ; $40a0: $00
    rst $18                                       ; $40a1: $df
    nop                                           ; $40a2: $00
    ei                                            ; $40a3: $fb
    jr nz, jr_0c6_40d6                            ; $40a4: $20 $30

    rst $28                                       ; $40a6: $ef
    ld [hl-], a                                   ; $40a7: $32
    nop                                           ; $40a8: $00
    ld [$20df], sp                                ; $40a9: $08 $df $20
    rst $30                                       ; $40ac: $f7
    ld [$2830], sp                                ; $40ad: $08 $30 $28
    rst $38                                       ; $40b0: $ff
    nop                                           ; $40b1: $00
    cp e                                          ; $40b2: $bb
    sub h                                         ; $40b3: $94
    inc a                                         ; $40b4: $3c
    nop                                           ; $40b5: $00
    or a                                          ; $40b6: $b7
    ld b, b                                       ; $40b7: $40
    ld b, b                                       ; $40b8: $40
    jr z, jr_0c6_411a                             ; $40b9: $28 $5f

    ld a, $00                                     ; $40bb: $3e $00
    rst $30                                       ; $40bd: $f7
    nop                                           ; $40be: $00
    ld [$01fe], sp                                ; $40bf: $08 $fe $01
    ld a, a                                       ; $40c2: $7f
    add b                                         ; $40c3: $80
    ld d, b                                       ; $40c4: $50

jr_0c6_40c5:
    jr jr_0c6_40c5                                ; $40c5: $18 $fe

    ld bc, $017d                                  ; $40c7: $01 $7d $01
    ld [bc], a                                    ; $40ca: $02
    xor [hl]                                      ; $40cb: $ae
    ld de, $02fd                                  ; $40cc: $11 $fd $02
    ld [$6015], a                                 ; $40cf: $ea $15 $60
    jr jr_0c6_40d4                                ; $40d2: $18 $00

jr_0c6_40d4:
    push af                                       ; $40d4: $f5
    db $db                                        ; $40d5: $db

jr_0c6_40d6:
    push hl                                       ; $40d6: $e5
    db $db                                        ; $40d7: $db
    ret c                                         ; $40d8: $d8

    rst $28                                       ; $40d9: $ef
    db $fd                                        ; $40da: $fd
    db $eb                                        ; $40db: $eb
    nop                                           ; $40dc: $00
    db $e4                                        ; $40dd: $e4
    rst $38                                       ; $40de: $ff
    ld hl, sp-$09                                 ; $40df: $f8 $f7
    push af                                       ; $40e1: $f5
    ei                                            ; $40e2: $fb
    jp hl                                         ; $40e3: $e9


    rst $38                                       ; $40e4: $ff
    jr nz, jr_0c6_40e7                            ; $40e5: $20 $00

jr_0c6_40e7:
    add b                                         ; $40e7: $80
    cp [hl]                                       ; $40e8: $be
    nop                                           ; $40e9: $00
    add b                                         ; $40ea: $80
    add a                                         ; $40eb: $87
    nop                                           ; $40ec: $00
    ld c, $80                                     ; $40ed: $0e $80
    rlca                                          ; $40ef: $07
    sbc h                                         ; $40f0: $9c
    nop                                           ; $40f1: $00
    jr c, @-$7e                                   ; $40f2: $38 $80

    ldh a, [$d8]                                  ; $40f4: $f0 $d8
    nop                                           ; $40f6: $00
    xor h                                         ; $40f7: $ac
    nop                                           ; $40f8: $00
    ld [bc], a                                    ; $40f9: $02
    ld c, b                                       ; $40fa: $48
    jr nz, @+$03                                  ; $40fb: $20 $01

    ld bc, $5004                                  ; $40fd: $01 $04 $50
    cp a                                          ; $4100: $bf
    ld b, b                                       ; $4101: $40
    ld d, a                                       ; $4102: $57
    and b                                         ; $4103: $a0
    cp a                                          ; $4104: $bf
    inc b                                         ; $4105: $04
    ld b, b                                       ; $4106: $40
    ld e, a                                       ; $4107: $5f
    and b                                         ; $4108: $a0
    xor e                                         ; $4109: $ab
    ld d, h                                       ; $410a: $54
    add b                                         ; $410b: $80
    jr z, @+$81                                   ; $410c: $28 $7f

    nop                                           ; $410e: $00
    db $10                                        ; $410f: $10
    xor l                                         ; $4110: $ad
    db $10                                        ; $4111: $10
    rst $38                                       ; $4112: $ff
    ret nz                                        ; $4113: $c0

    jr nc, @-$41                                  ; $4114: $30 $bd

    jp Jump_000_0303                              ; $4116: $c3 $03 $03


    nop                                           ; $4119: $00

jr_0c6_411a:
    inc e                                         ; $411a: $1c
    inc bc                                        ; $411b: $03
    rst $38                                       ; $411c: $ff
    ld [bc], a                                    ; $411d: $02
    ld sp, hl                                     ; $411e: $f9
    ld b, $fb                                     ; $411f: $06 $fb
    ld b, $00                                     ; $4121: $06 $00
    db $fd                                        ; $4123: $fd
    cp $ff                                        ; $4124: $fe $ff
    rst $38                                       ; $4126: $ff
    cp c                                          ; $4127: $b9
    rst $00                                       ; $4128: $c7
    ld a, c                                       ; $4129: $79
    add [hl]                                      ; $412a: $86
    nop                                           ; $412b: $00
    ret nc                                        ; $412c: $d0

    nop                                           ; $412d: $00
    ld a, b                                       ; $412e: $78
    nop                                           ; $412f: $00
    push bc                                       ; $4130: $c5
    ld [bc], a                                    ; $4131: $02
    db $fd                                        ; $4132: $fd
    ld [bc], a                                    ; $4133: $02
    nop                                           ; $4134: $00
    ldh a, [rIF]                                  ; $4135: $f0 $0f
    ld bc, $03ff                                  ; $4137: $01 $ff $03
    ret nz                                        ; $413a: $c0

    ld bc, $0000                                  ; $413b: $01 $00 $00
    ld b, $01                                     ; $413e: $06 $01
    ld a, h                                       ; $4140: $7c
    inc bc                                        ; $4141: $03
    call c, $f903                                 ; $4142: $dc $03 $f9
    rlca                                          ; $4145: $07
    nop                                           ; $4146: $00
    rst $30                                       ; $4147: $f7
    rrca                                          ; $4148: $0f
    ld e, [hl]                                    ; $4149: $5e
    rst $38                                       ; $414a: $ff
    and b                                         ; $414b: $a0
    ld e, a                                       ; $414c: $5f
    ldh a, [rIF]                                  ; $414d: $f0 $0f
    ld [bc], a                                    ; $414f: $02
    ccf                                           ; $4150: $3f
    ret nz                                        ; $4151: $c0

    rst $38                                       ; $4152: $ff
    nop                                           ; $4153: $00
    ld [$2d15], a                                 ; $4154: $ea $15 $2d
    nop                                           ; $4157: $00
    rst $38                                       ; $4158: $ff
    nop                                           ; $4159: $00
    db $f4                                        ; $415a: $f4
    rst $38                                       ; $415b: $ff
    ld a, a                                       ; $415c: $7f
    rst $38                                       ; $415d: $ff
    jp hl                                         ; $415e: $e9


    cp $40                                        ; $415f: $fe $40
    cp a                                          ; $4161: $bf
    nop                                           ; $4162: $00
    ld bc, $00fe                                  ; $4163: $01 $fe $00
    rst $38                                       ; $4166: $ff
    add d                                         ; $4167: $82
    rst $38                                       ; $4168: $ff
    adc a                                         ; $4169: $8f
    cp $00                                        ; $416a: $fe $00
    di                                            ; $416c: $f3
    cp $23                                        ; $416d: $fe $23
    rst $18                                       ; $416f: $df
    adc a                                         ; $4170: $8f
    inc bc                                        ; $4171: $03
    inc b                                         ; $4172: $04
    inc bc                                        ; $4173: $03
    add b                                         ; $4174: $80
    ld [hl+], a                                   ; $4175: $22
    add hl, bc                                    ; $4176: $09
    xor $01                                       ; $4177: $ee $01
    ld hl, sp+$07                                 ; $4179: $f8 $07
    ld hl, sp+$07                                 ; $417b: $f8 $07
    db $dd                                        ; $417d: $dd
    jr nz, @-$1e                                  ; $417e: $20 $e0

    cp l                                          ; $4180: $bd
    ld l, $00                                     ; $4181: $2e $00
    ld a, a                                       ; $4183: $7f
    add b                                         ; $4184: $80
    ld a, l                                       ; $4185: $7d
    add b                                         ; $4186: $80
    ld a, [hl-]                                   ; $4187: $3a
    nop                                           ; $4188: $00
    push bc                                       ; $4189: $c5
    dec b                                         ; $418a: $05
    ld a, [$f807]                                 ; $418b: $fa $07 $f8
    ret                                           ; $418e: $c9


    rst $38                                       ; $418f: $ff
    push de                                       ; $4190: $d5
    nop                                           ; $4191: $00
    rst $28                                       ; $4192: $ef
    add sp, -$29                                  ; $4193: $e8 $d7
    ld d, l                                       ; $4195: $55
    ld l, e                                       ; $4196: $6b
    xor h                                         ; $4197: $ac
    or e                                          ; $4198: $b3
    ld d, a                                       ; $4199: $57
    nop                                           ; $419a: $00
    ld e, c                                       ; $419b: $59
    xor b                                         ; $419c: $a8
    cp a                                          ; $419d: $bf
    inc hl                                        ; $419e: $23
    dec a                                         ; $419f: $3d
    ld h, b                                       ; $41a0: $60
    add b                                         ; $41a1: $80
    ret nz                                        ; $41a2: $c0

    ret z                                         ; $41a3: $c8

    ld [hl], b                                    ; $41a4: $70
    ld e, c                                       ; $41a5: $59
    ld [bc], a                                    ; $41a6: $02
    ld l, b                                       ; $41a7: $68
    ld bc, $8003                                  ; $41a8: $01 $03 $80
    nop                                           ; $41ab: $00
    rrca                                          ; $41ac: $0f
    nop                                           ; $41ad: $00
    inc e                                         ; $41ae: $1c
    nop                                           ; $41af: $00
    ld bc, $003b                                  ; $41b0: $01 $3b $00
    ld [hl], h                                    ; $41b3: $74
    ld bc, $0069                                  ; $41b4: $01 $69 $00
    ld a, a                                       ; $41b7: $7f
    nop                                           ; $41b8: $00
    rst $38                                       ; $41b9: $ff
    ld [hl], l                                    ; $41ba: $75
    cp $a1                                        ; $41bb: $fe $a1
    ld e, [hl]                                    ; $41bd: $5e
    ret nz                                        ; $41be: $c0

    ccf                                           ; $41bf: $3f
    and b                                         ; $41c0: $a0
    nop                                           ; $41c1: $00
    ld e, a                                       ; $41c2: $5f
    ld b, c                                       ; $41c3: $41
    cp a                                          ; $41c4: $bf
    and e                                         ; $41c5: $a3
    ld a, a                                       ; $41c6: $7f
    ld a, h                                       ; $41c7: $7c
    cp a                                          ; $41c8: $bf
    cp e                                          ; $41c9: $bb
    ld [$bd07], sp                                ; $41ca: $08 $07 $bd
    inc bc                                        ; $41cd: $03
    rst $38                                       ; $41ce: $ff
    ld b, b                                       ; $41cf: $40
    ld bc, $01be                                  ; $41d0: $01 $be $01
    inc e                                         ; $41d3: $1c
    nop                                           ; $41d4: $00
    db $e3                                        ; $41d5: $e3
    nop                                           ; $41d6: $00
    rst $38                                       ; $41d7: $ff
    ldh [$1f], a                                  ; $41d8: $e0 $1f
    rst $38                                       ; $41da: $ff
    rst $38                                       ; $41db: $ff
    add a                                         ; $41dc: $87
    nop                                           ; $41dd: $00
    inc bc                                        ; $41de: $03
    nop                                           ; $41df: $00
    nop                                           ; $41e0: $00
    rrca                                          ; $41e1: $0f
    nop                                           ; $41e2: $00
    db $fd                                        ; $41e3: $fd
    ld [bc], a                                    ; $41e4: $02
    rst $18                                       ; $41e5: $df
    nop                                           ; $41e6: $00
    nop                                           ; $41e7: $00
    ldh a, [rIF]                                  ; $41e8: $f0 $0f
    ld [bc], a                                    ; $41ea: $02
    db $fd                                        ; $41eb: $fd
    rst $38                                       ; $41ec: $ff
    rst $38                                       ; $41ed: $ff
    add h                                         ; $41ee: $84
    nop                                           ; $41ef: $00
    ei                                            ; $41f0: $fb
    ccf                                           ; $41f1: $3f
    nop                                           ; $41f2: $00
    xor d                                         ; $41f3: $aa

jr_0c6_41f4:
    ld d, l                                       ; $41f4: $55
    ld e, b                                       ; $41f5: $58
    cp a                                          ; $41f6: $bf
    cp [hl]                                       ; $41f7: $be
    nop                                           ; $41f8: $00
    ld a, a                                       ; $41f9: $7f
    jr nc, @+$01                                  ; $41fa: $30 $ff

    adc h                                         ; $41fc: $8c
    ld [hl], b                                    ; $41fd: $70
    ei                                            ; $41fe: $fb
    db $fc                                        ; $41ff: $fc
    inc a                                         ; $4200: $3c
    nop                                           ; $4201: $00
    ret nz                                        ; $4202: $c0

    rst $30                                       ; $4203: $f7
    ld [$6897], sp                                ; $4204: $08 $97 $68
    cpl                                           ; $4207: $2f
    ret nc                                        ; $4208: $d0

    db $d3                                        ; $4209: $d3
    nop                                           ; $420a: $00
    inc a                                         ; $420b: $3c
    jr @+$01                                      ; $420c: $18 $ff

    rst $28                                       ; $420e: $ef
    rra                                           ; $420f: $1f
    ld a, [de]                                    ; $4210: $1a
    rlca                                          ; $4211: $07
    add hl, bc                                    ; $4212: $09
    nop                                           ; $4213: $00
    ld b, $55                                     ; $4214: $06 $55
    ld [bc], a                                    ; $4216: $02
    db $fc                                        ; $4217: $fc
    inc bc                                        ; $4218: $03
    ld hl, sp+$07                                 ; $4219: $f8 $07
    db $fc                                        ; $421b: $fc
    ld [bc], a                                    ; $421c: $02
    inc bc                                        ; $421d: $03
    inc bc                                        ; $421e: $03
    rst $38                                       ; $421f: $ff
    ei                                            ; $4220: $fb
    db $fc                                        ; $4221: $fc
    inc bc                                        ; $4222: $03
    db $fc                                        ; $4223: $fc
    ld bc, $80ea                                  ; $4224: $01 $ea $80
    adc [hl]                                      ; $4227: $8e
    ld bc, $03fc                                  ; $4228: $01 $fc $03
    jr c, jr_0c6_41f4                             ; $422b: $38 $c7

    db $fc                                        ; $422d: $fc
    rst $38                                       ; $422e: $ff
    ret nz                                        ; $422f: $c0

    nop                                           ; $4230: $00
    ccf                                           ; $4231: $3f
    ld d, a                                       ; $4232: $57
    xor a                                         ; $4233: $af
    inc bc                                        ; $4234: $03
    rst $38                                       ; $4235: $ff
    db $10                                        ; $4236: $10
    rst $28                                       ; $4237: $ef
    xor d                                         ; $4238: $aa
    ld [$0457], sp                                ; $4239: $08 $57 $04
    rst $38                                       ; $423c: $ff
    ld c, $02                                     ; $423d: $0e $02
    nop                                           ; $423f: $00
    cp b                                          ; $4240: $b8
    ld b, b                                       ; $4241: $40
    ld d, l                                       ; $4242: $55
    nop                                           ; $4243: $00
    ld a, [$fdf2]                                 ; $4244: $fa $f2 $fd

Jump_0c6_4247:
    push af                                       ; $4247: $f5
    ld a, [bc]                                    ; $4248: $0a
    add hl, bc                                    ; $4249: $09
    or $55                                        ; $424a: $f6 $55

jr_0c6_424c:
    nop                                           ; $424c: $00
    xor d                                         ; $424d: $aa
    nop                                           ; $424e: $00
    rst $38                                       ; $424f: $ff
    ld d, c                                       ; $4250: $51
    xor [hl]                                      ; $4251: $ae
    ld e, d                                       ; $4252: $5a
    dec b                                         ; $4253: $05
    add hl, de                                    ; $4254: $19
    nop                                           ; $4255: $00
    rla                                           ; $4256: $17
    dec d                                         ; $4257: $15
    dec de                                        ; $4258: $1b
    dec bc                                        ; $4259: $0b
    dec c                                         ; $425a: $0d
    inc c                                         ; $425b: $0c
    dec bc                                        ; $425c: $0b
    dec bc                                        ; $425d: $0b
    ld bc, $140d                                  ; $425e: $01 $0d $14
    dec de                                        ; $4261: $1b
    dec l                                         ; $4262: $2d
    inc sp                                        ; $4263: $33
    dec l                                         ; $4264: $2d
    inc sp                                        ; $4265: $33
    inc a                                         ; $4266: $3c
    ld d, d                                       ; $4267: $52
    ld d, b                                       ; $4268: $50
    add b                                         ; $4269: $80
    inc a                                         ; $426a: $3c
    ld a, [bc]                                    ; $426b: $0a
    ld bc, $0002                                  ; $426c: $01 $02 $00
    ld [bc], a                                    ; $426f: $02
    nop                                           ; $4270: $00
    dec b                                         ; $4271: $05
    nop                                           ; $4272: $00
    db $10                                        ; $4273: $10
    ld a, [bc]                                    ; $4274: $0a
    nop                                           ; $4275: $00
    inc d                                         ; $4276: $14
    ld [hl], $02                                  ; $4277: $36 $02
    ret nc                                        ; $4279: $d0

    ld bc, $00a1                                  ; $427a: $01 $a1 $00
    db $10                                        ; $427d: $10
    ld b, b                                       ; $427e: $40
    ld bc, $a881                                  ; $427f: $01 $81 $a8
    ld hl, $00ff                                  ; $4282: $21 $ff $00
    sub c                                         ; $4285: $91
    ld h, b                                       ; $4286: $60
    jr nz, jr_0c6_42e9                            ; $4287: $20 $60

    add b                                         ; $4289: $80
    ld l, $0a                                     ; $428a: $2e $0a
    ld e, a                                       ; $428c: $5f
    and b                                         ; $428d: $a0
    adc e                                         ; $428e: $8b
    ld [hl], h                                    ; $428f: $74
    rra                                           ; $4290: $1f
    ld [$dcff], sp                                ; $4291: $08 $ff $dc
    ld h, e                                       ; $4294: $63
    ld a, [$0152]                                 ; $4295: $fa $52 $01
    xor a                                         ; $4298: $af
    ld d, b                                       ; $4299: $50
    sub b                                         ; $429a: $90
    nop                                           ; $429b: $00
    ld l, a                                       ; $429c: $6f
    xor d                                         ; $429d: $aa
    ld d, l                                       ; $429e: $55
    nop                                           ; $429f: $00
    rst $38                                       ; $42a0: $ff
    ld c, d                                       ; $42a1: $4a
    push af                                       ; $42a2: $f5
    ld e, d                                       ; $42a3: $5a
    nop                                           ; $42a4: $00
    ldh [$fe], a                                  ; $42a5: $e0 $fe
    ldh a, [$1f]                                  ; $42a7: $f0 $1f
    ldh [$df], a                                  ; $42a9: $e0 $df
    jr nz, jr_0c6_424c                            ; $42ab: $20 $9f

    ld [$9d60], sp                                ; $42ad: $08 $60 $9d
    ld [c], a                                     ; $42b0: $e2

jr_0c6_42b1:
    db $eb                                        ; $42b1: $eb
    ld l, h                                       ; $42b2: $6c
    ld bc, $0000                                  ; $42b3: $01 $00 $00
    ldh a, [rP1]                                  ; $42b6: $f0 $00
    nop                                           ; $42b8: $00
    sub e                                         ; $42b9: $93
    ld h, b                                       ; $42ba: $60
    cp a                                          ; $42bb: $bf
    ld b, b                                       ; $42bc: $40
    sbc $20                                       ; $42bd: $de $20
    jr jr_0c6_42c1                                ; $42bf: $18 $00

jr_0c6_42c1:
    rst $20                                       ; $42c1: $e7
    jr nz, @+$01                                  ; $42c2: $20 $ff

    call Call_000_3fff                            ; $42c4: $cd $ff $3f
    ld a, a                                       ; $42c7: $7f
    inc sp                                        ; $42c8: $33
    jr nz, jr_0c6_42da                            ; $42c9: $20 $0f

    db $fc                                        ; $42cb: $fc
    nop                                           ; $42cc: $00
    ld bc, $0bf4                                  ; $42cd: $01 $f4 $0b
    jr nz, jr_0c6_42b1                            ; $42d0: $20 $df

    ld b, b                                       ; $42d2: $40
    nop                                           ; $42d3: $00
    cp a                                          ; $42d4: $bf
    inc hl                                        ; $42d5: $23
    rst $38                                       ; $42d6: $ff
    call nc, $f4f8                                ; $42d7: $d4 $f8 $f4

jr_0c6_42da:
    ld hl, sp+$77                                 ; $42da: $f8 $77
    nop                                           ; $42dc: $00
    ld hl, sp+$17                                 ; $42dd: $f8 $17
    ld hl, sp-$6d                                 ; $42df: $f8 $93
    ld a, h                                       ; $42e1: $7c
    cpl                                           ; $42e2: $2f
    ldh a, [$33]                                  ; $42e3: $f0 $33
    nop                                           ; $42e5: $00
    db $fc                                        ; $42e6: $fc
    ei                                            ; $42e7: $fb
    rst $38                                       ; $42e8: $ff

jr_0c6_42e9:
    ld [$0b07], sp                                ; $42e9: $08 $07 $0b
    inc b                                         ; $42ec: $04
    pop af                                        ; $42ed: $f1
    nop                                           ; $42ee: $00
    ld [$0ae5], sp                                ; $42ef: $08 $e5 $0a
    rst $30                                       ; $42f2: $f7
    ld [$08f7], sp                                ; $42f3: $08 $f7 $08
    db $e4                                        ; $42f6: $e4
    add d                                         ; $42f7: $82
    inc e                                         ; $42f8: $1c
    ld bc, $f038                                  ; $42f9: $01 $38 $f0
    ldh [rP1], a                                  ; $42fc: $e0 $00
    or a                                          ; $42fe: $b7
    inc c                                         ; $42ff: $0c
    nop                                           ; $4300: $00
    jp Jump_000_3c00                              ; $4301: $c3 $00 $3c


    reti                                          ; $4304: $d9


    ld a, $3d                                     ; $4305: $3e $3d
    cp $c7                                        ; $4307: $fe $c7
    rst $38                                       ; $4309: $ff
    ld [hl], $04                                  ; $430a: $36 $04
    ld [$0609], sp                                ; $430c: $08 $09 $06
    ld a, [c]                                     ; $430f: $f2
    dec c                                         ; $4310: $0d
    ld [$f309], a                                 ; $4311: $ea $09 $f3
    ld c, $00                                     ; $4314: $0e $00
    rst $30                                       ; $4316: $f7
    rrca                                          ; $4317: $0f
    rst $30                                       ; $4318: $f7
    rst $38                                       ; $4319: $ff
    ld bc, $2c00                                  ; $431a: $01 $00 $2c
    inc sp                                        ; $431d: $33
    add b                                         ; $431e: $80
    ld [bc], a                                    ; $431f: $02
    ld [$6759], sp                                ; $4320: $08 $59 $67
    cp e                                          ; $4323: $bb
    rst $00                                       ; $4324: $c7
    or [hl]                                       ; $4325: $b6
    adc $8e                                       ; $4326: $ce $8e
    rrca                                          ; $4328: $0f
    cp $fc                                        ; $4329: $fe $fc
    db $fc                                        ; $432b: $fc
    rst $38                                       ; $432c: $ff
    adc [hl]                                      ; $432d: $8e
    nop                                           ; $432e: $00
    ld [$650a], a                                 ; $432f: $ea $0a $65
    ld a, [hl+]                                   ; $4332: $2a
    dec bc                                        ; $4333: $0b
    db $10                                        ; $4334: $10
    add b                                         ; $4335: $80
    db $10                                        ; $4336: $10
    ld b, b                                       ; $4337: $40
    ld hl, $bfc0                                  ; $4338: $21 $c0 $bf
    ld b, b                                       ; $433b: $40
    ccf                                           ; $433c: $3f
    ret nz                                        ; $433d: $c0

    sbc a                                         ; $433e: $9f

jr_0c6_433f:
    nop                                           ; $433f: $00
    ld h, b                                       ; $4340: $60
    ccf                                           ; $4341: $3f
    ret nz                                        ; $4342: $c0

    adc a                                         ; $4343: $8f
    ldh a, [$cf]                                  ; $4344: $f0 $cf
    rst $38                                       ; $4346: $ff
    jr nz, jr_0c6_4349                            ; $4347: $20 $00

jr_0c6_4349:
    rra                                           ; $4349: $1f
    ret nc                                        ; $434a: $d0

    ldh [rIF], a                                  ; $434b: $e0 $0f
    ldh a, [$bf]                                  ; $434d: $f0 $bf
    ld b, b                                       ; $434f: $40
    adc a                                         ; $4350: $8f
    nop                                           ; $4351: $00
    ld [hl], b                                    ; $4352: $70
    rst $08                                       ; $4353: $cf
    ld [hl], b                                    ; $4354: $70

jr_0c6_4355:
    rst $28                                       ; $4355: $ef
    ldh a, [$ef]                                  ; $4356: $f0 $ef
    rst $38                                       ; $4358: $ff
    add b                                         ; $4359: $80
    add b                                         ; $435a: $80
    ld l, [hl]                                    ; $435b: $6e
    ld [bc], a                                    ; $435c: $02
    cp a                                          ; $435d: $bf
    ld b, b                                       ; $435e: $40
    cp a                                          ; $435f: $bf
    ld b, b                                       ; $4360: $40
    nop                                           ; $4361: $00
    rst $38                                       ; $4362: $ff
    sbc a                                         ; $4363: $9f
    add b                                         ; $4364: $80
    ld a, [hl+]                                   ; $4365: $2a
    ld [bc], a                                    ; $4366: $02
    rst $38                                       ; $4367: $ff
    ldh a, [$db]                                  ; $4368: $f0 $db
    ldh [$90], a                                  ; $436a: $e0 $90
    ld a, a                                       ; $436c: $7f
    add $42                                       ; $436d: $c6 $42
    ld a, c                                       ; $436f: $79
    xor b                                         ; $4370: $a8
    ld bc, $c0ff                                  ; $4371: $01 $ff $c0
    rst $38                                       ; $4374: $ff
    jp z, $023c                                   ; $4375: $ca $3c $02

    add l                                         ; $4378: $85
    nop                                           ; $4379: $00
    ld a, a                                       ; $437a: $7f
    nop                                           ; $437b: $00
    rst $38                                       ; $437c: $ff
    ld a, a                                       ; $437d: $7f
    add b                                         ; $437e: $80
    ccf                                           ; $437f: $3f
    ret nz                                        ; $4380: $c0

    stop                                          ; $4381: $10 $00
    rst $28                                       ; $4383: $ef
    jr nc, jr_0c6_4355                            ; $4384: $30 $cf

    ld c, h                                       ; $4386: $4c
    or e                                          ; $4387: $b3
    ret nz                                        ; $4388: $c0

    rst $38                                       ; $4389: $ff
    rst $08                                       ; $438a: $cf
    nop                                           ; $438b: $00
    or b                                          ; $438c: $b0
    or l                                          ; $438d: $b5
    ld c, d                                       ; $438e: $4a
    push af                                       ; $438f: $f5
    ld a, [bc]                                    ; $4390: $0a
    xor d                                         ; $4391: $aa
    ld d, l                                       ; $4392: $55
    jr z, jr_0c6_4397                             ; $4393: $28 $02

    rst $38                                       ; $4395: $ff
    ld a, l                                       ; $4396: $7d

jr_0c6_4397:
    rst $38                                       ; $4397: $ff
    ccf                                           ; $4398: $3f
    rst $38                                       ; $4399: $ff
    ld h, c                                       ; $439a: $61
    adc b                                         ; $439b: $88
    inc bc                                        ; $439c: $03

jr_0c6_439d:
    ld l, a                                       ; $439d: $6f
    nop                                           ; $439e: $00
    sub b                                         ; $439f: $90
    adc a                                         ; $43a0: $8f
    ld [hl], b                                    ; $43a1: $70
    ld c, a                                       ; $43a2: $4f
    or b                                          ; $43a3: $b0
    jr jr_0c6_439d                                ; $43a4: $18 $f7

    ccf                                           ; $43a6: $3f
    add b                                         ; $43a7: $80
    inc [hl]                                      ; $43a8: $34
    nop                                           ; $43a9: $00
    ret c                                         ; $43aa: $d8

    daa                                           ; $43ab: $27
    ld [hl-], a                                   ; $43ac: $32
    dec c                                         ; $43ad: $0d
    rst $18                                       ; $43ae: $df
    jr nz, jr_0c6_433f                            ; $43af: $20 $8e

    nop                                           ; $43b1: $00
    ld [hl], b                                    ; $43b2: $70
    sub a                                         ; $43b3: $97
    ld l, b                                       ; $43b4: $68
    rlca                                          ; $43b5: $07
    ld hl, sp+$0f                                 ; $43b6: $f8 $0f
    ldh a, [rIF]                                  ; $43b8: $f0 $0f
    nop                                           ; $43ba: $00
    ldh a, [rNR41]                                ; $43bb: $f0 $20
    rst $38                                       ; $43bd: $ff
    ld [hl], d                                    ; $43be: $72
    cp l                                          ; $43bf: $bd
    db $ec                                        ; $43c0: $ec
    inc bc                                        ; $43c1: $03
    db $fc                                        ; $43c2: $fc
    add b                                         ; $43c3: $80
    ld [bc], a                                    ; $43c4: $02
    nop                                           ; $43c5: $00
    ld hl, sp+$07                                 ; $43c6: $f8 $07
    ld b, a                                       ; $43c8: $47
    cp a                                          ; $43c9: $bf
    rst $00                                       ; $43ca: $c7
    ccf                                           ; $43cb: $3f
    sbc [hl]                                      ; $43cc: $9e
    nop                                           ; $43cd: $00
    ld a, a                                       ; $43ce: $7f
    ccf                                           ; $43cf: $3f
    ld hl, sp+$7a                                 ; $43d0: $f8 $7a
    add l                                         ; $43d2: $85
    db $ed                                        ; $43d3: $ed
    ld [de], a                                    ; $43d4: $12
    cp l                                          ; $43d5: $bd
    nop                                           ; $43d6: $00
    ld b, d                                       ; $43d7: $42
    pop de                                        ; $43d8: $d1
    ld l, $40                                     ; $43d9: $2e $40
    rst $38                                       ; $43db: $ff
    sub $ff                                       ; $43dc: $d6 $ff
    rra                                           ; $43de: $1f
    ld bc, $cef8                                  ; $43df: $01 $f8 $ce
    add hl, sp                                    ; $43e2: $39
    ret nz                                        ; $43e3: $c0

    nop                                           ; $43e4: $00
    sbc c                                         ; $43e5: $99
    nop                                           ; $43e6: $00
    sbc l                                         ; $43e7: $9d
    ld [bc], a                                    ; $43e8: $02
    adc [hl]                                      ; $43e9: $8e
    or d                                          ; $43ea: $b2
    inc bc                                        ; $43eb: $03
    db $fc                                        ; $43ec: $fc
    inc bc                                        ; $43ed: $03
    add e                                         ; $43ee: $83
    ld d, h                                       ; $43ef: $54
    nop                                           ; $43f0: $00
    ld a, [bc]                                    ; $43f1: $0a
    nop                                           ; $43f2: $00
    sub b                                         ; $43f3: $90
    db $10                                        ; $43f4: $10
    ld e, a                                       ; $43f5: $5f
    add b                                         ; $43f6: $80
    inc c                                         ; $43f7: $0c
    ld [$ecf0], sp                                ; $43f8: $08 $f0 $ec
    ldh a, [$ea]                                  ; $43fb: $f0 $ea
    dec d                                         ; $43fd: $15
    call nz, $807b                                ; $43fe: $c4 $7b $80
    sub b                                         ; $4401: $90
    ld [$ffe0], sp                                ; $4402: $08 $e0 $ff
    ld [$bfff], a                                 ; $4405: $ea $ff $bf
    ld a, a                                       ; $4408: $7f
    jp Jump_000_3f04                              ; $4409: $c3 $04 $3f


    and c                                         ; $440c: $a1
    ld e, [hl]                                    ; $440d: $5e
    rst $38                                       ; $440e: $ff
    nop                                           ; $440f: $00
    sub b                                         ; $4410: $90
    ld [$ef10], sp                                ; $4411: $08 $10 $ef
    nop                                           ; $4414: $00
    inc l                                         ; $4415: $2c
    db $d3                                        ; $4416: $d3
    ldh [rIE], a                                  ; $4417: $e0 $ff
    ld h, a                                       ; $4419: $67
    ret c                                         ; $441a: $d8

    ld e, d                                       ; $441b: $5a
    and l                                         ; $441c: $a5
    nop                                           ; $441d: $00
    push af                                       ; $441e: $f5
    ld a, [bc]                                    ; $441f: $0a
    ld l, d                                       ; $4420: $6a
    sub l                                         ; $4421: $95
    ld l, b                                       ; $4422: $68
    rst $38                                       ; $4423: $ff
    dec a                                         ; $4424: $3d
    rst $38                                       ; $4425: $ff
    nop                                           ; $4426: $00
    rra                                           ; $4427: $1f
    rst $38                                       ; $4428: $ff
    ld sp, $c0c0                                  ; $4429: $31 $c0 $c0
    nop                                           ; $442c: $00
    ld l, d                                       ; $442d: $6a
    dec d                                         ; $442e: $15
    nop                                           ; $442f: $00
    and c                                         ; $4430: $a1
    ld e, [hl]                                    ; $4431: $5e
    ld [bc], a                                    ; $4432: $02
    rst $38                                       ; $4433: $ff
    ld e, [hl]                                    ; $4434: $5e
    cp a                                          ; $4435: $bf
    inc [hl]                                      ; $4436: $34
    rst $08                                       ; $4437: $cf
    inc d                                         ; $4438: $14
    ld b, $ff                                     ; $4439: $06 $ff

jr_0c6_443b:
    inc bc                                        ; $443b: $03
    ld [bc], a                                    ; $443c: $02
    nop                                           ; $443d: $00
    ld b, c                                       ; $443e: $41
    inc l                                         ; $443f: $2c
    inc b                                         ; $4440: $04
    ret nz                                        ; $4441: $c0

    nop                                           ; $4442: $00
    ld [$00f3], sp                                ; $4443: $08 $f3 $00
    adc a                                         ; $4446: $8f
    ld bc, $026c                                  ; $4447: $01 $6c $02
    cp $f9                                        ; $444a: $fe $f9
    cp $00                                        ; $444c: $fe $00
    db $fd                                        ; $444e: $fd
    nop                                           ; $444f: $00
    ld c, l                                       ; $4450: $4d
    ld [hl-], a                                   ; $4451: $32
    jr jr_0c6_443b                                ; $4452: $18 $e7

    ld b, b                                       ; $4454: $40
    rst $38                                       ; $4455: $ff
    nop                                           ; $4456: $00
    ret                                           ; $4457: $c9


    rst $30                                       ; $4458: $f7
    di                                            ; $4459: $f3
    rrca                                          ; $445a: $0f
    dec de                                        ; $445b: $1b
    rlca                                          ; $445c: $07
    cp l                                          ; $445d: $bd
    ld b, d                                       ; $445e: $42
    ld b, b                                       ; $445f: $40
    pop bc                                        ; $4460: $c1
    call c, $e603                                 ; $4461: $dc $03 $e6
    add hl, de                                    ; $4464: $19
    inc b                                         ; $4465: $04
    rst $38                                       ; $4466: $ff
    ld hl, sp-$01                                 ; $4467: $f8 $ff
    nop                                           ; $4469: $00
    ld hl, sp-$10                                 ; $446a: $f8 $f0
    ldh [$f0], a                                  ; $446c: $e0 $f0
    rst $38                                       ; $446e: $ff
    nop                                           ; $446f: $00
    rst $20                                       ; $4470: $e7
    jr jr_0c6_4473                                ; $4471: $18 $00

jr_0c6_4473:
    dec b                                         ; $4473: $05
    ld a, [$7f84]                                 ; $4474: $fa $84 $7f
    rrca                                          ; $4477: $0f
    rst $38                                       ; $4478: $ff
    ld b, b                                       ; $4479: $40
    cp a                                          ; $447a: $bf
    nop                                           ; $447b: $00
    ld l, a                                       ; $447c: $6f
    db $10                                        ; $447d: $10
    ld l, $10                                     ; $447e: $2e $10
    db $ed                                        ; $4480: $ed
    ld [de], a                                    ; $4481: $12
    sbc l                                         ; $4482: $9d
    ld [hl], d                                    ; $4483: $72
    db $10                                        ; $4484: $10
    sbc e                                         ; $4485: $9b
    ld [hl], h                                    ; $4486: $74
    ld [hl], c                                    ; $4487: $71
    jr c, jr_0c6_448a                             ; $4488: $38 $00

jr_0c6_448a:
    ld hl, $f0fe                                  ; $448a: $21 $fe $f0
    rrca                                          ; $448d: $0f
    inc b                                         ; $448e: $04
    dec e                                         ; $448f: $1d
    ld [bc], a                                    ; $4490: $02
    cp e                                          ; $4491: $bb
    ld b, h                                       ; $4492: $44
    rst $28                                       ; $4493: $ef
    sbc h                                         ; $4494: $9c
    inc bc                                        ; $4495: $03
    ld a, [$0005]                                 ; $4496: $fa $05 $00
    ld a, e                                       ; $4499: $7b
    add h                                         ; $449a: $84
    ei                                            ; $449b: $fb
    inc b                                         ; $449c: $04
    ld [c], a                                     ; $449d: $e2
    rst $38                                       ; $449e: $ff
    rra                                           ; $449f: $1f
    ldh [rHDMA4], a                               ; $44a0: $e0 $54
    ld a, a                                       ; $44a2: $7f
    ld b, d                                       ; $44a3: $42
    ld [bc], a                                    ; $44a4: $02
    rst $30                                       ; $44a5: $f7
    ld l, h                                       ; $44a6: $6c
    inc b                                         ; $44a7: $04
    db $fc                                        ; $44a8: $fc
    ld a, [hl]                                    ; $44a9: $7e
    inc bc                                        ; $44aa: $03
    ei                                            ; $44ab: $fb
    db $fc                                        ; $44ac: $fc
    nop                                           ; $44ad: $00
    ld c, d                                       ; $44ae: $4a
    or h                                          ; $44af: $b4
    ld e, b                                       ; $44b0: $58
    ld b, $ff                                     ; $44b1: $06 $ff
    nop                                           ; $44b3: $00
    ld a, [c]                                     ; $44b4: $f2
    dec c                                         ; $44b5: $0d
    db $10                                        ; $44b6: $10
    jr nz, @-$1f                                  ; $44b7: $20 $df

    ld [bc], a                                    ; $44b9: $02
    ld a, h                                       ; $44ba: $7c
    inc b                                         ; $44bb: $04
    inc c                                         ; $44bc: $0c
    inc bc                                        ; $44bd: $03
    nop                                           ; $44be: $00
    ld bc, $8000                                  ; $44bf: $01 $00 $80
    inc bc                                        ; $44c2: $03
    or h                                          ; $44c3: $b4
    dec bc                                        ; $44c4: $0b
    ld d, b                                       ; $44c5: $50
    xor a                                         ; $44c6: $af
    nop                                           ; $44c7: $00
    rst $38                                       ; $44c8: $ff
    inc d                                         ; $44c9: $14
    ld d, a                                       ; $44ca: $57
    xor a                                         ; $44cb: $af
    inc b                                         ; $44cc: $04
    ld [hl], e                                    ; $44cd: $73
    inc b                                         ; $44ce: $04
    ret nz                                        ; $44cf: $c0

    ld d, [hl]                                    ; $44d0: $56
    ld bc, $40a0                                  ; $44d1: $01 $a0 $40
    nop                                           ; $44d4: $00
    ld b, b                                       ; $44d5: $40
    add b                                         ; $44d6: $80
    or b                                          ; $44d7: $b0
    ret nz                                        ; $44d8: $c0

    cp h                                          ; $44d9: $bc
    ret nz                                        ; $44da: $c0

    sub c                                         ; $44db: $91
    ldh [rLCDC], a                                ; $44dc: $e0 $40
    ret nz                                        ; $44de: $c0

    sbc h                                         ; $44df: $9c
    inc bc                                        ; $44e0: $03
    ccf                                           ; $44e1: $3f
    rst $38                                       ; $44e2: $ff
    ld a, a                                       ; $44e3: $7f
    nop                                           ; $44e4: $00
    daa                                           ; $44e5: $27
    jr jr_0c6_44e8                                ; $44e6: $18 $00

jr_0c6_44e8:
    ld b, $39                                     ; $44e8: $06 $39
    ret nc                                        ; $44ea: $d0

    ccf                                           ; $44eb: $3f
    pop af                                        ; $44ec: $f1
    ld a, $5e                                     ; $44ed: $3e $5e
    and c                                         ; $44ef: $a1
    inc b                                         ; $44f0: $04
    db $e3                                        ; $44f1: $e3
    ret nz                                        ; $44f2: $c0

    or e                                          ; $44f3: $b3
    call z, $ac60                                 ; $44f4: $cc $60 $ac
    inc b                                         ; $44f7: $04
    add hl, sp                                    ; $44f8: $39
    add $40                                       ; $44f9: $c6 $40
    ld bc, $015e                                  ; $44fb: $01 $5e $01
    ld a, [hl]                                    ; $44fe: $7e
    rst $38                                       ; $44ff: $ff
    ld a, h                                       ; $4500: $7c
    cp $bf                                        ; $4501: $fe $bf
    ld b, b                                       ; $4503: $40
    ld h, d                                       ; $4504: $62
    ld [$085f], sp                                ; $4505: $08 $5f $08
    sbc [hl]                                      ; $4508: $9e
    ld bc, $ff20                                  ; $4509: $01 $20 $ff
    jr nc, @-$75                                  ; $450c: $30 $89

    inc bc                                        ; $450e: $03
    rlca                                          ; $450f: $07
    ld [de], a                                    ; $4510: $12
    nop                                           ; $4511: $00
    ld bc, $02fe                                  ; $4512: $01 $fe $02
    nop                                           ; $4515: $00
    rst $38                                       ; $4516: $ff
    rlca                                          ; $4517: $07
    jr nz, jr_0c6_451b                            ; $4518: $20 $01

    rrca                                          ; $451a: $0f

jr_0c6_451b:
    nop                                           ; $451b: $00
    nop                                           ; $451c: $00
    jr nc, @+$11                                  ; $451d: $30 $0f

    db $e3                                        ; $451f: $e3
    inc e                                         ; $4520: $1c
    ld l, h                                       ; $4521: $6c
    sub d                                         ; $4522: $92
    ldh a, [rNR41]                                ; $4523: $f0 $20
    rrca                                          ; $4525: $0f
    ld h, c                                       ; $4526: $61
    ret c                                         ; $4527: $d8

    nop                                           ; $4528: $00
    pop af                                        ; $4529: $f1
    rst $38                                       ; $452a: $ff
    pop bc                                        ; $452b: $c1
    ccf                                           ; $452c: $3f
    cp $00                                        ; $452d: $fe $00
    ld bc, $03fc                                  ; $452f: $01 $fc $03
    rrca                                          ; $4532: $0f
    nop                                           ; $4533: $00
    adc a                                         ; $4534: $8f
    nop                                           ; $4535: $00
    ld hl, sp-$80                                 ; $4536: $f8 $80
    ld a, [bc]                                    ; $4538: $0a
    inc b                                         ; $4539: $04
    rst $38                                       ; $453a: $ff
    rst $38                                       ; $453b: $ff
    ret                                           ; $453c: $c9


    cp $80                                        ; $453d: $fe $80
    ld a, a                                       ; $453f: $7f
    ld bc, $fe00                                  ; $4540: $01 $00 $fe
    add [hl]                                      ; $4543: $86
    ld a, c                                       ; $4544: $79
    sub l                                         ; $4545: $95
    ld l, d                                       ; $4546: $6a
    nop                                           ; $4547: $00
    rst $38                                       ; $4548: $ff
    add b                                         ; $4549: $80
    ld [$c1ff], sp                                ; $454a: $08 $ff $c1
    rst $38                                       ; $454d: $ff
    rst $00                                       ; $454e: $c7
    ld d, [hl]                                    ; $454f: $56
    dec b                                         ; $4550: $05
    ei                                            ; $4551: $fb
    nop                                           ; $4552: $00
    ld h, e                                       ; $4553: $63
    nop                                           ; $4554: $00
    sbc h                                         ; $4555: $9c
    and b                                         ; $4556: $a0
    ld e, a                                       ; $4557: $5f
    nop                                           ; $4558: $00
    rst $38                                       ; $4559: $ff
    ld [bc], a                                    ; $455a: $02
    db $fd                                        ; $455b: $fd
    or $03                                        ; $455c: $f6 $03
    ld sp, hl                                     ; $455e: $f9
    rst $20                                       ; $455f: $e7
    ld hl, sp+$3f                                 ; $4560: $f8 $3f
    ret nz                                        ; $4562: $c0

    rst $18                                       ; $4563: $df
    inc e                                         ; $4564: $1c
    dec b                                         ; $4565: $05
    nop                                           ; $4566: $00
    dec c                                         ; $4567: $0d
    ld [bc], a                                    ; $4568: $02
    inc bc                                        ; $4569: $03
    db $fc                                        ; $456a: $fc
    db $eb                                        ; $456b: $eb
    rra                                           ; $456c: $1f
    sub a                                         ; $456d: $97
    rrca                                          ; $456e: $0f
    ld b, $0d                                     ; $456f: $06 $0d
    db $fd                                        ; $4571: $fd
    add b                                         ; $4572: $80
    ld l, d                                       ; $4573: $6a
    inc b                                         ; $4574: $04
    pop af                                        ; $4575: $f1
    ld c, $7d                                     ; $4576: $0e $7d

jr_0c6_4578:
    adc [hl]                                      ; $4578: $8e
    inc e                                         ; $4579: $1c
    rst $38                                       ; $457a: $ff
    and b                                         ; $457b: $a0
    ld [$e8f8], sp                                ; $457c: $08 $f8 $e8
    db $10                                        ; $457f: $10
    di                                            ; $4580: $f3
    sub [hl]                                      ; $4581: $96
    ld bc, $03fc                                  ; $4582: $01 $fc $03
    db $fd                                        ; $4585: $fd
    nop                                           ; $4586: $00
    inc bc                                        ; $4587: $03
    ld b, e                                       ; $4588: $43
    cp a                                          ; $4589: $bf
    rlca                                          ; $458a: $07
    rst $38                                       ; $458b: $ff
    ld b, $07                                     ; $458c: $06 $07
    ld a, c                                       ; $458e: $79
    ld [$ff06], sp                                ; $458f: $08 $06 $ff
    ld [bc], a                                    ; $4592: $02
    ret nz                                        ; $4593: $c0

    inc e                                         ; $4594: $1c
    ld [bc], a                                    ; $4595: $02
    ret nc                                        ; $4596: $d0

    rst $38                                       ; $4597: $ff
    add sp, $00                                   ; $4598: $e8 $00
    rst $38                                       ; $459a: $ff
    jp $f8ff                                      ; $459b: $c3 $ff $f8


    rlca                                          ; $459e: $07
    sub b                                         ; $459f: $90
    nop                                           ; $45a0: $00
    ld a, h                                       ; $45a1: $7c
    jr nz, jr_0c6_45a4                            ; $45a2: $20 $00

jr_0c6_45a4:
    add b                                         ; $45a4: $80
    ld [hl+], a                                   ; $45a5: $22
    ld [bc], a                                    ; $45a6: $02
    nop                                           ; $45a7: $00
    rst $38                                       ; $45a8: $ff
    ldh a, [rIE]                                  ; $45a9: $f0 $ff
    ld b, $80                                     ; $45ab: $06 $80
    ld c, h                                       ; $45ad: $4c
    ld [bc], a                                    ; $45ae: $02
    ld bc, $1f00                                  ; $45af: $01 $00 $1f
    nop                                           ; $45b2: $00
    ld l, $d1                                     ; $45b3: $2e $d1
    ccf                                           ; $45b5: $3f
    jr nz, jr_0c6_4578                            ; $45b6: $20 $c0

    ld a, [de]                                    ; $45b8: $1a
    ld c, h                                       ; $45b9: $4c
    ld a, [bc]                                    ; $45ba: $0a
    rst $38                                       ; $45bb: $ff
    ld a, [hl]                                    ; $45bc: $7e
    ld bc, $7887                                  ; $45bd: $01 $87 $78
    inc b                                         ; $45c0: $04
    adc a                                         ; $45c1: $8f
    ld [hl], b                                    ; $45c2: $70
    add c                                         ; $45c3: $81
    ld b, b                                       ; $45c4: $40
    add hl, bc                                    ; $45c5: $09
    ld a, [bc]                                    ; $45c6: $0a
    ld [bc], a                                    ; $45c7: $02
    adc a                                         ; $45c8: $8f
    ldh a, [rP1]                                  ; $45c9: $f0 $00
    rrca                                          ; $45cb: $0f
    rst $38                                       ; $45cc: $ff
    rrca                                          ; $45cd: $0f
    rst $38                                       ; $45ce: $ff
    db $f4                                        ; $45cf: $f4
    dec bc                                        ; $45d0: $0b
    ldh a, [rIF]                                  ; $45d1: $f0 $0f
    ld bc, $20dc                                  ; $45d3: $01 $dc $20
    rst $18                                       ; $45d6: $df
    jr nz, @+$21                                  ; $45d7: $20 $1f

    ldh [$2d], a                                  ; $45d9: $e0 $2d
    sbc h                                         ; $45db: $9c
    dec b                                         ; $45dc: $05
    nop                                           ; $45dd: $00
    add e                                         ; $45de: $83
    ld a, h                                       ; $45df: $7c
    rst $38                                       ; $45e0: $ff
    nop                                           ; $45e1: $00
    ld c, c                                       ; $45e2: $49
    or [hl]                                       ; $45e3: $b6
    db $e3                                        ; $45e4: $e3
    inc e                                         ; $45e5: $1c
    nop                                           ; $45e6: $00
    rst $08                                       ; $45e7: $cf
    ccf                                           ; $45e8: $3f
    ld a, a                                       ; $45e9: $7f
    rst $38                                       ; $45ea: $ff
    rst $30                                       ; $45eb: $f7
    rst $38                                       ; $45ec: $ff
    sbc b                                         ; $45ed: $98
    ldh [rNR11], a                                ; $45ee: $e0 $11
    ldh [rP1], a                                  ; $45f0: $e0 $00
    cp l                                          ; $45f2: $bd
    adc d                                         ; $45f3: $8a
    ld [bc], a                                    ; $45f4: $02
    ld l, b                                       ; $45f5: $68
    sub a                                         ; $45f6: $97
    ld a, [$05b8]                                 ; $45f7: $fa $b8 $05
    nop                                           ; $45fa: $00
    pop de                                        ; $45fb: $d1
    rst $38                                       ; $45fc: $ff
    ld l, h                                       ; $45fd: $6c
    rra                                           ; $45fe: $1f
    inc de                                        ; $45ff: $13
    inc c                                         ; $4600: $0c
    ld l, e                                       ; $4601: $6b
    inc b                                         ; $4602: $04
    ld h, $f8                                     ; $4603: $26 $f8
    rlca                                          ; $4605: $07
    xor h                                         ; $4606: $ac
    nop                                           ; $4607: $00
    rst $38                                       ; $4608: $ff
    rrca                                          ; $4609: $0f
    cp b                                          ; $460a: $b8
    inc b                                         ; $460b: $04
    dec [hl]                                      ; $460c: $35
    inc b                                         ; $460d: $04
    nop                                           ; $460e: $00
    ld d, b                                       ; $460f: $50
    jp c, $0390                                   ; $4610: $da $90 $03

    cp a                                          ; $4613: $bf
    adc [hl]                                      ; $4614: $8e
    dec d                                         ; $4615: $15
    cp $01                                        ; $4616: $fe $01
    xor l                                         ; $4618: $ad
    ld d, e                                       ; $4619: $53
    nop                                           ; $461a: $00
    nop                                           ; $461b: $00
    rst $38                                       ; $461c: $ff
    ld [$94f7], sp                                ; $461d: $08 $f7 $94
    ld l, e                                       ; $4620: $6b
    rst $18                                       ; $4621: $df
    jr nz, jr_0c6_4625                            ; $4622: $20 $01

    adc a                                         ; $4624: $8f

jr_0c6_4625:
    ld [hl], b                                    ; $4625: $70
    nop                                           ; $4626: $00
    rst $38                                       ; $4627: $ff
    ld bc, $97fe                                  ; $4628: $01 $fe $97
    xor $05                                       ; $462b: $ee $05
    ld [bc], a                                    ; $462d: $02
    ld a, $c1                                     ; $462e: $3e $c1
    add c                                         ; $4630: $81
    cp $a7                                        ; $4631: $fe $a7
    jr jr_0c6_46a6                                ; $4633: $18 $71

    ld a, [bc]                                    ; $4635: $0a
    db $e3                                        ; $4636: $e3
    nop                                           ; $4637: $00
    inc e                                         ; $4638: $1c
    db $fc                                        ; $4639: $fc
    di                                            ; $463a: $f3
    and $ff                                       ; $463b: $e6 $ff
    rst $10                                       ; $463d: $d7
    jr z, jr_0c6_465f                             ; $463e: $28 $1f

    ld bc, $f7e0                                  ; $4640: $01 $e0 $f7
    nop                                           ; $4643: $00
    ei                                            ; $4644: $fb
    inc b                                         ; $4645: $04
    rst $20                                       ; $4646: $e7
    rra                                           ; $4647: $1f
    db $10                                        ; $4648: $10
    add hl, bc                                    ; $4649: $09
    adc l                                         ; $464a: $8d
    dec a                                         ; $464b: $3d
    dec b                                         ; $464c: $05
    inc c                                         ; $464d: $0c
    ret nz                                        ; $464e: $c0

    ccf                                           ; $464f: $3f
    ld c, b                                       ; $4650: $48
    dec c                                         ; $4651: $0d
    ld a, [de]                                    ; $4652: $1a
    dec c                                         ; $4653: $0d
    rst $38                                       ; $4654: $ff
    ld a, [de]                                    ; $4655: $1a
    ld [de], a                                    ; $4656: $12
    dec [hl]                                      ; $4657: $35
    inc bc                                        ; $4658: $03
    add b                                         ; $4659: $80
    sub l                                         ; $465a: $95
    inc b                                         ; $465b: $04
    ld a, d                                       ; $465c: $7a
    ld [bc], a                                    ; $465d: $02
    add b                                         ; $465e: $80

jr_0c6_465f:
    inc l                                         ; $465f: $2c
    ld b, $e0                                     ; $4660: $06 $e0
    ld d, d                                       ; $4662: $52
    ld bc, $eb00                                  ; $4663: $01 $00 $eb
    inc d                                         ; $4666: $14
    ld [hl], e                                    ; $4667: $73
    add b                                         ; $4668: $80
    ld a, a                                       ; $4669: $7f
    add b                                         ; $466a: $80
    ld a, $c1                                     ; $466b: $3e $c1
    ld b, d                                       ; $466d: $42
    ld d, e                                       ; $466e: $53
    and b                                         ; $466f: $a0
    jr nz, jr_0c6_46c3                            ; $4670: $20 $51

    xor [hl]                                      ; $4672: $ae
    adc l                                         ; $4673: $8d
    ld [hl], d                                    ; $4674: $72
    sub h                                         ; $4675: $94
    ld [bc], a                                    ; $4676: $02
    rst $38                                       ; $4677: $ff
    ld bc, $ffef                                  ; $4678: $01 $ef $ff
    ld [hl], b                                    ; $467b: $70
    add b                                         ; $467c: $80
    ldh [rP1], a                                  ; $467d: $e0 $00
    ld a, e                                       ; $467f: $7b
    inc e                                         ; $4680: $1c
    nop                                           ; $4681: $00
    db $10                                        ; $4682: $10
    and b                                         ; $4683: $a0
    ld e, a                                       ; $4684: $5f
    add sp, $4a                                   ; $4685: $e8 $4a
    nop                                           ; $4687: $00
    and e                                         ; $4688: $a3
    rst $38                                       ; $4689: $ff
    ret nc                                        ; $468a: $d0

    ld a, $00                                     ; $468b: $3e $00
    ld [hl+], a                                   ; $468d: $22
    inc e                                         ; $468e: $1c
    ld e, e                                       ; $468f: $5b
    inc b                                         ; $4690: $04
    ld sp, hl                                     ; $4691: $f9
    ld b, $01                                     ; $4692: $06 $01
    cp $06                                        ; $4694: $fe $06
    xor $f1                                       ; $4696: $ee $f1
    ld bc, $c6ff                                  ; $4698: $01 $ff $c6
    ld b, $05                                     ; $469b: $06 $05
    add hl, bc                                    ; $469d: $09
    add hl, bc                                    ; $469e: $09
    rst $28                                       ; $469f: $ef
    adc b                                         ; $46a0: $88
    ld l, d                                       ; $46a1: $6a
    ld b, $8f                                     ; $46a2: $06 $8f
    ldh a, [$c0]                                  ; $46a4: $f0 $c0

jr_0c6_46a6:
    ld a, d                                       ; $46a6: $7a
    ld b, $1f                                     ; $46a7: $06 $1f
    rst $38                                       ; $46a9: $ff
    pop af                                        ; $46aa: $f1
    add b                                         ; $46ab: $80
    ld a, [$b203]                                 ; $46ac: $fa $03 $b2
    ld c, l                                       ; $46af: $4d
    pop hl                                        ; $46b0: $e1
    ld e, $f0                                     ; $46b1: $1e $f0
    rrca                                          ; $46b3: $0f
    rlca                                          ; $46b4: $07
    nop                                           ; $46b5: $00
    rst $38                                       ; $46b6: $ff
    rst $30                                       ; $46b7: $f7
    ld hl, sp-$18                                 ; $46b8: $f8 $e8
    ldh a, [$df]                                  ; $46ba: $f0 $df
    ldh [$5f], a                                  ; $46bc: $e0 $5f
    nop                                           ; $46be: $00
    ldh [rBGP], a                                 ; $46bf: $e0 $47
    ld hl, sp-$02                                 ; $46c1: $f8 $fe

jr_0c6_46c3:
    ld bc, $8778                                  ; $46c3: $01 $78 $87
    db $fc                                        ; $46c6: $fc
    nop                                           ; $46c7: $00
    rst $38                                       ; $46c8: $ff
    add b                                         ; $46c9: $80
    ld a, a                                       ; $46ca: $7f
    dec de                                        ; $46cb: $1b
    inc b                                         ; $46cc: $04
    ldh a, [$0c]                                  ; $46cd: $f0 $0c
    ld [c], a                                     ; $46cf: $e2
    ld [$f30d], sp                                ; $46d0: $08 $0d $f3
    inc c                                         ; $46d3: $0c
    ld [bc], a                                    ; $46d4: $02
    call z, $0301                                 ; $46d5: $cc $01 $03
    rst $38                                       ; $46d8: $ff
    ld e, [hl]                                    ; $46d9: $5e
    nop                                           ; $46da: $00
    and b                                         ; $46db: $a0
    ldh a, [rP1]                                  ; $46dc: $f0 $00
    sbc c                                         ; $46de: $99
    ld b, $f9                                     ; $46df: $06 $f9
    ld b, $e0                                     ; $46e1: $06 $e0
    nop                                           ; $46e3: $00
    rra                                           ; $46e4: $1f
    ld [de], a                                    ; $46e5: $12
    db $ed                                        ; $46e6: $ed
    add b                                         ; $46e7: $80
    rst $38                                       ; $46e8: $ff
    sub [hl]                                      ; $46e9: $96
    jp hl                                         ; $46ea: $e9


    rla                                           ; $46eb: $17
    ldh [$96], a                                  ; $46ec: $e0 $96
    inc b                                         ; $46ee: $04
    rst $20                                       ; $46ef: $e7
    ld bc, $0678                                  ; $46f0: $01 $78 $06
    sbc a                                         ; $46f3: $9f
    ld h, b                                       ; $46f4: $60
    rrca                                          ; $46f5: $0f
    ldh a, [rWX]                                  ; $46f6: $f0 $4b
    nop                                           ; $46f8: $00
    db $f4                                        ; $46f9: $f4
    ld c, l                                       ; $46fa: $4d
    ldh a, [$78]                                  ; $46fb: $f0 $78
    ldh a, [rNR34]                                ; $46fd: $f0 $1e
    ldh [$9b], a                                  ; $46ff: $e0 $9b
    nop                                           ; $4701: $00
    ld h, b                                       ; $4702: $60
    ld e, $e0                                     ; $4703: $1e $e0
    db $e4                                        ; $4705: $e4
    rra                                           ; $4706: $1f
    ld e, c                                       ; $4707: $59
    cp [hl]                                       ; $4708: $be
    and e                                         ; $4709: $a3
    nop                                           ; $470a: $00
    ld e, [hl]                                    ; $470b: $5e
    xor a                                         ; $470c: $af
    db $10                                        ; $470d: $10
    rrca                                          ; $470e: $0f
    db $10                                        ; $470f: $10
    di                                            ; $4710: $f3
    inc c                                         ; $4711: $0c
    di                                            ; $4712: $f3
    ld hl, $cf00                                  ; $4713: $21 $00 $cf
    add sp, $06                                   ; $4716: $e8 $06
    rst $30                                       ; $4718: $f7

jr_0c6_4719:
    nop                                           ; $4719: $00
    sbc $01                                       ; $471a: $de $01
    ld d, $07                                     ; $471c: $16 $07
    db $10                                        ; $471e: $10
    cp $e1                                        ; $471f: $fe $e1
    ld e, $ba                                     ; $4721: $1e $ba
    add hl, bc                                    ; $4723: $09
    ld c, e                                       ; $4724: $4b
    or a                                          ; $4725: $b7
    rst $30                                       ; $4726: $f7
    rrca                                          ; $4727: $0f
    inc b                                         ; $4728: $04
    inc bc                                        ; $4729: $03
    rst $38                                       ; $472a: $ff
    ld c, b                                       ; $472b: $48
    or a                                          ; $472c: $b7
    rst $08                                       ; $472d: $cf
    cp d                                          ; $472e: $ba
    ld de, $00ff                                  ; $472f: $11 $ff $00
    ld bc, $fe81                                  ; $4732: $01 $81 $fe
    and $f9                                       ; $4735: $e6 $f9
    add b                                         ; $4737: $80
    rst $38                                       ; $4738: $ff
    ld h, e                                       ; $4739: $63
    sub [hl]                                      ; $473a: $96
    ld b, $51                                     ; $473b: $06 $51
    ld e, a                                       ; $473d: $5f
    xor $04                                       ; $473e: $ee $04
    ld a, e                                       ; $4740: $7b
    call z, $cf03                                 ; $4741: $cc $03 $cf
    ldh a, [$e0]                                  ; $4744: $f0 $e0
    cp h                                          ; $4746: $bc
    inc bc                                        ; $4747: $03
    jr nz, jr_0c6_4719                            ; $4748: $20 $cf

    ccf                                           ; $474a: $3f
    sbc b                                         ; $474b: $98
    inc c                                         ; $474c: $0c
    db $ec                                        ; $474d: $ec
    inc de                                        ; $474e: $13
    pop af                                        ; $474f: $f1
    ld c, $f8                                     ; $4750: $0e $f8
    ld h, c                                       ; $4752: $61
    rlca                                          ; $4753: $07
    ld e, b                                       ; $4754: $58
    dec c                                         ; $4755: $0d
    sbc b                                         ; $4756: $98
    inc e                                         ; $4757: $1c
    sub c                                         ; $4758: $91
    ld a, [hl]                                    ; $4759: $7e
    ld sp, hl                                     ; $475a: $f9
    ld b, $96                                     ; $475b: $06 $96
    dec b                                         ; $475d: $05
    nop                                           ; $475e: $00
    rst $38                                       ; $475f: $ff
    and d                                         ; $4760: $a2
    rra                                           ; $4761: $1f
    ld e, $0f                                     ; $4762: $1e $0f
    ld a, b                                       ; $4764: $78
    rlca                                          ; $4765: $07
    reti                                          ; $4766: $d9


    nop                                           ; $4767: $00
    ld b, $78                                     ; $4768: $06 $78
    rlca                                          ; $476a: $07
    add c                                         ; $476b: $81
    ld a, [hl]                                    ; $476c: $7e
    ld [bc], a                                    ; $476d: $02
    db $fd                                        ; $476e: $fd
    pop de                                        ; $476f: $d1
    ld h, $ff                                     ; $4770: $26 $ff
    db $fc                                        ; $4772: $fc
    sub c                                         ; $4773: $91
    ld b, $23                                     ; $4774: $06 $23
    call c, Call_000_0e46                         ; $4776: $dc $46 $0e
    adc [hl]                                      ; $4779: $8e
    ld a, [bc]                                    ; $477a: $0a
    rra                                           ; $477b: $1f
    jr @+$01                                      ; $477c: $18 $ff

    or b                                          ; $477e: $b0
    ret nz                                        ; $477f: $c0

    cp d                                          ; $4780: $ba
    dec b                                         ; $4781: $05
    ld d, $07                                     ; $4782: $16 $07
    ret nz                                        ; $4784: $c0

    ccf                                           ; $4785: $3f
    sbc a                                         ; $4786: $9f
    ld [$e7e0], sp                                ; $4787: $08 $e0 $e7
    ld hl, sp-$09                                 ; $478a: $f8 $f7
    ld e, b                                       ; $478c: $58
    inc b                                         ; $478d: $04
    ld e, d                                       ; $478e: $5a
    and l                                         ; $478f: $a5
    jp hl                                         ; $4790: $e9


    nop                                           ; $4791: $00
    ld d, $d6                                     ; $4792: $16 $d6
    add hl, hl                                    ; $4794: $29
    ret nc                                        ; $4795: $d0

    rst $38                                       ; $4796: $ff
    rst $30                                       ; $4797: $f7
    ld [$84c4], sp                                ; $4798: $08 $c4 $84
    push bc                                       ; $479b: $c5
    inc bc                                        ; $479c: $03
    inc a                                         ; $479d: $3c

jr_0c6_479e:
    ld hl, sp+$67                                 ; $479e: $f8 $67
    sbc b                                         ; $47a0: $98
    or $01                                        ; $47a1: $f6 $01
    ld [hl], b                                    ; $47a3: $70
    jr jr_0c6_47a6                                ; $47a4: $18 $00

jr_0c6_47a6:
    rst $30                                       ; $47a6: $f7
    db $f4                                        ; $47a7: $f4
    rrca                                          ; $47a8: $0f
    ld c, $ff                                     ; $47a9: $0e $ff
    di                                            ; $47ab: $f3
    rst $38                                       ; $47ac: $ff
    dec e                                         ; $47ad: $1d
    nop                                           ; $47ae: $00
    ld [bc], a                                    ; $47af: $02
    rst $28                                       ; $47b0: $ef
    db $10                                        ; $47b1: $10
    rst $20                                       ; $47b2: $e7
    jr jr_0c6_479e                                ; $47b3: $18 $e9

    ld d, $01                                     ; $47b5: $16 $01
    nop                                           ; $47b7: $00
    cp $7e                                        ; $47b8: $fe $7e
    add c                                         ; $47ba: $81
    ld a, [hl]                                    ; $47bb: $7e
    add c                                         ; $47bc: $81
    cp $ff                                        ; $47bd: $fe $ff
    ret nz                                        ; $47bf: $c0

    add hl, bc                                    ; $47c0: $09
    nop                                           ; $47c1: $00
    db $fd                                        ; $47c2: $fd
    nop                                           ; $47c3: $00
    sbc a                                         ; $47c4: $9f
    ld c, l                                       ; $47c5: $4d
    db $10                                        ; $47c6: $10
    ccf                                           ; $47c7: $3f
    ldh [$c3], a                                  ; $47c8: $e0 $c3
    inc b                                         ; $47ca: $04
    db $10                                        ; $47cb: $10
    rst $38                                       ; $47cc: $ff
    stop                                          ; $47cd: $10 $00
    inc l                                         ; $47cf: $2c
    ld a, [bc]                                    ; $47d0: $0a
    adc e                                         ; $47d1: $8b
    ld [hl], h                                    ; $47d2: $74
    inc c                                         ; $47d3: $0c
    di                                            ; $47d4: $f3
    nop                                           ; $47d5: $00
    rst $28                                       ; $47d6: $ef
    db $10                                        ; $47d7: $10
    rra                                           ; $47d8: $1f
    ldh [$e0], a                                  ; $47d9: $e0 $e0
    rst $38                                       ; $47db: $ff
    sub c                                         ; $47dc: $91
    ld e, $00                                     ; $47dd: $1e $00
    sub a                                         ; $47df: $97
    ld l, b                                       ; $47e0: $68
    ld c, h                                       ; $47e1: $4c
    or b                                          ; $47e2: $b0
    rst $08                                       ; $47e3: $cf
    jr nc, @-$6f                                  ; $47e4: $30 $8f

    ld [hl], b                                    ; $47e6: $70
    ld bc, $1fe8                                  ; $47e7: $01 $e8 $1f
    adc a                                         ; $47ea: $8f
    ld a, a                                       ; $47eb: $7f
    ld h, a                                       ; $47ec: $67
    sbc a                                         ; $47ed: $9f
    ret nz                                        ; $47ee: $c0

    cp h                                          ; $47ef: $bc
    ld [bc], a                                    ; $47f0: $02
    ld b, c                                       ; $47f1: $41
    ld [hl], a                                    ; $47f2: $77
    or [hl]                                       ; $47f3: $b6
    rlca                                          ; $47f4: $07
    db $fc                                        ; $47f5: $fc
    inc bc                                        ; $47f6: $03
    db $f4                                        ; $47f7: $f4
    dec bc                                        ; $47f8: $0b
    ld c, h                                       ; $47f9: $4c
    db $e3                                        ; $47fa: $e3
    inc e                                         ; $47fb: $1c
    pop bc                                        ; $47fc: $c1
    call nc, $9407                                ; $47fd: $d4 $07 $94
    rrca                                          ; $4800: $0f
    ld h, b                                       ; $4801: $60
    sbc a                                         ; $4802: $9f
    add b                                         ; $4803: $80
    rst $38                                       ; $4804: $ff
    ld a, [hl-]                                   ; $4805: $3a
    and $06                                       ; $4806: $e6 $06
    inc c                                         ; $4808: $0c
    jr nz, @+$01                                  ; $4809: $20 $ff

    jp nz, $b87d                                  ; $480b: $c2 $7d $b8

    inc c                                         ; $480e: $0c
    ld l, b                                       ; $480f: $68
    dec e                                         ; $4810: $1d
    jp c, Jump_000_00fc                           ; $4811: $da $fc $00

    nop                                           ; $4814: $00
    rst $38                                       ; $4815: $ff
    ccf                                           ; $4816: $3f
    ret nz                                        ; $4817: $c0

    rra                                           ; $4818: $1f
    ldh [rDIV], a                                 ; $4819: $e0 $04
    ei                                            ; $481b: $fb
    db $10                                        ; $481c: $10
    rla                                           ; $481d: $17
    ld hl, sp+$18                                 ; $481e: $f8 $18
    ld a, [$0201]                                 ; $4820: $fa $01 $02
    ld bc, $d22d                                  ; $4823: $01 $2d $d2
    dec b                                         ; $4826: $05
    cp $01                                        ; $4827: $fe $01
    push hl                                       ; $4829: $e5
    ld a, [de]                                    ; $482a: $1a
    dec b                                         ; $482b: $05
    ld e, c                                       ; $482c: $59
    rlca                                          ; $482d: $07
    or e                                          ; $482e: $b3
    inc [hl]                                      ; $482f: $34
    dec b                                         ; $4830: $05
    nop                                           ; $4831: $00
    ld l, $fd                                     ; $4832: $2e $fd
    rrca                                          ; $4834: $0f
    nop                                           ; $4835: $00
    ld [bc], a                                    ; $4836: $02
    ld bc, $0700                                  ; $4837: $01 $00 $07
    nop                                           ; $483a: $00
    cp e                                          ; $483b: $bb
    rlca                                          ; $483c: $07

jr_0c6_483d:
    add b                                         ; $483d: $80
    ld a, a                                       ; $483e: $7f
    ld [hl], b                                    ; $483f: $70
    adc a                                         ; $4840: $8f
    nop                                           ; $4841: $00
    rst $38                                       ; $4842: $ff
    nop                                           ; $4843: $00
    ld a, $c0                                     ; $4844: $3e $c0
    di                                            ; $4846: $f3
    nop                                           ; $4847: $00
    inc sp                                        ; $4848: $33
    call z, $bc43                                 ; $4849: $cc $43 $bc
    inc d                                         ; $484c: $14
    nop                                           ; $484d: $00
    rst $38                                       ; $484e: $ff
    ei                                            ; $484f: $fb
    ld [hl-], a                                   ; $4850: $32
    rlca                                          ; $4851: $07
    jp Jump_000_1616                              ; $4852: $c3 $16 $16


    cp $01                                        ; $4855: $fe $01
    db $10                                        ; $4857: $10
    adc $31                                       ; $4858: $ce $31
    ld [$04e6], sp                                ; $485a: $08 $e6 $04
    ldh a, [rIE]                                  ; $485d: $f0 $ff
    ret z                                         ; $485f: $c8

    scf                                           ; $4860: $37
    ld bc, $0e31                                  ; $4861: $01 $31 $0e
    db $e3                                        ; $4864: $e3
    inc e                                         ; $4865: $1c
    ld [bc], a                                    ; $4866: $02
    db $fd                                        ; $4867: $fd
    add [hl]                                      ; $4868: $86
    jr jr_0c6_486f                                ; $4869: $18 $04

    ld b, b                                       ; $486b: $40
    add e                                         ; $486c: $83
    rst $08                                       ; $486d: $cf
    inc b                                         ; $486e: $04

jr_0c6_486f:
    ld [$3cff], sp                                ; $486f: $08 $ff $3c
    rst $18                                       ; $4872: $df
    rst $00                                       ; $4873: $c7
    inc a                                         ; $4874: $3c
    jr nz, jr_0c6_483d                            ; $4875: $20 $c6

    dec a                                         ; $4877: $3d

jr_0c6_4878:
    ld e, d                                       ; $4878: $5a
    ld [$37c8], sp                                ; $4879: $08 $c8 $37
    ld hl, sp+$07                                 ; $487c: $f8 $07
    inc sp                                        ; $487e: $33
    inc b                                         ; $487f: $04
    rst $08                                       ; $4880: $cf
    ld b, a                                       ; $4881: $47
    cp a                                          ; $4882: $bf
    cp l                                          ; $4883: $bd
    ld b, d                                       ; $4884: $42
    jr z, jr_0c6_4894                             ; $4885: $28 $0d

    cpl                                           ; $4887: $2f
    ret nc                                        ; $4888: $d0

    ld [de], a                                    ; $4889: $12
    ld [hl], h                                    ; $488a: $74
    rst $38                                       ; $488b: $ff
    ld a, h                                       ; $488c: $7c
    inc a                                         ; $488d: $3c
    dec b                                         ; $488e: $05
    db $fc                                        ; $488f: $fc
    add e                                         ; $4890: $83
    jp nz, Jump_000_2f0f                          ; $4891: $c2 $0f $2f

jr_0c6_4894:
    nop                                           ; $4894: $00
    ret nc                                        ; $4895: $d0

    ccf                                           ; $4896: $3f
    ret nz                                        ; $4897: $c0

    inc b                                         ; $4898: $04
    ld hl, sp-$49                                 ; $4899: $f8 $b7
    ld hl, sp-$04                                 ; $489b: $f8 $fc
    db $10                                        ; $489d: $10
    rst $00                                       ; $489e: $c7
    ld a, c                                       ; $489f: $79
    rst $00                                       ; $48a0: $c7
    ld [c], a                                     ; $48a1: $e2
    inc c                                         ; $48a2: $0c
    db $fd                                        ; $48a3: $fd
    ld [bc], a                                    ; $48a4: $02
    ldh [$1f], a                                  ; $48a5: $e0 $1f
    and b                                         ; $48a7: $a0
    jp z, $070e                                   ; $48a8: $ca $0e $07

    ld [$fe07], a                                 ; $48ab: $ea $07 $fe
    nop                                           ; $48ae: $00
    push bc                                       ; $48af: $c5
    ld a, [hl-]                                   ; $48b0: $3a
    add b                                         ; $48b1: $80
    ld [$057f], sp                                ; $48b2: $08 $7f $05
    cp $bf                                        ; $48b5: $fe $bf
    ld a, b                                       ; $48b7: $78
    dec d                                         ; $48b8: $15
    call c, Call_0c6_64e0                         ; $48b9: $dc $e0 $64
    ld b, c                                       ; $48bc: $41
    dec de                                        ; $48bd: $1b
    sbc b                                         ; $48be: $98
    dec bc                                        ; $48bf: $0b
    and a                                         ; $48c0: $a7
    ld e, a                                       ; $48c1: $5f
    ldh [rIE], a                                  ; $48c2: $e0 $ff
    push hl                                       ; $48c4: $e5
    add sp, $04                                   ; $48c5: $e8 $04
    db $10                                        ; $48c7: $10
    ret nz                                        ; $48c8: $c0

    ccf                                           ; $48c9: $3f
    or b                                          ; $48ca: $b0
    jr z, jr_0c6_48d1                             ; $48cb: $28 $04

    cp b                                          ; $48cd: $b8
    ret nz                                        ; $48ce: $c0

    cp a                                          ; $48cf: $bf
    ret nz                                        ; $48d0: $c0

jr_0c6_48d1:
    nop                                           ; $48d1: $00
    inc b                                         ; $48d2: $04
    ei                                            ; $48d3: $fb
    sbc e                                         ; $48d4: $9b
    db $e4                                        ; $48d5: $e4
    ld hl, sp-$01                                 ; $48d6: $f8 $ff
    cp b                                          ; $48d8: $b8
    rst $30                                       ; $48d9: $f7
    ld bc, $003f                                  ; $48da: $01 $3f $00
    ld [$0007], sp                                ; $48dd: $08 $07 $00
    rrca                                          ; $48e0: $0f
    ld [hl], h                                    ; $48e1: $74
    ld c, h                                       ; $48e2: $4c
    ld [bc], a                                    ; $48e3: $02
    nop                                           ; $48e4: $00
    add e                                         ; $48e5: $83
    ld a, a                                       ; $48e6: $7f
    rlca                                          ; $48e7: $07
    ld hl, sp-$08                                 ; $48e8: $f8 $f8
    nop                                           ; $48ea: $00
    call z, RST_00                                ; $48eb: $cc $00 $00
    rst $08                                       ; $48ee: $cf
    jr nc, jr_0c6_4878                            ; $48ef: $30 $87

    ld a, b                                       ; $48f1: $78
    nop                                           ; $48f2: $00
    rst $38                                       ; $48f3: $ff
    ld l, $ff                                     ; $48f4: $2e $ff
    ld e, b                                       ; $48f6: $58

jr_0c6_48f7:
    ld a, $e8                                     ; $48f7: $3e $e8
    inc b                                         ; $48f9: $04
    rst $38                                       ; $48fa: $ff
    xor d                                         ; $48fb: $aa
    ld b, $66                                     ; $48fc: $06 $66
    ld c, $fc                                     ; $48fe: $0e $fc
    inc bc                                        ; $4900: $03
    cp $00                                        ; $4901: $fe $00

Call_0c6_4903:
    rrca                                          ; $4903: $0f
    inc de                                        ; $4904: $13
    db $ec                                        ; $4905: $ec
    db $fc                                        ; $4906: $fc
    ldh a, [$cc]                                  ; $4907: $f0 $cc
    di                                            ; $4909: $f3
    dec bc                                        ; $490a: $0b
    ld [$0ff4], sp                                ; $490b: $08 $f4 $0f
    ldh a, [$0d]                                  ; $490e: $f0 $0d
    cp $07                                        ; $4910: $fe $07
    inc hl                                        ; $4912: $23
    rst $18                                       ; $4913: $df
    rst $08                                       ; $4914: $cf
    nop                                           ; $4915: $00
    ccf                                           ; $4916: $3f
    rst $28                                       ; $4917: $ef
    rra                                           ; $4918: $1f
    rst $30                                       ; $4919: $f7
    ld [$48b0], sp                                ; $491a: $08 $b0 $48
    pop bc                                        ; $491d: $c1
    ld d, b                                       ; $491e: $50
    ld a, $18                                     ; $491f: $3e $18
    inc bc                                        ; $4921: $03
    db $fc                                        ; $4922: $fc
    add sp, $04                                   ; $4923: $e8 $04
    ldh [$c0], a                                  ; $4925: $e0 $c0
    ldh [rIE], a                                  ; $4927: $e0 $ff
    and b                                         ; $4929: $a0
    xor d                                         ; $492a: $aa
    inc bc                                        ; $492b: $03
    rra                                           ; $492c: $1f
    jr z, jr_0c6_4943                             ; $492d: $28 $14

    ld b, b                                       ; $492f: $40
    cp a                                          ; $4930: $bf
    ld h, a                                       ; $4931: $67
    jr jr_0c6_495b                                ; $4932: $18 $27

    ld bc, $ee18                                  ; $4934: $01 $18 $ee
    ld de, $3cc3                                  ; $4937: $11 $c3 $3c
    db $d2, $2d, $28                              ; $493a: $d2 $2d $28

    inc c                                         ; $493d: $0c
    nop                                           ; $493e: $00
    ld [$fcff], sp                                ; $493f: $08 $ff $fc
    inc bc                                        ; $4942: $03

jr_0c6_4943:
    rlca                                          ; $4943: $07
    nop                                           ; $4944: $00
    ld e, [hl]                                    ; $4945: $5e
    and c                                         ; $4946: $a1
    ld [$47b8], sp                                ; $4947: $08 $b8 $47
    ld e, b                                       ; $494a: $58
    and a                                         ; $494b: $a7
    ld a, d                                       ; $494c: $7a
    inc c                                         ; $494d: $0c
    ld a, a                                       ; $494e: $7f
    add b                                         ; $494f: $80
    ld e, $00                                     ; $4950: $1e $00
    rst $38                                       ; $4952: $ff
    ld h, c                                       ; $4953: $61
    sbc [hl]                                      ; $4954: $9e
    ld c, a                                       ; $4955: $4f
    or b                                          ; $4956: $b0
    ld a, a                                       ; $4957: $7f
    add b                                         ; $4958: $80
    scf                                           ; $4959: $37
    nop                                           ; $495a: $00

jr_0c6_495b:
    ret z                                         ; $495b: $c8

    dec de                                        ; $495c: $1b
    db $e4                                        ; $495d: $e4
    ret nz                                        ; $495e: $c0

    ccf                                           ; $495f: $3f
    ld a, a                                       ; $4960: $7f
    add b                                         ; $4961: $80
    ld l, a                                       ; $4962: $6f
    ld [$f6ff], sp                                ; $4963: $08 $ff $f6
    add hl, bc                                    ; $4966: $09
    or $09                                        ; $4967: $f6 $09
    ld a, [de]                                    ; $4969: $1a
    nop                                           ; $496a: $00
    scf                                           ; $496b: $37
    ret z                                         ; $496c: $c8

    nop                                           ; $496d: $00
    rst $08                                       ; $496e: $cf
    ccf                                           ; $496f: $3f
    call c, $d0e0                                 ; $4970: $dc $e0 $d0
    jr nz, jr_0c6_48f7                            ; $4973: $20 $82

    ld [hl], b                                    ; $4975: $70
    nop                                           ; $4976: $00
    rst $28                                       ; $4977: $ef
    db $10                                        ; $4978: $10
    adc a                                         ; $4979: $8f
    ld [hl], b                                    ; $497a: $70
    adc a                                         ; $497b: $8f
    ld [hl], b                                    ; $497c: $70
    jp hl                                         ; $497d: $e9


    halt                                          ; $497e: $76
    nop                                           ; $497f: $00
    cp $ff                                        ; $4980: $fe $ff
    jr c, jr_0c6_498b                             ; $4982: $38 $07

    ld bc, $0103                                  ; $4984: $01 $03 $01
    rrca                                          ; $4987: $0f
    ld b, d                                       ; $4988: $42
    pop af                                        ; $4989: $f1
    ld [bc], a                                    ; $498a: $02

jr_0c6_498b:
    nop                                           ; $498b: $00
    di                                            ; $498c: $f3
    rrca                                          ; $498d: $0f
    rrca                                          ; $498e: $0f
    rst $38                                       ; $498f: $ff
    ld hl, sp+$0c                                 ; $4990: $f8 $0c
    add b                                         ; $4992: $80
    jp $1002                                      ; $4993: $c3 $02 $10


    db $fc                                        ; $4996: $fc
    inc b                                         ; $4997: $04
    rst $38                                       ; $4998: $ff
    ret c                                         ; $4999: $d8

    rst $38                                       ; $499a: $ff
    adc b                                         ; $499b: $88
    ld e, $03                                     ; $499c: $1e $03
    ld hl, sp+$0c                                 ; $499e: $f8 $0c
    add b                                         ; $49a0: $80
    jr c, jr_0c6_49bf                             ; $49a1: $38 $1c

    ld hl, sp-$01                                 ; $49a3: $f8 $ff
    cp $0f                                        ; $49a5: $fe $0f
    scf                                           ; $49a7: $37
    ret z                                         ; $49a8: $c8

    ld hl, sp+$00                                 ; $49a9: $f8 $00
    ldh a, [$ee]                                  ; $49ab: $f0 $ee
    pop af                                        ; $49ad: $f1
    add hl, bc                                    ; $49ae: $09
    or $0f                                        ; $49af: $f6 $0f
    ldh a, [rTMA]                                 ; $49b1: $f0 $06
    add b                                         ; $49b3: $80
    call nz, Call_0c6_6705                        ; $49b4: $c4 $05 $67
    sbc a                                         ; $49b7: $9f
    adc a                                         ; $49b8: $8f
    ld a, a                                       ; $49b9: $7f
    rst $28                                       ; $49ba: $ef
    rra                                           ; $49bb: $1f
    di                                            ; $49bc: $f3
    nop                                           ; $49bd: $00
    inc c                                         ; $49be: $0c

jr_0c6_49bf:
    sub b                                         ; $49bf: $90
    ld l, h                                       ; $49c0: $6c
    pop hl                                        ; $49c1: $e1
    ld e, $c1                                     ; $49c2: $1e $c1
    cp $f1                                        ; $49c4: $fe $f1
    nop                                           ; $49c6: $00
    cp $30                                        ; $49c7: $fe $30
    rst $08                                       ; $49c9: $cf
    or $ff                                        ; $49ca: $f6 $ff
    ld l, a                                       ; $49cc: $6f
    sub b                                         ; $49cd: $90
    ld l, a                                       ; $49ce: $6f
    add b                                         ; $49cf: $80
    ld a, c                                       ; $49d0: $79
    ld [de], a                                    ; $49d1: $12
    rst $30                                       ; $49d2: $f7
    ld [$1fe0], sp                                ; $49d3: $08 $e0 $1f
    ld d, b                                       ; $49d6: $50
    add hl, bc                                    ; $49d7: $09
    ld h, a                                       ; $49d8: $67
    ld b, $20                                     ; $49d9: $06 $20
    ld bc, $0200                                  ; $49db: $01 $00 $02
    jr z, jr_0c6_4a23                             ; $49de: $28 $43

    nop                                           ; $49e0: $00
    dec d                                         ; $49e1: $15
    nop                                           ; $49e2: $00
    xor a                                         ; $49e3: $af
    nop                                           ; $49e4: $00
    nop                                           ; $49e5: $00
    ld h, a                                       ; $49e6: $67
    inc h                                         ; $49e7: $24
    ld a, a                                       ; $49e8: $7f
    ld a, [hl+]                                   ; $49e9: $2a
    ld e, a                                       ; $49ea: $5f
    add hl, sp                                    ; $49eb: $39
    ld c, a                                       ; $49ec: $4f
    nop                                           ; $49ed: $00
    jr c, @+$51                                   ; $49ee: $38 $4f

    ld a, [hl-]                                   ; $49f0: $3a
    ld e, a                                       ; $49f1: $5f
    ld sp, $007f                                  ; $49f2: $31 $7f $00
    nop                                           ; $49f5: $00
    nop                                           ; $49f6: $00
    nop                                           ; $49f7: $00
    ld a, [c]                                     ; $49f8: $f2
    inc c                                         ; $49f9: $0c
    ld [c], a                                     ; $49fa: $e2
    inc a                                         ; $49fb: $3c
    jp nz, $c2fc                                  ; $49fc: $c2 $fc $c2

    ld [bc], a                                    ; $49ff: $02
    ld a, h                                       ; $4a00: $7c
    ld [c], a                                     ; $4a01: $e2
    inc a                                         ; $4a02: $3c
    ld a, [c]                                     ; $4a03: $f2
    inc e                                         ; $4a04: $1c
    cp $10                                        ; $4a05: $fe $10
    nop                                           ; $4a07: $00
    add b                                         ; $4a08: $80
    xor b                                         ; $4a09: $a8
    ld [bc], a                                    ; $4a0a: $02
    nop                                           ; $4a0b: $00
    ret nz                                        ; $4a0c: $c0

    ld b, $00                                     ; $4a0d: $06 $00
    and h                                         ; $4a0f: $a4
    ld a, [bc]                                    ; $4a10: $0a
    nop                                           ; $4a11: $00
    pop de                                        ; $4a12: $d1
    nop                                           ; $4a13: $00
    xor d                                         ; $4a14: $aa
    jp c, $0022                                   ; $4a15: $da $22 $00

    inc bc                                        ; $4a18: $03
    jr z, jr_0c6_4a5d                             ; $4a19: $28 $42

    ld b, b                                       ; $4a1b: $40
    db $10                                        ; $4a1c: $10
    ld de, $4008                                  ; $4a1d: $11 $08 $40
    ld h, $00                                     ; $4a20: $26 $00
    inc h                                         ; $4a22: $24

jr_0c6_4a23:
    and h                                         ; $4a23: $a4
    ld a, [hl+]                                   ; $4a24: $2a
    nop                                           ; $4a25: $00

jr_0c6_4a26:
    ld d, c                                       ; $4a26: $51
    jr nz, jr_0c6_4a29                            ; $4a27: $20 $00

jr_0c6_4a29:
    ld b, h                                       ; $4a29: $44
    inc [hl]                                      ; $4a2a: $34

jr_0c6_4a2b:
    ld [bc], a                                    ; $4a2b: $02
    jr z, jr_0c6_4a7a                             ; $4a2c: $28 $4c

    inc [hl]                                      ; $4a2e: $34
    ld [bc], a                                    ; $4a2f: $02
    ld b, b                                       ; $4a30: $40
    inc a                                         ; $4a31: $3c
    ld b, b                                       ; $4a32: $40
    inc a                                         ; $4a33: $3c
    jp c, $024c                                   ; $4a34: $da $4c $02

    jr c, jr_0c6_4a2b                             ; $4a37: $38 $f2

    jr jr_0c6_4ab7                                ; $4a39: $18 $7c

    jp nz, Jump_0c6_507c                          ; $4a3b: $c2 $7c $50

    ld [$1804], sp                                ; $4a3e: $08 $04 $18
    jp nz, $9500                                  ; $4a41: $c2 $00 $95

    add h                                         ; $4a44: $84
    add b                                         ; $4a45: $80
    nop                                           ; $4a46: $00
    xor [hl]                                      ; $4a47: $ae
    ld bc, $018a                                  ; $4a48: $01 $8a $01
    inc b                                         ; $4a4b: $04
    ld c, b                                       ; $4a4c: $48
    rst $38                                       ; $4a4d: $ff
    nop                                           ; $4a4e: $00
    nop                                           ; $4a4f: $00
    rst $00                                       ; $4a50: $c7
    jr nz, jr_0c6_4a26                            ; $4a51: $20 $d3

    inc b                                         ; $4a53: $04
    pop bc                                        ; $4a54: $c1
    nop                                           ; $4a55: $00
    rst $00                                       ; $4a56: $c7
    nop                                           ; $4a57: $00
    nop                                           ; $4a58: $00
    rst $00                                       ; $4a59: $c7
    jr nc, @-$7b                                  ; $4a5a: $30 $83

    ld b, h                                       ; $4a5c: $44

jr_0c6_4a5d:
    add e                                         ; $4a5d: $83
    nop                                           ; $4a5e: $00
    ld d, a                                       ; $4a5f: $57
    nop                                           ; $4a60: $00
    inc b                                         ; $4a61: $04
    cp l                                          ; $4a62: $bd
    nop                                           ; $4a63: $00
    rst $28                                       ; $4a64: $ef
    nop                                           ; $4a65: $00
    rst $38                                       ; $4a66: $ff
    ld [bc], a                                    ; $4a67: $02
    nop                                           ; $4a68: $00
    ld a, e                                       ; $4a69: $7b
    add h                                         ; $4a6a: $84
    nop                                           ; $4a6b: $00
    sbc $21                                       ; $4a6c: $de $21
    db $f4                                        ; $4a6e: $f4
    dec bc                                        ; $4a6f: $0b
    nop                                           ; $4a70: $00
    rst $38                                       ; $4a71: $ff
    ld d, l                                       ; $4a72: $55
    xor d                                         ; $4a73: $aa
    ld b, b                                       ; $4a74: $40
    ld d, l                                       ; $4a75: $55
    cp b                                          ; $4a76: $b8
    nop                                           ; $4a77: $00
    db $fd                                        ; $4a78: $fd
    nop                                           ; $4a79: $00

jr_0c6_4a7a:
    ld a, a                                       ; $4a7a: $7f
    add b                                         ; $4a7b: $80
    db $eb                                        ; $4a7c: $eb
    inc d                                         ; $4a7d: $14
    jr z, jr_0c6_4ad5                             ; $4a7e: $28 $55

    xor d                                         ; $4a80: $aa
    db $10                                        ; $4a81: $10
    ld [$206f], sp                                ; $4a82: $08 $6f $20
    ld b, b                                       ; $4a85: $40

Jump_0c6_4a86:
    push af                                       ; $4a86: $f5
    nop                                           ; $4a87: $00
    cp $20                                        ; $4a88: $fe $20
    nop                                           ; $4a8a: $00
    db $dd                                        ; $4a8b: $dd
    ld [hl-], a                                   ; $4a8c: $32
    db $10                                        ; $4a8d: $10
    halt                                          ; $4a8e: $76
    adc c                                         ; $4a8f: $89
    xor h                                         ; $4a90: $ac
    ld d, e                                       ; $4a91: $53
    ld e, d                                       ; $4a92: $5a
    jr nz, @-$59                                  ; $4a93: $20 $a5

    ld d, [hl]                                    ; $4a95: $56
    ld b, b                                       ; $4a96: $40
    ld h, b                                       ; $4a97: $60
    ld b, b                                       ; $4a98: $40
    inc a                                         ; $4a99: $3c
    ld b, c                                       ; $4a9a: $41
    dec a                                         ; $4a9b: $3d
    ld b, e                                       ; $4a9c: $43
    nop                                           ; $4a9d: $00
    dec a                                         ; $4a9e: $3d
    ld b, e                                       ; $4a9f: $43
    add hl, sp                                    ; $4aa0: $39
    ld b, e                                       ; $4aa1: $43
    ld sp, $1f20                                  ; $4aa2: $31 $20 $1f
    sbc a                                         ; $4aa5: $9f
    and b                                         ; $4aa6: $a0
    cp d                                          ; $4aa7: $ba
    nop                                           ; $4aa8: $00
    jp nz, $0094                                  ; $4aa9: $c2 $94 $00

    jp nz, Jump_0c6_627c                          ; $4aac: $c2 $7c $62

    inc a                                         ; $4aaf: $3c
    ld [hl-], a                                   ; $4ab0: $32
    nop                                           ; $4ab1: $00
    inc e                                         ; $4ab2: $1c
    inc b                                         ; $4ab3: $04
    ld hl, sp-$07                                 ; $4ab4: $f8 $f9
    nop                                           ; $4ab6: $00

jr_0c6_4ab7:
    ld [bc], a                                    ; $4ab7: $02
    nop                                           ; $4ab8: $00
    rst $10                                       ; $4ab9: $d7
    add b                                         ; $4aba: $80
    ld [hl], b                                    ; $4abb: $70
    ld h, b                                       ; $4abc: $60
    xor [hl]                                      ; $4abd: $ae
    ld bc, $008b                                  ; $4abe: $01 $8b $00
    xor l                                         ; $4ac1: $ad
    nop                                           ; $4ac2: $00
    adc a                                         ; $4ac3: $8f
    jr z, jr_0c6_4ac6                             ; $4ac4: $28 $00

jr_0c6_4ac6:
    and b                                         ; $4ac6: $a0
    ld l, $01                                     ; $4ac7: $2e $01
    nop                                           ; $4ac9: $00
    ld [$0000], sp                                ; $4aca: $08 $00 $00
    rst $38                                       ; $4acd: $ff
    rst $38                                       ; $4ace: $ff
    inc l                                         ; $4acf: $2c
    nop                                           ; $4ad0: $00
    ld d, l                                       ; $4ad1: $55
    sub b                                         ; $4ad2: $90
    nop                                           ; $4ad3: $00
    nop                                           ; $4ad4: $00

jr_0c6_4ad5:
    ld b, $00                                     ; $4ad5: $06 $00
    dec c                                         ; $4ad7: $0d
    nop                                           ; $4ad8: $00
    nop                                           ; $4ad9: $00
    ld d, c                                       ; $4ada: $51
    ld a, [hl+]                                   ; $4adb: $2a
    add b                                         ; $4adc: $80
    push af                                       ; $4add: $f5
    ld hl, sp+$00                                 ; $4ade: $f8 $00
    push af                                       ; $4ae0: $f5
    ld d, [hl]                                    ; $4ae1: $56
    ld bc, $3e54                                  ; $4ae2: $01 $54 $3e
    ld bc, $20f9                                  ; $4ae5: $01 $f9 $20
    nop                                           ; $4ae8: $00
    sub $b0                                       ; $4ae9: $d6 $b0
    ld h, b                                       ; $4aeb: $60
    inc c                                         ; $4aec: $0c
    di                                            ; $4aed: $f3
    ld [bc], a                                    ; $4aee: $02
    db $fd                                        ; $4aef: $fd
    ld b, h                                       ; $4af0: $44
    nop                                           ; $4af1: $00
    cp e                                          ; $4af2: $bb
    nop                                           ; $4af3: $00
    rst $38                                       ; $4af4: $ff
    add b                                         ; $4af5: $80
    rst $38                                       ; $4af6: $ff
    ld b, [hl]                                    ; $4af7: $46
    rst $38                                       ; $4af8: $ff
    cp e                                          ; $4af9: $bb
    nop                                           ; $4afa: $00
    rst $38                                       ; $4afb: $ff
    rst $38                                       ; $4afc: $ff
    rst $38                                       ; $4afd: $ff
    xor c                                         ; $4afe: $a9
    ld d, [hl]                                    ; $4aff: $56
    ld d, b                                       ; $4b00: $50
    xor a                                         ; $4b01: $af
    and l                                         ; $4b02: $a5
    nop                                           ; $4b03: $00
    ld e, e                                       ; $4b04: $5b
    nop                                           ; $4b05: $00
    rst $38                                       ; $4b06: $ff
    dec b                                         ; $4b07: $05
    rst $38                                       ; $4b08: $ff
    dec hl                                        ; $4b09: $2b
    rst $38                                       ; $4b0a: $ff
    rst $18                                       ; $4b0b: $df
    add b                                         ; $4b0c: $80
    stop                                          ; $4b0d: $10 $00
    nop                                           ; $4b0f: $00
    rst $38                                       ; $4b10: $ff
    and a                                         ; $4b11: $a7
    ld e, b                                       ; $4b12: $58
    ld c, d                                       ; $4b13: $4a
    or l                                          ; $4b14: $b5
    inc b                                         ; $4b15: $04
    ld [bc], a                                    ; $4b16: $02
    ei                                            ; $4b17: $fb
    ld d, b                                       ; $4b18: $50
    rst $38                                       ; $4b19: $ff
    add hl, hl                                    ; $4b1a: $29
    rst $38                                       ; $4b1b: $ff
    cp [hl]                                       ; $4b1c: $be
    db $10                                        ; $4b1d: $10
    db $10                                        ; $4b1e: $10
    ld c, c                                       ; $4b1f: $49
    nop                                           ; $4b20: $00
    cp [hl]                                       ; $4b21: $be
    add b                                         ; $4b22: $80
    ld a, a                                       ; $4b23: $7f
    inc d                                         ; $4b24: $14
    rst $38                                       ; $4b25: $ff
    jr c, @+$01                                   ; $4b26: $38 $ff

    dec [hl]                                      ; $4b28: $35
    ld [hl-], a                                   ; $4b29: $32
    rst $38                                       ; $4b2a: $ff
    cp $20                                        ; $4b2b: $fe $20
    db $10                                        ; $4b2d: $10
    ld b, b                                       ; $4b2e: $40
    ld e, b                                       ; $4b2f: $58
    and d                                         ; $4b30: $a2
    ld e, l                                       ; $4b31: $5d
    jr nz, jr_0c6_4b8c                            ; $4b32: $20 $58

    push af                                       ; $4b34: $f5
    nop                                           ; $4b35: $00
    nop                                           ; $4b36: $00
    ld a, e                                       ; $4b37: $7b
    nop                                           ; $4b38: $00
    ld b, b                                       ; $4b39: $40
    cp a                                          ; $4b3a: $bf
    dec b                                         ; $4b3b: $05
    rst $38                                       ; $4b3c: $ff
    db $f4                                        ; $4b3d: $f4
    ld [$800b], sp                                ; $4b3e: $08 $0b $80
    ld a, a                                       ; $4b41: $7f
    rst $38                                       ; $4b42: $ff
    inc d                                         ; $4b43: $14
    ld bc, $00ff                                  ; $4b44: $01 $ff $00
    ld e, d                                       ; $4b47: $5a
    ld [$a500], sp                                ; $4b48: $08 $00 $a5
    ld e, d                                       ; $4b4b: $5a
    sub h                                         ; $4b4c: $94
    and [hl]                                      ; $4b4d: $a6
    nop                                           ; $4b4e: $00
    and b                                         ; $4b4f: $a0
    ld e, a                                       ; $4b50: $5f
    or $00                                        ; $4b51: $f6 $00
    nop                                           ; $4b53: $00
    cp $01                                        ; $4b54: $fe $01
    cpl                                           ; $4b56: $2f
    ret nc                                        ; $4b57: $d0

    sub h                                         ; $4b58: $94
    dec hl                                        ; $4b59: $2b
    rst $38                                       ; $4b5a: $ff
    nop                                           ; $4b5b: $00
    nop                                           ; $4b5c: $00
    add d                                         ; $4b5d: $82
    rst $38                                       ; $4b5e: $ff
    ret z                                         ; $4b5f: $c8

    scf                                           ; $4b60: $37
    ld c, a                                       ; $4b61: $4f
    or d                                          ; $4b62: $b2
    cp l                                          ; $4b63: $bd
    nop                                           ; $4b64: $00
    ld b, $a6                                     ; $4b65: $06 $a6
    ld e, l                                       ; $4b67: $5d
    ld c, d                                       ; $4b68: $4a
    or l                                          ; $4b69: $b5
    xor a                                         ; $4b6a: $af
    ld d, b                                       ; $4b6b: $50
    xor l                                         ; $4b6c: $ad
    nop                                           ; $4b6d: $00
    ld d, d                                       ; $4b6e: $52
    add $ff                                       ; $4b6f: $c6 $ff
    xor a                                         ; $4b71: $af
    ld d, b                                       ; $4b72: $50
    rst $38                                       ; $4b73: $ff
    nop                                           ; $4b74: $00
    sub l                                         ; $4b75: $95
    nop                                           ; $4b76: $00
    ld l, d                                       ; $4b77: $6a
    and b                                         ; $4b78: $a0
    ld e, a                                       ; $4b79: $5f
    ld a, a                                       ; $4b7a: $7f

Call_0c6_4b7b:
    add h                                         ; $4b7b: $84
    db $eb                                        ; $4b7c: $eb
    ld [bc], a                                    ; $4b7d: $02
    dec hl                                        ; $4b7e: $2b
    ld h, d                                       ; $4b7f: $62
    sub $7a                                       ; $4b80: $d6 $7a
    nop                                           ; $4b82: $00
    ld h, h                                       ; $4b83: $64
    ld de, $ed12                                  ; $4b84: $11 $12 $ed
    push af                                       ; $4b87: $f5
    ld b, b                                       ; $4b88: $40
    nop                                           ; $4b89: $00
    ld b, b                                       ; $4b8a: $40
    nop                                           ; $4b8b: $00

jr_0c6_4b8c:
    cp a                                          ; $4b8c: $bf
    inc bc                                        ; $4b8d: $03
    rst $38                                       ; $4b8e: $ff
    ld sp, hl                                     ; $4b8f: $f9
    ld b, $81                                     ; $4b90: $06 $81
    ld a, [hl]                                    ; $4b92: $7e
    rst $38                                       ; $4b93: $ff
    ld [$bf00], sp                                ; $4b94: $08 $00 $bf
    ld b, b                                       ; $4b97: $40
    rst $38                                       ; $4b98: $ff
    jp nc, $2900                                  ; $4b99: $d2 $00 $29

    sub $4a                                       ; $4b9c: $d6 $4a
    ld [bc], a                                    ; $4b9e: $02
    rst $38                                       ; $4b9f: $ff
    ld a, a                                       ; $4ba0: $7f
    add b                                         ; $4ba1: $80
    ld d, b                                       ; $4ba2: $50
    xor a                                         ; $4ba3: $af
    ld a, [$0188]                                 ; $4ba4: $fa $88 $01
    cpl                                           ; $4ba7: $2f
    nop                                           ; $4ba8: $00
    ret nc                                        ; $4ba9: $d0

    and l                                         ; $4baa: $a5
    ld a, [de]                                    ; $4bab: $1a
    rst $38                                       ; $4bac: $ff
    nop                                           ; $4bad: $00
    ld b, c                                       ; $4bae: $41
    rst $38                                       ; $4baf: $ff
    call nc, Call_000_2b00                        ; $4bb0: $d4 $00 $2b
    rla                                           ; $4bb3: $17
    add sp, -$22                                  ; $4bb4: $e8 $de
    ld bc, $aa55                                  ; $4bb6: $01 $55 $aa
    rst $38                                       ; $4bb9: $ff
    add b                                         ; $4bba: $80
    ld e, $01                                     ; $4bbb: $1e $01
    ld d, d                                       ; $4bbd: $52
    xor l                                         ; $4bbe: $ad
    sub l                                         ; $4bbf: $95

jr_0c6_4bc0:
    rst $38                                       ; $4bc0: $ff
    db $fd                                        ; $4bc1: $fd
    ld [bc], a                                    ; $4bc2: $02
    dec b                                         ; $4bc3: $05
    jr z, jr_0c6_4bc0                             ; $4bc4: $28 $fa

    cp a                                          ; $4bc6: $bf
    xor b                                         ; $4bc7: $a8
    ld bc, $90af                                  ; $4bc8: $01 $af $90
    nop                                           ; $4bcb: $00
    ld [bc], a                                    ; $4bcc: $02
    db $fd                                        ; $4bcd: $fd
    ld b, b                                       ; $4bce: $40
    nop                                           ; $4bcf: $00
    rst $38                                       ; $4bd0: $ff
    ccf                                           ; $4bd1: $3f
    ret nz                                        ; $4bd2: $c0

    inc bc                                        ; $4bd3: $03
    db $fc                                        ; $4bd4: $fc
    rst $38                                       ; $4bd5: $ff
    nop                                           ; $4bd6: $00
    ld a, [$0500]                                 ; $4bd7: $fa $00 $05
    cp $01                                        ; $4bda: $fe $01
    ld e, e                                       ; $4bdc: $5b
    nop                                           ; $4bdd: $00
    jp nc, $162d                                  ; $4bde: $d2 $2d $16

    add b                                         ; $4be1: $80
    ld h, b                                       ; $4be2: $60
    jr nz, jr_0c6_4c35                            ; $4be3: $20 $50

    xor a                                         ; $4be5: $af
    ld d, d                                       ; $4be6: $52
    xor l                                         ; $4be7: $ad
    db $f4                                        ; $4be8: $f4
    dec bc                                        ; $4be9: $0b
    or l                                          ; $4bea: $b5
    nop                                           ; $4beb: $00
    ld c, d                                       ; $4bec: $4a
    and l                                         ; $4bed: $a5
    rst $38                                       ; $4bee: $ff
    db $e3                                        ; $4bef: $e3
    inc e                                         ; $4bf0: $1c
    rst $38                                       ; $4bf1: $ff
    ld [$004b], sp                                ; $4bf2: $08 $4b $00
    cp h                                          ; $4bf5: $bc
    ld a, [bc]                                    ; $4bf6: $0a
    db $fd                                        ; $4bf7: $fd
    ret                                           ; $4bf8: $c9


    rst $38                                       ; $4bf9: $ff
    ld [hl], a                                    ; $4bfa: $77
    adc b                                         ; $4bfb: $88
    ld [$1d01], a                                 ; $4bfc: $ea $01 $1d
    cp a                                          ; $4bff: $bf
    db $10                                        ; $4c00: $10
    sbc l                                         ; $4c01: $9d
    rst $38                                       ; $4c02: $ff
    db $eb                                        ; $4c03: $eb
    nop                                           ; $4c04: $00
    ld c, [hl]                                    ; $4c05: $4e
    ld [$a110], sp                                ; $4c06: $08 $10 $a1
    rst $38                                       ; $4c09: $ff
    ld d, [hl]                                    ; $4c0a: $56
    ld d, b                                       ; $4c0b: $50
    nop                                           ; $4c0c: $00
    or $00                                        ; $4c0d: $f6 $00
    or d                                          ; $4c0f: $b2
    rst $38                                       ; $4c10: $ff
    nop                                           ; $4c11: $00
    db $fc                                        ; $4c12: $fc
    inc bc                                        ; $4c13: $03
    ei                                            ; $4c14: $fb
    nop                                           ; $4c15: $00
    ld e, a                                       ; $4c16: $5f
    and b                                         ; $4c17: $a0
    ld e, b                                       ; $4c18: $58
    rst $38                                       ; $4c19: $ff
    ld b, b                                       ; $4c1a: $40
    xor a                                         ; $4c1b: $af
    ret nc                                        ; $4c1c: $d0

    nop                                           ; $4c1d: $00
    xor l                                         ; $4c1e: $ad
    nop                                           ; $4c1f: $00
    sub l                                         ; $4c20: $95
    rst $38                                       ; $4c21: $ff
    xor l                                         ; $4c22: $ad
    ld d, d                                       ; $4c23: $52
    nop                                           ; $4c24: $00
    ld d, l                                       ; $4c25: $55
    ld [bc], a                                    ; $4c26: $02

jr_0c6_4c27:
    ld d, a                                       ; $4c27: $57
    xor d                                         ; $4c28: $aa
    ld a, [hl+]                                   ; $4c29: $2a
    rst $38                                       ; $4c2a: $ff
    cp $01                                        ; $4c2b: $fe $01
    nop                                           ; $4c2d: $00
    ld a, d                                       ; $4c2e: $7a
    add l                                         ; $4c2f: $85
    ld a, d                                       ; $4c30: $7a
    dec b                                         ; $4c31: $05
    sub l                                         ; $4c32: $95
    rst $38                                       ; $4c33: $ff
    ld d, l                                       ; $4c34: $55

jr_0c6_4c35:
    nop                                           ; $4c35: $00
    nop                                           ; $4c36: $00
    xor e                                         ; $4c37: $ab
    nop                                           ; $4c38: $00
    call nc, $d42b                                ; $4c39: $d4 $2b $d4
    rst $38                                       ; $4c3c: $ff
    sub l                                         ; $4c3d: $95
    ld l, d                                       ; $4c3e: $6a
    nop                                           ; $4c3f: $00
    sbc a                                         ; $4c40: $9f
    ld h, b                                       ; $4c41: $60
    and l                                         ; $4c42: $a5
    ld e, b                                       ; $4c43: $58
    add hl, de                                    ; $4c44: $19
    rst $38                                       ; $4c45: $ff
    xor e                                         ; $4c46: $ab
    nop                                           ; $4c47: $00
    ld b, b                                       ; $4c48: $40
    ld a, a                                       ; $4c49: $7f
    ld a, d                                       ; $4c4a: $7a
    nop                                           ; $4c4b: $00
    ld d, d                                       ; $4c4c: $52
    rst $38                                       ; $4c4d: $ff
    rra                                           ; $4c4e: $1f
    ldh [$fa], a                                  ; $4c4f: $e0 $fa
    dec h                                         ; $4c51: $25
    nop                                           ; $4c52: $00
    ld a, e                                       ; $4c53: $7b
    jr nz, jr_0c6_4c27                            ; $4c54: $20 $d1

    rst $38                                       ; $4c56: $ff
    db $fd                                        ; $4c57: $fd
    nop                                           ; $4c58: $00
    xor d                                         ; $4c59: $aa
    ld d, l                                       ; $4c5a: $55
    db $10                                        ; $4c5b: $10
    rst $38                                       ; $4c5c: $ff
    nop                                           ; $4c5d: $00
    xor b                                         ; $4c5e: $a8
    ld d, b                                       ; $4c5f: $50
    db $10                                        ; $4c60: $10
    db $fd                                        ; $4c61: $fd
    nop                                           ; $4c62: $00

Jump_0c6_4c63:
    inc a                                         ; $4c63: $3c
    rst $38                                       ; $4c64: $ff
    nop                                           ; $4c65: $00
    sbc a                                         ; $4c66: $9f
    jr nz, jr_0c6_4ce8                            ; $4c67: $20 $7f

    and b                                         ; $4c69: $a0
    db $eb                                        ; $4c6a: $eb
    inc [hl]                                      ; $4c6b: $34
    ld e, h                                       ; $4c6c: $5c
    rst $38                                       ; $4c6d: $ff
    ld b, h                                       ; $4c6e: $44
    xor l                                         ; $4c6f: $ad
    jr nz, jr_0c6_4c73                            ; $4c70: $20 $01

    ld l, d                                       ; $4c72: $6a

jr_0c6_4c73:
    nop                                           ; $4c73: $00
    and l                                         ; $4c74: $a5
    ld c, b                                       ; $4c75: $48
    ld [bc], a                                    ; $4c76: $02
    xor d                                         ; $4c77: $aa

Call_0c6_4c78:
    nop                                           ; $4c78: $00
    nop                                           ; $4c79: $00
    ld [$3415], a                                 ; $4c7a: $ea $15 $34
    rst $38                                       ; $4c7d: $ff
    ld l, e                                       ; $4c7e: $6b
    nop                                           ; $4c7f: $00
    ld c, d                                       ; $4c80: $4a
    or l                                          ; $4c81: $b5
    db $10                                        ; $4c82: $10
    rst $38                                       ; $4c83: $ff
    nop                                           ; $4c84: $00
    or e                                          ; $4c85: $b3
    add b                                         ; $4c86: $80
    nop                                           ; $4c87: $00
    db $f4                                        ; $4c88: $f4
    dec bc                                        ; $4c89: $0b
    cp a                                          ; $4c8a: $bf
    ld b, b                                       ; $4c8b: $40
    nop                                           ; $4c8c: $00
    xor b                                         ; $4c8d: $a8
    rst $38                                       ; $4c8e: $ff
    ld [hl], h                                    ; $4c8f: $74
    adc e                                         ; $4c90: $8b
    rst $38                                       ; $4c91: $ff
    add b                                         ; $4c92: $80
    xor e                                         ; $4c93: $ab
    add b                                         ; $4c94: $80
    ld b, c                                       ; $4c95: $41
    xor [hl]                                      ; $4c96: $ae
    add sp, $01                                   ; $4c97: $e8 $01
    xor a                                         ; $4c99: $af
    ld d, b                                       ; $4c9a: $50
    db $fc                                        ; $4c9b: $fc
    inc bc                                        ; $4c9c: $03
    xor e                                         ; $4c9d: $ab
    or d                                          ; $4c9e: $b2
    ld bc, $e905                                  ; $4c9f: $01 $05 $e9
    ld d, $54                                     ; $4ca2: $16 $54
    xor e                                         ; $4ca4: $ab
    and e                                         ; $4ca5: $a3
    ld h, b                                       ; $4ca6: $60
    nop                                           ; $4ca7: $00
    push af                                       ; $4ca8: $f5
    cp $01                                        ; $4ca9: $fe $01
    ld b, c                                       ; $4cab: $41
    ld c, h                                       ; $4cac: $4c
    nop                                           ; $4cad: $00
    ld [bc], a                                    ; $4cae: $02
    ld a, d                                       ; $4caf: $7a
    add l                                         ; $4cb0: $85
    ei                                            ; $4cb1: $fb
    nop                                           ; $4cb2: $00
    and [hl]                                      ; $4cb3: $a6
    add b                                         ; $4cb4: $80
    db $10                                        ; $4cb5: $10
    inc b                                         ; $4cb6: $04
    ld e, [hl]                                    ; $4cb7: $5e
    and c                                         ; $4cb8: $a1
    db $fc                                        ; $4cb9: $fc
    inc bc                                        ; $4cba: $03
    add d                                         ; $4cbb: $82
    adc d                                         ; $4cbc: $8a
    nop                                           ; $4cbd: $00
    ld [$1400], a                                 ; $4cbe: $ea $00 $14
    or l                                          ; $4cc1: $b5
    ld c, d                                       ; $4cc2: $4a
    res 3, d                                      ; $4cc3: $cb $9a
    ld [bc], a                                    ; $4cc5: $02
    rst $38                                       ; $4cc6: $ff
    ld [hl], h                                    ; $4cc7: $74
    nop                                           ; $4cc8: $00
    add hl, hl                                    ; $4cc9: $29
    rst $38                                       ; $4cca: $ff
    ld bc, $857a                                  ; $4ccb: $01 $7a $85
    push de                                       ; $4cce: $d5
    add b                                         ; $4ccf: $80
    rst $38                                       ; $4cd0: $ff
    add b                                         ; $4cd1: $80
    pop de                                        ; $4cd2: $d1
    ld a, [hl+]                                   ; $4cd3: $2a
    ld [bc], a                                    ; $4cd4: $02
    inc b                                         ; $4cd5: $04
    and a                                         ; $4cd6: $a7
    ld e, b                                       ; $4cd7: $58
    db $fd                                        ; $4cd8: $fd
    inc b                                         ; $4cd9: $04
    sub a                                         ; $4cda: $97
    and d                                         ; $4cdb: $a2
    nop                                           ; $4cdc: $00
    ld a, a                                       ; $4cdd: $7f
    nop                                           ; $4cde: $00
    db $10                                        ; $4cdf: $10
    ld hl, sp+$07                                 ; $4ce0: $f8 $07
    ld d, c                                       ; $4ce2: $51
    cp d                                          ; $4ce3: $ba
    nop                                           ; $4ce4: $00
    push de                                       ; $4ce5: $d5
    ld a, [hl+]                                   ; $4ce6: $2a
    ld l, d                                       ; $4ce7: $6a

jr_0c6_4ce8:
    nop                                           ; $4ce8: $00
    nop                                           ; $4ce9: $00
    ld e, d                                       ; $4cea: $5a
    rst $38                                       ; $4ceb: $ff
    ld a, [hl]                                    ; $4cec: $7e
    add c                                         ; $4ced: $81
    xor l                                         ; $4cee: $ad
    nop                                           ; $4cef: $00
    ld d, e                                       ; $4cf0: $53
    xor h                                         ; $4cf1: $ac
    nop                                           ; $4cf2: $00
    ld e, l                                       ; $4cf3: $5d
    rst $38                                       ; $4cf4: $ff
    xor d                                         ; $4cf5: $aa
    ld d, l                                       ; $4cf6: $55
    cpl                                           ; $4cf7: $2f
    ret nc                                        ; $4cf8: $d0

    cp a                                          ; $4cf9: $bf
    nop                                           ; $4cfa: $00
    ld b, b                                       ; $4cfb: $40
    push af                                       ; $4cfc: $f5
    adc h                                         ; $4cfd: $8c
    ld bc, $0b74                                  ; $4cfe: $01 $74 $0b
    db $ec                                        ; $4d01: $ec
    inc de                                        ; $4d02: $13
    ld c, d                                       ; $4d03: $4a
    rst $38                                       ; $4d04: $ff
    inc d                                         ; $4d05: $14
    xor $51                                       ; $4d06: $ee $51
    rst $38                                       ; $4d08: $ff
    ld [hl], b                                    ; $4d09: $70
    ld bc, $da28                                  ; $4d0a: $01 $28 $da
    nop                                           ; $4d0d: $00
    cp [hl]                                       ; $4d0e: $be
    ld b, b                                       ; $4d0f: $40
    db $10                                        ; $4d10: $10
    xor e                                         ; $4d11: $ab
    ld d, h                                       ; $4d12: $54
    and h                                         ; $4d13: $a4
    inc l                                         ; $4d14: $2c
    ld [bc], a                                    ; $4d15: $02
    ld d, a                                       ; $4d16: $57
    nop                                           ; $4d17: $00
    xor c                                         ; $4d18: $a9
    halt                                          ; $4d19: $76
    inc b                                         ; $4d1a: $04
    ld [hl], l                                    ; $4d1b: $75
    rst $38                                       ; $4d1c: $ff
    ld a, a                                       ; $4d1d: $7f
    nop                                           ; $4d1e: $00
    push de                                       ; $4d1f: $d5
    ld a, b                                       ; $4d20: $78
    ld bc, $ff9e                                  ; $4d21: $01 $9e $ff
    nop                                           ; $4d24: $00
    ld e, a                                       ; $4d25: $5f
    and b                                         ; $4d26: $a0
    ld a, [$5f05]                                 ; $4d27: $fa $05 $5f
    and b                                         ; $4d2a: $a0
    ld a, [hl+]                                   ; $4d2b: $2a
    rst $38                                       ; $4d2c: $ff
    ld bc, $5aa5                                  ; $4d2d: $01 $a5 $5a
    ld e, a                                       ; $4d30: $5f
    ld [bc], a                                    ; $4d31: $02
    rst $38                                       ; $4d32: $ff
    ld [bc], a                                    ; $4d33: $02
    sub a                                         ; $4d34: $97
    adc d                                         ; $4d35: $8a
    ld [bc], a                                    ; $4d36: $02
    nop                                           ; $4d37: $00
    cp [hl]                                       ; $4d38: $be
    ld b, c                                       ; $4d39: $41
    xor a                                         ; $4d3a: $af
    ld d, b                                       ; $4d3b: $50
    db $10                                        ; $4d3c: $10
    rst $38                                       ; $4d3d: $ff
    ld d, [hl]                                    ; $4d3e: $56
    add b                                         ; $4d3f: $80
    dec b                                         ; $4d40: $05
    xor a                                         ; $4d41: $af
    add b                                         ; $4d42: $80
    push de                                       ; $4d43: $d5
    xor d                                         ; $4d44: $aa
    sub $18                                       ; $4d45: $d6 $18
    nop                                           ; $4d47: $00
    db $fd                                        ; $4d48: $fd
    ld a, [hl+]                                   ; $4d49: $2a
    inc bc                                        ; $4d4a: $03
    ld c, b                                       ; $4d4b: $48
    and l                                         ; $4d4c: $a5
    ld [hl-], a                                   ; $4d4d: $32
    ld bc, $2bd4                                  ; $4d4e: $01 $d4 $2b
    ld h, $03                                     ; $4d51: $26 $03
    rst $38                                       ; $4d53: $ff
    ld d, [hl]                                    ; $4d54: $56
    xor c                                         ; $4d55: $a9
    ld b, b                                       ; $4d56: $40
    ld d, a                                       ; $4d57: $57
    sbc d                                         ; $4d58: $9a
    nop                                           ; $4d59: $00
    jp c, Jump_0c6_57ff                           ; $4d5a: $da $ff $57

    xor b                                         ; $4d5d: $a8
    ld [$0300], a                                 ; $4d5e: $ea $00 $03
    ld a, l                                       ; $4d61: $7d
    add d                                         ; $4d62: $82
    ld c, e                                       ; $4d63: $4b
    rst $38                                       ; $4d64: $ff
    or l                                          ; $4d65: $b5
    ld c, d                                       ; $4d66: $4a
    add d                                         ; $4d67: $82
    nop                                           ; $4d68: $00
    cp d                                          ; $4d69: $ba
    nop                                           ; $4d6a: $00
    nop                                           ; $4d6b: $00
    ld [$df15], a                                 ; $4d6c: $ea $15 $df
    nop                                           ; $4d6f: $00
    ld hl, $b0de                                  ; $4d70: $21 $de $b0
    rst $38                                       ; $4d73: $ff
    inc b                                         ; $4d74: $04
    ld c, a                                       ; $4d75: $4f
    or b                                          ; $4d76: $b0
    xor c                                         ; $4d77: $a9
    ld d, [hl]                                    ; $4d78: $56
    ld d, l                                       ; $4d79: $55
    ld h, $01                                     ; $4d7a: $26 $01
    sub d                                         ; $4d7c: $92
    rst $38                                       ; $4d7d: $ff
    inc b                                         ; $4d7e: $04
    push af                                       ; $4d7f: $f5
    ld a, [bc]                                    ; $4d80: $0a
    ld d, l                                       ; $4d81: $55
    xor d                                         ; $4d82: $aa
    push af                                       ; $4d83: $f5
    ld h, [hl]                                    ; $4d84: $66
    inc bc                                        ; $4d85: $03
    ld h, b                                       ; $4d86: $60
    rst $38                                       ; $4d87: $ff
    jr nz, jr_0c6_4dd4                            ; $4d88: $20 $4a

    dec d                                         ; $4d8a: $15
    sbc $09                                       ; $4d8b: $de $09
    ld l, c                                       ; $4d8d: $69
    sub a                                         ; $4d8e: $97
    ld d, a                                       ; $4d8f: $57
    xor c                                         ; $4d90: $a9
    ld e, a                                       ; $4d91: $5f
    nop                                           ; $4d92: $00
    ld bc, $ab55                                  ; $4d93: $01 $55 $ab
    xor [hl]                                      ; $4d96: $ae
    rst $38                                       ; $4d97: $ff
    xor e                                         ; $4d98: $ab
    ld d, h                                       ; $4d99: $54
    db $eb                                        ; $4d9a: $eb
    nop                                           ; $4d9b: $00
    inc d                                         ; $4d9c: $14
    ld d, c                                       ; $4d9d: $51
    rst $38                                       ; $4d9e: $ff
    ld l, e                                       ; $4d9f: $6b
    sub h                                         ; $4da0: $94
    rst $38                                       ; $4da1: $ff
    nop                                           ; $4da2: $00
    ld h, l                                       ; $4da3: $65
    ld [$a89a], sp                                ; $4da4: $08 $9a $a8
    ld d, a                                       ; $4da7: $57
    add hl, bc                                    ; $4da8: $09
    ld [hl], b                                    ; $4da9: $70
    ld [bc], a                                    ; $4daa: $02
    sub l                                         ; $4dab: $95
    ld l, d                                       ; $4dac: $6a
    ld d, l                                       ; $4dad: $55
    and b                                         ; $4dae: $a0
    inc b                                         ; $4daf: $04
    inc bc                                        ; $4db0: $03
    ld a, [$0380]                                 ; $4db1: $fa $80 $03
    ld [bc], a                                    ; $4db4: $02
    db $fd                                        ; $4db5: $fd
    ld e, d                                       ; $4db6: $5a
    rst $38                                       ; $4db7: $ff
    ld d, l                                       ; $4db8: $55
    ld [$7440], sp                                ; $4db9: $08 $40 $74
    set 0, b                                      ; $4dbc: $cb $c0
    cp $01                                        ; $4dbe: $fe $01
    cp d                                          ; $4dc0: $ba
    dec b                                         ; $4dc1: $05
    rst $38                                       ; $4dc2: $ff
    nop                                           ; $4dc3: $00
    nop                                           ; $4dc4: $00
    xor e                                         ; $4dc5: $ab
    ld d, h                                       ; $4dc6: $54
    add l                                         ; $4dc7: $85
    rst $38                                       ; $4dc8: $ff
    xor d                                         ; $4dc9: $aa
    nop                                           ; $4dca: $00
    dec b                                         ; $4dcb: $05
    inc b                                         ; $4dcc: $04
    ld a, [$ff2a]                                 ; $4dcd: $fa $2a $ff
    dec bc                                        ; $4dd0: $0b
    db $f4                                        ; $4dd1: $f4
    ld a, [de]                                    ; $4dd2: $1a
    ld a, [bc]                                    ; $4dd3: $0a

jr_0c6_4dd4:
    rst $38                                       ; $4dd4: $ff
    nop                                           ; $4dd5: $00
    ld b, h                                       ; $4dd6: $44
    dec h                                         ; $4dd7: $25
    ld l, [hl]                                    ; $4dd8: $6e
    ld bc, $a857                                  ; $4dd9: $01 $57 $a8
    sub d                                         ; $4ddc: $92
    ld b, [hl]                                    ; $4ddd: $46
    nop                                           ; $4dde: $00
    ld d, l                                       ; $4ddf: $55
    xor d                                         ; $4de0: $aa
    dec b                                         ; $4de1: $05
    push de                                       ; $4de2: $d5
    nop                                           ; $4de3: $00
    db $fd                                        ; $4de4: $fd
    ld [bc], a                                    ; $4de5: $02
    ld b, d                                       ; $4de6: $42
    inc h                                         ; $4de7: $24
    ld de, $c405                                  ; $4de8: $11 $05 $c4
    inc bc                                        ; $4deb: $03
    nop                                           ; $4dec: $00
    ld e, a                                       ; $4ded: $5f
    and b                                         ; $4dee: $a0
    ld a, e                                       ; $4def: $7b
    inc b                                         ; $4df0: $04
    ld d, l                                       ; $4df1: $55
    xor d                                         ; $4df2: $aa
    or b                                          ; $4df3: $b0

jr_0c6_4df4:
    rst $38                                       ; $4df4: $ff
    ld b, $6a                                     ; $4df5: $06 $6a
    nop                                           ; $4df7: $00
    sub h                                         ; $4df8: $94
    ld l, e                                       ; $4df9: $6b
    ld c, d                                       ; $4dfa: $4a
    ld [hl-], a                                   ; $4dfb: $32
    ld bc, $09ac                                  ; $4dfc: $01 $ac $09
    rst $38                                       ; $4dff: $ff
    ld [$a900], sp                                ; $4e00: $08 $00 $a9
    rst $38                                       ; $4e03: $ff
    cp e                                          ; $4e04: $bb
    ld a, $02                                     ; $4e05: $3e $02
    add b                                         ; $4e07: $80
    rst $38                                       ; $4e08: $ff
    rla                                           ; $4e09: $17
    jr jr_0c6_4df4                                ; $4e0a: $18 $e8

    xor e                                         ; $4e0c: $ab
    ld d, h                                       ; $4e0d: $54
    ld a, $0a                                     ; $4e0e: $3e $0a
    inc c                                         ; $4e10: $0c
    add hl, bc                                    ; $4e11: $09
    push de                                       ; $4e12: $d5
    ld a, [hl+]                                   ; $4e13: $2a
    dec d                                         ; $4e14: $15
    and b                                         ; $4e15: $a0
    ld [hl], h                                    ; $4e16: $74
    inc bc                                        ; $4e17: $03
    ld d, a                                       ; $4e18: $57
    ld a, $12                                     ; $4e19: $3e $12
    xor d                                         ; $4e1b: $aa
    rst $38                                       ; $4e1c: $ff
    ld a, [$5a05]                                 ; $4e1d: $fa $05 $5a
    nop                                           ; $4e20: $00
    and l                                         ; $4e21: $a5
    ld d, c                                       ; $4e22: $51
    rst $38                                       ; $4e23: $ff
    ld a, [$ff07]                                 ; $4e24: $fa $07 $ff
    ld [bc], a                                    ; $4e27: $02
    xor d                                         ; $4e28: $aa
    dec c                                         ; $4e29: $0d
    ld d, a                                       ; $4e2a: $57
    ld b, $fb                                     ; $4e2b: $06 $fb
    and a                                         ; $4e2d: $a7
    adc [hl]                                      ; $4e2e: $8e
    inc bc                                        ; $4e2f: $03
    sbc $09                                       ; $4e30: $de $09
    jp c, Jump_000_0216                           ; $4e32: $da $16 $02

    db $10                                        ; $4e35: $10
    xor a                                         ; $4e36: $af
    ld d, b                                       ; $4e37: $50
    xor d                                         ; $4e38: $aa

jr_0c6_4e39:
    ld b, d                                       ; $4e39: $42
    ld [de], a                                    ; $4e3a: $12
    xor d                                         ; $4e3b: $aa
    ld d, l                                       ; $4e3c: $55
    ld d, l                                       ; $4e3d: $55
    nop                                           ; $4e3e: $00
    ld h, d                                       ; $4e3f: $62
    ld c, d                                       ; $4e40: $4a
    cp b                                          ; $4e41: $b8
    nop                                           ; $4e42: $00
    sub b                                         ; $4e43: $90
    nop                                           ; $4e44: $00
    ld d, l                                       ; $4e45: $55
    ld a, a                                       ; $4e46: $7f
    add c                                         ; $4e47: $81
    inc h                                         ; $4e48: $24
    add hl, bc                                    ; $4e49: $09
    ld e, a                                       ; $4e4a: $5f
    ld bc, $6500                                  ; $4e4b: $01 $00 $65
    rst $38                                       ; $4e4e: $ff
    ld d, l                                       ; $4e4f: $55
    add b                                         ; $4e50: $80
    push af                                       ; $4e51: $f5
    adc d                                         ; $4e52: $8a
    cp d                                          ; $4e53: $ba
    dec bc                                        ; $4e54: $0b
    inc l                                         ; $4e55: $2c
    jp z, $8c35                                   ; $4e56: $ca $35 $8c

    ld [$3ea2], sp                                ; $4e59: $08 $a2 $3e
    ld [bc], a                                    ; $4e5c: $02
    nop                                           ; $4e5d: $00
    ld [bc], a                                    ; $4e5e: $02
    ld d, l                                       ; $4e5f: $55
    ld d, a                                       ; $4e60: $57
    nop                                           ; $4e61: $00
    nop                                           ; $4e62: $00
    xor e                                         ; $4e63: $ab
    ld d, [hl]                                    ; $4e64: $56
    rst $38                                       ; $4e65: $ff
    ld [bc], a                                    ; $4e66: $02
    ld d, a                                       ; $4e67: $57
    add d                                         ; $4e68: $82
    sbc l                                         ; $4e69: $9d
    sbc b                                         ; $4e6a: $98
    ld h, h                                       ; $4e6b: $64
    ld bc, $a55a                                  ; $4e6c: $01 $5a $a5
    ld c, l                                       ; $4e6f: $4d
    inc b                                         ; $4e70: $04
    ld b, b                                       ; $4e71: $40
    add hl, bc                                    ; $4e72: $09
    ld e, d                                       ; $4e73: $5a
    ld e, a                                       ; $4e74: $5f
    nop                                           ; $4e75: $00
    nop                                           ; $4e76: $00
    inc de                                        ; $4e77: $13
    rst $38                                       ; $4e78: $ff
    call nc, $ab01                                ; $4e79: $d4 $01 $ab
    ld d, l                                       ; $4e7c: $55
    xor e                                         ; $4e7d: $ab
    ld bc, $fd21                                  ; $4e7e: $01 $21 $fd
    inc bc                                        ; $4e81: $03
    xor $03                                       ; $4e82: $ee $03
    xor d                                         ; $4e84: $aa
    ld [$6400], a                                 ; $4e85: $ea $00 $64
    ldh [rSC], a                                  ; $4e88: $e0 $02
    scf                                           ; $4e8a: $37
    ld e, a                                       ; $4e8b: $5f
    and b                                         ; $4e8c: $a0
    ld h, b                                       ; $4e8d: $60
    jr jr_0c6_4ec8                                ; $4e8e: $18 $38

    ld a, [bc]                                    ; $4e90: $0a
    sub h                                         ; $4e91: $94
    ld d, h                                       ; $4e92: $54
    ld bc, $09ec                                  ; $4e93: $01 $ec $09
    ld [hl], b                                    ; $4e96: $70
    inc bc                                        ; $4e97: $03
    add b                                         ; $4e98: $80
    ld h, $01                                     ; $4e99: $26 $01
    rst $38                                       ; $4e9b: $ff
    ld bc, $ff67                                  ; $4e9c: $01 $67 $ff
    push de                                       ; $4e9f: $d5
    nop                                           ; $4ea0: $00
    ld l, d                                       ; $4ea1: $6a
    jr nz, jr_0c6_4e39                            ; $4ea2: $20 $95

    xor d                                         ; $4ea4: $aa
    or b                                          ; $4ea5: $b0
    ld [bc], a                                    ; $4ea6: $02
    db $f4                                        ; $4ea7: $f4
    dec bc                                        ; $4ea8: $0b
    ld a, a                                       ; $4ea9: $7f
    add b                                         ; $4eaa: $80
    xor e                                         ; $4eab: $ab
    ld [hl+], a                                   ; $4eac: $22
    nop                                           ; $4ead: $00
    ld l, $26                                     ; $4eae: $2e $26
    inc b                                         ; $4eb0: $04
    xor h                                         ; $4eb1: $ac
    ld d, e                                       ; $4eb2: $53
    xor e                                         ; $4eb3: $ab
    cp b                                          ; $4eb4: $b8
    inc b                                         ; $4eb5: $04
    xor d                                         ; $4eb6: $aa
    rla                                           ; $4eb7: $17
    ld d, l                                       ; $4eb8: $55
    ld [$7015], a                                 ; $4eb9: $ea $15 $70
    ld [$98aa], sp                                ; $4ebc: $08 $aa $98
    ld [$004a], sp                                ; $4ebf: $08 $4a $00
    or h                                          ; $4ec2: $b4
    add hl, bc                                    ; $4ec3: $09
    jr @+$7f                                      ; $4ec4: $18 $7d

    add b                                         ; $4ec6: $80
    db $d3                                        ; $4ec7: $d3

jr_0c6_4ec8:
    jr z, jr_0c6_4ecb                             ; $4ec8: $28 $01

    add d                                         ; $4eca: $82

jr_0c6_4ecb:
    dec bc                                        ; $4ecb: $0b
    xor d                                         ; $4ecc: $aa
    nop                                           ; $4ecd: $00

jr_0c6_4ece:
    inc d                                         ; $4ece: $14
    nop                                           ; $4ecf: $00
    rst $38                                       ; $4ed0: $ff
    ld a, l                                       ; $4ed1: $7d
    add d                                         ; $4ed2: $82
    rst $38                                       ; $4ed3: $ff
    add b                                         ; $4ed4: $80
    push de                                       ; $4ed5: $d5
    nop                                           ; $4ed6: $00
    add sp, -$7c                                  ; $4ed7: $e8 $84
    ld e, b                                       ; $4ed9: $58
    inc b                                         ; $4eda: $04
    sub l                                         ; $4edb: $95
    ld l, d                                       ; $4edc: $6a
    ld a, [$9805]                                 ; $4edd: $fa $05 $98
    ld a, [bc]                                    ; $4ee0: $0a
    rst $38                                       ; $4ee1: $ff
    nop                                           ; $4ee2: $00
    db $10                                        ; $4ee3: $10
    ld a, l                                       ; $4ee4: $7d
    ld [bc], a                                    ; $4ee5: $02
    xor b                                         ; $4ee6: $a8
    ld l, b                                       ; $4ee7: $68
    inc b                                         ; $4ee8: $04
    push af                                       ; $4ee9: $f5
    ld a, [bc]                                    ; $4eea: $0a
    xor d                                         ; $4eeb: $aa
    ld d, l                                       ; $4eec: $55
    ld b, b                                       ; $4eed: $40
    set 6, [hl]                                   ; $4eee: $cb $f6
    ld bc, $aa55                                  ; $4ef0: $01 $55 $aa
    cp [hl]                                       ; $4ef3: $be
    ld b, b                                       ; $4ef4: $40
    dec hl                                        ; $4ef5: $2b
    rst $38                                       ; $4ef6: $ff
    jr z, jr_0c6_4ece                             ; $4ef7: $28 $d5

    ld a, [hl+]                                   ; $4ef9: $2a
    ld l, [hl]                                    ; $4efa: $6e
    dec bc                                        ; $4efb: $0b
    ld e, e                                       ; $4efc: $5b
    ld [$7c00], sp                                ; $4efd: $08 $00 $7c
    add e                                         ; $4f00: $83
    xor e                                         ; $4f01: $ab
    nop                                           ; $4f02: $00
    nop                                           ; $4f03: $00
    and h                                         ; $4f04: $a4
    rst $38                                       ; $4f05: $ff
    ld e, [hl]                                    ; $4f06: $5e
    and l                                         ; $4f07: $a5
    rst $38                                       ; $4f08: $ff
    ld [$22ff], sp                                ; $4f09: $08 $ff $22
    ld [$0252], sp                                ; $4f0c: $08 $52 $02
    inc b                                         ; $4f0f: $04
    xor e                                         ; $4f10: $ab
    ld d, h                                       ; $4f11: $54
    xor d                                         ; $4f12: $aa
    adc c                                         ; $4f13: $89
    inc bc                                        ; $4f14: $03
    ld [$1528], a                                 ; $4f15: $ea $28 $15
    push de                                       ; $4f18: $d5
    inc l                                         ; $4f19: $2c
    ld bc, $1883                                  ; $4f1a: $01 $83 $18
    inc bc                                        ; $4f1d: $03
    push af                                       ; $4f1e: $f5
    ld a, [bc]                                    ; $4f1f: $0a
    cp a                                          ; $4f20: $bf
    jr nz, jr_0c6_4f63                            ; $4f21: $20 $40

    ld h, h                                       ; $4f23: $64
    ld e, [hl]                                    ; $4f24: $5e
    ld [bc], a                                    ; $4f25: $02
    ccf                                           ; $4f26: $3f
    nop                                           ; $4f27: $00
    ld a, [hl+]                                   ; $4f28: $2a
    push de                                       ; $4f29: $d5
    sub h                                         ; $4f2a: $94
    add d                                         ; $4f2b: $82
    sbc d                                         ; $4f2c: $9a
    inc bc                                        ; $4f2d: $03
    ld a, a                                       ; $4f2e: $7f
    add b                                         ; $4f2f: $80
    ld [$f400], a                                 ; $4f30: $ea $00 $f4
    cp b                                          ; $4f33: $b8
    inc b                                         ; $4f34: $04
    ld [$1508], a                                 ; $4f35: $ea $08 $15
    cp l                                          ; $4f38: $bd
    ld b, d                                       ; $4f39: $42
    and h                                         ; $4f3a: $a4
    and [hl]                                      ; $4f3b: $a6
    ld a, [bc]                                    ; $4f3c: $0a
    ld [$09be], sp                                ; $4f3d: $08 $be $09
    ld b, e                                       ; $4f40: $43
    ld e, h                                       ; $4f41: $5c
    call nz, $0509                                ; $4f42: $c4 $09 $05
    ld d, l                                       ; $4f45: $55
    xor d                                         ; $4f46: $aa
    jr nz, jr_0c6_4f91                            ; $4f47: $20 $48

    inc bc                                        ; $4f49: $03
    ld e, b                                       ; $4f4a: $58
    ld a, [bc]                                    ; $4f4b: $0a
    ld d, c                                       ; $4f4c: $51
    ld c, h                                       ; $4f4d: $4c
    adc [hl]                                      ; $4f4e: $8e
    ld [bc], a                                    ; $4f4f: $02
    ld a, [$0332]                                 ; $4f50: $fa $32 $03
    and l                                         ; $4f53: $a5
    rst $38                                       ; $4f54: $ff
    ld e, a                                       ; $4f55: $5f
    ret z                                         ; $4f56: $c8

    ld bc, $02d4                                  ; $4f57: $01 $d4 $02
    nop                                           ; $4f5a: $00
    ld [hl+], a                                   ; $4f5b: $22
    inc b                                         ; $4f5c: $04
    xor a                                         ; $4f5d: $af
    ld [bc], a                                    ; $4f5e: $02
    inc bc                                        ; $4f5f: $03
    jp c, $0202                                   ; $4f60: $da $02 $02

jr_0c6_4f63:
    ld a, $c1                                     ; $4f63: $3e $c1
    ld c, d                                       ; $4f65: $4a
    push de                                       ; $4f66: $d5
    jp z, Jump_0c6_5a01                           ; $4f67: $ca $01 $5a

    and l                                         ; $4f6a: $a5
    add [hl]                                      ; $4f6b: $86
    dec c                                         ; $4f6c: $0d
    db $d3                                        ; $4f6d: $d3
    add d                                         ; $4f6e: $82
    ld bc, $08aa                                  ; $4f6f: $01 $aa $08
    ld d, l                                       ; $4f72: $55
    ld a, l                                       ; $4f73: $7d
    ld [bc], a                                    ; $4f74: $02
    call nc, Call_000_11d4                        ; $4f75: $d4 $d4 $11
    cp $01                                        ; $4f78: $fe $01
    ld d, l                                       ; $4f7a: $55
    ld sp, $2000                                  ; $4f7b: $31 $00 $20
    ld e, b                                       ; $4f7e: $58
    ld [bc], a                                    ; $4f7f: $02
    xor [hl]                                      ; $4f80: $ae
    add hl, bc                                    ; $4f81: $09
    ld d, h                                       ; $4f82: $54

jr_0c6_4f83:
    xor e                                         ; $4f83: $ab
    ld d, a                                       ; $4f84: $57
    inc e                                         ; $4f85: $1c
    dec b                                         ; $4f86: $05
    nop                                           ; $4f87: $00
    ld [hl], l                                    ; $4f88: $75
    ld a, [bc]                                    ; $4f89: $0a
    ld d, h                                       ; $4f8a: $54
    rst $38                                       ; $4f8b: $ff
    ld e, d                                       ; $4f8c: $5a
    push hl                                       ; $4f8d: $e5
    rst $38                                       ; $4f8e: $ff
    add b                                         ; $4f8f: $80
    rlca                                          ; $4f90: $07

jr_0c6_4f91:
    or [hl]                                       ; $4f91: $b6
    ret                                           ; $4f92: $c9


    rst $10                                       ; $4f93: $d7
    xor b                                         ; $4f94: $a8
    add d                                         ; $4f95: $82
    inc l                                         ; $4f96: $2c
    dec b                                         ; $4f97: $05
    or [hl]                                       ; $4f98: $b6
    nop                                           ; $4f99: $00
    ld e, h                                       ; $4f9a: $5c
    inc d                                         ; $4f9b: $14
    jr nz, jr_0c6_4fa3                            ; $4f9c: $20 $05

    ld a, [$0a92]                                 ; $4f9e: $fa $92 $0a
    push af                                       ; $4fa1: $f5
    ld a, [bc]                                    ; $4fa2: $0a

jr_0c6_4fa3:
    xor [hl]                                      ; $4fa3: $ae
    ld e, c                                       ; $4fa4: $59
    cp h                                          ; $4fa5: $bc
    add b                                         ; $4fa6: $80
    adc $11                                       ; $4fa7: $ce $11
    ld d, a                                       ; $4fa9: $57
    xor b                                         ; $4faa: $a8
    db $fd                                        ; $4fab: $fd
    ld [bc], a                                    ; $4fac: $02
    jr z, @+$01                                   ; $4fad: $28 $ff

    ld a, [hl+]                                   ; $4faf: $2a
    ld bc, $aad5                                  ; $4fb0: $01 $d5 $aa
    ld d, l                                       ; $4fb3: $55
    ld [bc], a                                    ; $4fb4: $02
    rst $38                                       ; $4fb5: $ff
    ret nc                                        ; $4fb6: $d0

    cpl                                           ; $4fb7: $2f
    ld e, h                                       ; $4fb8: $5c
    ld [$5501], sp                                ; $4fb9: $08 $01 $55
    add b                                         ; $4fbc: $80
    ld d, d                                       ; $4fbd: $52
    rst $38                                       ; $4fbe: $ff
    cp a                                          ; $4fbf: $bf
    ld h, b                                       ; $4fc0: $60
    ld a, [$00da]                                 ; $4fc1: $fa $da $00
    jr c, jr_0c6_4f83                             ; $4fc4: $38 $bd

    ld b, d                                       ; $4fc6: $42
    cp d                                          ; $4fc7: $ba
    dec bc                                        ; $4fc8: $0b
    sub d                                         ; $4fc9: $92
    ld bc, $056c                                  ; $4fca: $01 $6c $05
    and l                                         ; $4fcd: $a5
    nop                                           ; $4fce: $00
    sbc b                                         ; $4fcf: $98
    ld de, $5dff                                  ; $4fd0: $11 $ff $5d
    and d                                         ; $4fd3: $a2
    jp z, $ea0b                                   ; $4fd4: $ca $0b $ea

    dec d                                         ; $4fd7: $15
    ld a, [bc]                                    ; $4fd8: $0a
    ld a, h                                       ; $4fd9: $7c
    dec b                                         ; $4fda: $05
    db $10                                        ; $4fdb: $10
    ld e, l                                       ; $4fdc: $5d
    ld [bc], a                                    ; $4fdd: $02
    dec d                                         ; $4fde: $15
    ret c                                         ; $4fdf: $d8

    ld [bc], a                                    ; $4fe0: $02
    rst $38                                       ; $4fe1: $ff
    nop                                           ; $4fe2: $00
    or $09                                        ; $4fe3: $f6 $09
    ld de, $49b6                                  ; $4fe5: $11 $b6 $49
    pop bc                                        ; $4fe8: $c1
    adc h                                         ; $4fe9: $8c
    dec b                                         ; $4fea: $05
    ld a, l                                       ; $4feb: $7d
    ld [bc], a                                    ; $4fec: $02
    sub l                                         ; $4fed: $95
    db $fc                                        ; $4fee: $fc
    inc b                                         ; $4fef: $04
    add b                                         ; $4ff0: $80
    adc b                                         ; $4ff1: $88

jr_0c6_4ff2:
    inc c                                         ; $4ff2: $0c
    push af                                       ; $4ff3: $f5
    nop                                           ; $4ff4: $00
    ld d, d                                       ; $4ff5: $52
    rst $38                                       ; $4ff6: $ff
    rst $38                                       ; $4ff7: $ff
    ld [bc], a                                    ; $4ff8: $02
    ld d, h                                       ; $4ff9: $54
    sub b                                         ; $4ffa: $90
    ld [hl], l                                    ; $4ffb: $75
    ld bc, $d02f                                  ; $4ffc: $01 $2f $d0
    sbc [hl]                                      ; $4fff: $9e
    add hl, bc                                    ; $5000: $09
    ld d, h                                       ; $5001: $54
    dec bc                                        ; $5002: $0b
    ld d, b                                       ; $5003: $50
    rst $38                                       ; $5004: $ff
    jr z, jr_0c6_4ff2                             ; $5005: $28 $eb

    inc d                                         ; $5007: $14
    ld [hl], $18                                  ; $5008: $36 $18
    xor e                                         ; $500a: $ab

jr_0c6_500b:
    inc c                                         ; $500b: $0c
    inc b                                         ; $500c: $04
    db $fd                                        ; $500d: $fd
    ld [bc], a                                    ; $500e: $02
    ld d, l                                       ; $500f: $55
    add h                                         ; $5010: $84
    inc a                                         ; $5011: $3c
    ld b, $ae                                     ; $5012: $06 $ae
    ld d, c                                       ; $5014: $51
    xor b                                         ; $5015: $a8
    rst $38                                       ; $5016: $ff
    sub $01                                       ; $5017: $d6 $01
    ld bc, $0881                                  ; $5019: $01 $81 $08
    ld a, a                                       ; $501c: $7f
    ld d, [hl]                                    ; $501d: $56
    xor c                                         ; $501e: $a9
    ld d, e                                       ; $501f: $53
    sub $04                                       ; $5020: $d6 $04
    ld l, d                                       ; $5022: $6a
    sub l                                         ; $5023: $95
    ld [de], a                                    ; $5024: $12
    pop bc                                        ; $5025: $c1
    inc c                                         ; $5026: $0c
    dec b                                         ; $5027: $05
    ret z                                         ; $5028: $c8

    inc c                                         ; $5029: $0c
    ld d, h                                       ; $502a: $54
    dec hl                                        ; $502b: $2b
    cp a                                          ; $502c: $bf

jr_0c6_502d:
    ld b, b                                       ; $502d: $40
    or d                                          ; $502e: $b2
    jr jr_0c6_5036                                ; $502f: $18 $05

    ld b, b                                       ; $5031: $40
    sbc c                                         ; $5032: $99
    add b                                         ; $5033: $80
    nop                                           ; $5034: $00
    sbc d                                         ; $5035: $9a

jr_0c6_5036:
    ld b, b                                       ; $5036: $40
    cp $41                                        ; $5037: $fe $41
    rst $38                                       ; $5039: $ff
    ld b, b                                       ; $503a: $40
    ld d, $7a                                     ; $503b: $16 $7a
    push bc                                       ; $503d: $c5
    and $76                                       ; $503e: $e6 $76
    ld bc, $4034                                  ; $5040: $01 $34 $40
    inc bc                                        ; $5043: $03
    cp [hl]                                       ; $5044: $be
    add hl, bc                                    ; $5045: $09
    push af                                       ; $5046: $f5
    ld a, [bc]                                    ; $5047: $0a
    ld a, [bc]                                    ; $5048: $0a
    or a                                          ; $5049: $b7
    ld c, b                                       ; $504a: $48
    sub $08                                       ; $504b: $d6 $08
    dec b                                         ; $504d: $05
    ld d, e                                       ; $504e: $53
    add h                                         ; $504f: $84
    ld [bc], a                                    ; $5050: $02
    rst $10                                       ; $5051: $d7
    sub b                                         ; $5052: $90
    sub [hl]                                      ; $5053: $96
    ld [bc], a                                    ; $5054: $02
    ld d, h                                       ; $5055: $54
    and b                                         ; $5056: $a0
    ld d, d                                       ; $5057: $52
    ld bc, $faff                                  ; $5058: $01 $ff $fa
    dec h                                         ; $505b: $25
    ldh a, [$b5]                                  ; $505c: $f0 $b5
    ld c, h                                       ; $505e: $4c
    dec b                                         ; $505f: $05
    db $fc                                        ; $5060: $fc
    add h                                         ; $5061: $84
    add hl, bc                                    ; $5062: $09
    xor $04                                       ; $5063: $ee $04
    ld e, b                                       ; $5065: $58
    call nc, $9b03                                ; $5066: $d4 $03 $9b
    ld c, [hl]                                    ; $5069: $4e
    inc bc                                        ; $506a: $03
    nop                                           ; $506b: $00
    and a                                         ; $506c: $a7
    ld [$ad5a], sp                                ; $506d: $08 $5a $ad
    cp l                                          ; $5070: $bd
    jr jr_0c6_500b                                ; $5071: $18 $98

    ld a, a                                       ; $5073: $7f
    ld b, b                                       ; $5074: $40
    jr c, jr_0c6_502d                             ; $5075: $38 $b6

    ld bc, $ff12                                  ; $5077: $01 $12 $ff
    ld [hl], d                                    ; $507a: $72
    adc l                                         ; $507b: $8d

Jump_0c6_507c:
    db $ed                                        ; $507c: $ed
    ld [de], a                                    ; $507d: $12
    adc e                                         ; $507e: $8b
    ld [hl], $06                                  ; $507f: $36 $06
    ld [bc], a                                    ; $5081: $02
    dec hl                                        ; $5082: $2b
    call nc, $0c76                                ; $5083: $d4 $76 $0c
    ld d, e                                       ; $5086: $53
    add $08                                       ; $5087: $c6 $08
    inc a                                         ; $5089: $3c
    nop                                           ; $508a: $00
    add d                                         ; $508b: $82
    ld [c], a                                     ; $508c: $e2
    ld a, [bc]                                    ; $508d: $0a
    inc de                                        ; $508e: $13
    rst $38                                       ; $508f: $ff
    xor d                                         ; $5090: $aa
    ld d, a                                       ; $5091: $57
    adc $52                                       ; $5092: $ce $52
    ld b, $6b                                     ; $5094: $06 $6b
    add d                                         ; $5096: $82
    adc h                                         ; $5097: $8c
    dec b                                         ; $5098: $05
    or l                                          ; $5099: $b5
    nop                                           ; $509a: $00
    dec [hl]                                      ; $509b: $35
    jp z, $5e81                                   ; $509c: $ca $81 $5e

    ld b, $5c                                     ; $509f: $06 $5c
    ld b, d                                       ; $50a1: $42
    rst $38                                       ; $50a2: $ff
    ld a, l                                       ; $50a3: $7d
    ld bc, $5b00                                  ; $50a4: $01 $00 $5b
    and h                                         ; $50a7: $a4
    ld d, h                                       ; $50a8: $54
    or $06                                        ; $50a9: $f6 $06
    ld c, e                                       ; $50ab: $4b
    ld [c], a                                     ; $50ac: $e2
    sbc d                                         ; $50ad: $9a
    inc bc                                        ; $50ae: $03
    jr c, jr_0c6_50bd                             ; $50af: $38 $0c

    xor [hl]                                      ; $50b1: $ae
    ld a, [de]                                    ; $50b2: $1a
    cp $01                                        ; $50b3: $fe $01
    ld l, l                                       ; $50b5: $6d
    inc b                                         ; $50b6: $04
    inc b                                         ; $50b7: $04
    ld l, b                                       ; $50b8: $68
    or h                                          ; $50b9: $b4
    ld a, [bc]                                    ; $50ba: $0a
    dec b                                         ; $50bb: $05
    ld d, d                                       ; $50bc: $52

jr_0c6_50bd:
    ld b, b                                       ; $50bd: $40
    inc b                                         ; $50be: $04
    xor d                                         ; $50bf: $aa
    ld a, [bc]                                    ; $50c0: $0a
    ld [hl], h                                    ; $50c1: $74
    call nc, $ff03                                ; $50c2: $d4 $03 $ff
    nop                                           ; $50c5: $00
    nop                                           ; $50c6: $00
    ld e, a                                       ; $50c7: $5f
    nop                                           ; $50c8: $00
    ld a, [hl+]                                   ; $50c9: $2a
    rst $38                                       ; $50ca: $ff
    ld d, a                                       ; $50cb: $57
    nop                                           ; $50cc: $00
    ld sp, hl                                     ; $50cd: $f9
    ld b, $00                                     ; $50ce: $06 $00
    ld d, [hl]                                    ; $50d0: $56
    xor c                                         ; $50d1: $a9
    sbc l                                         ; $50d2: $9d
    ld [bc], a                                    ; $50d3: $02
    ld d, a                                       ; $50d4: $57
    xor b                                         ; $50d5: $a8
    sub $29                                       ; $50d6: $d6 $29
    db $10                                        ; $50d8: $10
    ld l, a                                       ; $50d9: $6f
    sub b                                         ; $50da: $90
    ld a, [bc]                                    ; $50db: $0a
    ld a, [$5400]                                 ; $50dc: $fa $00 $54
    xor e                                         ; $50df: $ab
    cp a                                          ; $50e0: $bf
    ld b, b                                       ; $50e1: $40
    nop                                           ; $50e2: $00
    ld a, d                                       ; $50e3: $7a
    add l                                         ; $50e4: $85
    ld a, [$af05]                                 ; $50e5: $fa $05 $af
    ld d, b                                       ; $50e8: $50
    and l                                         ; $50e9: $a5
    nop                                           ; $50ea: $00
    nop                                           ; $50eb: $00
    db $e4                                        ; $50ec: $e4
    rst $38                                       ; $50ed: $ff
    ld d, a                                       ; $50ee: $57
    xor c                                         ; $50ef: $a9
    cp a                                          ; $50f0: $bf
    ld b, c                                       ; $50f1: $41
    rst $38                                       ; $50f2: $ff
    ld bc, $a500                                  ; $50f3: $01 $00 $a5
    ld e, e                                       ; $50f6: $5b
    rst $18                                       ; $50f7: $df
    jr nz, @-$34                                  ; $50f8: $20 $ca

Jump_0c6_50fa:
    dec [hl]                                      ; $50fa: $35
    halt                                          ; $50fb: $76
    add hl, bc                                    ; $50fc: $09
    nop                                           ; $50fd: $00
    sub [hl]                                      ; $50fe: $96
    rst $38                                       ; $50ff: $ff
    ld [$fd80], a                                 ; $5100: $ea $80 $fd
    add b                                         ; $5103: $80
    db $fd                                        ; $5104: $fd
    add d                                         ; $5105: $82
    ld de, $25da                                  ; $5106: $11 $da $25
    ld e, d                                       ; $5109: $5a
    db $e4                                        ; $510a: $e4
    dec b                                         ; $510b: $05
    xor e                                         ; $510c: $ab
    ld d, h                                       ; $510d: $54
    and [hl]                                      ; $510e: $a6
    add h                                         ; $510f: $84
    db $10                                        ; $5110: $10
    ld sp, $956a                                  ; $5111: $31 $6a $95
    db $f4                                        ; $5114: $f4
    add hl, bc                                    ; $5115: $09
    ld a, d                                       ; $5116: $7a
    dec bc                                        ; $5117: $0b
    daa                                           ; $5118: $27
    rst $38                                       ; $5119: $ff
    ld c, d                                       ; $511a: $4a
    ld [hl], h                                    ; $511b: $74
    rlca                                          ; $511c: $07
    db $10                                        ; $511d: $10
    or l                                          ; $511e: $b5
    ld c, d                                       ; $511f: $4a
    sub $84                                       ; $5120: $d6 $84
    ld [bc], a                                    ; $5122: $02
    rst $38                                       ; $5123: $ff
    nop                                           ; $5124: $00
    ld l, d                                       ; $5125: $6a
    nop                                           ; $5126: $00
    ld de, $ff91                                  ; $5127: $11 $91 $ff
    and l                                         ; $512a: $a5
    sub d                                         ; $512b: $92
    nop                                           ; $512c: $00
    push hl                                       ; $512d: $e5
    ld a, [de]                                    ; $512e: $1a
    xor c                                         ; $512f: $a9
    and $02                                       ; $5130: $e6 $02
    inc b                                         ; $5132: $04
    cp $11                                        ; $5133: $fe $11
    db $fd                                        ; $5135: $fd
    ld [hl+], a                                   ; $5136: $22
    ld a, b                                       ; $5137: $78
    ld h, $02                                     ; $5138: $26 $02
    jp hl                                         ; $513a: $e9


    ld d, $04                                     ; $513b: $16 $04
    ld d, [hl]                                    ; $513d: $56
    xor c                                         ; $513e: $a9
    ld [hl], h                                    ; $513f: $74
    dec bc                                        ; $5140: $0b
    and l                                         ; $5141: $a5
    inc h                                         ; $5142: $24
    ld b, $f2                                     ; $5143: $06 $f2
    dec c                                         ; $5145: $0d
    nop                                           ; $5146: $00
    sbc h                                         ; $5147: $9c
    rst $38                                       ; $5148: $ff
    cp a                                          ; $5149: $bf
    nop                                           ; $514a: $00
    or $00                                        ; $514b: $f6 $00
    ld d, [hl]                                    ; $514d: $56
    xor c                                         ; $514e: $a9
    jr z, @-$03                                   ; $514f: $28 $fb

    inc b                                         ; $5151: $04
    ld a, $2a                                     ; $5152: $3e $2a
    call nc, Call_000_07dc                        ; $5154: $d4 $dc $07
    xor a                                         ; $5157: $af
    ld d, b                                       ; $5158: $50
    ld d, h                                       ; $5159: $54
    ld e, b                                       ; $515a: $58
    xor e                                         ; $515b: $ab
    ld a, $2a                                     ; $515c: $3e $2a
    ld a, [$0420]                                 ; $515e: $fa $20 $04
    add d                                         ; $5161: $82
    ld a, [bc]                                    ; $5162: $0a
    db $fd                                        ; $5163: $fd
    ld [bc], a                                    ; $5164: $02
    or l                                          ; $5165: $b5
    add hl, bc                                    ; $5166: $09

jr_0c6_5167:
    ld c, d                                       ; $5167: $4a
    ld a, [hl]                                    ; $5168: $7e
    ld bc, $ceea                                  ; $5169: $01 $ea $ce
    ld [bc], a                                    ; $516c: $02
    ld a, [hl+]                                   ; $516d: $2a
    push de                                       ; $516e: $d5
    sub $03                                       ; $516f: $d6 $03
    nop                                           ; $5171: $00
    xor b                                         ; $5172: $a8
    dec d                                         ; $5173: $15
    rst $38                                       ; $5174: $ff
    ei                                            ; $5175: $fb
    jr nz, @+$01                                  ; $5176: $20 $ff

    jr nz, jr_0c6_5167                            ; $5178: $20 $ed

    ld [$6532], sp                                ; $517a: $08 $32 $65
    jp c, $44c0                                   ; $517d: $da $c0 $44

Call_0c6_5180:
    inc bc                                        ; $5180: $03
    dec hl                                        ; $5181: $2b
    call nc, $800a                                ; $5182: $d4 $0a $80
    ld b, d                                       ; $5185: $42
    inc b                                         ; $5186: $04
    rst $38                                       ; $5187: $ff
    nop                                           ; $5188: $00
    add c                                         ; $5189: $81
    ld a, [hl]                                    ; $518a: $7e
    jp c, $9a25                                   ; $518b: $da $25 $9a

    jr z, @+$01                                   ; $518e: $28 $ff

    ld a, [hl+]                                   ; $5190: $2a
    ld [bc], a                                    ; $5191: $02
    inc bc                                        ; $5192: $03
    and a                                         ; $5193: $a7
    ld e, [hl]                                    ; $5194: $5e
    dec d                                         ; $5195: $15
    xor d                                         ; $5196: $aa
    ld d, l                                       ; $5197: $55
    cp a                                          ; $5198: $bf
    ld b, b                                       ; $5199: $40
    ld b, b                                       ; $519a: $40
    sbc d                                         ; $519b: $9a
    ld a, [bc]                                    ; $519c: $0a
    xor a                                         ; $519d: $af
    ld d, b                                       ; $519e: $50
    add b                                         ; $519f: $80
    rst $38                                       ; $51a0: $ff
    xor d                                         ; $51a1: $aa
    dec b                                         ; $51a2: $05
    nop                                           ; $51a3: $00
    ld [hl], l                                    ; $51a4: $75
    ld a, [bc]                                    ; $51a5: $0a
    ld a, a                                       ; $51a6: $7f
    add b                                         ; $51a7: $80
    or l                                          ; $51a8: $b5
    ld c, b                                       ; $51a9: $48
    dec b                                         ; $51aa: $05
    rst $38                                       ; $51ab: $ff
    ld b, $ef                                     ; $51ac: $06 $ef
    ld b, $ff                                     ; $51ae: $06 $ff
    ld b, $2d                                     ; $51b0: $06 $2d
    ld d, $05                                     ; $51b2: $16 $05
    add sp, $0d                                   ; $51b4: $e8 $0d
    ld c, e                                       ; $51b6: $4b
    nop                                           ; $51b7: $00
    nop                                           ; $51b8: $00
    ld [hl-], a                                   ; $51b9: $32
    rst $38                                       ; $51ba: $ff
    ld d, d                                       ; $51bb: $52
    nop                                           ; $51bc: $00
    xor l                                         ; $51bd: $ad
    ld d, d                                       ; $51be: $52
    ld h, $d1                                     ; $51bf: $26 $d1
    sbc $04                                       ; $51c1: $de $04
    ld a, h                                       ; $51c3: $7c
    inc e                                         ; $51c4: $1c
    sub b                                         ; $51c5: $90
    sub h                                         ; $51c6: $94
    nop                                           ; $51c7: $00
    ld d, d                                       ; $51c8: $52
    xor l                                         ; $51c9: $ad
    ld b, b                                       ; $51ca: $40
    cp d                                          ; $51cb: $ba
    ld b, $82                                     ; $51cc: $06 $82
    ld c, h                                       ; $51ce: $4c
    inc c                                         ; $51cf: $0c
    ld l, d                                       ; $51d0: $6a
    sub l                                         ; $51d1: $95
    ld l, e                                       ; $51d2: $6b
    rst $38                                       ; $51d3: $ff
    cp $1a                                        ; $51d4: $fe $1a
    rlca                                          ; $51d6: $07
    ld d, h                                       ; $51d7: $54
    jr nz, @+$01                                  ; $51d8: $20 $ff

    or [hl]                                       ; $51da: $b6
    inc a                                         ; $51db: $3c
    dec b                                         ; $51dc: $05
    jp c, $e927                                   ; $51dd: $da $27 $e9

    ld d, $07                                     ; $51e0: $16 $07
    inc bc                                        ; $51e2: $03
    rst $38                                       ; $51e3: $ff
    or l                                          ; $51e4: $b5
    nop                                           ; $51e5: $00
    ld c, e                                       ; $51e6: $4b
    or h                                          ; $51e7: $b4
    dec hl                                        ; $51e8: $2b
    ld l, b                                       ; $51e9: $68
    ld b, $6c                                     ; $51ea: $06 $6c
    inc c                                         ; $51ec: $0c
    ld b, b                                       ; $51ed: $40
    ld [$0352], a                                 ; $51ee: $ea $52 $03
    ld l, $04                                     ; $51f1: $2e $04
    push de                                       ; $51f3: $d5
    ld l, $00                                     ; $51f4: $2e $00
    rst $38                                       ; $51f6: $ff
    inc [hl]                                      ; $51f7: $34
    xor e                                         ; $51f8: $ab
    ld d, b                                       ; $51f9: $50
    ld a, $2a                                     ; $51fa: $3e $2a
    ld [hl], h                                    ; $51fc: $74
    inc c                                         ; $51fd: $0c
    ld a, [bc]                                    ; $51fe: $0a
    ld l, b                                       ; $51ff: $68
    ld d, $aa                                     ; $5200: $16 $aa
    ld d, l                                       ; $5202: $55
    dec b                                         ; $5203: $05
    db $fc                                        ; $5204: $fc
    inc bc                                        ; $5205: $03
    ld d, h                                       ; $5206: $54
    rst $38                                       ; $5207: $ff
    ei                                            ; $5208: $fb
    ld [hl+], a                                   ; $5209: $22
    ld b, $54                                     ; $520a: $06 $54
    and b                                         ; $520c: $a0
    db $10                                        ; $520d: $10
    ld [$bf40], sp                                ; $520e: $08 $40 $bf
    xor e                                         ; $5211: $ab
    ld d, h                                       ; $5212: $54
    ld e, d                                       ; $5213: $5a
    ld c, $af                                     ; $5214: $0e $af
    ld d, b                                       ; $5216: $50
    ldh [rTAC], a                                 ; $5217: $e0 $07
    cp d                                          ; $5219: $ba
    dec b                                         ; $521a: $05
    nop                                           ; $521b: $00
    dec a                                         ; $521c: $3d
    or $e4                                        ; $521d: $f6 $e4
    rst $00                                       ; $521f: $c7
    ld b, $03                                     ; $5220: $06 $03
    inc bc                                        ; $5222: $03
    ld bc, $0040                                  ; $5223: $01 $40 $00
    ld bc, $0410                                  ; $5226: $01 $10 $04
    inc bc                                        ; $5229: $03
    jp Jump_0c6_7e00                              ; $522a: $c3 $00 $7e


    add c                                         ; $522d: $81
    nop                                           ; $522e: $00
    ld bc, $ffff                                  ; $522f: $01 $ff $ff
    cp $55                                        ; $5232: $fe $55
    ld [hl+], a                                   ; $5234: $22
    inc sp                                        ; $5235: $33
    ld b, c                                       ; $5236: $41
    nop                                           ; $5237: $00
    rst $18                                       ; $5238: $df
    ld h, c                                       ; $5239: $61
    inc hl                                        ; $523a: $23
    db $fd                                        ; $523b: $fd
    ldh [$80], a                                  ; $523c: $e0 $80
    adc b                                         ; $523e: $88
    ldh a, [rP1]                                  ; $523f: $f0 $00
    sub h                                         ; $5241: $94
    ld [$040a], sp                                ; $5242: $08 $0a $04
    jp z, Jump_0c6_7404                           ; $5245: $ca $04 $74

    adc h                                         ; $5248: $8c
    dec c                                         ; $5249: $0d
    inc e                                         ; $524a: $1c
    ld hl, sp-$30                                 ; $524b: $f8 $d0
    ldh [$28], a                                  ; $524d: $e0 $28
    jr @+$08                                      ; $524f: $18 $06

    jr z, jr_0c6_5273                             ; $5251: $28 $20

    rrca                                          ; $5253: $0f
    ld e, b                                       ; $5254: $58
    adc b                                         ; $5255: $88
    ld c, $70                                     ; $5256: $0e $70
    ld b, b                                       ; $5258: $40
    nop                                           ; $5259: $00
    ld bc, $5002                                  ; $525a: $01 $02 $50
    ld b, c                                       ; $525d: $41
    nop                                           ; $525e: $00
    inc h                                         ; $525f: $24
    db $10                                        ; $5260: $10
    ld a, [bc]                                    ; $5261: $0a
    jr c, jr_0c6_5268                             ; $5262: $38 $04

    ld b, h                                       ; $5264: $44
    jr z, @+$01                                   ; $5265: $28 $ff

    rst $38                                       ; $5267: $ff

jr_0c6_5268:
    nop                                           ; $5268: $00
    rst $38                                       ; $5269: $ff
    jr nz, jr_0c6_5274                            ; $526a: $20 $08

    nop                                           ; $526c: $00
    ld [bc], a                                    ; $526d: $02

jr_0c6_526e:
    nop                                           ; $526e: $00
    inc b                                         ; $526f: $04
    adc h                                         ; $5270: $8c
    ld b, d                                       ; $5271: $42
    ld [hl], d                                    ; $5272: $72

jr_0c6_5273:
    adc c                                         ; $5273: $89

jr_0c6_5274:
    add b                                         ; $5274: $80
    add e                                         ; $5275: $83
    nop                                           ; $5276: $00
    ld bc, $4ab4                                  ; $5277: $01 $b4 $4a
    ld c, $10                                     ; $527a: $0e $10
    inc [hl]                                      ; $527c: $34
    ld c, d                                       ; $527d: $4a
    nop                                           ; $527e: $00
    ld b, d                                       ; $527f: $42
    dec b                                         ; $5280: $05
    ld bc, $0062                                  ; $5281: $01 $62 $00
    jr nc, @+$0a                                  ; $5284: $30 $08

    inc d                                         ; $5286: $14
    jr nc, jr_0c6_528b                            ; $5287: $30 $02

    dec b                                         ; $5289: $05
    ccf                                           ; $528a: $3f

jr_0c6_528b:
    nop                                           ; $528b: $00
    ld [hl], c                                    ; $528c: $71
    jr nc, jr_0c6_5296                            ; $528d: $30 $07

    nop                                           ; $528f: $00
    rst $38                                       ; $5290: $ff
    ld hl, sp+$3c                                 ; $5291: $f8 $3c
    nop                                           ; $5293: $00
    rst $38                                       ; $5294: $ff
    add b                                         ; $5295: $80

jr_0c6_5296:
    ld c, b                                       ; $5296: $48
    ld b, b                                       ; $5297: $40
    ld [$0860], sp                                ; $5298: $08 $60 $08
    ld h, $18                                     ; $529b: $26 $18
    ldh [rP1], a                                  ; $529d: $e0 $00

jr_0c6_529f:
    nop                                           ; $529f: $00
    rst $38                                       ; $52a0: $ff
    rra                                           ; $52a1: $1f
    nop                                           ; $52a2: $00
    rst $38                                       ; $52a3: $ff
    add b                                         ; $52a4: $80
    nop                                           ; $52a5: $00
    add b                                         ; $52a6: $80
    nop                                           ; $52a7: $00
    jr nz, jr_0c6_52aa                            ; $52a8: $20 $00

jr_0c6_52aa:
    add b                                         ; $52aa: $80
    inc b                                         ; $52ab: $04
    jr z, jr_0c6_526e                             ; $52ac: $28 $c0

    nop                                           ; $52ae: $00
    inc [hl]                                      ; $52af: $34
    ld [$0008], sp                                ; $52b0: $08 $08 $00
    db $10                                        ; $52b3: $10
    jr z, jr_0c6_52c6                             ; $52b4: $28 $10

    inc b                                         ; $52b6: $04
    jr @+$15                                      ; $52b7: $18 $13

    inc c                                         ; $52b9: $0c
    rrca                                          ; $52ba: $0f
    jr nz, jr_0c6_52c4                            ; $52bb: $20 $07

    inc bc                                        ; $52bd: $03
    ld [c], a                                     ; $52be: $e2
    ld [$0502], sp                                ; $52bf: $08 $02 $05
    ld [bc], a                                    ; $52c2: $02
    dec bc                                        ; $52c3: $0b

jr_0c6_52c4:
    ld b, $00                                     ; $52c4: $06 $00

jr_0c6_52c6:
    ld [hl], $0f                                  ; $52c6: $36 $0f
    sbc h                                         ; $52c8: $9c
    ld a, b                                       ; $52c9: $78
    ret nc                                        ; $52ca: $d0

    ldh [$e1], a                                  ; $52cb: $e0 $e1
    ld b, b                                       ; $52cd: $40
    db $10                                        ; $52ce: $10
    ld [hl], a                                    ; $52cf: $77
    ld b, b                                       ; $52d0: $40
    xor d                                         ; $52d1: $aa
    and h                                         ; $52d2: $a4
    nop                                           ; $52d3: $00
    add b                                         ; $52d4: $80
    nop                                           ; $52d5: $00
    ld b, b                                       ; $52d6: $40
    add b                                         ; $52d7: $80
    nop                                           ; $52d8: $00
    jr nz, jr_0c6_531b                            ; $52d9: $20 $40

    ld b, b                                       ; $52db: $40
    jr nz, @-$3e                                  ; $52dc: $20 $c0

jr_0c6_52de:
    jr nz, jr_0c6_5300                            ; $52de: $20 $20

    ret nz                                        ; $52e0: $c0

    nop                                           ; $52e1: $00
    ld a, [bc]                                    ; $52e2: $0a
    inc b                                         ; $52e3: $04
    inc b                                         ; $52e4: $04
    ld [$0814], sp                                ; $52e5: $08 $14 $08
    xor [hl]                                      ; $52e8: $ae
    stop                                          ; $52e9: $10 $00
    ld d, a                                       ; $52eb: $57
    jr jr_0c6_529f                                ; $52ec: $18 $b1

    ld e, $ec                                     ; $52ee: $1e $ec
    rra                                           ; $52f0: $1f
    db $eb                                        ; $52f1: $eb
    rla                                           ; $52f2: $17
    nop                                           ; $52f3: $00
    cpl                                           ; $52f4: $2f
    ld e, $08                                     ; $52f5: $1e $08
    ld b, $05                                     ; $52f7: $06 $05
    ld [bc], a                                    ; $52f9: $02
    ld b, $01                                     ; $52fa: $06 $01
    nop                                           ; $52fc: $00
    call Call_0c6_7903                            ; $52fd: $cd $03 $79

jr_0c6_5300:
    add a                                         ; $5300: $87
    inc bc                                        ; $5301: $03
    cp $fc                                        ; $5302: $fe $fc
    rst $38                                       ; $5304: $ff
    nop                                           ; $5305: $00
    ld b, b                                       ; $5306: $40
    nop                                           ; $5307: $00
    sub b                                         ; $5308: $90
    nop                                           ; $5309: $00
    ld c, c                                       ; $530a: $49
    nop                                           ; $530b: $00
    and d                                         ; $530c: $a2
    nop                                           ; $530d: $00
    nop                                           ; $530e: $00
    push de                                       ; $530f: $d5
    nop                                           ; $5310: $00
    ld a, a                                       ; $5311: $7f
    nop                                           ; $5312: $00
    cp $01                                        ; $5313: $fe $01
    ld l, e                                       ; $5315: $6b
    sub h                                         ; $5316: $94
    ld bc, $0040                                  ; $5317: $01 $40 $00
    ld [bc], a                                    ; $531a: $02

jr_0c6_531b:
    nop                                           ; $531b: $00
    stop                                          ; $531c: $10 $00
    xor d                                         ; $531e: $aa
    stop                                          ; $531f: $10 $00
    ld bc, $00fe                                  ; $5321: $01 $fe $00
    cp a                                          ; $5324: $bf
    nop                                           ; $5325: $00
    rst $30                                       ; $5326: $f7
    ld [$1009], sp                                ; $5327: $08 $09 $10
    nop                                           ; $532a: $00
    ld bc, $0015                                  ; $532b: $01 $15 $00
    xor e                                         ; $532e: $ab
    nop                                           ; $532f: $00
    ld e, l                                       ; $5330: $5d
    nop                                           ; $5331: $00
    or a                                          ; $5332: $b7
    xor l                                         ; $5333: $ad
    nop                                           ; $5334: $00
    db $10                                        ; $5335: $10
    ei                                            ; $5336: $fb
    inc b                                         ; $5337: $04
    ld [$0030], sp                                ; $5338: $08 $30 $00
    ld b, c                                       ; $533b: $41
    nop                                           ; $533c: $00
    xor b                                         ; $533d: $a8
    nop                                           ; $533e: $00
    ld de, $0075                                  ; $533f: $11 $75 $00
    rst $18                                       ; $5342: $df
    jr nz, jr_0c6_5345                            ; $5343: $20 $00

jr_0c6_5345:
    db $ed                                        ; $5345: $ed
    ld [de], a                                    ; $5346: $12
    nop                                           ; $5347: $00
    ld b, b                                       ; $5348: $40
    ld d, b                                       ; $5349: $50
    dec b                                         ; $534a: $05
    db $eb                                        ; $534b: $eb
    inc d                                         ; $534c: $14
    add hl, bc                                    ; $534d: $09
    nop                                           ; $534e: $00
    sub c                                         ; $534f: $91
    ld d, $01                                     ; $5350: $16 $01
    xor c                                         ; $5352: $a9
    jr nz, jr_0c6_5385                            ; $5353: $20 $30

    ld hl, $c080                                  ; $5355: $21 $80 $c0
    ld [bc], a                                    ; $5358: $02
    jr z, jr_0c6_52de                             ; $5359: $28 $83

    ret nz                                        ; $535b: $c0

    rst $38                                       ; $535c: $ff
    db $fc                                        ; $535d: $fc
    ldh [rP1], a                                  ; $535e: $e0 $00
    ld b, b                                       ; $5360: $40
    inc bc                                        ; $5361: $03
    ld [bc], a                                    ; $5362: $02
    ld e, b                                       ; $5363: $58
    ld a, b                                       ; $5364: $78
    add h                                         ; $5365: $84
    add b                                         ; $5366: $80
    ld b, b                                       ; $5367: $40
    jr nc, jr_0c6_536a                            ; $5368: $30 $00

jr_0c6_536a:
    add hl, bc                                    ; $536a: $09
    ld c, b                                       ; $536b: $48
    jr nc, jr_0c6_536e                            ; $536c: $30 $00

jr_0c6_536e:
    ld [$013a], sp                                ; $536e: $08 $3a $01
    db $10                                        ; $5371: $10
    db $10                                        ; $5372: $10
    add c                                         ; $5373: $81
    ld bc, $0700                                  ; $5374: $01 $00 $07
    ld [$4438], sp                                ; $5377: $08 $38 $44
    ret nz                                        ; $537a: $c0

    jr nz, jr_0c6_5381                            ; $537b: $20 $04

    dec bc                                        ; $537d: $0b
    jr z, jr_0c6_5398                             ; $537e: $28 $18

    dec h                                         ; $5380: $25

jr_0c6_5381:
    ld b, d                                       ; $5381: $42
    add hl, bc                                    ; $5382: $09
    add c                                         ; $5383: $81
    ld b, b                                       ; $5384: $40

jr_0c6_5385:
    db $10                                        ; $5385: $10
    add c                                         ; $5386: $81
    jp nz, Jump_0c6_4a86                          ; $5387: $c2 $86 $4a

    ret                                           ; $538a: $c9


    ld c, d                                       ; $538b: $4a
    jr jr_0c6_5396                                ; $538c: $18 $08

    add b                                         ; $538e: $80
    add b                                         ; $538f: $80
    nop                                           ; $5390: $00
    add b                                         ; $5391: $80
    add b                                         ; $5392: $80
    nop                                           ; $5393: $00
    add b                                         ; $5394: $80
    nop                                           ; $5395: $00

jr_0c6_5396:
    rst $18                                       ; $5396: $df
    nop                                           ; $5397: $00

jr_0c6_5398:
    ccf                                           ; $5398: $3f
    add b                                         ; $5399: $80
    db $ed                                        ; $539a: $ed
    ld [de], a                                    ; $539b: $12
    ld l, c                                       ; $539c: $69
    scf                                           ; $539d: $37
    db $10                                        ; $539e: $10
    ccf                                           ; $539f: $3f
    ld e, $82                                     ; $53a0: $1e $82
    and d                                         ; $53a2: $a2
    nop                                           ; $53a3: $00
    xor [hl]                                      ; $53a4: $ae
    nop                                           ; $53a5: $00
    ei                                            ; $53a6: $fb
    nop                                           ; $53a7: $00
    ld bc, $00fd                                  ; $53a8: $01 $fd $00
    or a                                          ; $53ab: $b7
    ld c, b                                       ; $53ac: $48
    ret nc                                        ; $53ad: $d0

    add b                                         ; $53ae: $80
    ld b, b                                       ; $53af: $40
    sbc [hl]                                      ; $53b0: $9e
    nop                                           ; $53b1: $00
    inc b                                         ; $53b2: $04
    call nc, $ba00                                ; $53b3: $d4 $00 $ba
    nop                                           ; $53b6: $00
    db $ed                                        ; $53b7: $ed
    ld e, l                                       ; $53b8: $5d
    ld bc, $10ef                                  ; $53b9: $01 $ef $10
    nop                                           ; $53bc: $00
    ld [hl], l                                    ; $53bd: $75
    adc d                                         ; $53be: $8a
    jp c, Jump_0c6_7425                           ; $53bf: $da $25 $74

    adc e                                         ; $53c2: $8b
    xor c                                         ; $53c3: $a9
    ld d, a                                       ; $53c4: $57
    nop                                           ; $53c5: $00
    ld bc, $23ff                                  ; $53c6: $01 $ff $23
    rst $18                                       ; $53c9: $df
    ld d, l                                       ; $53ca: $55
    rst $38                                       ; $53cb: $ff
    cp a                                          ; $53cc: $bf
    rst $38                                       ; $53cd: $ff
    db $10                                        ; $53ce: $10
    and b                                         ; $53cf: $a0
    ld b, b                                       ; $53d0: $40
    ld b, b                                       ; $53d1: $40
    ld b, [hl]                                    ; $53d2: $46
    ld bc, $00c0                                  ; $53d3: $01 $c0 $00
    ld h, b                                       ; $53d6: $60
    add b                                         ; $53d7: $80
    nop                                           ; $53d8: $00

jr_0c6_53d9:
    cp b                                          ; $53d9: $b8
    ld b, b                                       ; $53da: $40
    ld e, a                                       ; $53db: $5f
    and b                                         ; $53dc: $a0
    add b                                         ; $53dd: $80

jr_0c6_53de:
    rst $38                                       ; $53de: $ff
    sbc a                                         ; $53df: $9f
    ld h, b                                       ; $53e0: $60
    nop                                           ; $53e1: $00
    ld a, [hl+]                                   ; $53e2: $2a
    dec d                                         ; $53e3: $15
    dec d                                         ; $53e4: $15
    ld a, [bc]                                    ; $53e5: $0a
    jr jr_0c6_53f7                                ; $53e6: $18 $0f

    dec a                                         ; $53e8: $3d
    ld c, $00                                     ; $53e9: $0e $00
    add sp, $1f                                   ; $53eb: $e8 $1f
    sub l                                         ; $53ed: $95
    ld a, a                                       ; $53ee: $7f
    ld a, $ff                                     ; $53ef: $3e $ff
    rst $18                                       ; $53f1: $df
    jr nz, jr_0c6_53f4                            ; $53f2: $20 $00

jr_0c6_53f4:
    cp d                                          ; $53f4: $ba
    ld b, l                                       ; $53f5: $45
    ld d, l                                       ; $53f6: $55

jr_0c6_53f7:
    xor d                                         ; $53f7: $aa
    jr nz, jr_0c6_53d9                            ; $53f8: $20 $df

    dec b                                         ; $53fa: $05
    cp $02                                        ; $53fb: $fe $02
    jr z, jr_0c6_53de                             ; $53fd: $28 $df

    ld d, h                                       ; $53ff: $54
    rst $38                                       ; $5400: $ff
    ld a, [$40ff]                                 ; $5401: $fa $ff $40
    ld [$0275], sp                                ; $5404: $08 $75 $02
    adc d                                         ; $5407: $8a
    xor b                                         ; $5408: $a8
    ld d, a                                       ; $5409: $57
    nop                                           ; $540a: $00
    rst $38                                       ; $540b: $ff
    ld [hl+], a                                   ; $540c: $22
    stop                                          ; $540d: $10 $00
    cp a                                          ; $540f: $bf
    nop                                           ; $5410: $00
    rst $38                                       ; $5411: $ff
    cp a                                          ; $5412: $bf
    ld b, b                                       ; $5413: $40
    ld a, [$5505]                                 ; $5414: $fa $05 $55
    xor d                                         ; $5417: $aa
    and b                                         ; $5418: $a0
    nop                                           ; $5419: $00
    ld e, a                                       ; $541a: $5f
    dec b                                         ; $541b: $05
    cp $88                                        ; $541c: $fe $88
    ld a, a                                       ; $541e: $7f
    ld d, l                                       ; $541f: $55
    rst $38                                       ; $5420: $ff
    cp [hl]                                       ; $5421: $be
    inc b                                         ; $5422: $04
    rst $38                                       ; $5423: $ff
    ld a, a                                       ; $5424: $7f
    add b                                         ; $5425: $80
    xor d                                         ; $5426: $aa
    ld d, l                                       ; $5427: $55
    jr nc, jr_0c6_5432                            ; $5428: $30 $08

    ld b, l                                       ; $542a: $45
    cp [hl]                                       ; $542b: $be
    ld [de], a                                    ; $542c: $12
    ld [$15ff], sp                                ; $542d: $08 $ff $15
    stop                                          ; $5430: $10 $00

jr_0c6_5432:
    cp h                                          ; $5432: $bc
    ld b, e                                       ; $5433: $43
    jr nz, jr_0c6_548e                            ; $5434: $20 $58

    nop                                           ; $5436: $00
    ld c, c                                       ; $5437: $49
    rst $38                                       ; $5438: $ff
    ld d, b                                       ; $5439: $50
    ld e, b                                       ; $543a: $58
    nop                                           ; $543b: $00
    rst $38                                       ; $543c: $ff
    ld d, b                                       ; $543d: $50
    ld e, b                                       ; $543e: $58
    nop                                           ; $543f: $00
    rst $38                                       ; $5440: $ff
    jr nc, jr_0c6_54ab                            ; $5441: $30 $68

    sub b                                         ; $5443: $90
    ld d, b                                       ; $5444: $50
    ld e, b                                       ; $5445: $58
    ccf                                           ; $5446: $3f
    ret nz                                        ; $5447: $c0

    ld [hl], b                                    ; $5448: $70
    ld e, b                                       ; $5449: $58
    rst $38                                       ; $544a: $ff
    and a                                         ; $544b: $a7
    jp z, Jump_000_0037                           ; $544c: $ca $37 $00

    rst $38                                       ; $544f: $ff
    dec c                                         ; $5450: $0d
    db $ed                                        ; $5451: $ed
    ld e, b                                       ; $5452: $58
    db $db                                        ; $5453: $db
    inc [hl]                                      ; $5454: $34
    ld a, c                                       ; $5455: $79
    cp $00                                        ; $5456: $fe $00
    rst $18                                       ; $5458: $df
    add a                                         ; $5459: $87
    xor a                                         ; $545a: $af
    inc bc                                        ; $545b: $03
    cp $bd                                        ; $545c: $fe $bd
    rrca                                          ; $545e: $0f
    rst $18                                       ; $545f: $df
    nop                                           ; $5460: $00
    xor a                                         ; $5461: $af
    ld e, h                                       ; $5462: $5c
    ld e, l                                       ; $5463: $5d
    cp b                                          ; $5464: $b8
    push af                                       ; $5465: $f5
    ld [hl], d                                    ; $5466: $72
    rst $30                                       ; $5467: $f7
    add sp, $00                                   ; $5468: $e8 $00
    rst $38                                       ; $546a: $ff
    or c                                          ; $546b: $b1
    and a                                         ; $546c: $a7
    rrca                                          ; $546d: $0f
    sub $83                                       ; $546e: $d6 $83
    ld a, e                                       ; $5470: $7b
    add a                                         ; $5471: $87
    nop                                           ; $5472: $00
    cp [hl]                                       ; $5473: $be
    rrca                                          ; $5474: $0f
    db $fd                                        ; $5475: $fd
    rra                                           ; $5476: $1f
    rst $28                                       ; $5477: $ef
    ccf                                           ; $5478: $3f
    ld a, h                                       ; $5479: $7c
    rst $18                                       ; $547a: $df
    nop                                           ; $547b: $00
    and a                                         ; $547c: $a7
    add a                                         ; $547d: $87
    ld b, e                                       ; $547e: $43
    inc de                                        ; $547f: $13
    xor $ff                                       ; $5480: $ee $ff
    rst $18                                       ; $5482: $df
    rst $38                                       ; $5483: $ff
    nop                                           ; $5484: $00
    rst $10                                       ; $5485: $d7
    cp $ef                                        ; $5486: $fe $ef
    ei                                            ; $5488: $fb
    cp a                                          ; $5489: $bf
    ldh a, [$dc]                                  ; $548a: $f0 $dc
    ldh [rP1], a                                  ; $548c: $e0 $00

jr_0c6_548e:
    rst $38                                       ; $548e: $ff
    add c                                         ; $548f: $81
    xor l                                         ; $5490: $ad
    rla                                           ; $5491: $17
    db $eb                                        ; $5492: $eb
    add c                                         ; $5493: $81
    rst $20                                       ; $5494: $e7
    ld e, $00                                     ; $5495: $1e $00
    ld e, l                                       ; $5497: $5d
    dec c                                         ; $5498: $0d
    ld a, [$f198]                                 ; $5499: $fa $98 $f1
    ldh a, [$c3]                                  ; $549c: $f0 $c3
    ld l, b                                       ; $549e: $68
    nop                                           ; $549f: $00
    and c                                         ; $54a0: $a1
    add c                                         ; $54a1: $81
    ld d, l                                       ; $54a2: $55
    inc de                                        ; $54a3: $13
    set 0, c                                      ; $54a4: $cb $c1
    sub e                                         ; $54a6: $93
    rlca                                          ; $54a7: $07
    nop                                           ; $54a8: $00
    rst $00                                       ; $54a9: $c7
    adc l                                         ; $54aa: $8d

jr_0c6_54ab:
    ld a, l                                       ; $54ab: $7d
    ld a, b                                       ; $54ac: $78
    rra                                           ; $54ad: $1f
    ld sp, $60f9                                  ; $54ae: $31 $f9 $60
    nop                                           ; $54b1: $00

jr_0c6_54b2:
    cp [hl]                                       ; $54b2: $be
    ld sp, hl                                     ; $54b3: $f9
    and a                                         ; $54b4: $a7
    rrca                                          ; $54b5: $0f
    ei                                            ; $54b6: $fb
    and a                                         ; $54b7: $a7
    adc [hl]                                      ; $54b8: $8e
    ld [hl], e                                    ; $54b9: $73
    nop                                           ; $54ba: $00
    or $0d                                        ; $54bb: $f6 $0d
    db $fd                                        ; $54bd: $fd
    ld e, b                                       ; $54be: $58
    rst $38                                       ; $54bf: $ff
    inc [hl]                                      ; $54c0: $34
    ret c                                         ; $54c1: $d8

    ld a, a                                       ; $54c2: $7f
    add b                                         ; $54c3: $80
    ld h, b                                       ; $54c4: $60
    ld [$bdfb], sp                                ; $54c5: $08 $fb $bd
    ld c, $df                                     ; $54c8: $0e $df
    cp a                                          ; $54ca: $bf
    ld e, h                                       ; $54cb: $5c
    db $ed                                        ; $54cc: $ed
    nop                                           ; $54cd: $00
    cp b                                          ; $54ce: $b8
    or l                                          ; $54cf: $b5
    ld [hl], d                                    ; $54d0: $72
    ld [hl], h                                    ; $54d1: $74
    jp hl                                         ; $54d2: $e9


    cp $b1                                        ; $54d3: $fe $b1
    xor a                                         ; $54d5: $af
    add b                                         ; $54d6: $80
    ld h, b                                       ; $54d7: $60
    nop                                           ; $54d8: $00
    ld a, a                                       ; $54d9: $7f
    add e                                         ; $54da: $83
    or [hl]                                       ; $54db: $b6
    rrca                                          ; $54dc: $0f
    ld sp, hl                                     ; $54dd: $f9
    rra                                           ; $54de: $1f
    rst $30                                       ; $54df: $f7
    ld de, $5e3f                                  ; $54e0: $11 $3f $5e
    rst $38                                       ; $54e3: $ff
    ld h, b                                       ; $54e4: $60
    ld [$ffbf], sp                                ; $54e5: $08 $bf $ff
    rst $10                                       ; $54e8: $d7
    ld e, [hl]                                    ; $54e9: $5e
    inc bc                                        ; $54ea: $03
    inc b                                         ; $54eb: $04
    ld e, l                                       ; $54ec: $5d
    ei                                            ; $54ed: $fb
    ld a, a                                       ; $54ee: $7f

jr_0c6_54ef:
    ldh a, [$cc]                                  ; $54ef: $f0 $cc
    ld h, b                                       ; $54f1: $60
    db $10                                        ; $54f2: $10
    ld l, e                                       ; $54f3: $6b
    add c                                         ; $54f4: $81
    inc b                                         ; $54f5: $04
    and [hl]                                      ; $54f6: $a6
    rra                                           ; $54f7: $1f
    ld e, h                                       ; $54f8: $5c
    dec c                                         ; $54f9: $0d
    ld [$0060], a                                 ; $54fa: $ea $60 $00
    ld b, e                                       ; $54fd: $43
    add sp, $41                                   ; $54fe: $e8 $41
    and b                                         ; $5500: $a0
    ld h, b                                       ; $5501: $60
    nop                                           ; $5502: $00
    adc e                                         ; $5503: $8b
    pop bc                                        ; $5504: $c1
    and e                                         ; $5505: $a3
    rlca                                          ; $5506: $07
    add $60                                       ; $5507: $c6 $60
    nop                                           ; $5509: $00
    ld bc, $313e                                  ; $550a: $01 $3e $31
    ld [hl], l                                    ; $550d: $75
    ldh [$be], a                                  ; $550e: $e0 $be
    ld sp, hl                                     ; $5510: $f9
    xor l                                         ; $5511: $ad
    ld h, b                                       ; $5512: $60
    nop                                           ; $5513: $00
    nop                                           ; $5514: $00
    adc e                                         ; $5515: $8b
    ld [hl], a                                    ; $5516: $77
    cp $0d                                        ; $5517: $fe $0d
    cp l                                          ; $5519: $bd
    ld e, b                                       ; $551a: $58
    ei                                            ; $551b: $fb
    inc [hl]                                      ; $551c: $34
    jr nz, @+$7a                                  ; $551d: $20 $78

    rst $38                                       ; $551f: $ff
    ld h, b                                       ; $5520: $60
    jr jr_0c6_54b2                                ; $5521: $18 $8f

    ld e, a                                       ; $5523: $5f
    xor a                                         ; $5524: $af
    ld e, h                                       ; $5525: $5c
    db $dd                                        ; $5526: $dd
    jr c, @-$46                                   ; $5527: $38 $b8

    rst $30                                       ; $5529: $f7
    ret nz                                        ; $552a: $c0

Call_0c6_552b:
    nop                                           ; $552b: $00
    ld h, b                                       ; $552c: $60
    jr jr_0c6_54ef                                ; $552d: $18 $c0

    ld [$1feb], sp                                ; $552f: $08 $eb $1f
    rst $18                                       ; $5532: $df
    ld [hl+], a                                   ; $5533: $22
    ccf                                           ; $5534: $3f
    ld e, a                                       ; $5535: $5f
    ld h, b                                       ; $5536: $60
    nop                                           ; $5537: $00
    ld d, e                                       ; $5538: $53
    inc de                                        ; $5539: $13
    rst $38                                       ; $553a: $ff
    ld h, b                                       ; $553b: $60
    nop                                           ; $553c: $00
    ld a, a                                       ; $553d: $7f
    ld a, [hl+]                                   ; $553e: $2a
    cp $6f                                        ; $553f: $fe $6f
    ret nz                                        ; $5541: $c0

    nop                                           ; $5542: $00
    db $fc                                        ; $5543: $fc
    ret nz                                        ; $5544: $c0

    nop                                           ; $5545: $00
    cp l                                          ; $5546: $bd
    ld h, b                                       ; $5547: $60
    nop                                           ; $5548: $00
    xor [hl]                                      ; $5549: $ae
    ld [hl+], a                                   ; $554a: $22
    rla                                           ; $554b: $17
    ld e, l                                       ; $554c: $5d
    ld h, b                                       ; $554d: $60
    nop                                           ; $554e: $00
    pop de                                        ; $554f: $d1
    ldh a, [rBGP]                                 ; $5550: $f0 $47
    ld h, b                                       ; $5552: $60
    db $10                                        ; $5553: $10
    jp z, $c0a0                                   ; $5554: $ca $a0 $c0

    nop                                           ; $5557: $00
    set 0, b                                      ; $5558: $cb $c0
    nop                                           ; $555a: $00
    ccf                                           ; $555b: $3f
    ld sp, $60d5                                  ; $555c: $31 $d5 $60
    cp a                                          ; $555f: $bf

jr_0c6_5560:
    ld a, [bc]                                    ; $5560: $0a
    ld sp, hl                                     ; $5561: $f9
    xor [hl]                                      ; $5562: $ae
    rrca                                          ; $5563: $0f
    db $db                                        ; $5564: $db
    jr nz, jr_0c6_5578                            ; $5565: $20 $11

    cp l                                          ; $5567: $bd
    ret nz                                        ; $5568: $c0

    nop                                           ; $5569: $00
    ld e, b                                       ; $556a: $58
    jr nz, @+$01                                  ; $556b: $20 $ff

    sbc $20                                       ; $556d: $de $20
    ld bc, $bdff                                  ; $556f: $01 $ff $bd
    cpl                                           ; $5572: $2f
    rst $18                                       ; $5573: $df
    rst $30                                       ; $5574: $f7
    add b                                         ; $5575: $80
    ret nz                                        ; $5576: $c0

    nop                                           ; $5577: $00

jr_0c6_5578:
    rst $10                                       ; $5578: $d7

jr_0c6_5579:
    ld [hl], d                                    ; $5579: $72
    push af                                       ; $557a: $f5
    add sp, -$11                                  ; $557b: $e8 $ef
    or c                                          ; $557d: $b1
    and l                                         ; $557e: $a5
    nop                                           ; $557f: $00
    rrca                                          ; $5580: $0f
    push af                                       ; $5581: $f5
    ld c, $ad                                     ; $5582: $0e $ad
    jr jr_0c6_5560                                ; $5584: $18 $da

    jr nc, jr_0c6_5579                            ; $5586: $30 $f1

    nop                                           ; $5588: $00
    ld h, h                                       ; $5589: $64
    xor e                                         ; $558a: $ab
    ret nz                                        ; $558b: $c0

    xor d                                         ; $558c: $aa
    add e                                         ; $558d: $83
    rst $30                                       ; $558e: $f7
    rst $20                                       ; $558f: $e7
    sbc [hl]                                      ; $5590: $9e
    nop                                           ; $5591: $00
    ld a, l                                       ; $5592: $7d
    ld l, a                                       ; $5593: $6f
    inc b                                         ; $5594: $04
    jp nc, $b499                                  ; $5595: $d2 $99 $b4

    jr nc, jr_0c6_55fc                            ; $5598: $30 $62

    nop                                           ; $559a: $00
    ld h, b                                       ; $559b: $60
    call Call_0c6_5180                            ; $559c: $cd $80 $51
    ld c, e                                       ; $559f: $4b
    and e                                         ; $55a0: $a3
    ld b, $58                                     ; $55a1: $06 $58
    nop                                           ; $55a3: $00
    rst $28                                       ; $55a4: $ef
    rrca                                          ; $55a5: $0f
    ld b, $3f                                     ; $55a6: $06 $3f
    dec de                                        ; $55a8: $1b

jr_0c6_55a9:
    cp [hl]                                       ; $55a9: $be
    dec [hl]                                      ; $55aa: $35
    ld [hl], a                                    ; $55ab: $77
    nop                                           ; $55ac: $00
    ld h, e                                       ; $55ad: $63
    add e                                         ; $55ae: $83
    db $fd                                        ; $55af: $fd
    xor a                                         ; $55b0: $af
    ld d, a                                       ; $55b1: $57
    rst $10                                       ; $55b2: $d7
    xor [hl]                                      ; $55b3: $ae
    ld a, l                                       ; $55b4: $7d
    nop                                           ; $55b5: $00
    sbc h                                         ; $55b6: $9c
    or $0f                                        ; $55b7: $f6 $0f
    ld l, a                                       ; $55b9: $6f
    cp b                                          ; $55ba: $b8
    db $fd                                        ; $55bb: $fd
    ld a, [c]                                     ; $55bc: $f2
    cp e                                          ; $55bd: $bb
    nop                                           ; $55be: $00
    ldh [$f0], a                                  ; $55bf: $e0 $f0
    rst $08                                       ; $55c1: $cf
    ei                                            ; $55c2: $fb
    rlca                                          ; $55c3: $07
    cp a                                          ; $55c4: $bf

jr_0c6_55c5:
    ld c, $ab                                     ; $55c5: $0e $ab
    nop                                           ; $55c7: $00
    ld e, [hl]                                    ; $55c8: $5e
    and a                                         ; $55c9: $a7
    adc [hl]                                      ; $55ca: $8e
    db $fc                                        ; $55cb: $fc
    ld a, c                                       ; $55cc: $79
    ld l, d                                       ; $55cd: $6a
    jr nc, jr_0c6_55c5                            ; $55ce: $30 $f5

    nop                                           ; $55d0: $00
    ld h, b                                       ; $55d1: $60
    sbc a                                         ; $55d2: $9f
    ret nz                                        ; $55d3: $c0

    xor d                                         ; $55d4: $aa
    and e                                         ; $55d5: $a3
    rst $10                                       ; $55d6: $d7
    add $d8                                       ; $55d7: $c6 $d8
    nop                                           ; $55d9: $00
    dec a                                         ; $55da: $3d
    inc a                                         ; $55db: $3c
    ld b, $5f                                     ; $55dc: $06 $5f
    ld e, b                                       ; $55de: $58
    xor e                                         ; $55df: $ab
    ld [hl-], a                                   ; $55e0: $32
    ld e, a                                       ; $55e1: $5f
    nop                                           ; $55e2: $00
    ld [hl], b                                    ; $55e3: $70
    sub l                                         ; $55e4: $95
    cp $f7                                        ; $55e5: $fe $f7
    inc de                                        ; $55e7: $13
    ld a, a                                       ; $55e8: $7f
    ld h, $4e                                     ; $55e9: $26 $4e
    nop                                           ; $55eb: $00

jr_0c6_55ec:
    inc e                                         ; $55ec: $1c
    ld [hl], l                                    ; $55ed: $75
    adc [hl]                                      ; $55ee: $8e
    cp l                                          ; $55ef: $bd
    jr jr_0c6_55ec                                ; $55f0: $18 $fa

    jr nc, jr_0c6_55a9                            ; $55f2: $30 $b5

    add b                                         ; $55f4: $80
    ld h, b                                       ; $55f5: $60
    nop                                           ; $55f6: $00
    ld a, [hl+]                                   ; $55f7: $2a
    add e                                         ; $55f8: $83
    or a                                          ; $55f9: $b7
    rst $20                                       ; $55fa: $e7
    adc [hl]                                      ; $55fb: $8e

jr_0c6_55fc:
    ld a, l                                       ; $55fc: $7d
    ld l, h                                       ; $55fd: $6c
    jr nz, jr_0c6_5606                            ; $55fe: $20 $06

    jp z, Jump_000_1060                           ; $5600: $ca $60 $10

    sbc l                                         ; $5603: $9d
    ret nz                                        ; $5604: $c0

    ld e, c                                       ; $5605: $59

Call_0c6_5606:
jr_0c6_5606:
    ld c, e                                       ; $5606: $4b
    and a                                         ; $5607: $a7
    ld [$dc06], sp                                ; $5608: $08 $06 $dc
    db $eb                                        ; $560b: $eb
    ld c, a                                       ; $560c: $4f
    ld h, b                                       ; $560d: $60
    nop                                           ; $560e: $00
    or a                                          ; $560f: $b7
    dec [hl]                                      ; $5610: $35
    ld [hl], $00                                  ; $5611: $36 $00
    ld h, e                                       ; $5613: $63
    sub e                                         ; $5614: $93
    db $ed                                        ; $5615: $ed
    xor l                                         ; $5616: $ad
    ld d, a                                       ; $5617: $57
    ei                                            ; $5618: $fb
    xor [hl]                                      ; $5619: $ae
    ld l, e                                       ; $561a: $6b
    nop                                           ; $561b: $00
    sbc h                                         ; $561c: $9c
    rst $30                                       ; $561d: $f7

jr_0c6_561e:
    ld c, $7f                                     ; $561e: $0e $7f
    cp b                                          ; $5620: $b8
    db $dd                                        ; $5621: $dd
    ld a, [c]                                     ; $5622: $f2
    ei                                            ; $5623: $fb
    nop                                           ; $5624: $00
    ldh [$a0], a                                  ; $5625: $e0 $a0
    rst $08                                       ; $5627: $cf
    rst $38                                       ; $5628: $ff
    rlca                                          ; $5629: $07
    or a                                          ; $562a: $b7
    ld c, $2b                                     ; $562b: $0e $2b
    ld [bc], a                                    ; $562d: $02
    sbc $a6                                       ; $562e: $de $a6
    adc [hl]                                      ; $5630: $8e
    db $fd                                        ; $5631: $fd
    ld a, c                                       ; $5632: $79
    ld a, d                                       ; $5633: $7a
    ld h, b                                       ; $5634: $60
    jr nz, @-$2b                                  ; $5635: $20 $d3

    ld [$fec6], sp                                ; $5637: $08 $c6 $fe
    dec a                                         ; $563a: $3d
    cp [hl]                                       ; $563b: $be
    ld h, b                                       ; $563c: $60
    jr nz, jr_0c6_561e                            ; $563d: $20 $df

    cp $e5                                        ; $563f: $fe $e5
    nop                                           ; $5641: $00
    inc de                                        ; $5642: $13
    ld e, a                                       ; $5643: $5f
    ld h, $ee                                     ; $5644: $26 $ee
    inc e                                         ; $5646: $1c
    ld [hl], a                                    ; $5647: $77
    adc h                                         ; $5648: $8c
    and l                                         ; $5649: $a5
    adc d                                         ; $564a: $8a
    ld h, b                                       ; $564b: $60
    nop                                           ; $564c: $00
    pop af                                        ; $564d: $f1
    ld h, h                                       ; $564e: $64
    and a                                         ; $564f: $a7
    ld h, b                                       ; $5650: $60
    nop                                           ; $5651: $00
    or [hl]                                       ; $5652: $b6
    ld h, b                                       ; $5653: $60
    nop                                           ; $5654: $00
    ld a, b                                       ; $5655: $78
    inc hl                                        ; $5656: $23
    ld b, $cb                                     ; $5657: $06 $cb
    ret nz                                        ; $5659: $c0

    db $10                                        ; $565a: $10
    sub l                                         ; $565b: $95
    ret nz                                        ; $565c: $c0

    ld d, e                                       ; $565d: $53
    ld h, b                                       ; $565e: $60
    nop                                           ; $565f: $00
    ret nz                                        ; $5660: $c0

    ld [$2f10], sp                                ; $5661: $08 $10 $2f
    dec de                                        ; $5664: $1b
    sbc e                                         ; $5665: $9b
    ret nz                                        ; $5666: $c0

    nop                                           ; $5667: $00
    add b                                         ; $5668: $80
    rst $38                                       ; $5669: $ff
    rst $38                                       ; $566a: $ff
    ld d, a                                       ; $566b: $57
    nop                                           ; $566c: $00
    ld e, e                                       ; $566d: $5b
    xor [hl]                                      ; $566e: $ae
    dec c                                         ; $566f: $0d
    cp h                                          ; $5670: $bc
    or [hl]                                       ; $5671: $b6
    rrca                                          ; $5672: $0f
    ld c, a                                       ; $5673: $4f
    cp b                                          ; $5674: $b8
    ld d, d                                       ; $5675: $52
    rst $38                                       ; $5676: $ff
    ret nz                                        ; $5677: $c0

    nop                                           ; $5678: $00
    ldh [$c0], a                                  ; $5679: $e0 $c0
    db $10                                        ; $567b: $10
    ccf                                           ; $567c: $3f
    adc $60                                       ; $567d: $ce $60
    ld [$885a], sp                                ; $567f: $08 $5a $88
    ret nz                                        ; $5682: $c0

    nop                                           ; $5683: $00
    db $dd                                        ; $5684: $dd
    ret nz                                        ; $5685: $c0

    xor c                                         ; $5686: $a9
    ret nz                                        ; $5687: $c0

    nop                                           ; $5688: $00
    ei                                            ; $5689: $fb
    inc a                                         ; $568a: $3c
    ld e, l                                       ; $568b: $5d
    add d                                         ; $568c: $82
    ret nz                                        ; $568d: $c0

    nop                                           ; $568e: $00
    cp e                                          ; $568f: $bb
    ld [hl-], a                                   ; $5690: $32
    cpl                                           ; $5691: $2f
    ld [hl], b                                    ; $5692: $70
    push bc                                       ; $5693: $c5
    ret nz                                        ; $5694: $c0

    db $10                                        ; $5695: $10
    rst $28                                       ; $5696: $ef
    ld h, d                                       ; $5697: $62
    inc e                                         ; $5698: $1c
    jr nz, @+$0b                                  ; $5699: $20 $09

    ret nz                                        ; $569b: $c0

    ld [$c2d1], sp                                ; $569c: $08 $d1 $c2
    xor e                                         ; $569f: $ab
    jr nz, jr_0c6_56e3                            ; $56a0: $20 $41

    ld [hl+], a                                   ; $56a2: $22
    ld [$8d60], sp                                ; $56a3: $08 $60 $8d
    ret nz                                        ; $56a6: $c0

    ld de, $10c0                                  ; $56a7: $11 $c0 $10
    ld a, l                                       ; $56aa: $7d
    or b                                          ; $56ab: $b0
    or a                                          ; $56ac: $b7
    nop                                           ; $56ad: $00
    ld l, c                                       ; $56ae: $69
    ei                                            ; $56af: $fb
    call nz, $a3cf                                ; $56b0: $c4 $cf $a3
    db $eb                                        ; $56b3: $eb
    ld b, $ff                                     ; $56b4: $06 $ff
    nop                                           ; $56b6: $00
    adc l                                         ; $56b7: $8d
    rst $30                                       ; $56b8: $f7
    ld e, $37                                     ; $56b9: $1e $37
    pop hl                                        ; $56bb: $e1
    ld [$bf34], a                                 ; $56bc: $ea $34 $bf
    nop                                           ; $56bf: $00
    ld l, d                                       ; $56c0: $6a
    ld l, a                                       ; $56c1: $6f
    push bc                                       ; $56c2: $c5
    jp $fabf                                      ; $56c3: $c3 $bf $fa


    xor a                                         ; $56c6: $af
    or a                                          ; $56c7: $b7
    nop                                           ; $56c8: $00
    rra                                           ; $56c9: $1f
    dec e                                         ; $56ca: $1d
    cp $ab                                        ; $56cb: $fe $ab
    push af                                       ; $56cd: $f5
    cp [hl]                                       ; $56ce: $be
    ld [hl], b                                    ; $56cf: $70
    ld a, a                                       ; $56d0: $7f
    ld [$e7fc], sp                                ; $56d1: $08 $fc $e7
    rst $38                                       ; $56d4: $ff
    bit 6, d                                      ; $56d5: $cb $72
    dec b                                         ; $56d7: $05
    ld e, a                                       ; $56d8: $5f
    cp [hl]                                       ; $56d9: $be
    cp h                                          ; $56da: $bc
    nop                                           ; $56db: $00
    ld a, [$7af5]                                 ; $56dc: $fa $f5 $7a
    xor a                                         ; $56df: $af
    ld hl, sp-$0b                                 ; $56e0: $f8 $f5
    ld h, b                                       ; $56e2: $60

jr_0c6_56e3:
    ld a, a                                       ; $56e3: $7f
    nop                                           ; $56e4: $00
    ret nz                                        ; $56e5: $c0

    add c                                         ; $56e6: $81
    db $eb                                        ; $56e7: $eb
    cp e                                          ; $56e8: $bb
    add $dc                                       ; $56e9: $c6 $dc
    rrca                                          ; $56eb: $0f
    sub $00                                       ; $56ec: $d6 $00
    ccf                                           ; $56ee: $3f
    cp a                                          ; $56ef: $bf
    ld h, d                                       ; $56f0: $62
    cp l                                          ; $56f1: $bd
    ld [hl], b                                    ; $56f2: $70
    ei                                            ; $56f3: $fb
    ldh [rIE], a                                  ; $56f4: $e0 $ff
    nop                                           ; $56f6: $00
    ldh [$35], a                                  ; $56f7: $e0 $35
    jp $07db                                      ; $56f9: $c3 $db $07


    rst $30                                       ; $56fc: $f7
    ld c, l                                       ; $56fd: $4d
    jp nc, $ff00                                  ; $56fe: $d2 $00 $ff

    cp e                                          ; $5701: $bb
    ld l, d                                       ; $5702: $6a
    rst $18                                       ; $5703: $df
    ld [hl-], a                                   ; $5704: $32
    ld a, [$7f60]                                 ; $5705: $fa $60 $7f
    nop                                           ; $5708: $00
    call c, $ffa7                                 ; $5709: $dc $a7 $ff
    ld e, e                                       ; $570c: $5b
    xor [hl]                                      ; $570d: $ae
    or l                                          ; $570e: $b5
    ld a, h                                       ; $570f: $7c
    ld d, a                                       ; $5710: $57
    nop                                           ; $5711: $00
    cp $af                                        ; $5712: $fe $af
    rst $38                                       ; $5714: $ff
    ld a, l                                       ; $5715: $7d
    or b                                          ; $5716: $b0
    or $69                                        ; $5717: $f6 $69
    ld a, e                                       ; $5719: $7b
    nop                                           ; $571a: $00
    call nz, $a3cd                                ; $571b: $c4 $cd $a3
    rst $28                                       ; $571e: $ef
    ld b, $fe                                     ; $571f: $06 $fe
    adc l                                         ; $5721: $8d
    sub [hl]                                      ; $5722: $96
    nop                                           ; $5723: $00
    ccf                                           ; $5724: $3f
    ld [hl], a                                    ; $5725: $77
    pop hl                                        ; $5726: $e1
    sbc $34                                       ; $5727: $de $34
    cp l                                          ; $5729: $bd
    ld l, d                                       ; $572a: $6a
    db $eb                                        ; $572b: $eb
    nop                                           ; $572c: $00
    push bc                                       ; $572d: $c5
    adc c                                         ; $572e: $89
    rst $30                                       ; $572f: $f7
    ld a, a                                       ; $5730: $7f
    xor a                                         ; $5731: $af
    and h                                         ; $5732: $a4
    rra                                           ; $5733: $1f
    ld a, [hl-]                                   ; $5734: $3a
    nop                                           ; $5735: $00
    rst $38                                       ; $5736: $ff
    rst $28                                       ; $5737: $ef
    push af                                       ; $5738: $f5
    cp a                                          ; $5739: $bf
    ld [hl], b                                    ; $573a: $70
    rst $28                                       ; $573b: $ef
    db $fc                                        ; $573c: $fc
    ld h, a                                       ; $573d: $67
    jr nz, @+$01                                  ; $573e: $20 $ff

    adc e                                         ; $5740: $8b
    inc d                                         ; $5741: $14
    ld [bc], a                                    ; $5742: $02
    rst $18                                       ; $5743: $df
    cp [hl]                                       ; $5744: $be
    db $fd                                        ; $5745: $fd
    ld a, [$20e7]                                 ; $5746: $fa $e7 $20
    ld a, d                                       ; $5749: $7a
    rst $10                                       ; $574a: $d7
    ld h, b                                       ; $574b: $60
    nop                                           ; $574c: $00
    rst $38                                       ; $574d: $ff
    ret nz                                        ; $574e: $c0

    ld d, c                                       ; $574f: $51
    db $eb                                        ; $5750: $eb
    cp a                                          ; $5751: $bf
    nop                                           ; $5752: $00
    add $d7                                       ; $5753: $c6 $d7
    rrca                                          ; $5755: $0f
    call c, $dd3f                                 ; $5756: $dc $3f $dd
    ld h, d                                       ; $5759: $62
    db $dd                                        ; $575a: $dd
    nop                                           ; $575b: $00
    ld [hl], b                                    ; $575c: $70
    ld a, e                                       ; $575d: $7b
    ldh [$df], a                                  ; $575e: $e0 $df
    ldh [rPCM34], a                               ; $5760: $e0 $77
    add c                                         ; $5762: $81
    rst $18                                       ; $5763: $df
    nop                                           ; $5764: $00
    rlca                                          ; $5765: $07
    cp [hl]                                       ; $5766: $be
    ld c, l                                       ; $5767: $4d
    jp c, $b5ff                                   ; $5768: $da $ff $b5

    ld l, d                                       ; $576b: $6a
    rst $38                                       ; $576c: $ff
    add b                                         ; $576d: $80
    ld h, b                                       ; $576e: $60
    nop                                           ; $576f: $00
    ei                                            ; $5770: $fb
    call c, $ff25                                 ; $5771: $dc $25 $ff
    ei                                            ; $5774: $fb
    xor [hl]                                      ; $5775: $ae
    rst $38                                       ; $5776: $ff
    ld a, [bc]                                    ; $5777: $0a
    ld a, h                                       ; $5778: $7c
    cp a                                          ; $5779: $bf
    cp $6d                                        ; $577a: $fe $6d
    ld h, b                                       ; $577c: $60
    nop                                           ; $577d: $00
    rst $38                                       ; $577e: $ff
    ld h, b                                       ; $577f: $60
    nop                                           ; $5780: $00
    rst $28                                       ; $5781: $ef
    ld b, c                                       ; $5782: $41
    add e                                         ; $5783: $83
    ld h, b                                       ; $5784: $60
    ld [$1eb7], sp                                ; $5785: $08 $b7 $1e
    ld [hl], a                                    ; $5788: $77
    pop hl                                        ; $5789: $e1
    ld a, [$00c0]                                 ; $578a: $fa $c0 $00
    nop                                           ; $578d: $00
    xor $c5                                       ; $578e: $ee $c5
    ld bc, $f7ff                                  ; $5790: $01 $ff $f7
    xor a                                         ; $5793: $af
    cp [hl]                                       ; $5794: $be
    rra                                           ; $5795: $1f
    nop                                           ; $5796: $00
    ld a, [hl]                                    ; $5797: $7e
    cp a                                          ; $5798: $bf
    xor $f5                                       ; $5799: $ee $f5
    sbc $70                                       ; $579b: $de $70
    cp a                                          ; $579d: $bf
    db $fc                                        ; $579e: $fc
    nop                                           ; $579f: $00
    rst $28                                       ; $57a0: $ef
    rst $38                                       ; $57a1: $ff
    db $eb                                        ; $57a2: $eb
    rst $18                                       ; $57a3: $df
    ld l, a                                       ; $57a4: $6f
    cp $fd                                        ; $57a5: $fe $fd
    cp [hl]                                       ; $57a7: $be
    ld d, b                                       ; $57a8: $50
    ld [hl], h                                    ; $57a9: $74
    ret nz                                        ; $57aa: $c0

    jr nz, @+$01                                  ; $57ab: $20 $ff

    ret nz                                        ; $57ad: $c0

    nop                                           ; $57ae: $00
    ld a, [hl]                                    ; $57af: $7e
    rst $00                                       ; $57b0: $c7
    rst $18                                       ; $57b1: $df
    rrca                                          ; $57b2: $0f
    inc d                                         ; $57b3: $14
    db $fd                                        ; $57b4: $fd
    ld e, $bf                                     ; $57b5: $1e $bf
    ld h, b                                       ; $57b7: $60
    nop                                           ; $57b8: $00
    dec sp                                        ; $57b9: $3b
    ret nz                                        ; $57ba: $c0

    nop                                           ; $57bb: $00
    dec h                                         ; $57bc: $25
    db $d3                                        ; $57bd: $d3
    dec d                                         ; $57be: $15
    jp c, $ff07                                   ; $57bf: $da $07 $ff

    ret nz                                        ; $57c2: $c0

    nop                                           ; $57c3: $00
    rst $38                                       ; $57c4: $ff
    ret nz                                        ; $57c5: $c0

    nop                                           ; $57c6: $00
    cp d                                          ; $57c7: $ba
    ld h, b                                       ; $57c8: $60
    db $10                                        ; $57c9: $10
    db $10                                        ; $57ca: $10
    db $d3                                        ; $57cb: $d3
    xor [hl]                                      ; $57cc: $ae
    cpl                                           ; $57cd: $2f
    ld h, b                                       ; $57ce: $60
    nop                                           ; $57cf: $00
    push af                                       ; $57d0: $f5
    rst $38                                       ; $57d1: $ff
    db $dd                                        ; $57d2: $dd
    or b                                          ; $57d3: $b0
    ld d, b                                       ; $57d4: $50
    rst $30                                       ; $57d5: $f7
    jr nz, jr_0c6_57d9                            ; $57d6: $20 $01

    db $dd                                        ; $57d8: $dd

jr_0c6_57d9:
    jr nz, @+$03                                  ; $57d9: $20 $01

    or $8d                                        ; $57db: $f6 $8d
    jp nz, $503f                                  ; $57dd: $c2 $3f $50

    rst $30                                       ; $57e0: $f7
    ld h, b                                       ; $57e1: $60
    nop                                           ; $57e2: $00
    rst $30                                       ; $57e3: $f7
    ret nz                                        ; $57e4: $c0

    nop                                           ; $57e5: $00
    sub l                                         ; $57e6: $95
    db $eb                                        ; $57e7: $eb
    ld d, a                                       ; $57e8: $57
    xor a                                         ; $57e9: $af
    nop                                           ; $57ea: $00
    or h                                          ; $57eb: $b4
    rra                                           ; $57ec: $1f
    jr @+$01                                      ; $57ed: $18 $ff

    cp [hl]                                       ; $57ef: $be
    push af                                       ; $57f0: $f5
    db $fd                                        ; $57f1: $fd
    ret nz                                        ; $57f2: $c0

    nop                                           ; $57f3: $00
    rst $28                                       ; $57f4: $ef
    add c                                         ; $57f5: $81
    db $eb                                        ; $57f6: $eb
    rla                                           ; $57f7: $17
    ld e, a                                       ; $57f8: $5f
    rrca                                          ; $57f9: $0f
    rst $28                                       ; $57fa: $ef
    ld e, $14                                     ; $57fb: $1e $14
    dec a                                         ; $57fd: $3d
    rst $38                                       ; $57fe: $ff

Jump_0c6_57ff:
    db $db                                        ; $57ff: $db
    and d                                         ; $5800: $a2
    inc bc                                        ; $5801: $03
    db $f4                                        ; $5802: $f4
    ld b, b                                       ; $5803: $40
    inc bc                                        ; $5804: $03
    di                                            ; $5805: $f3
    rst $38                                       ; $5806: $ff
    nop                                           ; $5807: $00
    cp [hl]                                       ; $5808: $be
    db $fc                                        ; $5809: $fc
    db $ed                                        ; $580a: $ed
    ret c                                         ; $580b: $d8

    ld b, c                                       ; $580c: $41
    ld hl, sp-$16                                 ; $580d: $f8 $ea
    ret nz                                        ; $580f: $c0

    nop                                           ; $5810: $00
    push de                                       ; $5811: $d5
    add l                                         ; $5812: $85
    rst $38                                       ; $5813: $ff
    ldh [$f5], a                                  ; $5814: $e0 $f5
    add e                                         ; $5816: $83
    ld a, [hl+]                                   ; $5817: $2a
    rst $00                                       ; $5818: $c7
    nop                                           ; $5819: $00
    or l                                          ; $581a: $b5
    dec a                                         ; $581b: $3d
    ld c, c                                       ; $581c: $49
    sbc b                                         ; $581d: $98
    ld a, [c]                                     ; $581e: $f2
    jr nc, @+$66                                  ; $581f: $30 $64

    ret nz                                        ; $5821: $c0

    nop                                           ; $5822: $00
    sub c                                         ; $5823: $91
    add c                                         ; $5824: $81
    rst $38                                       ; $5825: $ff
    pop de                                        ; $5826: $d1
    ld [$0a9d], a                                 ; $5827: $ea $9d $0a
    rst $30                                       ; $582a: $f7
    ld [bc], a                                    ; $582b: $02
    rst $38                                       ; $582c: $ff
    adc l                                         ; $582d: $8d
    ld l, l                                       ; $582e: $6d
    ld a, b                                       ; $582f: $78
    ld a, [$2030]                                 ; $5830: $fa $30 $20
    nop                                           ; $5833: $00
    add c                                         ; $5834: $81
    nop                                           ; $5835: $00
    rst $38                                       ; $5836: $ff
    push de                                       ; $5837: $d5
    db $fd                                        ; $5838: $fd
    cp e                                          ; $5839: $bb
    dec bc                                        ; $583a: $0b
    rst $30                                       ; $583b: $f7
    or l                                          ; $583c: $b5
    rst $38                                       ; $583d: $ff
    nop                                           ; $583e: $00
    ld l, l                                       ; $583f: $6d
    ld a, a                                       ; $5840: $7f
    ld a, b                                       ; $5841: $78
    ccf                                           ; $5842: $3f
    db $fd                                        ; $5843: $fd
    rst $18                                       ; $5844: $df
    cp $a7                                        ; $5845: $fe $a7
    nop                                           ; $5847: $00
    ld a, [$67f7]                                 ; $5848: $fa $f7 $67
    db $dd                                        ; $584b: $dd
    sbc $fb                                       ; $584c: $de $fb
    rst $30                                       ; $584e: $f7
    ld e, h                                       ; $584f: $5c
    nop                                           ; $5850: $00
    ld c, a                                       ; $5851: $4f
    ld hl, sp+$7b                                 ; $5852: $f8 $7b
    db $f4                                        ; $5854: $f4
    rst $38                                       ; $5855: $ff
    ldh [rIE], a                                  ; $5856: $e0 $ff
    cp c                                          ; $5858: $b9
    db $10                                        ; $5859: $10
    db $fd                                        ; $585a: $fd
    ret nz                                        ; $585b: $c0

    xor $60                                       ; $585c: $ee $60
    nop                                           ; $585e: $00
    ld d, [hl]                                    ; $585f: $56
    rrca                                          ; $5860: $0f
    rst $38                                       ; $5861: $ff
    ld e, $28                                     ; $5862: $1e $28
    db $fd                                        ; $5864: $fd
    ld a, a                                       ; $5865: $7f
    ld h, b                                       ; $5866: $60
    ld [$a0ee], sp                                ; $5867: $08 $ee $a0
    dec bc                                        ; $586a: $0b
    rst $30                                       ; $586b: $f7
    cp [hl]                                       ; $586c: $be
    db $fc                                        ; $586d: $fc
    inc d                                         ; $586e: $14
    ld l, l                                       ; $586f: $6d
    ret c                                         ; $5870: $d8

    xor d                                         ; $5871: $aa
    ld h, b                                       ; $5872: $60
    nop                                           ; $5873: $00
    call nc, Call_000_1060                        ; $5874: $d4 $60 $10
    xor [hl]                                      ; $5877: $ae
    jp $bd04                                      ; $5878: $c3 $04 $bd


    dec a                                         ; $587b: $3d
    ld e, c                                       ; $587c: $59
    sbc b                                         ; $587d: $98
    ldh a, [$60]                                  ; $587e: $f0 $60
    nop                                           ; $5880: $00
    sub b                                         ; $5881: $90
    add c                                         ; $5882: $81
    ld bc, $d16f                                  ; $5883: $01 $6f $d1
    ld a, [$bb9d]                                 ; $5886: $fa $9d $bb
    ld h, a                                       ; $5889: $67
    rst $38                                       ; $588a: $ff
    ld [bc], a                                    ; $588b: $02
    inc b                                         ; $588c: $04
    nop                                           ; $588d: $00
    db $eb                                        ; $588e: $eb
    jr nc, jr_0c6_58fb                            ; $588f: $30 $6a

    ret nz                                        ; $5891: $c0

    call nc, $eb81                                ; $5892: $d4 $81 $eb
    push de                                       ; $5895: $d5
    nop                                           ; $5896: $00
    push af                                       ; $5897: $f5
    cp e                                          ; $5898: $bb
    add e                                         ; $5899: $83
    ld a, a                                       ; $589a: $7f
    db $fd                                        ; $589b: $fd
    rst $38                                       ; $589c: $ff
    ld a, e                                       ; $589d: $7b
    ld a, a                                       ; $589e: $7f
    inc b                                         ; $589f: $04
    ld a, d                                       ; $58a0: $7a
    dec a                                         ; $58a1: $3d
    jp c, $dfdf                                   ; $58a2: $da $df $df

    ld h, b                                       ; $58a5: $60
    nop                                           ; $58a6: $00
    cp $dd                                        ; $58a7: $fe $dd
    nop                                           ; $58a9: $00
    cpl                                           ; $58aa: $2f
    ei                                            ; $58ab: $fb
    rst $38                                       ; $58ac: $ff
    ld e, h                                       ; $58ad: $5c
    cp a                                          ; $58ae: $bf
    ld hl, sp-$15                                 ; $58af: $f8 $eb
    ld [hl], h                                    ; $58b1: $74
    pop bc                                        ; $58b2: $c1
    ld h, b                                       ; $58b3: $60
    jr @-$3e                                      ; $58b4: $18 $c0

    ld [$0f55], sp                                ; $58b6: $08 $55 $0f
    db $eb                                        ; $58b9: $eb
    ld e, $be                                     ; $58ba: $1e $be
    ld h, b                                       ; $58bc: $60
    db $10                                        ; $58bd: $10

jr_0c6_58be:
    db $10                                        ; $58be: $10
    ld d, a                                       ; $58bf: $57
    rst $38                                       ; $58c0: $ff
    xor [hl]                                      ; $58c1: $ae
    ret nz                                        ; $58c2: $c0

    nop                                           ; $58c3: $00
    ld a, $fc                                     ; $58c4: $3e $fc
    db $fd                                        ; $58c6: $fd
    ret c                                         ; $58c7: $d8

    ld d, c                                       ; $58c8: $51
    ld b, h                                       ; $58c9: $44
    ret nz                                        ; $58ca: $c0

    jr nc, jr_0c6_592c                            ; $58cb: $30 $5f

    ld h, b                                       ; $58cd: $60
    nop                                           ; $58ce: $00
    reti                                          ; $58cf: $d9


    sbc b                                         ; $58d0: $98
    ld [c], a                                     ; $58d1: $e2
    ret nz                                        ; $58d2: $c0

    db $10                                        ; $58d3: $10
    ld [bc], a                                    ; $58d4: $02
    ld a, a                                       ; $58d5: $7f
    pop de                                        ; $58d6: $d1
    rst $30                                       ; $58d7: $f7
    sbc l                                         ; $58d8: $9d
    ld a, e                                       ; $58d9: $7b
    and a                                         ; $58da: $a7
    ld h, b                                       ; $58db: $60
    ld [$80e5], sp                                ; $58dc: $08 $e5 $80
    ret nz                                        ; $58df: $c0

    db $10                                        ; $58e0: $10
    ei                                            ; $58e1: $fb
    push de                                       ; $58e2: $d5
    rst $18                                       ; $58e3: $df
    cp e                                          ; $58e4: $bb
    adc a                                         ; $58e5: $8f
    ld [hl], a                                    ; $58e6: $77
    cp $80                                        ; $58e7: $fe $80
    ld h, b                                       ; $58e9: $60
    nop                                           ; $58ea: $00
    ei                                            ; $58eb: $fb
    inc a                                         ; $58ec: $3c
    rst $18                                       ; $58ed: $df
    rst $18                                       ; $58ee: $df
    ld a, [$6aa7]                                 ; $58ef: $fa $a7 $6a
    nop                                           ; $58f2: $00
    rst $30                                       ; $58f3: $f7
    ld [hl], a                                    ; $58f4: $77
    db $dd                                        ; $58f5: $dd
    ld l, [hl]                                    ; $58f6: $6e
    ei                                            ; $58f7: $fb
    cp a                                          ; $58f8: $bf
    ld e, h                                       ; $58f9: $5c
    cpl                                           ; $58fa: $2f

jr_0c6_58fb:
    ld [$6bf8], sp                                ; $58fb: $08 $f8 $6b
    db $f4                                        ; $58fe: $f4
    ld e, a                                       ; $58ff: $5f
    ret nz                                        ; $5900: $c0

    jr nz, jr_0c6_58be                            ; $5901: $20 $bb

    rlca                                          ; $5903: $07
    ld e, [hl]                                    ; $5904: $5e
    adc b                                         ; $5905: $88
    ld l, h                                       ; $5906: $6c
    ld bc, $ff3f                                  ; $5907: $01 $3f $ff
    jp c, Jump_000_04c2                           ; $590a: $da $c2 $04

    ld e, [hl]                                    ; $590d: $5e
    rst $38                                       ; $590e: $ff
    or e                                          ; $590f: $b3
    nop                                           ; $5910: $00
    rst $38                                       ; $5911: $ff
    rst $30                                       ; $5912: $f7
    rst $38                                       ; $5913: $ff
    cp $fc                                        ; $5914: $fe $fc
    cp l                                          ; $5916: $bd
    ret c                                         ; $5917: $d8

    ld a, d                                       ; $5918: $7a
    ld b, b                                       ; $5919: $40
    add sp, $20                                   ; $591a: $e8 $20
    add hl, bc                                    ; $591c: $09
    or b                                          ; $591d: $b0
    inc c                                         ; $591e: $0c
    ld c, h                                       ; $591f: $4c
    ld [$ff00], sp                                ; $5920: $08 $00 $ff
    cp $39                                        ; $5923: $fe $39
    rra                                           ; $5925: $1f
    ld h, l                                       ; $5926: $65
    ccf                                           ; $5927: $3f
    ld c, e                                       ; $5928: $4b
    ld a, l                                       ; $5929: $7d
    nop                                           ; $592a: $00
    rst $10                                       ; $592b: $d7

jr_0c6_592c:
    ld a, c                                       ; $592c: $79
    adc a                                         ; $592d: $8f
    di                                            ; $592e: $f3
    rst $38                                       ; $592f: $ff
    adc a                                         ; $5930: $8f
    rst $38                                       ; $5931: $ff
    db $fd                                        ; $5932: $fd
    nop                                           ; $5933: $00
    adc h                                         ; $5934: $8c
    ld hl, sp-$3c                                 ; $5935: $f8 $c4
    ld a, h                                       ; $5937: $7c
    and $3c                                       ; $5938: $e6 $3c
    ld a, [c]                                     ; $593a: $f2
    adc [hl]                                      ; $593b: $8e
    ld [$e2fe], sp                                ; $593c: $08 $fe $e2
    ld e, $fe                                     ; $593f: $1e $fe
    inc c                                         ; $5941: $0c
    ld [$000b], sp                                ; $5942: $08 $0b $00
    dec b                                         ; $5945: $05
    jr nz, jr_0c6_5948                            ; $5946: $20 $00

jr_0c6_5948:
    inc bc                                        ; $5948: $03
    inc b                                         ; $5949: $04
    db $10                                        ; $594a: $10
    rla                                           ; $594b: $17
    nop                                           ; $594c: $00
    dec bc                                        ; $594d: $0b
    nop                                           ; $594e: $00
    rlca                                          ; $594f: $07
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    ld l, d                                       ; $5952: $6a
    ret nz                                        ; $5953: $c0

    push de                                       ; $5954: $d5
    ret nz                                        ; $5955: $c0

    ld l, d                                       ; $5956: $6a
    ret nz                                        ; $5957: $c0

    ret nz                                        ; $5958: $c0

    add b                                         ; $5959: $80
    inc b                                         ; $595a: $04
    db $10                                        ; $595b: $10
    ld b, b                                       ; $595c: $40
    ret nz                                        ; $595d: $c0

    rst $38                                       ; $595e: $ff
    rst $38                                       ; $595f: $ff
    ld l, d                                       ; $5960: $6a
    ret nz                                        ; $5961: $c0

    ld d, l                                       ; $5962: $55
    or b                                          ; $5963: $b0
    stop                                          ; $5964: $10 $00
    ld b, b                                       ; $5966: $40
    inc b                                         ; $5967: $04
    db $10                                        ; $5968: $10
    db $10                                        ; $5969: $10
    ld [$03aa], sp                                ; $596a: $08 $aa $03
    ld d, [hl]                                    ; $596d: $56
    inc bc                                        ; $596e: $03
    ld [de], a                                    ; $596f: $12
    xor d                                         ; $5970: $aa
    inc bc                                        ; $5971: $03
    ld [bc], a                                    ; $5972: $02
    inc b                                         ; $5973: $04
    db $10                                        ; $5974: $10
    ld [bc], a                                    ; $5975: $02
    inc bc                                        ; $5976: $03
    db $10                                        ; $5977: $10
    ld [$b457], sp                                ; $5978: $08 $57 $b4
    stop                                          ; $597b: $10 $00
    inc bc                                        ; $597d: $03
    inc b                                         ; $597e: $04
    db $10                                        ; $597f: $10
    db $10                                        ; $5980: $10
    ld [$0100], sp                                ; $5981: $08 $00 $01
    ld h, b                                       ; $5984: $60
    dec a                                         ; $5985: $3d
    ld a, a                                       ; $5986: $7f
    nop                                           ; $5987: $00
    ld l, a                                       ; $5988: $6f
    jp Jump_0c6_5bdf                              ; $5989: $c3 $df $5b


    set 1, e                                      ; $598c: $cb $cb
    bit 7, c                                      ; $598e: $cb $79
    nop                                           ; $5990: $00
    ld a, e                                       ; $5991: $7b
    ld sp, $0101                                  ; $5992: $31 $01 $01
    ld bc, $783d                                  ; $5995: $01 $3d $78
    sub b                                         ; $5998: $90
    nop                                           ; $5999: $00
    ldh a, [rNR41]                                ; $599a: $f0 $20
    ldh [$5c], a                                  ; $599c: $e0 $5c
    call c, $febe                                 ; $599e: $dc $be $fe
    ld h, e                                       ; $59a1: $63
    nop                                           ; $59a2: $00
    ld a, l                                       ; $59a3: $7d
    call c, $a1f1                                 ; $59a4: $dc $f1 $a1
    ld [hl], e                                    ; $59a7: $73
    or d                                          ; $59a8: $b2
    rst $00                                       ; $59a9: $c7
    cp d                                          ; $59aa: $ba
    nop                                           ; $59ab: $00
    db $d3                                        ; $59ac: $d3
    ld a, [hl]                                    ; $59ad: $7e
    ld l, e                                       ; $59ae: $6b
    ld a, [hl]                                    ; $59af: $7e
    scf                                           ; $59b0: $37
    dec a                                         ; $59b1: $3d
    ccf                                           ; $59b2: $3f
    dec de                                        ; $59b3: $1b
    nop                                           ; $59b4: $00
    rra                                           ; $59b5: $1f
    rrca                                          ; $59b6: $0f
    add a                                         ; $59b7: $87
    inc bc                                        ; $59b8: $03
    ei                                            ; $59b9: $fb
    pop hl                                        ; $59ba: $e1

jr_0c6_59bb:
    ld c, c                                       ; $59bb: $49
    ld hl, sp+$00                                 ; $59bc: $f8 $00
    rst $08                                       ; $59be: $cf
    ld a, a                                       ; $59bf: $7f
    db $dd                                        ; $59c0: $dd
    ld l, e                                       ; $59c1: $6b
    pop af                                        ; $59c2: $f1

Jump_0c6_59c3:
    ld e, a                                       ; $59c3: $5f
    db $e3                                        ; $59c4: $e3
    db $fd                                        ; $59c5: $fd
    nop                                           ; $59c6: $00
    rst $20                                       ; $59c7: $e7
    db $dd                                        ; $59c8: $dd
    rst $08                                       ; $59c9: $cf
    cp d                                          ; $59ca: $ba
    sbc $b2                                       ; $59cb: $de $b2
    ld l, a                                       ; $59cd: $6f
    add hl, sp                                    ; $59ce: $39
    nop                                           ; $59cf: $00
    rst $18                                       ; $59d0: $df
    ld [hl], e                                    ; $59d1: $73
    sbc a                                         ; $59d2: $9f
    rst $20                                       ; $59d3: $e7
    db $fd                                        ; $59d4: $fd
    sbc c                                         ; $59d5: $99
    di                                            ; $59d6: $f3
    pop hl                                        ; $59d7: $e1
    jr jr_0c6_59df                                ; $59d8: $18 $05

    ld bc, $4103                                  ; $59da: $01 $03 $41
    nop                                           ; $59dd: $00
    cp h                                          ; $59de: $bc

jr_0c6_59df:
    ld [$e6fa], sp                                ; $59df: $08 $fa $e6
    cp $00                                        ; $59e2: $fe $00
    sbc d                                         ; $59e4: $9a
    xor [hl]                                      ; $59e5: $ae
    add [hl]                                      ; $59e6: $86
    ret nz                                        ; $59e7: $c0

    add b                                         ; $59e8: $80
    add b                                         ; $59e9: $80
    add b                                         ; $59ea: $80
    ret nz                                        ; $59eb: $c0

    ld h, c                                       ; $59ec: $61
    add b                                         ; $59ed: $80
    ret nz                                        ; $59ee: $c0

    ld [$38c4], sp                                ; $59ef: $08 $c4 $38
    add hl, bc                                    ; $59f2: $09
    nop                                           ; $59f3: $00
    ld b, b                                       ; $59f4: $40
    rst $38                                       ; $59f5: $ff
    cp b                                          ; $59f6: $b8
    ld [$0481], sp                                ; $59f7: $08 $81 $04
    jr z, jr_0c6_59bb                             ; $59fa: $28 $bf

    rst $38                                       ; $59fc: $ff
    pop bc                                        ; $59fd: $c1
    rst $38                                       ; $59fe: $ff
    ld b, c                                       ; $59ff: $41
    pop bc                                        ; $5a00: $c1

Jump_0c6_5a01:
    ld [bc], a                                    ; $5a01: $02
    jr c, jr_0c6_5a04                             ; $5a02: $38 $00

jr_0c6_5a04:
    rst $38                                       ; $5a04: $ff
    rst $38                                       ; $5a05: $ff
    ccf                                           ; $5a06: $3f
    ld a, a                                       ; $5a07: $7f
    ld h, a                                       ; $5a08: $67
    jp Jump_0c6_59c3                              ; $5a09: $c3 $c3 $59


    nop                                           ; $5a0c: $00
    reti                                          ; $5a0d: $d9


    db $dd                                        ; $5a0e: $dd
    push bc                                       ; $5a0f: $c5
    push bc                                       ; $5a10: $c5
    db $ed                                        ; $5a11: $ed
    call Call_0c6_79fd                            ; $5a12: $cd $fd $79
    nop                                           ; $5a15: $00
    ld [hl], e                                    ; $5a16: $73
    ld bc, $9cbe                                  ; $5a17: $01 $be $9c
    ld d, b                                       ; $5a1a: $50
    add b                                         ; $5a1b: $80
    and b                                         ; $5a1c: $a0
    add b                                         ; $5a1d: $80
    nop                                           ; $5a1e: $00
    ret nz                                        ; $5a1f: $c0

    cp b                                          ; $5a20: $b8
    ld a, b                                       ; $5a21: $78
    db $fc                                        ; $5a22: $fc
    db $e4                                        ; $5a23: $e4
    call nz, $9454                                ; $5a24: $c4 $54 $94
    nop                                           ; $5a27: $00
    adc b                                         ; $5a28: $88
    adc b                                         ; $5a29: $88
    cp a                                          ; $5a2a: $bf
    db $dd                                        ; $5a2b: $dd
    rst $00                                       ; $5a2c: $c7
    cp e                                          ; $5a2d: $bb
    db $e3                                        ; $5a2e: $e3
    cp l                                          ; $5a2f: $bd
    nop                                           ; $5a30: $00
    pop af                                        ; $5a31: $f1
    ld e, [hl]                                    ; $5a32: $5e
    ld a, b                                       ; $5a33: $78
    cpl                                           ; $5a34: $2f
    ld a, $15                                     ; $5a35: $3e $15
    rra                                           ; $5a37: $1f
    ld c, $00                                     ; $5a38: $0e $00
    rrca                                          ; $5a3a: $0f
    inc bc                                        ; $5a3b: $03
    cp $a4                                        ; $5a3c: $fe $a4
    db $fc                                        ; $5a3e: $fc
    db $fc                                        ; $5a3f: $fc
    ld [c], a                                     ; $5a40: $e2
    sbc $01                                       ; $5a41: $de $01
    adc a                                         ; $5a43: $8f
    db $fd                                        ; $5a44: $fd
    rst $38                                       ; $5a45: $ff
    or [hl]                                       ; $5a46: $b6
    db $fc                                        ; $5a47: $fc
    ld hl, sp-$20                                 ; $5a48: $f8 $e0
    ld [hl], b                                    ; $5a4a: $70
    nop                                           ; $5a4b: $00
    nop                                           ; $5a4c: $00
    ld a, a                                       ; $5a4d: $7f
    add c                                         ; $5a4e: $81
    rst $38                                       ; $5a4f: $ff
    ld a, a                                       ; $5a50: $7f
    adc c                                         ; $5a51: $89
    add hl, bc                                    ; $5a52: $09
    add c                                         ; $5a53: $81
    ld bc, $a100                                  ; $5a54: $01 $00 $a1
    ld hl, $0181                                  ; $5a57: $21 $81 $01
    add b                                         ; $5a5a: $80
    nop                                           ; $5a5b: $00
    ld a, a                                       ; $5a5c: $7f
    add b                                         ; $5a5d: $80
    nop                                           ; $5a5e: $00
    cp $81                                        ; $5a5f: $fe $81
    rst $38                                       ; $5a61: $ff
    cp $83                                        ; $5a62: $fe $83
    add d                                         ; $5a64: $82
    add c                                         ; $5a65: $81
    add b                                         ; $5a66: $80
    nop                                           ; $5a67: $00
    adc c                                         ; $5a68: $89
    adc b                                         ; $5a69: $88
    add c                                         ; $5a6a: $81
    add b                                         ; $5a6b: $80
    ld hl, $fe20                                  ; $5a6c: $21 $20 $fe
    ld bc, $0200                                  ; $5a6f: $01 $00 $02
    nop                                           ; $5a72: $00
    ld bc, $8800                                  ; $5a73: $01 $00 $88
    nop                                           ; $5a76: $00
    ld de, $0100                                  ; $5a77: $11 $00 $01
    and d                                         ; $5a7a: $a2
    nop                                           ; $5a7b: $00
    ld d, a                                       ; $5a7c: $57
    nop                                           ; $5a7d: $00
    xor [hl]                                      ; $5a7e: $ae
    nop                                           ; $5a7f: $00
    rst $38                                       ; $5a80: $ff
    ld [bc], a                                    ; $5a81: $02
    nop                                           ; $5a82: $00
    ld bc, $005d                                  ; $5a83: $01 $5d $00
    dec hl                                        ; $5a86: $2b
    nop                                           ; $5a87: $00
    ld d, l                                       ; $5a88: $55
    nop                                           ; $5a89: $00
    cp e                                          ; $5a8a: $bb
    inc c                                         ; $5a8b: $0c
    nop                                           ; $5a8c: $00
    ld b, b                                       ; $5a8d: $40
    rst $30                                       ; $5a8e: $f7
    db $10                                        ; $5a8f: $10
    db $10                                        ; $5a90: $10
    push de                                       ; $5a91: $d5
    nop                                           ; $5a92: $00
    xor d                                         ; $5a93: $aa
    nop                                           ; $5a94: $00
    ld e, [hl]                                    ; $5a95: $5e
    nop                                           ; $5a96: $00
    inc b                                         ; $5a97: $04
    or l                                          ; $5a98: $b5
    nop                                           ; $5a99: $00
    rst $28                                       ; $5a9a: $ef
    nop                                           ; $5a9b: $00
    cp a                                          ; $5a9c: $bf
    db $10                                        ; $5a9d: $10
    jr nz, @-$5c                                  ; $5a9e: $20 $a2

    nop                                           ; $5aa0: $00
    inc b                                         ; $5aa1: $04
    ld c, c                                       ; $5aa2: $49
    nop                                           ; $5aa3: $00
    ld [hl], $00                                  ; $5aa4: $36 $00
    ld l, l                                       ; $5aa6: $6d
    ld l, $10                                     ; $5aa7: $2e $10
    rst $38                                       ; $5aa9: $ff
    nop                                           ; $5aaa: $00
    ld de, $0075                                  ; $5aab: $11 $75 $00
    db $eb                                        ; $5aae: $eb
    jr nz, jr_0c6_5ab1                            ; $5aaf: $20 $00

jr_0c6_5ab1:
    cp e                                          ; $5ab1: $bb
    nop                                           ; $5ab2: $00
    push af                                       ; $5ab3: $f5
    ld a, $10                                     ; $5ab4: $3e $10
    ld bc, $0040                                  ; $5ab6: $01 $40 $00
    add b                                         ; $5ab9: $80
    nop                                           ; $5aba: $00
    ld b, d                                       ; $5abb: $42
    nop                                           ; $5abc: $00
    add h                                         ; $5abd: $84
    inc [hl]                                      ; $5abe: $34
    nop                                           ; $5abf: $00
    ld h, b                                       ; $5ac0: $60
    rst $18                                       ; $5ac1: $df
    ld c, [hl]                                    ; $5ac2: $4e
    db $10                                        ; $5ac3: $10
    ld h, b                                       ; $5ac4: $60
    add hl, de                                    ; $5ac5: $19
    ld [de], a                                    ; $5ac6: $12
    nop                                           ; $5ac7: $00
    dec h                                         ; $5ac8: $25
    nop                                           ; $5ac9: $00
    ld c, e                                       ; $5aca: $4b
    jr nz, jr_0c6_5acd                            ; $5acb: $20 $00

jr_0c6_5acd:
    cp [hl]                                       ; $5acd: $be
    ld h, b                                       ; $5ace: $60
    nop                                           ; $5acf: $00
    add b                                         ; $5ad0: $80
    rst $38                                       ; $5ad1: $ff
    cp a                                          ; $5ad2: $bf
    ret nz                                        ; $5ad3: $c0

    sbc a                                         ; $5ad4: $9f
    nop                                           ; $5ad5: $00
    ldh [$bf], a                                  ; $5ad6: $e0 $bf
    ret nz                                        ; $5ad8: $c0

    rst $28                                       ; $5ad9: $ef
    ret nc                                        ; $5ada: $d0

    sub a                                         ; $5adb: $97
    add sp, -$36                                  ; $5adc: $e8 $ca
    nop                                           ; $5ade: $00
    push af                                       ; $5adf: $f5
    add sp, -$01                                  ; $5ae0: $e8 $ff
    dec d                                         ; $5ae2: $15
    rst $38                                       ; $5ae3: $ff
    db $d3                                        ; $5ae4: $d3
    cpl                                           ; $5ae5: $2f
    ld sp, hl                                     ; $5ae6: $f9
    nop                                           ; $5ae7: $00
    rlca                                          ; $5ae8: $07
    rst $30                                       ; $5ae9: $f7
    dec bc                                        ; $5aea: $0b
    ld sp, hl                                     ; $5aeb: $f9
    rlca                                          ; $5aec: $07
    db $fd                                        ; $5aed: $fd
    inc bc                                        ; $5aee: $03
    push af                                       ; $5aef: $f5
    ld [bc], a                                    ; $5af0: $02
    dec bc                                        ; $5af1: $0b
    inc bc                                        ; $5af2: $03
    rst $38                                       ; $5af3: $ff
    and b                                         ; $5af4: $a0
    ld h, b                                       ; $5af5: $60
    ld [$01b9], a                                 ; $5af6: $ea $b9 $01
    jp hl                                         ; $5af9: $e9


    nop                                           ; $5afa: $00
    ld d, [hl]                                    ; $5afb: $56
    nop                                           ; $5afc: $00
    rst $38                                       ; $5afd: $ff
    ld [de], a                                    ; $5afe: $12
    pop hl                                        ; $5aff: $e1
    ld d, b                                       ; $5b00: $50
    xor a                                         ; $5b01: $af
    ld a, [hl+]                                   ; $5b02: $2a
    ld [$00c5], sp                                ; $5b03: $08 $c5 $00
    nop                                           ; $5b06: $00
    sbc e                                         ; $5b07: $9b
    and e                                         ; $5b08: $a3
    ld bc, $b54a                                  ; $5b09: $01 $4a $b5
    ld [$f800], sp                                ; $5b0c: $08 $00 $f8
    ld c, c                                       ; $5b0f: $49
    sbc b                                         ; $5b10: $98
    add hl, bc                                    ; $5b11: $09
    ld hl, sp+$4e                                 ; $5b12: $f8 $4e
    jr c, jr_0c6_5b16                             ; $5b14: $38 $00

jr_0c6_5b16:
    ld [hl+], a                                   ; $5b16: $22
    nop                                           ; $5b17: $00
    sbc a                                         ; $5b18: $9f
    or e                                          ; $5b19: $b3
    ld bc, $ad52                                  ; $5b1a: $01 $52 $ad
    nop                                           ; $5b1d: $00
    and h                                         ; $5b1e: $a4
    nop                                           ; $5b1f: $00
    inc [hl]                                      ; $5b20: $34
    add b                                         ; $5b21: $80
    ld a, [bc]                                    ; $5b22: $0a
    ld [bc], a                                    ; $5b23: $02
    ld bc, $dd01                                  ; $5b24: $01 $01 $dd
    inc bc                                        ; $5b27: $03
    ld bc, $a503                                  ; $5b28: $01 $03 $a5
    jr nz, @+$5d                                  ; $5b2b: $20 $5b

    inc [hl]                                      ; $5b2d: $34
    ld a, b                                       ; $5b2e: $78
    nop                                           ; $5b2f: $00
    or h                                          ; $5b30: $b4
    ld bc, $0180                                  ; $5b31: $01 $80 $01
    db $fd                                        ; $5b34: $fd
    and b                                         ; $5b35: $a0
    or b                                          ; $5b36: $b0
    nop                                           ; $5b37: $00
    rst $38                                       ; $5b38: $ff
    jr nz, jr_0c6_5b3b                            ; $5b39: $20 $00

jr_0c6_5b3b:
    add b                                         ; $5b3b: $80
    rst $38                                       ; $5b3c: $ff
    xor l                                         ; $5b3d: $ad
    jp nc, $0088                                  ; $5b3e: $d2 $88 $00

    rst $30                                       ; $5b41: $f7
    sbc e                                         ; $5b42: $9b
    ldh [$db], a                                  ; $5b43: $e0 $db
    nop                                           ; $5b45: $00
    ei                                            ; $5b46: $fb
    nop                                           ; $5b47: $00
    ld l, a                                       ; $5b48: $6f
    nop                                           ; $5b49: $00
    nop                                           ; $5b4a: $00
    sub h                                         ; $5b4b: $94
    ld l, e                                       ; $5b4c: $6b
    nop                                           ; $5b4d: $00
    rst $38                                       ; $5b4e: $ff
    adc b                                         ; $5b4f: $88
    ld sp, $0000                                  ; $5b50: $31 $00 $00
    rst $38                                       ; $5b53: $ff
    ld d, b                                       ; $5b54: $50
    adc a                                         ; $5b55: $8f
    cp h                                          ; $5b56: $bc
    ld bc, $0395                                  ; $5b57: $01 $95 $03
    db $fd                                        ; $5b5a: $fd
    nop                                           ; $5b5b: $00
    inc bc                                        ; $5b5c: $03
    xor c                                         ; $5b5d: $a9
    ld d, a                                       ; $5b5e: $57
    nop                                           ; $5b5f: $00
    rst $38                                       ; $5b60: $ff
    ld b, d                                       ; $5b61: $42
    cp l                                          ; $5b62: $bd
    ld bc, $fe08                                  ; $5b63: $01 $08 $fe
    ld d, h                                       ; $5b66: $54
    add e                                         ; $5b67: $83
    nop                                           ; $5b68: $00
    ld e, $00                                     ; $5b69: $1e $00
    nop                                           ; $5b6b: $00
    nop                                           ; $5b6c: $00
    ld a, [hl+]                                   ; $5b6d: $2a
    nop                                           ; $5b6e: $00
    push de                                       ; $5b6f: $d5
    ld bc, $6600                                  ; $5b70: $01 $00 $66
    nop                                           ; $5b73: $00
    or c                                          ; $5b74: $b1
    nop                                           ; $5b75: $00
    ld c, $00                                     ; $5b76: $0e $00
    nop                                           ; $5b78: $00
    rlca                                          ; $5b79: $07
    inc c                                         ; $5b7a: $0c
    db $fd                                        ; $5b7b: $fd
    ld [$080f], sp                                ; $5b7c: $08 $0f $08
    ld e, l                                       ; $5b7f: $5d
    ld [bc], a                                    ; $5b80: $02
    xor d                                         ; $5b81: $aa
    ld d, d                                       ; $5b82: $52
    rlca                                          ; $5b83: $07
    ld [bc], a                                    ; $5b84: $02
    rlca                                          ; $5b85: $07
    jp c, Jump_000_0004                           ; $5b86: $da $04 $00

    cp [hl]                                       ; $5b89: $be
    nop                                           ; $5b8a: $00
    nop                                           ; $5b8b: $00
    ld [hl], a                                    ; $5b8c: $77
    nop                                           ; $5b8d: $00
    cp $00                                        ; $5b8e: $fe $00
    add hl, hl                                    ; $5b90: $29
    sub $00                                       ; $5b91: $d6 $00
    nop                                           ; $5b93: $00
    rst $38                                       ; $5b94: $ff
    sub a                                         ; $5b95: $97
    ld c, b                                       ; $5b96: $48
    nop                                           ; $5b97: $00
    rst $38                                       ; $5b98: $ff
    ld e, l                                       ; $5b99: $5d
    add d                                         ; $5b9a: $82
    push de                                       ; $5b9b: $d5
    jr nz, jr_0c6_5b9e                            ; $5b9c: $20 $00

jr_0c6_5b9e:
    or $08                                        ; $5b9e: $f6 $08
    ld bc, $b54a                                  ; $5ba0: $01 $4a $b5
    nop                                           ; $5ba3: $00
    rst $38                                       ; $5ba4: $ff
    add hl, hl                                    ; $5ba5: $29
    nop                                           ; $5ba6: $00
    add $00                                       ; $5ba7: $c6 $00
    rst $38                                       ; $5ba9: $ff
    ld b, l                                       ; $5baa: $45
    ld a, [hl-]                                   ; $5bab: $3a
    db $e4                                        ; $5bac: $e4
    inc c                                         ; $5bad: $0c
    ld [hl], a                                    ; $5bae: $77
    nop                                           ; $5baf: $00
    inc c                                         ; $5bb0: $0c
    db $f4                                        ; $5bb1: $f4
    inc c                                         ; $5bb2: $0c
    sub l                                         ; $5bb3: $95
    ld l, [hl]                                    ; $5bb4: $6e
    nop                                           ; $5bb5: $00
    rst $38                                       ; $5bb6: $ff
    jr z, jr_0c6_5bb9                             ; $5bb7: $28 $00

jr_0c6_5bb9:
    sub $06                                       ; $5bb9: $d6 $06
    ld sp, hl                                     ; $5bbb: $f9
    ld b, e                                       ; $5bbc: $43
    inc c                                         ; $5bbd: $0c
    nop                                           ; $5bbe: $00
    nop                                           ; $5bbf: $00
    ld [hl], e                                    ; $5bc0: $73
    add b                                         ; $5bc1: $80
    or b                                          ; $5bc2: $b0
    stop                                          ; $5bc3: $10 $00
    rst $38                                       ; $5bc5: $ff
    ld l, d                                       ; $5bc6: $6a
    ld de, $7f80                                  ; $5bc7: $11 $80 $7f
    ld c, d                                       ; $5bca: $4a
    jr nc, @+$33                                  ; $5bcb: $30 $31

    nop                                           ; $5bcd: $00
    ld e, $01                                     ; $5bce: $1e $01
    or b                                          ; $5bd0: $b0
    ld [$8080], sp                                ; $5bd1: $08 $80 $80
    and [hl]                                      ; $5bd4: $a6
    add b                                         ; $5bd5: $80
    nop                                           ; $5bd6: $00
    jp z, $b080                                   ; $5bd7: $ca $80 $b0

    add b                                         ; $5bda: $80
    nop                                           ; $5bdb: $00
    rst $38                                       ; $5bdc: $ff
    and l                                         ; $5bdd: $a5
    ld e, b                                       ; $5bde: $58

Jump_0c6_5bdf:
    ld [$ff00], sp                                ; $5bdf: $08 $00 $ff
    sub $ff                                       ; $5be2: $d6 $ff
    db $10                                        ; $5be4: $10
    ld [$8080], sp                                ; $5be5: $08 $80 $80
    db $db                                        ; $5be8: $db
    add d                                         ; $5be9: $82
    stop                                          ; $5bea: $10 $00
    inc h                                         ; $5bec: $24
    db $db                                        ; $5bed: $db
    ld a, [de]                                    ; $5bee: $1a
    push hl                                       ; $5bef: $e5
    xor l                                         ; $5bf0: $ad
    adc b                                         ; $5bf1: $88
    ld [bc], a                                    ; $5bf2: $02
    push hl                                       ; $5bf3: $e5
    jr nz, jr_0c6_5bf6                            ; $5bf4: $20 $00

jr_0c6_5bf6:
    ld e, e                                       ; $5bf6: $5b
    add d                                         ; $5bf7: $82
    ld bc, $ff00                                  ; $5bf8: $01 $00 $ff
    dec h                                         ; $5bfb: $25
    jp nz, Jump_000_0080                          ; $5bfc: $c2 $80 $00

    ld a, a                                       ; $5bff: $7f
    ld l, d                                       ; $5c00: $6a
    rst $38                                       ; $5c01: $ff
    rlca                                          ; $5c02: $07
    inc c                                         ; $5c03: $0c
    rst $20                                       ; $5c04: $e7
    inc c                                         ; $5c05: $0c
    rlca                                          ; $5c06: $07
    nop                                           ; $5c07: $00
    inc c                                         ; $5c08: $0c
    sub $0c                                       ; $5c09: $d6 $0c
    ld [$6df8], sp                                ; $5c0b: $08 $f8 $6d
    sbc b                                         ; $5c0e: $98
    ld [$f802], sp                                ; $5c0f: $08 $02 $f8
    call nc, $fffb                                ; $5c12: $d4 $fb $ff
    nop                                           ; $5c15: $00
    sbc h                                         ; $5c16: $9c
    sbc [hl]                                      ; $5c17: $9e
    ld bc, $08ef                                  ; $5c18: $01 $ef $08
    nop                                           ; $5c1b: $00
    xor b                                         ; $5c1c: $a8
    nop                                           ; $5c1d: $00
    ld [hl], c                                    ; $5c1e: $71
    or e                                          ; $5c1f: $b3
    ld [bc], a                                    ; $5c20: $02
    and l                                         ; $5c21: $a5
    ld e, d                                       ; $5c22: $5a
    rst $38                                       ; $5c23: $ff
    ld [$f900], sp                                ; $5c24: $08 $00 $f9
    nop                                           ; $5c27: $00
    adc a                                         ; $5c28: $8f
    or b                                          ; $5c29: $b0
    ld bc, $0168                                  ; $5c2a: $01 $68 $01
    sub h                                         ; $5c2d: $94
    nop                                           ; $5c2e: $00
    ld bc, $0100                                  ; $5c2f: $01 $00 $01
    ld c, d                                       ; $5c32: $4a
    or l                                          ; $5c33: $b5
    rst $38                                       ; $5c34: $ff
    nop                                           ; $5c35: $00
    ld a, c                                       ; $5c36: $79
    add b                                         ; $5c37: $80
    cp [hl]                                       ; $5c38: $be
    ld bc, $005b                                  ; $5c39: $01 $5b $00
    add d                                         ; $5c3c: $82
    db $fd                                        ; $5c3d: $fd
    and c                                         ; $5c3e: $a1
    ret nc                                        ; $5c3f: $d0

    add b                                         ; $5c40: $80
    ld [bc], a                                    ; $5c41: $02

jr_0c6_5c42:
    rst $38                                       ; $5c42: $ff
    push de                                       ; $5c43: $d5
    rst $38                                       ; $5c44: $ff
    db $fd                                        ; $5c45: $fd
    inc bc                                        ; $5c46: $03
    push bc                                       ; $5c47: $c5
    add sp, $00                                   ; $5c48: $e8 $00
    db $dd                                        ; $5c4a: $dd
    ld bc, $0003                                  ; $5c4b: $01 $03 $00
    rst $38                                       ; $5c4e: $ff
    db $10                                        ; $5c4f: $10
    db $e3                                        ; $5c50: $e3
    nop                                           ; $5c51: $00
    rst $38                                       ; $5c52: $ff
    ld h, b                                       ; $5c53: $60
    ld [$4d50], sp                                ; $5c54: $08 $50 $4d
    db $eb                                        ; $5c57: $eb
    ld [bc], a                                    ; $5c58: $02
    or a                                          ; $5c59: $b7
    ld h, b                                       ; $5c5a: $60
    nop                                           ; $5c5b: $00
    and b                                         ; $5c5c: $a0
    ld e, a                                       ; $5c5d: $5f
    ld d, d                                       ; $5c5e: $52

jr_0c6_5c5f:
    adc l                                         ; $5c5f: $8d
    add [hl]                                      ; $5c60: $86
    ccf                                           ; $5c61: $3f
    nop                                           ; $5c62: $00
    nop                                           ; $5c63: $00
    rlc b                                         ; $5c64: $cb $00
    or [hl]                                       ; $5c66: $b6
    db $ec                                        ; $5c67: $ec
    ld bc, $008c                                  ; $5c68: $01 $8c $00

jr_0c6_5c6b:
    add hl, bc                                    ; $5c6b: $09
    ld b, b                                       ; $5c6c: $40
    nop                                           ; $5c6d: $00
    jr nc, jr_0c6_5c70                            ; $5c6e: $30 $00

jr_0c6_5c70:
    rrca                                          ; $5c70: $0f
    jr jr_0c6_5c42                                ; $5c71: $18 $cf

    jr jr_0c6_5c84                                ; $5c73: $18 $0f

    jr jr_0c6_5c77                                ; $5c75: $18 $00

jr_0c6_5c77:
    xor l                                         ; $5c77: $ad
    jr @+$24                                      ; $5c78: $18 $22

    ldh [$ad], a                                  ; $5c7a: $e0 $ad
    ld h, b                                       ; $5c7c: $60

jr_0c6_5c7d:
    jr nz, jr_0c6_5c5f                            ; $5c7d: $20 $e0

    inc b                                         ; $5c7f: $04
    xor c                                         ; $5c80: $a9
    or $ff                                        ; $5c81: $f6 $ff
    nop                                           ; $5c83: $00

jr_0c6_5c84:
    add hl, sp                                    ; $5c84: $39
    ld c, $02                                     ; $5c85: $0e $02
    rst $18                                       ; $5c87: $df
    nop                                           ; $5c88: $00
    ld h, b                                       ; $5c89: $60
    and b                                         ; $5c8a: $a0
    sbc b                                         ; $5c8b: $98
    nop                                           ; $5c8c: $00
    add b                                         ; $5c8d: $80
    add hl, bc                                    ; $5c8e: $09
    rst $38                                       ; $5c8f: $ff
    nop                                           ; $5c90: $00
    ld a, [c]                                     ; $5c91: $f2
    nop                                           ; $5c92: $00
    rra                                           ; $5c93: $1f
    adc b                                         ; $5c94: $88
    ld a, [bc]                                    ; $5c95: $0a
    ld bc, $07a2                                  ; $5c96: $01 $a2 $07
    ld e, d                                       ; $5c99: $5a
    ld a, [de]                                    ; $5c9a: $1a
    ld bc, $6b95                                  ; $5c9b: $01 $95 $6b
    rst $38                                       ; $5c9e: $ff
    jr nz, jr_0c6_5ca1                            ; $5c9f: $20 $00

jr_0c6_5ca1:
    di                                            ; $5ca1: $f3
    ld l, $02                                     ; $5ca2: $2e $02
    or a                                          ; $5ca4: $b7
    nop                                           ; $5ca5: $00
    ld [$a5f7], sp                                ; $5ca6: $08 $f7 $a5
    nop                                           ; $5ca9: $00
    ld b, d                                       ; $5caa: $42
    nop                                           ; $5cab: $00
    rst $38                                       ; $5cac: $ff
    xor e                                         ; $5cad: $ab
    rst $38                                       ; $5cae: $ff
    ld a, [$8a06]                                 ; $5caf: $fa $06 $8a
    nop                                           ; $5cb2: $00
    ld b, $fa                                     ; $5cb3: $06 $fa
    ld b, $bb                                     ; $5cb5: $06 $bb
    ld b, $00                                     ; $5cb7: $06 $00
    rst $38                                       ; $5cb9: $ff
    ld [$c715], sp                                ; $5cba: $08 $15 $c7
    ld bc, $60fe                                  ; $5cbd: $01 $fe $60
    ld [$5a9b], sp                                ; $5cc0: $08 $9b $5a
    ld [bc], a                                    ; $5cc3: $02
    ld l, [hl]                                    ; $5cc4: $6e
    ret nc                                        ; $5cc5: $d0

    nop                                           ; $5cc6: $00
    ld [$5ca3], sp                                ; $5cc7: $08 $a3 $5c
    ld d, b                                       ; $5cca: $50
    cpl                                           ; $5ccb: $2f
    sbc a                                         ; $5ccc: $9f
    nop                                           ; $5ccd: $00
    nop                                           ; $5cce: $00
    sub a                                         ; $5ccf: $97
    nop                                           ; $5cd0: $00
    ld b, d                                       ; $5cd1: $42
    ld l, h                                       ; $5cd2: $6c
    ld d, [hl]                                    ; $5cd3: $56
    ld [bc], a                                    ; $5cd4: $02
    nop                                           ; $5cd5: $00
    rst $38                                       ; $5cd6: $ff
    ld a, [de]                                    ; $5cd7: $1a
    dec h                                         ; $5cd8: $25
    jr nc, jr_0c6_5ce3                            ; $5cd9: $30 $08

    rra                                           ; $5cdb: $1f
    nop                                           ; $5cdc: $00
    jr nc, jr_0c6_5c7d                            ; $5cdd: $30 $9e

    jr nc, jr_0c6_5d00                            ; $5cdf: $30 $1f

    jr nc, jr_0c6_5d3e                            ; $5ce1: $30 $5b

jr_0c6_5ce3:
    jr nc, jr_0c6_5c6b                            ; $5ce3: $30 $86

    ld [hl+], a                                   ; $5ce5: $22
    add b                                         ; $5ce6: $80
    xor a                                         ; $5ce7: $af
    jr jr_0c6_5ced                                ; $5ce8: $18 $03

    ld d, d                                       ; $5cea: $52
    db $ed                                        ; $5ceb: $ed
    rst $38                                       ; $5cec: $ff

jr_0c6_5ced:
    jr c, @+$03                                   ; $5ced: $38 $01

    cp $85                                        ; $5cef: $fe $85
    ld h, d                                       ; $5cf1: $62
    ld [bc], a                                    ; $5cf2: $02
    nop                                           ; $5cf3: $00
    rst $38                                       ; $5cf4: $ff
    dec l                                         ; $5cf5: $2d
    ld [de], a                                    ; $5cf6: $12
    jr nz, jr_0c6_5d11                            ; $5cf7: $20 $18

    sbc l                                         ; $5cf9: $9d
    jr nz, jr_0c6_5cfc                            ; $5cfa: $20 $00

jr_0c6_5cfc:
    nop                                           ; $5cfc: $00
    ld e, d                                       ; $5cfd: $5a
    jr nc, jr_0c6_5d00                            ; $5cfe: $30 $00

jr_0c6_5d00:
    rst $38                                       ; $5d00: $ff
    ld b, e                                       ; $5d01: $43
    cp h                                          ; $5d02: $bc
    xor b                                         ; $5d03: $a8

jr_0c6_5d04:
    ld d, a                                       ; $5d04: $57
    ld b, h                                       ; $5d05: $44
    xor d                                         ; $5d06: $aa
    xor b                                         ; $5d07: $a8
    inc bc                                        ; $5d08: $03
    ld l, $00                                     ; $5d09: $2e $00
    ld e, b                                       ; $5d0b: $58
    or d                                          ; $5d0c: $b2
    nop                                           ; $5d0d: $00
    nop                                           ; $5d0e: $00
    nop                                           ; $5d0f: $00
    ld b, b                                       ; $5d10: $40

jr_0c6_5d11:
    ld e, d                                       ; $5d11: $5a
    or e                                          ; $5d12: $b3
    inc bc                                        ; $5d13: $03
    ld d, h                                       ; $5d14: $54
    xor e                                         ; $5d15: $ab
    ccf                                           ; $5d16: $3f
    ldh [$f2], a                                  ; $5d17: $e0 $f2
    ld b, b                                       ; $5d19: $40

jr_0c6_5d1a:
    ld bc, $c07f                                  ; $5d1a: $01 $7f $c0
    ld e, b                                       ; $5d1d: $58
    ret nz                                        ; $5d1e: $c0

    nop                                           ; $5d1f: $00
    nop                                           ; $5d20: $00
    xor $10                                       ; $5d21: $ee $10
    ld hl, $ed41                                  ; $5d23: $21 $41 $ed
    xor b                                         ; $5d26: $a8
    ld bc, $009b                                  ; $5d27: $01 $9b $00
    rrca                                          ; $5d2a: $0f
    jr jr_0c6_5d1a                                ; $5d2b: $18 $ed

    ret z                                         ; $5d2d: $c8

    nop                                           ; $5d2e: $00
    nop                                           ; $5d2f: $00
    ld c, l                                       ; $5d30: $4d
    cp d                                          ; $5d31: $ba
    rst $38                                       ; $5d32: $ff
    nop                                           ; $5d33: $00
    reti                                          ; $5d34: $d9


    nop                                           ; $5d35: $00
    ld a, a                                       ; $5d36: $7f
    nop                                           ; $5d37: $00
    ld b, h                                       ; $5d38: $44
    db $dd                                        ; $5d39: $dd
    call nc, Call_0c6_7702                        ; $5d3a: $d4 $02 $77
    nop                                           ; $5d3d: $00

jr_0c6_5d3e:
    db $fd                                        ; $5d3e: $fd
    ret nz                                        ; $5d3f: $c0

    db $10                                        ; $5d40: $10
    adc d                                         ; $5d41: $8a
    ld bc, $fe05                                  ; $5d42: $01 $05 $fe
    ld bc, $0198                                  ; $5d45: $01 $98 $01
    rst $10                                       ; $5d48: $d7
    xor [hl]                                      ; $5d49: $ae
    ld [bc], a                                    ; $5d4a: $02
    cp a                                          ; $5d4b: $bf
    ld b, b                                       ; $5d4c: $40
    nop                                           ; $5d4d: $00
    nop                                           ; $5d4e: $00
    add b                                         ; $5d4f: $80
    rst $38                                       ; $5d50: $ff
    sub c                                         ; $5d51: $91
    ldh [$80], a                                  ; $5d52: $e0 $80
    rst $38                                       ; $5d54: $ff
    cp c                                          ; $5d55: $b9
    add $44                                       ; $5d56: $c6 $44
    or $50                                        ; $5d58: $f6 $50
    nop                                           ; $5d5a: $00
    rst $38                                       ; $5d5b: $ff
    nop                                           ; $5d5c: $00
    xor c                                         ; $5d5d: $a9
    ld [hl], b                                    ; $5d5e: $70
    ld [bc], a                                    ; $5d5f: $02
    ld d, h                                       ; $5d60: $54
    xor e                                         ; $5d61: $ab
    nop                                           ; $5d62: $00
    nop                                           ; $5d63: $00
    rst $38                                       ; $5d64: $ff
    ld a, [hl+]                                   ; $5d65: $2a
    ld de, $06b2                                  ; $5d66: $11 $b2 $06
    dec sp                                        ; $5d69: $3b
    ld b, $10                                     ; $5d6a: $06 $10
    ld [$5306], a                                 ; $5d6c: $ea $06 $53
    dec bc                                        ; $5d6f: $0b
    inc bc                                        ; $5d70: $03
    rst $20                                       ; $5d71: $e7
    jr jr_0c6_5d74                                ; $5d72: $18 $00

jr_0c6_5d74:
    rst $38                                       ; $5d74: $ff
    jr nc, jr_0c6_5d04                            ; $5d75: $30 $8d

    ld [hl-], a                                   ; $5d77: $32
    ld l, h                                       ; $5d78: $6c
    nop                                           ; $5d79: $00
    add b                                         ; $5d7a: $80
    ld [de], a                                    ; $5d7b: $12
    ccf                                           ; $5d7c: $3f
    ldh [$73], a                                  ; $5d7d: $e0 $73
    ret nz                                        ; $5d7f: $c0

    and b                                         ; $5d80: $a0
    ld [hl], b                                    ; $5d81: $70

jr_0c6_5d82:
    jr jr_0c6_5d82                                ; $5d82: $18 $fe

    inc sp                                        ; $5d84: $33
    inc b                                         ; $5d85: $04
    sub l                                         ; $5d86: $95
    ld l, d                                       ; $5d87: $6a
    rst $38                                       ; $5d88: $ff
    nop                                           ; $5d89: $00
    ld [$2ea5], a                                 ; $5d8a: $ea $a5 $2e
    inc bc                                        ; $5d8d: $03
    sbc c                                         ; $5d8e: $99
    ld [hl], b                                    ; $5d8f: $70
    jr nz, jr_0c6_5dbe                            ; $5d90: $20 $2c

    db $db                                        ; $5d92: $db
    ld [hl], b                                    ; $5d93: $70
    jr @-$27                                      ; $5d94: $18 $d7

    ld a, [c]                                     ; $5d96: $f2
    nop                                           ; $5d97: $00
    ld b, c                                       ; $5d98: $41
    or a                                          ; $5d99: $b7
    jr nc, jr_0c6_5d9e                            ; $5d9a: $30 $02

    xor c                                         ; $5d9c: $a9
    ld d, [hl]                                    ; $5d9d: $56

jr_0c6_5d9e:
    cp $01                                        ; $5d9e: $fe $01
    add [hl]                                      ; $5da0: $86
    ld [hl], b                                    ; $5da1: $70
    nop                                           ; $5da2: $00
    dec d                                         ; $5da3: $15
    sub h                                         ; $5da4: $94
    ld bc, $a0dd                                  ; $5da5: $01 $dd $a0
    nop                                           ; $5da8: $00
    cp a                                          ; $5da9: $bf
    sub b                                         ; $5daa: $90
    ld [de], a                                    ; $5dab: $12
    sbc c                                         ; $5dac: $99
    ld [hl], b                                    ; $5dad: $70
    nop                                           ; $5dae: $00
    inc d                                         ; $5daf: $14
    or l                                          ; $5db0: $b5
    jp nz, Jump_0c6_50fa                          ; $5db1: $c2 $fa $50

    nop                                           ; $5db4: $00
    rst $38                                       ; $5db5: $ff
    ret nz                                        ; $5db6: $c0

    ld bc, $ff00                                  ; $5db7: $01 $00 $ff
    ld bc, $a758                                  ; $5dba: $01 $58 $a7
    nop                                           ; $5dbd: $00

jr_0c6_5dbe:
    rst $38                                       ; $5dbe: $ff
    ld [hl], $09                                  ; $5dbf: $36 $09
    and d                                         ; $5dc1: $a2
    ld [hl], b                                    ; $5dc2: $70
    nop                                           ; $5dc3: $00
    nop                                           ; $5dc4: $00
    ld a, [c]                                     ; $5dc5: $f2
    ld b, $4b                                     ; $5dc6: $06 $4b
    or [hl]                                       ; $5dc8: $b6
    nop                                           ; $5dc9: $00
    rst $38                                       ; $5dca: $ff
    rst $10                                       ; $5dcb: $d7
    ld [$1c98], sp                                ; $5dcc: $08 $98 $1c
    ld [bc], a                                    ; $5dcf: $02
    ld a, [de]                                    ; $5dd0: $1a
    nop                                           ; $5dd1: $00
    ld l, d                                       ; $5dd2: $6a
    inc bc                                        ; $5dd3: $03
    sub b                                         ; $5dd4: $90
    ld a, [bc]                                    ; $5dd5: $0a
    ld a, a                                       ; $5dd6: $7f
    ret nz                                        ; $5dd7: $c0

    ld a, e                                       ; $5dd8: $7b
    inc bc                                        ; $5dd9: $03
    and b                                         ; $5dda: $a0
    ccf                                           ; $5ddb: $3f
    ldh [$28], a                                  ; $5ddc: $e0 $28
    ldh [rP1], a                                  ; $5dde: $e0 $00
    ld c, b                                       ; $5de0: $48
    inc bc                                        ; $5de1: $03
    ldh a, [$08]                                  ; $5de2: $f0 $08
    dec d                                         ; $5de4: $15
    rst $38                                       ; $5de5: $ff
    nop                                           ; $5de6: $00
    ld a, d                                       ; $5de7: $7a
    sbc [hl]                                      ; $5de8: $9e
    inc bc                                        ; $5de9: $03
    ld e, c                                       ; $5dea: $59
    ldh [rP1], a                                  ; $5deb: $e0 $00
    ld [$01a8], a                                 ; $5ded: $ea $a8 $01
    ld bc, $5daa                                  ; $5df0: $01 $aa $5d
    rst $38                                       ; $5df3: $ff
    nop                                           ; $5df4: $00
    ld hl, sp+$00                                 ; $5df5: $f8 $00
    ccf                                           ; $5df7: $3f
    adc h                                         ; $5df8: $8c
    ld [bc], a                                    ; $5df9: $02
    ld d, c                                       ; $5dfa: $51
    ld a, h                                       ; $5dfb: $7c
    sub [hl]                                      ; $5dfc: $96
    inc bc                                        ; $5dfd: $03
    ld a, [$0210]                                 ; $5dfe: $fa $10 $02
    cp $01                                        ; $5e01: $fe $01
    push bc                                       ; $5e03: $c5
    cp [hl]                                       ; $5e04: $be
    inc bc                                        ; $5e05: $03
    ld b, l                                       ; $5e06: $45
    call nc, Call_000_0a40                        ; $5e07: $d4 $40 $0a
    ld a, [de]                                    ; $5e0a: $1a
    ld [bc], a                                    ; $5e0b: $02
    db $fc                                        ; $5e0c: $fc
    jr nc, jr_0c6_5e18                            ; $5e0d: $30 $09

    adc $2a                                       ; $5e0f: $ce $2a
    dec b                                         ; $5e11: $05
    nop                                           ; $5e12: $00
    ld a, d                                       ; $5e13: $7a
    nop                                           ; $5e14: $00
    ld b, b                                       ; $5e15: $40
    cp a                                          ; $5e16: $bf
    add hl, hl                                    ; $5e17: $29

jr_0c6_5e18:
    ld d, $00                                     ; $5e18: $16 $00
    rst $38                                       ; $5e1a: $ff
    ld b, b                                       ; $5e1b: $40
    xor d                                         ; $5e1c: $aa
    ld e, b                                       ; $5e1d: $58
    inc bc                                        ; $5e1e: $03
    or h                                          ; $5e1f: $b4
    ld h, b                                       ; $5e20: $60
    and b                                         ; $5e21: $a0
    ld h, b                                       ; $5e22: $60
    xor e                                         ; $5e23: $ab
    ld h, b                                       ; $5e24: $60
    ld bc, $c07f                                  ; $5e25: $01 $7f $c0
    ld l, a                                       ; $5e28: $6f
    ret nz                                        ; $5e29: $c0

    di                                            ; $5e2a: $f3
    add b                                         ; $5e2b: $80
    call nc, TimerOverflowInterrupt               ; $5e2c: $d4 $50 $00
    ret nc                                        ; $5e2f: $d0

    ret nc                                        ; $5e30: $d0

    add hl, bc                                    ; $5e31: $09
    ldh a, [$0b]                                  ; $5e32: $f0 $0b
    or c                                          ; $5e34: $b1
    ret c                                         ; $5e35: $d8

    inc bc                                        ; $5e36: $03
    xor c                                         ; $5e37: $a9
    ld d, [hl]                                    ; $5e38: $56
    ld a, [$4006]                                 ; $5e39: $fa $06 $40
    cp d                                          ; $5e3c: $ba
    ret nz                                        ; $5e3d: $c0

    ld bc, $0c35                                  ; $5e3e: $01 $35 $0c
    rst $38                                       ; $5e41: $ff
    nop                                           ; $5e42: $00
    xor e                                         ; $5e43: $ab
    nop                                           ; $5e44: $00
    ld h, b                                       ; $5e45: $60
    xor a                                         ; $5e46: $af
    ld h, b                                       ; $5e47: $60
    ld bc, $19c0                                  ; $5e48: $01 $c0 $19
    sbc $00                                       ; $5e4b: $de $00
    cp $01                                        ; $5e4d: $fe $01
    inc e                                         ; $5e4f: $1c
    ld c, d                                       ; $5e50: $4a
    ld bc, $1330                                  ; $5e51: $01 $30 $13
    nop                                           ; $5e54: $00
    call $052b                                    ; $5e55: $cd $2b $05
    rst $28                                       ; $5e58: $ef
    ret nz                                        ; $5e59: $c0

    inc bc                                        ; $5e5a: $03
    sub h                                         ; $5e5b: $94
    jp z, $0250                                   ; $5e5c: $ca $50 $02

    adc a                                         ; $5e5f: $8f
    nop                                           ; $5e60: $00
    nop                                           ; $5e61: $00
    rst $00                                       ; $5e62: $c7
    jr jr_0c6_5e69                                ; $5e63: $18 $04

    ld l, l                                       ; $5e65: $6d
    or b                                          ; $5e66: $b0
    ld [bc], a                                    ; $5e67: $02
    push de                                       ; $5e68: $d5

jr_0c6_5e69:
    ld a, [bc]                                    ; $5e69: $0a
    ld [hl+], a                                   ; $5e6a: $22
    nop                                           ; $5e6b: $00
    rst $38                                       ; $5e6c: $ff
    ld d, [hl]                                    ; $5e6d: $56
    or b                                          ; $5e6e: $b0
    ld [bc], a                                    ; $5e6f: $02
    and [hl]                                      ; $5e70: $a6
    or b                                          ; $5e71: $b0
    ld [bc], a                                    ; $5e72: $02
    adc l                                         ; $5e73: $8d
    sbc b                                         ; $5e74: $98
    inc [hl]                                      ; $5e75: $34
    ld bc, $241b                                  ; $5e76: $01 $1b $24
    db $10                                        ; $5e79: $10
    ld a, [bc]                                    ; $5e7a: $0a
    or b                                          ; $5e7b: $b0
    ld a, [de]                                    ; $5e7c: $1a
    ld l, l                                       ; $5e7d: $6d
    nop                                           ; $5e7e: $00
    ld a, a                                       ; $5e7f: $7f
    ld bc, $eec0                                  ; $5e80: $01 $c0 $ee
    ld b, b                                       ; $5e83: $40
    ld a, c                                       ; $5e84: $79
    ret nz                                        ; $5e85: $c0

    ld l, d                                       ; $5e86: $6a
    push de                                       ; $5e87: $d5
    or b                                          ; $5e88: $b0
    ld a, [hl+]                                   ; $5e89: $2a
    db $10                                        ; $5e8a: $10
    rst $38                                       ; $5e8b: $ff
    nop                                           ; $5e8c: $00
    or b                                          ; $5e8d: $b0
    ld a, [de]                                    ; $5e8e: $1a
    inc b                                         ; $5e8f: $04
    ld d, h                                       ; $5e90: $54
    xor e                                         ; $5e91: $ab
    db $fd                                        ; $5e92: $fd
    inc bc                                        ; $5e93: $03
    ld b, c                                       ; $5e94: $41
    ld e, l                                       ; $5e95: $5d
    adc b                                         ; $5e96: $88
    inc bc                                        ; $5e97: $03
    ld c, [hl]                                    ; $5e98: $4e
    ld [bc], a                                    ; $5e99: $02
    rst $38                                       ; $5e9a: $ff
    nop                                           ; $5e9b: $00
    xor l                                         ; $5e9c: $ad
    ld [hl], $01                                  ; $5e9d: $36 $01
    inc hl                                        ; $5e9f: $23
    xor d                                         ; $5ea0: $aa
    ld d, l                                       ; $5ea1: $55
    and b                                         ; $5ea2: $a0
    ld a, [hl+]                                   ; $5ea3: $2a
    cp $01                                        ; $5ea4: $fe $01
    ld d, $a8                                     ; $5ea6: $16 $a8
    ld bc, $0880                                  ; $5ea8: $01 $80 $08
    ld d, d                                       ; $5eab: $52
    and $4a                                       ; $5eac: $e6 $4a
    inc b                                         ; $5eae: $04
    ld e, e                                       ; $5eaf: $5b
    jr nc, jr_0c6_5eb6                            ; $5eb0: $30 $04

    sub b                                         ; $5eb2: $90
    db $e3                                        ; $5eb3: $e3
    ret nc                                        ; $5eb4: $d0

    ld a, [bc]                                    ; $5eb5: $0a

jr_0c6_5eb6:
    nop                                           ; $5eb6: $00
    ld sp, $e300                                  ; $5eb7: $31 $00 $e3
    sub [hl]                                      ; $5eba: $96
    inc b                                         ; $5ebb: $04
    sub a                                         ; $5ebc: $97
    nop                                           ; $5ebd: $00
    rst $38                                       ; $5ebe: $ff
    call Call_0c6_7032                            ; $5ebf: $cd $32 $70
    ld a, [bc]                                    ; $5ec2: $0a
    ld bc, $0603                                  ; $5ec3: $01 $03 $06
    db $d3                                        ; $5ec6: $d3
    ld b, $03                                     ; $5ec7: $06 $03
    ld b, $4b                                     ; $5ec9: $06 $4b
    ld [hl], b                                    ; $5ecb: $70
    ld [bc], a                                    ; $5ecc: $02
    dec b                                         ; $5ecd: $05
    dec hl                                        ; $5ece: $2b
    inc d                                         ; $5ecf: $14
    nop                                           ; $5ed0: $00
    rst $38                                       ; $5ed1: $ff
    ld d, l                                       ; $5ed2: $55
    ret                                           ; $5ed3: $c9


    dec b                                         ; $5ed4: $05
    ld c, [hl]                                    ; $5ed5: $4e
    cp [hl]                                       ; $5ed6: $be
    inc b                                         ; $5ed7: $04
    nop                                           ; $5ed8: $00
    ld [hl], a                                    ; $5ed9: $77
    nop                                           ; $5eda: $00
    ccf                                           ; $5edb: $3f
    ldh [$be], a                                  ; $5edc: $e0 $be
    ld h, b                                       ; $5ede: $60
    inc a                                         ; $5edf: $3c
    ldh [rNR14], a                                ; $5ee0: $e0 $14
    or l                                          ; $5ee2: $b5
    ld [$1aff], a                                 ; $5ee3: $ea $ff $1a
    ld bc, $02c7                                  ; $5ee6: $01 $c7 $02
    ld [bc], a                                    ; $5ee9: $02
    rst $38                                       ; $5eea: $ff
    nop                                           ; $5eeb: $00
    ld b, c                                       ; $5eec: $41
    ret nc                                        ; $5eed: $d0

    cp d                                          ; $5eee: $ba
    inc b                                         ; $5eef: $04
    ld a, [hl+]                                   ; $5ef0: $2a
    push de                                       ; $5ef1: $d5
    cp $01                                        ; $5ef2: $fe $01
    xor [hl]                                      ; $5ef4: $ae
    nop                                           ; $5ef5: $00
    ld [bc], a                                    ; $5ef6: $02
    ld hl, $01d6                                  ; $5ef7: $21 $d6 $01
    jr z, jr_0c6_5f06                             ; $5efa: $28 $0a

    db $eb                                        ; $5efc: $eb
    nop                                           ; $5efd: $00
    ld d, l                                       ; $5efe: $55
    xor d                                         ; $5eff: $aa
    add b                                         ; $5f00: $80
    dec de                                        ; $5f01: $1b
    inc b                                         ; $5f02: $04
    xor a                                         ; $5f03: $af
    add b                                         ; $5f04: $80
    rst $38                                       ; $5f05: $ff

jr_0c6_5f06:
    nop                                           ; $5f06: $00
    sub [hl]                                      ; $5f07: $96
    or $04                                        ; $5f08: $f6 $04
    ld a, [hl+]                                   ; $5f0a: $2a
    push de                                       ; $5f0b: $d5
    ld d, b                                       ; $5f0c: $50
    nop                                           ; $5f0d: $00
    ret nc                                        ; $5f0e: $d0

    ld [bc], a                                    ; $5f0f: $02
    ld b, b                                       ; $5f10: $40
    ret nz                                        ; $5f11: $c0

    ld bc, $7f20                                  ; $5f12: $01 $20 $7f
    ld a, [hl+]                                   ; $5f15: $2a
    ld [hl], h                                    ; $5f16: $74
    dec c                                         ; $5f17: $0d
    jr nz, jr_0c6_5f99                            ; $5f18: $20 $7f

    xor d                                         ; $5f1a: $aa
    ld a, a                                       ; $5f1b: $7f
    ld e, d                                       ; $5f1c: $5a
    inc bc                                        ; $5f1d: $03
    ld c, $05                                     ; $5f1e: $0e $05
    ei                                            ; $5f20: $fb
    ld h, h                                       ; $5f21: $64
    inc b                                         ; $5f22: $04
    ld b, l                                       ; $5f23: $45
    ld c, e                                       ; $5f24: $4b
    inc hl                                        ; $5f25: $23
    ld b, $aa                                     ; $5f26: $06 $aa
    ld d, l                                       ; $5f28: $55
    rst $38                                       ; $5f29: $ff
    ld e, $15                                     ; $5f2a: $1e $15
    and [hl]                                      ; $5f2c: $a6
    inc e                                         ; $5f2d: $1c
    ld bc, $d660                                  ; $5f2e: $01 $60 $d6
    ld e, b                                       ; $5f31: $58
    ld [bc], a                                    ; $5f32: $02
    jr nc, jr_0c6_5f3f                            ; $5f33: $30 $0a

    sub d                                         ; $5f35: $92
    dec c                                         ; $5f36: $0d
    nop                                           ; $5f37: $00
    rst $38                                       ; $5f38: $ff
    inc de                                        ; $5f39: $13
    ld [$e4ec], sp                                ; $5f3a: $08 $ec $e4
    inc c                                         ; $5f3d: $0c
    or a                                          ; $5f3e: $b7

jr_0c6_5f3f:
    nop                                           ; $5f3f: $00
    inc b                                         ; $5f40: $04
    ld d, [hl]                                    ; $5f41: $56
    xor l                                         ; $5f42: $ad
    nop                                           ; $5f43: $00
    nop                                           ; $5f44: $00
    rst $38                                       ; $5f45: $ff
    ld d, d                                       ; $5f46: $52
    xor h                                         ; $5f47: $ac
    dec c                                         ; $5f48: $0d
    ld a, [c]                                     ; $5f49: $f2
    ld h, $18                                     ; $5f4a: $26 $18
    nop                                           ; $5f4c: $00
    ld hl, $6900                                  ; $5f4d: $21 $00 $69
    ld d, e                                       ; $5f50: $53
    ld b, $55                                     ; $5f51: $06 $55
    xor d                                         ; $5f53: $aa
    nop                                           ; $5f54: $00
    rst $38                                       ; $5f55: $ff
    db $fc                                        ; $5f56: $fc
    inc bc                                        ; $5f57: $03
    ld [bc], a                                    ; $5f58: $02
    rst $38                                       ; $5f59: $ff
    sub h                                         ; $5f5a: $94
    ld h, e                                       ; $5f5b: $63
    nop                                           ; $5f5c: $00
    nop                                           ; $5f5d: $00
    or h                                          ; $5f5e: $b4
    ld h, b                                       ; $5f5f: $60
    inc d                                         ; $5f60: $14

Call_0c6_5f61:
    add b                                         ; $5f61: $80
    jr c, @-$7e                                   ; $5f62: $38 $80

    sub l                                         ; $5f64: $95
    nop                                           ; $5f65: $00
    inc e                                         ; $5f66: $1c
    ld d, h                                       ; $5f67: $54
    ld bc, $0a40                                  ; $5f68: $01 $40 $0a
    ld [bc], a                                    ; $5f6b: $02
    nop                                           ; $5f6c: $00
    ld c, h                                       ; $5f6d: $4c
    ld a, [bc]                                    ; $5f6e: $0a
    nop                                           ; $5f6f: $00
    and e                                         ; $5f70: $a3
    nop                                           ; $5f71: $00
    inc e                                         ; $5f72: $1c
    or b                                          ; $5f73: $b0
    ld [hl-], a                                   ; $5f74: $32
    and d                                         ; $5f75: $a2
    ld [hl], b                                    ; $5f76: $70
    inc b                                         ; $5f77: $04
    or d                                          ; $5f78: $b2
    or b                                          ; $5f79: $b0
    ld [hl], b                                    ; $5f7a: $70
    inc d                                         ; $5f7b: $14
    ld e, a                                       ; $5f7c: $5f
    or b                                          ; $5f7d: $b0
    ld [bc], a                                    ; $5f7e: $02
    ldh [rDIV], a                                 ; $5f7f: $e0 $04
    rst $38                                       ; $5f81: $ff
    ld d, [hl]                                    ; $5f82: $56
    adc b                                         ; $5f83: $88
    jr nz, jr_0c6_5f90                            ; $5f84: $20 $0a

    rst $18                                       ; $5f86: $df
    dec l                                         ; $5f87: $2d
    add d                                         ; $5f88: $82
    ld l, [hl]                                    ; $5f89: $6e
    add [hl]                                      ; $5f8a: $86
    dec b                                         ; $5f8b: $05
    ld e, a                                       ; $5f8c: $5f
    and b                                         ; $5f8d: $a0
    ld [de], a                                    ; $5f8e: $12
    add h                                         ; $5f8f: $84

jr_0c6_5f90:
    nop                                           ; $5f90: $00
    ld h, e                                       ; $5f91: $63
    nop                                           ; $5f92: $00
    rst $38                                       ; $5f93: $ff
    inc b                                         ; $5f94: $04
    dec sp                                        ; $5f95: $3b
    ld a, [$2f02]                                 ; $5f96: $fa $02 $2f

jr_0c6_5f99:
    ld [$fe02], sp                                ; $5f99: $08 $02 $fe
    ld [bc], a                                    ; $5f9c: $02
    ld d, a                                       ; $5f9d: $57
    ld h, b                                       ; $5f9e: $60
    nop                                           ; $5f9f: $00
    adc b                                         ; $5fa0: $88
    ld [hl], a                                    ; $5fa1: $77
    inc bc                                        ; $5fa2: $03
    db $10                                        ; $5fa3: $10
    db $fc                                        ; $5fa4: $fc
    and c                                         ; $5fa5: $a1
    ld b, $10                                     ; $5fa6: $06 $10
    dec hl                                        ; $5fa8: $2b
    nop                                           ; $5fa9: $00
    rst $38                                       ; $5faa: $ff
    sbc c                                         ; $5fab: $99
    ld b, $06                                     ; $5fac: $06 $06
    ld b, b                                       ; $5fae: $40
    cp a                                          ; $5faf: $bf
    xor e                                         ; $5fb0: $ab
    inc d                                         ; $5fb1: $14
    nop                                           ; $5fb2: $00
    ld [$b003], sp                                ; $5fb3: $08 $03 $b0
    ld [$0220], sp                                ; $5fb6: $08 $20 $02
    ldh [$a4], a                                  ; $5fb9: $e0 $a4
    ld h, b                                       ; $5fbb: $60
    ld [hl-], a                                   ; $5fbc: $32
    ldh [$2c], a                                  ; $5fbd: $e0 $2c
    ld b, b                                       ; $5fbf: $40
    ld [bc], a                                    ; $5fc0: $02
    ld [hl], a                                    ; $5fc1: $77
    sub b                                         ; $5fc2: $90
    sub b                                         ; $5fc3: $90
    jr jr_0c6_5fc6                                ; $5fc4: $18 $00

jr_0c6_5fc6:
    db $d3                                        ; $5fc6: $d3
    jp nc, $0700                                  ; $5fc7: $d2 $00 $07

    nop                                           ; $5fca: $00
    inc bc                                        ; $5fcb: $03
    ld b, $45                                     ; $5fcc: $06 $45
    ei                                            ; $5fce: $fb
    jr c, jr_0c6_5fd2                             ; $5fcf: $38 $01

    dec hl                                        ; $5fd1: $2b

jr_0c6_5fd2:
    sub $58                                       ; $5fd2: $d6 $58
    ld [hl], $04                                  ; $5fd4: $36 $04
    cp h                                          ; $5fd6: $bc
    ld a, [hl-]                                   ; $5fd7: $3a
    inc b                                         ; $5fd8: $04
    ld b, b                                       ; $5fd9: $40
    ei                                            ; $5fda: $fb
    ret z                                         ; $5fdb: $c8

    dec d                                         ; $5fdc: $15
    ld c, d                                       ; $5fdd: $4a
    or l                                          ; $5fde: $b5
    add b                                         ; $5fdf: $80
    rst $38                                       ; $5fe0: $ff
    xor c                                         ; $5fe1: $a9
    jp nc, $8405                                  ; $5fe2: $d2 $05 $84

    ei                                            ; $5fe5: $fb
    sub a                                         ; $5fe6: $97
    ldh [$95], a                                  ; $5fe7: $e0 $95
    ld c, [hl]                                    ; $5fe9: $4e
    ld [bc], a                                    ; $5fea: $02
    ld e, a                                       ; $5feb: $5f
    and b                                         ; $5fec: $a0
    ld [de], a                                    ; $5fed: $12
    ld b, c                                       ; $5fee: $41
    and h                                         ; $5fef: $a4
    nop                                           ; $5ff0: $00
    inc bc                                        ; $5ff1: $03
    ld c, b                                       ; $5ff2: $48
    add a                                         ; $5ff3: $87
    cp h                                          ; $5ff4: $bc
    ld bc, $38ce                                  ; $5ff5: $01 $ce $38
    inc bc                                        ; $5ff8: $03
    sbc d                                         ; $5ff9: $9a
    sub b                                         ; $5ffa: $90
    ld [$dd22], sp                                ; $5ffb: $08 $22 $dd
    db $f4                                        ; $5ffe: $f4
    inc b                                         ; $5fff: $04
    push bc                                       ; $6000: $c5
    ld b, $d7                                     ; $6001: $06 $d7
    ret z                                         ; $6003: $c8

    ld b, $d4                                     ; $6004: $06 $d4
    sub h                                         ; $6006: $94
    inc l                                         ; $6007: $2c
    inc bc                                        ; $6008: $03
    add [hl]                                      ; $6009: $86
    ld h, c                                       ; $600a: $61
    and b                                         ; $600b: $a0
    dec e                                         ; $600c: $1d
    dec sp                                        ; $600d: $3b
    jr nz, jr_0c6_6021                            ; $600e: $20 $11

    inc b                                         ; $6010: $04
    db $fc                                        ; $6011: $fc
    nop                                           ; $6012: $00
    ld d, l                                       ; $6013: $55
    adc h                                         ; $6014: $8c
    inc b                                         ; $6015: $04
    db $fc                                        ; $6016: $fc
    and a                                         ; $6017: $a7
    inc e                                         ; $6018: $1c
    ld c, b                                       ; $6019: $48
    nop                                           ; $601a: $00
    ld d, b                                       ; $601b: $50
    pop af                                        ; $601c: $f1
    jr nc, jr_0c6_6040                            ; $601d: $30 $21

    ld hl, sp-$60                                 ; $601f: $f8 $a0

jr_0c6_6021:
    inc d                                         ; $6021: $14
    nop                                           ; $6022: $00
    rst $38                                       ; $6023: $ff

jr_0c6_6024:
    and c                                         ; $6024: $a1
    ld e, [hl]                                    ; $6025: $5e
    ld [hl], $54                                  ; $6026: $36 $54
    dec hl                                        ; $6028: $2b
    ccf                                           ; $6029: $3f
    ld bc, $07b0                                  ; $602a: $01 $b0 $07
    xor h                                         ; $602d: $ac
    ld [c], a                                     ; $602e: $e2
    inc b                                         ; $602f: $04
    jr jr_0c6_6033                                ; $6030: $18 $01

    dec [hl]                                      ; $6032: $35

jr_0c6_6033:
    ld [hl+], a                                   ; $6033: $22
    dec b                                         ; $6034: $05
    ld hl, sp+$10                                 ; $6035: $f8 $10
    ld [$009c], sp                                ; $6037: $08 $9c $00
    dec d                                         ; $603a: $15
    ld b, h                                       ; $603b: $44
    inc bc                                        ; $603c: $03
    nop                                           ; $603d: $00
    inc b                                         ; $603e: $04
    rst $38                                       ; $603f: $ff

jr_0c6_6040:
    inc c                                         ; $6040: $0c
    ldh a, [rNR41]                                ; $6041: $f0 $20
    rst $18                                       ; $6043: $df
    ldh [$0b], a                                  ; $6044: $e0 $0b
    cp d                                          ; $6046: $ba
    nop                                           ; $6047: $00
    nop                                           ; $6048: $00
    ld h, b                                       ; $6049: $60
    ld bc, $01f2                                  ; $604a: $01 $f2 $01
    nop                                           ; $604d: $00
    rst $38                                       ; $604e: $ff
    or l                                          ; $604f: $b5
    ld c, e                                       ; $6050: $4b
    ld b, b                                       ; $6051: $40
    ld bc, $04b0                                  ; $6052: $01 $b0 $04
    ld a, a                                       ; $6055: $7f
    ret nz                                        ; $6056: $c0

    ld a, c                                       ; $6057: $79
    ret nz                                        ; $6058: $c0

    rst $38                                       ; $6059: $ff
    add b                                         ; $605a: $80
    dec c                                         ; $605b: $0d
    sub $80                                       ; $605c: $d6 $80
    adc d                                         ; $605e: $8a
    add b                                         ; $605f: $80
    ld a, e                                       ; $6060: $7b
    ld [bc], a                                    ; $6061: $02
    or b                                          ; $6062: $b0
    ld bc, $70ff                                  ; $6063: $01 $ff $70
    ld [bc], a                                    ; $6066: $02
    ld b, a                                       ; $6067: $47
    ld hl, sp+$54                                 ; $6068: $f8 $54
    ld b, $43                                     ; $606a: $06 $43
    nop                                           ; $606c: $00
    sub h                                         ; $606d: $94
    or b                                          ; $606e: $b0
    dec d                                         ; $606f: $15
    ret nc                                        ; $6070: $d0

    inc bc                                        ; $6071: $03
    xor [hl]                                      ; $6072: $ae
    ld b, $00                                     ; $6073: $06 $00
    ld a, [$4200]                                 ; $6075: $fa $00 $42
    rlca                                          ; $6078: $07
    or l                                          ; $6079: $b5
    ld c, $04                                     ; $607a: $0e $04
    rrca                                          ; $607c: $0f
    jr nc, jr_0c6_6024                            ; $607d: $30 $a5

    ld e, a                                       ; $607f: $5f
    nop                                           ; $6080: $00
    inc c                                         ; $6081: $0c
    or b                                          ; $6082: $b0
    inc c                                         ; $6083: $0c
    ld [$44f7], sp                                ; $6084: $08 $f7 $44
    add e                                         ; $6087: $83
    add b                                         ; $6088: $80
    db $10                                        ; $6089: $10
    ld a, [bc]                                    ; $608a: $0a
    db $f4                                        ; $608b: $f4
    inc c                                         ; $608c: $0c
    rla                                           ; $608d: $17
    inc c                                         ; $608e: $0c
    add sp, $18                                   ; $608f: $e8 $18
    ld l, d                                       ; $6091: $6a
    sub c                                         ; $6092: $91
    call nz, Call_0c6_4903                        ; $6093: $c4 $03 $49
    add [hl]                                      ; $6096: $86

Jump_0c6_6097:
    nop                                           ; $6097: $00
    dec bc                                        ; $6098: $0b
    nop                                           ; $6099: $00
    nop                                           ; $609a: $00
    inc sp                                        ; $609b: $33
    ret nc                                        ; $609c: $d0

    ld [de], a                                    ; $609d: $12
    ld [bc], a                                    ; $609e: $02
    nop                                           ; $609f: $00
    rst $38                                       ; $60a0: $ff
    ld b, c                                       ; $60a1: $41
    cp [hl]                                       ; $60a2: $be
    and h                                         ; $60a3: $a4
    dec de                                        ; $60a4: $1b
    sub b                                         ; $60a5: $90
    inc l                                         ; $60a6: $2c
    db $db                                        ; $60a7: $db
    xor d                                         ; $60a8: $aa
    ld [hl], b                                    ; $60a9: $70
    dec b                                         ; $60aa: $05
    sub [hl]                                      ; $60ab: $96
    nop                                           ; $60ac: $00
    dec b                                         ; $60ad: $05
    ld d, l                                       ; $60ae: $55
    nop                                           ; $60af: $00
    dec b                                         ; $60b0: $05
    ld c, a                                       ; $60b1: $4f
    nop                                           ; $60b2: $00
    dec b                                         ; $60b3: $05
    dec l                                         ; $60b4: $2d
    ld [$2118], sp                                ; $60b5: $08 $18 $21
    ldh [$aa], a                                  ; $60b8: $e0 $aa
    nop                                           ; $60ba: $00
    dec b                                         ; $60bb: $05
    xor d                                         ; $60bc: $aa
    push af                                       ; $60bd: $f5
    rst $38                                       ; $60be: $ff
    inc hl                                        ; $60bf: $23
    nop                                           ; $60c0: $00
    jr c, jr_0c6_60d1                             ; $60c1: $38 $0e

    rlca                                          ; $60c3: $07
    db $dd                                        ; $60c4: $dd
    nop                                           ; $60c5: $00
    ld d, b                                       ; $60c6: $50
    ld hl, sp+$04                                 ; $60c7: $f8 $04
    ld [hl], b                                    ; $60c9: $70
    dec e                                         ; $60ca: $1d
    ld e, d                                       ; $60cb: $5a
    pop af                                        ; $60cc: $f1
    ld [hl], b                                    ; $60cd: $70
    dec h                                         ; $60ce: $25

jr_0c6_60cf:
    sub [hl]                                      ; $60cf: $96
    ld [hl], b                                    ; $60d0: $70

jr_0c6_60d1:
    dec b                                         ; $60d1: $05
    sub b                                         ; $60d2: $90
    dec bc                                        ; $60d3: $0b
    ld e, l                                       ; $60d4: $5d
    ld l, $07                                     ; $60d5: $2e $07
    ld c, l                                       ; $60d7: $4d
    and b                                         ; $60d8: $a0
    ret nc                                        ; $60d9: $d0

    ld b, $a8                                     ; $60da: $06 $a8
    ld [hl], b                                    ; $60dc: $70
    dec b                                         ; $60dd: $05
    xor d                                         ; $60de: $aa
    rst $38                                       ; $60df: $ff
    cp $01                                        ; $60e0: $fe $01
    and d                                         ; $60e2: $a2
    and [hl]                                      ; $60e3: $a6
    ld h, b                                       ; $60e4: $60
    inc b                                         ; $60e5: $04
    cp $c0                                        ; $60e6: $fe $c0
    nop                                           ; $60e8: $00
    adc c                                         ; $60e9: $89
    ld [hl], b                                    ; $60ea: $70
    call nz, $e000                                ; $60eb: $c4 $00 $e0
    dec b                                         ; $60ee: $05
    and $a0                                       ; $60ef: $e6 $a0
    ldh a, [rTAC]                                 ; $60f1: $f0 $07
    xor l                                         ; $60f3: $ad
    ldh a, [rTIMA]                                ; $60f4: $f0 $05
    jr z, jr_0c6_60cf                             ; $60f6: $28 $d7

    inc d                                         ; $60f8: $14
    db $e3                                        ; $60f9: $e3
    ld d, [hl]                                    ; $60fa: $56
    adc b                                         ; $60fb: $88
    add hl, bc                                    ; $60fc: $09
    rlca                                          ; $60fd: $07
    ld [hl], d                                    ; $60fe: $72
    nop                                           ; $60ff: $00
    ld a, [hl+]                                   ; $6100: $2a
    ld c, h                                       ; $6101: $4c
    rlca                                          ; $6102: $07
    nop                                           ; $6103: $00
    rst $38                                       ; $6104: $ff
    ld [hl-], a                                   ; $6105: $32
    nop                                           ; $6106: $00
    pop bc                                        ; $6107: $c1
    add b                                         ; $6108: $80
    ld a, a                                       ; $6109: $7f
    xor d                                         ; $610a: $aa
    rst $38                                       ; $610b: $ff
    ld bc, $e903                                  ; $610c: $01 $03 $e9
    nop                                           ; $610f: $00
    inc bc                                        ; $6110: $03
    pop bc                                        ; $6111: $c1
    inc bc                                        ; $6112: $03
    or c                                          ; $6113: $b1

jr_0c6_6114:
    inc bc                                        ; $6114: $03

jr_0c6_6115:
    inc b                                         ; $6115: $04
    db $fc                                        ; $6116: $fc
    push de                                       ; $6117: $d5
    nop                                           ; $6118: $00
    inc l                                         ; $6119: $2c
    inc b                                         ; $611a: $04
    db $fc                                        ; $611b: $fc
    or l                                          ; $611c: $b5
    cp $ff                                        ; $611d: $fe $ff
    nop                                           ; $611f: $00
    rst $20                                       ; $6120: $e7
    db $e4                                        ; $6121: $e4
    ld a, [hl]                                    ; $6122: $7e
    rlca                                          ; $6123: $07
    rst $10                                       ; $6124: $d7
    ld b, $58                                     ; $6125: $06 $58
    ld [bc], a                                    ; $6127: $02
    ld bc, $30fe                                  ; $6128: $01 $fe $30
    add hl, bc                                    ; $612b: $09
    ld h, a                                       ; $612c: $67
    nop                                           ; $612d: $00
    nop                                           ; $612e: $00
    ld [bc], a                                    ; $612f: $02
    nop                                           ; $6130: $00
    cp l                                          ; $6131: $bd
    nop                                           ; $6132: $00
    jr nz, jr_0c6_6114                            ; $6133: $20 $df

    inc d                                         ; $6135: $14
    dec bc                                        ; $6136: $0b
    and b                                         ; $6137: $a0
    ldh [$0a], a                                  ; $6138: $e0 $0a
    ret nc                                        ; $613a: $d0

    inc c                                         ; $613b: $0c
    dec b                                         ; $613c: $05
    ret nc                                        ; $613d: $d0

    jr nc, jr_0c6_6115                            ; $613e: $30 $d5

    jr nc, jr_0c6_6142                            ; $6140: $30 $00

jr_0c6_6142:
    jr nc, jr_0c6_6144                            ; $6142: $30 $00

jr_0c6_6144:
    sbc l                                         ; $6144: $9d
    sub b                                         ; $6145: $90
    ld [hl+], a                                   ; $6146: $22
    adc a                                         ; $6147: $8f
    ld bc, $1300                                  ; $6148: $01 $00 $13
    nop                                           ; $614b: $00
    nop                                           ; $614c: $00
    add h                                         ; $614d: $84
    ld [hl], h                                    ; $614e: $74
    ld [$a901], sp                                ; $614f: $08 $01 $a9
    ld d, a                                       ; $6152: $57
    rst $38                                       ; $6153: $ff
    jr c, jr_0c6_6158                             ; $6154: $38 $02

    rst $20                                       ; $6156: $e7
    nop                                           ; $6157: $00

jr_0c6_6158:
    nop                                           ; $6158: $00
    ld a, $00                                     ; $6159: $3e $00
    ei                                            ; $615b: $fb
    add b                                         ; $615c: $80
    push de                                       ; $615d: $d5
    add b                                         ; $615e: $80
    rst $38                                       ; $615f: $ff
    add b                                         ; $6160: $80
    add sp, -$50                                  ; $6161: $e8 $b0
    ld a, [bc]                                    ; $6163: $0a
    cp a                                          ; $6164: $bf
    inc b                                         ; $6165: $04
    inc b                                         ; $6166: $04
    dec b                                         ; $6167: $05
    and $c2                                       ; $6168: $e6 $c2
    rla                                           ; $616a: $17
    xor c                                         ; $616b: $a9
    ld d, [hl]                                    ; $616c: $56
    db $f4                                        ; $616d: $f4
    nop                                           ; $616e: $00
    rrca                                          ; $616f: $0f
    ld d, l                                       ; $6170: $55
    ld c, $f4                                     ; $6171: $0e $f4
    rrca                                          ; $6173: $0f
    ld b, l                                       ; $6174: $45
    ld c, $b7                                     ; $6175: $0e $b7
    ret                                           ; $6177: $c9


    ldh a, [rNR14]                                ; $6178: $f0 $14
    and b                                         ; $617a: $a0
    ld a, [bc]                                    ; $617b: $0a
    adc d                                         ; $617c: $8a
    dec b                                         ; $617d: $05
    inc e                                         ; $617e: $1c
    ld bc, $aa30                                  ; $617f: $01 $30 $aa
    jr nz, jr_0c6_6187                            ; $6182: $20 $03

    ld c, c                                       ; $6184: $49
    rst $38                                       ; $6185: $ff
    ld b, b                                       ; $6186: $40

jr_0c6_6187:
    ld [de], a                                    ; $6187: $12
    jp nc, $c82c                                  ; $6188: $d2 $2c $c8

    dec b                                         ; $618b: $05
    ld b, h                                       ; $618c: $44
    ret z                                         ; $618d: $c8

    ld b, b                                       ; $618e: $40
    dec b                                         ; $618f: $05
    db $10                                        ; $6190: $10
    xor b                                         ; $6191: $a8
    jr @-$51                                      ; $6192: $18 $ad

    dec d                                         ; $6194: $15
    dec b                                         ; $6195: $05
    sbc l                                         ; $6196: $9d
    ld h, d                                       ; $6197: $62
    nop                                           ; $6198: $00
    rst $38                                       ; $6199: $ff
    ld [hl-], a                                   ; $619a: $32
    inc [hl]                                      ; $619b: $34
    set 2, b                                      ; $619c: $cb $d0
    ld a, [de]                                    ; $619e: $1a
    add b                                         ; $619f: $80
    inc b                                         ; $61a0: $04
    add b                                         ; $61a1: $80
    rst $20                                       ; $61a2: $e7
    ld e, b                                       ; $61a3: $58
    nop                                           ; $61a4: $00

Jump_0c6_61a5:
    or c                                          ; $61a5: $b1
    xor d                                         ; $61a6: $aa
    ret nz                                        ; $61a7: $c0

    ld [bc], a                                    ; $61a8: $02
    db $fd                                        ; $61a9: $fd
    db $10                                        ; $61aa: $10
    inc hl                                        ; $61ab: $23
    push de                                       ; $61ac: $d5
    jr jr_0c6_61b6                                ; $61ad: $18 $07

    inc sp                                        ; $61af: $33
    ld [hl], b                                    ; $61b0: $70
    dec h                                         ; $61b1: $25
    xor h                                         ; $61b2: $ac
    ld d, l                                       ; $61b3: $55
    ld e, e                                       ; $61b4: $5b
    nop                                           ; $61b5: $00

jr_0c6_61b6:
    ld c, l                                       ; $61b6: $4d
    db $fd                                        ; $61b7: $fd
    jr nc, jr_0c6_61cd                            ; $61b8: $30 $13

    add l                                         ; $61ba: $85
    cp $07                                        ; $61bb: $fe $07
    sub h                                         ; $61bd: $94
    ld [bc], a                                    ; $61be: $02
    ld b, $80                                     ; $61bf: $06 $80
    ret nz                                        ; $61c1: $c0

    ld a, [bc]                                    ; $61c2: $0a
    xor d                                         ; $61c3: $aa
    ld d, l                                       ; $61c4: $55
    ld b, b                                       ; $61c5: $40
    rst $38                                       ; $61c6: $ff
    ld c, h                                       ; $61c7: $4c
    ldh a, [rLCDC]                                ; $61c8: $f0 $40
    ld [bc], a                                    ; $61ca: $02
    rst $38                                       ; $61cb: $ff
    ld e, d                                       ; $61cc: $5a

jr_0c6_61cd:
    pop hl                                        ; $61cd: $e1
    ld a, [$2d00]                                 ; $61ce: $fa $00 $2d
    add b                                         ; $61d1: $80
    jr nz, @-$51                                  ; $61d2: $20 $ad

    nop                                           ; $61d4: $00
    ld d, d                                       ; $61d5: $52
    nop                                           ; $61d6: $00
    rst $38                                       ; $61d7: $ff
    sbc d                                         ; $61d8: $9a
    inc b                                         ; $61d9: $04
    cp b                                          ; $61da: $b8
    ld bc, $101e                                  ; $61db: $01 $1e $10
    ld bc, $01f4                                  ; $61de: $01 $f4 $01
    jr nc, @+$0d                                  ; $61e1: $30 $0b

    inc [hl]                                      ; $61e3: $34
    jp $ff00                                      ; $61e4: $c3 $00 $ff


    db $10                                        ; $61e7: $10
    xor c                                         ; $61e8: $a9
    ld b, [hl]                                    ; $61e9: $46
    add b                                         ; $61ea: $80
    db $f4                                        ; $61eb: $f4
    ld bc, $8080                                  ; $61ec: $01 $80 $80
    push de                                       ; $61ef: $d5
    xor d                                         ; $61f0: $aa
    nop                                           ; $61f1: $00
    rrca                                          ; $61f2: $0f
    ld hl, sp-$22                                 ; $61f3: $f8 $de
    jr z, @+$11                                   ; $61f5: $28 $0f

    ld hl, sp+$4b                                 ; $61f7: $f8 $4b
    cp b                                          ; $61f9: $b8
    ld [hl], b                                    ; $61fa: $70
    nop                                           ; $61fb: $00
    inc [hl]                                      ; $61fc: $34
    ld c, $00                                     ; $61fd: $0e $00
    ld [de], a                                    ; $61ff: $12
    ld h, e                                       ; $6200: $63
    rlca                                          ; $6201: $07
    nop                                           ; $6202: $00
    add hl, bc                                    ; $6203: $09
    nop                                           ; $6204: $00
    ld bc, $d495                                  ; $6205: $01 $95 $d4
    ld b, $01                                     ; $6208: $06 $01
    inc bc                                        ; $620a: $03
    nop                                           ; $620b: $00
    ld a, [bc]                                    ; $620c: $0a
    db $dd                                        ; $620d: $dd
    ld [hl-], a                                   ; $620e: $32
    ld bc, $8ebd                                  ; $620f: $01 $bd $8e
    rlca                                          ; $6212: $07
    sub h                                         ; $6213: $94
    or a                                          ; $6214: $b7
    dec b                                         ; $6215: $05
    nop                                           ; $6216: $00
    push de                                       ; $6217: $d5
    ld hl, $8c06                                  ; $6218: $21 $06 $8c
    ld hl, sp+$07                                 ; $621b: $f8 $07
    ld l, h                                       ; $621d: $6c
    nop                                           ; $621e: $00
    nop                                           ; $621f: $00
    db $10                                        ; $6220: $10
    ccf                                           ; $6221: $3f
    sub l                                         ; $6222: $95
    ld a, [hl-]                                   ; $6223: $3a
    db $10                                        ; $6224: $10
    ccf                                           ; $6225: $3f
    ld d, l                                       ; $6226: $55
    cp a                                          ; $6227: $bf
    ld b, b                                       ; $6228: $40
    rst $38                                       ; $6229: $ff
    cp d                                          ; $622a: $ba
    inc bc                                        ; $622b: $03
    rst $38                                       ; $622c: $ff
    nop                                           ; $622d: $00
    ld a, l                                       ; $622e: $7d
    nop                                           ; $622f: $00
    ld a, [de]                                    ; $6230: $1a
    nop                                           ; $6231: $00
    ld a, e                                       ; $6232: $7b
    and l                                         ; $6233: $a5
    ld b, b                                       ; $6234: $40
    ld [hl+], a                                   ; $6235: $22
    di                                            ; $6236: $f3
    rlca                                          ; $6237: $07
    inc b                                         ; $6238: $04
    inc bc                                        ; $6239: $03
    inc h                                         ; $623a: $24
    ld [$50b7], sp                                ; $623b: $08 $b7 $50
    ld [de], a                                    ; $623e: $12
    db $10                                        ; $623f: $10
    inc c                                         ; $6240: $0c
    ld d, b                                       ; $6241: $50
    and [hl]                                      ; $6242: $a6
    db $10                                        ; $6243: $10
    inc b                                         ; $6244: $04
    dec [hl]                                      ; $6245: $35
    ld b, b                                       ; $6246: $40
    dec b                                         ; $6247: $05
    ld d, l                                       ; $6248: $55
    xor d                                         ; $6249: $aa
    ld b, b                                       ; $624a: $40
    ret nz                                        ; $624b: $c0

    ld b, h                                       ; $624c: $44
    db $d3                                        ; $624d: $d3
    or b                                          ; $624e: $b0
    ld de, $00ff                                  ; $624f: $11 $ff $00
    and d                                         ; $6252: $a2
    db $10                                        ; $6253: $10
    inc de                                        ; $6254: $13
    nop                                           ; $6255: $00
    nop                                           ; $6256: $00
    db $10                                        ; $6257: $10
    inc a                                         ; $6258: $3c
    nop                                           ; $6259: $00
    db $10                                        ; $625a: $10
    cp h                                          ; $625b: $bc
    rlca                                          ; $625c: $07
    add sp, $1f                                   ; $625d: $e8 $1f
    ret                                           ; $625f: $c9


    ld e, $00                                     ; $6260: $1e $00
    add sp, $1f                                   ; $6262: $e8 $1f
    xor l                                         ; $6264: $ad
    ld e, a                                       ; $6265: $5f
    nop                                           ; $6266: $00
    nop                                           ; $6267: $00
    call c, Call_000_1200                         ; $6268: $dc $00 $12
    ld a, [bc]                                    ; $626b: $0a
    nop                                           ; $626c: $00
    ld [hl], l                                    ; $626d: $75
    and b                                         ; $626e: $a0
    rlca                                          ; $626f: $07
    inc h                                         ; $6270: $24
    dec de                                        ; $6271: $1b
    ldh a, [$0c]                                  ; $6272: $f0 $0c
    nop                                           ; $6274: $00
    or h                                          ; $6275: $b4
    inc a                                         ; $6276: $3c
    rlca                                          ; $6277: $07
    or b                                          ; $6278: $b0
    jp nc, $b406                                  ; $6279: $d2 $06 $b4

Jump_0c6_627c:
    nop                                           ; $627c: $00
    db $10                                        ; $627d: $10
    ld h, b                                       ; $627e: $60
    dec c                                         ; $627f: $0d
    ccf                                           ; $6280: $3f
    ld h, b                                       ; $6281: $60
    nop                                           ; $6282: $00
    ld a, [hl-]                                   ; $6283: $3a
    ld h, b                                       ; $6284: $60
    ccf                                           ; $6285: $3f
    ld h, b                                       ; $6286: $60
    or l                                          ; $6287: $b5
    ld h, b                                       ; $6288: $60
    nop                                           ; $6289: $00
    rst $38                                       ; $628a: $ff
    inc [hl]                                      ; $628b: $34
    ld l, [hl]                                    ; $628c: $6e
    sub c                                         ; $628d: $91
    ld [hl], b                                    ; $628e: $70
    dec c                                         ; $628f: $0d
    ret nc                                        ; $6290: $d0

    ld l, $ff                                     ; $6291: $2e $ff
    db $e4                                        ; $6293: $e4
    rlca                                          ; $6294: $07
    push af                                       ; $6295: $f5
    add b                                         ; $6296: $80
    ld d, l                                       ; $6297: $55
    jp z, Jump_000_07a0                           ; $6298: $ca $a0 $07

    ld [c], a                                     ; $629b: $e2
    or b                                          ; $629c: $b0
    dec b                                         ; $629d: $05
    cp $c4                                        ; $629e: $fe $c4
    rlca                                          ; $62a0: $07
    ld h, c                                       ; $62a1: $61
    and $06                                       ; $62a2: $e6 $06
    jr nz, @-$54                                  ; $62a4: $20 $aa

    ld d, l                                       ; $62a6: $55
    inc l                                         ; $62a7: $2c
    rrca                                          ; $62a8: $0f
    ld a, [$9a06]                                 ; $62a9: $fa $06 $9a
    ld b, $ff                                     ; $62ac: $06 $ff
    ld [hl], c                                    ; $62ae: $71
    nop                                           ; $62af: $00
    sbc a                                         ; $62b0: $9f
    dec b                                         ; $62b1: $05
    and b                                         ; $62b2: $a0
    inc de                                        ; $62b3: $13
    ldh a, [rNR32]                                ; $62b4: $f0 $1c
    ld b, b                                       ; $62b6: $40
    rst $38                                       ; $62b7: $ff
    ld c, c                                       ; $62b8: $49
    jr z, jr_0c6_62bc                             ; $62b9: $28 $01

    db $e4                                        ; $62bb: $e4

jr_0c6_62bc:
    ld e, a                                       ; $62bc: $5f
    ld b, $e8                                     ; $62bd: $06 $e8
    rlca                                          ; $62bf: $07
    jr nc, jr_0c6_62dc                            ; $62c0: $30 $1a

    dec h                                         ; $62c2: $25
    ret c                                         ; $62c3: $d8

    ld d, b                                       ; $62c4: $50
    ld a, [bc]                                    ; $62c5: $0a
    ld bc, $0403                                  ; $62c6: $01 $03 $04
    ld [hl], h                                    ; $62c9: $74
    ld bc, $01c0                                  ; $62ca: $01 $c0 $01
    or d                                          ; $62cd: $b2
    jr nz, jr_0c6_62d3                            ; $62ce: $20 $03

    ld c, e                                       ; $62d0: $4b
    add h                                         ; $62d1: $84
    and b                                         ; $62d2: $a0

jr_0c6_62d3:
    ldh a, [rNR32]                                ; $62d3: $f0 $1c
    db $d3                                        ; $62d5: $d3
    add sp, $01                                   ; $62d6: $e8 $01
    db $ed                                        ; $62d8: $ed
    add b                                         ; $62d9: $80
    rlca                                          ; $62da: $07

jr_0c6_62db:
    db $fc                                        ; $62db: $fc

jr_0c6_62dc:
    halt                                          ; $62dc: $76
    inc bc                                        ; $62dd: $03
    adc h                                         ; $62de: $8c
    rlca                                          ; $62df: $07
    db $fc                                        ; $62e0: $fc
    ld d, [hl]                                    ; $62e1: $56
    db $fd                                        ; $62e2: $fd
    rst $38                                       ; $62e3: $ff
    ld e, [hl]                                    ; $62e4: $5e
    dec b                                         ; $62e5: $05

jr_0c6_62e6:
    jr nz, jr_0c6_62f3                            ; $62e6: $20 $0b

    ld e, b                                       ; $62e8: $58
    rst $38                                       ; $62e9: $ff
    call nc, $ad02                                ; $62ea: $d4 $02 $ad
    jr nc, @+$15                                  ; $62ed: $30 $13

    jr nz, jr_0c6_630c                            ; $62ef: $20 $1b

    rst $38                                       ; $62f1: $ff
    nop                                           ; $62f2: $00

jr_0c6_62f3:
    dec c                                         ; $62f3: $0d
    add b                                         ; $62f4: $80
    or [hl]                                       ; $62f5: $b6
    rlca                                          ; $62f6: $07
    ld d, l                                       ; $62f7: $55
    xor d                                         ; $62f8: $aa
    ret nc                                        ; $62f9: $d0

    jr nc, jr_0c6_62e6                            ; $62fa: $30 $ea

    jr jr_0c6_62e6                                ; $62fc: $18 $e8

    inc e                                         ; $62fe: $1c
    jr jr_0c6_636e                                ; $62ff: $18 $6d

    jr jr_0c6_62db                                ; $6301: $18 $d8

    inc c                                         ; $6303: $0c
    sub b                                         ; $6304: $90
    ld c, $60                                     ; $6305: $0e $60
    ld a, [hl+]                                   ; $6307: $2a
    and h                                         ; $6308: $a4
    nop                                           ; $6309: $00
    ld h, b                                       ; $630a: $60
    ld a, b                                       ; $630b: $78

jr_0c6_630c:
    ld h, b                                       ; $630c: $60
    inc hl                                        ; $630d: $23
    jr nc, jr_0c6_631d                            ; $630e: $30 $0d

    rst $38                                       ; $6310: $ff
    nop                                           ; $6311: $00
    db $10                                        ; $6312: $10
    ldh a, [rHDMA5]                               ; $6313: $f0 $55
    inc b                                         ; $6315: $04
    or b                                          ; $6316: $b0
    db $10                                        ; $6317: $10
    ldh a, [$d5]                                  ; $6318: $f0 $d5
    ld a, [$1dc0]                                 ; $631a: $fa $c0 $1d

jr_0c6_631d:
    ld l, [hl]                                    ; $631d: $6e
    nop                                           ; $631e: $00
    ld b, b                                       ; $631f: $40
    db $fc                                        ; $6320: $fc
    ldh a, [rSC]                                  ; $6321: $f0 $02
    db $fd                                        ; $6323: $fd
    inc bc                                        ; $6324: $03
    and l                                         ; $6325: $a5
    ld e, e                                       ; $6326: $5b
    nop                                           ; $6327: $00
    rst $38                                       ; $6328: $ff
    inc bc                                        ; $6329: $03
    ld b, d                                       ; $632a: $42
    cp l                                          ; $632b: $bd
    ld bc, $a4fe                                  ; $632c: $01 $fe $a4
    inc bc                                        ; $632f: $03
    and b                                         ; $6330: $a0
    add hl, bc                                    ; $6331: $09
    db $10                                        ; $6332: $10
    dec c                                         ; $6333: $0d
    nop                                           ; $6334: $00
    nop                                           ; $6335: $00
    rst $38                                       ; $6336: $ff
    ld c, h                                       ; $6337: $4c
    add e                                         ; $6338: $83
    and b                                         ; $6339: $a0
    ld e, a                                       ; $633a: $5f
    push de                                       ; $633b: $d5
    ld a, [bc]                                    ; $633c: $0a
    add b                                         ; $633d: $80
    sub b                                         ; $633e: $90
    ld a, [hl+]                                   ; $633f: $2a
    ld [$a9f8], sp                                ; $6340: $08 $f8 $a9
    jr jr_0c6_6351                                ; $6343: $18 $0c

    ld hl, sp-$6a                                 ; $6345: $f8 $96
    ld a, [hl-]                                   ; $6347: $3a
    ld [hl], b                                    ; $6348: $70
    nop                                           ; $6349: $00
    ld [hl], d                                    ; $634a: $72
    rlca                                          ; $634b: $07
    jr nz, @+$12                                  ; $634c: $20 $10

    xor $02                                       ; $634e: $ee $02
    sub l                                         ; $6350: $95

jr_0c6_6351:
    ld b, d                                       ; $6351: $42
    ld b, $00                                     ; $6352: $06 $00
    call nz, $04c0                                ; $6354: $c4 $c0 $04
    ld b, b                                       ; $6357: $40
    dec c                                         ; $6358: $0d
    ld a, [bc]                                    ; $6359: $0a
    nop                                           ; $635a: $00
    ld h, b                                       ; $635b: $60
    ld [$c000], a                                 ; $635c: $ea $00 $c0
    nop                                           ; $635f: $00
    ld b, b                                       ; $6360: $40
    ld a, $24                                     ; $6361: $3e $24
    ld bc, $603f                                  ; $6363: $01 $3f $60
    xor d                                         ; $6366: $aa
    ld [hl], l                                    ; $6367: $75
    sub b                                         ; $6368: $90
    ccf                                           ; $6369: $3f
    nop                                           ; $636a: $00
    dec d                                         ; $636b: $15
    ld a, [hl-]                                   ; $636c: $3a
    ret nc                                        ; $636d: $d0

jr_0c6_636e:
    ccf                                           ; $636e: $3f
    ld [de], a                                    ; $636f: $12
    inc a                                         ; $6370: $3c
    db $dd                                        ; $6371: $dd
    nop                                           ; $6372: $00
    db $10                                        ; $6373: $10
    ld l, a                                       ; $6374: $6f
    nop                                           ; $6375: $00
    push af                                       ; $6376: $f5
    ld d, b                                       ; $6377: $50
    db $10                                        ; $6378: $10
    ld e, d                                       ; $6379: $5a
    ld hl, $7f80                                  ; $637a: $21 $80 $7f
    inc e                                         ; $637d: $1c
    or h                                          ; $637e: $b4
    ld [$60ad], sp                                ; $637f: $08 $ad $60
    dec d                                         ; $6382: $15
    ld h, b                                       ; $6383: $60
    ld [$0bb8], sp                                ; $6384: $08 $b8 $0b
    adc c                                         ; $6387: $89
    halt                                          ; $6388: $76
    inc d                                         ; $6389: $14
    ld a, [c]                                     ; $638a: $f2
    ld b, $5b                                     ; $638b: $06 $5b
    sbc b                                         ; $638d: $98
    ld b, $ab                                     ; $638e: $06 $ab
    and b                                         ; $6390: $a0
    rlca                                          ; $6391: $07
    inc d                                         ; $6392: $14
    db $eb                                        ; $6393: $eb
    jr @+$05                                      ; $6394: $18 $03

    db $fc                                        ; $6396: $fc
    ld c, c                                       ; $6397: $49
    ldh a, [rDIV]                                 ; $6398: $f0 $04
    ld [hl], b                                    ; $639a: $70
    inc e                                         ; $639b: $1c
    nop                                           ; $639c: $00
    nop                                           ; $639d: $00
    xor c                                         ; $639e: $a9
    xor b                                         ; $639f: $a8
    sbc d                                         ; $63a0: $9a
    rlca                                          ; $63a1: $07
    inc bc                                        ; $63a2: $03
    nop                                           ; $63a3: $00
    inc bc                                        ; $63a4: $03
    sbc $ca                                       ; $63a5: $de $ca
    inc b                                         ; $63a7: $04
    xor d                                         ; $63a8: $aa
    ld d, l                                       ; $63a9: $55
    ld a, [hl+]                                   ; $63aa: $2a
    add h                                         ; $63ab: $84
    ld l, $1e                                     ; $63ac: $2e $1e
    nop                                           ; $63ae: $00
    or $80                                        ; $63af: $f6 $80
    db $eb                                        ; $63b1: $eb
    nop                                           ; $63b2: $00
    inc bc                                        ; $63b3: $03
    push de                                       ; $63b4: $d5
    xor d                                         ; $63b5: $aa
    add d                                         ; $63b6: $82
    ret z                                         ; $63b7: $c8

    dec c                                         ; $63b8: $0d
    ld hl, $257e                                  ; $63b9: $21 $7e $25
    ld a, b                                       ; $63bc: $78
    and $96                                       ; $63bd: $e6 $96
    rlca                                          ; $63bf: $07
    db $ed                                        ; $63c0: $ed
    add b                                         ; $63c1: $80
    ld d, b                                       ; $63c2: $50
    dec d                                         ; $63c3: $15
    cp c                                          ; $63c4: $b9
    ld b, [hl]                                    ; $63c5: $46
    nop                                           ; $63c6: $00
    rst $38                                       ; $63c7: $ff
    ld l, c                                       ; $63c8: $69
    db $10                                        ; $63c9: $10
    or a                                          ; $63ca: $b7
    or c                                          ; $63cb: $b1
    ld b, h                                       ; $63cc: $44
    rlca                                          ; $63cd: $07
    rst $38                                       ; $63ce: $ff
    ret nz                                        ; $63cf: $c0

    db $10                                        ; $63d0: $10
    ret z                                         ; $63d1: $c8

    add hl, bc                                    ; $63d2: $09
    ld [de], a                                    ; $63d3: $12
    db $ec                                        ; $63d4: $ec
    ret z                                         ; $63d5: $c8

    inc h                                         ; $63d6: $24
    inc b                                         ; $63d7: $04
    ld h, [hl]                                    ; $63d8: $66
    add sp, -$10                                  ; $63d9: $e8 $f0
    ld [de], a                                    ; $63db: $12
    ret nz                                        ; $63dc: $c0

    dec c                                         ; $63dd: $0d
    sub e                                         ; $63de: $93
    inc c                                         ; $63df: $0c
    jr z, jr_0c6_63ef                             ; $63e0: $28 $0d

    ret nz                                        ; $63e2: $c0

    dec e                                         ; $63e3: $1d
    ld h, l                                       ; $63e4: $65
    add c                                         ; $63e5: $81
    call z, Call_0c6_5606                         ; $63e6: $cc $06 $56
    add hl, hl                                    ; $63e9: $29
    nop                                           ; $63ea: $00
    rst $38                                       ; $63eb: $ff
    rlc h                                         ; $63ec: $cb $04
    ld b, b                                       ; $63ee: $40

jr_0c6_63ef:
    rrca                                          ; $63ef: $0f
    db $10                                        ; $63f0: $10
    rrca                                          ; $63f1: $0f
    jr jr_0c6_6442                                ; $63f2: $18 $4e

    jr nz, jr_0c6_640a                            ; $63f4: $20 $14

    nop                                           ; $63f6: $00
    rst $38                                       ; $63f7: $ff
    ld d, b                                       ; $63f8: $50
    xor a                                         ; $63f9: $af
    jr nc, @-$54                                  ; $63fa: $30 $aa

    dec d                                         ; $63fc: $15
    ld h, b                                       ; $63fd: $60
    rrca                                          ; $63fe: $0f
    ret nc                                        ; $63ff: $d0

jr_0c6_6400:
    inc e                                         ; $6400: $1c
    sub b                                         ; $6401: $90
    add hl, bc                                    ; $6402: $09
    cp h                                          ; $6403: $bc
    ld [$b700], sp                                ; $6404: $08 $00 $b7
    rst $38                                       ; $6407: $ff
    ld e, d                                       ; $6408: $5a
    rst $38                                       ; $6409: $ff

jr_0c6_640a:
    inc h                                         ; $640a: $24
    rst $38                                       ; $640b: $ff
    ld [bc], a                                    ; $640c: $02
    db $fd                                        ; $640d: $fd
    nop                                           ; $640e: $00
    and c                                         ; $640f: $a1
    ld e, [hl]                                    ; $6410: $5e
    ld b, h                                       ; $6411: $44
    cp a                                          ; $6412: $bf
    ld a, [bc]                                    ; $6413: $0a
    rst $30                                       ; $6414: $f7
    db $10                                        ; $6415: $10
    rst $28                                       ; $6416: $ef
    nop                                           ; $6417: $00
    add d                                         ; $6418: $82
    adc a                                         ; $6419: $8f
    ld c, h                                       ; $641a: $4c
    rst $08                                       ; $641b: $cf
    add d                                         ; $641c: $82
    add l                                         ; $641d: $85
    jr @+$01                                      ; $641e: $18 $ff

    nop                                           ; $6420: $00
    ld c, b                                       ; $6421: $48
    or a                                          ; $6422: $b7
    sub d                                         ; $6423: $92

jr_0c6_6424:
    ld l, l                                       ; $6424: $6d
    ld [$00f7], sp                                ; $6425: $08 $f7 $00
    rst $38                                       ; $6428: $ff
    nop                                           ; $6429: $00
    jr c, jr_0c6_6424                             ; $642a: $38 $f8

    sbc d                                         ; $642c: $9a
    ld a, e                                       ; $642d: $7b
    ld c, b                                       ; $642e: $48
    cp b                                          ; $642f: $b8
    jr @+$01                                      ; $6430: $18 $ff

    nop                                           ; $6432: $00
    inc h                                         ; $6433: $24
    rst $18                                       ; $6434: $df
    ld [de], a                                    ; $6435: $12
    rst $28                                       ; $6436: $ef
    jr c, jr_0c6_6400                             ; $6437: $38 $c7

    ld e, $e1                                     ; $6439: $1e $e1
    nop                                           ; $643b: $00
    ld a, [bc]                                    ; $643c: $0a
    rra                                           ; $643d: $1f
    ld bc, $98ff                                  ; $643e: $01 $ff $98
    rst $20                                       ; $6441: $e7

jr_0c6_6442:
    ld l, h                                       ; $6442: $6c
    ld [hl], e                                    ; $6443: $73
    nop                                           ; $6444: $00

jr_0c6_6445:
    sub [hl]                                      ; $6445: $96
    ld e, c                                       ; $6446: $59
    ld c, b                                       ; $6447: $48
    or a                                          ; $6448: $b7
    and d                                         ; $6449: $a2
    ld e, a                                       ; $644a: $5f
    nop                                           ; $644b: $00
    rst $38                                       ; $644c: $ff
    inc b                                         ; $644d: $04
    xor b                                         ; $644e: $a8
    cp $00                                        ; $644f: $fe $00
    cp $00                                        ; $6451: $fe $00
    ld b, b                                       ; $6453: $40
    nop                                           ; $6454: $00
    inc d                                         ; $6455: $14
    ei                                            ; $6456: $fb
    nop                                           ; $6457: $00
    xor d                                         ; $6458: $aa
    ld [hl], l                                    ; $6459: $75
    ld b, h                                       ; $645a: $44
    cp e                                          ; $645b: $bb
    nop                                           ; $645c: $00

jr_0c6_645d:
    rst $38                                       ; $645d: $ff
    add hl, sp                                    ; $645e: $39
    add hl, sp                                    ; $645f: $39
    nop                                           ; $6460: $00
    jr jr_0c6_647b                                ; $6461: $18 $18

    jr c, jr_0c6_645d                             ; $6463: $38 $f8

    ld e, b                                       ; $6465: $58
    rst $18                                       ; $6466: $df
    jp nz, Jump_000_00fd                          ; $6467: $c2 $fd $00

    sub h                                         ; $646a: $94
    db $eb                                        ; $646b: $eb
    jr z, jr_0c6_6445                             ; $646c: $28 $d7

    ld [bc], a                                    ; $646e: $02
    db $fd                                        ; $646f: $fd
    ld d, e                                       ; $6470: $53
    rst $18                                       ; $6471: $df
    nop                                           ; $6472: $00
    sub b                                         ; $6473: $90
    xor a                                         ; $6474: $af
    add hl, hl                                    ; $6475: $29
    ld e, a                                       ; $6476: $5f
    ld [de], a                                    ; $6477: $12
    rst $38                                       ; $6478: $ff
    ld a, b                                       ; $6479: $78
    rst $30                                       ; $647a: $f7

jr_0c6_647b:
    nop                                           ; $647b: $00
    inc l                                         ; $647c: $2c
    di                                            ; $647d: $f3
    add l                                         ; $647e: $85
    ld a, [$ff00]                                 ; $647f: $fa $00 $ff
    add h                                         ; $6482: $84
    call nz, $8000                                ; $6483: $c4 $00 $80
    ld hl, sp-$58                                 ; $6486: $f8 $a8
    call c, $bf45                                 ; $6488: $dc $45 $bf
    xor b                                         ; $648b: $a8
    ld d, a                                       ; $648c: $57
    nop                                           ; $648d: $00
    inc d                                         ; $648e: $14
    db $eb                                        ; $648f: $eb
    ld [bc], a                                    ; $6490: $02
    rst $38                                       ; $6491: $ff
    nop                                           ; $6492: $00
    rst $38                                       ; $6493: $ff
    ld e, $1f                                     ; $6494: $1e $1f
    nop                                           ; $6496: $00
    dec d                                         ; $6497: $15
    rra                                           ; $6498: $1f
    ld a, [hl+]                                   ; $6499: $2a
    ld a, a                                       ; $649a: $7f
    rla                                           ; $649b: $17
    rst $38                                       ; $649c: $ff
    add c                                         ; $649d: $81
    rst $38                                       ; $649e: $ff
    nop                                           ; $649f: $00
    ld c, b                                       ; $64a0: $48
    cp a                                          ; $64a1: $bf
    inc d                                         ; $64a2: $14
    rst $28                                       ; $64a3: $ef
    jr nz, @-$1f                                  ; $64a4: $20 $df

    ld c, $ff                                     ; $64a6: $0e $ff
    nop                                           ; $64a8: $00
    ld c, c                                       ; $64a9: $49
    cp c                                          ; $64aa: $b9
    ld c, c                                       ; $64ab: $49
    cp c                                          ; $64ac: $b9
    db $10                                        ; $64ad: $10
    rst $38                                       ; $64ae: $ff
    ld [c], a                                     ; $64af: $e2
    db $fd                                        ; $64b0: $fd
    nop                                           ; $64b1: $00
    dec d                                         ; $64b2: $15
    ld a, [$ff20]                                 ; $64b3: $fa $20 $ff
    db $10                                        ; $64b6: $10
    rst $28                                       ; $64b7: $ef
    and b                                         ; $64b8: $a0
    ldh [rP1], a                                  ; $64b9: $e0 $00
    ret nz                                        ; $64bb: $c0

    ret nz                                        ; $64bc: $c0

    ld [$50f8], sp                                ; $64bd: $08 $f8 $50
    or c                                          ; $64c0: $b1
    and c                                         ; $64c1: $a1
    ld l, [hl]                                    ; $64c2: $6e
    inc d                                         ; $64c3: $14
    ld [bc], a                                    ; $64c4: $02
    db $fd                                        ; $64c5: $fd
    ld d, b                                       ; $64c6: $50
    jr nc, jr_0c6_64c9                            ; $64c7: $30 $00

jr_0c6_64c9:
    rra                                           ; $64c9: $1f
    jr nc, jr_0c6_64cc                            ; $64ca: $30 $00

jr_0c6_64cc:
    ld a, [de]                                    ; $64cc: $1a
    rra                                           ; $64cd: $1f
    nop                                           ; $64ce: $00
    add hl, de                                    ; $64cf: $19
    sbc $10                                       ; $64d0: $de $10
    rst $38                                       ; $64d2: $ff
    add d                                         ; $64d3: $82
    ld a, a                                       ; $64d4: $7f
    ld b, h                                       ; $64d5: $44
    cp a                                          ; $64d6: $bf
    nop                                           ; $64d7: $00
    nop                                           ; $64d8: $00
    rst $38                                       ; $64d9: $ff
    ld c, b                                       ; $64da: $48
    ld [hl], a                                    ; $64db: $77
    pop bc                                        ; $64dc: $c1
    ld a, $92                                     ; $64dd: $3e $92
    rst $38                                       ; $64df: $ff

Call_0c6_64e0:
    ld [$7f6f], sp                                ; $64e0: $08 $6f $7f
    sub h                                         ; $64e3: $94
    ld e, a                                       ; $64e4: $5f
    sub b                                         ; $64e5: $90
    jr jr_0c6_653a                                ; $64e6: $18 $52

    cp [hl]                                       ; $64e8: $be
    ld a, [bc]                                    ; $64e9: $0a
    ld [bc], a                                    ; $64ea: $02
    or $94                                        ; $64eb: $f6 $94
    ld l, a                                       ; $64ed: $6f
    ld d, d                                       ; $64ee: $52
    db $fd                                        ; $64ef: $fd
    or h                                          ; $64f0: $b4
    sub b                                         ; $64f1: $90
    jr nz, jr_0c6_64f4                            ; $64f2: $20 $00

jr_0c6_64f4:
    nop                                           ; $64f4: $00
    nop                                           ; $64f5: $00
    inc e                                         ; $64f6: $1c
    nop                                           ; $64f7: $00
    ld e, $00                                     ; $64f8: $1e $00
    or $88                                        ; $64fa: $f6 $88
    di                                            ; $64fc: $f3
    nop                                           ; $64fd: $00
    adc h                                         ; $64fe: $8c
    ld a, a                                       ; $64ff: $7f
    ld h, b                                       ; $6500: $60
    ccf                                           ; $6501: $3f
    inc hl                                        ; $6502: $23
    inc e                                         ; $6503: $1c
    inc e                                         ; $6504: $1c
    nop                                           ; $6505: $00
    nop                                           ; $6506: $00
    nop                                           ; $6507: $00
    nop                                           ; $6508: $00
    inc c                                         ; $6509: $0c
    nop                                           ; $650a: $00
    ld a, $0c                                     ; $650b: $3e $0c
    inc sp                                        ; $650d: $33
    inc c                                         ; $650e: $0c
    nop                                           ; $650f: $00
    scf                                           ; $6510: $37
    ld hl, $033f                                  ; $6511: $21 $3f $03
    rra                                           ; $6514: $1f
    inc e                                         ; $6515: $1c
    inc e                                         ; $6516: $1c
    inc c                                         ; $6517: $0c
    nop                                           ; $6518: $00
    di                                            ; $6519: $f3

jr_0c6_651a:
    ld h, h                                       ; $651a: $64
    sbc e                                         ; $651b: $9b
    ld [hl-], a                                   ; $651c: $32
    call $f708                                    ; $651d: $cd $08 $f7

jr_0c6_6520:
    ld [bc], a                                    ; $6520: $02
    jr jr_0c6_6520                                ; $6521: $18 $fd

    db $10                                        ; $6523: $10
    rst $28                                       ; $6524: $ef
    ldh a, [$08]                                  ; $6525: $f0 $08
    ld [$0418], sp                                ; $6527: $08 $18 $04
    ei                                            ; $652a: $fb
    ld a, [bc]                                    ; $652b: $0a
    nop                                           ; $652c: $00
    push af                                       ; $652d: $f5
    ld b, h                                       ; $652e: $44
    cp e                                          ; $652f: $bb
    ld [bc], a                                    ; $6530: $02
    db $fd                                        ; $6531: $fd
    nop                                           ; $6532: $00
    rst $38                                       ; $6533: $ff
    inc b                                         ; $6534: $04
    nop                                           ; $6535: $00
    ei                                            ; $6536: $fb
    jr jr_0c6_6520                                ; $6537: $18 $e7

    cp b                                          ; $6539: $b8

jr_0c6_653a:
    ld b, a                                       ; $653a: $47
    jr nc, @-$2f                                  ; $653b: $30 $cf

    ld b, b                                       ; $653d: $40
    db $10                                        ; $653e: $10
    cp a                                          ; $653f: $bf
    inc b                                         ; $6540: $04
    ei                                            ; $6541: $fb
    ld c, [hl]                                    ; $6542: $4e
    nop                                           ; $6543: $00
    rst $38                                       ; $6544: $ff
    jr jr_0c6_655f                                ; $6545: $18 $18

    inc a                                         ; $6547: $3c
    nop                                           ; $6548: $00
    inc a                                         ; $6549: $3c
    ld a, h                                       ; $654a: $7c
    ld a, h                                       ; $654b: $7c
    rst $38                                       ; $654c: $ff
    rst $20                                       ; $654d: $e7
    rst $18                                       ; $654e: $df
    rst $20                                       ; $654f: $e7
    rst $20                                       ; $6550: $e7
    nop                                           ; $6551: $00
    rst $38                                       ; $6552: $ff
    ld a, h                                       ; $6553: $7c
    ld a, h                                       ; $6554: $7c
    inc e                                         ; $6555: $1c
    inc e                                         ; $6556: $1c
    jr @+$03                                      ; $6557: $18 $01

    jr jr_0c6_655b                                ; $6559: $18 $00

jr_0c6_655b:
    ld bc, $00c0                                  ; $655b: $01 $c0 $00
    ret nz                                        ; $655e: $c0

jr_0c6_655f:
    jr jr_0c6_6592                                ; $655f: $18 $31

    jr c, jr_0c6_6594                             ; $6561: $38 $31

    ld b, b                                       ; $6563: $40
    jr nc, jr_0c6_65c2                            ; $6564: $30 $5c

    nop                                           ; $6566: $00
    nop                                           ; $6567: $00
    jr nc, jr_0c6_651a                            ; $6568: $30 $b0

    jr nc, @-$48                                  ; $656a: $30 $b6

    jr jr_0c6_656e                                ; $656c: $18 $00

jr_0c6_656e:
    ld h, [hl]                                    ; $656e: $66
    jr jr_0c6_65d1                                ; $656f: $18 $60

    add b                                         ; $6571: $80
    jr nc, jr_0c6_64f4                            ; $6572: $30 $80

    jr nc, jr_0c6_657c                            ; $6574: $30 $06

    add b                                         ; $6576: $80
    ld bc, $0000                                  ; $6577: $01 $00 $00
    jr nc, jr_0c6_657c                            ; $657a: $30 $00

jr_0c6_657c:
    ld a, h                                       ; $657c: $7c
    jr @-$18                                      ; $657d: $18 $e6

    jr jr_0c6_6585                                ; $657f: $18 $04

    xor $80                                       ; $6581: $ee $80
    cp $62                                        ; $6583: $fe $62

jr_0c6_6585:
    ld a, [hl]                                    ; $6585: $7e
    ld a, [hl]                                    ; $6586: $7e
    stop                                          ; $6587: $10 $00
    ld [hl], b                                    ; $6589: $70
    nop                                           ; $658a: $00
    ld [hl], b                                    ; $658b: $70
    ld a, h                                       ; $658c: $7c
    ld a, h                                       ; $658d: $7c
    db $fc                                        ; $658e: $fc
    call z, $ecfc                                 ; $658f: $cc $fc $ec

jr_0c6_6592:
    inc a                                         ; $6592: $3c
    cpl                                           ; $6593: $2f

jr_0c6_6594:
    inc a                                         ; $6594: $3c
    jr nc, jr_0c6_65c9                            ; $6595: $30 $32

    nop                                           ; $6597: $00
    rst $38                                       ; $6598: $ff
    inc b                                         ; $6599: $04
    ld bc, $00a5                                  ; $659a: $01 $a5 $00
    ld [bc], a                                    ; $659d: $02
    jr nz, jr_0c6_65ad                            ; $659e: $20 $0d

    ld [$4004], sp                                ; $65a0: $08 $04 $40
    rst $38                                       ; $65a3: $ff
    cp a                                          ; $65a4: $bf
    ld b, b                                       ; $65a5: $40
    add b                                         ; $65a6: $80
    ld [bc], a                                    ; $65a7: $02
    jr nz, @+$01                                  ; $65a8: $20 $ff

    ld b, b                                       ; $65aa: $40
    nop                                           ; $65ab: $00
    ld a, e                                       ; $65ac: $7b

jr_0c6_65ad:
    add b                                         ; $65ad: $80
    ld h, a                                       ; $65ae: $67
    sbc b                                         ; $65af: $98
    sub l                                         ; $65b0: $95
    ld b, d                                       ; $65b1: $42
    ld a, l                                       ; $65b2: $7d
    ld [bc], a                                    ; $65b3: $02
    nop                                           ; $65b4: $00
    ld l, e                                       ; $65b5: $6b
    add h                                         ; $65b6: $84
    call nc, Call_0c6_7f2b                        ; $65b7: $d4 $2b $7f
    add b                                         ; $65ba: $80
    call z, $0033                                 ; $65bb: $cc $33 $00
    dec bc                                        ; $65be: $0b
    and h                                         ; $65bf: $a4
    rst $38                                       ; $65c0: $ff
    nop                                           ; $65c1: $00

jr_0c6_65c2:
    ld d, h                                       ; $65c2: $54
    adc e                                         ; $65c3: $8b
    sbc $21                                       ; $65c4: $de $21
    nop                                           ; $65c6: $00
    rst $38                                       ; $65c7: $ff
    nop                                           ; $65c8: $00

jr_0c6_65c9:
    xor h                                         ; $65c9: $ac
    ld d, e                                       ; $65ca: $53
    cp a                                          ; $65cb: $bf
    nop                                           ; $65cc: $00
    db $ed                                        ; $65cd: $ed
    ld [bc], a                                    ; $65ce: $02

jr_0c6_65cf:
    nop                                           ; $65cf: $00
    ld sp, hl                                     ; $65d0: $f9

jr_0c6_65d1:
    ld b, $4f                                     ; $65d1: $06 $4f
    or b                                          ; $65d3: $b0
    or $08                                        ; $65d4: $f6 $08
    adc $21                                       ; $65d6: $ce $21
    nop                                           ; $65d8: $00
    ld e, l                                       ; $65d9: $5d
    add d                                         ; $65da: $82
    xor d                                         ; $65db: $aa
    ld d, l                                       ; $65dc: $55
    xor e                                         ; $65dd: $ab
    ld b, h                                       ; $65de: $44
    ld e, e                                       ; $65df: $5b
    add b                                         ; $65e0: $80
    nop                                           ; $65e1: $00
    rst $28                                       ; $65e2: $ef
    db $10                                        ; $65e3: $10
    dec sp                                        ; $65e4: $3b
    call nz, $38c7                                ; $65e5: $c4 $c7 $38
    or a                                          ; $65e8: $b7
    ld c, b                                       ; $65e9: $48
    nop                                           ; $65ea: $00
    ld sp, hl                                     ; $65eb: $f9
    inc b                                         ; $65ec: $04
    db $e4                                        ; $65ed: $e4
    dec de                                        ; $65ee: $1b
    ld a, $81                                     ; $65ef: $3e $81
    ld d, e                                       ; $65f1: $53
    inc c                                         ; $65f2: $0c
    nop                                           ; $65f3: $00
    rst $08                                       ; $65f4: $cf
    jr nc, jr_0c6_6670                            ; $65f5: $30 $79

    add [hl]                                      ; $65f7: $86
    cp a                                          ; $65f8: $bf
    ld b, b                                       ; $65f9: $40
    ld a, c                                       ; $65fa: $79
    add [hl]                                      ; $65fb: $86
    nop                                           ; $65fc: $00
    rst $30                                       ; $65fd: $f7
    ld [$a45b], sp                                ; $65fe: $08 $5b $a4
    sbc l                                         ; $6601: $9d
    ld [hl+], a                                   ; $6602: $22
    ld a, l                                       ; $6603: $7d
    nop                                           ; $6604: $00
    nop                                           ; $6605: $00
    ld a, l                                       ; $6606: $7d
    add b                                         ; $6607: $80
    db $ec                                        ; $6608: $ec
    ld de, $50af                                  ; $6609: $11 $af $50
    db $ed                                        ; $660c: $ed
    stop                                          ; $660d: $10 $00
    ld [hl], $c0                                  ; $660f: $36 $c0
    rst $08                                       ; $6611: $cf
    jr nc, jr_0c6_65cf                            ; $6612: $30 $bb

    ld b, h                                       ; $6614: $44
    ld a, d                                       ; $6615: $7a
    add l                                         ; $6616: $85
    nop                                           ; $6617: $00
    jp $eb3c                                      ; $6618: $c3 $3c $eb


    inc b                                         ; $661b: $04
    dec a                                         ; $661c: $3d
    jp nz, Jump_0c6_6097                          ; $661d: $c2 $97 $60

    nop                                           ; $6620: $00
    cp e                                          ; $6621: $bb
    inc b                                         ; $6622: $04
    cpl                                           ; $6623: $2f
    ret nc                                        ; $6624: $d0

    ld l, l                                       ; $6625: $6d
    sub d                                         ; $6626: $92
    ld a, a                                       ; $6627: $7f
    add b                                         ; $6628: $80
    nop                                           ; $6629: $00
    call c, $9f03                                 ; $662a: $dc $03 $9f
    ld h, b                                       ; $662d: $60
    ld [hl], l                                    ; $662e: $75
    ld a, [bc]                                    ; $662f: $0a
    or $09                                        ; $6630: $f6 $09
    nop                                           ; $6632: $00
    adc a                                         ; $6633: $8f
    jr nz, @+$44                                  ; $6634: $20 $42

    cp l                                          ; $6636: $bd
    cp $00                                        ; $6637: $fe $00
    or l                                          ; $6639: $b5
    ld c, d                                       ; $663a: $4a
    nop                                           ; $663b: $00
    ld l, a                                       ; $663c: $6f
    db $10                                        ; $663d: $10
    ei                                            ; $663e: $fb
    inc b                                         ; $663f: $04
    db $d3                                        ; $6640: $d3
    inc l                                         ; $6641: $2c
    ei                                            ; $6642: $fb
    inc b                                         ; $6643: $04
    nop                                           ; $6644: $00
    cp c                                          ; $6645: $b9
    inc b                                         ; $6646: $04
    ld [hl], b                                    ; $6647: $70
    adc a                                         ; $6648: $8f
    rst $18                                       ; $6649: $df
    nop                                           ; $664a: $00
    and l                                         ; $664b: $a5
    ld a, [bc]                                    ; $664c: $0a
    nop                                           ; $664d: $00
    rst $08                                       ; $664e: $cf
    jr nc, jr_0c6_668d                            ; $664f: $30 $3c

    jp Jump_000_21da                              ; $6651: $c3 $da $21


    ld a, [hl-]                                   ; $6654: $3a

jr_0c6_6655:
    add l                                         ; $6655: $85
    nop                                           ; $6656: $00
    ld [hl], a                                    ; $6657: $77
    ld [$649b], sp                                ; $6658: $08 $9b $64
    ld l, [hl]                                    ; $665b: $6e
    sub c                                         ; $665c: $91
    rst $28                                       ; $665d: $ef
    nop                                           ; $665e: $00
    nop                                           ; $665f: $00
    ld a, [hl]                                    ; $6660: $7e
    add c                                         ; $6661: $81
    jp hl                                         ; $6662: $e9


    ld d, $9e                                     ; $6663: $16 $9e
    ld h, c                                       ; $6665: $61
    reti                                          ; $6666: $d9


    inc h                                         ; $6667: $24
    nop                                           ; $6668: $00
    db $eb                                        ; $6669: $eb
    db $10                                        ; $666a: $10
    sub l                                         ; $666b: $95
    ld l, d                                       ; $666c: $6a
    ld a, [$5504]                                 ; $666d: $fa $04 $55

jr_0c6_6670:
    jr z, jr_0c6_6672                             ; $6670: $28 $00

jr_0c6_6672:
    ld a, d                                       ; $6672: $7a
    add h                                         ; $6673: $84
    rst $20                                       ; $6674: $e7
    jr jr_0c6_6655                                ; $6675: $18 $de

    ld bc, $28d7                                  ; $6677: $01 $d7 $28
    nop                                           ; $667a: $00
    cp h                                          ; $667b: $bc
    ld b, e                                       ; $667c: $43
    ld e, [hl]                                    ; $667d: $5e
    and c                                         ; $667e: $a1
    or a                                          ; $667f: $b7
    ld c, b                                       ; $6680: $48
    or [hl]                                       ; $6681: $b6
    ld bc, $ee00                                  ; $6682: $01 $00 $ee
    ld bc, $48b5                                  ; $6685: $01 $b5 $48
    ld a, d                                       ; $6688: $7a
    add l                                         ; $6689: $85
    ld a, $81                                     ; $668a: $3e $81
    nop                                           ; $668c: $00

jr_0c6_668d:
    sbc $00                                       ; $668d: $de $00
    cp d                                          ; $668f: $ba
    ld b, l                                       ; $6690: $45
    ld l, l                                       ; $6691: $6d
    sub d                                         ; $6692: $92
    pop hl                                        ; $6693: $e1
    ld c, $00                                     ; $6694: $0e $00
    inc a                                         ; $6696: $3c
    jp nz, $20db                                  ; $6697: $c2 $db $20

    ret c                                         ; $669a: $d8

    daa                                           ; $669b: $27
    db $fc                                        ; $669c: $fc
    inc bc                                        ; $669d: $03
    nop                                           ; $669e: $00
    ld l, h                                       ; $669f: $6c
    sub d                                         ; $66a0: $92
    ld e, e                                       ; $66a1: $5b
    and h                                         ; $66a2: $a4
    xor $01                                       ; $66a3: $ee $01
    jr c, @-$37                                   ; $66a5: $38 $c7

    nop                                           ; $66a7: $00
    ld a, [$1705]                                 ; $66a8: $fa $05 $17
    ret z                                         ; $66ab: $c8

    ld l, [hl]                                    ; $66ac: $6e
    sub c                                         ; $66ad: $91
    or h                                          ; $66ae: $b4
    ld c, b                                       ; $66af: $48
    nop                                           ; $66b0: $00
    or [hl]                                       ; $66b1: $b6
    ld c, c                                       ; $66b2: $49
    adc a                                         ; $66b3: $8f
    jr nc, jr_0c6_66cb                            ; $66b4: $30 $15

    ld [$05fa], a                                 ; $66b6: $ea $fa $05
    nop                                           ; $66b9: $00
    inc a                                         ; $66ba: $3c
    ld b, e                                       ; $66bb: $43
    ret nc                                        ; $66bc: $d0

    dec l                                         ; $66bd: $2d
    ld [$7d15], a                                 ; $66be: $ea $15 $7d
    add d                                         ; $66c1: $82
    nop                                           ; $66c2: $00
    sbc $21                                       ; $66c3: $de $21
    rst $28                                       ; $66c5: $ef
    nop                                           ; $66c6: $00
    ld a, c                                       ; $66c7: $79
    add h                                         ; $66c8: $84
    adc l                                         ; $66c9: $8d
    ld [hl], d                                    ; $66ca: $72

jr_0c6_66cb:
    nop                                           ; $66cb: $00
    ldh [rNR24], a                                ; $66cc: $e0 $19
    ld e, a                                       ; $66ce: $5f
    and b                                         ; $66cf: $a0
    ld [hl], a                                    ; $66d0: $77
    adc b                                         ; $66d1: $88
    or c                                          ; $66d2: $b1
    ld b, d                                       ; $66d3: $42
    nop                                           ; $66d4: $00
    ld e, e                                       ; $66d5: $5b
    and h                                         ; $66d6: $a4
    ld a, [hl]                                    ; $66d7: $7e
    add b                                         ; $66d8: $80
    push de                                       ; $66d9: $d5
    ld a, [hl+]                                   ; $66da: $2a
    add sp, $17                                   ; $66db: $e8 $17
    nop                                           ; $66dd: $00
    ld [$4914], a                                 ; $66de: $ea $14 $49
    and [hl]                                      ; $66e1: $a6
    sub l                                         ; $66e2: $95
    ld l, d                                       ; $66e3: $6a
    di                                            ; $66e4: $f3
    ld [$7200], sp                                ; $66e5: $08 $00 $72
    adc h                                         ; $66e8: $8c
    cp c                                          ; $66e9: $b9
    ld b, $ed                                     ; $66ea: $06 $ed
    ld [de], a                                    ; $66ec: $12
    or [hl]                                       ; $66ed: $b6
    ld c, c                                       ; $66ee: $49
    nop                                           ; $66ef: $00
    xor c                                         ; $66f0: $a9
    ld d, [hl]                                    ; $66f1: $56
    or d                                          ; $66f2: $b2
    ld b, h                                       ; $66f3: $44
    ld sp, $c6ce                                  ; $66f4: $31 $ce $c6
    jr z, jr_0c6_66f9                             ; $66f7: $28 $00

jr_0c6_66f9:
    add e                                         ; $66f9: $83
    ld [hl], h                                    ; $66fa: $74
    ld l, a                                       ; $66fb: $6f
    nop                                           ; $66fc: $00
    xor $01                                       ; $66fd: $ee $01
    ld c, l                                       ; $66ff: $4d
    or d                                          ; $6700: $b2
    nop                                           ; $6701: $00
    ld a, [$bb05]                                 ; $6702: $fa $05 $bb

Call_0c6_6705:
    inc b                                         ; $6705: $04
    ei                                            ; $6706: $fb
    inc b                                         ; $6707: $04
    push af                                       ; $6708: $f5
    ld a, [bc]                                    ; $6709: $0a
    nop                                           ; $670a: $00
    ld e, h                                       ; $670b: $5c
    and e                                         ; $670c: $a3
    cp $01                                        ; $670d: $fe $01
    dec [hl]                                      ; $670f: $35
    adc b                                         ; $6710: $88
    ld a, h                                       ; $6711: $7c
    add e                                         ; $6712: $83
    nop                                           ; $6713: $00
    ld a, e                                       ; $6714: $7b
    add h                                         ; $6715: $84
    xor h                                         ; $6716: $ac
    ld b, e                                       ; $6717: $43
    xor c                                         ; $6718: $a9
    ld d, [hl]                                    ; $6719: $56
    ld sp, hl                                     ; $671a: $f9
    ld b, $00                                     ; $671b: $06 $00
    reti                                          ; $671d: $d9


    inc h                                         ; $671e: $24
    or a                                          ; $671f: $b7
    ld c, b                                       ; $6720: $48
    call c, $7103                                 ; $6721: $dc $03 $71
    adc [hl]                                      ; $6724: $8e
    nop                                           ; $6725: $00
    ldh a, [$0c]                                  ; $6726: $f0 $0c
    ld l, a                                       ; $6728: $6f
    db $10                                        ; $6729: $10
    cp e                                          ; $672a: $bb
    ld b, h                                       ; $672b: $44
    ld l, b                                       ; $672c: $68
    sub c                                         ; $672d: $91
    nop                                           ; $672e: $00
    ld l, l                                       ; $672f: $6d
    sub d                                         ; $6730: $92
    rra                                           ; $6731: $1f
    ld h, b                                       ; $6732: $60
    ld a, [hl+]                                   ; $6733: $2a
    push de                                       ; $6734: $d5
    push af                                       ; $6735: $f5
    ld a, [bc]                                    ; $6736: $0a
    nop                                           ; $6737: $00
    ld [hl], l                                    ; $6738: $75
    adc d                                         ; $6739: $8a
    add h                                         ; $673a: $84
    ld [hl], e                                    ; $673b: $73
    xor d                                         ; $673c: $aa
    ld d, l                                       ; $673d: $55
    ei                                            ; $673e: $fb
    inc b                                         ; $673f: $04
    nop                                           ; $6740: $00
    cp h                                          ; $6741: $bc
    ld b, e                                       ; $6742: $43
    sbc $01                                       ; $6743: $de $01
    di                                            ; $6745: $f3
    ld [$e41b], sp                                ; $6746: $08 $1b $e4
    nop                                           ; $6749: $00
    and e                                         ; $674a: $a3
    ld d, h                                       ; $674b: $54
    ld a, l                                       ; $674c: $7d
    add d                                         ; $674d: $82
    xor $11                                       ; $674e: $ee $11
    ld h, e                                       ; $6750: $63
    add h                                         ; $6751: $84
    nop                                           ; $6752: $00
    or [hl]                                       ; $6753: $b6
    ld c, c                                       ; $6754: $49
    db $fd                                        ; $6755: $fd
    nop                                           ; $6756: $00
    xor e                                         ; $6757: $ab
    ld d, h                                       ; $6758: $54
    pop de                                        ; $6759: $d1
    ld l, $00                                     ; $675a: $2e $00
    swap b                                        ; $675c: $cb $30
    daa                                           ; $675e: $27
    ret c                                         ; $675f: $d8

    sub l                                         ; $6760: $95
    ld l, d                                       ; $6761: $6a
    rst $20                                       ; $6762: $e7
    stop                                          ; $6763: $10 $00
    push hl                                       ; $6765: $e5
    jr jr_0c6_67da                                ; $6766: $18 $72

    inc c                                         ; $6768: $0c
    db $db                                        ; $6769: $db
    inc h                                         ; $676a: $24
    ld l, h                                       ; $676b: $6c
    sub e                                         ; $676c: $93
    nop                                           ; $676d: $00
    dec hl                                        ; $676e: $2b
    call nc, $904e                                ; $676f: $d4 $4e $90
    ld c, e                                       ; $6772: $4b
    or h                                          ; $6773: $b4
    adc l                                         ; $6774: $8d
    ld d, b                                       ; $6775: $50
    nop                                           ; $6776: $00
    ld b, $e9                                     ; $6777: $06 $e9
    rst $18                                       ; $6779: $df
    nop                                           ; $677a: $00
    call c, $9a03                                 ; $677b: $dc $03 $9a
    ld h, l                                       ; $677e: $65
    nop                                           ; $677f: $00
    ld l, h                                       ; $6780: $6c
    inc bc                                        ; $6781: $03
    or a                                          ; $6782: $b7
    nop                                           ; $6783: $00
    ei                                            ; $6784: $fb
    inc b                                         ; $6785: $04
    ld a, c                                       ; $6786: $79
    add [hl]                                      ; $6787: $86
    inc b                                         ; $6788: $04
    ret                                           ; $6789: $c9


    ld [hl], $af                                  ; $678a: $36 $af
    ld d, b                                       ; $678c: $50

jr_0c6_678d:
    ld [hl], $ae                                  ; $678d: $36 $ae
    ld bc, $11ac                                  ; $678f: $01 $ac $11
    nop                                           ; $6792: $00
    cp $00                                        ; $6793: $fe $00
    db $eb                                        ; $6795: $eb
    inc b                                         ; $6796: $04
    ld c, [hl]                                    ; $6797: $4e
    sub c                                         ; $6798: $91
    or a                                          ; $6799: $b7
    ld c, b                                       ; $679a: $48
    nop                                           ; $679b: $00
    ld a, d                                       ; $679c: $7a
    dec b                                         ; $679d: $05
    sub e                                         ; $679e: $93
    inc c                                         ; $679f: $0c
    cp $00                                        ; $67a0: $fe $00
    db $ec                                        ; $67a2: $ec
    ld [de], a                                    ; $67a3: $12
    nop                                           ; $67a4: $00
    db $db                                        ; $67a5: $db
    jr nz, jr_0c6_678d                            ; $67a6: $20 $e5

    db $10                                        ; $67a8: $10

jr_0c6_67a9:
    jp z, Jump_000_1114                           ; $67a9: $ca $14 $11

    xor $00                                       ; $67ac: $ee $00
    daa                                           ; $67ae: $27
    ld e, b                                       ; $67af: $58
    sub $08                                       ; $67b0: $d6 $08
    sub a                                         ; $67b2: $97
    ld l, b                                       ; $67b3: $68
    or e                                          ; $67b4: $b3
    ld b, h                                       ; $67b5: $44
    nop                                           ; $67b6: $00
    ei                                            ; $67b7: $fb
    nop                                           ; $67b8: $00
    xor a                                         ; $67b9: $af
    db $10                                        ; $67ba: $10
    dec sp                                        ; $67bb: $3b
    ld b, h                                       ; $67bc: $44
    call c, Call_000_0023                         ; $67bd: $dc $23 $00
    add sp, $15                                   ; $67c0: $e8 $15
    ld d, a                                       ; $67c2: $57
    jr z, @-$04                                   ; $67c3: $28 $fa

    ld bc, $c833                                  ; $67c5: $01 $33 $c8
    nop                                           ; $67c8: $00
    ld l, h                                       ; $67c9: $6c
    add c                                         ; $67ca: $81
    sub a                                         ; $67cb: $97
    ld b, b                                       ; $67cc: $40
    xor e                                         ; $67cd: $ab
    ld d, b                                       ; $67ce: $50
    ld b, [hl]                                    ; $67cf: $46
    cp c                                          ; $67d0: $b9
    nop                                           ; $67d1: $00
    sbc l                                         ; $67d2: $9d
    ld h, d                                       ; $67d3: $62
    ld l, l                                       ; $67d4: $6d
    ld [de], a                                    ; $67d5: $12
    ld l, e                                       ; $67d6: $6b
    sub b                                         ; $67d7: $90
    db $fd                                        ; $67d8: $fd
    ld [bc], a                                    ; $67d9: $02

jr_0c6_67da:
    nop                                           ; $67da: $00
    db $d3                                        ; $67db: $d3
    ld [$42bd], sp                                ; $67dc: $08 $bd $42
    xor c                                         ; $67df: $a9
    ld d, $cc                                     ; $67e0: $16 $cc
    inc sp                                        ; $67e2: $33
    nop                                           ; $67e3: $00
    inc a                                         ; $67e4: $3c
    jp nz, Jump_000_20d7                          ; $67e5: $c2 $d7 $20

    ld d, a                                       ; $67e8: $57
    jr z, jr_0c6_67a9                             ; $67e9: $28 $be

    ld b, c                                       ; $67eb: $41
    nop                                           ; $67ec: $00
    db $e3                                        ; $67ed: $e3
    inc c                                         ; $67ee: $0c
    ld e, l                                       ; $67ef: $5d
    and d                                         ; $67f0: $a2
    db $fd                                        ; $67f1: $fd
    nop                                           ; $67f2: $00
    ld sp, hl                                     ; $67f3: $f9
    ld b, $00                                     ; $67f4: $06 $00
    db $ed                                        ; $67f6: $ed
    ld [bc], a                                    ; $67f7: $02
    dec a                                         ; $67f8: $3d
    jp nz, $8877                                  ; $67f9: $c2 $77 $88

    ld a, h                                       ; $67fc: $7c
    inc bc                                        ; $67fd: $03
    nop                                           ; $67fe: $00
    cp l                                          ; $67ff: $bd
    nop                                           ; $6800: $00
    di                                            ; $6801: $f3
    ld [$8a75], sp                                ; $6802: $08 $75 $8a
    jp Jump_000_003c                              ; $6805: $c3 $3c $00


    cpl                                           ; $6808: $2f
    ret nc                                        ; $6809: $d0

    or l                                          ; $680a: $b5
    ld b, b                                       ; $680b: $40
    cp e                                          ; $680c: $bb
    ld b, b                                       ; $680d: $40
    sbc h                                         ; $680e: $9c
    ld hl, $ee40                                  ; $680f: $21 $40 $ee
    add b                                         ; $6812: $80
    nop                                           ; $6813: $00
    ld d, [hl]                                    ; $6814: $56
    and c                                         ; $6815: $a1
    and a                                         ; $6816: $a7

jr_0c6_6817:
    ld e, b                                       ; $6817: $58
    ei                                            ; $6818: $fb
    inc b                                         ; $6819: $04
    nop                                           ; $681a: $00
    sub l                                         ; $681b: $95
    ld a, [bc]                                    ; $681c: $0a
    rst $38                                       ; $681d: $ff
    nop                                           ; $681e: $00
    call $bb32                                    ; $681f: $cd $32 $bb
    ld b, b                                       ; $6822: $40
    nop                                           ; $6823: $00
    push hl                                       ; $6824: $e5
    db $10                                        ; $6825: $10
    xor d                                         ; $6826: $aa
    inc d                                         ; $6827: $14
    ld sp, $27ce                                  ; $6828: $31 $ce $27
    ret c                                         ; $682b: $d8

    nop                                           ; $682c: $00
    db $db                                        ; $682d: $db
    inc b                                         ; $682e: $04
    sbc e                                         ; $682f: $9b
    ld h, h                                       ; $6830: $64
    ld [hl], e                                    ; $6831: $73
    add h                                         ; $6832: $84
    cp d                                          ; $6833: $ba
    ld bc, $6f00                                  ; $6834: $01 $00 $6f
    db $10                                        ; $6837: $10
    ld e, d                                       ; $6838: $5a
    add h                                         ; $6839: $84
    sbc h                                         ; $683a: $9c
    ld h, e                                       ; $683b: $63
    db $ec                                        ; $683c: $ec
    inc de                                        ; $683d: $13
    jr nz, jr_0c6_6897                            ; $683e: $20 $57

    jr z, jr_0c6_6856                             ; $6840: $28 $14

    ld bc, $e9c8                                  ; $6842: $01 $c8 $e9
    ld [bc], a                                    ; $6845: $02
    sbc a                                         ; $6846: $9f
    ld b, b                                       ; $6847: $40
    ld [$50af], sp                                ; $6848: $08 $af $50
    add $39                                       ; $684b: $c6 $39
    ld [hl], b                                    ; $684d: $70
    ld [$906f], sp                                ; $684e: $08 $6f $90
    ei                                            ; $6851: $fb
    jr nz, @+$06                                  ; $6852: $20 $04

jr_0c6_6854:
    rst $00                                       ; $6854: $c7
    db $10                                        ; $6855: $10

jr_0c6_6856:
    ld bc, $1aa5                                  ; $6856: $01 $a5 $1a
    jp z, Jump_000_3c35                           ; $6859: $ca $35 $3c

    nop                                           ; $685c: $00
    jp nz, $20df                                  ; $685d: $c2 $df $20

    ld e, e                                       ; $6860: $5b
    inc h                                         ; $6861: $24
    xor a                                         ; $6862: $af
    ld d, b                                       ; $6863: $50
    ld a, [de]                                    ; $6864: $1a
    db $10                                        ; $6865: $10
    push hl                                       ; $6866: $e5
    rst $38                                       ; $6867: $ff
    nop                                           ; $6868: $00
    and $09                                       ; $6869: $e6 $09
    rst $18                                       ; $686b: $df
    jr nz, jr_0c6_68e6                            ; $686c: $20 $78

    add a                                         ; $686e: $87
    nop                                           ; $686f: $00
    ld e, a                                       ; $6870: $5f
    and b                                         ; $6871: $a0
    db $e3                                        ; $6872: $e3
    inc d                                         ; $6873: $14
    push de                                       ; $6874: $d5
    ld a, [hl+]                                   ; $6875: $2a
    pop de                                        ; $6876: $d1
    ld h, $00                                     ; $6877: $26 $00
    ld e, a                                       ; $6879: $5f
    add b                                         ; $687a: $80
    ld a, [$d704]                                 ; $687b: $fa $04 $d7
    jr z, jr_0c6_6817                             ; $687e: $28 $97

    ld l, b                                       ; $6880: $68
    nop                                           ; $6881: $00
    rst $18                                       ; $6882: $df
    jr nz, jr_0c6_6854                            ; $6883: $20 $cf

    jr nz, jr_0c6_68be                            ; $6885: $20 $37

    ret z                                         ; $6887: $c8

    cp e                                          ; $6888: $bb
    inc b                                         ; $6889: $04
    nop                                           ; $688a: $00
    pop hl                                        ; $688b: $e1
    ld e, $5a                                     ; $688c: $1e $5a
    add c                                         ; $688e: $81
    xor a                                         ; $688f: $af
    ld d, b                                       ; $6890: $50
    and $19                                       ; $6891: $e6 $19
    nop                                           ; $6893: $00
    ccf                                           ; $6894: $3f
    add b                                         ; $6895: $80
    adc a                                         ; $6896: $8f

jr_0c6_6897:
    ld d, b                                       ; $6897: $50
    ld d, h                                       ; $6898: $54
    xor e                                         ; $6899: $ab
    ld c, d                                       ; $689a: $4a
    sub h                                         ; $689b: $94
    nop                                           ; $689c: $00
    or $01                                        ; $689d: $f6 $01
    rst $20                                       ; $689f: $e7
    jr jr_0c6_68f7                                ; $68a0: $18 $55

    add d                                         ; $68a2: $82
    ld sp, hl                                     ; $68a3: $f9

jr_0c6_68a4:
    ld b, $00                                     ; $68a4: $06 $00
    cp l                                          ; $68a6: $bd
    ld b, d                                       ; $68a7: $42
    dec a                                         ; $68a8: $3d
    add d                                         ; $68a9: $82
    ld [$ee15], a                                 ; $68aa: $ea $15 $ee
    ld de, $1b00                                  ; $68ad: $11 $00 $1b
    ld b, h                                       ; $68b0: $44
    rst $38                                       ; $68b1: $ff
    nop                                           ; $68b2: $00
    ld e, b                                       ; $68b3: $58
    add a                                         ; $68b4: $87
    sbc $21                                       ; $68b5: $de $21
    nop                                           ; $68b7: $00
    sub h                                         ; $68b8: $94
    ld h, e                                       ; $68b9: $63
    db $f4                                        ; $68ba: $f4
    inc bc                                        ; $68bb: $03
    xor h                                         ; $68bc: $ac
    ld d, e                                       ; $68bd: $53

jr_0c6_68be:
    db $db                                        ; $68be: $db
    inc h                                         ; $68bf: $24
    nop                                           ; $68c0: $00
    ld sp, hl                                     ; $68c1: $f9
    ld b, $67                                     ; $68c2: $06 $67
    sbc b                                         ; $68c4: $98
    ei                                            ; $68c5: $fb
    inc b                                         ; $68c6: $04
    ld l, [hl]                                    ; $68c7: $6e
    sub c                                         ; $68c8: $91
    nop                                           ; $68c9: $00
    adc e                                         ; $68ca: $8b
    ld d, h                                       ; $68cb: $54
    ld c, l                                       ; $68cc: $4d
    ld [hl+], a                                   ; $68cd: $22
    ld e, h                                       ; $68ce: $5c
    and e                                         ; $68cf: $a3
    adc e                                         ; $68d0: $8b
    jr nc, jr_0c6_68d3                            ; $68d1: $30 $00

jr_0c6_68d3:
    rst $28                                       ; $68d3: $ef

jr_0c6_68d4:
    db $10                                        ; $68d4: $10
    sbc [hl]                                      ; $68d5: $9e
    ld h, c                                       ; $68d6: $61
    ld l, c                                       ; $68d7: $69
    ld d, $5c                                     ; $68d8: $16 $5c
    and e                                         ; $68da: $a3
    nop                                           ; $68db: $00
    ld [c], a                                     ; $68dc: $e2
    dec c                                         ; $68dd: $0d
    xor [hl]                                      ; $68de: $ae
    ld d, b                                       ; $68df: $50
    dec de                                        ; $68e0: $1b
    db $e4                                        ; $68e1: $e4
    ld a, a                                       ; $68e2: $7f
    nop                                           ; $68e3: $00
    nop                                           ; $68e4: $00
    rst $20                                       ; $68e5: $e7

jr_0c6_68e6:
    jr @-$60                                      ; $68e6: $18 $9e

    ld h, c                                       ; $68e8: $61
    rst $28                                       ; $68e9: $ef
    db $10                                        ; $68ea: $10
    cp h                                          ; $68eb: $bc
    ld b, e                                       ; $68ec: $43
    nop                                           ; $68ed: $00
    ld d, a                                       ; $68ee: $57
    jr z, jr_0c6_68d4                             ; $68ef: $28 $e3

    inc d                                         ; $68f1: $14
    ld d, [hl]                                    ; $68f2: $56
    xor c                                         ; $68f3: $a9
    add sp, $13                                   ; $68f4: $e8 $13
    nop                                           ; $68f6: $00

jr_0c6_68f7:
    xor a                                         ; $68f7: $af
    ld b, b                                       ; $68f8: $40
    ld a, l                                       ; $68f9: $7d
    add d                                         ; $68fa: $82
    db $eb                                        ; $68fb: $eb
    inc d                                         ; $68fc: $14
    ld c, e                                       ; $68fd: $4b
    or h                                          ; $68fe: $b4
    nop                                           ; $68ff: $00
    rst $30                                       ; $6900: $f7
    ld [$20cf], sp                                ; $6901: $08 $cf $20
    dec sp                                        ; $6904: $3b
    call nz, $02dd                                ; $6905: $c4 $dd $02
    nop                                           ; $6908: $00
    ldh a, [rIF]                                  ; $6909: $f0 $0f
    dec l                                         ; $690b: $2d
    ld b, b                                       ; $690c: $40
    rst $10                                       ; $690d: $d7
    jr z, @-$0b                                   ; $690e: $28 $f3

    inc c                                         ; $6910: $0c
    nop                                           ; $6911: $00
    rst $08                                       ; $6912: $cf
    jr nz, jr_0c6_68a4                            ; $6913: $20 $8f

    ld d, b                                       ; $6915: $50
    ld e, b                                       ; $6916: $58
    and a                                         ; $6917: $a7
    and l                                         ; $6918: $a5
    ld c, d                                       ; $6919: $4a
    nop                                           ; $691a: $00
    ei                                            ; $691b: $fb
    nop                                           ; $691c: $00
    ld [hl], e                                    ; $691d: $73
    adc h                                         ; $691e: $8c
    xor d                                         ; $691f: $aa
    ld b, c                                       ; $6920: $41
    ld a, h                                       ; $6921: $7c
    add e                                         ; $6922: $83
    nop                                           ; $6923: $00
    rst $28                                       ; $6924: $ef
    db $10                                        ; $6925: $10
    dec a                                         ; $6926: $3d
    add d                                         ; $6927: $82
    db $ec                                        ; $6928: $ec
    inc de                                        ; $6929: $13
    ld [hl], a                                    ; $692a: $77
    ld [$0d20], sp                                ; $692b: $08 $20 $0d
    and d                                         ; $692e: $a2
    db $10                                        ; $692f: $10
    inc bc                                        ; $6930: $03
    ld b, e                                       ; $6931: $43
    rst $28                                       ; $6932: $ef
    db $10                                        ; $6933: $10
    ld d, l                                       ; $6934: $55
    xor b                                         ; $6935: $a8
    nop                                           ; $6936: $00
    db $ec                                        ; $6937: $ec
    inc bc                                        ; $6938: $03
    or h                                          ; $6939: $b4
    ld c, e                                       ; $693a: $4b
    ld l, l                                       ; $693b: $6d
    sub d                                         ; $693c: $92
    db $fc                                        ; $693d: $fc
    inc bc                                        ; $693e: $03
    nop                                           ; $693f: $00
    or e                                          ; $6940: $b3
    ld c, h                                       ; $6941: $4c
    ld a, l                                       ; $6942: $7d
    add d                                         ; $6943: $82
    scf                                           ; $6944: $37
    ret z                                         ; $6945: $c8

    ld a, [bc]                                    ; $6946: $0a
    push hl                                       ; $6947: $e5
    nop                                           ; $6948: $00
    ld a, [$ad04]                                 ; $6949: $fa $04 $ad
    ld [de], a                                    ; $694c: $12
    ld l, a                                       ; $694d: $6f
    nop                                           ; $694e: $00
    ld b, l                                       ; $694f: $45
    cp d                                          ; $6950: $ba
    nop                                           ; $6951: $00
    inc d                                         ; $6952: $14
    xor c                                         ; $6953: $a9
    ld sp, hl                                     ; $6954: $f9
    ld [bc], a                                    ; $6955: $02
    push af                                       ; $6956: $f5
    ld [$8679], sp                                ; $6957: $08 $79 $86
    nop                                           ; $695a: $00
    rst $10                                       ; $695b: $d7
    ld [$22dd], sp                                ; $695c: $08 $dd $22
    cp h                                          ; $695f: $bc
    ld b, c                                       ; $6960: $41
    call nc, $002b                                ; $6961: $d4 $2b $00
    rst $30                                       ; $6964: $f7
    ld [$45ba], sp                                ; $6965: $08 $ba $45
    db $e3                                        ; $6968: $e3
    inc d                                         ; $6969: $14
    sub c                                         ; $696a: $91
    ld l, d                                       ; $696b: $6a
    nop                                           ; $696c: $00
    ld d, a                                       ; $696d: $57
    xor b                                         ; $696e: $a8
    cp e                                          ; $696f: $bb
    ld b, h                                       ; $6970: $44
    ccf                                           ; $6971: $3f
    ret nz                                        ; $6972: $c0

    cp $01                                        ; $6973: $fe $01
    nop                                           ; $6975: $00
    ei                                            ; $6976: $fb

jr_0c6_6977:
    nop                                           ; $6977: $00
    db $dd                                        ; $6978: $dd
    ld [bc], a                                    ; $6979: $02
    ld a, d                                       ; $697a: $7a
    dec b                                         ; $697b: $05
    xor [hl]                                      ; $697c: $ae
    ld d, c                                       ; $697d: $51
    nop                                           ; $697e: $00
    xor d                                         ; $697f: $aa
    dec d                                         ; $6980: $15
    ld a, a                                       ; $6981: $7f
    add b                                         ; $6982: $80

Jump_0c6_6983:
    call Call_000_1e32                            ; $6983: $cd $32 $1e
    pop hl                                        ; $6986: $e1
    nop                                           ; $6987: $00
    ld d, a                                       ; $6988: $57
    jr z, jr_0c6_6977                             ; $6989: $28 $ec

    inc bc                                        ; $698b: $03
    cp [hl]                                       ; $698c: $be
    ld bc, $4bb4                                  ; $698d: $01 $b4 $4b
    nop                                           ; $6990: $00
    db $fd                                        ; $6991: $fd
    nop                                           ; $6992: $00

jr_0c6_6993:
    rst $30                                       ; $6993: $f7
    nop                                           ; $6994: $00
    ld l, d                                       ; $6995: $6a
    add c                                         ; $6996: $81
    cp c                                          ; $6997: $b9
    ld b, [hl]                                    ; $6998: $46
    jr nz, jr_0c6_6a19                            ; $6999: $20 $7e

    add c                                         ; $699b: $81
    ld b, [hl]                                    ; $699c: $46
    ld bc, $5da4                                  ; $699d: $01 $a4 $5d
    ld [hl+], a                                   ; $69a0: $22
    rst $18                                       ; $69a1: $df
    jr nz, jr_0c6_69a4                            ; $69a2: $20 $00

jr_0c6_69a4:
    push hl                                       ; $69a4: $e5
    ld [de], a                                    ; $69a5: $12
    cp l                                          ; $69a6: $bd
    ld b, b                                       ; $69a7: $40
    ld l, b                                       ; $69a8: $68
    sub a                                         ; $69a9: $97
    pop de                                        ; $69aa: $d1
    ld a, [bc]                                    ; $69ab: $0a
    nop                                           ; $69ac: $00
    rst $28                                       ; $69ad: $ef
    nop                                           ; $69ae: $00
    ccf                                           ; $69af: $3f
    ld b, b                                       ; $69b0: $40
    ld [hl], a                                    ; $69b1: $77

jr_0c6_69b2:
    adc b                                         ; $69b2: $88
    ld a, a                                       ; $69b3: $7f
    add b                                         ; $69b4: $80
    nop                                           ; $69b5: $00
    rst $08                                       ; $69b6: $cf
    jr nz, jr_0c6_6993                            ; $69b7: $20 $da

    dec b                                         ; $69b9: $05
    sub l                                         ; $69ba: $95
    ld l, d                                       ; $69bb: $6a
    dec [hl]                                      ; $69bc: $35
    add d                                         ; $69bd: $82
    nop                                           ; $69be: $00
    cp a                                          ; $69bf: $bf
    ld b, b                                       ; $69c0: $40
    inc l                                         ; $69c1: $2c
    sub b                                         ; $69c2: $90
    ld [hl], $c9                                  ; $69c3: $36 $c9
    ld a, l                                       ; $69c5: $7d
    add d                                         ; $69c6: $82
    nop                                           ; $69c7: $00
    xor e                                         ; $69c8: $ab
    ld b, h                                       ; $69c9: $44
    rst $18                                       ; $69ca: $df
    nop                                           ; $69cb: $00
    sub d                                         ; $69cc: $92
    ld l, l                                       ; $69cd: $6d
    add l                                         ; $69ce: $85
    ld a, [hl+]                                   ; $69cf: $2a

jr_0c6_69d0:
    jr nz, jr_0c6_69d0                            ; $69d0: $20 $fe

    nop                                           ; $69d2: $00
    add $0a                                       ; $69d3: $c6 $0a
    or l                                          ; $69d5: $b5
    ld [bc], a                                    ; $69d6: $02
    halt                                          ; $69d7: $76
    adc c                                         ; $69d8: $89
    ld l, [hl]                                    ; $69d9: $6e
    nop                                           ; $69da: $00
    db $10                                        ; $69db: $10
    ld [hl], h                                    ; $69dc: $74
    adc e                                         ; $69dd: $8b
    ld e, l                                       ; $69de: $5d
    ld [hl+], a                                   ; $69df: $22
    ld [hl], $89                                  ; $69e0: $36 $89
    ld a, b                                       ; $69e2: $78
    nop                                           ; $69e3: $00
    dec b                                         ; $69e4: $05
    ld d, b                                       ; $69e5: $50
    adc [hl]                                      ; $69e6: $8e
    push de                                       ; $69e7: $d5
    ld a, [hl+]                                   ; $69e8: $2a
    xor $11                                       ; $69e9: $ee $11
    ld c, a                                       ; $69eb: $4f
    nop                                           ; $69ec: $00
    or b                                          ; $69ed: $b0
    cp a                                          ; $69ee: $bf
    ld b, b                                       ; $69ef: $40
    rst $28                                       ; $69f0: $ef
    nop                                           ; $69f1: $00
    cp e                                          ; $69f2: $bb
    ld b, b                                       ; $69f3: $40
    sub $00                                       ; $69f4: $d6 $00
    ld bc, $926d                                  ; $69f6: $01 $6d $92
    ld [$bf05], a                                 ; $69f9: $ea $05 $bf
    ld b, b                                       ; $69fc: $40
    di                                            ; $69fd: $f3
    nop                                           ; $69fe: $00
    inc c                                         ; $69ff: $0c
    ld b, a                                       ; $6a00: $47
    cp b                                          ; $6a01: $b8
    sub $09                                       ; $6a02: $d6 $09
    ld a, d                                       ; $6a04: $7a
    add b                                         ; $6a05: $80
    xor a                                         ; $6a06: $af
    nop                                           ; $6a07: $00
    ld b, b                                       ; $6a08: $40
    xor l                                         ; $6a09: $ad
    ld d, d                                       ; $6a0a: $52
    ld a, a                                       ; $6a0b: $7f
    add b                                         ; $6a0c: $80
    db $ed                                        ; $6a0d: $ed
    nop                                           ; $6a0e: $00
    ld a, [hl-]                                   ; $6a0f: $3a
    nop                                           ; $6a10: $00
    ret nz                                        ; $6a11: $c0

    ld c, [hl]                                    ; $6a12: $4e
    or c                                          ; $6a13: $b1
    rst $18                                       ; $6a14: $df
    jr nz, jr_0c6_69b2                            ; $6a15: $20 $9b

jr_0c6_6a17:
    ld b, h                                       ; $6a17: $44
    sub [hl]                                      ; $6a18: $96

jr_0c6_6a19:
    nop                                           ; $6a19: $00
    ld l, c                                       ; $6a1a: $69
    sub a                                         ; $6a1b: $97
    ld c, b                                       ; $6a1c: $48
    ld l, a                                       ; $6a1d: $6f
    db $10                                        ; $6a1e: $10
    push af                                       ; $6a1f: $f5
    ld [$009b], sp                                ; $6a20: $08 $9b $00
    ld h, b                                       ; $6a23: $60
    ld [hl-], a                                   ; $6a24: $32
    call Call_000_225c                            ; $6a25: $cd $5c $22
    ei                                            ; $6a28: $fb
    nop                                           ; $6a29: $00
    rst $00                                       ; $6a2a: $c7
    nop                                           ; $6a2b: $00
    ld [$926d], sp                                ; $6a2c: $08 $6d $92
    db $ec                                        ; $6a2f: $ec
    inc de                                        ; $6a30: $13
    ld a, [$2f01]                                 ; $6a31: $fa $01 $2f
    nop                                           ; $6a34: $00
    sub b                                         ; $6a35: $90
    ld [hl-], a                                   ; $6a36: $32
    ret z                                         ; $6a37: $c8

    db $ec                                        ; $6a38: $ec
    ld bc, $50af                                  ; $6a39: $01 $af $50
    cp $09                                        ; $6a3c: $fe $09
    ld bc, $7087                                  ; $6a3e: $01 $87 $70
    rst $30                                       ; $6a41: $f7
    xor h                                         ; $6a42: $ac
    ld bc, $822d                                  ; $6a43: $01 $2d $82
    ld [hl], $0a                                  ; $6a46: $36 $0a
    nop                                           ; $6a48: $00
    xor b                                         ; $6a49: $a8
    ld d, a                                       ; $6a4a: $57
    rst $38                                       ; $6a4b: $ff
    nop                                           ; $6a4c: $00
    jp c, Jump_000_3b25                           ; $6a4d: $da $25 $3b

    call nz, $ff00                                ; $6a50: $c4 $00 $ff
    nop                                           ; $6a53: $00
    ld e, l                                       ; $6a54: $5d
    add d                                         ; $6a55: $82
    rst $18                                       ; $6a56: $df
    jr nz, @-$05                                  ; $6a57: $20 $f9

    ld b, $00                                     ; $6a59: $06 $00
    xor [hl]                                      ; $6a5b: $ae
    ld d, c                                       ; $6a5c: $51
    cp [hl]                                       ; $6a5d: $be
    ld bc, $02ed                                  ; $6a5e: $01 $ed $02
    ld l, e                                       ; $6a61: $6b
    sub h                                         ; $6a62: $94
    jr nz, jr_0c6_6a17                            ; $6a63: $20 $b2

    ld b, h                                       ; $6a65: $44
    ld a, [bc]                                    ; $6a66: $0a
    ld bc, $db80                                  ; $6a67: $01 $80 $db
    nop                                           ; $6a6a: $00
    cp l                                          ; $6a6b: $bd
    ld b, d                                       ; $6a6c: $42
    nop                                           ; $6a6d: $00
    db $dd                                        ; $6a6e: $dd
    ld [hl+], a                                   ; $6a6f: $22
    ret                                           ; $6a70: $c9


    ld d, $04                                     ; $6a71: $16 $04
    ei                                            ; $6a73: $fb
    or l                                          ; $6a74: $b5
    ld [bc], a                                    ; $6a75: $02
    nop                                           ; $6a76: $00
    ld a, a                                       ; $6a77: $7f
    add b                                         ; $6a78: $80
    ld d, a                                       ; $6a79: $57
    adc b                                         ; $6a7a: $88
    ei                                            ; $6a7b: $fb
    nop                                           ; $6a7c: $00
    ld [hl], $c9                                  ; $6a7d: $36 $c9
    nop                                           ; $6a7f: $00

jr_0c6_6a80:
    db $db                                        ; $6a80: $db
    inc h                                         ; $6a81: $24
    db $ec                                        ; $6a82: $ec
    ld [bc], a                                    ; $6a83: $02
    cp [hl]                                       ; $6a84: $be
    ld b, c                                       ; $6a85: $41
    rst $18                                       ; $6a86: $df
    jr nz, jr_0c6_6a8d                            ; $6a87: $20 $04

    ld h, d                                       ; $6a89: $62
    sbc c                                         ; $6a8a: $99
    inc sp                                        ; $6a8b: $33
    ld c, h                                       ; $6a8c: $4c

jr_0c6_6a8d:
    or [hl]                                       ; $6a8d: $b6
    db $10                                        ; $6a8e: $10
    ld bc, $10cf                                  ; $6a8f: $01 $cf $10
    nop                                           ; $6a92: $00
    sbc h                                         ; $6a93: $9c
    ld h, e                                       ; $6a94: $63
    sub l                                         ; $6a95: $95
    ld l, d                                       ; $6a96: $6a
    xor e                                         ; $6a97: $ab
    inc b                                         ; $6a98: $04
    cp $01                                        ; $6a99: $fe $01
    nop                                           ; $6a9b: $00
    ld l, $91                                     ; $6a9c: $2e $91
    rst $30                                       ; $6a9e: $f7
    nop                                           ; $6a9f: $00
    db $ec                                        ; $6aa0: $ec
    inc de                                        ; $6aa1: $13
    db $eb                                        ; $6aa2: $eb
    stop                                          ; $6aa3: $10 $00
    dec d                                         ; $6aa5: $15
    adc b                                         ; $6aa6: $88
    ld a, e                                       ; $6aa7: $7b

jr_0c6_6aa8:
    add h                                         ; $6aa8: $84
    ld e, a                                       ; $6aa9: $5f
    add b                                         ; $6aaa: $80
    and l                                         ; $6aab: $a5
    ld d, d                                       ; $6aac: $52
    nop                                           ; $6aad: $00
    and $19                                       ; $6aae: $e6 $19
    db $dd                                        ; $6ab0: $dd
    jr nz, jr_0c6_6aa8                            ; $6ab1: $20 $f5

    ld a, [bc]                                    ; $6ab3: $0a
    sbc a                                         ; $6ab4: $9f
    jr nz, jr_0c6_6ab7                            ; $6ab5: $20 $00

jr_0c6_6ab7:
    jr c, jr_0c6_6a80                             ; $6ab7: $38 $c7

    dec a                                         ; $6ab9: $3d
    ret nz                                        ; $6aba: $c0

    ld e, c                                       ; $6abb: $59
    ld h, $e5                                     ; $6abc: $26 $e5

jr_0c6_6abe:
    stop                                          ; $6abe: $10 $00
    ld e, a                                       ; $6ac0: $5f
    nop                                           ; $6ac1: $00
    sbc d                                         ; $6ac2: $9a
    ld hl, $0af5                                  ; $6ac3: $21 $f5 $0a
    rst $18                                       ; $6ac6: $df
    jr nz, jr_0c6_6ac9                            ; $6ac7: $20 $00

jr_0c6_6ac9:
    ld a, c                                       ; $6ac9: $79
    ld b, $d6                                     ; $6aca: $06 $d6
    add hl, hl                                    ; $6acc: $29
    rst $38                                       ; $6acd: $ff
    nop                                           ; $6ace: $00
    xor e                                         ; $6acf: $ab
    ld d, b                                       ; $6ad0: $50
    ld [bc], a                                    ; $6ad1: $02
    cp e                                          ; $6ad2: $bb
    ld b, h                                       ; $6ad3: $44
    ld a, a                                       ; $6ad4: $7f
    nop                                           ; $6ad5: $00
    dec d                                         ; $6ad6: $15
    ld [$02da], a                                 ; $6ad7: $ea $da $02
    ld d, b                                       ; $6ada: $50
    ld [$24db], sp                                ; $6adb: $08 $db $24
    or $08                                        ; $6ade: $f6 $08
    ld a, [de]                                    ; $6ae0: $1a
    ld [bc], a                                    ; $6ae1: $02
    db $10                                        ; $6ae2: $10
    dec sp                                        ; $6ae3: $3b
    ret nz                                        ; $6ae4: $c0

    jr nz, jr_0c6_6abe                            ; $6ae5: $20 $d7

    jr z, jr_0c6_6b53                             ; $6ae7: $28 $6a

    add hl, bc                                    ; $6ae9: $09
    ld b, c                                       ; $6aea: $41
    cp [hl]                                       ; $6aeb: $be
    ld d, [hl]                                    ; $6aec: $56
    add b                                         ; $6aed: $80
    xor a                                         ; $6aee: $af
    nop                                           ; $6aef: $00
    ld d, b                                       ; $6af0: $50
    ld [$7f11], a                                 ; $6af1: $ea $11 $7f
    nop                                           ; $6af4: $00
    and [hl]                                      ; $6af5: $a6
    ld e, c                                       ; $6af6: $59
    db $db                                        ; $6af7: $db
    db $10                                        ; $6af8: $10
    inc h                                         ; $6af9: $24
    sbc l                                         ; $6afa: $9d
    ld h, b                                       ; $6afb: $60
    ld [hl], b                                    ; $6afc: $70
    add hl, bc                                    ; $6afd: $09
    db $ec                                        ; $6afe: $ec
    inc de                                        ; $6aff: $13
    and $09                                       ; $6b00: $e6 $09
    ld b, b                                       ; $6b02: $40
    halt                                          ; $6b03: $76
    inc h                                         ; $6b04: $24
    inc b                                         ; $6b05: $04
    ld e, h                                       ; $6b06: $5c
    add c                                         ; $6b07: $81
    xor c                                         ; $6b08: $a9
    ld b, [hl]                                    ; $6b09: $46
    dec a                                         ; $6b0a: $3d
    jp nz, $dd00                                  ; $6b0b: $c2 $00 $dd

    ld [hl+], a                                   ; $6b0e: $22
    db $dd                                        ; $6b0f: $dd
    ld [hl+], a                                   ; $6b10: $22
    or l                                          ; $6b11: $b5
    ld c, d                                       ; $6b12: $4a
    db $fd                                        ; $6b13: $fd
    ld [bc], a                                    ; $6b14: $02
    ld [bc], a                                    ; $6b15: $02
    sbc $21                                       ; $6b16: $de $21
    scf                                           ; $6b18: $37
    adc b                                         ; $6b19: $88
    db $f4                                        ; $6b1a: $f4
    dec bc                                        ; $6b1b: $0b
    or $0a                                        ; $6b1c: $f6 $0a
    call nc, Call_000_2b00                        ; $6b1e: $d4 $00 $2b
    ld a, h                                       ; $6b21: $7c
    inc bc                                        ; $6b22: $03
    ld l, b                                       ; $6b23: $68
    sub [hl]                                      ; $6b24: $96
    db $db                                        ; $6b25: $db
    inc h                                         ; $6b26: $24
    ei                                            ; $6b27: $fb
    nop                                           ; $6b28: $00
    inc b                                         ; $6b29: $04
    ld h, e                                       ; $6b2a: $63
    sbc h                                         ; $6b2b: $9c
    or $01                                        ; $6b2c: $f6 $01
    ld e, $c1                                     ; $6b2e: $1e $c1
    ld l, d                                       ; $6b30: $6a
    inc b                                         ; $6b31: $04
    sub l                                         ; $6b32: $95
    cp a                                          ; $6b33: $bf
    ld b, b                                       ; $6b34: $40
    or h                                          ; $6b35: $b4
    ld b, e                                       ; $6b36: $43
    ld [hl], $0a                                  ; $6b37: $36 $0a
    adc b                                         ; $6b39: $88
    ld [hl], a                                    ; $6b3a: $77
    nop                                           ; $6b3b: $00
    ld d, a                                       ; $6b3c: $57
    xor b                                         ; $6b3d: $a8
    sbc d                                         ; $6b3e: $9a
    jr nz, @-$67                                  ; $6b3f: $20 $97

    ld l, b                                       ; $6b41: $68
    dec de                                        ; $6b42: $1b
    and b                                         ; $6b43: $a0
    nop                                           ; $6b44: $00
    adc l                                         ; $6b45: $8d
    ld d, d                                       ; $6b46: $52
    cp a                                          ; $6b47: $bf
    nop                                           ; $6b48: $00
    di                                            ; $6b49: $f3
    inc c                                         ; $6b4a: $0c
    rst $00                                       ; $6b4b: $c7
    jr c, jr_0c6_6b4e                             ; $6b4c: $38 $00

jr_0c6_6b4e:
    db $dd                                        ; $6b4e: $dd
    ld [bc], a                                    ; $6b4f: $02
    and h                                         ; $6b50: $a4
    inc bc                                        ; $6b51: $03
    ld sp, hl                                     ; $6b52: $f9

jr_0c6_6b53:
    ld b, $fb                                     ; $6b53: $06 $fb
    inc b                                         ; $6b55: $04
    nop                                           ; $6b56: $00
    ld l, e                                       ; $6b57: $6b
    sub h                                         ; $6b58: $94
    db $f4                                        ; $6b59: $f4
    add hl, bc                                    ; $6b5a: $09
    rst $10                                       ; $6b5b: $d7
    jr nz, jr_0c6_6b92                            ; $6b5c: $20 $34

    rlc b                                         ; $6b5e: $cb $00
    adc c                                         ; $6b60: $89
    ld d, [hl]                                    ; $6b61: $56
    or $01                                        ; $6b62: $f6 $01
    and $19                                       ; $6b64: $e6 $19
    ld d, l                                       ; $6b66: $55
    and d                                         ; $6b67: $a2
    nop                                           ; $6b68: $00
    ld l, e                                       ; $6b69: $6b
    sub b                                         ; $6b6a: $90
    or [hl]                                       ; $6b6b: $b6
    ld b, c                                       ; $6b6c: $41
    cp h                                          ; $6b6d: $bc
    inc bc                                        ; $6b6e: $03
    push hl                                       ; $6b6f: $e5
    ld a, [de]                                    ; $6b70: $1a
    nop                                           ; $6b71: $00
    ei                                            ; $6b72: $fb
    inc b                                         ; $6b73: $04
    push de                                       ; $6b74: $d5
    ld a, [bc]                                    ; $6b75: $0a
    db $eb                                        ; $6b76: $eb
    inc d                                         ; $6b77: $14
    or $09                                        ; $6b78: $f6 $09
    nop                                           ; $6b7a: $00
    sub $29                                       ; $6b7b: $d6 $29
    jp hl                                         ; $6b7d: $e9


    ld [de], a                                    ; $6b7e: $12
    ld a, $c0                                     ; $6b7f: $3e $c0
    call z, $0033                                 ; $6b81: $cc $33 $00
    inc de                                        ; $6b84: $13
    xor h                                         ; $6b85: $ac
    db $ed                                        ; $6b86: $ed
    ld [bc], a                                    ; $6b87: $02
    call $ad32                                    ; $6b88: $cd $32 $ad
    ld b, d                                       ; $6b8b: $42
    nop                                           ; $6b8c: $00
    rst $10                                       ; $6b8d: $d7
    jr nz, jr_0c6_6bfe                            ; $6b8e: $20 $6e

    add c                                         ; $6b90: $81
    pop hl                                        ; $6b91: $e1

jr_0c6_6b92:
    inc d                                         ; $6b92: $14
    rst $10                                       ; $6b93: $d7
    jr z, jr_0c6_6b96                             ; $6b94: $28 $00

jr_0c6_6b96:
    and a                                         ; $6b96: $a7
    ld e, b                                       ; $6b97: $58
    cp e                                          ; $6b98: $bb
    ld b, h                                       ; $6b99: $44
    cp e                                          ; $6b9a: $bb
    ld b, h                                       ; $6b9b: $44
    ld d, a                                       ; $6b9c: $57
    and b                                         ; $6b9d: $a0
    nop                                           ; $6b9e: $00
    sub $29                                       ; $6b9f: $d6 $29
    db $ed                                        ; $6ba1: $ed
    ld [de], a                                    ; $6ba2: $12
    ld a, a                                       ; $6ba3: $7f
    add b                                         ; $6ba4: $80
    ld b, [hl]                                    ; $6ba5: $46
    cp c                                          ; $6ba6: $b9
    nop                                           ; $6ba7: $00
    rst $08                                       ; $6ba8: $cf
    jr nz, jr_0c6_6c1c                            ; $6ba9: $20 $71

    inc c                                         ; $6bab: $0c
    ld b, [hl]                                    ; $6bac: $46
    cp c                                          ; $6bad: $b9
    push hl                                       ; $6bae: $e5
    ld a, [de]                                    ; $6baf: $1a
    nop                                           ; $6bb0: $00
    push bc                                       ; $6bb1: $c5
    ld [hl-], a                                   ; $6bb2: $32
    cp h                                          ; $6bb3: $bc
    ld b, c                                       ; $6bb4: $41
    sbc [hl]                                      ; $6bb5: $9e
    ld h, c                                       ; $6bb6: $61
    inc a                                         ; $6bb7: $3c
    jp $d500                                      ; $6bb8: $c3 $00 $d5


    ld a, [hl+]                                   ; $6bbb: $2a
    reti                                          ; $6bbc: $d9


    ld [hl+], a                                   ; $6bbd: $22
    ld e, c                                       ; $6bbe: $59
    and [hl]                                      ; $6bbf: $a6
    pop af                                        ; $6bc0: $f1
    ld a, [bc]                                    ; $6bc1: $0a
    jr nz, jr_0c6_6c0c                            ; $6bc2: $20 $48

    dec [hl]                                      ; $6bc4: $35
    ld c, l                                       ; $6bc5: $4d
    ld c, $8c                                     ; $6bc6: $0e $8c
    ld [hl], e                                    ; $6bc8: $73
    ld a, a                                       ; $6bc9: $7f
    add b                                         ; $6bca: $80
    xor h                                         ; $6bcb: $ac
    ld [$7f00], sp                                ; $6bcc: $08 $00 $7f
    add b                                         ; $6bcf: $80
    xor a                                         ; $6bd0: $af
    ld l, d                                       ; $6bd1: $6a
    ld bc, $00ff                                  ; $6bd2: $01 $ff $00
    ld a, $00                                     ; $6bd5: $3e $00
    pop bc                                        ; $6bd7: $c1
    ld a, c                                       ; $6bd8: $79
    add [hl]                                      ; $6bd9: $86
    ret c                                         ; $6bda: $d8

    dec h                                         ; $6bdb: $25
    xor a                                         ; $6bdc: $af
    ld d, b                                       ; $6bdd: $50
    ld e, [hl]                                    ; $6bde: $5e
    nop                                           ; $6bdf: $00
    and c                                         ; $6be0: $a1
    or l                                          ; $6be1: $b5
    ld c, d                                       ; $6be2: $4a
    or [hl]                                       ; $6be3: $b6
    ld c, c                                       ; $6be4: $49
    ld c, e                                       ; $6be5: $4b
    sub h                                         ; $6be6: $94
    ld a, e                                       ; $6be7: $7b
    stop                                          ; $6be8: $10 $00
    ld c, [hl]                                    ; $6bea: $4e
    or c                                          ; $6beb: $b1
    cp d                                          ; $6bec: $ba
    inc b                                         ; $6bed: $04
    ld bc, $46a9                                  ; $6bee: $01 $a9 $46
    ei                                            ; $6bf1: $fb
    nop                                           ; $6bf2: $00
    nop                                           ; $6bf3: $00
    db $fd                                        ; $6bf4: $fd
    ld [bc], a                                    ; $6bf5: $02
    db $f4                                        ; $6bf6: $f4
    ld a, [bc]                                    ; $6bf7: $0a
    ld l, a                                       ; $6bf8: $6f
    sub b                                         ; $6bf9: $90
    push af                                       ; $6bfa: $f5
    nop                                           ; $6bfb: $00
    ld [bc], a                                    ; $6bfc: $02
    rst $08                                       ; $6bfd: $cf

jr_0c6_6bfe:
    jr nz, @+$60                                  ; $6bfe: $20 $5e

    ld bc, $942b                                  ; $6c00: $01 $2b $94
    cp a                                          ; $6c03: $bf
    nop                                           ; $6c04: $00
    ld b, b                                       ; $6c05: $40
    ld e, l                                       ; $6c06: $5d
    and d                                         ; $6c07: $a2
    dec a                                         ; $6c08: $3d
    ld b, d                                       ; $6c09: $42
    pop de                                        ; $6c0a: $d1
    inc l                                         ; $6c0b: $2c

jr_0c6_6c0c:
    and d                                         ; $6c0c: $a2
    nop                                           ; $6c0d: $00
    dec d                                         ; $6c0e: $15
    ld e, e                                       ; $6c0f: $5b
    and h                                         ; $6c10: $a4
    db $fc                                        ; $6c11: $fc
    ld [bc], a                                    ; $6c12: $02
    ld a, [c]                                     ; $6c13: $f2
    dec c                                         ; $6c14: $0d
    ld [hl], a                                    ; $6c15: $77
    inc b                                         ; $6c16: $04
    add b                                         ; $6c17: $80
    jp c, Jump_0c6_7425                           ; $6c18: $da $25 $74

    adc d                                         ; $6c1b: $8a

jr_0c6_6c1c:
    jp nz, Jump_000_0203                          ; $6c1c: $c2 $03 $02

    sbc [hl]                                      ; $6c1f: $9e
    nop                                           ; $6c20: $00
    ld b, c                                       ; $6c21: $41
    cp l                                          ; $6c22: $bd
    ld [bc], a                                    ; $6c23: $02
    ld d, a                                       ; $6c24: $57
    jr z, jr_0c6_6ca5                             ; $6c25: $28 $7e

    add c                                         ; $6c27: $81
    cp e                                          ; $6c28: $bb
    nop                                           ; $6c29: $00
    ld b, h                                       ; $6c2a: $44
    ld a, [hl-]                                   ; $6c2b: $3a

jr_0c6_6c2c:
    ld b, l                                       ; $6c2c: $45
    jp nz, $8539                                  ; $6c2d: $c2 $39 $85

    ld a, [hl+]                                   ; $6c30: $2a
    cp l                                          ; $6c31: $bd
    nop                                           ; $6c32: $00
    ld b, d                                       ; $6c33: $42
    and $18                                       ; $6c34: $e6 $18
    ei                                            ; $6c36: $fb
    inc b                                         ; $6c37: $04
    reti                                          ; $6c38: $d9


    ld [bc], a                                    ; $6c39: $02
    or e                                          ; $6c3a: $b3
    nop                                           ; $6c3b: $00
    ld c, h                                       ; $6c3c: $4c
    or l                                          ; $6c3d: $b5
    ld a, [bc]                                    ; $6c3e: $0a
    halt                                          ; $6c3f: $76
    adc b                                         ; $6c40: $88
    ld e, [hl]                                    ; $6c41: $5e
    ld hl, $00b9                                  ; $6c42: $21 $b9 $00
    ld b, $db                                     ; $6c45: $06 $db
    nop                                           ; $6c47: $00
    rst $20                                       ; $6c48: $e7
    db $10                                        ; $6c49: $10
    ld [$2715], a                                 ; $6c4a: $ea $15 $27
    nop                                           ; $6c4d: $00
    ret c                                         ; $6c4e: $d8

    ld e, a                                       ; $6c4f: $5f
    and b                                         ; $6c50: $a0
    ld l, d                                       ; $6c51: $6a
    add b                                         ; $6c52: $80
    rst $30                                       ; $6c53: $f7
    nop                                           ; $6c54: $00
    ld e, a                                       ; $6c55: $5f

jr_0c6_6c56:
    nop                                           ; $6c56: $00
    nop                                           ; $6c57: $00
    sbc l                                         ; $6c58: $9d
    jr nz, jr_0c6_6c56                            ; $6c59: $20 $fb

    inc b                                         ; $6c5b: $04
    ld a, [$6c01]                                 ; $6c5c: $fa $01 $6c
    nop                                           ; $6c5f: $00
    sub e                                         ; $6c60: $93
    ld d, e                                       ; $6c61: $53
    inc l                                         ; $6c62: $2c
    db $db                                        ; $6c63: $db
    inc h                                         ; $6c64: $24
    or e                                          ; $6c65: $b3
    inc b                                         ; $6c66: $04
    db $db                                        ; $6c67: $db
    ld hl, $3e24                                  ; $6c68: $21 $24 $3e
    jr jr_0c6_6c72                                ; $6c6b: $18 $05

    xor a                                         ; $6c6d: $af
    ld d, b                                       ; $6c6e: $50
    rst $08                                       ; $6c6f: $cf
    jr nc, jr_0c6_6c2c                            ; $6c70: $30 $ba

jr_0c6_6c72:
    ld [$7700], sp                                ; $6c72: $08 $00 $77
    adc b                                         ; $6c75: $88
    xor $11                                       ; $6c76: $ee $11
    ld a, [c]                                     ; $6c78: $f2
    ld [$3449], sp                                ; $6c79: $08 $49 $34
    nop                                           ; $6c7c: $00
    db $dd                                        ; $6c7d: $dd
    ld [bc], a                                    ; $6c7e: $02
    ld [$d015], a                                 ; $6c7f: $ea $15 $d0
    add hl, hl                                    ; $6c82: $29
    cp a                                          ; $6c83: $bf
    ld b, b                                       ; $6c84: $40
    nop                                           ; $6c85: $00
    sub $08                                       ; $6c86: $d6 $08
    ld a, d                                       ; $6c88: $7a
    dec b                                         ; $6c89: $05
    rst $30                                       ; $6c8a: $f7
    ld [$a05f], sp                                ; $6c8b: $08 $5f $a0
    nop                                           ; $6c8e: $00
    ei                                            ; $6c8f: $fb
    inc b                                         ; $6c90: $04
    xor $11                                       ; $6c91: $ee $11
    push af                                       ; $6c93: $f5
    ld a, [bc]                                    ; $6c94: $0a
    ld b, h                                       ; $6c95: $44
    or e                                          ; $6c96: $b3
    nop                                           ; $6c97: $00
    adc e                                         ; $6c98: $8b
    ld d, h                                       ; $6c99: $54
    call c, $e522                                 ; $6c9a: $dc $22 $e5
    db $10                                        ; $6c9d: $10
    sub d                                         ; $6c9e: $92
    ld l, c                                       ; $6c9f: $69
    nop                                           ; $6ca0: $00
    cp e                                          ; $6ca1: $bb
    inc b                                         ; $6ca2: $04
    push de                                       ; $6ca3: $d5
    ld a, [hl+]                                   ; $6ca4: $2a

jr_0c6_6ca5:
    and c                                         ; $6ca5: $a1
    ld d, d                                       ; $6ca6: $52
    ld a, [hl]                                    ; $6ca7: $7e
    add c                                         ; $6ca8: $81
    nop                                           ; $6ca9: $00
    xor l                                         ; $6caa: $ad
    db $10                                        ; $6cab: $10
    push af                                       ; $6cac: $f5
    ld a, [bc]                                    ; $6cad: $0a
    rst $28                                       ; $6cae: $ef
    db $10                                        ; $6caf: $10
    cp a                                          ; $6cb0: $bf
    ld b, b                                       ; $6cb1: $40
    ld b, b                                       ; $6cb2: $40
    or $16                                        ; $6cb3: $f6 $16
    inc bc                                        ; $6cb5: $03
    ld [$8914], a                                 ; $6cb6: $ea $14 $89
    ld h, [hl]                                    ; $6cb9: $66
    dec d                                         ; $6cba: $15
    xor b                                         ; $6cbb: $a8
    call nz, Call_000_0e1a                        ; $6cbc: $c4 $1a $0e
    and $03                                       ; $6cbf: $e6 $03
    db $10                                        ; $6cc1: $10
    sbc c                                         ; $6cc2: $99
    ld h, [hl]                                    ; $6cc3: $66
    ld a, [$7b08]                                 ; $6cc4: $fa $08 $7b
    add h                                         ; $6cc7: $84
    inc b                                         ; $6cc8: $04
    cp a                                          ; $6cc9: $bf
    ld b, b                                       ; $6cca: $40
    ld h, [hl]                                    ; $6ccb: $66
    sbc c                                         ; $6ccc: $99
    rra                                           ; $6ccd: $1f
    add b                                         ; $6cce: $80
    ld [bc], a                                    ; $6ccf: $02
    ld h, a                                       ; $6cd0: $67
    ld [$fd00], sp                                ; $6cd1: $08 $00 $fd

jr_0c6_6cd4:
    ld [bc], a                                    ; $6cd4: $02
    xor $11                                       ; $6cd5: $ee $11
    db $db                                        ; $6cd7: $db
    inc b                                         ; $6cd8: $04
    rst $18                                       ; $6cd9: $df
    nop                                           ; $6cda: $00
    ld [bc], a                                    ; $6cdb: $02
    ld l, [hl]                                    ; $6cdc: $6e
    sub c                                         ; $6cdd: $91
    xor a                                         ; $6cde: $af
    nop                                           ; $6cdf: $00
    ld sp, hl                                     ; $6ce0: $f9
    inc b                                         ; $6ce1: $04
    ld d, $0a                                     ; $6ce2: $16 $0a
    add $00                                       ; $6ce4: $c6 $00
    add hl, sp                                    ; $6ce6: $39
    ld a, [c]                                     ; $6ce7: $f2
    ld [$403f], sp                                ; $6ce8: $08 $3f $40
    ld h, $d9                                     ; $6ceb: $26 $d9
    ccf                                           ; $6ced: $3f
    ld [$eac0], sp                                ; $6cee: $08 $c0 $ea
    dec d                                         ; $6cf1: $15
    ld d, a                                       ; $6cf2: $57
    jr nz, jr_0c6_6cf5                            ; $6cf3: $20 $00

jr_0c6_6cf5:
    sbc $21                                       ; $6cf5: $de $21

jr_0c6_6cf7:
    or a                                          ; $6cf7: $b7
    inc b                                         ; $6cf8: $04
    ld [$00fe], sp                                ; $6cf9: $08 $fe $00
    ld e, h                                       ; $6cfc: $5c
    and e                                         ; $6cfd: $a3
    jr nz, @+$3a                                  ; $6cfe: $20 $38

    push hl                                       ; $6d00: $e5
    stop                                          ; $6d01: $10 $00
    scf                                           ; $6d03: $37
    adc b                                         ; $6d04: $88
    ld [hl], b                                    ; $6d05: $70
    adc a                                         ; $6d06: $8f
    ld l, $c0                                     ; $6d07: $2e $c0
    cp [hl]                                       ; $6d09: $be

jr_0c6_6d0a:
    ld b, b                                       ; $6d0a: $40
    nop                                           ; $6d0b: $00
    ld e, h                                       ; $6d0c: $5c
    inc hl                                        ; $6d0d: $23
    ld [$df10], a                                 ; $6d0e: $ea $10 $df
    jr nz, jr_0c6_6d0a                            ; $6d11: $20 $f7

    ld [$5d00], sp                                ; $6d13: $08 $00 $5d
    and b                                         ; $6d16: $a0
    ld [hl], $c9                                  ; $6d17: $36 $c9
    rst $38                                       ; $6d19: $ff
    nop                                           ; $6d1a: $00
    jp RST_28                                     ; $6d1b: $c3 $28 $00


    rst $38                                       ; $6d1e: $ff
    nop                                           ; $6d1f: $00
    swap b                                        ; $6d20: $cb $30
    ld e, e                                       ; $6d22: $5b
    and h                                         ; $6d23: $a4
    or l                                          ; $6d24: $b5
    ld c, d                                       ; $6d25: $4a
    nop                                           ; $6d26: $00
    db $dd                                        ; $6d27: $dd
    jr nz, jr_0c6_6cd4                            ; $6d28: $20 $aa

    ld d, l                                       ; $6d2a: $55
    db $ed                                        ; $6d2b: $ed
    ld [de], a                                    ; $6d2c: $12
    ld e, [hl]                                    ; $6d2d: $5e
    add b                                         ; $6d2e: $80
    ld b, b                                       ; $6d2f: $40
    ei                                            ; $6d30: $fb
    ld h, b                                       ; $6d31: $60
    inc d                                         ; $6d32: $14
    rst $28                                       ; $6d33: $ef
    db $10                                        ; $6d34: $10
    ld b, [hl]                                    ; $6d35: $46
    ld sp, $3ac5                                  ; $6d36: $31 $c5 $3a
    jr nz, jr_0c6_6cf7                            ; $6d39: $20 $bc

    ld b, c                                       ; $6d3b: $41
    ldh a, [$3b]                                  ; $6d3c: $f0 $3b
    rst $38                                       ; $6d3e: $ff
    nop                                           ; $6d3f: $00
    sbc c                                         ; $6d40: $99
    ld h, [hl]                                    ; $6d41: $66
    ld a, a                                       ; $6d42: $7f
    add b                                         ; $6d43: $80
    ld a, [$ae05]                                 ; $6d44: $fa $05 $ae
    ld de, $04fb                                  ; $6d47: $11 $fb $04
    cp l                                          ; $6d4a: $bd
    ld b, d                                       ; $6d4b: $42
    or a                                          ; $6d4c: $b7
    ld [bc], a                                    ; $6d4d: $02
    ld [$017c], sp                                ; $6d4e: $08 $7c $01
    cp b                                          ; $6d51: $b8
    ld b, a                                       ; $6d52: $47
    ld e, [hl]                                    ; $6d53: $5e
    xor d                                         ; $6d54: $aa
    dec b                                         ; $6d55: $05
    cp a                                          ; $6d56: $bf
    nop                                           ; $6d57: $00
    nop                                           ; $6d58: $00
    ld c, e                                       ; $6d59: $4b
    and h                                         ; $6d5a: $a4
    adc l                                         ; $6d5b: $8d
    ld [hl], d                                    ; $6d5c: $72
    push hl                                       ; $6d5d: $e5
    db $10                                        ; $6d5e: $10
    cp $08                                        ; $6d5f: $fe $08
    nop                                           ; $6d61: $00
    inc sp                                        ; $6d62: $33
    call z, $aafe                                 ; $6d63: $cc $fe $aa
    dec b                                         ; $6d66: $05
    ld e, l                                       ; $6d67: $5d
    ld [hl+], a                                   ; $6d68: $22
    or $00                                        ; $6d69: $f6 $00
    add hl, bc                                    ; $6d6b: $09
    ld a, e                                       ; $6d6c: $7b
    add h                                         ; $6d6d: $84
    ld l, a                                       ; $6d6e: $6f
    db $10                                        ; $6d6f: $10
    ld hl, sp+$02                                 ; $6d70: $f8 $02
    ld [hl], c                                    ; $6d72: $71
    nop                                           ; $6d73: $00
    adc [hl]                                      ; $6d74: $8e
    cp h                                          ; $6d75: $bc
    inc bc                                        ; $6d76: $03
    and $11                                       ; $6d77: $e6 $11
    ld a, l                                       ; $6d79: $7d
    nop                                           ; $6d7a: $00
    sub a                                         ; $6d7b: $97
    nop                                           ; $6d7c: $00
    ld c, b                                       ; $6d7d: $48
    dec de                                        ; $6d7e: $1b
    db $e4                                        ; $6d7f: $e4
    sla b                                         ; $6d80: $cb $20
    db $dd                                        ; $6d82: $dd
    ld [hl+], a                                   ; $6d83: $22
    ret nz                                        ; $6d84: $c0

    inc d                                         ; $6d85: $14
    ccf                                           ; $6d86: $3f
    cp e                                          ; $6d87: $bb
    nop                                           ; $6d88: $00
    jr nc, @+$0e                                  ; $6d89: $30 $0c

    xor e                                         ; $6d8b: $ab

jr_0c6_6d8c:
    ld d, h                                       ; $6d8c: $54
    inc b                                         ; $6d8d: $04
    rst $28                                       ; $6d8e: $ef
    stop                                          ; $6d8f: $10 $00
    sub [hl]                                      ; $6d91: $96
    ld hl, $906b                                  ; $6d92: $21 $6b $90
    or l                                          ; $6d95: $b5
    ld [$0ef1], sp                                ; $6d96: $08 $f1 $0e
    nop                                           ; $6d99: $00
    cp $00                                        ; $6d9a: $fe $00
    rst $00                                       ; $6d9c: $c7
    jr z, jr_0c6_6d8c                             ; $6d9d: $28 $ed

    ld [de], a                                    ; $6d9f: $12
    xor l                                         ; $6da0: $ad
    ld d, d                                       ; $6da1: $52
    ld b, b                                       ; $6da2: $40
    push de                                       ; $6da3: $d5
    sub $12                                       ; $6da4: $d6 $12
    ld d, c                                       ; $6da6: $51
    xor [hl]                                      ; $6da7: $ae
    sbc e                                         ; $6da8: $9b
    ld h, h                                       ; $6da9: $64
    rst $08                                       ; $6daa: $cf
    jr nz, jr_0c6_6db1                            ; $6dab: $20 $04

    ld e, e                                       ; $6dad: $5b
    add h                                         ; $6dae: $84
    xor a                                         ; $6daf: $af
    ld b, b                                       ; $6db0: $40

jr_0c6_6db1:
    dec l                                         ; $6db1: $2d
    ld a, [de]                                    ; $6db2: $1a
    ld [bc], a                                    ; $6db3: $02
    ld l, d                                       ; $6db4: $6a
    ld de, $e220                                  ; $6db5: $11 $20 $e2
    dec e                                         ; $6db8: $1d
    jr nz, jr_0c6_6de3                            ; $6db9: $20 $28

    xor d                                         ; $6dbb: $aa
    inc d                                         ; $6dbc: $14
    ccf                                           ; $6dbd: $3f
    ld b, b                                       ; $6dbe: $40
    ld [hl], b                                    ; $6dbf: $70
    ld [de], a                                    ; $6dc0: $12
    adc [hl]                                      ; $6dc1: $8e
    and e                                         ; $6dc2: $a3
    ld e, h                                       ; $6dc3: $5c
    jr nz, @+$2a                                  ; $6dc4: $20 $28

    push af                                       ; $6dc6: $f5
    ld [bc], a                                    ; $6dc7: $02
    ld e, h                                       ; $6dc8: $5c
    dec bc                                        ; $6dc9: $0b
    and e                                         ; $6dca: $a3
    ld b, $5c                                     ; $6dcb: $06 $5c
    ld l, e                                       ; $6dcd: $6b
    inc b                                         ; $6dce: $04
    cp l                                          ; $6dcf: $bd
    ld b, b                                       ; $6dd0: $40
    ld [hl], $0a                                  ; $6dd1: $36 $0a
    ld e, h                                       ; $6dd3: $5c
    ld bc, $0000                                  ; $6dd4: $01 $00 $00
    xor [hl]                                      ; $6dd7: $ae
    ld d, b                                       ; $6dd8: $50
    db $d3                                        ; $6dd9: $d3
    inc l                                         ; $6dda: $2c
    ld [hl], a                                    ; $6ddb: $77
    adc b                                         ; $6ddc: $88
    ld b, [hl]                                    ; $6ddd: $46
    ld sp, $36a0                                  ; $6dde: $31 $a0 $36
    ld a, [bc]                                    ; $6de1: $0a
    ld l, e                                       ; $6de2: $6b

jr_0c6_6de3:
    ld l, d                                       ; $6de3: $6a
    ld bc, $20de                                  ; $6de4: $01 $de $20
    ld [$bd15], a                                 ; $6de7: $ea $15 $bd
    ld bc, $6e42                                  ; $6dea: $01 $42 $6e
    ld de, $05f8                                  ; $6ded: $11 $f8 $05
    and h                                         ; $6df0: $a4
    ld a, [de]                                    ; $6df1: $1a
    ldh a, [rWX]                                  ; $6df2: $f0 $4b
    nop                                           ; $6df4: $00
    rst $10                                       ; $6df5: $d7
    nop                                           ; $6df6: $00
    ld l, l                                       ; $6df7: $6d
    sub d                                         ; $6df8: $92
    ld e, e                                       ; $6df9: $5b
    add h                                         ; $6dfa: $84
    xor [hl]                                      ; $6dfb: $ae
    ld b, b                                       ; $6dfc: $40
    nop                                           ; $6dfd: $00
    call nc, $c523                                ; $6dfe: $d4 $23 $c5
    ld a, [hl-]                                   ; $6e01: $3a
    db $fd                                        ; $6e02: $fd
    nop                                           ; $6e03: $00
    adc a                                         ; $6e04: $8f
    ld d, b                                       ; $6e05: $50
    nop                                           ; $6e06: $00
    jp c, $5b25                                   ; $6e07: $da $25 $5b

    and h                                         ; $6e0a: $a4
    ld d, l                                       ; $6e0b: $55
    jr z, jr_0c6_6e8d                             ; $6e0c: $28 $7f

    add b                                         ; $6e0e: $80
    nop                                           ; $6e0f: $00
    pop hl                                        ; $6e10: $e1
    inc e                                         ; $6e11: $1c
    ld b, a                                       ; $6e12: $47
    cp b                                          ; $6e13: $b8
    ld [hl], $c8                                  ; $6e14: $36 $c8
    sbc a                                         ; $6e16: $9f
    ld b, b                                       ; $6e17: $40
    nop                                           ; $6e18: $00
    or [hl]                                       ; $6e19: $b6
    add hl, bc                                    ; $6e1a: $09
    ld e, a                                       ; $6e1b: $5f
    add b                                         ; $6e1c: $80
    ld h, b                                       ; $6e1d: $60
    add hl, bc                                    ; $6e1e: $09
    and c                                         ; $6e1f: $a1
    rlca                                          ; $6e20: $07
    nop                                           ; $6e21: $00
    add b                                         ; $6e22: $80
    rst $38                                       ; $6e23: $ff
    ld b, b                                       ; $6e24: $40
    ret nz                                        ; $6e25: $c0

    sbc a                                         ; $6e26: $9f
    ret nz                                        ; $6e27: $c0

    ld d, b                                       ; $6e28: $50
    rst $08                                       ; $6e29: $cf
    nop                                           ; $6e2a: $00
    sub b                                         ; $6e2b: $90
    rst $08                                       ; $6e2c: $cf
    ld h, b                                       ; $6e2d: $60
    rst $18                                       ; $6e2e: $df
    cp a                                          ; $6e2f: $bf
    rst $38                                       ; $6e30: $ff
    ld b, b                                       ; $6e31: $40
    rst $38                                       ; $6e32: $ff
    ld a, [de]                                    ; $6e33: $1a
    nop                                           ; $6e34: $00
    rst $38                                       ; $6e35: $ff
    nop                                           ; $6e36: $00
    inc bc                                        ; $6e37: $03
    jr jr_0c6_6e44                                ; $6e38: $18 $0a

    nop                                           ; $6e3a: $00
    rst $38                                       ; $6e3b: $ff
    ld c, $00                                     ; $6e3c: $0e $00
    inc bc                                        ; $6e3e: $03
    ld bc, $0fff                                  ; $6e3f: $01 $ff $0f
    dec b                                         ; $6e42: $05
    push af                                       ; $6e43: $f5

jr_0c6_6e44:
    dec c                                         ; $6e44: $0d
    dec b                                         ; $6e45: $05
    db $fd                                        ; $6e46: $fd
    ld [bc], a                                    ; $6e47: $02
    ld [$ff02], sp                                ; $6e48: $08 $02 $ff
    db $fd                                        ; $6e4b: $fd
    nop                                           ; $6e4c: $00
    rst $38                                       ; $6e4d: $ff
    ld b, e                                       ; $6e4e: $43
    ccf                                           ; $6e4f: $3f
    ld [bc], a                                    ; $6e50: $02
    ld e, b                                       ; $6e51: $58
    rst $20                                       ; $6e52: $e7
    ld b, b                                       ; $6e53: $40
    rst $38                                       ; $6e54: $ff
    ld [bc], a                                    ; $6e55: $02
    ld [$ffe3], sp                                ; $6e56: $08 $e3 $ff
    db $e4                                        ; $6e59: $e4
    cp $e3                                        ; $6e5a: $fe $e3
    cp $00                                        ; $6e5c: $fe $00
    ld [c], a                                     ; $6e5e: $e2
    rst $38                                       ; $6e5f: $ff
    pop hl                                        ; $6e60: $e1
    rst $38                                       ; $6e61: $ff
    jp $dbff                                      ; $6e62: $c3 $ff $db


    rst $20                                       ; $6e65: $e7
    nop                                           ; $6e66: $00
    rst $30                                       ; $6e67: $f7
    xor $ef                                       ; $6e68: $ee $ef
    rst $30                                       ; $6e6a: $f7
    ld a, [hl]                                    ; $6e6b: $7e
    nop                                           ; $6e6c: $00
    nop                                           ; $6e6d: $00
    nop                                           ; $6e6e: $00
    nop                                           ; $6e6f: $00
    add c                                         ; $6e70: $81
    nop                                           ; $6e71: $00
    rst $20                                       ; $6e72: $e7
    add c                                         ; $6e73: $81
    ld sp, hl                                     ; $6e74: $f9
    add sp, -$03                                  ; $6e75: $e8 $fd
    add sp, $00                                   ; $6e77: $e8 $00
    db $ed                                        ; $6e79: $ed
    ld hl, sp-$35                                 ; $6e7a: $f8 $cb
    rst $38                                       ; $6e7c: $ff
    jr z, @+$81                                   ; $6e7d: $28 $7f

    ret z                                         ; $6e7f: $c8

    ld a, a                                       ; $6e80: $7f
    nop                                           ; $6e81: $00
    ld c, a                                       ; $6e82: $4f
    rst $30                                       ; $6e83: $f7
    adc a                                         ; $6e84: $8f

jr_0c6_6e85:
    ldh a, [$80]                                  ; $6e85: $f0 $80
    ret nz                                        ; $6e87: $c0

    ld e, a                                       ; $6e88: $5f
    ret nz                                        ; $6e89: $c0

    nop                                           ; $6e8a: $00
    sub b                                         ; $6e8b: $90
    rst $08                                       ; $6e8c: $cf

jr_0c6_6e8d:
    ld d, b                                       ; $6e8d: $50
    rst $08                                       ; $6e8e: $cf
    and b                                         ; $6e8f: $a0
    rst $18                                       ; $6e90: $df
    ld a, a                                       ; $6e91: $7f
    rst $38                                       ; $6e92: $ff
    ld h, b                                       ; $6e93: $60
    add b                                         ; $6e94: $80
    ld h, d                                       ; $6e95: $62
    ld [$506e], sp                                ; $6e96: $08 $6e $50
    rst $38                                       ; $6e99: $ff
    rst $38                                       ; $6e9a: $ff
    inc c                                         ; $6e9b: $0c
    rlca                                          ; $6e9c: $07
    db $f4                                        ; $6e9d: $f4
    dec d                                         ; $6e9e: $15
    rrca                                          ; $6e9f: $0f
    inc b                                         ; $6ea0: $04
    rst $38                                       ; $6ea1: $ff
    ld [bc], a                                    ; $6ea2: $02
    ld [$82fc], sp                                ; $6ea3: $08 $fc $82
    db $10                                        ; $6ea6: $10
    pop hl                                        ; $6ea7: $e1
    ld d, h                                       ; $6ea8: $54
    nop                                           ; $6ea9: $00
    ld b, b                                       ; $6eaa: $40
    ldh [rSC], a                                  ; $6eab: $e0 $02
    ld b, b                                       ; $6ead: $40
    ld b, d                                       ; $6eae: $42
    jp $00c3                                      ; $6eaf: $c3 $c3 $00


    cp l                                          ; $6eb2: $bd
    jp Jump_0c6_7e08                              ; $6eb3: $c3 $08 $7e


    rst $38                                       ; $6eb6: $ff
    add b                                         ; $6eb7: $80
    ld a, a                                       ; $6eb8: $7f
    and e                                         ; $6eb9: $a3
    stop                                          ; $6eba: $10 $00
    adc a                                         ; $6ebc: $8f
    ldh a, [rP1]                                  ; $6ebd: $f0 $00

jr_0c6_6ebf:
    adc a                                         ; $6ebf: $8f
    ldh a, [rIF]                                  ; $6ec0: $f0 $0f
    ldh a, [$1f]                                  ; $6ec2: $f0 $1f
    ldh [$7f], a                                  ; $6ec4: $e0 $7f
    add b                                         ; $6ec6: $80
    rst $20                                       ; $6ec7: $e7
    db $10                                        ; $6ec8: $10
    jr jr_0c6_6e85                                ; $6ec9: $18 $ba

    jr jr_0c6_6e8d                                ; $6ecb: $18 $c0

    ld [$fe01], sp                                ; $6ecd: $08 $01 $fe
    ld [bc], a                                    ; $6ed0: $02
    ld [$3810], sp                                ; $6ed1: $08 $10 $38
    jr nc, jr_0c6_6eee                            ; $6ed4: $30 $18

    sbc b                                         ; $6ed6: $98
    ret nz                                        ; $6ed7: $c0

    ld e, b                                       ; $6ed8: $58
    jp nz, Jump_000_2f3f                          ; $6ed9: $c2 $3f $2f

    jr nc, jr_0c6_6f17                            ; $6edc: $30 $39

    jr nc, jr_0c6_6ebf                            ; $6ede: $30 $df

    xor d                                         ; $6ee0: $aa
    rst $38                                       ; $6ee1: $ff
    nop                                           ; $6ee2: $00

jr_0c6_6ee3:
    nop                                           ; $6ee3: $00
    push de                                       ; $6ee4: $d5
    jr z, @-$10                                   ; $6ee5: $28 $ee

    nop                                           ; $6ee7: $00
    rst $38                                       ; $6ee8: $ff
    ld [bc], a                                    ; $6ee9: $02
    rst $38                                       ; $6eea: $ff
    inc d                                         ; $6eeb: $14
    inc b                                         ; $6eec: $04
    rst $10                                       ; $6eed: $d7

jr_0c6_6eee:
    jr z, jr_0c6_6f01                             ; $6eee: $28 $11

    ld bc, $15a2                                  ; $6ef0: $01 $a2 $15
    ld bc, $ff2a                                  ; $6ef3: $01 $2a $ff
    nop                                           ; $6ef6: $00
    db $10                                        ; $6ef7: $10
    rst $38                                       ; $6ef8: $ff
    nop                                           ; $6ef9: $00
    ld e, a                                       ; $6efa: $5f
    or b                                          ; $6efb: $b0
    rst $18                                       ; $6efc: $df
    jr nz, @+$01                                  ; $6efd: $20 $ff

    nop                                           ; $6eff: $00
    nop                                           ; $6f00: $00

jr_0c6_6f01:
    rst $30                                       ; $6f01: $f7
    ld [$00ff], sp                                ; $6f02: $08 $ff $00
    ld a, a                                       ; $6f05: $7f
    xor d                                         ; $6f06: $aa
    ld a, [$0501]                                 ; $6f07: $fa $01 $05
    rst $30                                       ; $6f0a: $f7
    ld a, [bc]                                    ; $6f0b: $0a
    rst $10                                       ; $6f0c: $d7
    cpl                                           ; $6f0d: $2f
    ld [hl], l                                    ; $6f0e: $75
    adc d                                         ; $6f0f: $8a
    stop                                          ; $6f10: $10 $00
    pop bc                                        ; $6f12: $c1
    inc sp                                        ; $6f13: $33
    ld bc, $0814                                  ; $6f14: $01 $14 $08

jr_0c6_6f17:
    ld [hl], a                                    ; $6f17: $77
    adc b                                         ; $6f18: $88
    cp [hl]                                       ; $6f19: $be
    rst $38                                       ; $6f1a: $ff
    ld e, a                                       ; $6f1b: $5f
    ccf                                           ; $6f1c: $3f
    ld bc, $fd20                                  ; $6f1d: $01 $20 $fd
    ld a, [hl+]                                   ; $6f20: $2a
    inc b                                         ; $6f21: $04
    nop                                           ; $6f22: $00
    jr nz, jr_0c6_6ee3                            ; $6f23: $20 $be

    ld b, b                                       ; $6f25: $40
    db $dd                                        ; $6f26: $dd
    jr nz, jr_0c6_6f3d                            ; $6f27: $20 $14

    ei                                            ; $6f29: $fb
    ldh [rIE], a                                  ; $6f2a: $e0 $ff
    jr nc, jr_0c6_6f2e                            ; $6f2c: $30 $00

jr_0c6_6f2e:
    db $dd                                        ; $6f2e: $dd
    ld d, b                                       ; $6f2f: $50
    nop                                           ; $6f30: $00
    push af                                       ; $6f31: $f5
    ld a, [bc]                                    ; $6f32: $0a
    adc $59                                       ; $6f33: $ce $59
    ld bc, $0050                                  ; $6f35: $01 $50 $00
    db $fd                                        ; $6f38: $fd
    ld [bc], a                                    ; $6f39: $02
    ld b, b                                       ; $6f3a: $40
    nop                                           ; $6f3b: $00
    ld h, b                                       ; $6f3c: $60

jr_0c6_6f3d:
    nop                                           ; $6f3d: $00
    ld d, b                                       ; $6f3e: $50
    nop                                           ; $6f3f: $00
    nop                                           ; $6f40: $00
    ld [bc], a                                    ; $6f41: $02
    rst $38                                       ; $6f42: $ff
    ld [$50bb], sp                                ; $6f43: $08 $bb $50
    ld e, a                                       ; $6f46: $5f
    and b                                         ; $6f47: $a0
    inc e                                         ; $6f48: $1c
    jr jr_0c6_6fca                                ; $6f49: $18 $7f

    nop                                           ; $6f4b: $00
    xor d                                         ; $6f4c: $aa
    ei                                            ; $6f4d: $fb
    inc b                                         ; $6f4e: $04
    rst $30                                       ; $6f4f: $f7
    ld a, [bc]                                    ; $6f50: $0a
    db $eb                                        ; $6f51: $eb
    rla                                           ; $6f52: $17
    ld d, a                                       ; $6f53: $57
    pop hl                                        ; $6f54: $e1
    ld a, h                                       ; $6f55: $7c
    nop                                           ; $6f56: $00
    ld d, b                                       ; $6f57: $50
    ld [$0987], sp                                ; $6f58: $08 $87 $09
    ld a, a                                       ; $6f5b: $7f
    add b                                         ; $6f5c: $80
    rst $18                                       ; $6f5d: $df
    rst $38                                       ; $6f5e: $ff
    add h                                         ; $6f5f: $84
    nop                                           ; $6f60: $00
    pop bc                                        ; $6f61: $c1
    ld d, b                                       ; $6f62: $50
    db $10                                        ; $6f63: $10
    ld c, b                                       ; $6f64: $48
    ld [$20df], sp                                ; $6f65: $08 $df $20
    ld a, l                                       ; $6f68: $7d
    ldh [$7f], a                                  ; $6f69: $e0 $7f
    jr nc, jr_0c6_6f6d                            ; $6f6b: $30 $00

jr_0c6_6f6d:
    jp nz, $0850                                  ; $6f6d: $c2 $50 $08

    ld c, b                                       ; $6f70: $48
    ld [$02ff], sp                                ; $6f71: $08 $ff $02
    cp a                                          ; $6f74: $bf
    ld b, d                                       ; $6f75: $42
    add b                                         ; $6f76: $80
    ld [$8475], sp                                ; $6f77: $08 $75 $84
    ld d, b                                       ; $6f7a: $50
    jr nz, jr_0c6_6ffc                            ; $6f7b: $20 $7f

    ld [$18ed], sp                                ; $6f7d: $08 $ed $18
    ld l, b                                       ; $6f80: $68
    ld [$a857], sp                                ; $6f81: $08 $57 $a8
    sub e                                         ; $6f84: $93
    add h                                         ; $6f85: $84

jr_0c6_6f86:
    nop                                           ; $6f86: $00
    xor d                                         ; $6f87: $aa
    cp $80                                        ; $6f88: $fe $80
    nop                                           ; $6f8a: $00
    rst $10                                       ; $6f8b: $d7
    ld l, b                                       ; $6f8c: $68
    or b                                          ; $6f8d: $b0
    ld [$102c], sp                                ; $6f8e: $08 $2c $10
    ld bc, $fea8                                  ; $6f91: $01 $a8 $fe
    db $10                                        ; $6f94: $10
    ld a, a                                       ; $6f95: $7f
    nop                                           ; $6f96: $00
    db $dd                                        ; $6f97: $dd
    ld a, [bc]                                    ; $6f98: $0a
    ret nc                                        ; $6f99: $d0

    ld [$fd45], sp                                ; $6f9a: $08 $45 $fd
    ldh [rP1], a                                  ; $6f9d: $e0 $00
    ld a, l                                       ; $6f9f: $7d
    nop                                           ; $6fa0: $00
    ld a, [$09eb]                                 ; $6fa1: $fa $eb $09
    jr nz, jr_0c6_6f86                            ; $6fa4: $20 $e0

    ld [$df40], sp                                ; $6fa6: $08 $40 $df
    jr nc, jr_0c6_6fab                            ; $6fa9: $30 $00

jr_0c6_6fab:
    rst $38                                       ; $6fab: $ff
    nop                                           ; $6fac: $00
    rst $28                                       ; $6fad: $ef
    inc b                                         ; $6fae: $04
    ld [hl], l                                    ; $6faf: $75
    ld [bc], a                                    ; $6fb0: $02
    jr z, @-$1f                                   ; $6fb1: $28 $df

    rlca                                          ; $6fb3: $07
    rst $38                                       ; $6fb4: $ff
    add hl, bc                                    ; $6fb5: $09
    ld d, l                                       ; $6fb6: $55
    call nz, RST_08                               ; $6fb7: $c4 $08 $00
    ei                                            ; $6fba: $fb
    inc b                                         ; $6fbb: $04
    ld a, [bc]                                    ; $6fbc: $0a
    ld a, l                                       ; $6fbd: $7d
    add d                                         ; $6fbe: $82
    ld a, l                                       ; $6fbf: $7d
    rst $38                                       ; $6fc0: $ff
    ld [hl], b                                    ; $6fc1: $70
    ld [$0457], sp                                ; $6fc2: $08 $57 $04
    add hl, bc                                    ; $6fc5: $09
    ld a, [hl+]                                   ; $6fc6: $2a
    ld bc, $40fe                                  ; $6fc7: $01 $fe $40

jr_0c6_6fca:
    rst $18                                       ; $6fca: $df
    jr nz, @-$13                                  ; $6fcb: $20 $eb

    db $f4                                        ; $6fcd: $f4
    rst $30                                       ; $6fce: $f7
    db $10                                        ; $6fcf: $10
    ld bc, $dd32                                  ; $6fd0: $01 $32 $dd
    ld [hl+], a                                   ; $6fd3: $22
    ld d, b                                       ; $6fd4: $50
    db $10                                        ; $6fd5: $10
    ld [hl], b                                    ; $6fd6: $70
    nop                                           ; $6fd7: $00
    ld a, [$000d]                                 ; $6fd8: $fa $0d $00
    add hl, bc                                    ; $6fdb: $09
    ld a, l                                       ; $6fdc: $7d
    add h                                         ; $6fdd: $84
    ret nc                                        ; $6fde: $d0

    ld [$fe00], sp                                ; $6fdf: $08 $00 $fe
    ld b, b                                       ; $6fe2: $40
    ld a, a                                       ; $6fe3: $7f
    and [hl]                                      ; $6fe4: $a6
    nop                                           ; $6fe5: $00
    ld e, a                                       ; $6fe6: $5f
    and b                                         ; $6fe7: $a0
    nop                                           ; $6fe8: $00
    xor a                                         ; $6fe9: $af
    ld d, a                                       ; $6fea: $57
    rst $10                                       ; $6feb: $d7
    inc l                                         ; $6fec: $2c
    and d                                         ; $6fed: $a2
    ld e, h                                       ; $6fee: $5c
    adc a                                         ; $6fef: $8f
    ld a, b                                       ; $6ff0: $78
    nop                                           ; $6ff1: $00
    cp a                                          ; $6ff2: $bf
    ld hl, sp-$21                                 ; $6ff3: $f8 $df
    ld [$18ef], sp                                ; $6ff5: $08 $ef $18
    rst $10                                       ; $6ff8: $d7
    jr z, jr_0c6_6ffb                             ; $6ff9: $28 $00

jr_0c6_6ffb:
    db $fd                                        ; $6ffb: $fd

jr_0c6_6ffc:
    rst $38                                       ; $6ffc: $ff
    ld e, a                                       ; $6ffd: $5f
    ld [bc], a                                    ; $6ffe: $02
    and h                                         ; $6fff: $a4
    ld [bc], a                                    ; $7000: $02
    rst $18                                       ; $7001: $df
    inc b                                         ; $7002: $04
    nop                                           ; $7003: $00

jr_0c6_7004:
    ld a, $44                                     ; $7004: $3e $44
    ld a, e                                       ; $7006: $7b
    add h                                         ; $7007: $84
    xor $15                                       ; $7008: $ee $15
    ld e, l                                       ; $700a: $5d
    and a                                         ; $700b: $a7
    nop                                           ; $700c: $00
    rst $38                                       ; $700d: $ff
    db $fc                                        ; $700e: $fc
    ld a, [c]                                     ; $700f: $f2
    inc c                                         ; $7010: $0c
    db $ed                                        ; $7011: $ed
    inc d                                         ; $7012: $14
    ld a, a                                       ; $7013: $7f
    ld [$af00], sp                                ; $7014: $08 $00 $af
    jr jr_0c6_7004                                ; $7017: $18 $eb

    jr @-$50                                      ; $7019: $18 $ae

    ld e, c                                       ; $701b: $59
    cp l                                          ; $701c: $bd
    ld a, [$ad00]                                 ; $701d: $fa $00 $ad
    ld b, $5a                                     ; $7020: $06 $5a
    dec b                                         ; $7022: $05
    rst $28                                       ; $7023: $ef
    rlca                                          ; $7024: $07
    cp [hl]                                       ; $7025: $be
    ld b, l                                       ; $7026: $45
    nop                                           ; $7027: $00
    rst $38                                       ; $7028: $ff
    inc b                                         ; $7029: $04
    or e                                          ; $702a: $b3
    ld c, h                                       ; $702b: $4c
    xor $14                                       ; $702c: $ee $14
    rst $00                                       ; $702e: $c7
    inc a                                         ; $702f: $3c
    nop                                           ; $7030: $00
    dec [hl]                                      ; $7031: $35

Call_0c6_7032:
    jp z, $e53a                                   ; $7032: $ca $3a $e5

    rst $28                                       ; $7035: $ef
    ldh a, [$dd]                                  ; $7036: $f0 $dd
    ld h, d                                       ; $7038: $62
    nop                                           ; $7039: $00
    rra                                           ; $703a: $1f
    rst $38                                       ; $703b: $ff
    cp a                                          ; $703c: $bf
    ld b, b                                       ; $703d: $40
    cp e                                          ; $703e: $bb
    nop                                           ; $703f: $00
    ld h, [hl]                                    ; $7040: $66
    ld bc, $d700                                  ; $7041: $01 $00 $d7
    cpl                                           ; $7044: $2f
    db $ed                                        ; $7045: $ed
    ld d, $d3                                     ; $7046: $16 $d3
    inc l                                         ; $7048: $2c
    ld b, [hl]                                    ; $7049: $46
    cp h                                          ; $704a: $bc
    nop                                           ; $704b: $00
    rst $38                                       ; $704c: $ff
    db $fc                                        ; $704d: $fc
    xor $84                                       ; $704e: $ee $84
    scf                                           ; $7050: $37
    adc h                                         ; $7051: $8c
    ld [$0095], a                                 ; $7052: $ea $95 $00
    cp $ff                                        ; $7055: $fe $ff
    or a                                          ; $7057: $b7
    ld bc, $0152                                  ; $7058: $01 $52 $01
    rst $28                                       ; $705b: $ef
    ld bc, $9d00                                  ; $705c: $01 $00 $9d
    inc hl                                        ; $705f: $23
    cp a                                          ; $7060: $bf
    ld b, b                                       ; $7061: $40
    push af                                       ; $7062: $f5
    dec bc                                        ; $7063: $0b
    xor e                                         ; $7064: $ab
    ld d, l                                       ; $7065: $55
    nop                                           ; $7066: $00
    rst $38                                       ; $7067: $ff
    cp $fa                                        ; $7068: $fe $fa
    inc b                                         ; $706a: $04
    ld d, a                                       ; $706b: $57
    ld a, [bc]                                    ; $706c: $0a
    cp a                                          ; $706d: $bf
    inc b                                         ; $706e: $04
    nop                                           ; $706f: $00
    ld e, a                                       ; $7070: $5f
    inc b                                         ; $7071: $04
    db $ed                                        ; $7072: $ed
    inc d                                         ; $7073: $14
    ld d, a                                       ; $7074: $57
    xor h                                         ; $7075: $ac
    sbc $fd                                       ; $7076: $de $fd
    nop                                           ; $7078: $00
    ld e, [hl]                                    ; $7079: $5e
    inc bc                                        ; $707a: $03
    dec l                                         ; $707b: $2d
    ld [bc], a                                    ; $707c: $02
    ld a, a                                       ; $707d: $7f
    inc bc                                        ; $707e: $03
    cp $03                                        ; $707f: $fe $03
    nop                                           ; $7081: $00
    rst $18                                       ; $7082: $df
    ld [hl+], a                                   ; $7083: $22
    cp c                                          ; $7084: $b9
    ld b, [hl]                                    ; $7085: $46
    ld d, a                                       ; $7086: $57
    xor d                                         ; $7087: $aa
    di                                            ; $7088: $f3
    ld c, $00                                     ; $7089: $0e $00
    sbc e                                         ; $708b: $9b
    ld h, h                                       ; $708c: $64
    dec l                                         ; $708d: $2d
    ld a, [c]                                     ; $708e: $f2
    rst $30                                       ; $708f: $f7
    add sp, -$11                                  ; $7090: $e8 $ef
    jr nc, jr_0c6_7094                            ; $7092: $30 $00

jr_0c6_7094:
    rst $08                                       ; $7094: $cf
    ccf                                           ; $7095: $3f
    db $db                                        ; $7096: $db
    inc h                                         ; $7097: $24
    db $db                                        ; $7098: $db
    nop                                           ; $7099: $00
    ld [hl], c                                    ; $709a: $71
    nop                                           ; $709b: $00
    nop                                           ; $709c: $00
    rst $28                                       ; $709d: $ef
    inc de                                        ; $709e: $13
    or $0b                                        ; $709f: $f6 $0b
    jp hl                                         ; $70a1: $e9


    ld d, $a3                                     ; $70a2: $16 $a3
    ld e, [hl]                                    ; $70a4: $5e
    nop                                           ; $70a5: $00
    rst $30                                       ; $70a6: $f7
    cp $ef                                        ; $70a7: $fe $ef
    ld b, d                                       ; $70a9: $42
    sbc a                                         ; $70aa: $9f
    ld b, d                                       ; $70ab: $42
    ld a, l                                       ; $70ac: $7d
    jp nz, $ff00                                  ; $70ad: $c2 $00 $ff

    rst $38                                       ; $70b0: $ff
    db $eb                                        ; $70b1: $eb
    nop                                           ; $70b2: $00
    or c                                          ; $70b3: $b1
    nop                                           ; $70b4: $00

jr_0c6_70b5:
    ld [hl], a                                    ; $70b5: $77
    nop                                           ; $70b6: $00
    ld [bc], a                                    ; $70b7: $02

jr_0c6_70b8:
    xor [hl]                                      ; $70b8: $ae
    ld bc, $007f                                  ; $70b9: $01 $7f $00
    ld a, [$d005]                                 ; $70bc: $fa $05 $d0
    ld bc, $00ff                                  ; $70bf: $01 $ff $00
    ld e, a                                       ; $70c2: $5f

jr_0c6_70c3:
    ld h, b                                       ; $70c3: $60
    ld [$fd50], a                                 ; $70c4: $ea $50 $fd
    jr nz, jr_0c6_70c3                            ; $70c7: $20 $fa

    jr nz, jr_0c6_70cb                            ; $70c9: $20 $00

jr_0c6_70cb:
    or a                                          ; $70cb: $b7
    jr z, jr_0c6_70b8                             ; $70cc: $28 $ea

    dec [hl]                                      ; $70ce: $35
    ld a, e                                       ; $70cf: $7b
    cp a                                          ; $70d0: $bf
    rla                                           ; $70d1: $17
    ld hl, sp+$00                                 ; $70d2: $f8 $00
    xor e                                         ; $70d4: $ab
    rst $38                                       ; $70d5: $ff
    sbc a                                         ; $70d6: $9f
    ld [bc], a                                    ; $70d7: $02
    ld a, a                                       ; $70d8: $7f
    ld [bc], a                                    ; $70d9: $02
    jp c, $0026                                   ; $70da: $da $26 $00

    ld b, [hl]                                    ; $70dd: $46
    cp h                                          ; $70de: $bc
    ld a, a                                       ; $70df: $7f
    db $fc                                        ; $70e0: $fc
    ld e, e                                       ; $70e1: $5b
    add h                                         ; $70e2: $84
    ld c, [hl]                                    ; $70e3: $4e
    cp b                                          ; $70e4: $b8
    nop                                           ; $70e5: $00
    db $dd                                        ; $70e6: $dd
    ld hl, sp-$01                                 ; $70e7: $f8 $ff
    nop                                           ; $70e9: $00
    ld e, d                                       ; $70ea: $5a
    nop                                           ; $70eb: $00
    dec a                                         ; $70ec: $3d
    nop                                           ; $70ed: $00
    nop                                           ; $70ee: $00
    cp $10                                        ; $70ef: $fe $10
    rst $38                                       ; $70f1: $ff
    db $10                                        ; $70f2: $10
    rst $20                                       ; $70f3: $e7
    jr jr_0c6_70b5                                ; $70f4: $18 $bf

    nop                                           ; $70f6: $00
    nop                                           ; $70f7: $00
    ld d, a                                       ; $70f8: $57
    jr @-$4b                                      ; $70f9: $18 $b3

    inc e                                         ; $70fb: $1c
    db $fd                                        ; $70fc: $fd
    rra                                           ; $70fd: $1f
    or a                                          ; $70fe: $b7
    ld [$ca00], sp                                ; $70ff: $08 $00 $ca
    jr nc, @-$45                                  ; $7102: $30 $b9

    ld d, b                                       ; $7104: $50
    swap b                                        ; $7105: $cb $30
    cp [hl]                                       ; $7107: $be
    ld c, b                                       ; $7108: $48
    nop                                           ; $7109: $00
    ld l, a                                       ; $710a: $6f
    sbc b                                         ; $710b: $98
    and l                                         ; $710c: $a5
    ld e, b                                       ; $710d: $58
    rst $28                                       ; $710e: $ef
    ld hl, sp-$01                                 ; $710f: $f8 $ff
    ld [$bd00], sp                                ; $7111: $08 $00 $bd
    ld a, [bc]                                    ; $7114: $0a
    db $eb                                        ; $7115: $eb
    rra                                           ; $7116: $1f
    ei                                            ; $7117: $fb
    ld [$01ef], sp                                ; $7118: $08 $ef $01
    nop                                           ; $711b: $00
    dec [hl]                                      ; $711c: $35
    inc bc                                        ; $711d: $03
    xor $01                                       ; $711e: $ee $01
    db $fc                                        ; $7120: $fc
    inc bc                                        ; $7121: $03
    db $eb                                        ; $7122: $eb
    dec d                                         ; $7123: $15
    nop                                           ; $7124: $00
    pop de                                        ; $7125: $d1
    cpl                                           ; $7126: $2f
    push af                                       ; $7127: $f5
    rst $38                                       ; $7128: $ff
    db $fd                                        ; $7129: $fd
    add b                                         ; $712a: $80
    ld b, a                                       ; $712b: $47
    cp h                                          ; $712c: $bc
    nop                                           ; $712d: $00
    xor e                                         ; $712e: $ab
    rst $38                                       ; $712f: $ff
    and a                                         ; $7130: $a7
    ld bc, $015f                                  ; $7131: $01 $5f $01
    rst $30                                       ; $7134: $f7
    add hl, bc                                    ; $7135: $09
    nop                                           ; $7136: $00
    ld [hl], c                                    ; $7137: $71
    adc a                                         ; $7138: $8f
    rst $18                                       ; $7139: $df
    rst $38                                       ; $713a: $ff
    or $01                                        ; $713b: $f6 $01
    ld d, e                                       ; $713d: $53
    xor [hl]                                      ; $713e: $ae
    nop                                           ; $713f: $00
    db $fd                                        ; $7140: $fd
    cp $7b                                        ; $7141: $fe $7b
    add h                                         ; $7143: $84
    jp c, $8b04                                   ; $7144: $da $04 $8b

    inc b                                         ; $7147: $04
    nop                                           ; $7148: $00
    ld a, [hl]                                    ; $7149: $7e
    inc b                                         ; $714a: $04
    cp a                                          ; $714b: $bf
    inc b                                         ; $714c: $04
    ld a, c                                       ; $714d: $79
    ld b, $bb                                     ; $714e: $06 $bb
    inc b                                         ; $7150: $04
    nop                                           ; $7151: $00
    ld e, l                                       ; $7152: $5d
    ld b, $fc                                     ; $7153: $06 $fc
    rlca                                          ; $7155: $07
    cp a                                          ; $7156: $bf
    rlca                                          ; $7157: $07
    ld a, c                                       ; $7158: $79
    ld b, $02                                     ; $7159: $06 $02
    di                                            ; $715b: $f3
    inc c                                         ; $715c: $0c
    xor $14                                       ; $715d: $ee $14
    di                                            ; $715f: $f3
    inc c                                         ; $7160: $0c
    ld d, $02                                     ; $7161: $16 $02
    ld d, $00                                     ; $7163: $16 $00
    pop af                                        ; $7165: $f1
    ld c, $6b                                     ; $7166: $0e $6b
    cp $ff                                        ; $7168: $fe $ff
    ld [bc], a                                    ; $716a: $02
    xor [hl]                                      ; $716b: $ae
    inc bc                                        ; $716c: $03
    nop                                           ; $716d: $00
    ld a, d                                       ; $716e: $7a
    rlca                                          ; $716f: $07
    rst $38                                       ; $7170: $ff
    ld [bc], a                                    ; $7171: $02
    db $db                                        ; $7172: $db
    nop                                           ; $7173: $00
    adc l                                         ; $7174: $8d
    nop                                           ; $7175: $00
    ld [de], a                                    ; $7176: $12
    db $db                                        ; $7177: $db
    nop                                           ; $7178: $00
    cp a                                          ; $7179: $bf
    and b                                         ; $717a: $a0
    ld bc, $0bf4                                  ; $717b: $01 $f4 $0b
    and c                                         ; $717e: $a1
    inc bc                                        ; $717f: $03
    jr nz, jr_0c6_7182                            ; $7180: $20 $00

jr_0c6_7182:
    jp nc, $eb6f                                  ; $7182: $d2 $6f $eb

    ld a, a                                       ; $7185: $7f
    dec hl                                        ; $7186: $2b
    ret nz                                        ; $7187: $c0

    rla                                           ; $7188: $17
    ret nz                                        ; $7189: $c0

    nop                                           ; $718a: $00
    ld a, a                                       ; $718b: $7f
    ret nz                                        ; $718c: $c0

    ld e, d                                       ; $718d: $5a
    push hl                                       ; $718e: $e5
    ld [hl], e                                    ; $718f: $73
    rst $38                                       ; $7190: $ff
    ld a, e                                       ; $7191: $7b
    inc b                                         ; $7192: $04
    nop                                           ; $7193: $00
    ret c                                         ; $7194: $d8

    daa                                           ; $7195: $27

jr_0c6_7196:
    ld a, e                                       ; $7196: $7b
    rst $38                                       ; $7197: $ff
    sbc $61                                       ; $7198: $de $61
    ld a, [$0041]                                 ; $719a: $fa $41 $00
    ld h, [hl]                                    ; $719d: $66
    pop bc                                        ; $719e: $c1
    ld d, a                                       ; $719f: $57
    pop bc                                        ; $71a0: $c1
    rst $28                                       ; $71a1: $ef
    pop bc                                        ; $71a2: $c1
    sbc [hl]                                      ; $71a3: $9e
    ld b, c                                       ; $71a4: $41
    add b                                         ; $71a5: $80
    jp z, $e000                                   ; $71a6: $ca $00 $e0

    ccf                                           ; $71a9: $3f
    ldh [$5d], a                                  ; $71aa: $e0 $5d

jr_0c6_71ac:
    and b                                         ; $71ac: $a0
    sbc [hl]                                      ; $71ad: $9e
    ld h, b                                       ; $71ae: $60
    nop                                           ; $71af: $00
    rst $08                                       ; $71b0: $cf
    jr nc, jr_0c6_7232                            ; $71b1: $30 $7f

    jr nz, @-$2f                                  ; $71b3: $20 $cf

    jr nc, @+$40                                  ; $71b5: $30 $3e

    add h                                         ; $71b7: $84
    nop                                           ; $71b8: $00
    rst $10                                       ; $71b9: $d7
    adc h                                         ; $71ba: $8c
    ld e, a                                       ; $71bb: $5f
    jr z, jr_0c6_71ac                             ; $71bc: $28 $ee

    add hl, de                                    ; $71be: $19
    add e                                         ; $71bf: $83
    ld a, h                                       ; $71c0: $7c
    nop                                           ; $71c1: $00
    ccf                                           ; $71c2: $3f
    rst $38                                       ; $71c3: $ff
    xor a                                         ; $71c4: $af
    ld [bc], a                                    ; $71c5: $02
    or e                                          ; $71c6: $b3
    inc c                                         ; $71c7: $0c
    adc $31                                       ; $71c8: $ce $31
    nop                                           ; $71ca: $00
    or l                                          ; $71cb: $b5
    ld e, d                                       ; $71cc: $5a
    rst $08                                       ; $71cd: $cf
    ccf                                           ; $71ce: $3f
    sbc [hl]                                      ; $71cf: $9e
    ld h, b                                       ; $71d0: $60
    add hl, sp                                    ; $71d1: $39
    ldh [rP1], a                                  ; $71d2: $e0 $00
    or a                                          ; $71d4: $b7
    ldh [$ef], a                                  ; $71d5: $e0 $ef
    jr nz, jr_0c6_7196                            ; $71d7: $20 $bd

    ld b, d                                       ; $71d9: $42
    adc a                                         ; $71da: $8f
    ld [hl], b                                    ; $71db: $70
    ld bc, $f01f                                  ; $71dc: $01 $1f $f0
    sbc e                                         ; $71df: $9b
    rst $38                                       ; $71e0: $ff
    or $08                                        ; $71e1: $f6 $08
    ld [hl], e                                    ; $71e3: $73
    cp [hl]                                       ; $71e4: $be
    ld bc, $ce00                                  ; $71e5: $01 $00 $ce
    add hl, sp                                    ; $71e8: $39
    ld l, $ff                                     ; $71e9: $2e $ff
    xor l                                         ; $71eb: $ad
    ld e, b                                       ; $71ec: $58
    ld c, a                                       ; $71ed: $4f
    cp b                                          ; $71ee: $b8
    nop                                           ; $71ef: $00
    ld e, e                                       ; $71f0: $5b
    pop af                                        ; $71f1: $f1
    rst $30                                       ; $71f2: $f7
    ld de, $11ff                                  ; $71f3: $11 $ff $11
    ld e, a                                       ; $71f6: $5f
    or c                                          ; $71f7: $b1
    nop                                           ; $71f8: $00
    sub h                                         ; $71f9: $94
    ld a, e                                       ; $71fa: $7b
    sub a                                         ; $71fb: $97
    rst $38                                       ; $71fc: $ff
    sbc $80                                       ; $71fd: $de $80
    push af                                       ; $71ff: $f5
    add b                                         ; $7200: $80
    ld b, b                                       ; $7201: $40
    xor a                                         ; $7202: $af
    add d                                         ; $7203: $82
    nop                                           ; $7204: $00
    ld [hl], a                                    ; $7205: $77
    add b                                         ; $7206: $80
    cp a                                          ; $7207: $bf
    ld b, b                                       ; $7208: $40
    ld a, e                                       ; $7209: $7b
    add h                                         ; $720a: $84
    nop                                           ; $720b: $00
    db $ed                                        ; $720c: $ed
    ld [de], a                                    ; $720d: $12
    ld l, a                                       ; $720e: $6f
    ld bc, $23b5                                  ; $720f: $01 $b5 $23
    db $eb                                        ; $7212: $eb
    ld h, $00                                     ; $7213: $26 $00
    rst $38                                       ; $7215: $ff
    ld [hl+], a                                   ; $7216: $22

jr_0c6_7217:
    or b                                          ; $7217: $b0
    ld l, a                                       ; $7218: $6f
    ld h, a                                       ; $7219: $67
    cp a                                          ; $721a: $bf
    or a                                          ; $721b: $b7
    ld h, b                                       ; $721c: $60
    nop                                           ; $721d: $00
    sub [hl]                                      ; $721e: $96
    ld h, c                                       ; $721f: $61
    di                                            ; $7220: $f3
    inc c                                         ; $7221: $0c
    xor l                                         ; $7222: $ad
    ld d, $f9                                     ; $7223: $16 $f9
    rlca                                          ; $7225: $07
    nop                                           ; $7226: $00
    db $d3                                        ; $7227: $d3
    inc l                                         ; $7228: $2c
    and a                                         ; $7229: $a7
    ld e, h                                       ; $722a: $5c
    rst $30                                       ; $722b: $f7
    db $fc                                        ; $722c: $fc
    db $fd                                        ; $722d: $fd
    add h                                         ; $722e: $84
    ld bc, $807f                                  ; $722f: $01 $7f $80

jr_0c6_7232:
    pop hl                                        ; $7232: $e1
    ld e, $c6                                     ; $7233: $1e $c6
    dec a                                         ; $7235: $3d
    di                                            ; $7236: $f3
    jr jr_0c6_723c                                ; $7237: $18 $03

    nop                                           ; $7239: $00
    ld l, $00                                     ; $723a: $2e $00

jr_0c6_723c:
    ld a, l                                       ; $723c: $7d
    inc bc                                        ; $723d: $03
    ld sp, hl                                     ; $723e: $f9
    rlca                                          ; $723f: $07
    or l                                          ; $7240: $b5
    ld c, a                                       ; $7241: $4f
    nop                                           ; $7242: $00
    db $eb                                        ; $7243: $eb
    ld d, $d2                                     ; $7244: $16 $d2
    ld l, $eb                                     ; $7246: $2e $eb
    cp $5f                                        ; $7248: $fe $5f
    ld [bc], a                                    ; $724a: $02
    nop                                           ; $724b: $00
    cp a                                          ; $724c: $bf
    ld [bc], a                                    ; $724d: $02
    db $eb                                        ; $724e: $eb

jr_0c6_724f:
    ld d, $53                                     ; $724f: $16 $53
    xor [hl]                                      ; $7251: $ae
    jp c, Jump_000_00ff                           ; $7252: $da $ff $00

    push af                                       ; $7255: $f5
    jr nz, @-$03                                  ; $7256: $20 $fb

    jr nz, jr_0c6_724f                            ; $7258: $20 $f5

    jr nz, jr_0c6_7217                            ; $725a: $20 $bb

    ld h, b                                       ; $725c: $60
    nop                                           ; $725d: $00
    ld l, a                                       ; $725e: $6f
    or b                                          ; $725f: $b0
    or a                                          ; $7260: $b7
    ld l, b                                       ; $7261: $68
    rrca                                          ; $7262: $0f
    ldh a, [$fb]                                  ; $7263: $f0 $fb
    db $e4                                        ; $7265: $e4
    inc b                                         ; $7266: $04
    sbc e                                         ; $7267: $9b
    inc b                                         ; $7268: $04
    ld l, a                                       ; $7269: $6f
    inc b                                         ; $726a: $04
    cp l                                          ; $726b: $bd
    ld bc, $b604                                  ; $726c: $01 $04 $b6
    ld c, l                                       ; $726f: $4d
    nop                                           ; $7270: $00
    db $ed                                        ; $7271: $ed
    rla                                           ; $7272: $17
    rst $30                                       ; $7273: $f7
    inc c                                         ; $7274: $0c
    or e                                          ; $7275: $b3
    ld c, h                                       ; $7276: $4c
    or $41                                        ; $7277: $f6 $41
    nop                                           ; $7279: $00
    ld l, a                                       ; $727a: $6f
    pop bc                                        ; $727b: $c1
    rst $38                                       ; $727c: $ff
    ld b, b                                       ; $727d: $40
    ld a, d                                       ; $727e: $7a
    push bc                                       ; $727f: $c5
    dec d                                         ; $7280: $15
    db $eb                                        ; $7281: $eb
    nop                                           ; $7282: $00
    rst $38                                       ; $7283: $ff
    rst $38                                       ; $7284: $ff
    ld a, [hl]                                    ; $7285: $7e
    ld de, $30cf                                  ; $7286: $11 $cf $30
    or a                                          ; $7289: $b7
    ld l, b                                       ; $728a: $68
    nop                                           ; $728b: $00
    ld l, e                                       ; $728c: $6b
    or h                                          ; $728d: $b4
    rst $38                                       ; $728e: $ff
    rst $38                                       ; $728f: $ff
    ld a, d                                       ; $7290: $7a
    add b                                         ; $7291: $80
    ld [hl], h                                    ; $7292: $74
    add b                                         ; $7293: $80
    nop                                           ; $7294: $00
    ld a, $c0                                     ; $7295: $3e $c0
    sbc a                                         ; $7297: $9f
    ldh [$8d], a                                  ; $7298: $e0 $8d
    ld a, [c]                                     ; $729a: $f2
    ld d, a                                       ; $729b: $57
    xor h                                         ; $729c: $ac
    ld bc, $fc57                                  ; $729d: $01 $57 $fc
    ld e, [hl]                                    ; $72a0: $5e
    add l                                         ; $72a1: $85
    ccf                                           ; $72a2: $3f
    add a                                         ; $72a3: $87
    sbc a                                         ; $72a4: $9f
    ld d, d                                       ; $72a5: $52
    db $10                                        ; $72a6: $10
    db $10                                        ; $72a7: $10
    ld d, c                                       ; $72a8: $51
    xor [hl]                                      ; $72a9: $ae
    or a                                          ; $72aa: $b7
    inc l                                         ; $72ab: $2c
    nop                                           ; $72ac: $00
    ld l, l                                       ; $72ad: $6d
    jp nc, $ffe7                                  ; $72ae: $d2 $e7 $ff

    ld b, b                                       ; $72b1: $40
    rst $10                                       ; $72b2: $d7
    jp nc, $fd01                                  ; $72b3: $d2 $01 $fd

    ld [bc], a                                    ; $72b6: $02
    jp z, $f535                                   ; $72b7: $ca $35 $f5

    ld b, b                                       ; $72ba: $40
    inc b                                         ; $72bb: $04
    ld a, [hl+]                                   ; $72bc: $2a
    ret nz                                        ; $72bd: $c0

    dec b                                         ; $72be: $05
    ret nz                                        ; $72bf: $c0

    ei                                            ; $72c0: $fb
    ld e, $01                                     ; $72c1: $1e $01
    ld h, l                                       ; $72c3: $65
    jp c, Jump_0c6_7b00                           ; $72c4: $da $00 $7b

    rst $38                                       ; $72c7: $ff
    ld [hl], l                                    ; $72c8: $75
    ret nz                                        ; $72c9: $c0

    rst $18                                       ; $72ca: $df
    ld bc, $012f                                  ; $72cb: $01 $2f $01
    nop                                           ; $72ce: $00
    call c, $fb03                                 ; $72cf: $dc $03 $fb
    dec b                                         ; $72d2: $05
    ei                                            ; $72d3: $fb
    ld b, $68                                     ; $72d4: $06 $68
    sub [hl]                                      ; $72d6: $96
    nop                                           ; $72d7: $00
    ld a, a                                       ; $72d8: $7f
    cp $ff                                        ; $72d9: $fe $ff
    ld [hl+], a                                   ; $72db: $22
    jp c, $cc25                                   ; $72dc: $da $25 $cc

    rst $38                                       ; $72df: $ff
    nop                                           ; $72e0: $00
    rst $30                                       ; $72e1: $f7
    nop                                           ; $72e2: $00
    db $ed                                        ; $72e3: $ed
    nop                                           ; $72e4: $00
    ld d, e                                       ; $72e5: $53
    nop                                           ; $72e6: $00
    and a                                         ; $72e7: $a7
    nop                                           ; $72e8: $00
    ld b, b                                       ; $72e9: $40
    rst $18                                       ; $72ea: $df
    or $02                                        ; $72eb: $f6 $02
    ld a, [hl-]                                   ; $72ed: $3a
    push hl                                       ; $72ee: $e5
    ld a, d                                       ; $72ef: $7a
    rst $38                                       ; $72f0: $ff
    xor e                                         ; $72f1: $ab
    ld d, b                                       ; $72f2: $50
    nop                                           ; $72f3: $00
    ld d, a                                       ; $72f4: $57
    and b                                         ; $72f5: $a0
    ld a, c                                       ; $72f6: $79
    db $10                                        ; $72f7: $10
    ei                                            ; $72f8: $fb
    db $10                                        ; $72f9: $10
    cp $11                                        ; $72fa: $fe $11
    nop                                           ; $72fc: $00
    ld b, l                                       ; $72fd: $45
    cp d                                          ; $72fe: $ba
    cp $80                                        ; $72ff: $fe $80
    rst $18                                       ; $7301: $df
    xor b                                         ; $7302: $a8
    xor l                                         ; $7303: $ad
    jp c, $fc00                                   ; $7304: $da $00 $fc

    rst $38                                       ; $7307: $ff
    db $fd                                        ; $7308: $fd
    ld b, b                                       ; $7309: $40
    ld a, [$ef40]                                 ; $730a: $fa $40 $ef
    ld b, b                                       ; $730d: $40
    nop                                           ; $730e: $00
    inc l                                         ; $730f: $2c
    db $d3                                        ; $7310: $d3
    xor $14                                       ; $7311: $ee $14
    ld b, l                                       ; $7313: $45
    cp b                                          ; $7314: $b8
    and b                                         ; $7315: $a0
    ld e, b                                       ; $7316: $58
    nop                                           ; $7317: $00
    rst $38                                       ; $7318: $ff
    db $fc                                        ; $7319: $fc
    ld l, l                                       ; $731a: $6d
    ld a, [de]                                    ; $731b: $1a
    ld [$ef1d], a                                 ; $731c: $ea $1d $ef
    rra                                           ; $731f: $1f
    nop                                           ; $7320: $00
    xor e                                         ; $7321: $ab
    ld e, h                                       ; $7322: $5c
    xor a                                         ; $7323: $af
    nop                                           ; $7324: $00
    ld b, e                                       ; $7325: $43
    nop                                           ; $7326: $00
    xor a                                         ; $7327: $af
    nop                                           ; $7328: $00
    nop                                           ; $7329: $00
    ld [hl], a                                    ; $732a: $77
    ld [$51ae], sp                                ; $732b: $08 $ae $51
    ld d, l                                       ; $732e: $55
    xor d                                         ; $732f: $aa
    or [hl]                                       ; $7330: $b6
    rst $38                                       ; $7331: $ff
    nop                                           ; $7332: $00
    ld e, [hl]                                    ; $7333: $5e
    dec b                                         ; $7334: $05

jr_0c6_7335:
    push af                                       ; $7335: $f5
    ld a, [hl+]                                   ; $7336: $2a
    ld sp, hl                                     ; $7337: $f9
    ccf                                           ; $7338: $3f
    sbc a                                         ; $7339: $9f
    ld h, b                                       ; $733a: $60
    ld bc, $a07b                                  ; $733b: $01 $7b $a0
    or l                                          ; $733e: $b5
    ld h, b                                       ; $733f: $60
    ld a, [bc]                                    ; $7340: $0a
    ldh [$fd], a                                  ; $7341: $e0 $fd
    nop                                           ; $7343: $00
    inc b                                         ; $7344: $04
    nop                                           ; $7345: $00
    ld b, [hl]                                    ; $7346: $46
    cp l                                          ; $7347: $bd
    adc [hl]                                      ; $7348: $8e
    rst $38                                       ; $7349: $ff
    db $f4                                        ; $734a: $f4
    dec bc                                        ; $734b: $0b
    xor d                                         ; $734c: $aa
    dec d                                         ; $734d: $15
    nop                                           ; $734e: $00
    ld d, a                                       ; $734f: $57
    ld bc, $01ff                                  ; $7350: $01 $ff $01
    cp a                                          ; $7353: $bf
    ld b, c                                       ; $7354: $41
    ld [hl], h                                    ; $7355: $74
    adc e                                         ; $7356: $8b
    nop                                           ; $7357: $00
    rst $18                                       ; $7358: $df
    jr nc, jr_0c6_7335                            ; $7359: $30 $da

    push af                                       ; $735b: $f5
    db $f4                                        ; $735c: $f4
    dec de                                        ; $735d: $1b
    rst $38                                       ; $735e: $ff
    rra                                           ; $735f: $1f
    ld b, b                                       ; $7360: $40
    cp a                                          ; $7361: $bf
    push hl                                       ; $7362: $e5
    inc b                                         ; $7363: $04
    sub $2c                                       ; $7364: $d6 $2c
    ld h, d                                       ; $7366: $62
    sbc l                                         ; $7367: $9d
    ld d, a                                       ; $7368: $57
    xor b                                         ; $7369: $a8
    nop                                           ; $736a: $00
    and d                                         ; $736b: $a2
    db $dd                                        ; $736c: $dd
    add l                                         ; $736d: $85
    ld a, [$ffdf]                                 ; $736e: $fa $df $ff
    or [hl]                                       ; $7371: $b6
    ld e, b                                       ; $7372: $58
    nop                                           ; $7373: $00
    ld e, a                                       ; $7374: $5f
    or b                                          ; $7375: $b0
    or a                                          ; $7376: $b7
    ld e, b                                       ; $7377: $58
    db $dd                                        ; $7378: $dd
    ld [hl-], a                                   ; $7379: $32
    rst $38                                       ; $737a: $ff
    rst $38                                       ; $737b: $ff
    nop                                           ; $737c: $00
    push de                                       ; $737d: $d5
    nop                                           ; $737e: $00
    xor b                                         ; $737f: $a8
    nop                                           ; $7380: $00
    ld a, e                                       ; $7381: $7b
    nop                                           ; $7382: $00
    and a                                         ; $7383: $a7
    ld [$6f00], sp                                ; $7384: $08 $00 $6f
    db $10                                        ; $7387: $10
    ld a, [$d505]                                 ; $7388: $fa $05 $d5
    ld a, [hl+]                                   ; $738b: $2a
    cp a                                          ; $738c: $bf
    rst $38                                       ; $738d: $ff
    nop                                           ; $738e: $00
    xor $81                                       ; $738f: $ee $81
    or l                                          ; $7391: $b5
    ld [bc], a                                    ; $7392: $02
    rst $28                                       ; $7393: $ef
    add b                                         ; $7394: $80
    sub $81                                       ; $7395: $d6 $81
    nop                                           ; $7397: $00
    ld a, [$e905]                                 ; $7398: $fa $05 $e9
    sub a                                         ; $739b: $97
    xor a                                         ; $739c: $af
    rst $38                                       ; $739d: $ff
    ld [$00c0], a                                 ; $739e: $ea $c0 $00
    ld c, e                                       ; $73a1: $4b
    add b                                         ; $73a2: $80
    xor l                                         ; $73a3: $ad
    add b                                         ; $73a4: $80
    ei                                            ; $73a5: $fb
    add h                                         ; $73a6: $84
    rst $38                                       ; $73a7: $ff
    add b                                         ; $73a8: $80
    nop                                           ; $73a9: $00
    cp e                                          ; $73aa: $bb
    add h                                         ; $73ab: $84
    sub $29                                       ; $73ac: $d6 $29
    cp h                                          ; $73ae: $bc
    ld b, e                                       ; $73af: $43
    jp hl                                         ; $73b0: $e9


    ld [hl], $00                                  ; $73b1: $36 $00
    and d                                         ; $73b3: $a2
    ld e, a                                       ; $73b4: $5f
    rst $38                                       ; $73b5: $ff
    ld a, [hl]                                    ; $73b6: $7e
    sub $6b                                       ; $73b7: $d6 $6b
    ld hl, sp+$47                                 ; $73b9: $f8 $47
    nop                                           ; $73bb: $00
    dec a                                         ; $73bc: $3d
    jp nz, $80eb                                  ; $73bd: $c2 $eb $80

    sub $80                                       ; $73c0: $d6 $80
    xor [hl]                                      ; $73c2: $ae
    ld d, c                                       ; $73c3: $51
    nop                                           ; $73c4: $00
    xor a                                         ; $73c5: $af
    ld d, b                                       ; $73c6: $50
    cp $01                                        ; $73c7: $fe $01
    ld [$ff15], a                                 ; $73c9: $ea $15 $ff
    rst $38                                       ; $73cc: $ff
    nop                                           ; $73cd: $00
    cp $04                                        ; $73ce: $fe $04
    ld e, e                                       ; $73d0: $5b
    inc b                                         ; $73d1: $04
    scf                                           ; $73d2: $37
    inc c                                         ; $73d3: $0c
    cp a                                          ; $73d4: $bf
    ld e, a                                       ; $73d5: $5f
    db $10                                        ; $73d6: $10
    ld e, l                                       ; $73d7: $5d
    or b                                          ; $73d8: $b0
    adc d                                         ; $73d9: $8a
    call nc, Call_0c6_7a01                        ; $73da: $d4 $01 $7a
    ldh a, [$be]                                  ; $73dd: $f0 $be
    ld de, $bf00                                  ; $73df: $11 $00 $bf
    ld h, b                                       ; $73e2: $60
    ld d, [hl]                                    ; $73e3: $56
    xor c                                         ; $73e4: $a9
    ei                                            ; $73e5: $fb
    rst $38                                       ; $73e6: $ff
    ld e, a                                       ; $73e7: $5f
    inc b                                         ; $73e8: $04
    ld b, b                                       ; $73e9: $40
    adc c                                         ; $73ea: $89
    ld l, d                                       ; $73eb: $6a
    ld [bc], a                                    ; $73ec: $02
    ld [hl], a                                    ; $73ed: $77
    adc h                                         ; $73ee: $8c
    ei                                            ; $73ef: $fb
    inc b                                         ; $73f0: $04
    db $dd                                        ; $73f1: $dd
    ld a, [hl+]                                   ; $73f2: $2a
    nop                                           ; $73f3: $00
    cp e                                          ; $73f4: $bb
    ld c, a                                       ; $73f5: $4f
    cp $f8                                        ; $73f6: $fe $f8
    db $e4                                        ; $73f8: $e4
    jr jr_0c6_7455                                ; $73f9: $18 $5a

    jr z, jr_0c6_73fd                             ; $73fb: $28 $00

jr_0c6_73fd:
    rst $38                                       ; $73fd: $ff
    ld [$186f], sp                                ; $73fe: $08 $6f $18
    xor e                                         ; $7401: $ab
    ld e, b                                       ; $7402: $58
    ld c, [hl]                                    ; $7403: $4e

Jump_0c6_7404:
    cp c                                          ; $7404: $b9
    ld b, b                                       ; $7405: $40
    ld a, l                                       ; $7406: $7d
    sub b                                         ; $7407: $90
    inc de                                        ; $7408: $13
    rst $38                                       ; $7409: $ff
    rlca                                          ; $740a: $07
    db $dd                                        ; $740b: $dd
    ld h, $bf                                     ; $740c: $26 $bf
    ld b, h                                       ; $740e: $44
    nop                                           ; $740f: $00
    ld d, e                                       ; $7410: $53
    xor h                                         ; $7411: $ac
    rst $28                                       ; $7412: $ef
    inc d                                         ; $7413: $14
    add $3c                                       ; $7414: $c6 $3c
    dec de                                        ; $7416: $1b
    db $e4                                        ; $7417: $e4
    add b                                         ; $7418: $80
    ld b, b                                       ; $7419: $40
    dec bc                                        ; $741a: $0b
    ld l, a                                       ; $741b: $6f
    or b                                          ; $741c: $b0
    adc a                                         ; $741d: $8f
    ld a, a                                       ; $741e: $7f
    db $db                                        ; $741f: $db
    inc h                                         ; $7420: $24
    ld e, e                                       ; $7421: $5b
    add b                                         ; $7422: $80
    ld a, [hl+]                                   ; $7423: $2a
    inc bc                                        ; $7424: $03

Jump_0c6_7425:
    db $eb                                        ; $7425: $eb
    dec d                                         ; $7426: $15
    push af                                       ; $7427: $f5
    dec bc                                        ; $7428: $0b

jr_0c6_7429:
    add sp, $17                                   ; $7429: $e8 $17
    and c                                         ; $742b: $a1
    nop                                           ; $742c: $00
    ld e, a                                       ; $742d: $5f
    rst $30                                       ; $742e: $f7
    rst $38                                       ; $742f: $ff
    db $eb                                        ; $7430: $eb
    ld b, c                                       ; $7431: $41
    sbc l                                         ; $7432: $9d
    ld b, e                                       ; $7433: $43
    ld a, d                                       ; $7434: $7a
    nop                                           ; $7435: $00
    push bc                                       ; $7436: $c5
    rst $38                                       ; $7437: $ff
    rst $38                                       ; $7438: $ff
    ld [hl], l                                    ; $7439: $75
    add b                                         ; $743a: $80
    ret c                                         ; $743b: $d8

    nop                                           ; $743c: $00
    cp e                                          ; $743d: $bb
    ld [$d700], sp                                ; $743e: $08 $00 $d7
    ld [$96bf], sp                                ; $7441: $08 $bf $96
    inc b                                         ; $7444: $04
    or [hl]                                       ; $7445: $b6
    ld c, c                                       ; $7446: $49
    ld e, a                                       ; $7447: $5f
    nop                                           ; $7448: $00
    rst $38                                       ; $7449: $ff
    daa                                           ; $744a: $27
    jr jr_0c6_74a7                                ; $744b: $18 $5a

    inc d                                         ; $744d: $14
    rst $38                                       ; $744e: $ff
    db $10                                        ; $744f: $10
    sub $00                                       ; $7450: $d6 $00
    jr c, jr_0c6_7429                             ; $7452: $38 $d5

    ld a, [de]                                    ; $7454: $1a

jr_0c6_7455:
    ld d, d                                       ; $7455: $52
    cp l                                          ; $7456: $bd
    cp [hl]                                       ; $7457: $be
    ld e, a                                       ; $7458: $5f
    xor b                                         ; $7459: $a8
    nop                                           ; $745a: $00
    ld d, a                                       ; $745b: $57
    ei                                            ; $745c: $fb
    rst $38                                       ; $745d: $ff
    cp [hl]                                       ; $745e: $be
    pop bc                                        ; $745f: $c1
    push de                                       ; $7460: $d5
    ld [bc], a                                    ; $7461: $02
    adc l                                         ; $7462: $8d
    ld b, b                                       ; $7463: $40
    ld [bc], a                                    ; $7464: $02
    db $f4                                        ; $7465: $f4
    add hl, bc                                    ; $7466: $09
    ld a, h                                       ; $7467: $7c
    inc bc                                        ; $7468: $03
    or $81                                        ; $7469: $f6 $81
    ld l, e                                       ; $746b: $6b
    add c                                         ; $746c: $81
    nop                                           ; $746d: $00
    rst $30                                       ; $746e: $f7
    ld bc, $035f                                  ; $746f: $01 $5f $03
    or h                                          ; $7472: $b4
    inc bc                                        ; $7473: $03
    ld l, l                                       ; $7474: $6d
    ld [bc], a                                    ; $7475: $02
    ld [$02ff], sp                                ; $7476: $08 $ff $02
    db $fd                                        ; $7479: $fd
    ld [bc], a                                    ; $747a: $02
    ld [hl], h                                    ; $747b: $74
    dec bc                                        ; $747c: $0b
    ld a, [hl-]                                   ; $747d: $3a
    push bc                                       ; $747e: $c5
    cp d                                          ; $747f: $ba
    add b                                         ; $7480: $80
    ld l, e                                       ; $7481: $6b
    ld b, $ab                                     ; $7482: $06 $ab
    nop                                           ; $7484: $00
    ld e, $01                                     ; $7485: $1e $01
    cp a                                          ; $7487: $bf
    nop                                           ; $7488: $00
    db $eb                                        ; $7489: $eb
    nop                                           ; $748a: $00
    add b                                         ; $748b: $80
    pop af                                        ; $748c: $f1
    add b                                         ; $748d: $80
    ld e, e                                       ; $748e: $5b
    add b                                         ; $748f: $80
    rst $30                                       ; $7490: $f7
    add b                                         ; $7491: $80
    cp $00                                        ; $7492: $fe $00
    add c                                         ; $7494: $81
    xor a                                         ; $7495: $af
    ret nc                                        ; $7496: $d0

    sbc a                                         ; $7497: $9f
    rst $38                                       ; $7498: $ff
    rst $18                                       ; $7499: $df
    add h                                         ; $749a: $84
    ld a, [hl]                                    ; $749b: $7e
    nop                                           ; $749c: $00
    dec b                                         ; $749d: $05
    xor a                                         ; $749e: $af
    rla                                           ; $749f: $17
    ld [hl], e                                    ; $74a0: $73
    inc c                                         ; $74a1: $0c
    jp nz, $af38                                  ; $74a2: $c2 $38 $af

    nop                                           ; $74a5: $00
    ld e, b                                       ; $74a6: $58

jr_0c6_74a7:
    dec bc                                        ; $74a7: $0b
    db $fc                                        ; $74a8: $fc
    xor [hl]                                      ; $74a9: $ae
    rst $38                                       ; $74aa: $ff
    rst $28                                       ; $74ab: $ef
    nop                                           ; $74ac: $00
    dec l                                         ; $74ad: $2d
    nop                                           ; $74ae: $00
    ld a, [c]                                     ; $74af: $f2

jr_0c6_74b0:
    ld d, a                                       ; $74b0: $57
    rst $38                                       ; $74b1: $ff
    dec a                                         ; $74b2: $3d
    ld b, $fe                                     ; $74b3: $06 $fe
    inc b                                         ; $74b5: $04
    or [hl]                                       ; $74b6: $b6
    ld d, c                                       ; $74b7: $51

jr_0c6_74b8:
    ld c, h                                       ; $74b8: $4c
    sub b                                         ; $74b9: $90
    dec hl                                        ; $74ba: $2b
    push de                                       ; $74bb: $d5
    sub b                                         ; $74bc: $90

jr_0c6_74bd:
    inc bc                                        ; $74bd: $03
    xor d                                         ; $74be: $aa
    db $10                                        ; $74bf: $10
    ld l, l                                       ; $74c0: $6d
    or b                                          ; $74c1: $b0
    ld bc, $9080                                  ; $74c2: $01 $80 $90
    dec bc                                        ; $74c5: $0b
    or a                                          ; $74c6: $b7
    ld [$0c5b], sp                                ; $74c7: $08 $5b $0c
    cp c                                          ; $74ca: $b9
    ld c, $ff                                     ; $74cb: $0e $ff
    nop                                           ; $74cd: $00
    rrca                                          ; $74ce: $0f
    or e                                          ; $74cf: $b3
    inc c                                         ; $74d0: $0c
    ld h, a                                       ; $74d1: $67
    jr jr_0c6_74b0                                ; $74d2: $18 $dc

    jr z, jr_0c6_74bd                             ; $74d4: $28 $e7

    nop                                           ; $74d6: $00
    jr @-$0f                                      ; $74d7: $18 $ef

    inc d                                         ; $74d9: $14
    rst $10                                       ; $74da: $d7
    inc l                                         ; $74db: $2c
    ld [c], a                                     ; $74dc: $e2
    inc e                                         ; $74dd: $1c
    rst $10                                       ; $74de: $d7
    ld h, $fc                                     ; $74df: $26 $fc
    rst $38                                       ; $74e1: $ff
    ld e, b                                       ; $74e2: $58
    inc bc                                        ; $74e3: $03
    db $f4                                        ; $74e4: $f4
    rrca                                          ; $74e5: $0f

jr_0c6_74e6:
    inc d                                         ; $74e6: $14
    ld bc, $3340                                  ; $74e7: $01 $40 $33
    ld [hl], h                                    ; $74ea: $74
    ld b, c                                       ; $74eb: $41
    adc e                                         ; $74ec: $8b
    ld b, b                                       ; $74ed: $40
    dec bc                                        ; $74ee: $0b
    pop de                                        ; $74ef: $d1
    ld l, a                                       ; $74f0: $6f
    ld [$297f], a                                 ; $74f1: $ea $7f $29
    ld b, b                                       ; $74f4: $40
    inc bc                                        ; $74f5: $03
    jr nz, jr_0c6_7575                            ; $74f6: $20 $7d

    jp nz, Jump_000_0b40                          ; $74f8: $c2 $40 $0b

    ld a, d                                       ; $74fb: $7a
    inc b                                         ; $74fc: $04

jr_0c6_74fd:
    ld l, h                                       ; $74fd: $6c
    sub e                                         ; $74fe: $93
    cp l                                          ; $74ff: $bd

jr_0c6_7500:
    nop                                           ; $7500: $00

jr_0c6_7501:
    rst $38                                       ; $7501: $ff
    rst $28                                       ; $7502: $ef
    jr nc, jr_0c6_7500                            ; $7503: $30 $fb

    jr nz, jr_0c6_74b8                            ; $7505: $20 $b1

    ld h, b                                       ; $7507: $60
    dec hl                                        ; $7508: $2b
    nop                                           ; $7509: $00
    ldh [$f7], a                                  ; $750a: $e0 $f7
    ldh [$cf], a                                  ; $750c: $e0 $cf
    jr nz, jr_0c6_755d                            ; $750e: $20 $4d

    or b                                          ; $7510: $b0
    ld e, d                                       ; $7511: $5a
    nop                                           ; $7512: $00
    ldh a, [$9d]                                  ; $7513: $f0 $9d
    ld [hl], b                                    ; $7515: $70
    rst $18                                       ; $7516: $df
    jr nc, jr_0c6_74e6                            ; $7517: $30 $cd

    jr nc, jr_0c6_7501                            ; $7519: $30 $e6

    ld [hl+], a                                   ; $751b: $22
    jr jr_0c6_755d                                ; $751c: $18 $3f

    ldh a, [$03]                                  ; $751e: $f0 $03
    or e                                          ; $7520: $b3
    inc c                                         ; $7521: $0c
    ld l, l                                       ; $7522: $6d
    ldh [rNR43], a                                ; $7523: $e0 $22
    db $ed                                        ; $7525: $ed
    nop                                           ; $7526: $00
    ld hl, sp-$05                                 ; $7527: $f8 $fb
    adc b                                         ; $7529: $88
    rst $30                                       ; $752a: $f7
    ld [$2fd0], sp                                ; $752b: $08 $d0 $2f
    and e                                         ; $752e: $a3
    ld [bc], a                                    ; $752f: $02
    ld e, [hl]                                    ; $7530: $5e
    ld sp, hl                                     ; $7531: $f9

jr_0c6_7532:
    rst $38                                       ; $7532: $ff
    xor a                                         ; $7533: $af
    nop                                           ; $7534: $00
    rla                                           ; $7535: $17
    ldh [rNR12], a                                ; $7536: $e0 $12
    or d                                          ; $7538: $b2
    nop                                           ; $7539: $00
    ld c, a                                       ; $753a: $4f
    push af                                       ; $753b: $f5
    dec bc                                        ; $753c: $0b
    ld l, c                                       ; $753d: $69
    sub a                                         ; $753e: $97
    or l                                          ; $753f: $b5
    rst $38                                       ; $7540: $ff
    ld l, a                                       ; $7541: $6f
    nop                                           ; $7542: $00
    add c                                         ; $7543: $81
    ccf                                           ; $7544: $3f
    add c                                         ; $7545: $81
    push af                                       ; $7546: $f5
    dec bc                                        ; $7547: $0b
    xor c                                         ; $7548: $a9
    ld d, a                                       ; $7549: $57
    db $ec                                        ; $754a: $ec
    nop                                           ; $754b: $00
    rst $38                                       ; $754c: $ff
    db $dd                                        ; $754d: $dd
    ld [$087e], sp                                ; $754e: $08 $7e $08
    cp l                                          ; $7551: $bd
    ld [$006e], sp                                ; $7552: $08 $6e $00
    jr jr_0c6_7532                                ; $7555: $18 $db

    inc l                                         ; $7557: $2c
    ei                                            ; $7558: $fb
    inc d                                         ; $7559: $14
    ld b, a                                       ; $755a: $47
    cp b                                          ; $755b: $b8
    cp l                                          ; $755c: $bd

jr_0c6_755d:
    nop                                           ; $755d: $00
    ld a, [c]                                     ; $755e: $f2
    ld [hl], d                                    ; $755f: $72
    ld bc, $01af                                  ; $7560: $01 $af $01
    ld [hl], a                                    ; $7563: $77
    ld bc, $00df                                  ; $7564: $01 $df $00

jr_0c6_7567:
    ld bc, $09b7                                  ; $7567: $01 $b7 $09
    ei                                            ; $756a: $fb
    dec b                                         ; $756b: $05
    cp l                                          ; $756c: $bd
    ld b, e                                       ; $756d: $43
    ld l, h                                       ; $756e: $6c
    nop                                           ; $756f: $00
    sub e                                         ; $7570: $93
    ld a, [hl]                                    ; $7571: $7e
    ld [$18ad], sp                                ; $7572: $08 $ad $18

jr_0c6_7575:
    ld e, a                                       ; $7575: $5f
    jr z, jr_0c6_7567                             ; $7576: $28 $ef

    db $10                                        ; $7578: $10
    jr jr_0c6_74fd                                ; $7579: $18 $82

    ld a, l                                       ; $757b: $7d
    sub b                                         ; $757c: $90
    dec bc                                        ; $757d: $0b
    reti                                          ; $757e: $d9


    ld b, $cf                                     ; $757f: $06 $cf
    jr nc, jr_0c6_7583                            ; $7581: $30 $00

jr_0c6_7583:
    or [hl]                                       ; $7583: $b6
    ld e, c                                       ; $7584: $59
    rst $20                                       ; $7585: $e7
    rra                                           ; $7586: $1f
    ld c, [hl]                                    ; $7587: $4e
    or b                                          ; $7588: $b0
    sbc h                                         ; $7589: $9c
    ld [hl], b                                    ; $758a: $70
    nop                                           ; $758b: $00
    db $dd                                        ; $758c: $dd
    ldh a, [$f7]                                  ; $758d: $f0 $f7
    db $10                                        ; $758f: $10
    xor $11                                       ; $7590: $ee $11
    ld b, a                                       ; $7592: $47
    cp b                                          ; $7593: $b8
    nop                                           ; $7594: $00
    sbc e                                         ; $7595: $9b
    ld [hl], h                                    ; $7596: $74
    db $ed                                        ; $7597: $ed
    rst $38                                       ; $7598: $ff
    cp d                                          ; $7599: $ba
    inc b                                         ; $759a: $04
    ld e, c                                       ; $759b: $59
    inc b                                         ; $759c: $04
    nop                                           ; $759d: $00
    rst $30                                       ; $759e: $f7
    inc c                                         ; $759f: $0c
    and $1d                                       ; $75a0: $e6 $1d
    srl a                                         ; $75a2: $cb $3f
    rst $10                                       ; $75a4: $d7
    inc l                                         ; $75a5: $2c
    nop                                           ; $75a6: $00
    and l                                         ; $75a7: $a5
    ld e, h                                       ; $75a8: $5c
    sub $fc                                       ; $75a9: $d6 $fc
    cp l                                          ; $75ab: $bd
    inc b                                         ; $75ac: $04
    ld a, a                                       ; $75ad: $7f
    inc b                                         ; $75ae: $04
    add h                                         ; $75af: $84
    ld a, [bc]                                    ; $75b0: $0a
    nop                                           ; $75b1: $00
    ld e, [hl]                                    ; $75b2: $5e
    or d                                          ; $75b3: $b2
    rst $38                                       ; $75b4: $ff
    ld [hl], l                                    ; $75b5: $75
    ld b, b                                       ; $75b6: $40
    ld h, e                                       ; $75b7: $63
    sbc c                                         ; $75b8: $99
    inc b                                         ; $75b9: $04
    ld b, h                                       ; $75ba: $44
    ld l, [hl]                                    ; $75bb: $6e
    ld b, b                                       ; $75bc: $40
    inc hl                                        ; $75bd: $23
    db $ec                                        ; $75be: $ec
    rla                                           ; $75bf: $17
    or $40                                        ; $75c0: $f6 $40
    inc bc                                        ; $75c2: $03
    ei                                            ; $75c3: $fb
    jr nz, jr_0c6_75c6                            ; $75c4: $20 $00

jr_0c6_75c6:
    or [hl]                                       ; $75c6: $b6
    ld h, c                                       ; $75c7: $61
    ld a, a                                       ; $75c8: $7f
    and b                                         ; $75c9: $a0
    cp l                                          ; $75ca: $bd
    ld h, d                                       ; $75cb: $62
    ld a, [bc]                                    ; $75cc: $0a
    push af                                       ; $75cd: $f5
    db $10                                        ; $75ce: $10

jr_0c6_75cf:
    rst $38                                       ; $75cf: $ff
    rst $38                                       ; $75d0: $ff
    cp e                                          ; $75d1: $bb
    inc d                                         ; $75d2: $14
    ld bc, $1df2                                  ; $75d3: $01 $f2 $1d
    reti                                          ; $75d6: $d9


    ld a, $00                                     ; $75d7: $3e $00
    rst $30                                       ; $75d9: $f7
    ccf                                           ; $75da: $3f
    db $ed                                        ; $75db: $ed
    jr nc, @-$74                                  ; $75dc: $30 $8a

    jr nc, jr_0c6_75cf                            ; $75de: $30 $ef

    ldh a, [rP1]                                  ; $75e0: $f0 $00
    daa                                           ; $75e2: $27
    ld hl, sp-$2d                                 ; $75e3: $f8 $d3
    inc a                                         ; $75e5: $3c
    or $88                                        ; $75e6: $f6 $88
    xor a                                         ; $75e8: $af
    ret c                                         ; $75e9: $d8

    nop                                           ; $75ea: $00
    ld c, e                                       ; $75eb: $4b
    cp h                                          ; $75ec: $bc
    ld sp, hl                                     ; $75ed: $f9
    rst $38                                       ; $75ee: $ff
    ld a, [$fd40]                                 ; $75ef: $fa $40 $fd
    ld b, b                                       ; $75f2: $40
    nop                                           ; $75f3: $00
    ld l, a                                       ; $75f4: $6f
    ret nz                                        ; $75f5: $c0

    ld e, c                                       ; $75f6: $59
    and [hl]                                      ; $75f7: $a6
    rst $28                                       ; $75f8: $ef
    inc d                                         ; $75f9: $14
    ld b, d                                       ; $75fa: $42
    cp h                                          ; $75fb: $bc
    nop                                           ; $75fc: $00
    ld b, b                                       ; $75fd: $40
    cp b                                          ; $75fe: $b8
    rst $38                                       ; $75ff: $ff
    ld hl, sp-$13                                 ; $7600: $f8 $ed
    ld a, [de]                                    ; $7602: $1a
    jp z, $003d                                   ; $7603: $ca $3d $00

    xor a                                         ; $7606: $af
    ld e, a                                       ; $7607: $5f
    ld c, e                                       ; $7608: $4b
    cp h                                          ; $7609: $bc
    ld d, [hl]                                    ; $760a: $56
    nop                                           ; $760b: $00
    and c                                         ; $760c: $a1
    nop                                           ; $760d: $00
    ld b, b                                       ; $760e: $40
    xor l                                         ; $760f: $ad
    ldh [rSC], a                                  ; $7610: $e0 $02
    xor a                                         ; $7612: $af
    ld d, b                                       ; $7613: $50
    ld d, [hl]                                    ; $7614: $56
    xor c                                         ; $7615: $a9
    or a                                          ; $7616: $b7
    rst $38                                       ; $7617: $ff
    nop                                           ; $7618: $00
    cp [hl]                                       ; $7619: $be
    dec b                                         ; $761a: $05
    ld a, [$7c15]                                 ; $761b: $fa $15 $7c
    rra                                           ; $761e: $1f
    rst $08                                       ; $761f: $cf
    jr nc, jr_0c6_7622                            ; $7620: $30 $00

jr_0c6_7622:
    cp l                                          ; $7622: $bd
    ld d, b                                       ; $7623: $50
    ld e, d                                       ; $7624: $5a
    or b                                          ; $7625: $b0

jr_0c6_7626:
    add l                                         ; $7626: $85
    ld [hl], b                                    ; $7627: $70
    ld a, [hl]                                    ; $7628: $7e
    ldh a, [$80]                                  ; $7629: $f0 $80
    ld b, b                                       ; $762b: $40
    ld bc, $632f                                  ; $762c: $01 $2f $63
    rst $38                                       ; $762f: $ff
    cp l                                          ; $7630: $bd
    ld [bc], a                                    ; $7631: $02
    ld l, d                                       ; $7632: $6a
    dec b                                         ; $7633: $05
    nop                                           ; $7634: $00
    sub l                                         ; $7635: $95
    nop                                           ; $7636: $00
    ccf                                           ; $7637: $3f
    nop                                           ; $7638: $00
    rst $28                                       ; $7639: $ef
    db $10                                        ; $763a: $10
    cp d                                          ; $763b: $ba
    ld b, l                                       ; $763c: $45
    nop                                           ; $763d: $00
    xor e                                         ; $763e: $ab
    ld d, [hl]                                    ; $763f: $56
    xor e                                         ; $7640: $ab
    cp $3d                                        ; $7641: $fe $3d
    add $bf                                       ; $7643: $c6 $bf
    ld b, a                                       ; $7645: $47
    nop                                           ; $7646: $00
    rst $28                                       ; $7647: $ef
    ld b, c                                       ; $7648: $41
    rst $38                                       ; $7649: $ff
    ld b, c                                       ; $764a: $41
    push af                                       ; $764b: $f5
    ld c, e                                       ; $764c: $4b
    jr z, jr_0c6_7626                             ; $764d: $28 $d7

    nop                                           ; $764f: $00
    rst $28                                       ; $7650: $ef
    db $10                                        ; $7651: $10
    ld e, l                                       ; $7652: $5d
    or d                                          ; $7653: $b2
    ld [hl], $e9                                  ; $7654: $36 $e9
    di                                            ; $7656: $f3
    rst $38                                       ; $7657: $ff
    db $10                                        ; $7658: $10
    push af                                       ; $7659: $f5
    nop                                           ; $765a: $00
    db $eb                                        ; $765b: $eb
    or [hl]                                       ; $765c: $b6
    inc b                                         ; $765d: $04
    or d                                          ; $765e: $b2
    ld c, l                                       ; $765f: $4d
    cp l                                          ; $7660: $bd
    ld d, b                                       ; $7661: $50
    nop                                           ; $7662: $00
    ld a, [bc]                                    ; $7663: $0a
    ldh a, [$81]                                  ; $7664: $f0 $81
    ld [hl], b                                    ; $7666: $70
    cp $f0                                        ; $7667: $fe $f0
    db $db                                        ; $7669: $db
    inc [hl]                                      ; $766a: $34
    nop                                           ; $766b: $00
    sub h                                         ; $766c: $94
    ld a, e                                       ; $766d: $7b
    ld e, a                                       ; $766e: $5f
    cp a                                          ; $766f: $bf
    sub [hl]                                      ; $7670: $96
    ld a, b                                       ; $7671: $78
    ld e, e                                       ; $7672: $5b
    nop                                           ; $7673: $00
    db $10                                        ; $7674: $10

jr_0c6_7675:
    add l                                         ; $7675: $85
    nop                                           ; $7676: $00
    ld e, e                                       ; $7677: $5b
    ld a, [hl-]                                   ; $7678: $3a
    nop                                           ; $7679: $00
    ld e, [hl]                                    ; $767a: $5e
    and c                                         ; $767b: $a1
    xor l                                         ; $767c: $ad
    ld d, d                                       ; $767d: $52
    ld b, b                                       ; $767e: $40
    ld l, [hl]                                    ; $767f: $6e
    ld h, b                                       ; $7680: $60
    nop                                           ; $7681: $00
    xor a                                         ; $7682: $af
    ld e, b                                       ; $7683: $58
    xor l                                         ; $7684: $ad
    ld a, [$0dba]                                 ; $7685: $fa $ba $0d
    jr nz, jr_0c6_7709                            ; $7688: $20 $7f

    rrca                                          ; $768a: $0f
    ret nc                                        ; $768b: $d0

    dec de                                        ; $768c: $1b
    ld d, b                                       ; $768d: $50
    xor a                                         ; $768e: $af

jr_0c6_768f:
    xor l                                         ; $768f: $ad
    ld a, [de]                                    ; $7690: $1a
    add sp, $00                                   ; $7691: $e8 $00
    rra                                           ; $7693: $1f
    jp hl                                         ; $7694: $e9


    ld e, $ff                                     ; $7695: $1e $ff
    rst $38                                       ; $7697: $ff
    db $db                                        ; $7698: $db
    inc l                                         ; $7699: $2c
    add hl, hl                                    ; $769a: $29
    nop                                           ; $769b: $00
    sbc $da                                       ; $769c: $de $da
    dec l                                         ; $769e: $2d
    ld l, c                                       ; $769f: $69
    sbc [hl]                                      ; $76a0: $9e
    rst $30                                       ; $76a1: $f7
    rst $38                                       ; $76a2: $ff
    cp [hl]                                       ; $76a3: $be
    jr nz, jr_0c6_76ae                            ; $76a4: $20 $08

    inc de                                        ; $76a6: $13
    ld d, h                                       ; $76a7: $54
    ld bc, $30da                                  ; $76a8: $01 $da $30
    rst $28                                       ; $76ab: $ef
    db $10                                        ; $76ac: $10
    ld e, d                                       ; $76ad: $5a

jr_0c6_76ae:
    db $10                                        ; $76ae: $10
    or l                                          ; $76af: $b5
    or [hl]                                       ; $76b0: $b6
    ld e, a                                       ; $76b1: $5f
    ret nz                                        ; $76b2: $c0

    ld a, [hl+]                                   ; $76b3: $2a
    rst $18                                       ; $76b4: $df
    jr nc, jr_0c6_770d                            ; $76b5: $30 $56

    or c                                          ; $76b7: $b1
    nop                                           ; $76b8: $00
    sbc l                                         ; $76b9: $9d
    ld [hl], d                                    ; $76ba: $72
    ei                                            ; $76bb: $fb
    db $f4                                        ; $76bc: $f4
    db $dd                                        ; $76bd: $dd

jr_0c6_76be:
    ld b, $ba                                     ; $76be: $06 $ba
    dec b                                         ; $76c0: $05
    nop                                           ; $76c1: $00
    rst $18                                       ; $76c2: $df
    rlca                                          ; $76c3: $07
    cp l                                          ; $76c4: $bd
    ld b, [hl]                                    ; $76c5: $46
    ld a, a                                       ; $76c6: $7f
    add h                                         ; $76c7: $84
    or e                                          ; $76c8: $b3
    ld c, h                                       ; $76c9: $4c
    ld [bc], a                                    ; $76ca: $02
    ld l, a                                       ; $76cb: $6f
    sub h                                         ; $76cc: $94
    add $3c                                       ; $76cd: $c6 $3c
    ld a, [de]                                    ; $76cf: $1a
    push hl                                       ; $76d0: $e5
    ret nz                                        ; $76d1: $c0

    ld a, [hl-]                                   ; $76d2: $3a
    ld e, d                                       ; $76d3: $5a
    add b                                         ; $76d4: $80
    ld [$f505], a                                 ; $76d5: $ea $05 $f5
    ld a, [bc]                                    ; $76d8: $0a
    ld a, d                                       ; $76d9: $7a
    add l                                         ; $76da: $85
    db $f4                                        ; $76db: $f4
    dec bc                                        ; $76dc: $0b
    ld d, b                                       ; $76dd: $50
    jr nz, jr_0c6_768f                            ; $76de: $20 $af

    ei                                            ; $76e0: $fb
    ld a, d                                       ; $76e1: $7a
    inc b                                         ; $76e2: $04
    adc $21                                       ; $76e3: $ce $21
    cp l                                          ; $76e5: $bd
    ld h, d                                       ; $76e6: $62
    rst $38                                       ; $76e7: $ff
    nop                                           ; $76e8: $00
    rst $38                                       ; $76e9: $ff
    or l                                          ; $76ea: $b5
    ret nz                                        ; $76eb: $c0

    ld l, d                                       ; $76ec: $6a
    add b                                         ; $76ed: $80
    sbc $80                                       ; $76ee: $de $80
    jp hl                                         ; $76f0: $e9


    jr nz, jr_0c6_7675                            ; $76f1: $20 $82

    db $db                                        ; $76f3: $db
    ld d, h                                       ; $76f4: $54
    inc bc                                        ; $76f5: $03
    ld e, d                                       ; $76f6: $5a
    and l                                         ; $76f7: $a5
    rst $28                                       ; $76f8: $ef
    rst $38                                       ; $76f9: $ff
    ld a, l                                       ; $76fa: $7d
    inc b                                         ; $76fb: $04
    db $10                                        ; $76fc: $10
    ld h, $10                                     ; $76fd: $26 $10
    db $fd                                        ; $76ff: $fd
    db $10                                        ; $7700: $10

jr_0c6_7701:
    ld h, b                                       ; $7701: $60

Call_0c6_7702:
    jr z, jr_0c6_7701                             ; $7702: $28 $fd

    ldh a, [rSC]                                  ; $7704: $f0 $02
    ret z                                         ; $7706: $c8

    jr nc, jr_0c6_76be                            ; $7707: $30 $b5

jr_0c6_7709:
    ld d, b                                       ; $7709: $50
    rst $38                                       ; $770a: $ff
    db $10                                        ; $770b: $10
    ld h, b                                       ; $770c: $60

jr_0c6_770d:
    jr z, @+$5f                                   ; $770d: $28 $5d

    add b                                         ; $770f: $80
    ld h, b                                       ; $7710: $60
    ld h, b                                       ; $7711: $60
    rst $38                                       ; $7712: $ff
    rst $38                                       ; $7713: $ff
    ld l, d                                       ; $7714: $6a
    add b                                         ; $7715: $80
    call nc, $bd00                                ; $7716: $d4 $00 $bd
    nop                                           ; $7719: $00
    nop                                           ; $771a: $00
    db $d3                                        ; $771b: $d3
    inc b                                         ; $771c: $04
    or a                                          ; $771d: $b7
    ld [$01fe], sp                                ; $771e: $08 $fe $01
    or l                                          ; $7721: $b5
    nop                                           ; $7722: $00
    ld c, d                                       ; $7723: $4a
    ld e, a                                       ; $7724: $5f
    rst $38                                       ; $7725: $ff
    inc de                                        ; $7726: $13
    inc c                                         ; $7727: $0c
    xor l                                         ; $7728: $ad
    ld a, [bc]                                    ; $7729: $0a
    rst $38                                       ; $772a: $ff
    nop                                           ; $772b: $00
    ld [$0cfb], sp                                ; $772c: $08 $fb $0c
    ld l, d                                       ; $772f: $6a
    adc l                                         ; $7730: $8d
    cp c                                          ; $7731: $b9
    ld c, [hl]                                    ; $7732: $4e
    rst $18                                       ; $7733: $df
    nop                                           ; $7734: $00
    cpl                                           ; $7735: $2f
    ret nz                                        ; $7736: $c0

    rlca                                          ; $7737: $07
    rst $08                                       ; $7738: $cf
    ld b, $00                                     ; $7739: $06 $00
    rst $38                                       ; $773b: $ff
    sbc $ff                                       ; $773c: $de $ff
    sbc $f3                                       ; $773e: $de $f3
    ld a, [c]                                     ; $7740: $f2
    di                                            ; $7741: $f3
    jp nc, $f330                                  ; $7742: $d2 $30 $f3

    cp $04                                        ; $7745: $fe $04
    nop                                           ; $7747: $00
    ld [bc], a                                    ; $7748: $02
    nop                                           ; $7749: $00
    db $e3                                        ; $774a: $e3
    dec e                                         ; $774b: $1d
    db $e3                                        ; $774c: $e3
    dec e                                         ; $774d: $1d
    nop                                           ; $774e: $00
    ld [c], a                                     ; $774f: $e2
    cp l                                          ; $7750: $bd
    cp $01                                        ; $7751: $fe $01
    cp $a1                                        ; $7753: $fe $a1
    ld [c], a                                     ; $7755: $e2
    dec e                                         ; $7756: $1d
    add b                                         ; $7757: $80
    ld [bc], a                                    ; $7758: $02
    ld [$f8fc], sp                                ; $7759: $08 $fc $f8
    call nz, $04c0                                ; $775c: $c4 $c0 $04
    jp $083c                                      ; $775f: $c3 $3c $08


    jp $c03c                                      ; $7762: $c3 $3c $c0


    inc b                                         ; $7765: $04
    ld [bc], a                                    ; $7766: $02
    db $10                                        ; $7767: $10
    ld a, e                                       ; $7768: $7b
    ld a, a                                       ; $7769: $7f
    ld a, b                                       ; $776a: $78
    ld bc, $7b7f                                  ; $776b: $01 $7f $7b
    db $fc                                        ; $776e: $fc
    ld a, b                                       ; $776f: $78
    rst $38                                       ; $7770: $ff
    ld a, b                                       ; $7771: $78
    rrca                                          ; $7772: $0f
    ld [bc], a                                    ; $7773: $02
    jr jr_0c6_7776                                ; $7774: $18 $00

jr_0c6_7776:
    ld a, a                                       ; $7776: $7f
    add a                                         ; $7777: $87
    ld c, b                                       ; $7778: $48
    add b                                         ; $7779: $80
    ld c, a                                       ; $777a: $4f
    add a                                         ; $777b: $87

jr_0c6_777c:
    ld a, b                                       ; $777c: $78
    add b                                         ; $777d: $80
    db $10                                        ; $777e: $10
    ld c, b                                       ; $777f: $48
    add b                                         ; $7780: $80
    ld a, b                                       ; $7781: $78
    ld [bc], a                                    ; $7782: $02
    db $10                                        ; $7783: $10
    rst $20                                       ; $7784: $e7
    ldh [$e4], a                                  ; $7785: $e0 $e4
    ld hl, sp-$60                                 ; $7787: $f8 $a0
    ld [bc], a                                    ; $7789: $02
    db $10                                        ; $778a: $10
    jr jr_0c6_778f                                ; $778b: $18 $02

    jr @+$01                                      ; $778d: $18 $ff

jr_0c6_778f:
    ld e, $ff                                     ; $778f: $1e $ff
    ld e, $f3                                     ; $7791: $1e $f3
    ld bc, $f3b2                                  ; $7793: $01 $b2 $f3
    ld d, d                                       ; $7796: $52
    di                                            ; $7797: $f3
    ld a, $f3                                     ; $7798: $3e $f3
    ld [de], a                                    ; $779a: $12

jr_0c6_779b:
    ld [bc], a                                    ; $779b: $02
    ld [$e70a], sp                                ; $779c: $08 $0a $e7
    db $e3                                        ; $779f: $e3
    rst $20                                       ; $77a0: $e7
    ei                                            ; $77a1: $fb
    ld [bc], a                                    ; $77a2: $02
    db $10                                        ; $77a3: $10
    dec de                                        ; $77a4: $1b
    ld [bc], a                                    ; $77a5: $02
    jr jr_0c6_779b                                ; $77a6: $18 $f3

    jr nz, jr_0c6_777c                            ; $77a8: $20 $d2

    rst $38                                       ; $77aa: $ff
    ld bc, $fe08                                  ; $77ab: $01 $08 $fe
    pop af                                        ; $77ae: $f1
    ldh a, [$f1]                                  ; $77af: $f0 $f1
    ldh a, [rSC]                                  ; $77b1: $f0 $02
    pop de                                        ; $77b3: $d1
    ret nz                                        ; $77b4: $c0

    rst $18                                       ; $77b5: $df
    ret nz                                        ; $77b6: $c0

    ld [c], a                                     ; $77b7: $e2
    dec e                                         ; $77b8: $1d
    db $10                                        ; $77b9: $10
    ld [$8007], sp                                ; $77ba: $08 $07 $80
    ld [bc], a                                    ; $77bd: $02
    nop                                           ; $77be: $00
    scf                                           ; $77bf: $37
    ld hl, sp+$04                                 ; $77c0: $f8 $04
    ld hl, sp+$34                                 ; $77c2: $f8 $34
    ret z                                         ; $77c4: $c8

    inc b                                         ; $77c5: $04
    ld d, b                                       ; $77c6: $50
    ret nz                                        ; $77c7: $c0

    jr nz, @+$0a                                  ; $77c8: $20 $08

    adc b                                         ; $77ca: $88
    ld bc, $fd00                                  ; $77cb: $01 $00 $fd

jr_0c6_77ce:
    ld a, b                                       ; $77ce: $78
    adc d                                         ; $77cf: $8a
    ld [$fd0a], sp                                ; $77d0: $08 $0a $fd
    ld a, b                                       ; $77d3: $78
    ld a, b                                       ; $77d4: $78
    rrca                                          ; $77d5: $0f
    cpl                                           ; $77d6: $2f
    db $10                                        ; $77d7: $10
    rra                                           ; $77d8: $1f
    ld [bc], a                                    ; $77d9: $02
    nop                                           ; $77da: $00

jr_0c6_77db:
    ld sp, $f802                                  ; $77db: $31 $02 $f8
    ld d, c                                       ; $77de: $51
    cp $11                                        ; $77df: $fe $11
    ld a, b                                       ; $77e1: $78
    add b                                         ; $77e2: $80
    ld b, b                                       ; $77e3: $40
    ld [$003f], sp                                ; $77e4: $08 $3f $00
    rst $38                                       ; $77e7: $ff
    rlca                                          ; $77e8: $07
    jp $c307                                      ; $77e9: $c3 $07 $c3


    inc h                                         ; $77ec: $24

jr_0c6_77ed:
    ret c                                         ; $77ed: $d8

    daa                                           ; $77ee: $27
    ld h, b                                       ; $77ef: $60
    db $db                                        ; $77f0: $db
    ld [hl], d                                    ; $77f1: $72
    nop                                           ; $77f2: $00
    ld d, c                                       ; $77f3: $51
    nop                                           ; $77f4: $00
    adc a                                         ; $77f5: $8f
    ld a, h                                       ; $77f6: $7c
    adc a                                         ; $77f7: $8f
    ld a, h                                       ; $77f8: $7c
    rst $38                                       ; $77f9: $ff
    ld bc, $ff0c                                  ; $77fa: $01 $0c $ff
    inc c                                         ; $77fd: $0c
    adc a                                         ; $77fe: $8f
    ld a, h                                       ; $77ff: $7c
    di                                            ; $7800: $f3
    ld [de], a                                    ; $7801: $12
    ld h, b                                       ; $7802: $60
    jr c, @+$04                                   ; $7803: $38 $02

    ld de, $1f00                                  ; $7805: $11 $00 $1f
    nop                                           ; $7808: $00
    rst $20                                       ; $7809: $e7
    dec de                                        ; $780a: $1b
    jr nz, @+$12                                  ; $780b: $20 $10

    ld a, a                                       ; $780d: $7f
    ld [bc], a                                    ; $780e: $02
    adc a                                         ; $780f: $8f
    ld a, a                                       ; $7810: $7f
    rst $38                                       ; $7811: $ff
    rrca                                          ; $7812: $0f
    rst $38                                       ; $7813: $ff
    rrca                                          ; $7814: $0f
    ld b, $00                                     ; $7815: $06 $00
    ldh [$3b], a                                  ; $7817: $e0 $3b
    pop de                                        ; $7819: $d1
    ret nz                                        ; $781a: $c0

    ld [bc], a                                    ; $781b: $02
    jr z, jr_0c6_7898                             ; $781c: $28 $7a

    db $10                                        ; $781e: $10
    halt                                          ; $781f: $76
    nop                                           ; $7820: $00
    rlca                                          ; $7821: $07
    ld [bc], a                                    ; $7822: $02
    jr nz, jr_0c6_789f                            ; $7823: $20 $7a

    db $10                                        ; $7825: $10
    ld h, e                                       ; $7826: $63
    ld [$3802], sp                                ; $7827: $08 $02 $38
    xor d                                         ; $782a: $aa
    ld [$31f8], sp                                ; $782b: $08 $f8 $31
    cp $76                                        ; $782e: $fe $76
    nop                                           ; $7830: $00
    ld [bc], a                                    ; $7831: $02
    jr jr_0c6_77ed                                ; $7832: $18 $b9

    xor d                                         ; $7834: $aa
    db $10                                        ; $7835: $10
    jp $1918                                      ; $7836: $c3 $18 $19


    ld e, $09                                     ; $7839: $1e $09
    ld a, d                                       ; $783b: $7a
    jr z, @-$6f                                   ; $783c: $28 $8f

    ld [hl], h                                    ; $783e: $74
    ld [bc], a                                    ; $783f: $02
    jr jr_0c6_77ce                                ; $7840: $18 $8c

    jp c, $e010                                   ; $7842: $da $10 $e0

    ld de, $0200                                  ; $7845: $11 $00 $02
    jr z, jr_0c6_78c4                             ; $7848: $28 $7a

    jr z, jr_0c6_77db                             ; $784a: $28 $8f

    ld [hl], a                                    ; $784c: $77
    ret nz                                        ; $784d: $c0

    ld [bc], a                                    ; $784e: $02
    jr @-$04                                      ; $784f: $18 $fa

    ld [$936a], sp                                ; $7851: $08 $6a $93
    sbc $25                                       ; $7854: $de $25
    ld c, [hl]                                    ; $7856: $4e
    sub e                                         ; $7857: $93
    nop                                           ; $7858: $00
    halt                                          ; $7859: $76
    dec de                                        ; $785a: $1b
    ld [hl], a                                    ; $785b: $77
    adc c                                         ; $785c: $89
    cp d                                          ; $785d: $ba
    call $cd10                                    ; $785e: $cd $10 $cd
    nop                                           ; $7861: $00
    ld a, l                                       ; $7862: $7d
    add $3d                                       ; $7863: $c6 $3d
    db $e4                                        ; $7865: $e4
    ld a, $f2                                     ; $7866: $3e $f2
    ld e, $e4                                     ; $7868: $1e $e4
    nop                                           ; $786a: $00
    ld l, c                                       ; $786b: $69
    ret z                                         ; $786c: $c8

    ccf                                           ; $786d: $3f
    sub c                                         ; $786e: $91
    db $eb                                        ; $786f: $eb
    ld hl, $458a                                  ; $7870: $21 $8a $45
    nop                                           ; $7873: $00
    add [hl]                                      ; $7874: $86
    adc c                                         ; $7875: $89
    or b                                          ; $7876: $b0
    adc e                                         ; $7877: $8b
    ld b, l                                       ; $7878: $45
    ld l, $62                                     ; $7879: $2e $62
    cpl                                           ; $787b: $2f
    nop                                           ; $787c: $00
    nop                                           ; $787d: $00
    cp a                                          ; $787e: $bf
    adc b                                         ; $787f: $88
    cpl                                           ; $7880: $2f
    add hl, bc                                    ; $7881: $09
    ld l, a                                       ; $7882: $6f
    db $f4                                        ; $7883: $f4
    adc e                                         ; $7884: $8b
    nop                                           ; $7885: $00
    ld l, h                                       ; $7886: $6c
    rra                                           ; $7887: $1f
    ld e, b                                       ; $7888: $58
    cpl                                           ; $7889: $2f
    cp h                                          ; $788a: $bc
    ld c, e                                       ; $788b: $4b
    sbc h                                         ; $788c: $9c
    daa                                           ; $788d: $27
    nop                                           ; $788e: $00
    xor $35                                       ; $788f: $ee $35
    and [hl]                                      ; $7891: $a6
    dec de                                        ; $7892: $1b
    ld a, h                                       ; $7893: $7c
    adc c                                         ; $7894: $89
    ld [hl], b                                    ; $7895: $70
    adc l                                         ; $7896: $8d
    nop                                           ; $7897: $00

jr_0c6_7898:
    cp a                                          ; $7898: $bf
    push bc                                       ; $7899: $c5
    ld e, d                                       ; $789a: $5a
    jp z, $e47c                                   ; $789b: $ca $7c $e4

    inc a                                         ; $789e: $3c

jr_0c6_789f:
    ret z                                         ; $789f: $c8

    nop                                           ; $78a0: $00
    ld a, [c]                                     ; $78a1: $f2
    sub c                                         ; $78a2: $91
    ld a, a                                       ; $78a3: $7f
    ld hl, $22ef                                  ; $78a4: $21 $ef $22
    ld [$0085], sp                                ; $78a7: $08 $85 $00
    inc d                                         ; $78aa: $14
    dec bc                                        ; $78ab: $0b
    ld h, b                                       ; $78ac: $60
    ld d, $8b                                     ; $78ad: $16 $8b
    ld e, h                                       ; $78af: $5c
    push bc                                       ; $78b0: $c5
    ld e, [hl]                                    ; $78b1: $5e
    nop                                           ; $78b2: $00
    ld bc, $103e                                  ; $78b3: $01 $3e $10
    ld a, a                                       ; $78b6: $7f
    add hl, de                                    ; $78b7: $19
    rst $08                                       ; $78b8: $cf
    ldh [$9f], a                                  ; $78b9: $e0 $9f
    nop                                           ; $78bb: $00
    or [hl]                                       ; $78bc: $b6
    dec e                                         ; $78bd: $1d
    ld [hl], b                                    ; $78be: $70
    sbc a                                         ; $78bf: $9f
    ld a, b                                       ; $78c0: $78
    sub a                                         ; $78c1: $97
    jr c, jr_0c6_7913                             ; $78c2: $38 $4f

jr_0c6_78c4:
    nop                                           ; $78c4: $00
    db $fd                                        ; $78c5: $fd
    dec hl                                        ; $78c6: $2b
    ld c, [hl]                                    ; $78c7: $4e
    dec [hl]                                      ; $78c8: $35
    or c                                          ; $78c9: $b1
    ld a, [de]                                    ; $78ca: $1a
    ld hl, $009a                                  ; $78cb: $21 $9a $00
    ei                                            ; $78ce: $fb
    adc l                                         ; $78cf: $8d
    or l                                          ; $78d0: $b5
    and h                                         ; $78d1: $a4
    ld sp, hl                                     ; $78d2: $f9
    ret z                                         ; $78d3: $c8

    ld a, c                                       ; $78d4: $79
    sub b                                         ; $78d5: $90
    nop                                           ; $78d6: $00
    and $21                                       ; $78d7: $e6 $21
    xor a                                         ; $78d9: $af
    ld [hl+], a                                   ; $78da: $22
    sbc $45                                       ; $78db: $de $45
    dec d                                         ; $78dd: $15
    adc e                                         ; $78de: $8b
    nop                                           ; $78df: $00
    inc c                                         ; $78e0: $0c
    ld [de], a                                    ; $78e1: $12
    ld b, h                                       ; $78e2: $44
    add hl, hl                                    ; $78e3: $29
    ld d, $b9                                     ; $78e4: $16 $b9
    adc d                                         ; $78e6: $8a
    cp h                                          ; $78e7: $bc
    nop                                           ; $78e8: $00
    ld de, $216c                                  ; $78e9: $11 $6c $21
    cp $32                                        ; $78ec: $fe $32
    sbc a                                         ; $78ee: $9f
    ld h, b                                       ; $78ef: $60
    rra                                           ; $78f0: $1f
    nop                                           ; $78f1: $00
    db $db                                        ; $78f2: $db
    dec a                                         ; $78f3: $3d
    db $e3                                        ; $78f4: $e3
    ld a, $f1                                     ; $78f5: $3e $f1
    cpl                                           ; $78f7: $2f
    ld [hl], c                                    ; $78f8: $71
    sbc [hl]                                      ; $78f9: $9e
    nop                                           ; $78fa: $00
    db $db                                        ; $78fb: $db
    ld l, l                                       ; $78fc: $6d
    db $dd                                        ; $78fd: $dd
    ld a, [hl+]                                   ; $78fe: $2a
    ld l, e                                       ; $78ff: $6b
    inc [hl]                                      ; $7900: $34
    ldh [rNR31], a                                ; $7901: $e0 $1b

Call_0c6_7903:
    nop                                           ; $7903: $00
    ld a, a                                       ; $7904: $7f
    adc c                                         ; $7905: $89
    cp l                                          ; $7906: $bd
    add $15                                       ; $7907: $c6 $15
    ld [c], a                                     ; $7909: $e2
    ld l, h                                       ; $790a: $6c
    or e                                          ; $790b: $b3
    nop                                           ; $790c: $00
    ld a, [hl-]                                   ; $790d: $3a
    db $e3                                        ; $790e: $e3
    inc c                                         ; $790f: $0c
    di                                            ; $7910: $f3
    dec l                                         ; $7911: $2d
    db $f4                                        ; $7912: $f4

jr_0c6_7913:
    sub [hl]                                      ; $7913: $96
    db $fd                                        ; $7914: $fd
    nop                                           ; $7915: $00
    ld e, b                                       ; $7916: $58
    ld l, a                                       ; $7917: $6f
    ld h, c                                       ; $7918: $61
    sub [hl]                                      ; $7919: $96
    di                                            ; $791a: $f3
    ld l, h                                       ; $791b: $6c
    push de                                       ; $791c: $d5
    ld c, b                                       ; $791d: $48
    nop                                           ; $791e: $00
    ret c                                         ; $791f: $d8

    or e                                          ; $7920: $b3
    sbc l                                         ; $7921: $9d
    ld h, d                                       ; $7922: $62
    or h                                          ; $7923: $b4
    adc a                                         ; $7924: $8f
    add sp, -$61                                  ; $7925: $e8 $9f
    nop                                           ; $7927: $00
    ld a, [c]                                     ; $7928: $f2
    ld e, $26                                     ; $7929: $1e $26
    ld a, l                                       ; $792b: $7d
    jp nc, $196b                                  ; $792c: $d2 $6b $19

    jp hl                                         ; $792f: $e9


    nop                                           ; $7930: $00
    dec [hl]                                      ; $7931: $35
    pop hl                                        ; $7932: $e1
    add hl, bc                                    ; $7933: $09
    ldh a, [$8d]                                  ; $7934: $f0 $8d
    ldh a, [$d4]                                  ; $7936: $f0 $d4
    ld l, b                                       ; $7938: $68
    nop                                           ; $7939: $00
    ld l, l                                       ; $793a: $6d
    inc [hl]                                      ; $793b: $34
    xor l                                         ; $793c: $ad
    call nz, $e611                                ; $793d: $c4 $11 $e6
    ld a, h                                       ; $7940: $7c
    and e                                         ; $7941: $a3
    nop                                           ; $7942: $00
    ld a, [hl+]                                   ; $7943: $2a
    di                                            ; $7944: $f3
    adc h                                         ; $7945: $8c
    di                                            ; $7946: $f3
    sbc e                                         ; $7947: $9b
    or $96                                        ; $7948: $f6 $96

jr_0c6_794a:
    db $fd                                        ; $794a: $fd
    nop                                           ; $794b: $00
    ld e, d                                       ; $794c: $5a
    ld l, l                                       ; $794d: $6d
    ld hl, $f396                                  ; $794e: $21 $96 $f3
    xor h                                         ; $7951: $ac
    ld b, l                                       ; $7952: $45
    ret c                                         ; $7953: $d8

    nop                                           ; $7954: $00
    jp c, $9cb1                                   ; $7955: $da $b1 $9c

    ld h, e                                       ; $7958: $63
    ld [hl], h                                    ; $7959: $74
    rst $00                                       ; $795a: $c7
    or $8d                                        ; $795b: $f6 $8d
    jr nz, jr_0c6_794a                            ; $795d: $20 $eb

    dec e                                         ; $795f: $1d
    jr nc, jr_0c6_799a                            ; $7960: $30 $38

    add l                                         ; $7962: $85
    ld hl, sp+$54                                 ; $7963: $f8 $54
    add sp, $67                                   ; $7965: $e8 $67
    ld b, b                                       ; $7967: $40
    inc a                                         ; $7968: $3c
    jr nc, jr_0c6_79a3                            ; $7969: $30 $38

    sub d                                         ; $796b: $92
    cp $4f                                        ; $796c: $fe $4f
    ld a, h                                       ; $796e: $7c
    ld a, $25                                     ; $796f: $3e $25
    ld bc, $a403                                  ; $7971: $01 $03 $a4
    di                                            ; $7974: $f3
    xor h                                         ; $7975: $ac
    ld h, l                                       ; $7976: $65
    ret c                                         ; $7977: $d8

    sbc $30                                       ; $7978: $de $30
    nop                                           ; $797a: $00
    nop                                           ; $797b: $00
    ld e, d                                       ; $797c: $5a
    rst $00                                       ; $797d: $c7
    db $f4                                        ; $797e: $f4
    adc a                                         ; $797f: $8f
    ld a, c                                       ; $7980: $79
    adc a                                         ; $7981: $8f
    inc h                                         ; $7982: $24
    ld a, a                                       ; $7983: $7f
    nop                                           ; $7984: $00
    ld b, d                                       ; $7985: $42
    ei                                            ; $7986: $fb
    ld [de], a                                    ; $7987: $12
    di                                            ; $7988: $f3
    dec d                                         ; $7989: $15
    pop af                                        ; $798a: $f1
    add hl, bc                                    ; $798b: $09
    ldh a, [rP1]                                  ; $798c: $f0 $00
    ld b, h                                       ; $798e: $44
    ld hl, sp+$78                                 ; $798f: $f8 $78
    and h                                         ; $7991: $a4
    ld h, $3c                                     ; $7992: $26 $3c
    xor b                                         ; $7994: $a8
    call $1900                                    ; $7995: $cd $00 $19
    add $58                                       ; $7998: $c6 $58

jr_0c6_799a:
    db $e3                                        ; $799a: $e3
    add hl, hl                                    ; $799b: $29
    pop af                                        ; $799c: $f1
    add [hl]                                      ; $799d: $86
    ld sp, hl                                     ; $799e: $f9
    nop                                           ; $799f: $00
    call Call_0c6_4b7b                            ; $79a0: $cd $7b $4b

jr_0c6_79a3:
    ld a, [hl]                                    ; $79a3: $7e
    xor h                                         ; $79a4: $ac
    scf                                           ; $79a5: $37
    cpl                                           ; $79a6: $2f
    ld e, h                                       ; $79a7: $5c
    nop                                           ; $79a8: $00
    ld d, d                                       ; $79a9: $52
    ld l, h                                       ; $79aa: $6c
    ld b, d                                       ; $79ab: $42
    ld a, l                                       ; $79ac: $7d
    add c                                         ; $79ad: $81
    ccf                                           ; $79ae: $3f
    ld [de], a                                    ; $79af: $12
    rra                                           ; $79b0: $1f
    nop                                           ; $79b1: $00
    add hl, bc                                    ; $79b2: $09
    rra                                           ; $79b3: $1f
    db $db                                        ; $79b4: $db
    dec c                                         ; $79b5: $0d
    ld h, e                                       ; $79b6: $63
    inc a                                         ; $79b7: $3c
    add a                                         ; $79b8: $87
    ld a, h                                       ; $79b9: $7c
    nop                                           ; $79ba: $00
    cpl                                           ; $79bb: $2f
    ret c                                         ; $79bc: $d8

    add a                                         ; $79bd: $87
    pop af                                        ; $79be: $f1
    ld a, h                                       ; $79bf: $7c
    and e                                         ; $79c0: $a3
    ld a, b                                       ; $79c1: $78
    rst $00                                       ; $79c2: $c7
    nop                                           ; $79c3: $00
    jp hl                                         ; $79c4: $e9


    rra                                           ; $79c5: $1f
    inc hl                                        ; $79c6: $23
    dec e                                         ; $79c7: $1d
    and e                                         ; $79c8: $a3
    ld a, h                                       ; $79c9: $7c
    inc h                                         ; $79ca: $24
    ld a, h                                       ; $79cb: $7c
    nop                                           ; $79cc: $00
    ld [hl+], a                                   ; $79cd: $22
    db $fc                                        ; $79ce: $fc
    ld [hl+], a                                   ; $79cf: $22
    cp $33                                        ; $79d0: $fe $33
    cp $79                                        ; $79d2: $fe $79
    rst $08                                       ; $79d4: $cf
    nop                                           ; $79d5: $00
    ld a, [hl-]                                   ; $79d6: $3a
    adc l                                         ; $79d7: $8d
    sbc h                                         ; $79d8: $9c
    rst $00                                       ; $79d9: $c7
    jr c, jr_0c6_79a3                             ; $79da: $38 $c7

    sbc e                                         ; $79dc: $9b
    ld l, [hl]                                    ; $79dd: $6e
    nop                                           ; $79de: $00
    ld h, c                                       ; $79df: $61
    ld a, $a1                                     ; $79e0: $3e $a1
    ld a, $c0                                     ; $79e2: $3e $c0
    rra                                           ; $79e4: $1f
    adc c                                         ; $79e5: $89
    rrca                                          ; $79e6: $0f
    nop                                           ; $79e7: $00
    add d                                         ; $79e8: $82
    rrca                                          ; $79e9: $0f
    db $ed                                        ; $79ea: $ed
    add [hl]                                      ; $79eb: $86
    ret c                                         ; $79ec: $d8

    sub a                                         ; $79ed: $97
    jp $003e                                      ; $79ee: $c3 $3e $00


    sub [hl]                                      ; $79f1: $96
    ld l, h                                       ; $79f2: $6c
    ld b, e                                       ; $79f3: $43
    ld hl, sp-$42                                 ; $79f4: $f8 $be
    pop de                                        ; $79f6: $d1
    inc a                                         ; $79f7: $3c
    db $e3                                        ; $79f8: $e3
    nop                                           ; $79f9: $00
    ld a, d                                       ; $79fa: $7a
    rst $00                                       ; $79fb: $c7
    pop de                                        ; $79fc: $d1

Call_0c6_79fd:
    adc [hl]                                      ; $79fd: $8e
    ldh a, [$1f]                                  ; $79fe: $f0 $1f
    and [hl]                                      ; $7a00: $a6

Call_0c6_7a01:
    inc a                                         ; $7a01: $3c
    nop                                           ; $7a02: $00
    sub c                                         ; $7a03: $91
    ld a, [hl]                                    ; $7a04: $7e
    sub c                                         ; $7a05: $91
    rst $38                                       ; $7a06: $ff
    add hl, de                                    ; $7a07: $19
    rst $38                                       ; $7a08: $ff
    inc a                                         ; $7a09: $3c
    rst $20                                       ; $7a0a: $e7
    nop                                           ; $7a0b: $00
    ld e, l                                       ; $7a0c: $5d
    add $ce                                       ; $7a0d: $c6 $ce
    db $e3                                        ; $7a0f: $e3
    ld c, d                                       ; $7a10: $4a
    ld sp, $3f85                                  ; $7a11: $31 $85 $3f
    nop                                           ; $7a14: $00
    jr nc, jr_0c6_7a36                            ; $7a15: $30 $1f

    ld d, b                                       ; $7a17: $50
    rra                                           ; $7a18: $1f
    ldh [rIF], a                                  ; $7a19: $e0 $0f
    call nz, Call_000_0087                        ; $7a1b: $c4 $87 $00
    add c                                         ; $7a1e: $81
    ld b, a                                       ; $7a1f: $47
    ld l, [hl]                                    ; $7a20: $6e
    jp $e53e                                      ; $7a21: $c3 $3e $e5


    xor e                                         ; $7a24: $ab
    ld d, $00                                     ; $7a25: $16 $00
    ld c, e                                       ; $7a27: $4b
    ld [hl], $a1                                  ; $7a28: $36 $a1
    ld a, h                                       ; $7a2a: $7c
    ld e, a                                       ; $7a2b: $5f
    add sp, -$62                                  ; $7a2c: $e8 $9e
    pop af                                        ; $7a2e: $f1
    nop                                           ; $7a2f: $00
    dec a                                         ; $7a30: $3d
    db $e3                                        ; $7a31: $e3
    ld l, b                                       ; $7a32: $68
    rst $00                                       ; $7a33: $c7
    ld [hl], h                                    ; $7a34: $74
    adc a                                         ; $7a35: $8f

jr_0c6_7a36:
    db $d3                                        ; $7a36: $d3
    ld a, $04                                     ; $7a37: $3e $04
    ld a, [bc]                                    ; $7a39: $0a
    ld a, l                                       ; $7a3a: $7d
    ret z                                         ; $7a3b: $c8

    ld a, a                                       ; $7a3c: $7f
    inc c                                         ; $7a3d: $0c
    push hl                                       ; $7a3e: $e5
    ld [bc], a                                    ; $7a3f: $02
    cpl                                           ; $7a40: $2f
    pop af                                        ; $7a41: $f1
    nop                                           ; $7a42: $00
    ld d, a                                       ; $7a43: $57
    reti                                          ; $7a44: $d9


    ld b, a                                       ; $7a45: $47
    sbc b                                         ; $7a46: $98
    ld b, d                                       ; $7a47: $42
    rra                                           ; $7a48: $1f
    sbc h                                         ; $7a49: $9c
    dec bc                                        ; $7a4a: $0b
    nop                                           ; $7a4b: $00
    xor b                                         ; $7a4c: $a8
    adc a                                         ; $7a4d: $8f
    ldh a, [$87]                                  ; $7a4e: $f0 $87
    ld h, d                                       ; $7a50: $62
    jp $21d0                                      ; $7a51: $c3 $d0 $21


    nop                                           ; $7a54: $00
    dec d                                         ; $7a55: $15
    pop af                                        ; $7a56: $f1
    ld a, [de]                                    ; $7a57: $1a
    pop af                                        ; $7a58: $f1
    rst $28                                       ; $7a59: $ef
    ld e, b                                       ; $7a5a: $58
    cp [hl]                                       ; $7a5b: $be
    pop de                                        ; $7a5c: $d1
    nop                                           ; $7a5d: $00
    or l                                          ; $7a5e: $b5
    db $e3                                        ; $7a5f: $e3
    ld e, d                                       ; $7a60: $5a
    rst $20                                       ; $7a61: $e7
    jp $b57c                                      ; $7a62: $c3 $7c $b5


    ld a, e                                       ; $7a65: $7b
    nop                                           ; $7a66: $00
    inc hl                                        ; $7a67: $23
    sbc $2a                                       ; $7a68: $de $2a
    ret c                                         ; $7a6a: $d8

    ld c, e                                       ; $7a6b: $4b
    ld a, [$f198]                                 ; $7a6c: $fa $98 $f1
    nop                                           ; $7a6f: $00
    dec hl                                        ; $7a70: $2b
    pop hl                                        ; $7a71: $e1
    ld c, l                                       ; $7a72: $4d
    jp nz, $892c                                  ; $7a73: $c2 $2c $89

    sub l                                         ; $7a76: $95
    dec bc                                        ; $7a77: $0b
    nop                                           ; $7a78: $00
    ld a, [$f017]                                 ; $7a79: $fa $17 $f0
    ld c, a                                       ; $7a7c: $4f
    ld e, $63                                     ; $7a7d: $1e $63
    daa                                           ; $7a7f: $27
    ld sp, $ae00                                  ; $7a80: $31 $00 $ae
    ld sp, $98c7                                  ; $7a83: $31 $c7 $98
    sub $98                                       ; $7a86: $d6 $98
    dec hl                                        ; $7a88: $2b
    call z, $7300                                 ; $7a89: $cc $00 $73
    call nz, $46a5                                ; $7a8c: $c4 $a5 $46
    ld [hl], e                                    ; $7a8f: $73
    sbc $2f                                       ; $7a90: $de $2f
    db $f4                                        ; $7a92: $f4
    nop                                           ; $7a93: $00
    ld l, l                                       ; $7a94: $6d
    cp b                                          ; $7a95: $b8
    sub d                                         ; $7a96: $92
    ld sp, hl                                     ; $7a97: $f9
    or b                                          ; $7a98: $b0
    db $db                                        ; $7a99: $db
    db $eb                                        ; $7a9a: $eb
    ld e, [hl]                                    ; $7a9b: $5e
    nop                                           ; $7a9c: $00
    ret z                                         ; $7a9d: $c8

    ld [hl], a                                    ; $7a9e: $77
    db $ed                                        ; $7a9f: $ed
    inc sp                                        ; $7aa0: $33
    ld e, e                                       ; $7aa1: $5b
    scf                                           ; $7aa2: $37
    and [hl]                                      ; $7aa3: $a6
    ld a, h                                       ; $7aa4: $7c
    nop                                           ; $7aa5: $00
    ld c, [hl]                                    ; $7aa6: $4e
    ld hl, sp-$6d                                 ; $7aa7: $f8 $93
    ldh a, [$cb]                                  ; $7aa9: $f0 $cb
    ld hl, $c265                                  ; $7aab: $21 $65 $c2
    nop                                           ; $7aae: $00
    cp $85                                        ; $7aaf: $fe $85
    sbc h                                         ; $7ab1: $9c
    dec bc                                        ; $7ab2: $0b
    adc a                                         ; $7ab3: $8f
    ld de, $9855                                  ; $7ab4: $11 $55 $98
    nop                                           ; $7ab7: $00
    bit 1, h                                      ; $7ab8: $cb $4c
    ld [hl], e                                    ; $7aba: $73
    call nz, $6635                                ; $7abb: $c4 $35 $66
    ld c, d                                       ; $7abe: $4a
    di                                            ; $7abf: $f3
    nop                                           ; $7ac0: $00
    sbc h                                         ; $7ac1: $9c
    pop af                                        ; $7ac2: $f1
    dec [hl]                                      ; $7ac3: $35
    ret                                           ; $7ac4: $c9


    dec e                                         ; $7ac5: $1d
    ei                                            ; $7ac6: $fb
    rst $10                                       ; $7ac7: $d7
    cp c                                          ; $7ac8: $b9
    nop                                           ; $7ac9: $00
    sbc e                                         ; $7aca: $9b
    ld l, [hl]                                    ; $7acb: $6e
    db $e4                                        ; $7acc: $e4
    ld a, $a4                                     ; $7acd: $3e $a4
    ld a, $fa                                     ; $7acf: $3e $fa
    rla                                           ; $7ad1: $17
    nop                                           ; $7ad2: $00
    ld a, d                                       ; $7ad3: $7a
    adc l                                         ; $7ad4: $8d
    add hl, sp                                    ; $7ad5: $39
    adc [hl]                                      ; $7ad6: $8e
    rr l                                          ; $7ad7: $cb $1d
    pop af                                        ; $7ad9: $f1
    rra                                           ; $7ada: $1f
    nop                                           ; $7adb: $00
    ld h, e                                       ; $7adc: $63
    ld a, $a4                                     ; $7add: $3e $a4
    ld a, h                                       ; $7adf: $7c
    ld [hl-], a                                   ; $7ae0: $32
    ret z                                         ; $7ae1: $c8

    sbc l                                         ; $7ae2: $9d
    ldh a, [rP1]                                  ; $7ae3: $f0 $00
    cp a                                          ; $7ae5: $bf
    ld h, c                                       ; $7ae6: $61
    ld d, a                                       ; $7ae7: $57
    jp nz, Jump_0c6_4c63                          ; $7ae8: $c2 $63 $4c

    dec d                                         ; $7aeb: $15
    ld h, $00                                     ; $7aec: $26 $00
    or d                                          ; $7aee: $b2
    inc hl                                        ; $7aef: $23
    call c, $ed31                                 ; $7af0: $dc $31 $ed
    ld e, c                                       ; $7af3: $59
    ld d, d                                       ; $7af4: $52
    cp h                                          ; $7af5: $bc
    nop                                           ; $7af6: $00
    and a                                         ; $7af7: $a7
    ld a, [hl-]                                   ; $7af8: $3a
    add l                                         ; $7af9: $85
    ld a, d                                       ; $7afa: $7a
    adc $7b                                       ; $7afb: $ce $7b
    push hl                                       ; $7afd: $e5
    ld a, $00                                     ; $7afe: $3e $00

Jump_0c6_7b00:
    db $e4                                        ; $7b00: $e4
    dec de                                        ; $7b01: $1b
    ldh a, [$1f]                                  ; $7b02: $f0 $1f
    ld e, b                                       ; $7b04: $58
    adc a                                         ; $7b05: $8f
    cp [hl]                                       ; $7b06: $be
    push bc                                       ; $7b07: $c5
    nop                                           ; $7b08: $00
    ld e, $63                                     ; $7b09: $1e $63
    cpl                                           ; $7b0b: $2f
    ld hl, $907d                                  ; $7b0c: $21 $7d $90
    ld a, $e1                                     ; $7b0f: $3e $e1
    ld bc, $c277                                  ; $7b11: $01 $77 $c2
    res 0, h                                      ; $7b14: $cb $84
    sbc h                                         ; $7b16: $9c
    inc de                                        ; $7b17: $13
    ld a, [hl-]                                   ; $7b18: $3a
    adc [hl]                                      ; $7b19: $8e
    nop                                           ; $7b1a: $00
    nop                                           ; $7b1b: $00
    add h                                         ; $7b1c: $84
    sbc e                                         ; $7b1d: $9b
    db $ec                                        ; $7b1e: $ec
    sbc a                                         ; $7b1f: $9f
    or d                                          ; $7b20: $b2
    ld h, l                                       ; $7b21: $65
    ld a, a                                       ; $7b22: $7f
    jp nc, $cb00                                  ; $7b23: $d2 $00 $cb

    cp c                                          ; $7b26: $b9
    ld a, [hl+]                                   ; $7b27: $2a
    reti                                          ; $7b28: $d9


    inc de                                        ; $7b29: $13
    db $fc                                        ; $7b2a: $fc
    ld sp, $00ec                                  ; $7b2b: $31 $ec $00
    ret                                           ; $7b2e: $c9


    ld a, d                                       ; $7b2f: $7a
    ld [de], a                                    ; $7b30: $12
    ld [c], a                                     ; $7b31: $e2
    ld [hl-], a                                   ; $7b32: $32
    db $e3                                        ; $7b33: $e3
    add hl, de                                    ; $7b34: $19
    pop af                                        ; $7b35: $f1
    nop                                           ; $7b36: $00
    sub l                                         ; $7b37: $95
    ld l, c                                       ; $7b38: $69
    dec c                                         ; $7b39: $0d
    ld hl, sp-$3e                                 ; $7b3a: $f8 $c2
    cp h                                          ; $7b3c: $bc
    add [hl]                                      ; $7b3d: $86
    db $fc                                        ; $7b3e: $fc
    nop                                           ; $7b3f: $00
    jp $8b7e                                      ; $7b40: $c3 $7e $8b


    ld [hl], $0d                                  ; $7b43: $36 $0d
    ld hl, sp-$76                                 ; $7b45: $f8 $8a
    ld hl, sp+$00                                 ; $7b47: $f8 $00
    add hl, sp                                    ; $7b49: $39
    ret nc                                        ; $7b4a: $d0

    db $d3                                        ; $7b4b: $d3
    jp nz, Jump_0c6_4247                          ; $7b4c: $c2 $47 $42

    ld a, [hl]                                    ; $7b4f: $7e
    ld c, c                                       ; $7b50: $49
    nop                                           ; $7b51: $00
    jr nc, jr_0c6_7b87                            ; $7b52: $30 $33

    ei                                            ; $7b54: $fb
    ld d, $c7                                     ; $7b55: $16 $c7
    inc l                                         ; $7b57: $2c
    rst $28                                       ; $7b58: $ef
    ld e, d                                       ; $7b59: $5a
    nop                                           ; $7b5a: $00
    ld e, c                                       ; $7b5b: $59
    or a                                          ; $7b5c: $b7
    add l                                         ; $7b5d: $85
    ld a, e                                       ; $7b5e: $7b
    ld b, d                                       ; $7b5f: $42
    rst $38                                       ; $7b60: $ff
    ld b, $fd                                     ; $7b61: $06 $fd
    nop                                           ; $7b63: $00
    add hl, de                                    ; $7b64: $19
    rst $28                                       ; $7b65: $ef
    add d                                         ; $7b66: $82
    db $fc                                        ; $7b67: $fc
    ld b, [hl]                                    ; $7b68: $46
    cp h                                          ; $7b69: $bc
    db $e3                                        ; $7b6a: $e3
    ld e, [hl]                                    ; $7b6b: $5e
    ld [$2d72], sp                                ; $7b6c: $08 $72 $2d
    ld b, c                                       ; $7b6f: $41
    ccf                                           ; $7b70: $3f
    ld a, b                                       ; $7b71: $78
    ld [bc], a                                    ; $7b72: $02
    adc a                                         ; $7b73: $8f
    jr z, jr_0c6_7bc5                             ; $7b74: $28 $4f

    nop                                           ; $7b76: $00
    sub d                                         ; $7b77: $92
    call Call_0c6_5f61                            ; $7b78: $cd $61 $5f
    ld d, e                                       ; $7b7b: $53
    ld a, [hl]                                    ; $7b7c: $7e
    and $3a                                       ; $7b7d: $e6 $3a
    nop                                           ; $7b7f: $00
    cp d                                          ; $7b80: $ba
    jr jr_0c6_7bcb                                ; $7b81: $18 $48

    adc b                                         ; $7b83: $88
    rst $28                                       ; $7b84: $ef
    ld c, b                                       ; $7b85: $48
    daa                                           ; $7b86: $27

jr_0c6_7b87:
    push hl                                       ; $7b87: $e5
    nop                                           ; $7b88: $00
    rst $28                                       ; $7b89: $ef
    add h                                         ; $7b8a: $84
    or h                                          ; $7b8b: $b4
    add hl, bc                                    ; $7b8c: $09
    ld e, l                                       ; $7b8d: $5d
    inc de                                        ; $7b8e: $13
    dec hl                                        ; $7b8f: $2b
    ld d, $00                                     ; $7b90: $16 $00
    ld [hl], b                                    ; $7b92: $70
    ld c, a                                       ; $7b93: $4f
    add sp, $5f                                   ; $7b94: $e8 $5f
    ret nz                                        ; $7b96: $c0

    cp a                                          ; $7b97: $bf
    add hl, bc                                    ; $7b98: $09
    ld [hl], a                                    ; $7b99: $77
    nop                                           ; $7b9a: $00
    ld h, b                                       ; $7b9b: $60
    rst $38                                       ; $7b9c: $ff
    xor b                                         ; $7b9d: $a8
    sub a                                         ; $7b9e: $97
    ld hl, sp-$71                                 ; $7b9f: $f8 $8f
    ld c, h                                       ; $7ba1: $4c
    rst $00                                       ; $7ba2: $c7
    nop                                           ; $7ba3: $00
    xor b                                         ; $7ba4: $a8
    ld h, a                                       ; $7ba5: $67
    ld c, a                                       ; $7ba6: $4f
    ld a, [c]                                     ; $7ba7: $f2
    rst $20                                       ; $7ba8: $e7
    sub c                                         ; $7ba9: $91
    dec d                                         ; $7baa: $15
    ld hl, sp+$00                                 ; $7bab: $f8 $00
    and h                                         ; $7bad: $a4
    ld sp, $9bd4                                  ; $7bae: $31 $d4 $9b
    ld l, d                                       ; $7bb1: $6a
    rst $08                                       ; $7bb2: $cf
    ld c, h                                       ; $7bb3: $4c
    and a                                         ; $7bb4: $a7
    nop                                           ; $7bb5: $00
    ld [hl], $e3                                  ; $7bb6: $36 $e3
    add hl, bc                                    ; $7bb8: $09
    pop af                                        ; $7bb9: $f1
    inc e                                         ; $7bba: $1c
    jp hl                                         ; $7bbb: $e9


    add [hl]                                      ; $7bbc: $86
    db $fc                                        ; $7bbd: $fc
    nop                                           ; $7bbe: $00
    push de                                       ; $7bbf: $d5
    ld a, [hl-]                                   ; $7bc0: $3a
    ld d, d                                       ; $7bc1: $52
    rst $28                                       ; $7bc2: $ef
    ld d, $ed                                     ; $7bc3: $16 $ed

jr_0c6_7bc5:
    add hl, hl                                    ; $7bc5: $29
    rst $18                                       ; $7bc6: $df
    nop                                           ; $7bc7: $00
    sub e                                         ; $7bc8: $93
    ld a, [hl]                                    ; $7bc9: $7e
    ld [hl+], a                                   ; $7bca: $22

jr_0c6_7bcb:
    db $fc                                        ; $7bcb: $fc
    adc l                                         ; $7bcc: $8d
    ld hl, sp+$5a                                 ; $7bcd: $f8 $5a
    or c                                          ; $7bcf: $b1
    nop                                           ; $7bd0: $00
    push de                                       ; $7bd1: $d5
    or c                                          ; $7bd2: $b1
    or c                                          ; $7bd3: $b1
    ld h, c                                       ; $7bd4: $61
    ld d, h                                       ; $7bd5: $54
    ldh a, [$98]                                  ; $7bd6: $f0 $98
    ld [hl], b                                    ; $7bd8: $70
    nop                                           ; $7bd9: $00
    add hl, hl                                    ; $7bda: $29
    ret c                                         ; $7bdb: $d8

    call z, Call_0c6_4c78                         ; $7bdc: $cc $78 $4c
    db $f4                                        ; $7bdf: $f4
    add [hl]                                      ; $7be0: $86
    cp h                                          ; $7be1: $bc
    nop                                           ; $7be2: $00
    add e                                         ; $7be3: $83
    dec a                                         ; $7be4: $3d
    pop af                                        ; $7be5: $f1
    cpl                                           ; $7be6: $2f
    ld [hl], b                                    ; $7be7: $70
    sbc a                                         ; $7be8: $9f
    or c                                          ; $7be9: $b1
    rst $18                                       ; $7bea: $df
    nop                                           ; $7beb: $00
    pop de                                        ; $7bec: $d1
    ld l, [hl]                                    ; $7bed: $6e
    daa                                           ; $7bee: $27
    inc h                                         ; $7bef: $24
    inc l                                         ; $7bf0: $2c
    scf                                           ; $7bf1: $37
    ld [hl], $1b                                  ; $7bf2: $36 $1b
    nop                                           ; $7bf4: $00
    cp d                                          ; $7bf5: $ba
    rla                                           ; $7bf6: $17
    sub [hl]                                      ; $7bf7: $96
    ld c, l                                       ; $7bf8: $4d
    db $e3                                        ; $7bf9: $e3
    sbc h                                         ; $7bfa: $9c
    and d                                         ; $7bfb: $a2
    ld a, l                                       ; $7bfc: $7d
    nop                                           ; $7bfd: $00
    adc c                                         ; $7bfe: $89
    ld [hl], a                                    ; $7bff: $77
    ld h, d                                       ; $7c00: $62
    rst $18                                       ; $7c01: $df
    xor b                                         ; $7c02: $a8
    ld e, a                                       ; $7c03: $5f
    dec h                                         ; $7c04: $25
    db $db                                        ; $7c05: $db
    nop                                           ; $7c06: $00
    cp d                                          ; $7c07: $ba
    ld d, [hl]                                    ; $7c08: $56
    ld h, $fc                                     ; $7c09: $26 $fc
    ld l, e                                       ; $7c0b: $6b
    sbc $99                                       ; $7c0c: $de $99
    rst $30                                       ; $7c0e: $f7
    nop                                           ; $7c0f: $00
    inc sp                                        ; $7c10: $33
    db $ed                                        ; $7c11: $ed
    inc l                                         ; $7c12: $2c
    rst $00                                       ; $7c13: $c7
    call nc, $a88f                                ; $7c14: $d4 $8f $a8
    dec de                                        ; $7c17: $1b
    nop                                           ; $7c18: $00
    cp b                                          ; $7c19: $b8
    daa                                           ; $7c1a: $27
    scf                                           ; $7c1b: $37
    ld [hl+], a                                   ; $7c1c: $22
    ld c, a                                       ; $7c1d: $4f
    ld de, $0d0b                                  ; $7c1e: $11 $0b $0d
    nop                                           ; $7c21: $00
    sbc a                                         ; $7c22: $9f
    inc b                                         ; $7c23: $04
    call nz, $e286                                ; $7c24: $c4 $86 $e2
    ld b, e                                       ; $7c27: $43
    inc sp                                        ; $7c28: $33
    pop hl                                        ; $7c29: $e1
    nop                                           ; $7c2a: $00
    scf                                           ; $7c2b: $37
    ld [c], a                                     ; $7c2c: $e2
    ld a, [de]                                    ; $7c2d: $1a
    push af                                       ; $7c2e: $f5
    inc l                                         ; $7c2f: $2c
    db $db                                        ; $7c30: $db
    ld a, [de]                                    ; $7c31: $1a
    rst $30                                       ; $7c32: $f7
    nop                                           ; $7c33: $00
    db $10                                        ; $7c34: $10
    rst $28                                       ; $7c35: $ef
    ld a, d                                       ; $7c36: $7a
    ld c, l                                       ; $7c37: $4d
    ld [$6235], a                                 ; $7c38: $ea $35 $62
    cp l                                          ; $7c3b: $bd
    ld bc, $e65b                                  ; $7c3c: $01 $5b $e6
    and l                                         ; $7c3f: $a5
    sbc $3c                                       ; $7c40: $de $3c
    swap c                                        ; $7c42: $cb $31
    ld [hl], b                                    ; $7c44: $70
    stop                                          ; $7c45: $10 $00
    ld c, h                                       ; $7c47: $4c
    ld hl, sp+$1b                                 ; $7c48: $f8 $1b
    ldh a, [$37]                                  ; $7c4a: $f0 $37
    db $e4                                        ; $7c4c: $e4
    ld h, e                                       ; $7c4d: $63
    jp nz, $b800                                  ; $7c4e: $c2 $00 $b8

    pop hl                                        ; $7c51: $e1
    or b                                          ; $7c52: $b0
    ld h, b                                       ; $7c53: $60
    add hl, de                                    ; $7c54: $19
    ldh a, [$cc]                                  ; $7c55: $f0 $cc
    ld a, b                                       ; $7c57: $78
    nop                                           ; $7c58: $00
    ld c, [hl]                                    ; $7c59: $4e
    db $f4                                        ; $7c5a: $f4
    add e                                         ; $7c5b: $83
    cp [hl]                                       ; $7c5c: $be
    rlca                                          ; $7c5d: $07
    ld a, d                                       ; $7c5e: $7a
    ld h, c                                       ; $7c5f: $61
    ld e, a                                       ; $7c60: $5f
    nop                                           ; $7c61: $00
    ld [c], a                                     ; $7c62: $e2
    dec a                                         ; $7c63: $3d
    ldh a, [$9f]                                  ; $7c64: $f0 $9f
    or c                                          ; $7c66: $b1
    adc $46                                       ; $7c67: $ce $46
    ld h, l                                       ; $7c69: $65
    nop                                           ; $7c6a: $00
    ld l, $33                                     ; $7c6b: $2e $33
    scf                                           ; $7c6d: $37
    add hl, de                                    ; $7c6e: $19
    ld l, l                                       ; $7c6f: $6d
    jp $86fb                                      ; $7c70: $c3 $fb $86


    nop                                           ; $7c73: $00
    push de                                       ; $7c74: $d5
    inc c                                         ; $7c75: $0c
    rst $10                                       ; $7c76: $d7
    ld sp, $62a7                                  ; $7c77: $31 $a7 $62
    ld e, c                                       ; $7c7a: $59
    adc $08                                       ; $7c7b: $ce $08
    or l                                          ; $7c7d: $b5
    sbc [hl]                                      ; $7c7e: $9e
    ld a, [bc]                                    ; $7c7f: $0a
    scf                                           ; $7c80: $37
    ld b, b                                       ; $7c81: $40
    inc bc                                        ; $7c82: $03
    ld e, a                                       ; $7c83: $5f
    db $db                                        ; $7c84: $db
    adc l                                         ; $7c85: $8d
    nop                                           ; $7c86: $00
    xor b                                         ; $7c87: $a8
    rrca                                          ; $7c88: $0f
    and $85                                       ; $7c89: $e6 $85
    sub $85                                       ; $7c8b: $d6 $85
    ld [hl], b                                    ; $7c8d: $70
    jp $b000                                      ; $7c8e: $c3 $00 $b0


    ld h, c                                       ; $7c91: $61
    ld d, a                                       ; $7c92: $57
    add hl, de                                    ; $7c93: $19
    ld c, c                                       ; $7c94: $49
    dec c                                         ; $7c95: $0d
    adc h                                         ; $7c96: $8c
    rlca                                          ; $7c97: $07
    nop                                           ; $7c98: $00
    ld h, c                                       ; $7c99: $61
    add a                                         ; $7c9a: $87
    ld h, a                                       ; $7c9b: $67
    jp nz, $c73c                                  ; $7c9c: $c2 $3c $c7

    jr c, @-$0f                                   ; $7c9f: $38 $ef

    nop                                           ; $7ca1: $00
    ld [de], a                                    ; $7ca2: $12
    cp $63                                        ; $7ca3: $fe $63
    cp [hl]                                       ; $7ca5: $be
    rlca                                          ; $7ca6: $07
    db $fc                                        ; $7ca7: $fc
    add a                                         ; $7ca8: $87
    ld hl, sp+$00                                 ; $7ca9: $f8 $00
    ld b, $f1                                     ; $7cab: $06 $f1
    dec [hl]                                      ; $7cad: $35
    db $e3                                        ; $7cae: $e3
    ld a, [de]                                    ; $7caf: $1a
    add [hl]                                      ; $7cb0: $86
    push af                                       ; $7cb1: $f5
    inc c                                         ; $7cb2: $0c
    nop                                           ; $7cb3: $00
    xor b                                         ; $7cb4: $a8
    add hl, de                                    ; $7cb5: $19
    rst $10                                       ; $7cb6: $d7
    ld sp, $63af                                  ; $7cb7: $31 $af $63
    ld c, a                                       ; $7cba: $4f
    call nz, $b900                                ; $7cbb: $c4 $00 $b9
    sub b                                         ; $7cbe: $90
    ccf                                           ; $7cbf: $3f
    jr @-$30                                      ; $7cc0: $18 $ce

    ld [hl], h                                    ; $7cc2: $74
    xor e                                         ; $7cc3: $ab
    or $00                                        ; $7cc4: $f6 $00
    ld d, l                                       ; $7cc6: $55
    cp e                                          ; $7cc7: $bb
    inc sp                                        ; $7cc8: $33
    pop hl                                        ; $7cc9: $e1
    ld a, [de]                                    ; $7cca: $1a
    ldh a, [$ac]                                  ; $7ccb: $f0 $ac
    ret c                                         ; $7ccd: $d8

    nop                                           ; $7cce: $00
    ld b, l                                       ; $7ccf: $45
    ld a, b                                       ; $7cd0: $78
    ld [hl], $2c                                  ; $7cd1: $36 $2c
    or c                                          ; $7cd3: $b1
    ld l, $81                                     ; $7cd4: $2e $81
    rra                                           ; $7cd6: $1f
    nop                                           ; $7cd7: $00
    add b                                         ; $7cd8: $80
    rrca                                          ; $7cd9: $0f

jr_0c6_7cda:
    ld a, e                                       ; $7cda: $7b
    sub l                                         ; $7cdb: $95
    sbc b                                         ; $7cdc: $98
    rst $08                                       ; $7cdd: $cf
    call nc, $006f                                ; $7cde: $d4 $6f $00
    ld [$3b3f], sp                                ; $7ce1: $08 $3f $3b
    ld d, $e0                                     ; $7ce4: $16 $e0
    inc a                                         ; $7ce6: $3c
    rst $00                                       ; $7ce7: $c7
    ld a, b                                       ; $7ce8: $78
    nop                                           ; $7ce9: $00
    sub l                                         ; $7cea: $95
    ldh a, [$37]                                  ; $7ceb: $f0 $37
    pop hl                                        ; $7ced: $e1
    ld a, l                                       ; $7cee: $7d
    jp $866a                                      ; $7cef: $c3 $6a $86


    nop                                           ; $7cf2: $00
    or a                                          ; $7cf3: $b7
    inc c                                         ; $7cf4: $0c
    xor e                                         ; $7cf5: $ab
    add hl, de                                    ; $7cf6: $19
    sub $33                                       ; $7cf7: $d6 $33
    xor l                                         ; $7cf9: $ad
    ld h, a                                       ; $7cfa: $67
    nop                                           ; $7cfb: $00

jr_0c6_7cfc:
    ld b, d                                       ; $7cfc: $42
    call Call_000_1f71                            ; $7cfd: $cd $71 $1f
    ld sp, hl                                     ; $7d00: $f9
    cpl                                           ; $7d01: $2f

Call_0c6_7d02:
    db $ec                                        ; $7d02: $ec
    ld b, a                                       ; $7d03: $47
    nop                                           ; $7d04: $00
    jp z, $fb83                                   ; $7d05: $ca $83 $fb

jr_0c6_7d08:
    ld b, d                                       ; $7d08: $42
    ld [hl], l                                    ; $7d09: $75
    and c                                         ; $7d0a: $a1
    ld e, h                                       ; $7d0b: $5c
    or b                                          ; $7d0c: $b0
    nop                                           ; $7d0d: $00
    xor h                                         ; $7d0e: $ac
    ret c                                         ; $7d0f: $d8

    dec hl                                        ; $7d10: $2b
    dec c                                         ; $7d11: $0d
    and l                                         ; $7d12: $a5
    ld b, $c6                                     ; $7d13: $06 $c6
    add e                                         ; $7d15: $83
    nop                                           ; $7d16: $00
    jr z, jr_0c6_7cda                             ; $7d17: $28 $c1

    jr nc, jr_0c6_7cfc                            ; $7d19: $30 $e1

    adc a                                         ; $7d1b: $8f
    ld [hl], c                                    ; $7d1c: $71
    ld c, $fb                                     ; $7d1d: $0e $fb
    nop                                           ; $7d1f: $00
    inc b                                         ; $7d20: $04
    ld a, a                                       ; $7d21: $7f
    and h                                         ; $7d22: $a4
    ld e, e                                       ; $7d23: $5b
    ld [bc], a                                    ; $7d24: $02
    db $fd                                        ; $7d25: $fd
    adc c                                         ; $7d26: $89
    ld a, e                                       ; $7d27: $7b
    nop                                           ; $7d28: $00
    sbc d                                         ; $7d29: $9a
    ld [hl], d                                    ; $7d2a: $72
    ld a, [hl-]                                   ; $7d2b: $3a
    and $a4                                       ; $7d2c: $e6 $a4
    sbc b                                         ; $7d2e: $98
    sbc $34                                       ; $7d2f: $de $34
    nop                                           ; $7d31: $00
    ld d, d                                       ; $7d32: $52
    db $e4                                        ; $7d33: $e4
    inc a                                         ; $7d34: $3c

jr_0c6_7d35:
    pop hl                                        ; $7d35: $e1
    jr c, jr_0c6_7d08                             ; $7d36: $38 $d0

    ld e, c                                       ; $7d38: $59
    or b                                          ; $7d39: $b0
    nop                                           ; $7d3a: $00
    db $ec                                        ; $7d3b: $ec
    sbc b                                         ; $7d3c: $98
    ld b, $7c                                     ; $7d3d: $06 $7c
    halt                                          ; $7d3f: $76
    ld c, h                                       ; $7d40: $4c
    ld l, e                                       ; $7d41: $6b
    ld [hl], $00                                  ; $7d42: $36 $00
    sub e                                         ; $7d44: $93
    ld e, $1b                                     ; $7d45: $1e $1b
    db $f4                                        ; $7d47: $f4
    xor e                                         ; $7d48: $ab
    call c, Call_0c6_7d02                         ; $7d49: $dc $02 $7d
    nop                                           ; $7d4c: $00
    xor h                                         ; $7d4d: $ac
    scf                                           ; $7d4e: $37
    and d                                         ; $7d4f: $a2
    ld a, $35                                     ; $7d50: $3e $35
    inc e                                         ; $7d52: $1c
    jr jr_0c6_7d5e                                ; $7d53: $18 $09

    nop                                           ; $7d55: $00
    ld h, a                                       ; $7d56: $67
    ld [hl+], a                                   ; $7d57: $22
    add l                                         ; $7d58: $85
    ld h, d                                       ; $7d59: $62
    ld c, b                                       ; $7d5a: $48
    ld b, a                                       ; $7d5b: $47
    sub b                                         ; $7d5c: $90
    adc a                                         ; $7d5d: $8f

jr_0c6_7d5e:
    inc b                                         ; $7d5e: $04
    inc a                                         ; $7d5f: $3c
    inc de                                        ; $7d60: $13
    ld c, l                                       ; $7d61: $4d
    inc sp                                        ; $7d62: $33
    jp nz, Jump_000_00aa                          ; $7d63: $c2 $aa $00

    dec e                                         ; $7d66: $1d
    db $eb                                        ; $7d67: $eb
    nop                                           ; $7d68: $00
    sub c                                         ; $7d69: $91
    ld l, a                                       ; $7d6a: $6f
    ld bc, $45fe                                  ; $7d6b: $01 $fe $45
    adc $cb                                       ; $7d6e: $ce $cb
    sbc d                                         ; $7d70: $9a
    nop                                           ; $7d71: $00
    ret c                                         ; $7d72: $d8

    ld sp, $6191                                  ; $7d73: $31 $91 $61
    ld a, c                                       ; $7d76: $79
    ret nc                                        ; $7d77: $d0

    ld c, d                                       ; $7d78: $4a
    sub b                                         ; $7d79: $90
    nop                                           ; $7d7a: $00
    ldh [rTAC], a                                 ; $7d7b: $e0 $07
    jp nz, Jump_0c6_6983                          ; $7d7d: $c2 $83 $69

    jp nz, Jump_0c6_61a5                          ; $7d80: $c2 $a5 $61

    nop                                           ; $7d83: $00
    dec [hl]                                      ; $7d84: $35
    ldh [$d8], a                                  ; $7d85: $e0 $d8
    jr nc, jr_0c6_7d35                            ; $7d87: $30 $ac

    ret c                                         ; $7d89: $d8

    ld b, a                                       ; $7d8a: $47
    ld a, h                                       ; $7d8b: $7c
    nop                                           ; $7d8c: $00
    sbc $a1                                       ; $7d8d: $de $a1
    ld e, c                                       ; $7d8f: $59
    db $e3                                        ; $7d90: $e3
    ld a, [bc]                                    ; $7d91: $0a
    or $b1                                        ; $7d92: $f6 $b1
    ld e, h                                       ; $7d94: $5c
    nop                                           ; $7d95: $00
    adc b                                         ; $7d96: $88
    ld sp, hl                                     ; $7d97: $f9
    rst $10                                       ; $7d98: $d7
    ld [hl], d                                    ; $7d99: $72
    ld l, b                                       ; $7d9a: $68
    daa                                           ; $7d9b: $27
    sbc h                                         ; $7d9c: $9c
    adc e                                         ; $7d9d: $8b
    nop                                           ; $7d9e: $00
    inc l                                         ; $7d9f: $2c
    sub e                                         ; $7da0: $93
    ld b, b                                       ; $7da1: $40
    ccf                                           ; $7da2: $3f
    sub c                                         ; $7da3: $91
    ld l, a                                       ; $7da4: $6f
    di                                            ; $7da5: $f3
    adc [hl]                                      ; $7da6: $8e
    nop                                           ; $7da7: $00
    ld h, a                                       ; $7da8: $67
    sbc h                                         ; $7da9: $9c
    ld a, [bc]                                    ; $7daa: $0a
    ld sp, hl                                     ; $7dab: $f9
    dec e                                         ; $7dac: $1d
    di                                            ; $7dad: $f3
    ld a, d                                       ; $7dae: $7a
    and a                                         ; $7daf: $a7
    nop                                           ; $7db0: $00
    adc a                                         ; $7db1: $8f
    ld a, b                                       ; $7db2: $78
    ld b, [hl]                                    ; $7db3: $46
    cp h                                          ; $7db4: $bc
    dec de                                        ; $7db5: $1b
    ld [hl], $3d                                  ; $7db6: $36 $3d
    ld [hl], e                                    ; $7db8: $73
    nop                                           ; $7db9: $00
    ld h, b                                       ; $7dba: $60
    rst $08                                       ; $7dbb: $cf
    ld b, a                                       ; $7dbc: $47
    add h                                         ; $7dbd: $84
    add $43                                       ; $7dbe: $c6 $43
    add hl, hl                                    ; $7dc0: $29
    ld b, c                                       ; $7dc1: $41
    nop                                           ; $7dc2: $00
    ld [bc], a                                    ; $7dc3: $02
    ccf                                           ; $7dc4: $3f
    dec d                                         ; $7dc5: $15
    dec de                                        ; $7dc6: $1b
    inc h                                         ; $7dc7: $24
    dec bc                                        ; $7dc8: $0b
    sub [hl]                                      ; $7dc9: $96
    dec b                                         ; $7dca: $05
    nop                                           ; $7dcb: $00
    sub $83                                       ; $7dcc: $d6 $83
    ld h, e                                       ; $7dce: $63
    pop bc                                        ; $7dcf: $c1
    or b                                          ; $7dd0: $b0
    ld h, c                                       ; $7dd1: $61
    dec de                                        ; $7dd2: $1b
    pop af                                        ; $7dd3: $f1
    nop                                           ; $7dd4: $00
    db $e3                                        ; $7dd5: $e3
    or d                                          ; $7dd6: $b2
    push af                                       ; $7dd7: $f5
    add hl, de                                    ; $7dd8: $19
    sub a                                         ; $7dd9: $97
    add hl, sp                                    ; $7dda: $39
    ld d, e                                       ; $7ddb: $53
    inc l                                         ; $7ddc: $2c
    nop                                           ; $7ddd: $00
    inc b                                         ; $7dde: $04
    adc $ea                                       ; $7ddf: $ce $ea
    sbc a                                         ; $7de1: $9f
    ld d, a                                       ; $7de2: $57
    add hl, sp                                    ; $7de3: $39
    dec [hl]                                      ; $7de4: $35
    rlc b                                         ; $7de5: $cb $00
    dec e                                         ; $7de7: $1d
    dec bc                                        ; $7de8: $0b
    and l                                         ; $7de9: $a5
    ld b, $96                                     ; $7dea: $06 $96
    dec b                                         ; $7dec: $05
    jp nz, Jump_000_0083                          ; $7ded: $c2 $83 $00

    ld [$6b83], a                                 ; $7df0: $ea $83 $6b
    ld b, c                                       ; $7df3: $41
    ld a, [c]                                     ; $7df4: $f2
    jr nz, jr_0c6_7e2f                            ; $7df5: $20 $38

    sub b                                         ; $7df7: $90
    nop                                           ; $7df8: $00
    adc h                                         ; $7df9: $8c
    ld b, a                                       ; $7dfa: $47
    ret c                                         ; $7dfb: $d8

    adc a                                         ; $7dfc: $8f
    ld l, b                                       ; $7dfd: $68
    rst $10                                       ; $7dfe: $d7
    ld [hl], b                                    ; $7dff: $70

Jump_0c6_7e00:
    xor a                                         ; $7e00: $af
    nop                                           ; $7e01: $00
    inc hl                                        ; $7e02: $23
    cp $15                                        ; $7e03: $fe $15
    db $fc                                        ; $7e05: $fc
    xor $99                                       ; $7e06: $ee $99

Jump_0c6_7e08:
    ld e, c                                       ; $7e08: $59
    ld h, [hl]                                    ; $7e09: $66
    nop                                           ; $7e0a: $00
    dec sp                                        ; $7e0b: $3b
    jp nc, $a653                                  ; $7e0c: $d2 $53 $a6

    add $98                                       ; $7e0f: $c6 $98
    push de                                       ; $7e11: $d5
    jr nc, jr_0c6_7e14                            ; $7e12: $30 $00

jr_0c6_7e14:
    sub d                                         ; $7e14: $92
    ld h, c                                       ; $7e15: $61
    ld a, l                                       ; $7e16: $7d
    jp $86c1                                      ; $7e17: $c3 $c1 $86


    xor [hl]                                      ; $7e1a: $ae
    add hl, de                                    ; $7e1b: $19
    nop                                           ; $7e1c: $00
    adc h                                         ; $7e1d: $8c
    ret z                                         ; $7e1e: $c8

    sub $64                                       ; $7e1f: $d6 $64
    xor a                                         ; $7e21: $af
    ld [hl], d                                    ; $7e22: $72
    daa                                           ; $7e23: $27
    reti                                          ; $7e24: $d9


    nop                                           ; $7e25: $00
    ld de, $aa39                                  ; $7e26: $11 $39 $aa
    ld a, h                                       ; $7e29: $7c
    ld e, l                                       ; $7e2a: $5d
    and $6a                                       ; $7e2b: $e6 $6a
    sub a                                         ; $7e2d: $97
    nop                                           ; $7e2e: $00

jr_0c6_7e2f:
    ld [hl], d                                    ; $7e2f: $72
    cpl                                           ; $7e30: $2f
    sub a                                         ; $7e31: $97
    add hl, de                                    ; $7e32: $19
    ld e, c                                       ; $7e33: $59
    rla                                           ; $7e34: $17
    adc c                                         ; $7e35: $89
    ld c, $00                                     ; $7e36: $0e $00
    call nc, $d607                                ; $7e38: $d4 $07 $d6
    add e                                         ; $7e3b: $83
    push hl                                       ; $7e3c: $e5
    ld b, c                                       ; $7e3d: $41
    ld [hl], b                                    ; $7e3e: $70
    jr nz, jr_0c6_7e41                            ; $7e3f: $20 $00

jr_0c6_7e41:
    jr nc, jr_0c6_7e62                            ; $7e41: $30 $1f

    ld h, c                                       ; $7e43: $61
    ld a, $b1                                     ; $7e44: $3e $b1
    ld c, a                                       ; $7e46: $4f
    pop de                                        ; $7e47: $d1
    xor [hl]                                      ; $7e48: $ae
    nop                                           ; $7e49: $00
    ld b, [hl]                                    ; $7e4a: $46
    db $fd                                        ; $7e4b: $fd
    dec hl                                        ; $7e4c: $2b
    ld sp, hl                                     ; $7e4d: $f9
    db $dd                                        ; $7e4e: $dd
    inc sp                                        ; $7e4f: $33
    or e                                          ; $7e50: $b3
    call z, $e700                                 ; $7e51: $cc $00 $e7
    ld c, l                                       ; $7e54: $4d
    ld c, a                                       ; $7e55: $4f
    sbc c                                         ; $7e56: $99
    adc d                                         ; $7e57: $8a
    ld sp, $63ac                                  ; $7e58: $31 $ac $63
    nop                                           ; $7e5b: $00
    ld c, b                                       ; $7e5c: $48
    add [hl]                                      ; $7e5d: $86
    rst $30                                       ; $7e5e: $f7
    inc c                                         ; $7e5f: $0c
    ld [bc], a                                    ; $7e60: $02
    add hl, de                                    ; $7e61: $19

jr_0c6_7e62:
    ld e, h                                       ; $7e62: $5c
    inc sp                                        ; $7e63: $33
    nop                                           ; $7e64: $00
    ld sp, $5a20                                  ; $7e65: $31 $20 $5a
    sub b                                         ; $7e68: $90
    cp h                                          ; $7e69: $bc
    ret z                                         ; $7e6a: $c8

    sbc [hl]                                      ; $7e6b: $9e
    ld h, h                                       ; $7e6c: $64
    nop                                           ; $7e6d: $00
    inc hl                                        ; $7e6e: $23
    ld [hl], d                                    ; $7e6f: $72
    ld d, l                                       ; $7e70: $55
    ld sp, hl                                     ; $7e71: $f9

jr_0c6_7e72:
    cp e                                          ; $7e72: $bb
    call z, Call_000_2ed4                         ; $7e73: $cc $d4 $2e
    nop                                           ; $7e76: $00
    call z, $5fba                                 ; $7e77: $cc $ba $5f
    ld h, h                                       ; $7e7a: $64
    or d                                          ; $7e7b: $b2
    cpl                                           ; $7e7c: $2f
    inc de                                        ; $7e7d: $13
    dec e                                         ; $7e7e: $1d
    nop                                           ; $7e7f: $00
    xor b                                         ; $7e80: $a8
    rrca                                          ; $7e81: $0f
    xor h                                         ; $7e82: $ac
    rlca                                          ; $7e83: $07
    res 0, d                                      ; $7e84: $cb $82
    pop hl                                        ; $7e86: $e1
    ld b, c                                       ; $7e87: $41
    nop                                           ; $7e88: $00
    and d                                         ; $7e89: $a2
    cp l                                          ; $7e8a: $bd
    ldh [$3f], a                                  ; $7e8b: $e0 $3f
    ld d, b                                       ; $7e8d: $50
    sbc a                                         ; $7e8e: $9f
    or b                                          ; $7e8f: $b0
    rst $08                                       ; $7e90: $cf
    nop                                           ; $7e91: $00
    ret nz                                        ; $7e92: $c0

    ld h, a                                       ; $7e93: $67
    xor h                                         ; $7e94: $ac
    or a                                          ; $7e95: $b7
    ld h, $73                                     ; $7e96: $26 $73
    ld h, a                                       ; $7e98: $67
    reti                                          ; $7e99: $d9


    nop                                           ; $7e9a: $00
    sbc l                                         ; $7e9b: $9d
    ret z                                         ; $7e9c: $c8

    cp l                                          ; $7e9d: $bd
    ret z                                         ; $7e9e: $c8

    db $db                                        ; $7e9f: $db
    ld h, l                                       ; $7ea0: $65
    ld c, $f3                                     ; $7ea1: $0e $f3
    nop                                           ; $7ea3: $00
    ld l, $f3                                     ; $7ea4: $2e $f3
    or a                                          ; $7ea6: $b7
    ld e, c                                       ; $7ea7: $59
    add hl, bc                                    ; $7ea8: $09
    db $fc                                        ; $7ea9: $fc
    ld b, c                                       ; $7eaa: $41
    cp [hl]                                       ; $7eab: $be
    nop                                           ; $7eac: $00
    ld h, a                                       ; $7ead: $67
    ld c, h                                       ; $7eae: $4c
    adc h                                         ; $7eaf: $8c
    sbc b                                         ; $7eb0: $98
    sbc e                                         ; $7eb1: $9b
    jr nc, jr_0c6_7e72                            ; $7eb2: $30 $be

    ld h, c                                       ; $7eb4: $61
    nop                                           ; $7eb5: $00
    ld e, c                                       ; $7eb6: $59
    add [hl]                                      ; $7eb7: $86
    ld [hl], l                                    ; $7eb8: $75
    adc h                                         ; $7eb9: $8c
    ld c, $d9                                     ; $7eba: $0e $d9
    sbc l                                         ; $7ebc: $9d
    ld [hl], e                                    ; $7ebd: $73
    nop                                           ; $7ebe: $00
    call $3a33                                    ; $7ebf: $cd $33 $3a
    ld h, a                                       ; $7ec2: $67
    inc b                                         ; $7ec3: $04
    call $9868                                    ; $7ec4: $cd $68 $98
    nop                                           ; $7ec7: $00
    add l                                         ; $7ec8: $85
    ld h, b                                       ; $7ec9: $60
    ld b, e                                       ; $7eca: $43
    pop bc                                        ; $7ecb: $c1
    add a                                         ; $7ecc: $87
    add d                                         ; $7ecd: $82
    ld e, $04                                     ; $7ece: $1e $04
    nop                                           ; $7ed0: $00
    ld b, l                                       ; $7ed1: $45
    ld a, e                                       ; $7ed2: $7b
    pop hl                                        ; $7ed3: $e1

jr_0c6_7ed4:
    ccf                                           ; $7ed4: $3f
    ld d, c                                       ; $7ed5: $51
    sbc [hl]                                      ; $7ed6: $9e
    and b                                         ; $7ed7: $a0
    rst $18                                       ; $7ed8: $df
    ld [$cf80], sp                                ; $7ed9: $08 $80 $cf
    ld e, h                                       ; $7edc: $5c
    ld h, a                                       ; $7edd: $67
    ld b, b                                       ; $7ede: $40
    ld [$903a], sp                                ; $7edf: $08 $3a $90
    ld a, e                                       ; $7ee2: $7b
    inc b                                         ; $7ee3: $04
    sub c                                         ; $7ee4: $91
    or a                                          ; $7ee5: $b7
    jp z, $e61d                                   ; $7ee6: $ca $1d $e6

    ld b, b                                       ; $7ee9: $40
    jr z, @-$2f                                   ; $7eea: $28 $cf

    sbc b                                         ; $7eec: $98
    ld [bc], a                                    ; $7eed: $02
    jr jr_0c6_7f20                                ; $7eee: $18 $30

    ld [hl], $61                                  ; $7ef0: $36 $61
    ld a, h                                       ; $7ef2: $7c
    jp Jump_000_2840                              ; $7ef3: $c3 $40 $28


    sbc d                                         ; $7ef6: $9a
    ld bc, $7566                                  ; $7ef7: $01 $66 $75
    adc $08                                       ; $7efa: $ce $08
    sbc e                                         ; $7efc: $9b
    pop de                                        ; $7efd: $d1
    ld sp, $2840                                  ; $7efe: $31 $40 $28
    nop                                           ; $7f01: $00
    adc d                                         ; $7f02: $8a
    rst $30                                       ; $7f03: $f7
    pop bc                                        ; $7f04: $c1
    ld a, a                                       ; $7f05: $7f
    and c                                         ; $7f06: $a1
    ld a, $60                                     ; $7f07: $3e $60
    sbc a                                         ; $7f09: $9f
    adc b                                         ; $7f0a: $88
    ld b, b                                       ; $7f0b: $40
    jr z, jr_0c6_7f82                             ; $7f0c: $28 $74

    ld hl, $407a                                  ; $7f0e: $21 $7a $40
    nop                                           ; $7f11: $00
    inc e                                         ; $7f12: $1c
    rst $20                                       ; $7f13: $e7
    ld l, $00                                     ; $7f14: $2e $00
    di                                            ; $7f16: $f3
    or [hl]                                       ; $7f17: $b6
    ld e, c                                       ; $7f18: $59
    ld [$41fd], sp                                ; $7f19: $08 $fd $41
    cp [hl]                                       ; $7f1c: $be
    inc d                                         ; $7f1d: $14
    nop                                           ; $7f1e: $00
    dec c                                         ; $7f1f: $0d

jr_0c6_7f20:
    nop                                           ; $7f20: $00
    ld a, d                                       ; $7f21: $7a
    nop                                           ; $7f22: $00
    nop                                           ; $7f23: $00
    adc b                                         ; $7f24: $88
    adc b                                         ; $7f25: $88
    adc c                                         ; $7f26: $89
    ld l, d                                       ; $7f27: $6a
    ld l, e                                       ; $7f28: $6b
    ld l, h                                       ; $7f29: $6c
    ld l, l                                       ; $7f2a: $6d

Call_0c6_7f2b:
    adc c                                         ; $7f2b: $89
    ld h, c                                       ; $7f2c: $61
    adc b                                         ; $7f2d: $88
    ld bc, $0a00                                  ; $7f2e: $01 $00 $0a
    ld b, b                                       ; $7f31: $40
    ld l, [hl]                                    ; $7f32: $6e
    ld l, a                                       ; $7f33: $6f
    ld [hl], b                                    ; $7f34: $70
    ld [hl], c                                    ; $7f35: $71
    ld a, [bc]                                    ; $7f36: $0a
    ld d, b                                       ; $7f37: $50
    ld [$8d8c], sp                                ; $7f38: $08 $8c $8d
    adc [hl]                                      ; $7f3b: $8e
    adc a                                         ; $7f3c: $8f
    ld bc, $9000                                  ; $7f3d: $01 $00 $90
    adc h                                         ; $7f40: $8c
    adc h                                         ; $7f41: $8c
    ld b, d                                       ; $7f42: $42
    adc l                                         ; $7f43: $8d
    ld a, [bc]                                    ; $7f44: $0a
    jr z, jr_0c6_7ed4                             ; $7f45: $28 $8d

    sub c                                         ; $7f47: $91
    sub d                                         ; $7f48: $92
    sub e                                         ; $7f49: $93
    inc bc                                        ; $7f4a: $03
    ld [hl], b                                    ; $7f4b: $70
    and l                                         ; $7f4c: $a5
    ld [hl+], a                                   ; $7f4d: $22
    and [hl]                                      ; $7f4e: $a6
    and a                                         ; $7f4f: $a7
    inc bc                                        ; $7f50: $03
    ld [hl], b                                    ; $7f51: $70
    xor [hl]                                      ; $7f52: $ae
    xor l                                         ; $7f53: $ad
    xor h                                         ; $7f54: $ac
    inc bc                                        ; $7f55: $03
    ld [hl], b                                    ; $7f56: $70
    xor e                                         ; $7f57: $ab
    ld [hl+], a                                   ; $7f58: $22
    xor d                                         ; $7f59: $aa
    xor c                                         ; $7f5a: $a9
    inc bc                                        ; $7f5b: $03
    ld [hl], b                                    ; $7f5c: $70
    xor b                                         ; $7f5d: $a8
    and h                                         ; $7f5e: $a4
    and e                                         ; $7f5f: $a3
    inc bc                                        ; $7f60: $03
    ld [hl], b                                    ; $7f61: $70
    and d                                         ; $7f62: $a2
    ld [hl+], a                                   ; $7f63: $22
    and c                                         ; $7f64: $a1
    and b                                         ; $7f65: $a0
    inc bc                                        ; $7f66: $03
    ld [hl], b                                    ; $7f67: $70
    sbc a                                         ; $7f68: $9f
    sbc [hl]                                      ; $7f69: $9e
    sbc l                                         ; $7f6a: $9d
    inc bc                                        ; $7f6b: $03
    ld [hl], b                                    ; $7f6c: $70
    sbc h                                         ; $7f6d: $9c
    ld [hl+], a                                   ; $7f6e: $22
    sbc e                                         ; $7f6f: $9b
    sbc d                                         ; $7f70: $9a
    inc bc                                        ; $7f71: $03
    ld [hl], b                                    ; $7f72: $70
    sbc c                                         ; $7f73: $99
    sbc b                                         ; $7f74: $98
    sub a                                         ; $7f75: $97
    inc bc                                        ; $7f76: $03
    ld [hl], b                                    ; $7f77: $70
    sub [hl]                                      ; $7f78: $96
    ld hl, $9495                                  ; $7f79: $21 $95 $94
    inc bc                                        ; $7f7c: $03
    ld [hl], b                                    ; $7f7d: $70
    ld a, [bc]                                    ; $7f7e: $0a
    ld a, [hl+]                                   ; $7f7f: $2a
    ld a, [bc]                                    ; $7f80: $0a
    dec b                                         ; $7f81: $05

jr_0c6_7f82:
    ld bc, $0f00                                  ; $7f82: $01 $00 $0f
    ld a, [hl+]                                   ; $7f85: $2a
    ld a, [bc]                                    ; $7f86: $0a
    ld a, [bc]                                    ; $7f87: $0a
    ld a, [hl+]                                   ; $7f88: $2a
    ld a, [bc]                                    ; $7f89: $0a
    jr z, @+$04                                   ; $7f8a: $28 $02

    ld [$7814], sp                                ; $7f8c: $08 $14 $78
    ld bc, $5a80                                  ; $7f8f: $01 $80 $5a
    dec bc                                        ; $7f92: $0b
    ld bc, $0c88                                  ; $7f93: $01 $88 $0c
    ld [bc], a                                    ; $7f96: $02
    ld a, b                                       ; $7f97: $78
    ld bc, $0990                                  ; $7f98: $01 $90 $09
    ld bc, $0c08                                  ; $7f9b: $01 $08 $0c
    ld [hl], c                                    ; $7f9e: $71
    add hl, bc                                    ; $7f9f: $09
    add hl, bc                                    ; $7fa0: $09
    ld [$0006], sp                                ; $7fa1: $08 $06 $00
    ld c, $10                                     ; $7fa4: $0e $10
    add hl, bc                                    ; $7fa6: $09
    add hl, bc                                    ; $7fa7: $09
    rrca                                          ; $7fa8: $0f
    inc de                                        ; $7fa9: $13
    ld [$18ed], sp                                ; $7faa: $08 $ed $18
    db $10                                        ; $7fad: $10
    ld a, [bc]                                    ; $7fae: $0a
    nop                                           ; $7faf: $00
    db $10                                        ; $7fb0: $10
    db $10                                        ; $7fb1: $10
    inc c                                         ; $7fb2: $0c
    inc de                                        ; $7fb3: $13
    nop                                           ; $7fb4: $00
    ld d, $10                                     ; $7fb5: $16 $10
    rrca                                          ; $7fb7: $0f
    inc bc                                        ; $7fb8: $03
    jr @+$01                                      ; $7fb9: $18 $ff

    jr @+$1a                                      ; $7fbb: $18 $18

    ld hl, $1a10                                  ; $7fbd: $21 $10 $1a
    ld [$181b], sp                                ; $7fc0: $08 $1b $18
    ld a, [hl-]                                   ; $7fc3: $3a
    ld [$0052], sp                                ; $7fc4: $08 $52 $00
    ld [hl], $10                                  ; $7fc7: $36 $10
    jr z, jr_0c6_7fcb                             ; $7fc9: $28 $00

jr_0c6_7fcb:
    rst $38                                       ; $7fcb: $ff
    dec c                                         ; $7fcc: $0d
    db $10                                        ; $7fcd: $10
    ld a, [bc]                                    ; $7fce: $0a
    db $10                                        ; $7fcf: $10
    dec h                                         ; $7fd0: $25
    db $10                                        ; $7fd1: $10
    ld b, e                                       ; $7fd2: $43
    ld [$086f], sp                                ; $7fd3: $08 $6f $08
    ld a, $10                                     ; $7fd6: $3e $10
    inc l                                         ; $7fd8: $2c
    db $10                                        ; $7fd9: $10
    ld d, c                                       ; $7fda: $51
    jr @-$3e                                      ; $7fdb: $18 $c0

    ld h, $10                                     ; $7fdd: $26 $10
    ld d, c                                       ; $7fdf: $51
    ld [$7fff], sp                                ; $7fe0: $08 $ff $7f
    cp h                                          ; $7fe3: $bc
    ld [hl], a                                    ; $7fe4: $77
    ld [hl], d                                    ; $7fe5: $72
    inc bc                                        ; $7fe6: $03
    ld b, [hl]                                    ; $7fe7: $46
    dec b                                         ; $7fe8: $05
    rst $38                                       ; $7fe9: $ff
    ld a, a                                       ; $7fea: $7f
    reti                                          ; $7feb: $d9


    ld l, e                                       ; $7fec: $6b
    pop hl                                        ; $7fed: $e1
    dec d                                         ; $7fee: $15
    and b                                         ; $7fef: $a0
    nop                                           ; $7ff0: $00
    rst $38                                       ; $7ff1: $ff
    ld a, a                                       ; $7ff2: $7f
    sbc [hl]                                      ; $7ff3: $9e
    ld e, e                                       ; $7ff4: $5b
    jr nz, @+$71                                  ; $7ff5: $20 $6f

    xor b                                         ; $7ff7: $a8
    ld d, h                                       ; $7ff8: $54
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
