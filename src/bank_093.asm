; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $093", ROMX[$4000], BANK[$93]

    db $93

    nop                                           ; $4001: $00
    db $18, $f3                                   ; $4002: $18 $f3
    ld [de], a                                    ; $4004: $12
    ld b, b                                       ; $4005: $40
    rst $38                                       ; $4006: $ff
    ld bc, $fd80                                  ; $4007: $01 $80 $fd
    rst $38                                       ; $400a: $ff
    cp $ff                                        ; $400b: $fe $ff
    jp hl                                         ; $400d: $e9


    rst $38                                       ; $400e: $ff
    db $10                                        ; $400f: $10
    jp nc, $e9fd                                  ; $4010: $d2 $fd $e9

    dec e                                         ; $4013: $1d
    nop                                           ; $4014: $00
    cp $ff                                        ; $4015: $fe $ff
    pop af                                        ; $4017: $f1
    rst $38                                       ; $4018: $ff
    nop                                           ; $4019: $00
    xor $f3                                       ; $401a: $ee $f3
    rst $28                                       ; $401c: $ef
    rst $30                                       ; $401d: $f7
    adc l                                         ; $401e: $8d
    rst $38                                       ; $401f: $ff
    jr z, @-$20                                   ; $4020: $28 $de

    nop                                           ; $4022: $00
    ld l, d                                       ; $4023: $6a
    sbc h                                         ; $4024: $9c
    sbc l                                         ; $4025: $9d
    cp $f9                                        ; $4026: $fe $f9
    rst $38                                       ; $4028: $ff
    ld a, [c]                                     ; $4029: $f2
    db $fd                                        ; $402a: $fd
    nop                                           ; $402b: $00
    or $f9                                        ; $402c: $f6 $f9
    pop bc                                        ; $402e: $c1
    rst $38                                       ; $402f: $ff
    cp a                                          ; $4030: $bf
    rst $08                                       ; $4031: $cf
    cp c                                          ; $4032: $b9
    rst $18                                       ; $4033: $df
    nop                                           ; $4034: $00
    or d                                          ; $4035: $b2
    db $fd                                        ; $4036: $fd
    ld e, c                                       ; $4037: $59
    ld hl, sp-$05                                 ; $4038: $f8 $fb
    rst $38                                       ; $403a: $ff
    or c                                          ; $403b: $b1
    adc $01                                       ; $403c: $ce $01
    db $fd                                        ; $403e: $fd
    add [hl]                                      ; $403f: $86
    and l                                         ; $4040: $a5
    adc $ed                                       ; $4041: $ce $ed
    add [hl]                                      ; $4043: $86
    or l                                          ; $4044: $b5
    ld [$0010], sp                                ; $4045: $08 $10 $00
    db $f4                                        ; $4048: $f4
    ei                                            ; $4049: $fb
    ld e, c                                       ; $404a: $59
    rst $38                                       ; $404b: $ff
    cp a                                          ; $404c: $bf
    rst $38                                       ; $404d: $ff
    db $e3                                        ; $404e: $e3
    rst $38                                       ; $404f: $ff
    nop                                           ; $4050: $00
    set 4, a                                      ; $4051: $cb $e7
    ld d, l                                       ; $4053: $55
    db $e3                                        ; $4054: $e3
    db $ed                                        ; $4055: $ed
    di                                            ; $4056: $f3
    or c                                          ; $4057: $b1
    rst $38                                       ; $4058: $ff
    nop                                           ; $4059: $00
    and a                                         ; $405a: $a7
    db $fd                                        ; $405b: $fd
    ld b, e                                       ; $405c: $43
    rst $38                                       ; $405d: $ff
    rst $10                                       ; $405e: $d7
    rst $20                                       ; $405f: $e7
    rst $28                                       ; $4060: $ef
    rst $08                                       ; $4061: $cf
    nop                                           ; $4062: $00
    pop af                                        ; $4063: $f1
    rst $38                                       ; $4064: $ff
    ld h, d                                       ; $4065: $62
    db $fd                                        ; $4066: $fd
    cp h                                          ; $4067: $bc
    ld sp, hl                                     ; $4068: $f9
    rst $18                                       ; $4069: $df
    db $fd                                        ; $406a: $fd
    add b                                         ; $406b: $80
    jr z, jr_093_4076                             ; $406c: $28 $08

    jp hl                                         ; $406e: $e9


    add [hl]                                      ; $406f: $86
    and c                                         ; $4070: $a1
    adc $f9                                       ; $4071: $ce $f9
    add [hl]                                      ; $4073: $86
    xor h                                         ; $4074: $ac
    nop                                           ; $4075: $00

jr_093_4076:
    jp $86eb                                      ; $4076: $c3 $eb $86


    and [hl]                                      ; $4079: $a6
    jp $fffd                                      ; $407a: $c3 $fd $ff


    and a                                         ; $407d: $a7
    nop                                           ; $407e: $00
    rst $38                                       ; $407f: $ff
    ld e, e                                       ; $4080: $5b
    rst $20                                       ; $4081: $e7
    push af                                       ; $4082: $f5
    jp $c1a3                                      ; $4083: $c3 $a3 $c1


    sub $00                                       ; $4086: $d6 $00
    add c                                         ; $4088: $81
    cp h                                          ; $4089: $bc
    jp $d5ab                                      ; $408a: $c3 $ab $d5


    and e                                         ; $408d: $a3
    rst $38                                       ; $408e: $ff
    push hl                                       ; $408f: $e5
    nop                                           ; $4090: $00
    ei                                            ; $4091: $fb
    db $ed                                        ; $4092: $ed
    di                                            ; $4093: $f3
    di                                            ; $4094: $f3
    rst $38                                       ; $4095: $ff
    sbc a                                         ; $4096: $9f
    rst $38                                       ; $4097: $ff
    or b                                          ; $4098: $b0
    nop                                           ; $4099: $00
    rst $18                                       ; $409a: $df
    db $ec                                        ; $409b: $ec
    di                                            ; $409c: $f3
    ei                                            ; $409d: $fb
    ld sp, hl                                     ; $409e: $f9
    di                                            ; $409f: $f3
    add [hl]                                      ; $40a0: $86
    cp [hl]                                       ; $40a1: $be
    ld bc, $f3c3                                  ; $40a2: $01 $c3 $f3
    add [hl]                                      ; $40a5: $86
    xor [hl]                                      ; $40a6: $ae

jr_093_40a7:
    jp $87f2                                      ; $40a7: $c3 $f2 $87


    inc b                                         ; $40aa: $04
    ld [$a600], sp                                ; $40ab: $08 $00 $a6
    jp $ffbb                                      ; $40ae: $c3 $bb $ff


    ld a, l                                       ; $40b1: $7d
    rst $38                                       ; $40b2: $ff
    sbc [hl]                                      ; $40b3: $9e
    rst $28                                       ; $40b4: $ef
    nop                                           ; $40b5: $00
    dec hl                                        ; $40b6: $2b
    rst $08                                       ; $40b7: $cf
    inc de                                        ; $40b8: $13
    rst $18                                       ; $40b9: $df
    or e                                          ; $40ba: $b3
    db $fd                                        ; $40bb: $fd
    push af                                       ; $40bc: $f5
    ld a, b                                       ; $40bd: $78
    ld b, b                                       ; $40be: $40
    ld sp, hl                                     ; $40bf: $f9

Jump_093_40c0:
    cp a                                          ; $40c0: $bf
    nop                                           ; $40c1: $00
    ld [hl], e                                    ; $40c2: $73
    rst $38                                       ; $40c3: $ff
    rst $30                                       ; $40c4: $f7
    ei                                            ; $40c5: $fb
    dec e                                         ; $40c6: $1d
    rst $38                                       ; $40c7: $ff
    inc b                                         ; $40c8: $04
    dec hl                                        ; $40c9: $2b
    db $dd                                        ; $40ca: $dd
    ld l, d                                       ; $40cb: $6a
    sbc h                                         ; $40cc: $9c
    sbc c                                         ; $40cd: $99
    sbc [hl]                                      ; $40ce: $9e
    nop                                           ; $40cf: $00
    rst $38                                       ; $40d0: $ff
    rst $38                                       ; $40d1: $ff
    nop                                           ; $40d2: $00
    db $eb                                        ; $40d3: $eb
    rst $38                                       ; $40d4: $ff
    sub $ff                                       ; $40d5: $d6 $ff
    adc d                                         ; $40d7: $8a
    rst $38                                       ; $40d8: $ff
    cp [hl]                                       ; $40d9: $be
    rst $08                                       ; $40da: $cf
    ld [bc], a                                    ; $40db: $02
    xor $93                                       ; $40dc: $ee $93
    rst $10                                       ; $40de: $d7
    ld sp, hl                                     ; $40df: $f9
    or e                                          ; $40e0: $b3
    db $fd                                        ; $40e1: $fd
    ldh [rNR23], a                                ; $40e2: $e0 $18
    ld e, a                                       ; $40e4: $5f
    jr nz, @+$01                                  ; $40e5: $20 $ff

    ld l, a                                       ; $40e7: $6f
    ld d, d                                       ; $40e8: $52
    nop                                           ; $40e9: $00
    ld h, a                                       ; $40ea: $67
    sbc a                                         ; $40eb: $9f
    rst $08                                       ; $40ec: $cf
    cp a                                          ; $40ed: $bf
    db $fd                                        ; $40ee: $fd
    ld [$fcff], sp                                ; $40ef: $08 $ff $fc
    inc bc                                        ; $40f2: $03
    xor [hl]                                      ; $40f3: $ae
    ld [bc], a                                    ; $40f4: $02
    nop                                           ; $40f5: $00
    cp d                                          ; $40f6: $ba
    rlca                                          ; $40f7: $07
    xor $00                                       ; $40f8: $ee $00
    inc bc                                        ; $40fa: $03
    xor d                                         ; $40fb: $aa
    rlca                                          ; $40fc: $07
    cp $03                                        ; $40fd: $fe $03
    ei                                            ; $40ff: $fb
    rst $38                                       ; $4100: $ff
    ld sp, hl                                     ; $4101: $f9
    ld [$d506], sp                                ; $4102: $08 $06 $d5
    ld c, $fd                                     ; $4105: $0e $fd
    inc b                                         ; $4107: $04
    jr nz, jr_093_40a7                            ; $4108: $20 $9d

    ld b, $ff                                     ; $410a: $06 $ff
    nop                                           ; $410c: $00
    rst $38                                       ; $410d: $ff
    db $ed                                        ; $410e: $ed
    dec de                                        ; $410f: $1b
    rst $38                                       ; $4110: $ff
    add hl, bc                                    ; $4111: $09
    xor l                                         ; $4112: $ad
    dec de                                        ; $4113: $1b
    cp a                                          ; $4114: $bf
    add b                                         ; $4115: $80
    inc b                                         ; $4116: $04
    nop                                           ; $4117: $00
    rst $38                                       ; $4118: $ff
    add hl, bc                                    ; $4119: $09
    dec l                                         ; $411a: $2d
    dec de                                        ; $411b: $1b
    sbc e                                         ; $411c: $9b
    rst $38                                       ; $411d: $ff
    cp l                                          ; $411e: $bd
    ld [$571f], sp                                ; $411f: $08 $1f $57
    ccf                                           ; $4122: $3f
    dec de                                        ; $4123: $1b
    daa                                           ; $4124: $27
    ld bc, $efd7                                  ; $4125: $01 $d7 $ef
    rrc b                                         ; $4128: $cb $08
    add a                                         ; $412a: $87
    db $e3                                        ; $412b: $e3
    sbc a                                         ; $412c: $9f
    xor d                                         ; $412d: $aa
    jr c, jr_093_4130                             ; $412e: $38 $00

jr_093_4130:
    ld [$be07], a                                 ; $4130: $ea $07 $be
    and b                                         ; $4133: $a0
    ld b, b                                       ; $4134: $40
    nop                                           ; $4135: $00
    cp [hl]                                       ; $4136: $be
    ld b, b                                       ; $4137: $40
    nop                                           ; $4138: $00
    xor [hl]                                      ; $4139: $ae
    inc bc                                        ; $413a: $03
    rst $10                                       ; $413b: $d7
    inc c                                         ; $413c: $0c
    cp l                                          ; $413d: $bd
    nop                                           ; $413e: $00
    ld b, $f7                                     ; $413f: $06 $f7
    inc c                                         ; $4141: $0c
    sbc l                                         ; $4142: $9d
    ld b, $d3                                     ; $4143: $06 $d3
    inc c                                         ; $4145: $0c
    sbc e                                         ; $4146: $9b
    nop                                           ; $4147: $00
    inc b                                         ; $4148: $04
    or e                                          ; $4149: $b3
    inc c                                         ; $414a: $0c
    jp nz, $bf1c                                  ; $414b: $c2 $1c $bf

    add hl, bc                                    ; $414e: $09
    db $ed                                        ; $414f: $ed
    ld [bc], a                                    ; $4150: $02
    dec de                                        ; $4151: $1b
    ld a, a                                       ; $4152: $7f
    add hl, bc                                    ; $4153: $09
    and l                                         ; $4154: $a5
    dec de                                        ; $4155: $1b
    ld [hl], a                                    ; $4156: $77
    inc b                                         ; $4157: $04
    nop                                           ; $4158: $00
    rst $00                                       ; $4159: $c7
    nop                                           ; $415a: $00
    add hl, sp                                    ; $415b: $39
    pop hl                                        ; $415c: $e1
    dec de                                        ; $415d: $1b
    adc a                                         ; $415e: $8f
    rst $38                                       ; $415f: $ff
    ei                                            ; $4160: $fb
    rst $38                                       ; $4161: $ff
    dec [hl]                                      ; $4162: $35
    nop                                           ; $4163: $00
    ei                                            ; $4164: $fb
    sbc c                                         ; $4165: $99
    ccf                                           ; $4166: $3f
    ld l, a                                       ; $4167: $6f
    sbc a                                         ; $4168: $9f
    sbc [hl]                                      ; $4169: $9e
    rst $38                                       ; $416a: $ff
    push de                                       ; $416b: $d5
    nop                                           ; $416c: $00
    rst $28                                       ; $416d: $ef
    or a                                          ; $416e: $b7
    rst $08                                       ; $416f: $cf
    xor d                                         ; $4170: $aa
    rlca                                          ; $4171: $07
    xor a                                         ; $4172: $af
    ld [bc], a                                    ; $4173: $02
    ld a, [$0708]                                 ; $4174: $fa $08 $07
    rst $28                                       ; $4177: $ef
    ld [bc], a                                    ; $4178: $02
    cp d                                          ; $4179: $ba
    inc b                                         ; $417a: $04
    nop                                           ; $417b: $00
    ld a, [$dc07]                                 ; $417c: $fa $07 $dc
    nop                                           ; $417f: $00
    nop                                           ; $4180: $00
    ld a, [$ea0c]                                 ; $4181: $fa $0c $ea
    inc e                                         ; $4184: $1c
    jp c, $8a0c                                   ; $4185: $da $0c $8a

    nop                                           ; $4188: $00
    inc e                                         ; $4189: $1c
    cp d                                          ; $418a: $ba
    inc c                                         ; $418b: $0c
    xor d                                         ; $418c: $aa
    inc e                                         ; $418d: $1c
    sbc d                                         ; $418e: $9a
    inc c                                         ; $418f: $0c
    ld l, d                                       ; $4190: $6a
    ld [bc], a                                    ; $4191: $02
    inc a                                         ; $4192: $3c
    rst $10                                       ; $4193: $d7
    add hl, sp                                    ; $4194: $39
    or c                                          ; $4195: $b1
    dec de                                        ; $4196: $1b
    sub e                                         ; $4197: $93
    inc b                                         ; $4198: $04
    nop                                           ; $4199: $00
    inc de                                        ; $419a: $13
    add d                                         ; $419b: $82
    ld [$d300], sp                                ; $419c: $08 $00 $d3
    add hl, sp                                    ; $419f: $39
    ld [hl], l                                    ; $41a0: $75
    dec de                                        ; $41a1: $1b
    rst $00                                       ; $41a2: $c7
    adc [hl]                                      ; $41a3: $8e
    ld bc, $0015                                  ; $41a4: $01 $15 $00
    ei                                            ; $41a7: $fb
    and l                                         ; $41a8: $a5
    inc de                                        ; $41a9: $13
    ld c, e                                       ; $41aa: $4b
    cp a                                          ; $41ab: $bf
    sbc a                                         ; $41ac: $9f
    rst $38                                       ; $41ad: $ff
    db $ed                                        ; $41ae: $ed
    nop                                           ; $41af: $00
    di                                            ; $41b0: $f3
    reti                                          ; $41b1: $d9


    rst $20                                       ; $41b2: $e7
    dec hl                                        ; $41b3: $2b
    rst $18                                       ; $41b4: $df
    add l                                         ; $41b5: $85
    rst $38                                       ; $41b6: $ff
    db $d3                                        ; $41b7: $d3
    nop                                           ; $41b8: $00
    rst $20                                       ; $41b9: $e7
    xor l                                         ; $41ba: $ad
    jp $8f73                                      ; $41bb: $c3 $73 $8f


    xor $ff                                       ; $41be: $ee $ff
    or l                                          ; $41c0: $b5
    nop                                           ; $41c1: $00
    rst $08                                       ; $41c2: $cf
    ld b, a                                       ; $41c3: $47
    cp a                                          ; $41c4: $bf
    ld d, l                                       ; $41c5: $55
    db $eb                                        ; $41c6: $eb
    and e                                         ; $41c7: $a3
    rst $38                                       ; $41c8: $ff
    sbc $00                                       ; $41c9: $de $00
    db $fd                                        ; $41cb: $fd
    and l                                         ; $41cc: $a5
    cp $fa                                        ; $41cd: $fe $fa
    rst $00                                       ; $41cf: $c7
    rst $08                                       ; $41d0: $cf
    db $e3                                        ; $41d1: $e3
    ld d, l                                       ; $41d2: $55
    nop                                           ; $41d3: $00
    db $e3                                        ; $41d4: $e3
    xor a                                         ; $41d5: $af
    pop af                                        ; $41d6: $f1
    rst $38                                       ; $41d7: $ff
    rst $38                                       ; $41d8: $ff
    and $fb                                       ; $41d9: $e6 $fb
    call $f300                                    ; $41db: $cd $00 $f3
    xor e                                         ; $41de: $ab
    rst $30                                       ; $41df: $f7
    call c, $aefb                                 ; $41e0: $dc $fb $ae
    ld sp, hl                                     ; $41e3: $f9
    rst $38                                       ; $41e4: $ff
    db $10                                        ; $41e5: $10
    db $fc                                        ; $41e6: $fc
    jp Jump_000_38ff                              ; $41e7: $c3 $ff $38


    add hl, bc                                    ; $41ea: $09
    ld a, [$b687]                                 ; $41eb: $fa $87 $b6
    jp $ea51                                      ; $41ee: $c3 $51 $ea


    inc a                                         ; $41f1: $3c
    ld bc, $44e2                                  ; $41f2: $01 $e2 $44
    ld bc, $ffb1                                  ; $41f5: $01 $b1 $ff
    rst $20                                       ; $41f8: $e7
    ld [hl], b                                    ; $41f9: $70
    ld bc, $a500                                  ; $41fa: $01 $00 $a5
    jp $c3f9                                      ; $41fd: $c3 $f9 $c3


    push de                                       ; $4200: $d5
    db $e3                                        ; $4201: $e3
    ld [hl], e                                    ; $4202: $73
    rst $38                                       ; $4203: $ff
    ld b, b                                       ; $4204: $40
    xor c                                         ; $4205: $a9
    jr nz, jr_093_4218                            ; $4206: $20 $10

    ld hl, sp-$79                                 ; $4208: $f8 $87

Call_093_420a:
    or h                                          ; $420a: $b4
    jp $81e6                                      ; $420b: $c3 $e6 $81


    nop                                           ; $420e: $00
    or h                                          ; $420f: $b4
    jp $81fb                                      ; $4210: $c3 $fb $81


    or l                                          ; $4213: $b5
    jp $fd73                                      ; $4214: $c3 $73 $fd


    nop                                           ; $4217: $00

jr_093_4218:
    pop de                                        ; $4218: $d1
    rst $38                                       ; $4219: $ff
    adc a                                         ; $421a: $8f
    rst $38                                       ; $421b: $ff
    ld h, e                                       ; $421c: $63
    sbc a                                         ; $421d: $9f
    dec d                                         ; $421e: $15
    rst $28                                       ; $421f: $ef
    nop                                           ; $4220: $00
    add a                                         ; $4221: $87
    rst $38                                       ; $4222: $ff
    db $dd                                        ; $4223: $dd
    rst $38                                       ; $4224: $ff
    ld l, d                                       ; $4225: $6a
    db $fd                                        ; $4226: $fd
    ei                                            ; $4227: $fb
    add c                                         ; $4228: $81
    ld a, [de]                                    ; $4229: $1a
    cp c                                          ; $422a: $b9
    jp Jump_000_04f3                              ; $422b: $c3 $f3 $04


    nop                                           ; $422e: $00
    ld [$f708], sp                                ; $422f: $08 $08 $f7
    inc b                                         ; $4232: $04
    db $10                                        ; $4233: $10
    or c                                          ; $4234: $b1
    and d                                         ; $4235: $a2
    ld [$b500], sp                                ; $4236: $08 $00 $b5
    inc c                                         ; $4239: $0c
    nop                                           ; $423a: $00
    cp l                                          ; $423b: $bd
    jp $b2fe                                      ; $423c: $c3 $fe $b2


    ld bc, $00d7                                  ; $423f: $01 $d7 $00
    rla                                           ; $4242: $17
    xor b                                         ; $4243: $a8
    cpl                                           ; $4244: $2f
    sub c                                         ; $4245: $91
    ld e, [hl]                                    ; $4246: $5e
    push de                                       ; $4247: $d5
    ld e, d                                       ; $4248: $5a
    pop af                                        ; $4249: $f1
    nop                                           ; $424a: $00
    ld e, [hl]                                    ; $424b: $5e
    cp b                                          ; $424c: $b8
    ld a, a                                       ; $424d: $7f
    sbc $3f                                       ; $424e: $de $3f
    rst $20                                       ; $4250: $e7
    rra                                           ; $4251: $1f

jr_093_4252:
    ei                                            ; $4252: $fb
    nop                                           ; $4253: $00
    db $fc                                        ; $4254: $fc
    rla                                           ; $4255: $17
    db $fc                                        ; $4256: $fc
    adc l                                         ; $4257: $8d
    ld a, [de]                                    ; $4258: $1a
    xor a                                         ; $4259: $af
    ld a, [de]                                    ; $425a: $1a
    adc d                                         ; $425b: $8a
    nop                                           ; $425c: $00
    ld a, [de]                                    ; $425d: $1a
    inc d                                         ; $425e: $14
    or $9a                                        ; $425f: $f6 $9a
    inc c                                         ; $4261: $0c
    and $f8                                       ; $4262: $e6 $f8
    ld d, a                                       ; $4264: $57
    inc d                                         ; $4265: $14
    add hl, sp                                    ; $4266: $39
    ld [hl], c                                    ; $4267: $71
    dec de                                        ; $4268: $1b
    inc b                                         ; $4269: $04
    ld [$08d7], sp                                ; $426a: $08 $d7 $08
    nop                                           ; $426d: $00
    rst $18                                       ; $426e: $df
    ld sp, $7500                                  ; $426f: $31 $00 $75
    dec de                                        ; $4272: $1b
    ret c                                         ; $4273: $d8

    rlca                                          ; $4274: $07
    push af                                       ; $4275: $f5
    ld c, $dd                                     ; $4276: $0e $dd

jr_093_4278:
    ld b, $00                                     ; $4278: $06 $00
    push bc                                       ; $427a: $c5
    ld c, $cd                                     ; $427b: $0e $cd
    ld b, $65                                     ; $427d: $06 $65
    adc [hl]                                      ; $427f: $8e
    db $dd                                        ; $4280: $dd
    ld b, $00                                     ; $4281: $06 $00
    ld [hl], l                                    ; $4283: $75
    adc [hl]                                      ; $4284: $8e
    ld a, [de]                                    ; $4285: $1a
    db $ec                                        ; $4286: $ec
    xor $18                                       ; $4287: $ee $18
    cp e                                          ; $4289: $bb
    inc c                                         ; $428a: $0c
    inc b                                         ; $428b: $04
    rst $28                                       ; $428c: $ef
    jr @+$01                                      ; $428d: $18 $ff

    ld [$04ae], sp                                ; $428f: $08 $ae $04
    nop                                           ; $4292: $00

jr_093_4293:
    and a                                         ; $4293: $a7
    jr jr_093_4296                                ; $4294: $18 $00

jr_093_4296:
    rst $18                                       ; $4296: $df
    ld sp, $1bf1                                  ; $4297: $31 $f1 $1b
    ld e, e                                       ; $429a: $5b
    ld sp, $1379                                  ; $429b: $31 $79 $13
    add b                                         ; $429e: $80
    inc b                                         ; $429f: $04
    ld [$314f], sp                                ; $42a0: $08 $4f $31
    db $ed                                        ; $42a3: $ed
    inc de                                        ; $42a4: $13
    db $dd                                        ; $42a5: $dd
    ld b, $45                                     ; $42a6: $06 $45
    add d                                         ; $42a8: $82
    jr z, jr_093_42ab                             ; $42a9: $28 $00

jr_093_42ab:
    ld d, l                                       ; $42ab: $55
    adc [hl]                                      ; $42ac: $8e
    ld e, l                                       ; $42ad: $5d
    add [hl]                                      ; $42ae: $86
    ld [hl], l                                    ; $42af: $75
    inc b                                         ; $42b0: $04
    db $10                                        ; $42b1: $10
    ld [hl], a                                    ; $42b2: $77
    add b                                         ; $42b3: $80
    inc h                                         ; $42b4: $24
    nop                                           ; $42b5: $00
    daa                                           ; $42b6: $27
    jr jr_093_432f                                ; $42b7: $18 $76

    jr jr_093_4252                                ; $42b9: $18 $97

    jr c, jr_093_42f3                             ; $42bb: $38 $36

    nop                                           ; $42bd: $00
    jr jr_093_4317                                ; $42be: $18 $57

    jr c, jr_093_4278                             ; $42c0: $38 $b6

    jr jr_093_4293                                ; $42c2: $18 $cf

    ld sp, $0009                                  ; $42c4: $31 $09 $00
    ld [hl], e                                    ; $42c7: $73
    ld c, a                                       ; $42c8: $4f
    ld sp, $7329                                  ; $42c9: $31 $29 $73
    ld l, a                                       ; $42cc: $6f
    ld sp, $21a9                                  ; $42cd: $31 $a9 $21
    ld [hl], e                                    ; $42d0: $73
    db $eb                                        ; $42d1: $eb
    inc b                                         ; $42d2: $04
    nop                                           ; $42d3: $00
    ld a, a                                       ; $42d4: $7f
    add h                                         ; $42d5: $84
    ld d, l                                       ; $42d6: $55
    adc [hl]                                      ; $42d7: $8e
    inc b                                         ; $42d8: $04
    ld [$5f00], sp                                ; $42d9: $08 $00 $5f
    add h                                         ; $42dc: $84

jr_093_42dd:
    ld d, a                                       ; $42dd: $57
    adc h                                         ; $42de: $8c
    ld a, a                                       ; $42df: $7f
    add h                                         ; $42e0: $84
    ld [hl], e                                    ; $42e1: $73
    adc h                                         ; $42e2: $8c
    db $10                                        ; $42e3: $10
    ld d, [hl]                                    ; $42e4: $56
    jr c, jr_093_42dd                             ; $42e5: $38 $f6

    inc l                                         ; $42e7: $2c
    nop                                           ; $42e8: $00
    or $18                                        ; $42e9: $f6 $18
    rst $18                                       ; $42eb: $df
    jr nc, jr_093_42ee                            ; $42ec: $30 $00

jr_093_42ee:
    rst $30                                       ; $42ee: $f7
    jr @-$20                                      ; $42ef: $18 $de

    jr nc, @+$01                                  ; $42f1: $30 $ff

jr_093_42f3:
    db $10                                        ; $42f3: $10
    rst $28                                       ; $42f4: $ef
    ld sp, $ad00                                  ; $42f5: $31 $00 $ad
    ld [hl], e                                    ; $42f8: $73
    ei                                            ; $42f9: $fb
    ld hl, $73a9                                  ; $42fa: $21 $a9 $73
    rst $38                                       ; $42fd: $ff
    ld hl, $ad40                                  ; $42fe: $21 $40 $ad
    inc b                                         ; $4301: $04
    jr jr_093_4304                                ; $4302: $18 $00

jr_093_4304:
    dec [hl]                                      ; $4304: $35
    ld a, [bc]                                    ; $4305: $0a
    ld c, e                                       ; $4306: $4b
    cp a                                          ; $4307: $bf
    xor d                                         ; $4308: $aa
    nop                                           ; $4309: $00
    ld d, l                                       ; $430a: $55
    ld [hl], l                                    ; $430b: $75
    ld a, [bc]                                    ; $430c: $0a
    ld e, [hl]                                    ; $430d: $5e
    ld bc, $8a75                                  ; $430e: $01 $75 $8a
    adc c                                         ; $4311: $89
    ld [bc], a                                    ; $4312: $02
    ld a, a                                       ; $4313: $7f
    push af                                       ; $4314: $f5
    ld a, [bc]                                    ; $4315: $0a
    ld d, h                                       ; $4316: $54

jr_093_4317:
    cp a                                          ; $4317: $bf
    ld a, [hl-]                                   ; $4318: $3a
    xor h                                         ; $4319: $ac
    ld [bc], a                                    ; $431a: $02
    add hl, de                                    ; $431b: $19
    nop                                           ; $431c: $00
    and $b5                                       ; $431d: $e6 $b5
    ld c, d                                       ; $431f: $4a
    ld c, d                                       ; $4320: $4a
    cp a                                          ; $4321: $bf
    ld h, l                                       ; $4322: $65
    ld a, [$0013]                                 ; $4323: $fa $13 $00
    rst $28                                       ; $4326: $ef
    xor c                                         ; $4327: $a9
    ld d, a                                       ; $4328: $57
    ld [hl], l                                    ; $4329: $75
    ld a, [bc]                                    ; $432a: $0a
    ld l, $01                                     ; $432b: $2e $01
    pop de                                        ; $432d: $d1
    nop                                           ; $432e: $00

jr_093_432f:
    nop                                           ; $432f: $00
    dec de                                        ; $4330: $1b
    ldh [$aa], a                                  ; $4331: $e0 $aa
    ld d, l                                       ; $4333: $55
    ret nz                                        ; $4334: $c0

    ccf                                           ; $4335: $3f
    db $eb                                        ; $4336: $eb
    nop                                           ; $4337: $00
    ld d, h                                       ; $4338: $54
    sub l                                         ; $4339: $95
    add sp, $72                                   ; $433a: $e8 $72
    add b                                         ; $433c: $80
    and c                                         ; $433d: $a1
    ld b, b                                       ; $433e: $40
    ld l, e                                       ; $433f: $6b
    nop                                           ; $4340: $00
    inc d                                         ; $4341: $14
    ld d, a                                       ; $4342: $57
    xor b                                         ; $4343: $a8
    adc d                                         ; $4344: $8a
    ld a, l                                       ; $4345: $7d
    ld hl, $eafe                                  ; $4346: $21 $fe $ea
    nop                                           ; $4349: $00
    rla                                           ; $434a: $17
    ld d, l                                       ; $434b: $55
    xor e                                         ; $434c: $ab
    xor $11                                       ; $434d: $ee $11
    dec de                                        ; $434f: $1b
    jr nz, @+$66                                  ; $4350: $20 $64

    nop                                           ; $4352: $00
    db $10                                        ; $4353: $10
    sub d                                         ; $4354: $92
    ld l, h                                       ; $4355: $6c
    dec [hl]                                      ; $4356: $35
    ld a, [$f54a]                                 ; $4357: $fa $4a $f5
    ld d, a                                       ; $435a: $57
    nop                                           ; $435b: $00
    ld hl, sp+$03                                 ; $435c: $f8 $03
    db $fc                                        ; $435e: $fc
    and l                                         ; $435f: $a5
    ld e, d                                       ; $4360: $5a
    ld e, d                                       ; $4361: $5a
    dec b                                         ; $4362: $05
    xor e                                         ; $4363: $ab
    nop                                           ; $4364: $00
    nop                                           ; $4365: $00
    ld e, c                                       ; $4366: $59
    nop                                           ; $4367: $00
    ld [c], a                                     ; $4368: $e2
    dec e                                         ; $4369: $1d
    cp d                                          ; $436a: $ba
    ld b, a                                       ; $436b: $47
    cp c                                          ; $436c: $b9
    nop                                           ; $436d: $00
    ret nz                                        ; $436e: $c0

    ld d, c                                       ; $436f: $51
    and b                                         ; $4370: $a0
    xor e                                         ; $4371: $ab
    db $f4                                        ; $4372: $f4
    ld d, [hl]                                    ; $4373: $56
    xor b                                         ; $4374: $a8
    and l                                         ; $4375: $a5
    nop                                           ; $4376: $00
    ld [bc], a                                    ; $4377: $02
    ld e, b                                       ; $4378: $58
    rlca                                          ; $4379: $07
    xor e                                         ; $437a: $ab
    ld e, a                                       ; $437b: $5f
    ld d, l                                       ; $437c: $55
    xor e                                         ; $437d: $ab
    ld d, l                                       ; $437e: $55
    nop                                           ; $437f: $00
    xor e                                         ; $4380: $ab
    xor d                                         ; $4381: $aa
    ld d, l                                       ; $4382: $55
    ld d, a                                       ; $4383: $57
    xor b                                         ; $4384: $a8
    inc a                                         ; $4385: $3c
    nop                                           ; $4386: $00
    ld e, c                                       ; $4387: $59
    nop                                           ; $4388: $00
    and b                                         ; $4389: $a0
    xor a                                         ; $438a: $af
    ld d, b                                       ; $438b: $50
    ld [bc], a                                    ; $438c: $02
    db $fd                                        ; $438d: $fd
    or b                                          ; $438e: $b0
    ld b, b                                       ; $438f: $40
    sub d                                         ; $4390: $92
    nop                                           ; $4391: $00
    dec b                                         ; $4392: $05
    ld d, h                                       ; $4393: $54
    xor d                                         ; $4394: $aa
    xor e                                         ; $4395: $ab
    call nc, Call_000_3ac5                        ; $4396: $d4 $c5 $3a
    ld b, d                                       ; $4399: $42

jr_093_439a:
    nop                                           ; $439a: $00

jr_093_439b:
    nop                                           ; $439b: $00
    ld l, e                                       ; $439c: $6b
    add b                                         ; $439d: $80
    or l                                          ; $439e: $b5
    ld b, d                                       ; $439f: $42
    ld a, d                                       ; $43a0: $7a
    add l                                         ; $43a1: $85
    ld h, l                                       ; $43a2: $65
    ld [$affa], sp                                ; $43a3: $08 $fa $af
    ld d, b                                       ; $43a6: $50
    ccf                                           ; $43a7: $3f
    ld a, [hl-]                                   ; $43a8: $3a
    nop                                           ; $43a9: $00
    pop de                                        ; $43aa: $d1
    jr nz, jr_093_439a                            ; $43ab: $20 $ed

    nop                                           ; $43ad: $00
    jr nc, jr_093_442a                            ; $43ae: $30 $7a

    cp a                                          ; $43b0: $bf
    ldh [$1f], a                                  ; $43b1: $e0 $1f
    ld e, l                                       ; $43b3: $5d
    xor e                                         ; $43b4: $ab
    ld a, [$0500]                                 ; $43b5: $fa $00 $05
    inc bc                                        ; $43b8: $03
    db $fc                                        ; $43b9: $fc
    or b                                          ; $43ba: $b0
    ld c, a                                       ; $43bb: $4f
    ld d, d                                       ; $43bc: $52
    rst $28                                       ; $43bd: $ef
    and l                                         ; $43be: $a5
    nop                                           ; $43bf: $00
    ld a, a                                       ; $43c0: $7f
    ld [hl], a                                    ; $43c1: $77
    rst $38                                       ; $43c2: $ff
    dec hl                                        ; $43c3: $2b
    push de                                       ; $43c4: $d5
    ld a, [hl+]                                   ; $43c5: $2a
    pop de                                        ; $43c6: $d1
    ld d, h                                       ; $43c7: $54
    nop                                           ; $43c8: $00
    jp hl                                         ; $43c9: $e9


    ld [hl], h                                    ; $43ca: $74
    rst $38                                       ; $43cb: $ff
    nop                                           ; $43cc: $00
    rst $38                                       ; $43cd: $ff
    and d                                         ; $43ce: $a2
    ld e, h                                       ; $43cf: $5c
    ld d, c                                       ; $43d0: $51
    nop                                           ; $43d1: $00
    xor $a4                                       ; $43d2: $ee $a4
    rst $38                                       ; $43d4: $ff
    rst $30                                       ; $43d5: $f7
    rst $38                                       ; $43d6: $ff
    cp c                                          ; $43d7: $b9
    ld a, [hl]                                    ; $43d8: $7e
    ld d, l                                       ; $43d9: $55
    nop                                           ; $43da: $00
    ld a, [hl+]                                   ; $43db: $2a
    and h                                         ; $43dc: $a4
    ld e, a                                       ; $43dd: $5f
    ld d, d                                       ; $43de: $52
    xor a                                         ; $43df: $af
    jp hl                                         ; $43e0: $e9


    ld d, $7c                                     ; $43e1: $16 $7c
    nop                                           ; $43e3: $00
    add e                                         ; $43e4: $83
    add l                                         ; $43e5: $85
    nop                                           ; $43e6: $00
    ld b, d                                       ; $43e7: $42
    add c                                         ; $43e8: $81
    ld a, c                                       ; $43e9: $79
    add [hl]                                      ; $43ea: $86
    xor d                                         ; $43eb: $aa
    nop                                           ; $43ec: $00
    ld d, a                                       ; $43ed: $57
    dec hl                                        ; $43ee: $2b
    rst $00                                       ; $43ef: $c7
    rst $38                                       ; $43f0: $ff
    inc bc                                        ; $43f1: $03
    ld h, h                                       ; $43f2: $64
    add e                                         ; $43f3: $83
    rst $38                                       ; $43f4: $ff
    nop                                           ; $43f5: $00
    nop                                           ; $43f6: $00
    cp $00                                        ; $43f7: $fe $00
    xor a                                         ; $43f9: $af
    ld d, b                                       ; $43fa: $50
    ld b, h                                       ; $43fb: $44
    inc bc                                        ; $43fc: $03
    ld [$0100], a                                 ; $43fd: $ea $00 $01
    ld e, l                                       ; $4400: $5d
    and e                                         ; $4401: $a3
    or e                                          ; $4402: $b3
    db $fd                                        ; $4403: $fd
    ld bc, $c5fe                                  ; $4404: $01 $fe $c5
    nop                                           ; $4407: $00
    jr c, jr_093_439b                             ; $4408: $38 $91

    ld a, $5d                                     ; $440a: $3e $5d
    ccf                                           ; $440c: $3f
    xor d                                         ; $440d: $aa
    ld d, l                                       ; $440e: $55
    ld [hl], d                                    ; $440f: $72
    nop                                           ; $4410: $00
    add c                                         ; $4411: $81
    ld l, $d1                                     ; $4412: $2e $d1

Call_093_4414:
    push hl                                       ; $4414: $e5
    ld a, [$ac53]                                 ; $4415: $fa $53 $ac
    cpl                                           ; $4418: $2f
    nop                                           ; $4419: $00
    db $10                                        ; $441a: $10
    jp c, $4f05                                   ; $441b: $da $05 $4f

    ldh a, [$fd]                                  ; $441e: $f0 $fd
    ld [bc], a                                    ; $4420: $02
    and l                                         ; $4421: $a5
    nop                                           ; $4422: $00
    ld e, a                                       ; $4423: $5f
    db $d3                                        ; $4424: $d3
    cpl                                           ; $4425: $2f
    ld a, [$5505]                                 ; $4426: $fa $05 $55
    xor d                                         ; $4429: $aa

jr_093_442a:
    or b                                          ; $442a: $b0
    nop                                           ; $442b: $00
    ld c, a                                       ; $442c: $4f
    ld l, $d1                                     ; $442d: $2e $d1
    sub l                                         ; $442f: $95
    ld [$e51a], a                                 ; $4430: $ea $1a $e5
    or l                                          ; $4433: $b5
    nop                                           ; $4434: $00
    jp z, $e01a                                   ; $4435: $ca $1a $e0

    inc [hl]                                      ; $4438: $34
    ret nz                                        ; $4439: $c0

    ld l, b                                       ; $443a: $68
    sub a                                         ; $443b: $97
    ld c, e                                       ; $443c: $4b
    nop                                           ; $443d: $00
    ccf                                           ; $443e: $3f
    and l                                         ; $443f: $a5
    ld e, a                                       ; $4440: $5f
    ld e, l                                       ; $4441: $5d
    and d                                         ; $4442: $a2
    ldh [$1f], a                                  ; $4443: $e0 $1f
    ld l, a                                       ; $4445: $6f
    nop                                           ; $4446: $00
    sub b                                         ; $4447: $90
    cp a                                          ; $4448: $bf
    ld b, d                                       ; $4449: $42
    halt                                          ; $444a: $76
    add hl, bc                                    ; $444b: $09
    cp d                                          ; $444c: $ba
    inc b                                         ; $444d: $04
    dec d                                         ; $444e: $15
    nop                                           ; $444f: $00
    ld [$d4ab], a                                 ; $4450: $ea $ab $d4
    ld [hl], c                                    ; $4453: $71
    adc [hl]                                      ; $4454: $8e
    ld l, [hl]                                    ; $4455: $6e
    ld de, $0095                                  ; $4456: $11 $95 $00
    ld l, d                                       ; $4459: $6a
    ld c, e                                       ; $445a: $4b
    or h                                          ; $445b: $b4
    xor b                                         ; $445c: $a8
    ld b, b                                       ; $445d: $40
    dec b                                         ; $445e: $05
    nop                                           ; $445f: $00
    ld c, [hl]                                    ; $4460: $4e
    nop                                           ; $4461: $00
    ld bc, $aa55                                  ; $4462: $01 $55 $aa
    dec b                                         ; $4465: $05
    rst $38                                       ; $4466: $ff
    ld c, d                                       ; $4467: $4a
    push af                                       ; $4468: $f5
    ld [$ff00], a                                 ; $4469: $ea $00 $ff
    dec l                                         ; $446c: $2d
    jp nc, Jump_000_0074                          ; $446d: $d2 $74 $00

    ld hl, $bd00                                  ; $4470: $21 $00 $bd
    nop                                           ; $4473: $00
    ld b, d                                       ; $4474: $42
    rra                                           ; $4475: $1f
    ldh [rBCPD], a                                ; $4476: $e0 $69
    add b                                         ; $4478: $80
    xor d                                         ; $4479: $aa
    ld d, l                                       ; $447a: $55
    add hl, hl                                    ; $447b: $29
    nop                                           ; $447c: $00
    ret nz                                        ; $447d: $c0

    db $fc                                        ; $447e: $fc
    nop                                           ; $447f: $00
    and d                                         ; $4480: $a2
    dec e                                         ; $4481: $1d
    ld [hl], l                                    ; $4482: $75
    rrca                                          ; $4483: $0f
    ld c, d                                       ; $4484: $4a
    inc b                                         ; $4485: $04
    cp a                                          ; $4486: $bf
    db $eb                                        ; $4487: $eb
    inc d                                         ; $4488: $14
    dec c                                         ; $4489: $0d
    ld [bc], a                                    ; $448a: $02
    ld e, d                                       ; $448b: $5a
    nop                                           ; $448c: $00
    ld a, [hl+]                                   ; $448d: $2a
    rra                                           ; $448e: $1f
    nop                                           ; $448f: $00
    nop                                           ; $4490: $00
    and e                                         ; $4491: $a3
    ld e, h                                       ; $4492: $5c
    ld e, c                                       ; $4493: $59
    and b                                         ; $4494: $a0
    ld hl, sp+$07                                 ; $4495: $f8 $07
    xor d                                         ; $4497: $aa
    nop                                           ; $4498: $00
    ld d, l                                       ; $4499: $55
    ld d, l                                       ; $449a: $55
    xor d                                         ; $449b: $aa
    sub d                                         ; $449c: $92
    ld a, a                                       ; $449d: $7f
    ld c, a                                       ; $449e: $4f
    cp a                                          ; $449f: $bf
    or d                                          ; $44a0: $b2
    nop                                           ; $44a1: $00
    ld c, a                                       ; $44a2: $4f
    dec e                                         ; $44a3: $1d
    ld [bc], a                                    ; $44a4: $02
    and a                                         ; $44a5: $a7
    nop                                           ; $44a6: $00
    ld d, h                                       ; $44a7: $54
    xor d                                         ; $44a8: $aa
    xor d                                         ; $44a9: $aa
    nop                                           ; $44aa: $00
    push de                                       ; $44ab: $d5
    ld l, c                                       ; $44ac: $69
    cp $38                                        ; $44ad: $fe $38
    rst $00                                       ; $44af: $c7
    ld d, l                                       ; $44b0: $55
    ld [$0050], a                                 ; $44b1: $ea $50 $00
    rst $38                                       ; $44b4: $ff
    ld l, d                                       ; $44b5: $6a
    rst $38                                       ; $44b6: $ff
    ld a, a                                       ; $44b7: $7f
    rst $38                                       ; $44b8: $ff
    ld d, h                                       ; $44b9: $54
    xor e                                         ; $44ba: $ab
    ld [bc], a                                    ; $44bb: $02
    nop                                           ; $44bc: $00
    ld bc, $03d1                                  ; $44bd: $01 $d1 $03
    ld e, $e0                                     ; $44c0: $1e $e0
    and a                                         ; $44c2: $a7
    ld a, b                                       ; $44c3: $78
    cp l                                          ; $44c4: $bd
    nop                                           ; $44c5: $00
    ld a, a                                       ; $44c6: $7f
    nop                                           ; $44c7: $00
    rst $38                                       ; $44c8: $ff
    cp a                                          ; $44c9: $bf
    ret nz                                        ; $44ca: $c0

    ld [bc], a                                    ; $44cb: $02
    db $fd                                        ; $44cc: $fd
    ld h, b                                       ; $44cd: $60
    nop                                           ; $44ce: $00
    add e                                         ; $44cf: $83
    add hl, hl                                    ; $44d0: $29
    jp nc, $d7a9                                  ; $44d1: $d2 $a9 $d7

    nop                                           ; $44d4: $00
    rst $38                                       ; $44d5: $ff
    ld l, b                                       ; $44d6: $68
    nop                                           ; $44d7: $00
    add b                                         ; $44d8: $80
    dec [hl]                                      ; $44d9: $35
    ret nz                                        ; $44da: $c0

    sub a                                         ; $44db: $97
    add sp, $51                                   ; $44dc: $e8 $51
    cp $f8                                        ; $44de: $fe $f8
    nop                                           ; $44e0: $00
    rst $38                                       ; $44e1: $ff
    ld a, [bc]                                    ; $44e2: $0a
    push af                                       ; $44e3: $f5
    xor c                                         ; $44e4: $a9
    cp $07                                        ; $44e5: $fe $07
    ld hl, sp+$39                                 ; $44e7: $f8 $39
    nop                                           ; $44e9: $00
    nop                                           ; $44ea: $00
    ld c, b                                       ; $44eb: $48
    rla                                           ; $44ec: $17
    or h                                          ; $44ed: $b4
    dec bc                                        ; $44ee: $0b
    ld l, d                                       ; $44ef: $6a
    sub l                                         ; $44f0: $95
    dec e                                         ; $44f1: $1d
    nop                                           ; $44f2: $00
    ld [c], a                                     ; $44f3: $e2
    ld [$3b10], a                                 ; $44f4: $ea $10 $3b
    nop                                           ; $44f7: $00
    ld a, [c]                                     ; $44f8: $f2
    rrca                                          ; $44f9: $0f
    add hl, hl                                    ; $44fa: $29
    ld [bc], a                                    ; $44fb: $02
    rst $10                                       ; $44fc: $d7
    or a                                          ; $44fd: $b7
    ld c, b                                       ; $44fe: $48

Jump_093_44ff:
    adc l                                         ; $44ff: $8d
    ld [bc], a                                    ; $4500: $02
    add $90                                       ; $4501: $c6 $90
    nop                                           ; $4503: $00
    db $f4                                        ; $4504: $f4
    nop                                           ; $4505: $00
    nop                                           ; $4506: $00
    ld l, a                                       ; $4507: $6f
    add b                                         ; $4508: $80
    add l                                         ; $4509: $85
    ld a, [$fd6a]                                 ; $450a: $fa $6a $fd
    push de                                       ; $450d: $d5

jr_093_450e:
    nop                                           ; $450e: $00
    ld hl, sp+$47                                 ; $450f: $f8 $47
    cp b                                          ; $4511: $b8
    xor e                                         ; $4512: $ab
    ld d, h                                       ; $4513: $54
    adc e                                         ; $4514: $8b
    nop                                           ; $4515: $00
    cpl                                           ; $4516: $2f
    nop                                           ; $4517: $00
    nop                                           ; $4518: $00
    cp [hl]                                       ; $4519: $be
    ld b, c                                       ; $451a: $41
    xor d                                         ; $451b: $aa
    nop                                           ; $451c: $00
    push bc                                       ; $451d: $c5
    nop                                           ; $451e: $00
    ld e, l                                       ; $451f: $5d
    nop                                           ; $4520: $00
    ld [bc], a                                    ; $4521: $02
    or $0f                                        ; $4522: $f6 $0f
    ld e, h                                       ; $4524: $5c
    cp a                                          ; $4525: $bf
    and e                                         ; $4526: $a3
    ld e, h                                       ; $4527: $5c
    cp $00                                        ; $4528: $fe $00
    nop                                           ; $452a: $00
    and [hl]                                      ; $452b: $a6
    ld e, b                                       ; $452c: $58
    or e                                          ; $452d: $b3
    inc b                                         ; $452e: $04
    ld e, [hl]                                    ; $452f: $5e
    ld bc, $005b                                  ; $4530: $01 $5b $00
    and h                                         ; $4533: $a4
    sub h                                         ; $4534: $94
    ei                                            ; $4535: $fb
    xor c                                         ; $4536: $a9
    halt                                          ; $4537: $76
    ld c, a                                       ; $4538: $4f
    or b                                          ; $4539: $b0
    push af                                       ; $453a: $f5
    nop                                           ; $453b: $00
    nop                                           ; $453c: $00
    xor b                                         ; $453d: $a8
    nop                                           ; $453e: $00
    push de                                       ; $453f: $d5
    nop                                           ; $4540: $00
    ld l, d                                       ; $4541: $6a
    dec d                                         ; $4542: $15
    inc d                                         ; $4543: $14
    nop                                           ; $4544: $00

jr_093_4545:
    rst $38                                       ; $4545: $ff
    xor c                                         ; $4546: $a9
    cp $93                                        ; $4547: $fe $93
    ld a, h                                       ; $4549: $7c
    rst $10                                       ; $454a: $d7
    jr z, @+$3c                                   ; $454b: $28 $3a

    nop                                           ; $454d: $00
    rlca                                          ; $454e: $07
    ld a, d                                       ; $454f: $7a
    dec b                                         ; $4550: $05
    and h                                         ; $4551: $a4
    dec de                                        ; $4552: $1b
    ld [hl], l                                    ; $4553: $75
    adc a                                         ; $4554: $8f
    cp l                                          ; $4555: $bd
    nop                                           ; $4556: $00
    ld b, d                                       ; $4557: $42
    ld d, [hl]                                    ; $4558: $56
    xor c                                         ; $4559: $a9
    ldh a, [rP1]                                  ; $455a: $f0 $00
    ld [c], a                                     ; $455c: $e2
    nop                                           ; $455d: $00
    sub a                                         ; $455e: $97
    nop                                           ; $455f: $00
    add sp, -$29                                  ; $4560: $e8 $d7
    jr z, jr_093_450e                             ; $4562: $28 $aa

    db $fd                                        ; $4564: $fd
    ld l, c                                       ; $4565: $69
    or $54                                        ; $4566: $f6 $54
    nop                                           ; $4568: $00
    ei                                            ; $4569: $fb
    xor a                                         ; $456a: $af
    ld d, b                                       ; $456b: $50
    ld a, [hl-]                                   ; $456c: $3a
    nop                                           ; $456d: $00
    call $a800                                    ; $456e: $cd $00 $a8
    nop                                           ; $4571: $00
    ld d, a                                       ; $4572: $57
    ld d, c                                       ; $4573: $51
    nop                                           ; $4574: $00
    xor d                                         ; $4575: $aa
    ld b, b                                       ; $4576: $40
    ld [hl], l                                    ; $4577: $75
    add b                                         ; $4578: $80
    adc b                                         ; $4579: $88
    nop                                           ; $457a: $00
    ld d, e                                       ; $457b: $53
    ld h, [hl]                                    ; $457c: $66
    adc c                                         ; $457d: $89
    dec e                                         ; $457e: $1d
    ld [bc], a                                    ; $457f: $02

jr_093_4580:
    jr z, jr_093_4589                             ; $4580: $28 $07

    ld e, [hl]                                    ; $4582: $5e
    nop                                           ; $4583: $00
    and c                                         ; $4584: $a1
    ld h, l                                       ; $4585: $65
    ld a, [$55aa]                                 ; $4586: $fa $aa $55

jr_093_4589:
    dec a                                         ; $4589: $3d
    ld [bc], a                                    ; $458a: $02
    ld b, e                                       ; $458b: $43
    nop                                           ; $458c: $00
    add b                                         ; $458d: $80
    call $f400                                    ; $458e: $cd $00 $f4
    dec bc                                        ; $4591: $0b
    ld b, l                                       ; $4592: $45
    cp a                                          ; $4593: $bf
    sbc [hl]                                      ; $4594: $9e
    nop                                           ; $4595: $00
    ld a, a                                       ; $4596: $7f
    ld c, c                                       ; $4597: $49
    cp [hl]                                       ; $4598: $be
    xor [hl]                                      ; $4599: $ae
    ld e, a                                       ; $459a: $5f
    push de                                       ; $459b: $d5
    ld a, [hl+]                                   ; $459c: $2a
    ld l, $00                                     ; $459d: $2e $00
    ld bc, $0081                                  ; $459f: $01 $81 $00
    or d                                          ; $45a2: $b2
    ld b, c                                       ; $45a3: $41
    sub a                                         ; $45a4: $97
    add sp, $52                                   ; $45a5: $e8 $52
    inc b                                         ; $45a7: $04
    db $fd                                        ; $45a8: $fd
    ld h, a                                       ; $45a9: $67
    ld hl, sp-$4c                                 ; $45aa: $f8 $b4
    ret nz                                        ; $45ac: $c0

    ld a, [hl-]                                   ; $45ad: $3a
    ld bc, $7054                                  ; $45ae: $01 $54 $70
    nop                                           ; $45b1: $00
    nop                                           ; $45b2: $00
    cp h                                          ; $45b3: $bc
    ld b, b                                       ; $45b4: $40
    ld d, l                                       ; $45b5: $55
    xor d                                         ; $45b6: $aa
    sub h                                         ; $45b7: $94
    ld a, a                                       ; $45b8: $7f
    ld d, e                                       ; $45b9: $53
    nop                                           ; $45ba: $00
    xor a                                         ; $45bb: $af
    xor [hl]                                      ; $45bc: $ae
    ld d, c                                       ; $45bd: $51
    jr z, jr_093_4580                             ; $45be: $28 $c0

    push af                                       ; $45c0: $f5
    nop                                           ; $45c1: $00
    ld b, d                                       ; $45c2: $42
    jr nz, jr_093_4545                            ; $45c3: $20 $80

    db $eb                                        ; $45c5: $eb
    and b                                         ; $45c6: $a0
    ld de, $aa55                                  ; $45c7: $11 $55 $aa
    xor e                                         ; $45ca: $ab
    ld d, h                                       ; $45cb: $54
    sub [hl]                                      ; $45cc: $96
    nop                                           ; $45cd: $00
    nop                                           ; $45ce: $00
    ld l, e                                       ; $45cf: $6b
    nop                                           ; $45d0: $00
    ld [$5415], a                                 ; $45d1: $ea $15 $54
    xor e                                         ; $45d4: $ab
    cp a                                          ; $45d5: $bf
    ld bc, $5500                                  ; $45d6: $01 $00 $55
    nop                                           ; $45d9: $00
    ld b, l                                       ; $45da: $45
    cp d                                          ; $45db: $ba
    cp d                                          ; $45dc: $ba
    ld b, l                                       ; $45dd: $45
    sub h                                         ; $45de: $94
    ld [$d900], sp                                ; $45df: $08 $00 $d9
    ld h, $54                                     ; $45e2: $26 $54
    cp a                                          ; $45e4: $bf
    ld [hl+], a                                   ; $45e5: $22
    db $fd                                        ; $45e6: $fd
    push de                                       ; $45e7: $d5
    ld a, [hl+]                                   ; $45e8: $2a
    nop                                           ; $45e9: $00
    ld e, a                                       ; $45ea: $5f
    rst $38                                       ; $45eb: $ff
    xor a                                         ; $45ec: $af
    rst $38                                       ; $45ed: $ff
    sbc $ff                                       ; $45ee: $de $ff
    db $ed                                        ; $45f0: $ed
    cp $00                                        ; $45f1: $fe $00
    inc d                                         ; $45f3: $14
    rst $38                                       ; $45f4: $ff
    rst $30                                       ; $45f5: $f7
    rrca                                          ; $45f6: $0f
    dec de                                        ; $45f7: $1b
    rlca                                          ; $45f8: $07
    ld c, a                                       ; $45f9: $4f
    inc bc                                        ; $45fa: $03
    nop                                           ; $45fb: $00
    rst $28                                       ; $45fc: $ef
    rst $38                                       ; $45fd: $ff
    push de                                       ; $45fe: $d5
    rst $38                                       ; $45ff: $ff
    rst $28                                       ; $4600: $ef
    rst $38                                       ; $4601: $ff
    rst $38                                       ; $4602: $ff
    ld a, a                                       ; $4603: $7f
    nop                                           ; $4604: $00
    ld a, h                                       ; $4605: $7c
    rst $38                                       ; $4606: $ff
    di                                            ; $4607: $f3
    db $fc                                        ; $4608: $fc
    db $eb                                        ; $4609: $eb
    db $f4                                        ; $460a: $f4
    push hl                                       ; $460b: $e5
    ld a, [$c080]                                 ; $460c: $fa $80 $c0
    dec c                                         ; $460f: $0d
    pop af                                        ; $4610: $f1
    rst $38                                       ; $4611: $ff
    push af                                       ; $4612: $f5
    ei                                            ; $4613: $fb
    ld a, c                                       ; $4614: $79
    rst $38                                       ; $4615: $ff
    rst $18                                       ; $4616: $df
    ld [bc], a                                    ; $4617: $02
    ccf                                           ; $4618: $3f
    rst $28                                       ; $4619: $ef
    rra                                           ; $461a: $1f
    ld c, a                                       ; $461b: $4f
    cp a                                          ; $461c: $bf
    ei                                            ; $461d: $fb
    jr nz, jr_093_4620                            ; $461e: $20 $00

jr_093_4620:
    xor e                                         ; $4620: $ab
    jr nz, @+$01                                  ; $4621: $20 $ff

    rst $18                                       ; $4623: $df
    jp nz, $9d05                                  ; $4624: $c2 $05 $9d

    cp $1c                                        ; $4627: $fe $1c
    rst $38                                       ; $4629: $ff
    dec a                                         ; $462a: $3d
    ret nz                                        ; $462b: $c0

    rst $18                                       ; $462c: $df
    dec d                                         ; $462d: $15
    cp d                                          ; $462e: $ba
    inc b                                         ; $462f: $04
    rst $30                                       ; $4630: $f7
    ld h, e                                       ; $4631: $63
    rst $38                                       ; $4632: $ff
    ld a, a                                       ; $4633: $7f
    ccf                                           ; $4634: $3f
    cp a                                          ; $4635: $bf
    ld [bc], a                                    ; $4636: $02
    rra                                           ; $4637: $1f
    ld e, a                                       ; $4638: $5f
    cp a                                          ; $4639: $bf
    cp [hl]                                       ; $463a: $be
    rst $38                                       ; $463b: $ff
    ld e, l                                       ; $463c: $5d
    ld b, b                                       ; $463d: $40
    ld [$00ff], sp                                ; $463e: $08 $ff $00

jr_093_4641:
    ldh a, [rIE]                                  ; $4641: $f0 $ff
    push de                                       ; $4643: $d5
    ld [$c1be], a                                 ; $4644: $ea $be $c1
    dec c                                         ; $4647: $0d
    ld a, [c]                                     ; $4648: $f2
    inc b                                         ; $4649: $04
    rst $38                                       ; $464a: $ff
    rst $38                                       ; $464b: $ff
    ld h, e                                       ; $464c: $63
    rst $38                                       ; $464d: $ff
    and e                                         ; $464e: $a3
    ld c, b                                       ; $464f: $48
    ld [bc], a                                    ; $4650: $02
    cp $ff                                        ; $4651: $fe $ff
    inc bc                                        ; $4653: $03
    dec e                                         ; $4654: $1d
    cp $ac                                        ; $4655: $fe $ac
    ld e, a                                       ; $4657: $5f
    ld [hl], h                                    ; $4658: $74
    adc a                                         ; $4659: $8f
    add sp, $04                                   ; $465a: $e8 $04
    ld b, d                                       ; $465c: $42
    dec b                                         ; $465d: $05
    nop                                           ; $465e: $00
    rst $30                                       ; $465f: $f7
    rst $38                                       ; $4660: $ff
    ld a, [hl]                                    ; $4661: $7e
    rst $38                                       ; $4662: $ff
    dec sp                                        ; $4663: $3b
    db $fc                                        ; $4664: $fc
    ld l, $f0                                     ; $4665: $2e $f0
    nop                                           ; $4667: $00
    ld [hl], l                                    ; $4668: $75
    ret nz                                        ; $4669: $c0

    sbc e                                         ; $466a: $9b
    rst $38                                       ; $466b: $ff
    halt                                          ; $466c: $76
    adc a                                         ; $466d: $8f
    adc a                                         ; $466e: $8f
    inc bc                                        ; $466f: $03
    nop                                           ; $4670: $00
    push de                                       ; $4671: $d5
    inc bc                                        ; $4672: $03
    cp e                                          ; $4673: $bb
    ld bc, $01ef                                  ; $4674: $01 $ef $01
    cp a                                          ; $4677: $bf
    ld b, c                                       ; $4678: $41
    nop                                           ; $4679: $00
    ld d, l                                       ; $467a: $55
    xor e                                         ; $467b: $ab
    xor a                                         ; $467c: $af
    rst $18                                       ; $467d: $df
    push af                                       ; $467e: $f5
    rst $28                                       ; $467f: $ef
    cp d                                          ; $4680: $ba
    rst $20                                       ; $4681: $e7
    nop                                           ; $4682: $00
    ld [hl], a                                    ; $4683: $77
    and d                                         ; $4684: $a2
    db $eb                                        ; $4685: $eb
    ld [hl-], a                                   ; $4686: $32
    halt                                          ; $4687: $76
    xor e                                         ; $4688: $ab
    ld a, [hl+]                                   ; $4689: $2a
    rst $30                                       ; $468a: $f7
    nop                                           ; $468b: $00
    ld a, [c]                                     ; $468c: $f2
    rst $38                                       ; $468d: $ff
    sbc c                                         ; $468e: $99
    ld a, a                                       ; $468f: $7f
    ld a, [bc]                                    ; $4690: $0a
    db $fd                                        ; $4691: $fd
    ld e, b                                       ; $4692: $58
    rst $38                                       ; $4693: $ff
    ld b, b                                       ; $4694: $40
    xor b                                         ; $4695: $a8
    ret nz                                        ; $4696: $c0

    ld bc, $f8f7                                  ; $4697: $01 $f7 $f8
    db $ec                                        ; $469a: $ec
    ldh a, [$e6]                                  ; $469b: $f0 $e6
    ld hl, sp+$00                                 ; $469d: $f8 $00
    and $ff                                       ; $469f: $e6 $ff
    sub l                                         ; $46a1: $95
    db $eb                                        ; $46a2: $eb
    xor c                                         ; $46a3: $a9
    rst $10                                       ; $46a4: $d7
    add c                                         ; $46a5: $81
    rst $38                                       ; $46a6: $ff
    nop                                           ; $46a7: $00
    jp nc, Jump_093_7fff                          ; $46a8: $d2 $ff $7f

    db $fc                                        ; $46ab: $fc
    ld a, a                                       ; $46ac: $7f
    jr c, jr_093_4641                             ; $46ad: $38 $92

    inc a                                         ; $46af: $3c
    nop                                           ; $46b0: $00
    ld a, [hl+]                                   ; $46b1: $2a
    rst $10                                       ; $46b2: $d7
    inc bc                                        ; $46b3: $03
    cp $c3                                        ; $46b4: $fe $c3
    cp $74                                        ; $46b6: $fe $74
    rst $38                                       ; $46b8: $ff
    nop                                           ; $46b9: $00
    ld e, e                                       ; $46ba: $5b
    ccf                                           ; $46bb: $3f
    dec l                                         ; $46bc: $2d
    rra                                           ; $46bd: $1f
    rla                                           ; $46be: $17
    rrca                                          ; $46bf: $0f
    or a                                          ; $46c0: $b7
    rrca                                          ; $46c1: $0f
    nop                                           ; $46c2: $00
    xor [hl]                                      ; $46c3: $ae
    rst $18                                       ; $46c4: $df
    push af                                       ; $46c5: $f5
    adc a                                         ; $46c6: $8f
    rst $38                                       ; $46c7: $ff
    add a                                         ; $46c8: $87
    xor [hl]                                      ; $46c9: $ae
    rst $10                                       ; $46ca: $d7
    nop                                           ; $46cb: $00
    sub a                                         ; $46cc: $97
    db $ec                                        ; $46cd: $ec
    adc d                                         ; $46ce: $8a
    db $fc                                        ; $46cf: $fc
    rst $18                                       ; $46d0: $df
    ld hl, sp-$4a                                 ; $46d1: $f8 $b6
    ld hl, sp+$00                                 ; $46d3: $f8 $00
    inc de                                        ; $46d5: $13
    db $fc                                        ; $46d6: $fc
    ld l, l                                       ; $46d7: $6d
    sbc [hl]                                      ; $46d8: $9e
    or [hl]                                       ; $46d9: $b6
    ld c, a                                       ; $46da: $4f
    dec bc                                        ; $46db: $0b
    rst $30                                       ; $46dc: $f7
    nop                                           ; $46dd: $00
    inc bc                                        ; $46de: $03
    rst $38                                       ; $46df: $ff
    ld d, a                                       ; $46e0: $57
    rst $38                                       ; $46e1: $ff
    ld a, [$6fff]                                 ; $46e2: $fa $ff $6f
    sbc a                                         ; $46e5: $9f
    nop                                           ; $46e6: $00
    ld [hl], a                                    ; $46e7: $77
    jr jr_093_473d                                ; $46e8: $18 $53

    cp h                                          ; $46ea: $bc
    sbc l                                         ; $46eb: $9d
    ld a, d                                       ; $46ec: $7a
    ld a, d                                       ; $46ed: $7a
    db $fd                                        ; $46ee: $fd
    nop                                           ; $46ef: $00
    db $fc                                        ; $46f0: $fc
    rst $38                                       ; $46f1: $ff
    ld d, [hl]                                    ; $46f2: $56
    xor a                                         ; $46f3: $af
    dec sp                                        ; $46f4: $3b
    rst $00                                       ; $46f5: $c7
    rlca                                          ; $46f6: $07
    ei                                            ; $46f7: $fb
    nop                                           ; $46f8: $00
    or $0f                                        ; $46f9: $f6 $0f
    ld a, l                                       ; $46fb: $7d
    adc [hl]                                      ; $46fc: $8e
    xor a                                         ; $46fd: $af
    ld e, h                                       ; $46fe: $5c
    rra                                           ; $46ff: $1f
    db $fc                                        ; $4700: $fc
    nop                                           ; $4701: $00
    ld a, l                                       ; $4702: $7d
    cp $e4                                        ; $4703: $fe $e4
    rst $38                                       ; $4705: $ff
    cp d                                          ; $4706: $ba
    rst $00                                       ; $4707: $c7
    ld h, a                                       ; $4708: $67
    add e                                         ; $4709: $83
    nop                                           ; $470a: $00
    rst $18                                       ; $470b: $df
    or b                                          ; $470c: $b0
    ld [hl], l                                    ; $470d: $75
    sbc d                                         ; $470e: $9a
    ld d, d                                       ; $470f: $52
    cp l                                          ; $4710: $bd
    jr c, @+$01                                   ; $4711: $38 $ff

    nop                                           ; $4713: $00
    and [hl]                                      ; $4714: $a6
    rst $38                                       ; $4715: $ff
    reti                                          ; $4716: $d9


    rst $20                                       ; $4717: $e7
    cp [hl]                                       ; $4718: $be
    jp $837f                                      ; $4719: $c3 $7f $83


    nop                                           ; $471c: $00
    adc $07                                       ; $471d: $ce $07
    ld b, a                                       ; $471f: $47
    inc bc                                        ; $4720: $03
    xor l                                         ; $4721: $ad
    inc bc                                        ; $4722: $03
    rst $30                                       ; $4723: $f7
    ld bc, $ff44                                  ; $4724: $01 $44 $ff
    and $02                                       ; $4727: $e6 $02
    add hl, hl                                    ; $4729: $29
    rst $10                                       ; $472a: $d7
    ld bc, $00fc                                  ; $472b: $01 $fc $00
    ld d, [hl]                                    ; $472e: $56
    rst $38                                       ; $472f: $ff
    nop                                           ; $4730: $00
    cp l                                          ; $4731: $bd
    cp $ff                                        ; $4732: $fe $ff
    db $fc                                        ; $4734: $fc
    db $fd                                        ; $4735: $fd
    cp $9b                                        ; $4736: $fe $9b
    db $fc                                        ; $4738: $fc
    nop                                           ; $4739: $00
    add hl, bc                                    ; $473a: $09
    cp $88                                        ; $473b: $fe $88

jr_093_473d:
    rst $38                                       ; $473d: $ff
    and c                                         ; $473e: $a1
    inc bc                                        ; $473f: $03

jr_093_4740:
    ld d, a                                       ; $4740: $57
    add c                                         ; $4741: $81
    nop                                           ; $4742: $00
    rst $28                                       ; $4743: $ef
    ld bc, $837d                                  ; $4744: $01 $7d $83
    add hl, hl                                    ; $4747: $29
    rst $10                                       ; $4748: $d7
    ld d, e                                       ; $4749: $53
    xor a                                         ; $474a: $af
    nop                                           ; $474b: $00
    inc hl                                        ; $474c: $23
    rst $18                                       ; $474d: $df
    add a                                         ; $474e: $87
    rst $38                                       ; $474f: $ff
    xor a                                         ; $4750: $af
    ld d, e                                       ; $4751: $53
    ld d, d                                       ; $4752: $52
    xor a                                         ; $4753: $af
    nop                                           ; $4754: $00
    ld [hl+], a                                   ; $4755: $22
    rst $18                                       ; $4756: $df
    add [hl]                                      ; $4757: $86
    rst $38                                       ; $4758: $ff
    adc [hl]                                      ; $4759: $8e
    rst $38                                       ; $475a: $ff
    ld a, [c]                                     ; $475b: $f2
    rst $38                                       ; $475c: $ff
    jr c, jr_093_4740                             ; $475d: $38 $e1

    rst $38                                       ; $475f: $ff
    ld a, [hl+]                                   ; $4760: $2a
    dec b                                         ; $4761: $05
    ldh a, [rP1]                                  ; $4762: $f0 $00
    inc b                                         ; $4764: $04
    rrca                                          ; $4765: $0f
    ret nz                                        ; $4766: $c0

    rst $38                                       ; $4767: $ff
    add d                                         ; $4768: $82
    nop                                           ; $4769: $00
    db $fd                                        ; $476a: $fd
    rla                                           ; $476b: $17
    add sp, $0b                                   ; $476c: $e8 $0b
    db $f4                                        ; $476e: $f4
    ld c, l                                       ; $476f: $4d
    cp $bc                                        ; $4770: $fe $bc
    ld a, [bc]                                    ; $4772: $0a
    rst $38                                       ; $4773: $ff
    sub $ef                                       ; $4774: $d6 $ef
    add e                                         ; $4776: $83
    inc d                                         ; $4777: $14
    ld bc, $9455                                  ; $4778: $01 $55 $94
    ld [bc], a                                    ; $477b: $02
    or a                                          ; $477c: $b7
    jr @+$7a                                      ; $477d: $18 $78

    and $f9                                       ; $477f: $e6 $f9
    ld d, e                                       ; $4781: $53
    dec b                                         ; $4782: $05
    dec h                                         ; $4783: $25
    rlca                                          ; $4784: $07
    ld [$74f7], a                                 ; $4785: $ea $f7 $74
    ld [bc], a                                    ; $4788: $02
    ei                                            ; $4789: $fb
    cp d                                          ; $478a: $ba
    ld a, l                                       ; $478b: $7d
    dec a                                         ; $478c: $3d
    db $fc                                        ; $478d: $fc
    ld a, a                                       ; $478e: $7f
    inc d                                         ; $478f: $14
    rla                                           ; $4790: $17
    cp $00                                        ; $4791: $fe $00
    rst $38                                       ; $4793: $ff
    ld d, [hl]                                    ; $4794: $56
    rst $28                                       ; $4795: $ef
    cpl                                           ; $4796: $2f
    rst $18                                       ; $4797: $df
    ld e, a                                       ; $4798: $5f
    cp a                                          ; $4799: $bf
    cp a                                          ; $479a: $bf
    ld [bc], a                                    ; $479b: $02
    ccf                                           ; $479c: $3f
    and a                                         ; $479d: $a7
    ld e, a                                       ; $479e: $5f
    ld c, a                                       ; $479f: $4f
    cp a                                          ; $47a0: $bf
    rlca                                          ; $47a1: $07
    ld h, b                                       ; $47a2: $60
    ld b, $b9                                     ; $47a3: $06 $b9
    nop                                           ; $47a5: $00
    rst $38                                       ; $47a6: $ff
    ld [hl], e                                    ; $47a7: $73
    db $fd                                        ; $47a8: $fd
    add sp, -$01                                  ; $47a9: $e8 $ff
    db $fc                                        ; $47ab: $fc
    rst $38                                       ; $47ac: $ff
    ld [$8010], a                                 ; $47ad: $ea $10 $80
    ld a, a                                       ; $47b0: $7f
    add b                                         ; $47b1: $80
    sub $09                                       ; $47b2: $d6 $09
    xor d                                         ; $47b4: $aa
    push de                                       ; $47b5: $d5
    inc d                                         ; $47b6: $14
    db $eb                                        ; $47b7: $eb
    ld b, c                                       ; $47b8: $41
    pop bc                                        ; $47b9: $c1
    adc d                                         ; $47ba: $8a
    ld bc, $7ff8                                  ; $47bb: $01 $f8 $7f
    ld a, l                                       ; $47be: $7d
    cp $fe                                        ; $47bf: $fe $fe
    inc b                                         ; $47c1: $04
    ld b, $90                                     ; $47c2: $06 $90
    adc l                                         ; $47c4: $8d
    dec b                                         ; $47c5: $05
    rst $38                                       ; $47c6: $ff
    ld a, [hl]                                    ; $47c7: $7e
    and [hl]                                      ; $47c8: $a6
    ld bc, $7f9f                                  ; $47c9: $01 $9f $7f
    ccf                                           ; $47cc: $3f
    ld a, a                                       ; $47cd: $7f
    ld b, b                                       ; $47ce: $40
    ld a, a                                       ; $47cf: $7f
    and b                                         ; $47d0: $a0
    ld bc, $ff1e                                  ; $47d1: $01 $1e $ff
    ld a, $ff                                     ; $47d4: $3e $ff
    cp $df                                        ; $47d6: $fe $df
    nop                                           ; $47d8: $00
    sbc a                                         ; $47d9: $9f
    rst $38                                       ; $47da: $ff
    ld a, e                                       ; $47db: $7b
    add a                                         ; $47dc: $87
    sub $01                                       ; $47dd: $d6 $01
    and b                                         ; $47df: $a0
    nop                                           ; $47e0: $00
    ld [$00da], sp                                ; $47e1: $08 $da $00
    push af                                       ; $47e4: $f5
    nop                                           ; $47e5: $00
    or b                                          ; $47e6: $b0
    inc bc                                        ; $47e7: $03
    ld bc, $02fd                                  ; $47e8: $01 $fd $02
    nop                                           ; $47eb: $00
    db $dd                                        ; $47ec: $dd
    cp $fb                                        ; $47ed: $fe $fb
    db $fc                                        ; $47ef: $fc
    di                                            ; $47f0: $f3
    ld a, h                                       ; $47f1: $7c
    ld [hl], l                                    ; $47f2: $75
    ld a, [hl-]                                   ; $47f3: $3a
    nop                                           ; $47f4: $00
    jp c, $d535                                   ; $47f5: $da $35 $d5

    ld a, [hl-]                                   ; $47f8: $3a
    sbc b                                         ; $47f9: $98
    ld a, a                                       ; $47fa: $7f
    inc e                                         ; $47fb: $1c
    rst $38                                       ; $47fc: $ff
    ld bc, $fb7d                                  ; $47fd: $01 $7d $fb
    ei                                            ; $4800: $fb
    ei                                            ; $4801: $fb
    pop af                                        ; $4802: $f1
    ei                                            ; $4803: $fb
    rst $38                                       ; $4804: $ff
    or $01                                        ; $4805: $f6 $01
    nop                                           ; $4807: $00
    add b                                         ; $4808: $80
    rst $38                                       ; $4809: $ff
    ld a, a                                       ; $480a: $7f
    add b                                         ; $480b: $80
    add b                                         ; $480c: $80
    nop                                           ; $480d: $00
    cp a                                          ; $480e: $bf
    rst $18                                       ; $480f: $df
    ld bc, $dfff                                  ; $4810: $01 $ff $df
    adc a                                         ; $4813: $8f
    rst $18                                       ; $4814: $df
    rst $38                                       ; $4815: $ff
    rst $38                                       ; $4816: $ff
    ld d, h                                       ; $4817: $54
    inc b                                         ; $4818: $04
    inc b                                         ; $4819: $04
    nop                                           ; $481a: $00
    cp $01                                        ; $481b: $fe $01
    ld bc, $ba00                                  ; $481d: $01 $00 $ba
    ld b, l                                       ; $4820: $45
    ld d, b                                       ; $4821: $50
    xor a                                         ; $4822: $af
    nop                                           ; $4823: $00
    dec b                                         ; $4824: $05
    rst $38                                       ; $4825: $ff
    dec bc                                        ; $4826: $0b
    rst $38                                       ; $4827: $ff
    xor l                                         ; $4828: $ad
    cp $76                                        ; $4829: $fe $76
    ld hl, sp+$00                                 ; $482b: $f8 $00
    push hl                                       ; $482d: $e5
    ldh a, [$7e]                                  ; $482e: $f0 $7e
    ldh a, [$5f]                                  ; $4830: $f0 $5f
    rst $38                                       ; $4832: $ff
    xor c                                         ; $4833: $a9
    rst $30                                       ; $4834: $f7
    nop                                           ; $4835: $00
    ld e, l                                       ; $4836: $5d
    db $e3                                        ; $4837: $e3
    set 6, l                                      ; $4838: $cb $f5
    and l                                         ; $483a: $a5
    ld a, e                                       ; $483b: $7b
    sub e                                         ; $483c: $93
    ccf                                           ; $483d: $3f
    nop                                           ; $483e: $00
    ccf                                           ; $483f: $3f
    rra                                           ; $4840: $1f
    xor $1f                                       ; $4841: $ee $1f
    inc d                                         ; $4843: $14
    db $eb                                        ; $4844: $eb
    and c                                         ; $4845: $a1
    ld e, a                                       ; $4846: $5f
    ld b, b                                       ; $4847: $40
    inc bc                                        ; $4848: $03
    inc d                                         ; $4849: $14
    ld bc, $fcaf                                  ; $484a: $01 $af $fc
    rst $38                                       ; $484d: $ff
    ld hl, sp-$0a                                 ; $484e: $f8 $f6
    ld hl, sp+$00                                 ; $4850: $f8 $00
    ld [hl], e                                    ; $4852: $73
    db $fc                                        ; $4853: $fc
    ld sp, hl                                     ; $4854: $f9
    cp $78                                        ; $4855: $fe $78
    rst $38                                       ; $4857: $ff
    adc h                                         ; $4858: $8c
    rst $38                                       ; $4859: $ff
    nop                                           ; $485a: $00
    ld a, [$dd07]                                 ; $485b: $fa $07 $dd
    inc bc                                        ; $485e: $03
    daa                                           ; $485f: $27
    ld bc, $018a                                  ; $4860: $01 $8a $01
    nop                                           ; $4863: $00
    db $db                                        ; $4864: $db
    nop                                           ; $4865: $00
    and l                                         ; $4866: $a5
    ld a, d                                       ; $4867: $7a
    or d                                          ; $4868: $b2
    ld a, l                                       ; $4869: $7d
    ld a, [hl-]                                   ; $486a: $3a
    rst $38                                       ; $486b: $ff
    nop                                           ; $486c: $00
    ld b, a                                       ; $486d: $47
    rst $38                                       ; $486e: $ff
    or e                                          ; $486f: $b3
    rst $08                                       ; $4870: $cf
    dec de                                        ; $4871: $1b
    rst $20                                       ; $4872: $e7
    ld [hl+], a                                   ; $4873: $22
    rst $18                                       ; $4874: $df
    ld bc, $ff82                                  ; $4875: $01 $82 $ff
    call $9c3e                                    ; $4878: $cd $3e $9c
    ld a, a                                       ; $487b: $7f
    cp [hl]                                       ; $487c: $be
    stop                                          ; $487d: $10 $00
    nop                                           ; $487f: $00
    sub c                                         ; $4880: $91
    rst $28                                       ; $4881: $ef
    inc c                                         ; $4882: $0c
    di                                            ; $4883: $f3
    ld h, $d9                                     ; $4884: $26 $d9
    ld c, d                                       ; $4886: $4a
    or l                                          ; $4887: $b5
    nop                                           ; $4888: $00
    rst $38                                       ; $4889: $ff
    rst $38                                       ; $488a: $ff
    cp e                                          ; $488b: $bb
    rst $00                                       ; $488c: $c7
    push de                                       ; $488d: $d5
    inc bc                                        ; $488e: $03
    ld b, $01                                     ; $488f: $06 $01
    nop                                           ; $4891: $00
    xor e                                         ; $4892: $ab
    nop                                           ; $4893: $00
    or $01                                        ; $4894: $f6 $01
    ld e, [hl]                                    ; $4896: $5e
    and c                                         ; $4897: $a1
    dec hl                                        ; $4898: $2b
    push de                                       ; $4899: $d5
    nop                                           ; $489a: $00
    sbc l                                         ; $489b: $9d
    db $e3                                        ; $489c: $e3
    add l                                         ; $489d: $85
    ei                                            ; $489e: $fb
    xor d                                         ; $489f: $aa
    rst $10                                       ; $48a0: $d7
    rst $00                                       ; $48a1: $c7
    cp $00                                        ; $48a2: $fe $00
    cp a                                          ; $48a4: $bf
    cp $ea                                        ; $48a5: $fe $ea
    rst $30                                       ; $48a7: $f7
    sub $e3                                       ; $48a8: $d6 $e3
    ld [c], a                                     ; $48aa: $e2
    jp $0101                                      ; $48ab: $c3 $01 $01


    cp $80                                        ; $48ae: $fe $80
    rst $38                                       ; $48b0: $ff
    ld d, c                                       ; $48b1: $51
    cp $aa                                        ; $48b2: $fe $aa
    sub [hl]                                      ; $48b4: $96
    ld [bc], a                                    ; $48b5: $02
    ld b, b                                       ; $48b6: $40
    ei                                            ; $48b7: $fb
    call nz, $9503                                ; $48b8: $c4 $03 $95
    rst $38                                       ; $48bb: $ff
    dec l                                         ; $48bc: $2d
    ldh a, [$be]                                  ; $48bd: $f0 $be

jr_093_48bf:
    ld h, b                                       ; $48bf: $60
    nop                                           ; $48c0: $00
    cpl                                           ; $48c1: $2f
    ldh a, [$a5]                                  ; $48c2: $f0 $a5
    ld a, [$fd72]                                 ; $48c4: $fa $72 $fd
    ret c                                         ; $48c7: $d8

    rst $38                                       ; $48c8: $ff
    nop                                           ; $48c9: $00
    xor $ff                                       ; $48ca: $ee $ff
    ld b, c                                       ; $48cc: $41
    rst $38                                       ; $48cd: $ff
    ld d, l                                       ; $48ce: $55
    xor e                                         ; $48cf: $ab
    ld hl, $18df                                  ; $48d0: $21 $df $18
    add e                                         ; $48d3: $83
    rst $38                                       ; $48d4: $ff
    ld b, l                                       ; $48d5: $45
    sub h                                         ; $48d6: $94
    ld [de], a                                    ; $48d7: $12
    ld b, [hl]                                    ; $48d8: $46
    ld bc, $b7ff                                  ; $48d9: $01 $ff $b7
    jp $af00                                      ; $48dc: $c3 $00 $af


    jp $a3d6                                      ; $48df: $c3 $d6 $a3


    xor e                                         ; $48e2: $ab
    rst $10                                       ; $48e3: $d7
    sub e                                         ; $48e4: $93
    rst $28                                       ; $48e5: $ef
    nop                                           ; $48e6: $00
    ld b, a                                       ; $48e7: $47
    rst $38                                       ; $48e8: $ff
    cp a                                          ; $48e9: $bf
    rst $38                                       ; $48ea: $ff
    ld c, d                                       ; $48eb: $4a
    rst $38                                       ; $48ec: $ff
    ld d, l                                       ; $48ed: $55
    xor d                                         ; $48ee: $aa
    nop                                           ; $48ef: $00
    cp [hl]                                       ; $48f0: $be
    ld b, c                                       ; $48f1: $41
    ret                                           ; $48f2: $c9


    ld a, $34                                     ; $48f3: $3e $34
    rst $38                                       ; $48f5: $ff
    adc d                                         ; $48f6: $8a
    ld a, a                                       ; $48f7: $7f
    nop                                           ; $48f8: $00
    ld d, h                                       ; $48f9: $54
    xor a                                         ; $48fa: $af
    dec hl                                        ; $48fb: $2b
    call nc, $956a                                ; $48fc: $d4 $6a $95
    push de                                       ; $48ff: $d5
    ld a, [hl+]                                   ; $4900: $2a
    nop                                           ; $4901: $00
    xor e                                         ; $4902: $ab
    ld d, h                                       ; $4903: $54
    ld [hl], c                                    ; $4904: $71
    adc [hl]                                      ; $4905: $8e
    add sp, $17                                   ; $4906: $e8 $17
    sub h                                         ; $4908: $94
    db $eb                                        ; $4909: $eb
    nop                                           ; $490a: $00
    xor d                                         ; $490b: $aa
    ld d, l                                       ; $490c: $55
    ld e, l                                       ; $490d: $5d
    and d                                         ; $490e: $a2
    ld [$4d15], a                                 ; $490f: $ea $15 $4d
    cp a                                          ; $4912: $bf
    jr nz, jr_093_48bf                            ; $4913: $20 $aa

    ld d, a                                       ; $4915: $57
    ld d, b                                       ; $4916: $50
    inc bc                                        ; $4917: $03
    pop de                                        ; $4918: $d1
    add c                                         ; $4919: $81
    ld a, [hl]                                    ; $491a: $7e
    or d                                          ; $491b: $b2
    ld c, l                                       ; $491c: $4d
    add h                                         ; $491d: $84
    ld d, b                                       ; $491e: $50
    dec bc                                        ; $491f: $0b
    rst $20                                       ; $4920: $e7
    ld e, b                                       ; $4921: $58
    or h                                          ; $4922: $b4
    bit 2, b                                      ; $4923: $cb $50
    dec bc                                        ; $4925: $0b
    ldh a, [rIF]                                  ; $4926: $f0 $0f
    nop                                           ; $4928: $00
    cp h                                          ; $4929: $bc
    ld b, e                                       ; $492a: $43
    push de                                       ; $492b: $d5
    ld a, [hl+]                                   ; $492c: $2a
    sub h                                         ; $492d: $94
    ld a, a                                       ; $492e: $7f
    add l                                         ; $492f: $85
    ld a, d                                       ; $4930: $7a
    ld [hl+], a                                   ; $4931: $22
    dec [hl]                                      ; $4932: $35
    jp z, Jump_000_15c0                           ; $4933: $ca $c0 $15

    adc d                                         ; $4936: $8a
    ld e, [hl]                                    ; $4937: $5e
    and c                                         ; $4938: $a1
    ret nz                                        ; $4939: $c0

    dec c                                         ; $493a: $0d
    sbc e                                         ; $493b: $9b
    nop                                           ; $493c: $00
    ld [hl], h                                    ; $493d: $74
    ld a, b                                       ; $493e: $78
    add a                                         ; $493f: $87
    inc [hl]                                      ; $4940: $34
    ld hl, sp+$6b                                 ; $4941: $f8 $6b
    db $fc                                        ; $4943: $fc
    ld e, [hl]                                    ; $4944: $5e
    inc h                                         ; $4945: $24
    xor a                                         ; $4946: $af
    ld hl, sp-$62                                 ; $4947: $f8 $9e
    inc bc                                        ; $4949: $03
    ld h, h                                       ; $494a: $64
    ei                                            ; $494b: $fb
    ld h, b                                       ; $494c: $60
    inc de                                        ; $494d: $13
    ld l, c                                       ; $494e: $69
    ld l, e                                       ; $494f: $6b
    ld b, e                                       ; $4950: $43
    sub h                                         ; $4951: $94
    ld h, b                                       ; $4952: $60
    dec bc                                        ; $4953: $0b
    cp [hl]                                       ; $4954: $be
    ld b, c                                       ; $4955: $41
    ld d, l                                       ; $4956: $55
    xor d                                         ; $4957: $aa
    ld h, b                                       ; $4958: $60
    inc de                                        ; $4959: $13
    ld d, d                                       ; $495a: $52
    nop                                           ; $495b: $00
    nop                                           ; $495c: $00
    ld e, c                                       ; $495d: $59
    and [hl]                                      ; $495e: $a6
    ld d, h                                       ; $495f: $54
    rst $38                                       ; $4960: $ff
    and d                                         ; $4961: $a2
    ld a, l                                       ; $4962: $7d
    push de                                       ; $4963: $d5
    ld a, [hl+]                                   ; $4964: $2a
    add b                                         ; $4965: $80
    ldh [$15], a                                  ; $4966: $e0 $15
    adc d                                         ; $4968: $8a
    ld l, $d1                                     ; $4969: $2e $d1
    pop de                                        ; $496b: $d1
    ld l, $1b                                     ; $496c: $2e $1b
    db $e4                                        ; $496e: $e4
    add b                                         ; $496f: $80
    ldh [$0d], a                                  ; $4970: $e0 $0d
    ld l, d                                       ; $4972: $6a
    push de                                       ; $4973: $d5
    sub a                                         ; $4974: $97
    add sp, $7b                                   ; $4975: $e8 $7b
    add h                                         ; $4977: $84
    and a                                         ; $4978: $a7
    db $10                                        ; $4979: $10
    ld e, b                                       ; $497a: $58
    ld l, e                                       ; $497b: $6b
    sub h                                         ; $497c: $94
    ldh [rNR33], a                                ; $497d: $e0 $1d
    ld [hl], l                                    ; $497f: $75
    ld a, [hl-]                                   ; $4980: $3a
    inc de                                        ; $4981: $13
    inc a                                         ; $4982: $3c
    ld bc, $1f78                                  ; $4983: $01 $78 $1f
    call nc, $ba3f                                ; $4986: $d4 $3f $ba
    ld a, a                                       ; $4989: $7f
    ld e, l                                       ; $498a: $5d
    or b                                          ; $498b: $b0
    nop                                           ; $498c: $00
    nop                                           ; $498d: $00
    ld d, h                                       ; $498e: $54
    rst $38                                       ; $498f: $ff
    rst $38                                       ; $4990: $ff
    nop                                           ; $4991: $00
    ld [hl], h                                    ; $4992: $74
    adc e                                         ; $4993: $8b
    xor c                                         ; $4994: $a9
    ld d, a                                       ; $4995: $57
    dec d                                         ; $4996: $15
    ld d, e                                       ; $4997: $53
    xor a                                         ; $4998: $af
    ld a, [bc]                                    ; $4999: $0a
    ld l, b                                       ; $499a: $68
    ld [bc], a                                    ; $499b: $02
    db $fd                                        ; $499c: $fd
    or d                                          ; $499d: $b2
    ld [bc], a                                    ; $499e: $02
    push bc                                       ; $499f: $c5
    ld l, d                                       ; $49a0: $6a
    inc bc                                        ; $49a1: $03
    ld bc, $ff87                                  ; $49a2: $01 $87 $ff
    ld a, [hl+]                                   ; $49a5: $2a
    rst $10                                       ; $49a6: $d7
    inc de                                        ; $49a7: $13
    rst $28                                       ; $49a8: $ef
    ld hl, $0232                                  ; $49a9: $21 $32 $02
    nop                                           ; $49ac: $00
    xor d                                         ; $49ad: $aa
    rst $38                                       ; $49ae: $ff
    inc b                                         ; $49af: $04
    ei                                            ; $49b0: $fb
    nop                                           ; $49b1: $00
    rst $38                                       ; $49b2: $ff
    ld bc, $52ff                                  ; $49b3: $01 $ff $52
    adc e                                         ; $49b6: $8b
    add [hl]                                      ; $49b7: $86
    ld [bc], a                                    ; $49b8: $02
    db $ec                                        ; $49b9: $ec
    ret nc                                        ; $49ba: $d0

    ld [bc], a                                    ; $49bb: $02
    ret nc                                        ; $49bc: $d0

    rst $38                                       ; $49bd: $ff
    ld l, h                                       ; $49be: $6c
    ld [$406a], sp                                ; $49bf: $08 $6a $40
    sub l                                         ; $49c2: $95
    ld h, b                                       ; $49c3: $60
    inc e                                         ; $49c4: $1c
    sub $29                                       ; $49c5: $d6 $29
    ld a, [hl-]                                   ; $49c7: $3a

jr_093_49c8:
    rst $00                                       ; $49c8: $c7
    ld a, d                                       ; $49c9: $7a
    add l                                         ; $49ca: $85
    jr nz, @-$5a                                  ; $49cb: $20 $a4

    ld e, e                                       ; $49cd: $5b
    ld h, b                                       ; $49ce: $60
    inc c                                         ; $49cf: $0c
    ld e, a                                       ; $49d0: $5f
    and b                                         ; $49d1: $a0
    ret nz                                        ; $49d2: $c0

    ccf                                           ; $49d3: $3f
    jp z, $3404                                   ; $49d4: $ca $04 $34

    sub l                                         ; $49d7: $95
    ld a, d                                       ; $49d8: $7a
    rlca                                          ; $49d9: $07
    ld hl, sp+$60                                 ; $49da: $f8 $60
    inc l                                         ; $49dc: $2c
    ld a, d                                       ; $49dd: $7a
    add l                                         ; $49de: $85
    ld [bc], a                                    ; $49df: $02
    cp l                                          ; $49e0: $bd
    ld b, d                                       ; $49e1: $42
    add hl, hl                                    ; $49e2: $29
    ld d, [hl]                                    ; $49e3: $56
    ld d, c                                       ; $49e4: $51
    xor [hl]                                      ; $49e5: $ae
    call z, $8808                                 ; $49e6: $cc $08 $88
    nop                                           ; $49e9: $00
    ld [hl], a                                    ; $49ea: $77
    ld h, [hl]                                    ; $49eb: $66
    sbc c                                         ; $49ec: $99
    db $dd                                        ; $49ed: $dd
    ld [hl+], a                                   ; $49ee: $22
    jr z, jr_093_49c8                             ; $49ef: $28 $d7

    ld e, [hl]                                    ; $49f1: $5e
    nop                                           ; $49f2: $00
    and c                                         ; $49f3: $a1
    ret nz                                        ; $49f4: $c0

    ccf                                           ; $49f5: $3f
    xor h                                         ; $49f6: $ac
    ld d, e                                       ; $49f7: $53
    ld d, h                                       ; $49f8: $54
    dec sp                                        ; $49f9: $3b
    ld l, c                                       ; $49fa: $69
    jr nz, jr_093_4a1c                            ; $49fb: $20 $1f

    sbc l                                         ; $49fd: $9d
    db $fc                                        ; $49fe: $fc
    inc b                                         ; $49ff: $04
    ld d, c                                       ; $4a00: $51
    add b                                         ; $4a01: $80
    cp d                                          ; $4a02: $ba
    ret nz                                        ; $4a03: $c0

    db $dd                                        ; $4a04: $dd
    nop                                           ; $4a05: $00
    ccf                                           ; $4a06: $3f
    nop                                           ; $4a07: $00
    rst $38                                       ; $4a08: $ff
    xor b                                         ; $4a09: $a8
    rst $10                                       ; $4a0a: $d7
    ld d, h                                       ; $4a0b: $54
    ei                                            ; $4a0c: $fb
    jp hl                                         ; $4a0d: $e9


    nop                                           ; $4a0e: $00
    rst $38                                       ; $4a0f: $ff
    db $fd                                        ; $4a10: $fd
    ld a, a                                       ; $4a11: $7f
    ld a, [hl+]                                   ; $4a12: $2a

jr_093_4a13:
    push de                                       ; $4a13: $d5
    sbc h                                         ; $4a14: $9c
    ld h, b                                       ; $4a15: $60
    ccf                                           ; $4a16: $3f
    nop                                           ; $4a17: $00
    ret nz                                        ; $4a18: $c0

    ld [bc], a                                    ; $4a19: $02
    rst $38                                       ; $4a1a: $ff
    add l                                         ; $4a1b: $85

jr_093_4a1c:
    ld [bc], a                                    ; $4a1c: $02
    ld h, b                                       ; $4a1d: $60
    add e                                         ; $4a1e: $83
    add hl, sp                                    ; $4a1f: $39
    nop                                           ; $4a20: $00
    jp nz, $fcf3                                  ; $4a21: $c2 $f3 $fc

    cp a                                          ; $4a24: $bf
    ld b, b                                       ; $4a25: $40
    or [hl]                                       ; $4a26: $b6
    ld c, c                                       ; $4a27: $49
    rst $10                                       ; $4a28: $d7
    jr nz, jr_093_4a13                            ; $4a29: $20 $e8

    db $ec                                        ; $4a2b: $ec
    ld e, $06                                     ; $4a2c: $1e $06
    pop af                                        ; $4a2e: $f1
    ld c, $e4                                     ; $4a2f: $0e $e4
    rra                                           ; $4a31: $1f
    ld [hl], a                                    ; $4a32: $77
    nop                                           ; $4a33: $00
    adc a                                         ; $4a34: $8f
    ld hl, sp+$07                                 ; $4a35: $f8 $07
    ld c, e                                       ; $4a37: $4b
    or h                                          ; $4a38: $b4
    ld c, e                                       ; $4a39: $4b
    db $f4                                        ; $4a3a: $f4
    ld sp, hl                                     ; $4a3b: $f9
    nop                                           ; $4a3c: $00
    ld a, [hl]                                    ; $4a3d: $7e
    ld d, h                                       ; $4a3e: $54
    xor e                                         ; $4a3f: $ab
    ld c, e                                       ; $4a40: $4b
    inc b                                         ; $4a41: $04
    halt                                          ; $4a42: $76
    add c                                         ; $4a43: $81
    ld d, e                                       ; $4a44: $53
    nop                                           ; $4a45: $00
    db $fc                                        ; $4a46: $fc
    rlca                                          ; $4a47: $07
    ld hl, sp-$01                                 ; $4a48: $f8 $ff
    nop                                           ; $4a4a: $00
    or l                                          ; $4a4b: $b5
    ld c, d                                       ; $4a4c: $4a
    ld a, a                                       ; $4a4d: $7f
    nop                                           ; $4a4e: $00
    add b                                         ; $4a4f: $80
    sub [hl]                                      ; $4a50: $96
    ld l, c                                       ; $4a51: $69
    ei                                            ; $4a52: $fb
    inc b                                         ; $4a53: $04
    ld [$d415], a                                 ; $4a54: $ea $15 $d4
    ld b, d                                       ; $4a57: $42
    dec hl                                        ; $4a58: $2b
    db $10                                        ; $4a59: $10
    add hl, bc                                    ; $4a5a: $09
    sub d                                         ; $4a5b: $92
    ld l, l                                       ; $4a5c: $6d
    ld d, h                                       ; $4a5d: $54
    xor e                                         ; $4a5e: $ab
    add b                                         ; $4a5f: $80
    ld d, $bd                                     ; $4a60: $16 $bd
    inc c                                         ; $4a62: $0c
    ld l, e                                       ; $4a63: $6b
    sub h                                         ; $4a64: $94
    or l                                          ; $4a65: $b5
    ld c, d                                       ; $4a66: $4a
    add b                                         ; $4a67: $80
    ld c, $d0                                     ; $4a68: $0e $d0
    inc b                                         ; $4a6a: $04
    jp nz, Jump_000_1043                          ; $4a6b: $c2 $43 $10

    cp h                                          ; $4a6e: $bc
    call $d032                                    ; $4a6f: $cd $32 $d0
    inc e                                         ; $4a72: $1c
    ld l, e                                       ; $4a73: $6b
    call nc, $ea95                                ; $4a74: $d4 $95 $ea
    ld c, $72                                     ; $4a77: $0e $72
    adc l                                         ; $4a79: $8d
    and c                                         ; $4a7a: $a1
    ld e, [hl]                                    ; $4a7b: $5e
    db $10                                        ; $4a7c: $10
    add hl, hl                                    ; $4a7d: $29
    or d                                          ; $4a7e: $b2
    inc c                                         ; $4a7f: $0c
    ld [hl], b                                    ; $4a80: $70
    ld [hl], $7a                                  ; $4a81: $36 $7a
    jr nz, jr_093_4ac7                            ; $4a83: $20 $42

    cp l                                          ; $4a85: $bd
    ret nc                                        ; $4a86: $d0

    inc d                                         ; $4a87: $14
    rst $10                                       ; $4a88: $d7
    push af                                       ; $4a89: $f5
    ld a, [bc]                                    ; $4a8a: $0a
    ld b, d                                       ; $4a8b: $42
    cp l                                          ; $4a8c: $bd
    ld bc, $14eb                                  ; $4a8d: $01 $eb $14
    cp $01                                        ; $4a90: $fe $01
    xor a                                         ; $4a92: $af
    ld d, b                                       ; $4a93: $50
    pop de                                        ; $4a94: $d1
    jp z, $0105                                   ; $4a95: $ca $05 $01

    or b                                          ; $4a98: $b0
    ld a, a                                       ; $4a99: $7f
    dec h                                         ; $4a9a: $25
    ld a, [$ff28]                                 ; $4a9b: $fa $28 $ff
    ld [hl], l                                    ; $4a9e: $75
    add h                                         ; $4a9f: $84
    inc b                                         ; $4aa0: $04
    nop                                           ; $4aa1: $00
    rst $38                                       ; $4aa2: $ff
    rst $38                                       ; $4aa3: $ff
    cp h                                          ; $4aa4: $bc
    ld b, e                                       ; $4aa5: $43
    ld c, d                                       ; $4aa6: $4a
    cp l                                          ; $4aa7: $bd
    xor d                                         ; $4aa8: $aa
    ld d, a                                       ; $4aa9: $57
    ld a, [bc]                                    ; $4aaa: $0a
    halt                                          ; $4aab: $76
    adc c                                         ; $4aac: $89
    cp d                                          ; $4aad: $ba
    ld b, l                                       ; $4aae: $45
    ld b, b                                       ; $4aaf: $40
    ld h, $91                                     ; $4ab0: $26 $91
    ld b, b                                       ; $4ab2: $40
    ld d, $57                                     ; $4ab3: $16 $57
    inc c                                         ; $4ab5: $0c
    dec b                                         ; $4ab6: $05
    ld a, [$b14e]                                 ; $4ab7: $fa $4e $b1
    ld b, b                                       ; $4aba: $40
    ld c, $40                                     ; $4abb: $0e $40

jr_093_4abd:
    daa                                           ; $4abd: $27
    db $e4                                        ; $4abe: $e4
    ld h, h                                       ; $4abf: $64
    db $10                                        ; $4ac0: $10
    sbc e                                         ; $4ac1: $9b
    sub d                                         ; $4ac2: $92
    ld l, l                                       ; $4ac3: $6d
    ld b, b                                       ; $4ac4: $40
    ld b, a                                       ; $4ac5: $47
    and l                                         ; $4ac6: $a5

jr_093_4ac7:
    xor e                                         ; $4ac7: $ab
    ld d, h                                       ; $4ac8: $54
    ld sp, hl                                     ; $4ac9: $f9
    nop                                           ; $4aca: $00
    ld b, $f2                                     ; $4acb: $06 $f2
    dec c                                         ; $4acd: $0d
    cp d                                          ; $4ace: $ba
    ld b, a                                       ; $4acf: $47
    ld hl, sp+$07                                 ; $4ad0: $f8 $07
    ld d, l                                       ; $4ad2: $55
    inc d                                         ; $4ad3: $14
    xor d                                         ; $4ad4: $aa
    ld a, [de]                                    ; $4ad5: $1a
    push hl                                       ; $4ad6: $e5
    ld b, b                                       ; $4ad7: $40
    ld b, $a6                                     ; $4ad8: $06 $a6
    ld b, b                                       ; $4ada: $40
    ld c, $ea                                     ; $4adb: $0e $ea
    dec d                                         ; $4add: $15
    add b                                         ; $4ade: $80
    ld b, b                                       ; $4adf: $40
    ld h, $e2                                     ; $4ae0: $26 $e2
    and a                                         ; $4ae2: $a7
    ld e, b                                       ; $4ae3: $58
    ld d, h                                       ; $4ae4: $54
    xor e                                         ; $4ae5: $ab
    xor d                                         ; $4ae6: $aa
    push de                                       ; $4ae7: $d5
    ld [bc], a                                    ; $4ae8: $02
    ld b, $f9                                     ; $4ae9: $06 $f9
    cp c                                          ; $4aeb: $b9
    add $51                                       ; $4aec: $c6 $51
    xor [hl]                                      ; $4aee: $ae
    ld h, b                                       ; $4aef: $60
    rlca                                          ; $4af0: $07
    xor c                                         ; $4af1: $a9
    nop                                           ; $4af2: $00
    and l                                         ; $4af3: $a5
    ld e, d                                       ; $4af4: $5a
    ld e, b                                       ; $4af5: $58
    and a                                         ; $4af6: $a7
    xor a                                         ; $4af7: $af
    ld d, c                                       ; $4af8: $51
    and d                                         ; $4af9: $a2
    ld bc, $6080                                  ; $4afa: $01 $80 $60
    rrca                                          ; $4afd: $0f
    rst $10                                       ; $4afe: $d7
    jr z, jr_093_4abd                             ; $4aff: $28 $bc

    ld b, e                                       ; $4b01: $43
    ld a, c                                       ; $4b02: $79
    add [hl]                                      ; $4b03: $86
    xor [hl]                                      ; $4b04: $ae
    nop                                           ; $4b05: $00
    ld d, c                                       ; $4b06: $51
    ld d, h                                       ; $4b07: $54
    db $eb                                        ; $4b08: $eb
    xor c                                         ; $4b09: $a9
    cp $bd                                        ; $4b0a: $fe $bd
    ld b, d                                       ; $4b0c: $42
    xor d                                         ; $4b0d: $aa
    nop                                           ; $4b0e: $00
    ld d, a                                       ; $4b0f: $57
    rst $38                                       ; $4b10: $ff
    inc bc                                        ; $4b11: $03

jr_093_4b12:
    and b                                         ; $4b12: $a0
    ld e, a                                       ; $4b13: $5f
    ld a, a                                       ; $4b14: $7f
    rst $38                                       ; $4b15: $ff
    ld h, [hl]                                    ; $4b16: $66
    jr nz, jr_093_4b12                            ; $4b17: $20 $f9

    ld a, h                                       ; $4b19: $7c
    ld h, [hl]                                    ; $4b1a: $66
    ld b, $80                                     ; $4b1b: $06 $80
    inc bc                                        ; $4b1d: $03
    pop af                                        ; $4b1e: $f1
    inc bc                                        ; $4b1f: $03
    call $f300                                    ; $4b20: $cd $00 $f3
    nop                                           ; $4b23: $00
    rst $38                                       ; $4b24: $ff
    xor d                                         ; $4b25: $aa
    db $f4                                        ; $4b26: $f4
    and l                                         ; $4b27: $a5
    ld a, [$00b4]                                 ; $4b28: $fa $b4 $00
    rst $38                                       ; $4b2b: $ff
    cp [hl]                                       ; $4b2c: $be
    rst $38                                       ; $4b2d: $ff
    ld d, h                                       ; $4b2e: $54
    and c                                         ; $4b2f: $a1
    ld a, [hl+]                                   ; $4b30: $2a
    pop de                                        ; $4b31: $d1
    pop bc                                        ; $4b32: $c1
    nop                                           ; $4b33: $00
    cp $00                                        ; $4b34: $fe $00
    rst $38                                       ; $4b36: $ff
    ld b, c                                       ; $4b37: $41
    ld b, $a2                                     ; $4b38: $06 $a2
    rlca                                          ; $4b3a: $07
    dec sp                                        ; $4b3b: $3b
    nop                                           ; $4b3c: $00
    rst $00                                       ; $4b3d: $c7
    and e                                         ; $4b3e: $a3
    db $fc                                        ; $4b3f: $fc
    sub h                                         ; $4b40: $94
    rst $28                                       ; $4b41: $ef
    xor e                                         ; $4b42: $ab
    ld d, h                                       ; $4b43: $54
    cp b                                          ; $4b44: $b8
    nop                                           ; $4b45: $00
    ld b, a                                       ; $4b46: $47
    dec sp                                        ; $4b47: $3b
    call nz, Call_000_130c                        ; $4b48: $c4 $0c $13
    jp z, Jump_000_2a1d                           ; $4b4b: $ca $1d $2a

    ld [$12df], sp                                ; $4b4e: $08 $df $12
    db $fd                                        ; $4b51: $fd
    cpl                                           ; $4b52: $2f
    call nc, $1903                                ; $4b53: $d4 $03 $19
    cp $4c                                        ; $4b56: $fe $4c
    ld [$2abf], sp                                ; $4b58: $08 $bf $2a
    rst $18                                       ; $4b5b: $df
    cp l                                          ; $4b5c: $bd
    ld c, h                                       ; $4b5d: $4c
    dec d                                         ; $4b5e: $15
    and l                                         ; $4b5f: $a5
    ld e, a                                       ; $4b60: $5f
    ld e, a                                       ; $4b61: $5f
    nop                                           ; $4b62: $00
    cp a                                          ; $4b63: $bf
    sbc h                                         ; $4b64: $9c
    ld a, a                                       ; $4b65: $7f
    ld l, c                                       ; $4b66: $69
    sbc [hl]                                      ; $4b67: $9e
    xor l                                         ; $4b68: $ad
    rst $38                                       ; $4b69: $ff
    cp $20                                        ; $4b6a: $fe $20
    rst $08                                       ; $4b6c: $cf
    xor a                                         ; $4b6d: $af
    ret nz                                        ; $4b6e: $c0

    inc bc                                        ; $4b6f: $03
    inc bc                                        ; $4b70: $03
    db $fc                                        ; $4b71: $fc
    ld h, c                                       ; $4b72: $61
    add d                                         ; $4b73: $82
    sub l                                         ; $4b74: $95
    ld bc, $e0e2                                  ; $4b75: $01 $e2 $e0
    rst $38                                       ; $4b78: $ff
    ld l, d                                       ; $4b79: $6a
    sub l                                         ; $4b7a: $95
    call nc, $c02f                                ; $4b7b: $d4 $2f $c0
    ld a, [bc]                                    ; $4b7e: $0a
    ld [hl+], a                                   ; $4b7f: $22
    ld e, d                                       ; $4b80: $5a
    and l                                         ; $4b81: $a5
    ld b, b                                       ; $4b82: $40
    rlca                                          ; $4b83: $07
    push hl                                       ; $4b84: $e5
    inc [hl]                                      ; $4b85: $34
    bit 0, b                                      ; $4b86: $cb $40
    rlca                                          ; $4b88: $07
    cp a                                          ; $4b89: $bf
    push bc                                       ; $4b8a: $c5
    ld b, b                                       ; $4b8b: $40
    rrca                                          ; $4b8c: $0f
    jr nz, jr_093_4bb6                            ; $4b8d: $20 $27

    adc e                                         ; $4b8f: $8b
    ld hl, $20de                                  ; $4b90: $21 $de $20
    rla                                           ; $4b93: $17
    sub [hl]                                      ; $4b94: $96
    jr nz, jr_093_4b9e                            ; $4b95: $20 $07

    ld bc, $fcd6                                  ; $4b97: $01 $d6 $fc
    inc bc                                        ; $4b9a: $03
    and d                                         ; $4b9b: $a2
    ld e, l                                       ; $4b9c: $5d
    ld [hl], l                                    ; $4b9d: $75

jr_093_4b9e:
    adc a                                         ; $4b9e: $8f
    jr nz, @+$19                                  ; $4b9f: $20 $17

    ld [hl], b                                    ; $4ba1: $70
    ld a, [c]                                     ; $4ba2: $f2
    ldh [$58], a                                  ; $4ba3: $e0 $58
    jr nz, jr_093_4bde                            ; $4ba5: $20 $37

    ldh [rNR41], a                                ; $4ba7: $e0 $20
    ld l, c                                       ; $4ba9: $69
    cp $d3                                        ; $4baa: $fe $d3
    inc l                                         ; $4bac: $2c
    nop                                           ; $4bad: $00
    ld d, d                                       ; $4bae: $52
    xor a                                         ; $4baf: $af
    xor c                                         ; $4bb0: $a9
    ld d, a                                       ; $4bb1: $57
    ld d, [hl]                                    ; $4bb2: $56
    xor c                                         ; $4bb3: $a9
    adc l                                         ; $4bb4: $8d
    ld [hl], d                                    ; $4bb5: $72

jr_093_4bb6:
    nop                                           ; $4bb6: $00
    add $39                                       ; $4bb7: $c6 $39
    ld d, l                                       ; $4bb9: $55
    xor d                                         ; $4bba: $aa
    or h                                          ; $4bbb: $b4
    ld c, e                                       ; $4bbc: $4b
    ld l, a                                       ; $4bbd: $6f
    sub b                                         ; $4bbe: $90
    and e                                         ; $4bbf: $a3
    ldh [rNR21], a                                ; $4bc0: $e0 $16
    ld a, [$16e0]                                 ; $4bc2: $fa $e0 $16
    ld [hl], h                                    ; $4bc5: $74
    cpl                                           ; $4bc6: $2f
    ret nc                                        ; $4bc7: $d0

    ldh [rTMA], a                                 ; $4bc8: $e0 $06
    ldh a, [rP1]                                  ; $4bca: $f0 $00
    ld [$a05f], sp                                ; $4bcc: $08 $5f $a0
    rst $30                                       ; $4bcf: $f7
    ld c, $e0                                     ; $4bd0: $0e $e0
    ld c, $ff                                     ; $4bd2: $0e $ff
    nop                                           ; $4bd4: $00
    and [hl]                                      ; $4bd5: $a6
    nop                                           ; $4bd6: $00
    ld e, c                                       ; $4bd7: $59
    cp e                                          ; $4bd8: $bb
    ld b, h                                       ; $4bd9: $44
    ret nc                                        ; $4bda: $d0

    cpl                                           ; $4bdb: $2f
    jr z, jr_093_4b9e                             ; $4bdc: $28 $c0

jr_093_4bde:
    ld c, [hl]                                    ; $4bde: $4e
    ld h, $f0                                     ; $4bdf: $26 $f0
    ld [hl], e                                    ; $4be1: $73
    xor h                                         ; $4be2: $ac
    inc b                                         ; $4be3: $04
    and b                                         ; $4be4: $a0
    ld e, a                                       ; $4be5: $5f
    ld [hl], b                                    ; $4be6: $70
    ld a, [hl+]                                   ; $4be7: $2a
    ret nc                                        ; $4be8: $d0

    ld b, $0f                                     ; $4be9: $06 $0f
    ld [$1de2], sp                                ; $4beb: $08 $e2 $1d
    sub a                                         ; $4bee: $97
    add sp, $70                                   ; $4bef: $e8 $70
    ld a, [hl-]                                   ; $4bf1: $3a
    ld a, [hl-]                                   ; $4bf2: $3a
    push bc                                       ; $4bf3: $c5
    call Call_000_3200                            ; $4bf4: $cd $00 $32
    xor b                                         ; $4bf7: $a8
    ld d, a                                       ; $4bf8: $57
    ld d, h                                       ; $4bf9: $54
    xor b                                         ; $4bfa: $a8
    xor c                                         ; $4bfb: $a9
    ld e, [hl]                                    ; $4bfc: $5e
    ld a, [hl]                                    ; $4bfd: $7e
    ld c, h                                       ; $4bfe: $4c
    adc a                                         ; $4bff: $8f
    ld [hl], b                                    ; $4c00: $70
    ld a, [bc]                                    ; $4c01: $0a
    dec e                                         ; $4c02: $1d
    ld [c], a                                     ; $4c03: $e2
    ld [hl], b                                    ; $4c04: $70
    ld a, [bc]                                    ; $4c05: $0a
    ld d, b                                       ; $4c06: $50
    ld c, c                                       ; $4c07: $49
    xor e                                         ; $4c08: $ab
    ld e, a                                       ; $4c09: $5f
    nop                                           ; $4c0a: $00
    ld d, l                                       ; $4c0b: $55
    xor e                                         ; $4c0c: $ab
    ld a, [hl-]                                   ; $4c0d: $3a
    push bc                                       ; $4c0e: $c5
    sub a                                         ; $4c0f: $97
    ld l, b                                       ; $4c10: $68
    ld a, e                                       ; $4c11: $7b
    add h                                         ; $4c12: $84
    nop                                           ; $4c13: $00
    ld a, [hl+]                                   ; $4c14: $2a
    ld e, a                                       ; $4c15: $5f
    nop                                           ; $4c16: $00
    ld a, a                                       ; $4c17: $7f
    sbc b                                         ; $4c18: $98
    ld h, b                                       ; $4c19: $60
    xor l                                         ; $4c1a: $ad
    ldh a, [rLCDC]                                ; $4c1b: $f0 $40
    inc hl                                        ; $4c1d: $23
    jr nz, jr_093_4c31                            ; $4c1e: $20 $11

    sub b                                         ; $4c20: $90
    ld l, a                                       ; $4c21: $6f
    set 6, h                                      ; $4c22: $cb $f4
    xor [hl]                                      ; $4c24: $ae
    ld d, c                                       ; $4c25: $51
    nop                                           ; $4c26: $00
    ld a, [hl-]                                   ; $4c27: $3a
    dec e                                         ; $4c28: $1d
    ld a, [bc]                                    ; $4c29: $0a
    ccf                                           ; $4c2a: $3f
    sub d                                         ; $4c2b: $92
    dec a                                         ; $4c2c: $3d
    ld a, $7f                                     ; $4c2d: $3e $7f
    add hl, bc                                    ; $4c2f: $09
    dec hl                                        ; $4c30: $2b

jr_093_4c31:
    ld d, h                                       ; $4c31: $54
    ld a, c                                       ; $4c32: $79
    adc [hl]                                      ; $4c33: $8e
    ret nz                                        ; $4c34: $c0

    dec bc                                        ; $4c35: $0b
    ld d, l                                       ; $4c36: $55
    xor [hl]                                      ; $4c37: $ae
    ret nz                                        ; $4c38: $c0

    dec bc                                        ; $4c39: $0b
    nop                                           ; $4c3a: $00
    ld a, [hl-]                                   ; $4c3b: $3a
    push bc                                       ; $4c3c: $c5
    ei                                            ; $4c3d: $fb
    inc b                                         ; $4c3e: $04
    ld [hl], h                                    ; $4c3f: $74
    adc e                                         ; $4c40: $8b
    jp hl                                         ; $4c41: $e9


    ld d, $00                                     ; $4c42: $16 $00
    sbc a                                         ; $4c44: $9f
    ldh [$d4], a                                  ; $4c45: $e0 $d4
    dec hl                                        ; $4c47: $2b
    ld e, [hl]                                    ; $4c48: $5e
    and e                                         ; $4c49: $a3
    db $eb                                        ; $4c4a: $eb
    rla                                           ; $4c4b: $17
    nop                                           ; $4c4c: $00
    add l                                         ; $4c4d: $85
    ld a, d                                       ; $4c4e: $7a
    ld b, b                                       ; $4c4f: $40
    add a                                         ; $4c50: $87
    xor c                                         ; $4c51: $a9
    add $d2                                       ; $4c52: $c6 $d2
    rst $20                                       ; $4c54: $e7
    ld b, b                                       ; $4c55: $40
    db $e3                                        ; $4c56: $e3
    or b                                          ; $4c57: $b0
    inc b                                         ; $4c58: $04
    and b                                         ; $4c59: $a0
    ld bc, $c13c                                  ; $4c5a: $01 $3c $c1
    ld e, [hl]                                    ; $4c5d: $5e
    and c                                         ; $4c5e: $a1
    nop                                           ; $4c5f: $00
    inc c                                         ; $4c60: $0c
    di                                            ; $4c61: $f3
    inc bc                                        ; $4c62: $03
    inc b                                         ; $4c63: $04
    pop bc                                        ; $4c64: $c1
    ld b, $82                                     ; $4c65: $06 $82
    rst $38                                       ; $4c67: $ff
    nop                                           ; $4c68: $00
    inc bc                                        ; $4c69: $03
    rst $38                                       ; $4c6a: $ff
    ld h, e                                       ; $4c6b: $63
    add a                                         ; $4c6c: $87
    jp z, Jump_000_00f5                           ; $4c6d: $ca $f5 $00

    ld d, $00                                     ; $4c70: $16 $00
    nop                                           ; $4c72: $00
    ld l, a                                       ; $4c73: $6f
    ld [bc], a                                    ; $4c74: $02
    ccf                                           ; $4c75: $3f
    nop                                           ; $4c76: $00
    ld e, a                                       ; $4c77: $5f
    inc b                                         ; $4c78: $04
    ld a, e                                       ; $4c79: $7b
    nop                                           ; $4c7a: $00
    ld bc, $00bf                                  ; $4c7b: $01 $bf $00
    ld a, a                                       ; $4c7e: $7f
    db $10                                        ; $4c7f: $10
    rst $38                                       ; $4c80: $ff
    nop                                           ; $4c81: $00
    and b                                         ; $4c82: $a0
    nop                                           ; $4c83: $00
    nop                                           ; $4c84: $00
    call nc, $fc00                                ; $4c85: $d4 $00 $fc
    nop                                           ; $4c88: $00
    ld a, [$dc20]                                 ; $4c89: $fa $20 $dc
    nop                                           ; $4c8c: $00
    ld [$00fe], sp                                ; $4c8d: $08 $fe $00
    cp $80                                        ; $4c90: $fe $80
    ld a, l                                       ; $4c92: $7d
    db $10                                        ; $4c93: $10
    ld l, a                                       ; $4c94: $6f
    nop                                           ; $4c95: $00
    nop                                           ; $4c96: $00
    ld a, a                                       ; $4c97: $7f
    ld de, $007f                                  ; $4c98: $11 $7f $00
    rst $38                                       ; $4c9b: $ff
    ld b, b                                       ; $4c9c: $40
    rst $38                                       ; $4c9d: $ff
    jr z, jr_093_4d19                             ; $4c9e: $28 $79

    add [hl]                                      ; $4ca0: $86
    db $ec                                        ; $4ca1: $ec
    ld c, $20                                     ; $4ca2: $0e $20
    ld hl, sp+$04                                 ; $4ca4: $f8 $04
    ld b, b                                       ; $4ca6: $40
    cp a                                          ; $4ca7: $bf
    ld [$f190], sp                                ; $4ca8: $08 $90 $f1
    dec b                                         ; $4cab: $05
    or a                                          ; $4cac: $b7
    ld c, b                                       ; $4cad: $48
    db $fc                                        ; $4cae: $fc
    ld c, $00                                     ; $4caf: $0e $00
    ld [de], a                                    ; $4cb1: $12
    nop                                           ; $4cb2: $00
    cp c                                          ; $4cb3: $b9
    nop                                           ; $4cb4: $00
    nop                                           ; $4cb5: $00
    ld l, h                                       ; $4cb6: $6c
    nop                                           ; $4cb7: $00
    ld a, [$5e00]                                 ; $4cb8: $fa $00 $5e
    ld [$00f4], sp                                ; $4cbb: $08 $f4 $00
    db $10                                        ; $4cbe: $10
    ld l, [hl]                                    ; $4cbf: $6e
    ld a, [bc]                                    ; $4cc0: $0a
    cp l                                          ; $4cc1: $bd
    ldh [rSB], a                                  ; $4cc2: $e0 $01
    ld e, b                                       ; $4cc4: $58
    and c                                         ; $4cc5: $a1
    ld b, b                                       ; $4cc6: $40
    adc d                                         ; $4cc7: $8a
    ld c, l                                       ; $4cc8: $4d
    dec b                                         ; $4cc9: $05
    ld [$5a55], a                                 ; $4cca: $ea $55 $5a
    cp l                                          ; $4ccd: $bd
    xor d                                         ; $4cce: $aa
    ld e, a                                       ; $4ccf: $5f
    nop                                           ; $4cd0: $00
    inc de                                        ; $4cd1: $13
    db $fc                                        ; $4cd2: $fc
    nop                                           ; $4cd3: $00
    ld a, a                                       ; $4cd4: $7f
    ld [$207f], sp                                ; $4cd5: $08 $7f $20
    ld e, a                                       ; $4cd8: $5f
    ld c, b                                       ; $4cd9: $48
    ld bc, $01e2                                  ; $4cda: $01 $e2 $01
    ld e, [hl]                                    ; $4cdd: $5e
    and c                                         ; $4cde: $a1
    jr nc, jr_093_4cf1                            ; $4cdf: $30 $10

    adc l                                         ; $4ce1: $8d
    nop                                           ; $4ce2: $00
    rst $10                                       ; $4ce3: $d7
    ld b, d                                       ; $4ce4: $42
    ld b, c                                       ; $4ce5: $41
    inc a                                         ; $4ce6: $3c
    dec b                                         ; $4ce7: $05
    nop                                           ; $4ce8: $00
    rst $38                                       ; $4ce9: $ff
    ld d, c                                       ; $4cea: $51
    xor [hl]                                      ; $4ceb: $ae
    ld b, b                                       ; $4cec: $40
    db $10                                        ; $4ced: $10
    jr jr_093_4cf0                                ; $4cee: $18 $00

jr_093_4cf0:
    nop                                           ; $4cf0: $00

jr_093_4cf1:
    ld c, l                                       ; $4cf1: $4d
    nop                                           ; $4cf2: $00
    ccf                                           ; $4cf3: $3f
    ld a, [bc]                                    ; $4cf4: $0a
    ld e, l                                       ; $4cf5: $5d
    nop                                           ; $4cf6: $00
    cp a                                          ; $4cf7: $bf
    nop                                           ; $4cf8: $00
    inc b                                         ; $4cf9: $04
    ld a, a                                       ; $4cfa: $7f
    nop                                           ; $4cfb: $00
    cp a                                          ; $4cfc: $bf
    ld de, $006e                                  ; $4cfd: $11 $6e $00
    ret nc                                        ; $4d00: $d0

    nop                                           ; $4d01: $00
    nop                                           ; $4d02: $00

jr_093_4d03:
    ld l, h                                       ; $4d03: $6c
    ld [$00fc], sp                                ; $4d04: $08 $fc $00

jr_093_4d07:
    ei                                            ; $4d07: $fb
    jr nz, jr_093_4d07                            ; $4d08: $20 $fd

    nop                                           ; $4d0a: $00
    nop                                           ; $4d0b: $00
    cp $20                                        ; $4d0c: $fe $20
    cp $08                                        ; $4d0e: $fe $08
    rst $30                                       ; $4d10: $f7
    nop                                           ; $4d11: $00
    adc c                                         ; $4d12: $89
    inc de                                        ; $4d13: $13
    nop                                           ; $4d14: $00
    ld a, a                                       ; $4d15: $7f
    ld b, c                                       ; $4d16: $41
    sub $13                                       ; $4d17: $d6 $13

jr_093_4d19:
    ld e, a                                       ; $4d19: $5f
    and b                                         ; $4d1a: $a0
    ld [hl], b                                    ; $4d1b: $70
    db $10                                        ; $4d1c: $10
    inc a                                         ; $4d1d: $3c
    db $10                                        ; $4d1e: $10
    sub h                                         ; $4d1f: $94
    add [hl]                                      ; $4d20: $86
    ld [$916e], sp                                ; $4d21: $08 $6e $91
    ld a, h                                       ; $4d24: $7c
    rrca                                          ; $4d25: $0f
    ld [bc], a                                    ; $4d26: $02
    adc b                                         ; $4d27: $88
    dec b                                         ; $4d28: $05
    add d                                         ; $4d29: $82
    db $fd                                        ; $4d2a: $fd
    ld [bc], a                                    ; $4d2b: $02
    ld b, b                                       ; $4d2c: $40
    cp a                                          ; $4d2d: $bf
    nop                                           ; $4d2e: $00
    rst $38                                       ; $4d2f: $ff
    ld c, [hl]                                    ; $4d30: $4e
    or c                                          ; $4d31: $b1
    sub b                                         ; $4d32: $90
    db $10                                        ; $4d33: $10
    ld d, b                                       ; $4d34: $50
    add $bc                                       ; $4d35: $c6 $bc
    nop                                           ; $4d37: $00
    jr c, jr_093_4d42                             ; $4d38: $38 $08

    rst $38                                       ; $4d3a: $ff
    inc [hl]                                      ; $4d3b: $34
    bit 7, l                                      ; $4d3c: $cb $7d
    rla                                           ; $4d3e: $17
    ld h, h                                       ; $4d3f: $64
    ld b, $f9                                     ; $4d40: $06 $f9

jr_093_4d42:
    add b                                         ; $4d42: $80
    jr c, jr_093_4d55                             ; $4d43: $38 $10

    push af                                       ; $4d45: $f5
    ld c, $54                                     ; $4d46: $0e $54
    xor a                                         ; $4d48: $af
    cp $07                                        ; $4d49: $fe $07
    ld d, h                                       ; $4d4b: $54
    ld [bc], a                                    ; $4d4c: $02
    add sp, $4b                                   ; $4d4d: $e8 $4b
    db $f4                                        ; $4d4f: $f4
    ld l, b                                       ; $4d50: $68
    rst $38                                       ; $4d51: $ff
    ld a, l                                       ; $4d52: $7d
    cp [hl]                                       ; $4d53: $be
    dec b                                         ; $4d54: $05

jr_093_4d55:
    add b                                         ; $4d55: $80
    nop                                           ; $4d56: $00
    inc bc                                        ; $4d57: $03
    or c                                          ; $4d58: $b1
    ld b, e                                       ; $4d59: $43
    dec l                                         ; $4d5a: $2d
    db $d3                                        ; $4d5b: $d3
    nop                                           ; $4d5c: $00
    inc c                                         ; $4d5d: $0c
    nop                                           ; $4d5e: $00
    nop                                           ; $4d5f: $00
    ld [hl], $00                                  ; $4d60: $36 $00
    ld e, h                                       ; $4d62: $5c
    ld [$1036], sp                                ; $4d63: $08 $36 $10
    ld a, l                                       ; $4d66: $7d

jr_093_4d67:
    jr nz, jr_093_4da9                            ; $4d67: $20 $40

    ld d, a                                       ; $4d69: $57
    and $00                                       ; $4d6a: $e6 $00
    cp $16                                        ; $4d6c: $fe $16
    jr z, jr_093_4d03                             ; $4d6e: $28 $93

    inc h                                         ; $4d70: $24
    ld e, [hl]                                    ; $4d71: $5e
    nop                                           ; $4d72: $00
    add c                                         ; $4d73: $81
    ld e, e                                       ; $4d74: $5b
    and h                                         ; $4d75: $a4
    or h                                          ; $4d76: $b4
    ld e, e                                       ; $4d77: $5b
    xor c                                         ; $4d78: $a9
    halt                                          ; $4d79: $76
    ld c, a                                       ; $4d7a: $4f
    nop                                           ; $4d7b: $00
    or b                                          ; $4d7c: $b0
    push af                                       ; $4d7d: $f5
    nop                                           ; $4d7e: $00
    nop                                           ; $4d7f: $00
    inc b                                         ; $4d80: $04
    nop                                           ; $4d81: $00
    jp z, $0100                                   ; $4d82: $ca $00 $01

    rst $38                                       ; $4d85: $ff
    jr z, jr_093_4d67                             ; $4d86: $28 $df

    nop                                           ; $4d88: $00
    rst $38                                       ; $4d89: $ff
    ld a, d                                       ; $4d8a: $7a
    add l                                         ; $4d8b: $85
    ldh a, [rNR10]                                ; $4d8c: $f0 $10
    ld [bc], a                                    ; $4d8e: $02
    ld d, c                                       ; $4d8f: $51
    ld b, b                                       ; $4d90: $40
    ei                                            ; $4d91: $fb
    db $10                                        ; $4d92: $10
    rst $28                                       ; $4d93: $ef
    ld [hl+], a                                   ; $4d94: $22
    stop                                          ; $4d95: $10 $00
    ld a, l                                       ; $4d97: $7d
    ld b, b                                       ; $4d98: $40
    add d                                         ; $4d99: $82
    db $fc                                        ; $4d9a: $fc
    rrca                                          ; $4d9b: $0f
    db $10                                        ; $4d9c: $10
    cp $40                                        ; $4d9d: $fe $40
    cp e                                          ; $4d9f: $bb
    ld [bc], a                                    ; $4da0: $02
    rst $38                                       ; $4da1: $ff
    ld [bc], a                                    ; $4da2: $02
    inc d                                         ; $4da3: $14
    rst $28                                       ; $4da4: $ef
    nop                                           ; $4da5: $00
    rst $38                                       ; $4da6: $ff
    ld a, [hl]                                    ; $4da7: $7e
    add c                                         ; $4da8: $81

jr_093_4da9:
    db $10                                        ; $4da9: $10
    ld de, $0022                                  ; $4daa: $11 $22 $00
    nop                                           ; $4dad: $00
    ld l, a                                       ; $4dae: $6f
    inc b                                         ; $4daf: $04
    ei                                            ; $4db0: $fb
    ld b, b                                       ; $4db1: $40
    cp a                                          ; $4db2: $bf
    dec h                                         ; $4db3: $25
    rst $38                                       ; $4db4: $ff
    jr nz, jr_093_4e1b                            ; $4db5: $20 $64

    sbc e                                         ; $4db7: $9b
    db $fd                                        ; $4db8: $fd
    rrca                                          ; $4db9: $0f
    ld a, [de]                                    ; $4dba: $1a
    push hl                                       ; $4dbb: $e5
    or l                                          ; $4dbc: $b5
    jp z, Jump_000_005b                           ; $4dbd: $ca $5b $00

    and b                                         ; $4dc0: $a0

jr_093_4dc1:
    dec hl                                        ; $4dc1: $2b
    call c, $9e6d                                 ; $4dc2: $dc $6d $9e
    ld e, [hl]                                    ; $4dc5: $5e
    cpl                                           ; $4dc6: $2f
    cp h                                          ; $4dc7: $bc
    ld [bc], a                                    ; $4dc8: $02
    ld b, e                                       ; $4dc9: $43
    ld e, a                                       ; $4dca: $5f
    and b                                         ; $4dcb: $a0
    ld sp, hl                                     ; $4dcc: $f9
    cp $ce                                        ; $4dcd: $fe $ce
    ld c, d                                       ; $4dcf: $4a
    ld b, $52                                     ; $4dd0: $06 $52
    ld [bc], a                                    ; $4dd2: $02
    ldh [$ad], a                                  ; $4dd3: $e0 $ad
    ret nc                                        ; $4dd5: $d0

    and c                                         ; $4dd6: $a1
    cp $f5                                        ; $4dd7: $fe $f5
    ld b, h                                       ; $4dd9: $44
    ld b, $56                                     ; $4dda: $06 $56
    nop                                           ; $4ddc: $00
    adc c                                         ; $4ddd: $89
    dec c                                         ; $4dde: $0d
    ld a, [c]                                     ; $4ddf: $f2
    ld bc, $08fe                                  ; $4de0: $01 $fe $08
    jr nc, jr_093_4dfb                            ; $4de3: $30 $16

    nop                                           ; $4de5: $00
    jr c, jr_093_4dc1                             ; $4de6: $38 $d9

    ld a, $1d                                     ; $4de8: $3e $1d
    ld [c], a                                     ; $4dea: $e2
    rra                                           ; $4deb: $1f
    pop hl                                        ; $4dec: $e1
    add e                                         ; $4ded: $83
    nop                                           ; $4dee: $00
    call z, $cf04                                 ; $4def: $cc $04 $cf
    or a                                          ; $4df2: $b7
    rst $08                                       ; $4df3: $cf
    dec bc                                        ; $4df4: $0b
    db $f4                                        ; $4df5: $f4
    or l                                          ; $4df6: $b5
    db $10                                        ; $4df7: $10
    jp nz, $c718                                  ; $4df8: $c2 $18 $c7

jr_093_4dfb:
    nop                                           ; $4dfb: $00
    ld a, [bc]                                    ; $4dfc: $0a
    ld a, [bc]                                    ; $4dfd: $0a
    rla                                           ; $4dfe: $17
    xor a                                         ; $4dff: $af
    rra                                           ; $4e00: $1f
    inc c                                         ; $4e01: $0c
    ld [de], a                                    ; $4e02: $12
    rst $28                                       ; $4e03: $ef
    ld e, l                                       ; $4e04: $5d
    and d                                         ; $4e05: $a2
    sub b                                         ; $4e06: $90
    ld a, [hl+]                                   ; $4e07: $2a
    ld d, b                                       ; $4e08: $50
    dec l                                         ; $4e09: $2d
    ei                                            ; $4e0a: $fb
    inc b                                         ; $4e0b: $04
    ld [bc], a                                    ; $4e0c: $02
    ld c, e                                       ; $4e0d: $4b
    cp h                                          ; $4e0e: $bc
    xor l                                         ; $4e0f: $ad
    ld e, [hl]                                    ; $4e10: $5e
    ld e, [hl]                                    ; $4e11: $5e
    xor a                                         ; $4e12: $af
    ld d, b                                       ; $4e13: $50
    dec e                                         ; $4e14: $1d
    push af                                       ; $4e15: $f5
    nop                                           ; $4e16: $00
    ld a, [bc]                                    ; $4e17: $0a
    dec c                                         ; $4e18: $0d
    ld a, [c]                                     ; $4e19: $f2
    add e                                         ; $4e1a: $83

jr_093_4e1b:
    rlca                                          ; $4e1b: $07
    ld h, e                                       ; $4e1c: $63
    add a                                         ; $4e1d: $87
    dec hl                                        ; $4e1e: $2b
    nop                                           ; $4e1f: $00
    rst $10                                       ; $4e20: $d7
    ld d, b                                       ; $4e21: $50
    xor a                                         ; $4e22: $af
    xor h                                         ; $4e23: $ac
    ld d, b                                       ; $4e24: $50
    ld [hl], a                                    ; $4e25: $77
    sbc b                                         ; $4e26: $98
    cp $20                                        ; $4e27: $fe $20
    rra                                           ; $4e29: $1f
    nop                                           ; $4e2a: $00
    ld e, $05                                     ; $4e2b: $1e $05
    dec [hl]                                      ; $4e2d: $35
    rst $08                                       ; $4e2e: $cf
    push hl                                       ; $4e2f: $e5
    rst $38                                       ; $4e30: $ff
    dec [hl]                                      ; $4e31: $35
    nop                                           ; $4e32: $00
    ret z                                         ; $4e33: $c8

    ld [bc], a                                    ; $4e34: $02
    dec e                                         ; $4e35: $1d
    adc c                                         ; $4e36: $89
    ld e, $6e                                     ; $4e37: $1e $6e
    sbc a                                         ; $4e39: $9f
    nop                                           ; $4e3a: $00
    ld [$52ff], sp                                ; $4e3b: $08 $ff $52
    and b                                         ; $4e3e: $a0
    dec l                                         ; $4e3f: $2d
    ld [hl], h                                    ; $4e40: $74
    nop                                           ; $4e41: $00
    nop                                           ; $4e42: $00
    rst $38                                       ; $4e43: $ff
    rla                                           ; $4e44: $17
    nop                                           ; $4e45: $00
    nop                                           ; $4e46: $00
    sub e                                         ; $4e47: $93
    ld a, h                                       ; $4e48: $7c
    ld a, [hl+]                                   ; $4e49: $2a
    rst $18                                       ; $4e4a: $df
    push de                                       ; $4e4b: $d5
    dec hl                                        ; $4e4c: $2b
    ld l, e                                       ; $4e4d: $6b
    inc b                                         ; $4e4e: $04
    sub h                                         ; $4e4f: $94
    sub $01                                       ; $4e50: $d6 $01
    or l                                          ; $4e52: $b5
    ld a, [bc]                                    ; $4e53: $0a
    ld d, b                                       ; $4e54: $50
    ld a, [hl+]                                   ; $4e55: $2a
    ld h, h                                       ; $4e56: $64
    ei                                            ; $4e57: $fb
    add c                                         ; $4e58: $81
    or b                                          ; $4e59: $b0
    add hl, bc                                    ; $4e5a: $09
    ld [de], a                                    ; $4e5b: $12
    db $fd                                        ; $4e5c: $fd
    ld d, l                                       ; $4e5d: $55
    nop                                           ; $4e5e: $00
    cp [hl]                                       ; $4e5f: $be
    ld bc, $4610                                  ; $4e60: $01 $10 $46
    ld b, h                                       ; $4e63: $44
    add c                                         ; $4e64: $81
    db $10                                        ; $4e65: $10
    ld b, $40                                     ; $4e66: $06 $40
    ld [hl], c                                    ; $4e68: $71
    add b                                         ; $4e69: $80
    db $10                                        ; $4e6a: $10
    ld e, $dd                                     ; $4e6b: $1e $dd
    ld [hl+], a                                   ; $4e6d: $22
    nop                                           ; $4e6e: $00
    ld [$1510], a                                 ; $4e6f: $ea $10 $15
    ld a, [bc]                                    ; $4e72: $0a
    and e                                         ; $4e73: $a3
    inc c                                         ; $4e74: $0c
    ld d, [hl]                                    ; $4e75: $56
    adc b                                         ; $4e76: $88
    jr c, jr_093_4e88                             ; $4e77: $38 $0f

    ldh a, [$b4]                                  ; $4e79: $f0 $b4
    jr z, @+$5a                                   ; $4e7b: $28 $58

    nop                                           ; $4e7d: $00
    jr nz, jr_093_4e9b                            ; $4e7e: $20 $1b

    ld [bc], a                                    ; $4e80: $02
    add $01                                       ; $4e81: $c6 $01
    adc d                                         ; $4e83: $8a
    jr nz, jr_093_4e89                            ; $4e84: $20 $03

    ld b, b                                       ; $4e86: $40
    nop                                           ; $4e87: $00

jr_093_4e88:
    rst $38                                       ; $4e88: $ff

jr_093_4e89:
    jr nz, jr_093_4e9e                            ; $4e89: $20 $13

    ld hl, sp+$20                                 ; $4e8b: $f8 $20
    inc de                                        ; $4e8d: $13
    nop                                           ; $4e8e: $00
    jr nz, @+$31                                  ; $4e8f: $20 $2f

jr_093_4e91:
    nop                                           ; $4e91: $00
    ld [$0003], a                                 ; $4e92: $ea $03 $00
    push bc                                       ; $4e95: $c5
    nop                                           ; $4e96: $00
    ld e, l                                       ; $4e97: $5d
    ld [bc], a                                    ; $4e98: $02
    jr z, jr_093_4e91                             ; $4e99: $28 $f6

jr_093_4e9b:
    rrca                                          ; $4e9b: $0f
    jr nz, jr_093_4ea9                            ; $4e9c: $20 $0b

jr_093_4e9e:
    cp $10                                        ; $4e9e: $fe $10
    nop                                           ; $4ea0: $00
    or e                                          ; $4ea1: $b3
    inc b                                         ; $4ea2: $04

jr_093_4ea3:
    ld e, [hl]                                    ; $4ea3: $5e
    inc b                                         ; $4ea4: $04
    ld bc, $a45b                                  ; $4ea5: $01 $5b $a4
    sub h                                         ; $4ea8: $94

jr_093_4ea9:
    ei                                            ; $4ea9: $fb
    ld h, b                                       ; $4eaa: $60
    add hl, de                                    ; $4eab: $19
    ld a, d                                       ; $4eac: $7a
    dec b                                         ; $4ead: $05
    nop                                           ; $4eae: $00
    xor d                                         ; $4eaf: $aa
    dec d                                         ; $4eb0: $15
    ld [hl], l                                    ; $4eb1: $75
    adc [hl]                                      ; $4eb2: $8e
    cp h                                          ; $4eb3: $bc
    ld b, e                                       ; $4eb4: $43
    ld d, a                                       ; $4eb5: $57
    xor b                                         ; $4eb6: $a8
    nop                                           ; $4eb7: $00
    ei                                            ; $4eb8: $fb
    nop                                           ; $4eb9: $00
    call nc, $962b                                ; $4eba: $d4 $2b $96
    db $eb                                        ; $4ebd: $eb
    rlca                                          ; $4ebe: $07
    ld hl, sp-$7f                                 ; $4ebf: $f8 $81
    or d                                          ; $4ec1: $b2
    ld e, d                                       ; $4ec2: $5a
    ld d, c                                       ; $4ec3: $51
    nop                                           ; $4ec4: $00
    ld e, [hl]                                    ; $4ec5: $5e
    and b                                         ; $4ec6: $a0
    dec c                                         ; $4ec7: $0d
    ldh a, [$b2]                                  ; $4ec8: $f0 $b2
    ld a, [hl-]                                   ; $4eca: $3a
    nop                                           ; $4ecb: $00
    ld h, a                                       ; $4ecc: $67
    ei                                            ; $4ecd: $fb
    xor e                                         ; $4ece: $ab
    ld d, a                                       ; $4ecf: $57
    ld a, a                                       ; $4ed0: $7f
    nop                                           ; $4ed1: $00
    ld b, e                                       ; $4ed2: $43
    add b                                         ; $4ed3: $80
    jr nz, jr_093_4ea3                            ; $4ed4: $20 $cd

    nop                                           ; $4ed6: $00
    jr nz, jr_093_4ef6                            ; $4ed7: $20 $1d

    inc a                                         ; $4ed9: $3c
    pop bc                                        ; $4eda: $c1
    add $f9                                       ; $4edb: $c6 $f9
    ld bc, $fe01                                  ; $4edd: $01 $01 $fe
    ccf                                           ; $4ee0: $3f
    nop                                           ; $4ee1: $00
    add c                                         ; $4ee2: $81
    nop                                           ; $4ee3: $00
    or d                                          ; $4ee4: $b2
    ld b, c                                       ; $4ee5: $41
    and b                                         ; $4ee6: $a0
    ld c, $00                                     ; $4ee7: $0e $00
    jp z, $c4f5                                   ; $4ee9: $ca $f5 $c4

    jr c, jr_093_4f0d                             ; $4eec: $38 $1f

    ldh [$eb], a                                  ; $4eee: $e0 $eb
    inc d                                         ; $4ef0: $14
    nop                                           ; $4ef1: $00
    ld [hl], b                                    ; $4ef2: $70
    nop                                           ; $4ef3: $00
    cp h                                          ; $4ef4: $bc
    ld b, b                                       ; $4ef5: $40

jr_093_4ef6:
    ld d, l                                       ; $4ef6: $55
    xor d                                         ; $4ef7: $aa
    sub h                                         ; $4ef8: $94
    ld a, a                                       ; $4ef9: $7f
    jr nz, jr_093_4f36                            ; $4efa: $20 $3a

    dec b                                         ; $4efc: $05
    ldh a, [$58]                                  ; $4efd: $f0 $58
    ld a, [hl-]                                   ; $4eff: $3a
    push bc                                       ; $4f00: $c5
    rla                                           ; $4f01: $17
    add sp, -$45                                  ; $4f02: $e8 $bb
    ld sp, $aa54                                  ; $4f04: $31 $54 $aa
    ld e, d                                       ; $4f07: $5a
    inc bc                                        ; $4f08: $03
    nop                                           ; $4f09: $00
    ld bc, $f529                                  ; $4f0a: $01 $29 $f5

jr_093_4f0d:
    ld a, [bc]                                    ; $4f0d: $0a
    ldh a, [rNR23]                                ; $4f0e: $f0 $18
    nop                                           ; $4f10: $00
    dec b                                         ; $4f11: $05
    ld a, [$0386]                                 ; $4f12: $fa $86 $03
    db $e3                                        ; $4f15: $e3
    inc b                                         ; $4f16: $04
    ld d, e                                       ; $4f17: $53
    and h                                         ; $4f18: $a4
    nop                                           ; $4f19: $00
    add $f9                                       ; $4f1a: $c6 $f9
    ei                                            ; $4f1c: $fb
    rst $38                                       ; $4f1d: $ff
    ccf                                           ; $4f1e: $3f
    rst $38                                       ; $4f1f: $ff
    sbc b                                         ; $4f20: $98
    ld a, a                                       ; $4f21: $7f
    ld bc, $fe31                                  ; $4f22: $01 $31 $fe
    db $f4                                        ; $4f25: $f4
    rst $38                                       ; $4f26: $ff
    cp d                                          ; $4f27: $ba
    rst $38                                       ; $4f28: $ff
    ld e, a                                       ; $4f29: $5f
    ld [hl+], a                                   ; $4f2a: $22
    rlca                                          ; $4f2b: $07
    nop                                           ; $4f2c: $00
    ld e, $ff                                     ; $4f2d: $1e $ff
    pop hl                                        ; $4f2f: $e1
    rst $38                                       ; $4f30: $ff
    ld b, [hl]                                    ; $4f31: $46
    ld sp, hl                                     ; $4f32: $f9
    xor b                                         ; $4f33: $a8
    ld a, a                                       ; $4f34: $7f
    dec b                                         ; $4f35: $05

jr_093_4f36:
    ld a, a                                       ; $4f36: $7f
    rst $38                                       ; $4f37: $ff
    ld hl, sp-$01                                 ; $4f38: $f8 $ff
    pop af                                        ; $4f3a: $f1
    ld b, d                                       ; $4f3b: $42
    rlca                                          ; $4f3c: $07
    inc bc                                        ; $4f3d: $03
    ld d, d                                       ; $4f3e: $52
    ld b, $a0                                     ; $4f3f: $06 $a0
    ld b, b                                       ; $4f41: $40
    ld c, l                                       ; $4f42: $4d
    db $fd                                        ; $4f43: $fd
    xor $05                                       ; $4f44: $ee $05
    sub $38                                       ; $4f46: $d6 $38
    ld [de], a                                    ; $4f48: $12
    db $fd                                        ; $4f49: $fd
    ld hl, sp+$18                                 ; $4f4a: $f8 $18
    rra                                           ; $4f4c: $1f
    xor a                                         ; $4f4d: $af
    ld e, a                                       ; $4f4e: $5f
    ld b, b                                       ; $4f4f: $40
    dec c                                         ; $4f50: $0d
    call nc, $0309                                ; $4f51: $d4 $09 $03
    inc c                                         ; $4f54: $0c
    call nz, Call_000_0f00                        ; $4f55: $c4 $00 $0f
    or a                                          ; $4f58: $b7
    ld c, a                                       ; $4f59: $4f
    dec bc                                        ; $4f5a: $0b
    db $f4                                        ; $4f5b: $f4
    or $09                                        ; $4f5c: $f6 $09
    cp d                                          ; $4f5e: $ba
    ld bc, $a647                                  ; $4f5f: $01 $47 $a6
    ld e, c                                       ; $4f62: $59
    or e                                          ; $4f63: $b3
    ld c, h                                       ; $4f64: $4c
    ld e, [hl]                                    ; $4f65: $5e
    and c                                         ; $4f66: $a1
    ldh a, [$30]                                  ; $4f67: $f0 $30
    ld b, h                                       ; $4f69: $44
    ld a, [bc]                                    ; $4f6a: $0a
    ld [hl], b                                    ; $4f6b: $70
    ld c, $05                                     ; $4f6c: $0e $05
    ld a, [$6e84]                                 ; $4f6e: $fa $84 $6e
    db $10                                        ; $4f71: $10
    rst $00                                       ; $4f72: $c7
    ld hl, sp+$00                                 ; $4f73: $f8 $00
    cp b                                          ; $4f75: $b8
    ld b, a                                       ; $4f76: $47
    dec e                                         ; $4f77: $1d
    ld [c], a                                     ; $4f78: $e2
    ld e, $e1                                     ; $4f79: $1e $e1
    ld a, [bc]                                    ; $4f7b: $0a
    rla                                           ; $4f7c: $17
    ld c, $a6                                     ; $4f7d: $0e $a6
    add hl, de                                    ; $4f7f: $19
    ld a, [de]                                    ; $4f80: $1a
    db $e4                                        ; $4f81: $e4
    ld a, [hl+]                                   ; $4f82: $2a
    rlca                                          ; $4f83: $07
    and b                                         ; $4f84: $a0
    dec b                                         ; $4f85: $05
    ld b, b                                       ; $4f86: $40
    dec c                                         ; $4f87: $0d
    ld d, a                                       ; $4f88: $57
    ld b, $a8                                     ; $4f89: $06 $a8
    inc a                                         ; $4f8b: $3c
    nop                                           ; $4f8c: $00
    ld e, c                                       ; $4f8d: $59
    and b                                         ; $4f8e: $a0
    ld b, b                                       ; $4f8f: $40
    dec e                                         ; $4f90: $1d
    ret nz                                        ; $4f91: $c0

    ld e, $17                                     ; $4f92: $1e $17
    nop                                           ; $4f94: $00
    ld hl, sp-$55                                 ; $4f95: $f8 $ab
    call nc, $1de2                                ; $4f97: $d4 $e2 $1d
    pop de                                        ; $4f9a: $d1
    jr nz, jr_093_4fca                            ; $4f9b: $20 $2d

    nop                                           ; $4f9d: $00
    ldh a, [rHDMA5]                               ; $4f9e: $f0 $55
    nop                                           ; $4fa0: $00
    xor d                                         ; $4fa1: $aa
    ld b, b                                       ; $4fa2: $40

jr_093_4fa3:
    ld [hl], l                                    ; $4fa3: $75
    add b                                         ; $4fa4: $80
    ld a, [$0100]                                 ; $4fa5: $fa $00 $01
    inc bc                                        ; $4fa8: $03
    db $fc                                        ; $4fa9: $fc
    or b                                          ; $4faa: $b0
    ld c, a                                       ; $4fab: $4f
    ld d, d                                       ; $4fac: $52
    rst $28                                       ; $4fad: $ef
    and l                                         ; $4fae: $a5
    nop                                           ; $4faf: $00
    ld a, a                                       ; $4fb0: $7f
    ld a, a                                       ; $4fb1: $7f
    nop                                           ; $4fb2: $00
    ld bc, $2afe                                  ; $4fb3: $01 $fe $2a
    pop de                                        ; $4fb6: $d1
    ld d, h                                       ; $4fb7: $54
    jr nz, jr_093_4fa3                            ; $4fb8: $20 $e9

    ld [hl], h                                    ; $4fba: $74
    halt                                          ; $4fbb: $76
    ld b, $a2                                     ; $4fbc: $06 $a2
    ld e, h                                       ; $4fbe: $5c
    ld d, c                                       ; $4fbf: $51
    xor $d5                                       ; $4fc0: $ee $d5
    nop                                           ; $4fc2: $00
    ld a, [hl+]                                   ; $4fc3: $2a
    db $eb                                        ; $4fc4: $eb
    nop                                           ; $4fc5: $00
    pop af                                        ; $4fc6: $f1
    nop                                           ; $4fc7: $00
    db $ed                                        ; $4fc8: $ed
    ld [de], a                                    ; $4fc9: $12

jr_093_4fca:
    cp $00                                        ; $4fca: $fe $00
    ld bc, $f50a                                  ; $4fcc: $01 $0a $f5
    dec d                                         ; $4fcf: $15
    ld a, [bc]                                    ; $4fd0: $0a
    add d                                         ; $4fd1: $82
    ld [$44b5], sp                                ; $4fd2: $08 $b5 $44
    ld a, d                                       ; $4fd5: $7a
    nop                                           ; $4fd6: $00
    ld d, $09                                     ; $4fd7: $16 $09
    cp d                                          ; $4fd9: $ba
    inc b                                         ; $4fda: $04
    nop                                           ; $4fdb: $00
    ld e, $d3                                     ; $4fdc: $1e $d3
    nop                                           ; $4fde: $00
    add c                                         ; $4fdf: $81
    or b                                          ; $4fe0: $b0
    ld e, c                                       ; $4fe1: $59
    ld a, d                                       ; $4fe2: $7a
    dec b                                         ; $4fe3: $05
    or a                                          ; $4fe4: $b7
    ld [$8d77], sp                                ; $4fe5: $08 $77 $8d
    and b                                         ; $4fe8: $a0
    inc d                                         ; $4fe9: $14
    ld bc, $eb00                                  ; $4fea: $01 $00 $eb
    nop                                           ; $4fed: $00
    sub a                                         ; $4fee: $97
    add sp, $2f                                   ; $4fef: $e8 $2f
    ret nc                                        ; $4ff1: $d0

    cp [hl]                                       ; $4ff2: $be
    inc [hl]                                      ; $4ff3: $34
    nop                                           ; $4ff4: $00
    ld a, a                                       ; $4ff5: $7f
    and b                                         ; $4ff6: $a0
    ld e, a                                       ; $4ff7: $5f
    db $f4                                        ; $4ff8: $f4
    ld [$00d1], sp                                ; $4ff9: $08 $d1 $00
    ld a, d                                       ; $4ffc: $7a
    db $10                                        ; $4ffd: $10
    add b                                         ; $4ffe: $80
    dec [hl]                                      ; $4fff: $35
    ld b, b                                       ; $5000: $40
    ld a, [hl]                                    ; $5001: $7e
    inc l                                         ; $5002: $2c
    ld a, $7f                                     ; $5003: $3e $7f
    cp a                                          ; $5005: $bf
    inc bc                                        ; $5006: $03
    nop                                           ; $5007: $00
    ld a, [$d607]                                 ; $5008: $fa $07 $d6
    dec hl                                        ; $500b: $2b
    xor d                                         ; $500c: $aa
    ld d, a                                       ; $500d: $57
    ld b, a                                       ; $500e: $47
    cp a                                          ; $500f: $bf
    nop                                           ; $5010: $00
    xor l                                         ; $5011: $ad
    cp $f7                                        ; $5012: $fe $f7
    db $fc                                        ; $5014: $fc
    dec c                                         ; $5015: $0d
    cp $f0                                        ; $5016: $fe $f0
    rst $38                                       ; $5018: $ff
    db $10                                        ; $5019: $10
    jr z, @+$01                                   ; $501a: $28 $ff

    dec [hl]                                      ; $501c: $35
    adc b                                         ; $501d: $88
    rlca                                          ; $501e: $07
    rra                                           ; $501f: $1f
    rst $38                                       ; $5020: $ff
    cpl                                           ; $5021: $2f
    rra                                           ; $5022: $1f
    ld [$0f97], sp                                ; $5023: $08 $97 $0f
    ld l, e                                       ; $5026: $6b
    rlca                                          ; $5027: $07
    ld [hl], h                                    ; $5028: $74

Jump_093_5029:
    ld c, $7f                                     ; $5029: $0e $7f
    rst $38                                       ; $502b: $ff
    ld a, [hl]                                    ; $502c: $7e
    nop                                           ; $502d: $00
    rst $38                                       ; $502e: $ff
    ld h, l                                       ; $502f: $65
    rst $38                                       ; $5030: $ff
    ld a, [c]                                     ; $5031: $f2
    rst $38                                       ; $5032: $ff
    ld [$fcfd], a                                 ; $5033: $ea $fd $fc
    nop                                           ; $5036: $00
    ld sp, hl                                     ; $5037: $f9
    sbc d                                         ; $5038: $9a
    rlca                                          ; $5039: $07
    ld c, l                                       ; $503a: $4d
    inc bc                                        ; $503b: $03
    xor e                                         ; $503c: $ab
    ld bc, $00fd                                  ; $503d: $01 $fd $00
    inc bc                                        ; $5040: $03
    cp c                                          ; $5041: $b9
    ld b, a                                       ; $5042: $47
    ld d, e                                       ; $5043: $53
    xor a                                         ; $5044: $af
    add a                                         ; $5045: $87
    ld a, [hl]                                    ; $5046: $7e
    ld a, h                                       ; $5047: $7c
    nop                                           ; $5048: $00
    rst $38                                       ; $5049: $ff
    call nc, Call_000_290f                        ; $504a: $d4 $0f $29
    sbc $a8                                       ; $504d: $de $a8
    rst $38                                       ; $504f: $ff
    ldh a, [$80]                                  ; $5050: $f0 $80
    cp d                                          ; $5052: $ba
    rlca                                          ; $5053: $07
    dec l                                         ; $5054: $2d
    rst $18                                       ; $5055: $df
    ld d, [hl]                                    ; $5056: $56
    xor a                                         ; $5057: $af
    daa                                           ; $5058: $27
    rst $18                                       ; $5059: $df
    ei                                            ; $505a: $fb
    nop                                           ; $505b: $00
    db $fc                                        ; $505c: $fc
    di                                            ; $505d: $f3
    cp $e8                                        ; $505e: $fe $e8
    cp $e2                                        ; $5060: $fe $e2
    db $fd                                        ; $5062: $fd
    ld [hl], l                                    ; $5063: $75
    nop                                           ; $5064: $00
    ld a, [$fc6b]                                 ; $5065: $fa $6b $fc
    ld a, [hl]                                    ; $5068: $7e
    ld hl, sp-$06                                 ; $5069: $f8 $fa
    db $fc                                        ; $506b: $fc
    or d                                          ; $506c: $b2
    nop                                           ; $506d: $00
    rst $08                                       ; $506e: $cf
    ld b, c                                       ; $506f: $41
    add e                                         ; $5070: $83
    ld l, d                                       ; $5071: $6a
    add c                                         ; $5072: $81
    or a                                          ; $5073: $b7
    ret nz                                        ; $5074: $c0

    sbc d                                         ; $5075: $9a
    nop                                           ; $5076: $00
    pop hl                                        ; $5077: $e1
    call z, Call_093_69f3                         ; $5078: $cc $f3 $69
    rst $38                                       ; $507b: $ff
    or a                                          ; $507c: $b7
    rst $38                                       ; $507d: $ff
    ld c, $00                                     ; $507e: $0e $00
    rst $38                                       ; $5080: $ff
    sbc l                                         ; $5081: $9d
    cp $f9                                        ; $5082: $fe $f9
    cp $fd                                        ; $5084: $fe $fd
    cp $d8                                        ; $5086: $fe $d8
    ld [$adff], sp                                ; $5088: $08 $ff $ad
    cp $5a                                        ; $508b: $fe $5a
    ld a, [c]                                     ; $508d: $f2
    rlca                                          ; $508e: $07
    push af                                       ; $508f: $f5
    cp $f9                                        ; $5090: $fe $f9
    ld [bc], a                                    ; $5092: $02
    rst $38                                       ; $5093: $ff
    cp $f9                                        ; $5094: $fe $f9
    db $fd                                        ; $5096: $fd
    rst $38                                       ; $5097: $ff
    ld a, [hl+]                                   ; $5098: $2a
    ld h, [hl]                                    ; $5099: $66
    rlca                                          ; $509a: $07
    ld a, a                                       ; $509b: $7f
    nop                                           ; $509c: $00
    add b                                         ; $509d: $80
    add b                                         ; $509e: $80
    nop                                           ; $509f: $00
    ld e, [hl]                                    ; $50a0: $5e
    rst $38                                       ; $50a1: $ff
    or a                                          ; $50a2: $b7
    ld e, h                                       ; $50a3: $5c
    xor l                                         ; $50a4: $ad
    nop                                           ; $50a5: $00
    ld hl, sp+$56                                 ; $50a6: $f8 $56
    ld hl, sp-$11                                 ; $50a8: $f8 $ef
    ldh a, [$6f]                                  ; $50aa: $f0 $6f
    ldh a, [rBGP]                                 ; $50ac: $f0 $47
    nop                                           ; $50ae: $00
    ld hl, sp-$16                                 ; $50af: $f8 $ea
    push af                                       ; $50b1: $f5
    xor $1f                                       ; $50b2: $ee $1f
    adc e                                         ; $50b4: $8b
    rlca                                          ; $50b5: $07
    ld d, l                                       ; $50b6: $55
    nop                                           ; $50b7: $00
    inc bc                                        ; $50b8: $03
    xor d                                         ; $50b9: $aa
    ld bc, $01f6                                  ; $50ba: $01 $f6 $01
    xor $01                                       ; $50bd: $ee $01
    rst $38                                       ; $50bf: $ff
    adc b                                         ; $50c0: $88
    ld a, b                                       ; $50c1: $78
    nop                                           ; $50c2: $00
    ld h, a                                       ; $50c3: $67
    sbc a                                         ; $50c4: $9f
    adc a                                         ; $50c5: $8f
    ld b, $07                                     ; $50c6: $06 $07
    cp a                                          ; $50c8: $bf
    rst $38                                       ; $50c9: $ff
    ld h, a                                       ; $50ca: $67
    nop                                           ; $50cb: $00
    rst $38                                       ; $50cc: $ff
    ld c, a                                       ; $50cd: $4f
    rst $38                                       ; $50ce: $ff
    ld e, [hl]                                    ; $50cf: $5e
    cp a                                          ; $50d0: $bf
    ld a, $9f                                     ; $50d1: $3e $9f
    and a                                         ; $50d3: $a7
    nop                                           ; $50d4: $00
    rst $38                                       ; $50d5: $ff
    db $eb                                        ; $50d6: $eb
    rst $30                                       ; $50d7: $f7
    jp nc, $fbff                                  ; $50d8: $d2 $ff $fb

    rst $38                                       ; $50db: $ff
    rst $20                                       ; $50dc: $e7
    ld [$c51f], sp                                ; $50dd: $08 $1f $c5
    inc bc                                        ; $50e0: $03
    and c                                         ; $50e1: $a1
    db $eb                                        ; $50e2: $eb
    inc b                                         ; $50e3: $04
    sub d                                         ; $50e4: $92
    db $ed                                        ; $50e5: $ed
    inc b                                         ; $50e6: $04
    ld b, b                                       ; $50e7: $40
    ei                                            ; $50e8: $fb
    ld b, b                                       ; $50e9: $40
    inc b                                         ; $50ea: $04
    rst $38                                       ; $50eb: $ff
    xor b                                         ; $50ec: $a8
    rst $38                                       ; $50ed: $ff
    push de                                       ; $50ee: $d5
    rst $38                                       ; $50ef: $ff
    ld [$ff00], a                                 ; $50f0: $ea $00 $ff
    rst $30                                       ; $50f3: $f7
    ld a, a                                       ; $50f4: $7f
    ld e, [hl]                                    ; $50f5: $5e
    cp a                                          ; $50f6: $bf
    adc $ff                                       ; $50f7: $ce $ff
    sub a                                         ; $50f9: $97
    nop                                           ; $50fa: $00
    ld a, a                                       ; $50fb: $7f
    ld b, a                                       ; $50fc: $47
    cp a                                          ; $50fd: $bf
    xor a                                         ; $50fe: $af
    ld e, a                                       ; $50ff: $5f
    rst $10                                       ; $5100: $d7
    ccf                                           ; $5101: $3f
    ld a, [hl]                                    ; $5102: $7e
    nop                                           ; $5103: $00
    rra                                           ; $5104: $1f
    ld e, [hl]                                    ; $5105: $5e
    ccf                                           ; $5106: $3f
    ld hl, sp+$00                                 ; $5107: $f8 $00
    db $fd                                        ; $5109: $fd
    nop                                           ; $510a: $00
    ld a, a                                       ; $510b: $7f
    nop                                           ; $510c: $00
    add b                                         ; $510d: $80
    xor d                                         ; $510e: $aa
    ld d, l                                       ; $510f: $55
    ld d, h                                       ; $5110: $54
    xor e                                         ; $5111: $ab
    add b                                         ; $5112: $80
    rst $38                                       ; $5113: $ff
    ld d, l                                       ; $5114: $55
    add b                                         ; $5115: $80
    add d                                         ; $5116: $82
    ld c, $3f                                     ; $5117: $0e $3f
    db $fd                                        ; $5119: $fd
    ld a, $da                                     ; $511a: $3e $da
    inc a                                         ; $511c: $3c
    cp a                                          ; $511d: $bf
    ld a, b                                       ; $511e: $78
    nop                                           ; $511f: $00
    ld d, a                                       ; $5120: $57
    ld hl, sp-$45                                 ; $5121: $f8 $bb
    db $f4                                        ; $5123: $f4
    ld a, [hl]                                    ; $5124: $7e
    pop af                                        ; $5125: $f1
    sub l                                         ; $5126: $95
    ld a, [$ae00]                                 ; $5127: $fa $00 $ae
    ld a, a                                       ; $512a: $7f
    sbc a                                         ; $512b: $9f
    rst $38                                       ; $512c: $ff
    ld a, a                                       ; $512d: $7f
    sbc a                                         ; $512e: $9f
    cp a                                          ; $512f: $bf
    rst $38                                       ; $5130: $ff
    nop                                           ; $5131: $00
    xor e                                         ; $5132: $ab
    rst $38                                       ; $5133: $ff
    ld bc, $feff                                  ; $5134: $01 $ff $fe
    ld bc, $0001                                  ; $5137: $01 $01 $00
    nop                                           ; $513a: $00
    cp e                                          ; $513b: $bb
    rst $00                                       ; $513c: $c7
    ld [$8501], a                                 ; $513d: $ea $01 $85
    nop                                           ; $5140: $00
    ld [c], a                                     ; $5141: $e2
    nop                                           ; $5142: $00
    ld b, b                                       ; $5143: $40
    push de                                       ; $5144: $d5
    db $e3                                        ; $5145: $e3
    inc b                                         ; $5146: $04
    ld a, l                                       ; $5147: $7d
    add d                                         ; $5148: $82
    xor d                                         ; $5149: $aa
    ld d, l                                       ; $514a: $55
    ld [de], a                                    ; $514b: $12
    db $fd                                        ; $514c: $fd
    nop                                           ; $514d: $00
    sbc c                                         ; $514e: $99
    cp $58                                        ; $514f: $fe $58
    rst $38                                       ; $5151: $ff
    db $fd                                        ; $5152: $fd
    ld a, a                                       ; $5153: $7f
    and [hl]                                      ; $5154: $a6
    ld a, a                                       ; $5155: $7f
    nop                                           ; $5156: $00
    and e                                         ; $5157: $a3
    ld a, a                                       ; $5158: $7f
    inc sp                                        ; $5159: $33
    rst $38                                       ; $515a: $ff
    ld h, h                                       ; $515b: $64
    rst $38                                       ; $515c: $ff
    push de                                       ; $515d: $d5
    ld a, [$e200]                                 ; $515e: $fa $00 $e2
    db $fd                                        ; $5161: $fd
    ld [hl], b                                    ; $5162: $70
    rst $38                                       ; $5163: $ff
    cp b                                          ; $5164: $b8
    ld a, a                                       ; $5165: $7f
    ld [hl], l                                    ; $5166: $75
    cp a                                          ; $5167: $bf
    ld b, b                                       ; $5168: $40
    rra                                           ; $5169: $1f
    ld e, [hl]                                    ; $516a: $5e
    ld [bc], a                                    ; $516b: $02
    ld c, d                                       ; $516c: $4a
    rst $38                                       ; $516d: $ff
    ld d, e                                       ; $516e: $53
    xor a                                         ; $516f: $af
    and d                                         ; $5170: $a2
    ld e, a                                       ; $5171: $5f
    db $10                                        ; $5172: $10
    ld b, a                                       ; $5173: $47
    cp a                                          ; $5174: $bf
    dec bc                                        ; $5175: $0b
    ld l, h                                       ; $5176: $6c
    ld [de], a                                    ; $5177: $12
    push af                                       ; $5178: $f5
    rst $38                                       ; $5179: $ff
    xor d                                         ; $517a: $aa
    rst $38                                       ; $517b: $ff
    inc b                                         ; $517c: $04
    ld d, h                                       ; $517d: $54
    db $e3                                        ; $517e: $e3
    jp hl                                         ; $517f: $e9


    ld [hl], e                                    ; $5180: $73
    pop af                                        ; $5181: $f1
    ld [hl], b                                    ; $5182: $70
    dec b                                         ; $5183: $05
    ld d, b                                       ; $5184: $50
    add b                                         ; $5185: $80
    nop                                           ; $5186: $00
    sbc [hl]                                      ; $5187: $9e
    ldh [$e3], a                                  ; $5188: $e0 $e3
    db $fc                                        ; $518a: $fc
    add b                                         ; $518b: $80
    ld a, a                                       ; $518c: $7f
    add c                                         ; $518d: $81
    ld [bc], a                                    ; $518e: $02
    db $10                                        ; $518f: $10
    ld h, b                                       ; $5190: $60
    add e                                         ; $5191: $83
    pop bc                                        ; $5192: $c1
    ld e, h                                       ; $5193: $5c
    nop                                           ; $5194: $00
    ld sp, $65c3                                  ; $5195: $31 $c3 $65
    ld a, [$6200]                                 ; $5198: $fa $00 $62
    sbc l                                         ; $519b: $9d
    sub l                                         ; $519c: $95
    ld l, d                                       ; $519d: $6a
    add d                                         ; $519e: $82
    ld a, l                                       ; $519f: $7d
    jp nz, Jump_000_0001                          ; $51a0: $c2 $01 $00

    ld [hl], c                                    ; $51a3: $71
    add d                                         ; $51a4: $82
    xor c                                         ; $51a5: $a9
    jp nc, $fce3                                  ; $51a6: $d2 $e3 $fc

    ld e, h                                       ; $51a9: $5c
    and a                                         ; $51aa: $a7
    nop                                           ; $51ab: $00
    and d                                         ; $51ac: $a2
    ld a, l                                       ; $51ad: $7d

jr_093_51ae:
    push de                                       ; $51ae: $d5
    ld a, [hl+]                                   ; $51af: $2a
    xor d                                         ; $51b0: $aa
    ld d, h                                       ; $51b1: $54
    dec l                                         ; $51b2: $2d
    sub $02                                       ; $51b3: $d6 $02
    rst $38                                       ; $51b5: $ff
    rlca                                          ; $51b6: $07
    db $fc                                        ; $51b7: $fc
    inc bc                                        ; $51b8: $03
    ld a, a                                       ; $51b9: $7f
    add b                                         ; $51ba: $80
    ret nc                                        ; $51bb: $d0

    ld c, $0f                                     ; $51bc: $0e $0f
    ld h, b                                       ; $51be: $60
    ldh a, [$f0]                                  ; $51bf: $f0 $f0
    ld hl, $07f0                                  ; $51c1: $21 $f0 $07
    rst $38                                       ; $51c4: $ff
    nop                                           ; $51c5: $00
    ldh [$9f], a                                  ; $51c6: $e0 $9f
    ld d, [hl]                                    ; $51c8: $56
    nop                                           ; $51c9: $00
    xor c                                         ; $51ca: $a9
    ld l, [hl]                                    ; $51cb: $6e
    sub c                                         ; $51cc: $91
    sub a                                         ; $51cd: $97
    ld l, b                                       ; $51ce: $68
    rst $28                                       ; $51cf: $ef
    db $10                                        ; $51d0: $10
    and b                                         ; $51d1: $a0

jr_093_51d2:
    jr c, @+$61                                   ; $51d2: $38 $5f

    add l                                         ; $51d4: $85
    ld [$0602], sp                                ; $51d5: $08 $02 $06
    inc c                                         ; $51d8: $0c
    ldh a, [rIF]                                  ; $51d9: $f0 $0f
    cp $01                                        ; $51db: $fe $01
    ccf                                           ; $51dd: $3f
    nop                                           ; $51de: $00
    ret nz                                        ; $51df: $c0

    ld e, h                                       ; $51e0: $5c
    inc hl                                        ; $51e1: $23
    sub [hl]                                      ; $51e2: $96
    add hl, hl                                    ; $51e3: $29
    sbc a                                         ; $51e4: $9f
    ldh [rP1], a                                  ; $51e5: $e0 $00
    nop                                           ; $51e7: $00
    rst $38                                       ; $51e8: $ff
    ld a, [hl+]                                   ; $51e9: $2a
    dec e                                         ; $51ea: $1d
    or h                                          ; $51eb: $b4
    rrca                                          ; $51ec: $0f
    ld c, [hl]                                    ; $51ed: $4e
    rst $38                                       ; $51ee: $ff
    dec b                                         ; $51ef: $05
    nop                                           ; $51f0: $00
    ld a, [$c028]                                 ; $51f1: $fa $28 $c0
    ld e, l                                       ; $51f4: $5d
    ldh [rOCPD], a                                ; $51f5: $e0 $6b
    db $f4                                        ; $51f7: $f4
    or $00                                        ; $51f8: $f6 $00
    ld a, a                                       ; $51fa: $7f
    ld d, h                                       ; $51fb: $54
    db $eb                                        ; $51fc: $eb
    xor d                                         ; $51fd: $aa
    db $fd                                        ; $51fe: $fd
    db $f4                                        ; $51ff: $f4
    rst $38                                       ; $5200: $ff
    ld a, [hl]                                    ; $5201: $7e
    nop                                           ; $5202: $00
    cp a                                          ; $5203: $bf
    sub l                                         ; $5204: $95
    ld l, d                                       ; $5205: $6a
    ld c, [hl]                                    ; $5206: $4e
    jr nc, jr_093_51ae                            ; $5207: $30 $a5

    ld a, d                                       ; $5209: $7a
    ld a, h                                       ; $520a: $7c
    nop                                           ; $520b: $00
    cp a                                          ; $520c: $bf
    ld b, d                                       ; $520d: $42
    add c                                         ; $520e: $81
    jr nc, jr_093_51d2                            ; $520f: $30 $c1

    sbc h                                         ; $5211: $9c
    pop hl                                        ; $5212: $e1
    ld sp, hl                                     ; $5213: $f9
    nop                                           ; $5214: $00
    cp $5d                                        ; $5215: $fe $5d
    and d                                         ; $5217: $a2
    ld e, d                                       ; $5218: $5a
    dec h                                         ; $5219: $25
    db $db                                        ; $521a: $db
    cpl                                           ; $521b: $2f
    cp a                                          ; $521c: $bf
    nop                                           ; $521d: $00
    ld b, c                                       ; $521e: $41
    ld a, a                                       ; $521f: $7f
    add b                                         ; $5220: $80
    adc h                                         ; $5221: $8c
    di                                            ; $5222: $f3
    ld l, l                                       ; $5223: $6d
    ei                                            ; $5224: $fb
    push de                                       ; $5225: $d5
    inc b                                         ; $5226: $04
    ei                                            ; $5227: $fb
    ld b, a                                       ; $5228: $47
    cp c                                          ; $5229: $b9
    xor [hl]                                      ; $522a: $ae
    ld d, c                                       ; $522b: $51
    nop                                           ; $522c: $00
    rrca                                          ; $522d: $0f
    ld b, c                                       ; $522e: $41
    cp [hl]                                       ; $522f: $be
    nop                                           ; $5230: $00
    and b                                         ; $5231: $a0
    ld bc, $c138                                  ; $5232: $01 $38 $c1
    adc $f1                                       ; $5235: $ce $f1
    cp $ff                                        ; $5237: $fe $ff
    nop                                           ; $5239: $00
    add b                                         ; $523a: $80
    ld a, a                                       ; $523b: $7f
    ret nc                                        ; $523c: $d0

    ld hl, $39e4                                  ; $523d: $21 $e4 $39
    xor $11                                       ; $5240: $ee $11
    nop                                           ; $5242: $00
    or e                                          ; $5243: $b3
    ld c, h                                       ; $5244: $4c
    ld [bc], a                                    ; $5245: $02
    db $fd                                        ; $5246: $fd
    ld h, b                                       ; $5247: $60
    add b                                         ; $5248: $80
    or h                                          ; $5249: $b4
    ret nz                                        ; $524a: $c0

    ld bc, $f08e                                  ; $524b: $01 $8e $f0
    ld hl, sp-$01                                 ; $524e: $f8 $ff
    and l                                         ; $5250: $a5
    ld e, d                                       ; $5251: $5a
    daa                                           ; $5252: $27
    or [hl]                                       ; $5253: $b6
    rlca                                          ; $5254: $07
    ld b, d                                       ; $5255: $42
    ld a, [c]                                     ; $5256: $f2
    add h                                         ; $5257: $84
    dec b                                         ; $5258: $05
    and c                                         ; $5259: $a1
    rst $38                                       ; $525a: $ff
    db $d3                                        ; $525b: $d3
    rst $38                                       ; $525c: $ff
    inc e                                         ; $525d: $1c
    ld a, [bc]                                    ; $525e: $0a
    add e                                         ; $525f: $83
    add l                                         ; $5260: $85
    ld h, b                                       ; $5261: $60
    inc bc                                        ; $5262: $03
    ld l, [hl]                                    ; $5263: $6e
    sbc a                                         ; $5264: $9f
    inc [hl]                                      ; $5265: $34
    rst $08                                       ; $5266: $cf
    ld c, l                                       ; $5267: $4d
    ld c, $af                                     ; $5268: $0e $af
    ld h, d                                       ; $526a: $62
    inc bc                                        ; $526b: $03
    ld c, l                                       ; $526c: $4d
    push bc                                       ; $526d: $c5
    sub $07                                       ; $526e: $d6 $07
    inc e                                         ; $5270: $1c
    rst $38                                       ; $5271: $ff
    ret nc                                        ; $5272: $d0

    rla                                           ; $5273: $17
    ldh [rNR22], a                                ; $5274: $e0 $17
    ld a, b                                       ; $5276: $78
    ldh a, [rTAC]                                 ; $5277: $f0 $07
    ld bc, $fdf2                                  ; $5279: $01 $f2 $fd
    ld l, b                                       ; $527c: $68
    rst $38                                       ; $527d: $ff
    or l                                          ; $527e: $b5
    ld a, a                                       ; $527f: $7f
    ld a, $c2                                     ; $5280: $3e $c2
    inc b                                         ; $5282: $04
    ld b, b                                       ; $5283: $40
    rst $38                                       ; $5284: $ff
    ld d, [hl]                                    ; $5285: $56
    nop                                           ; $5286: $00
    ld hl, sp+$07                                 ; $5287: $f8 $07
    jp nz, Jump_093_5b3f                          ; $5289: $c2 $3f $5b

    and a                                         ; $528c: $a7
    ld [$03fc], sp                                ; $528d: $08 $fc $03
    ld e, l                                       ; $5290: $5d
    cp d                                          ; $5291: $ba
    ld b, b                                       ; $5292: $40
    inc b                                         ; $5293: $04
    ld bc, $d52a                                  ; $5294: $01 $2a $d5
    nop                                           ; $5297: $00
    and l                                         ; $5298: $a5
    ld [bc], a                                    ; $5299: $02
    dec sp                                        ; $529a: $3b
    ret nz                                        ; $529b: $c0

    xor c                                         ; $529c: $a9
    cp $02                                        ; $529d: $fe $02
    db $fd                                        ; $529f: $fd
    ld [bc], a                                    ; $52a0: $02
    ld sp, hl                                     ; $52a1: $f9
    ld b, $ef                                     ; $52a2: $06 $ef
    db $10                                        ; $52a4: $10
    push af                                       ; $52a5: $f5
    ld a, [bc]                                    ; $52a6: $0a
    sub [hl]                                      ; $52a7: $96
    dec b                                         ; $52a8: $05
    nop                                           ; $52a9: $00
    ld [$2cd3], sp                                ; $52aa: $08 $d3 $2c
    ld [$d01f], a                                 ; $52ad: $ea $1f $d0
    inc d                                         ; $52b0: $14
    add hl, hl                                    ; $52b1: $29
    or l                                          ; $52b2: $b5
    ld c, d                                       ; $52b3: $4a
    nop                                           ; $52b4: $00
    rst $20                                       ; $52b5: $e7
    ld [$f3cc], sp                                ; $52b6: $08 $cc $f3
    ei                                            ; $52b9: $fb
    inc d                                         ; $52ba: $14
    ld a, [c]                                     ; $52bb: $f2
    dec l                                         ; $52bc: $2d
    nop                                           ; $52bd: $00
    sbc c                                         ; $52be: $99
    ld h, [hl]                                    ; $52bf: $66
    push af                                       ; $52c0: $f5
    ld a, [bc]                                    ; $52c1: $0a
    ld c, d                                       ; $52c2: $4a
    cp a                                          ; $52c3: $bf
    push hl                                       ; $52c4: $e5
    ld a, [hl-]                                   ; $52c5: $3a
    ld a, [bc]                                    ; $52c6: $0a
    dec hl                                        ; $52c7: $2b
    ld d, h                                       ; $52c8: $54
    ld [hl], h                                    ; $52c9: $74
    add b                                         ; $52ca: $80
    ld a, [$5402]                                 ; $52cb: $fa $02 $54
    db $10                                        ; $52ce: $10
    inc l                                         ; $52cf: $2c
    and $20                                       ; $52d0: $e6 $20
    ld sp, hl                                     ; $52d2: $f9
    pop af                                        ; $52d3: $f1
    ld a, [de]                                    ; $52d4: $1a
    dec b                                         ; $52d5: $05
    or $ff                                        ; $52d6: $f6 $ff
    ld sp, hl                                     ; $52d8: $f9
    db $fc                                        ; $52d9: $fc
    rst $30                                       ; $52da: $f7
    inc d                                         ; $52db: $14
    db $fc                                        ; $52dc: $fc
    ld a, e                                       ; $52dd: $7b
    rst $38                                       ; $52de: $ff
    and h                                         ; $52df: $a4
    rrca                                          ; $52e0: $0f
    rst $38                                       ; $52e1: $ff
    sbc b                                         ; $52e2: $98
    nop                                           ; $52e3: $00
    ld a, $ff                                     ; $52e4: $3e $ff
    nop                                           ; $52e6: $00
    ld e, [hl]                                    ; $52e7: $5e
    rst $38                                       ; $52e8: $ff
    cp a                                          ; $52e9: $bf
    ld a, a                                       ; $52ea: $7f
    ld e, a                                       ; $52eb: $5f
    rst $38                                       ; $52ec: $ff
    ld e, a                                       ; $52ed: $5f
    xor a                                         ; $52ee: $af
    ld [de], a                                    ; $52ef: $12
    ld l, b                                       ; $52f0: $68
    cp a                                          ; $52f1: $bf
    or l                                          ; $52f2: $b5
    ret nz                                        ; $52f3: $c0

    ld [bc], a                                    ; $52f4: $02
    jp z, $e0f5                                   ; $52f5: $ca $f5 $e0

    rrca                                          ; $52f8: $0f
    rst $28                                       ; $52f9: $ef
    nop                                           ; $52fa: $00
    nop                                           ; $52fb: $00
    add c                                         ; $52fc: $81
    ld a, [hl]                                    ; $52fd: $7e
    ld a, h                                       ; $52fe: $7c
    db $f4                                        ; $52ff: $f4
    ld a, a                                       ; $5300: $7f

jr_093_5301:
    db $f4                                        ; $5301: $f4
    di                                            ; $5302: $f3
    jr nz, jr_093_5301                            ; $5303: $20 $fc

    ld a, [$0114]                                 ; $5305: $fa $14 $01
    ld sp, hl                                     ; $5308: $f9
    cp $7d                                        ; $5309: $fe $7d
    cp $7f                                        ; $530b: $fe $7f
    nop                                           ; $530d: $00
    cp $9f                                        ; $530e: $fe $9f
    cpl                                           ; $5310: $2f
    xor a                                         ; $5311: $af
    ld a, a                                       ; $5312: $7f
    xor a                                         ; $5313: $af
    ld a, a                                       ; $5314: $7f
    ccf                                           ; $5315: $3f
    nop                                           ; $5316: $00
    rst $38                                       ; $5317: $ff
    cp $3f                                        ; $5318: $fe $3f
    cp [hl]                                       ; $531a: $be
    ld a, a                                       ; $531b: $7f
    cp $7f                                        ; $531c: $fe $7f
    ccf                                           ; $531e: $3f
    ld a, [bc]                                    ; $531f: $0a
    ld a, a                                       ; $5320: $7f
    ld a, l                                       ; $5321: $7d
    cp $ff                                        ; $5322: $fe $ff
    sbc [hl]                                      ; $5324: $9e
    ld [bc], a                                    ; $5325: $02
    cp $3e                                        ; $5326: $fe $3e
    ld [bc], a                                    ; $5328: $02
    add b                                         ; $5329: $80
    xor e                                         ; $532a: $ab
    sub b                                         ; $532b: $90
    ld [de], a                                    ; $532c: $12
    ld a, a                                       ; $532d: $7f
    ld bc, $3f00                                  ; $532e: $01 $00 $3f
    ld l, $04                                     ; $5331: $2e $04
    ld d, h                                       ; $5333: $54

jr_093_5334:
    ld [hl], b                                    ; $5334: $70
    rlca                                          ; $5335: $07
    db $10                                        ; $5336: $10
    ld a, [bc]                                    ; $5337: $0a
    nop                                           ; $5338: $00
    xor d                                         ; $5339: $aa
    ld d, l                                       ; $533a: $55
    add hl, hl                                    ; $533b: $29
    ret nz                                        ; $533c: $c0

    cp $00                                        ; $533d: $fe $00
    add [hl]                                      ; $533f: $86
    ld a, c                                       ; $5340: $79
    ld b, h                                       ; $5341: $44
    pop bc                                        ; $5342: $c1
    ld l, [hl]                                    ; $5343: $6e
    ld b, $15                                     ; $5344: $06 $15
    db $eb                                        ; $5346: $eb
    ld bc, $0786                                  ; $5347: $01 $86 $07
    sub l                                         ; $534a: $95
    ld l, d                                       ; $534b: $6a
    add h                                         ; $534c: $84
    ld b, b                                       ; $534d: $40
    inc b                                         ; $534e: $04
    ld b, b                                       ; $534f: $40
    dec b                                         ; $5350: $05
    nop                                           ; $5351: $00
    ld c, [hl]                                    ; $5352: $4e
    dec c                                         ; $5353: $0d
    nop                                           ; $5354: $00
    ld a, [de]                                    ; $5355: $1a
    db $e4                                        ; $5356: $e4
    nop                                           ; $5357: $00
    ld [bc], a                                    ; $5358: $02
    rst $38                                       ; $5359: $ff
    ld d, l                                       ; $535a: $55
    xor e                                         ; $535b: $ab
    xor $11                                       ; $535c: $ee $11
    dec de                                        ; $535e: $1b
    jr nz, jr_093_5361                            ; $535f: $20 $00

jr_093_5361:
    ld h, h                                       ; $5361: $64
    db $10                                        ; $5362: $10
    sub d                                         ; $5363: $92
    ld l, h                                       ; $5364: $6c
    ccf                                           ; $5365: $3f
    ret nz                                        ; $5366: $c0

    adc d                                         ; $5367: $8a
    dec b                                         ; $5368: $05
    nop                                           ; $5369: $00
    ld d, b                                       ; $536a: $50
    rst $38                                       ; $536b: $ff
    inc bc                                        ; $536c: $03
    db $fc                                        ; $536d: $fc
    and l                                         ; $536e: $a5
    ld e, d                                       ; $536f: $5a
    ld e, d                                       ; $5370: $5a
    dec b                                         ; $5371: $05
    nop                                           ; $5372: $00
    xor e                                         ; $5373: $ab
    nop                                           ; $5374: $00
    ld e, c                                       ; $5375: $59
    nop                                           ; $5376: $00
    ld [c], a                                     ; $5377: $e2
    dec e                                         ; $5378: $1d
    cp d                                          ; $5379: $ba
    ld b, a                                       ; $537a: $47
    nop                                           ; $537b: $00
    or $08                                        ; $537c: $f6 $08
    ld e, e                                       ; $537e: $5b
    inc l                                         ; $537f: $2c
    rst $38                                       ; $5380: $ff
    rrca                                          ; $5381: $0f
    add b                                         ; $5382: $80
    ld a, a                                       ; $5383: $7f
    inc b                                         ; $5384: $04
    cp $ff                                        ; $5385: $fe $ff
    sbc d                                         ; $5387: $9a
    rst $20                                       ; $5388: $e7
    ld a, [c]                                     ; $5389: $f2
    ld b, d                                       ; $538a: $42
    ld bc, $0e01                                  ; $538b: $01 $01 $0e
    nop                                           ; $538e: $00
    call nz, Call_000_370f                        ; $538f: $c4 $0f $37
    rst $08                                       ; $5392: $cf
    nop                                           ; $5393: $00
    rst $38                                       ; $5394: $ff
    xor c                                         ; $5395: $a9
    ret nc                                        ; $5396: $d0

    db $10                                        ; $5397: $10
    sub [hl]                                      ; $5398: $96
    add sp, -$30                                  ; $5399: $e8 $d0
    ld a, b                                       ; $539b: $78
    inc bc                                        ; $539c: $03
    ld d, c                                       ; $539d: $51
    add h                                         ; $539e: $84
    xor c                                         ; $539f: $a9
    ld b, h                                       ; $53a0: $44
    nop                                           ; $53a1: $00
    rlca                                          ; $53a2: $07
    ld hl, sp+$00                                 ; $53a3: $f8 $00
    rst $38                                       ; $53a5: $ff
    inc b                                         ; $53a6: $04
    jr jr_093_5334                                ; $53a7: $18 $8b

    inc e                                         ; $53a9: $1c
    ld a, [bc]                                    ; $53aa: $0a
    db $ec                                        ; $53ab: $ec
    rra                                           ; $53ac: $1f
    adc l                                         ; $53ad: $8d
    di                                            ; $53ae: $f3
    ld b, b                                       ; $53af: $40
    inc c                                         ; $53b0: $0c
    rst $30                                       ; $53b1: $f7
    ld b, c                                       ; $53b2: $41
    rlca                                          ; $53b3: $07
    add hl, sp                                    ; $53b4: $39
    ld [bc], a                                    ; $53b5: $02
    ld b, b                                       ; $53b6: $40
    ld l, $51                                     ; $53b7: $2e $51
    call nc, $a96b                                ; $53b9: $d4 $6b $a9
    ld a, b                                       ; $53bc: $78
    rlca                                          ; $53bd: $07
    db $eb                                        ; $53be: $eb
    nop                                           ; $53bf: $00
    inc e                                         ; $53c0: $1c
    ret                                           ; $53c1: $c9


    ld e, $fc                                     ; $53c2: $1e $fc
    rrca                                          ; $53c4: $0f
    rst $30                                       ; $53c5: $f7
    rrca                                          ; $53c6: $0f
    ld e, [hl]                                    ; $53c7: $5e
    ld b, b                                       ; $53c8: $40
    cp l                                          ; $53c9: $bd
    add b                                         ; $53ca: $80
    dec e                                         ; $53cb: $1d
    ld bc, $6206                                  ; $53cc: $01 $06 $62
    add a                                         ; $53cf: $87
    ld e, e                                       ; $53d0: $5b
    and a                                         ; $53d1: $a7
    ld [$fa85], sp                                ; $53d2: $08 $85 $fa
    ei                                            ; $53d5: $fb
    inc b                                         ; $53d6: $04
    ldh [$0e], a                                  ; $53d7: $e0 $0e
    rrca                                          ; $53d9: $0f
    ldh a, [$87]                                  ; $53da: $f0 $87
    ld bc, $5308                                  ; $53dc: $01 $08 $53
    adc h                                         ; $53df: $8c
    adc d                                         ; $53e0: $8a
    rst $38                                       ; $53e1: $ff
    db $fd                                        ; $53e2: $fd
    inc bc                                        ; $53e3: $03
    db $10                                        ; $53e4: $10
    ld e, $00                                     ; $53e5: $1e $00
    nop                                           ; $53e7: $00
    rst $38                                       ; $53e8: $ff
    and l                                         ; $53e9: $a5
    ld e, a                                       ; $53ea: $5f
    db $d3                                        ; $53eb: $d3
    cpl                                           ; $53ec: $2f
    ld a, [$0005]                                 ; $53ed: $fa $05 $00
    ld d, l                                       ; $53f0: $55
    xor d                                         ; $53f1: $aa
    or b                                          ; $53f2: $b0
    ld c, a                                       ; $53f3: $4f
    ld l, $d1                                     ; $53f4: $2e $d1
    sub l                                         ; $53f6: $95
    ld [$0000], a                                 ; $53f7: $ea $00 $00
    rst $38                                       ; $53fa: $ff
    or l                                          ; $53fb: $b5
    jp z, $e01a                                   ; $53fc: $ca $1a $e0

    inc [hl]                                      ; $53ff: $34
    ret nz                                        ; $5400: $c0

    nop                                           ; $5401: $00
    ld l, b                                       ; $5402: $68
    sub a                                         ; $5403: $97
    ld c, e                                       ; $5404: $4b
    ccf                                           ; $5405: $3f
    and l                                         ; $5406: $a5
    ld e, a                                       ; $5407: $5f
    ld e, l                                       ; $5408: $5d
    and d                                         ; $5409: $a2
    ld bc, $ff30                                  ; $540a: $01 $30 $ff
    ld c, d                                       ; $540d: $4a
    cp l                                          ; $540e: $bd
    xor a                                         ; $540f: $af
    ld d, b                                       ; $5410: $50
    ld a, a                                       ; $5411: $7f
    sbc h                                         ; $5412: $9c
    nop                                           ; $5413: $00
    inc b                                         ; $5414: $04
    ld de, $ade0                                  ; $5415: $11 $e0 $ad
    ldh a, [$7a]                                  ; $5418: $f0 $7a
    ld a, b                                       ; $541a: $78

jr_093_541b:
    rlca                                          ; $541b: $07
    push de                                       ; $541c: $d5
    ld a, [hl+]                                   ; $541d: $2a
    jr nz, jr_093_541b                            ; $541e: $20 $fb

    inc b                                         ; $5420: $04
    adc [hl]                                      ; $5421: $8e
    inc l                                         ; $5422: $2c
    ld [hl], a                                    ; $5423: $77
    rst $38                                       ; $5424: $ff
    ldh [$1f], a                                  ; $5425: $e0 $1f
    ld a, c                                       ; $5427: $79
    nop                                           ; $5428: $00
    ld b, $1a                                     ; $5429: $06 $1a
    rlca                                          ; $542b: $07
    and e                                         ; $542c: $a3
    ld e, a                                       ; $542d: $5f
    ld e, a                                       ; $542e: $5f
    and e                                         ; $542f: $a3
    db $fc                                        ; $5430: $fc
    jr nz, jr_093_5436                            ; $5431: $20 $03

    cp a                                          ; $5433: $bf
    add d                                         ; $5434: $82
    dec b                                         ; $5435: $05

jr_093_5436:
    dec hl                                        ; $5436: $2b
    push de                                       ; $5437: $d5
    ld b, h                                       ; $5438: $44
    inc bc                                        ; $5439: $03
    ld [$0100], a                                 ; $543a: $ea $00 $01
    ld e, l                                       ; $543d: $5d

jr_093_543e:
    and e                                         ; $543e: $a3
    or e                                          ; $543f: $b3
    db $fd                                        ; $5440: $fd
    ld bc, $c5fe                                  ; $5441: $01 $fe $c5
    nop                                           ; $5444: $00
    jr c, jr_093_5498                             ; $5445: $38 $51

    cp $dd                                        ; $5447: $fe $dd
    ccf                                           ; $5449: $3f
    ldh [$1f], a                                  ; $544a: $e0 $1f
    ld a, a                                       ; $544c: $7f
    ld a, [de]                                    ; $544d: $1a
    nop                                           ; $544e: $00
    ld e, a                                       ; $544f: $5f
    and b                                         ; $5450: $a0
    nop                                           ; $5451: $00
    ld l, $be                                     ; $5452: $2e $be
    ld e, h                                       ; $5454: $5c
    and h                                         ; $5455: $a4
    ld d, c                                       ; $5456: $51
    rlca                                          ; $5457: $07
    jp Jump_000_3c00                              ; $5458: $c3 $00 $3c


    and l                                         ; $545b: $a5
    ld e, d                                       ; $545c: $5a
    cp $01                                        ; $545d: $fe $01
    dec bc                                        ; $545f: $0b
    ldh a, [rNR11]                                ; $5460: $f0 $11
    nop                                           ; $5462: $00
    ld [$0d82], sp                                ; $5463: $08 $82 $0d
    and $09                                       ; $5466: $e6 $09
    rst $30                                       ; $5468: $f7
    rst $38                                       ; $5469: $ff
    xor d                                         ; $546a: $aa
    nop                                           ; $546b: $00
    ld d, l                                       ; $546c: $55
    ld [hl], d                                    ; $546d: $72
    add c                                         ; $546e: $81
    ld l, $d1                                     ; $546f: $2e $d1
    push hl                                       ; $5471: $e5
    ld a, [$0052]                                 ; $5472: $fa $52 $00
    xor l                                         ; $5475: $ad
    cpl                                           ; $5476: $2f
    db $10                                        ; $5477: $10
    rst $18                                       ; $5478: $df
    ld bc, $f3cd                                  ; $5479: $01 $cd $f3
    db $eb                                        ; $547c: $eb
    nop                                           ; $547d: $00
    inc d                                         ; $547e: $14
    rst $10                                       ; $547f: $d7
    jr z, jr_093_543e                             ; $5480: $28 $bc

    nop                                           ; $5482: $00
    ld sp, hl                                     ; $5483: $f9
    nop                                           ; $5484: $00
    xor [hl]                                      ; $5485: $ae
    nop                                           ; $5486: $00
    ld d, c                                       ; $5487: $51
    call nc, $a92b                                ; $5488: $d4 $2b $a9
    ld a, [hl]                                    ; $548b: $7e
    ld c, a                                       ; $548c: $4f
    ldh a, [rNR22]                                ; $548d: $f0 $17
    db $10                                        ; $548f: $10
    ldh [$d3], a                                  ; $5490: $e0 $d3
    inc a                                         ; $5492: $3c
    ret nc                                        ; $5493: $d0

    ld a, $ed                                     ; $5494: $3e $ed
    ld [de], a                                    ; $5496: $12
    xor d                                         ; $5497: $aa

jr_093_5498:
    ld d, l                                       ; $5498: $55
    add b                                         ; $5499: $80
    add b                                         ; $549a: $80
    ld a, [hl-]                                   ; $549b: $3a
    xor a                                         ; $549c: $af
    ld e, d                                       ; $549d: $5a
    ld c, l                                       ; $549e: $4d
    cp a                                          ; $549f: $bf
    xor d                                         ; $54a0: $aa
    ld d, a                                       ; $54a1: $57
    cp l                                          ; $54a2: $bd
    nop                                           ; $54a3: $00
    ld b, d                                       ; $54a4: $42
    xor [hl]                                      ; $54a5: $ae
    ld bc, $8001                                  ; $54a6: $01 $01 $80
    ld [hl-], a                                   ; $54a9: $32
    pop bc                                        ; $54aa: $c1
    sub a                                         ; $54ab: $97
    nop                                           ; $54ac: $00
    ld l, b                                       ; $54ad: $68
    ld d, d                                       ; $54ae: $52
    cp l                                          ; $54af: $bd
    add l                                         ; $54b0: $85
    nop                                           ; $54b1: $00
    dec [hl]                                      ; $54b2: $35
    ld a, [bc]                                    ; $54b3: $0a
    ld c, e                                       ; $54b4: $4b
    nop                                           ; $54b5: $00
    cp a                                          ; $54b6: $bf
    xor d                                         ; $54b7: $aa
    ld d, l                                       ; $54b8: $55
    ld a, l                                       ; $54b9: $7d
    ld [bc], a                                    ; $54ba: $02
    ld d, l                                       ; $54bb: $55
    ld c, $76                                     ; $54bc: $0e $76
    nop                                           ; $54be: $00
    adc a                                         ; $54bf: $8f
    adc a                                         ; $54c0: $8f
    ld [hl], a                                    ; $54c1: $77
    sub e                                         ; $54c2: $93
    ld a, h                                       ; $54c3: $7c
    ld d, h                                       ; $54c4: $54
    cp a                                          ; $54c5: $bf
    ld a, [hl-]                                   ; $54c6: $3a
    db $10                                        ; $54c7: $10
    rst $38                                       ; $54c8: $ff
    ld a, d                                       ; $54c9: $7a
    push bc                                       ; $54ca: $c5
    and d                                         ; $54cb: $a2
    add hl, hl                                    ; $54cc: $29
    xor b                                         ; $54cd: $a8
    ld d, a                                       ; $54ce: $57
    ld d, [hl]                                    ; $54cf: $56
    xor b                                         ; $54d0: $a8
    inc h                                         ; $54d1: $24
    xor e                                         ; $54d2: $ab
    call c, $3972                                 ; $54d3: $dc $72 $39
    ld a, [de]                                    ; $54d6: $1a
    db $e4                                        ; $54d7: $e4
    ld [hl], d                                    ; $54d8: $72
    ld e, c                                       ; $54d9: $59
    ld e, [hl]                                    ; $54da: $5e
    and c                                         ; $54db: $a1
    nop                                           ; $54dc: $00
    xor c                                         ; $54dd: $a9
    ld d, [hl]                                    ; $54de: $56
    ld [hl], l                                    ; $54df: $75
    ld a, [bc]                                    ; $54e0: $0a
    ld l, $01                                     ; $54e1: $2e $01
    pop de                                        ; $54e3: $d1
    nop                                           ; $54e4: $00
    nop                                           ; $54e5: $00
    dec de                                        ; $54e6: $1b
    ldh [$aa], a                                  ; $54e7: $e0 $aa
    ld d, l                                       ; $54e9: $55
    ret nz                                        ; $54ea: $c0

    ccf                                           ; $54eb: $3f
    ld bc, $00ff                                  ; $54ec: $01 $ff $00
    call nc, Call_093_77ab                        ; $54ef: $d4 $ab $77
    add b                                         ; $54f2: $80
    and c                                         ; $54f3: $a1
    ld b, b                                       ; $54f4: $40
    ld l, e                                       ; $54f5: $6b
    inc d                                         ; $54f6: $14
    ld b, $57                                     ; $54f7: $06 $57
    xor b                                         ; $54f9: $a8
    adc d                                         ; $54fa: $8a
    ld a, l                                       ; $54fb: $7d
    ld hl, $020a                                  ; $54fc: $21 $0a $02
    ld [hl], d                                    ; $54ff: $72
    add hl, bc                                    ; $5500: $09
    ld c, c                                       ; $5501: $49
    nop                                           ; $5502: $00
    cp [hl]                                       ; $5503: $be
    db $fc                                        ; $5504: $fc
    rrca                                          ; $5505: $0f
    ld [hl], a                                    ; $5506: $77
    adc a                                         ; $5507: $8f

Call_093_5508:
    add a                                         ; $5508: $87
    nop                                           ; $5509: $00
    ld b, d                                       ; $550a: $42
    jr nc, @-$7d                                  ; $550b: $30 $81

    ld a, [$07e4]                                 ; $550d: $fa $e4 $07
    ld [hl], d                                    ; $5510: $72
    add hl, hl                                    ; $5511: $29
    cp $00                                        ; $5512: $fe $00
    xor a                                         ; $5514: $af
    ld d, b                                       ; $5515: $50
    sub b                                         ; $5516: $90
    ld [hl], b                                    ; $5517: $70
    cpl                                           ; $5518: $2f
    rst $28                                       ; $5519: $ef
    ld d, b                                       ; $551a: $50
    or [hl]                                       ; $551b: $b6
    rlca                                          ; $551c: $07
    nop                                           ; $551d: $00
    ld l, $d0                                     ; $551e: $2e $d0
    ld d, l                                       ; $5520: $55
    ld [bc], a                                    ; $5521: $02
    ld bc, $01bf                                  ; $5522: $01 $bf $01
    ret                                           ; $5525: $c9


    ccf                                           ; $5526: $3f
    dec [hl]                                      ; $5527: $35
    ld [hl], b                                    ; $5528: $70
    daa                                           ; $5529: $27
    ld l, a                                       ; $552a: $6f
    ld [bc], a                                    ; $552b: $02
    add b                                         ; $552c: $80
    sub l                                         ; $552d: $95
    ld [$fd42], a                                 ; $552e: $ea $42 $fd
    xor b                                         ; $5531: $a8
    ld l, b                                       ; $5532: $68
    ld b, $50                                     ; $5533: $06 $50
    nop                                           ; $5535: $00
    xor a                                         ; $5536: $af
    xor b                                         ; $5537: $a8
    ld d, a                                       ; $5538: $57
    ld e, l                                       ; $5539: $5d
    and e                                         ; $553a: $a3
    ld sp, hl                                     ; $553b: $f9
    inc bc                                        ; $553c: $03
    push de                                       ; $553d: $d5
    nop                                           ; $553e: $00
    ld a, [hl+]                                   ; $553f: $2a
    xor $10                                       ; $5540: $ee $10
    ldh [rP1], a                                  ; $5542: $e0 $00
    jp nz, $d500                                  ; $5544: $c2 $00 $d5

    jr @+$04                                      ; $5547: $18 $02

    ld [$7f01], a                                 ; $5549: $ea $01 $7f
    inc c                                         ; $554c: $0c
    ret nz                                        ; $554d: $c0

    dec l                                         ; $554e: $2d
    db $fd                                        ; $554f: $fd
    ld [bc], a                                    ; $5550: $02
    xor e                                         ; $5551: $ab
    ld bc, $0554                                  ; $5552: $01 $54 $05
    ld [bc], a                                    ; $5555: $02
    xor b                                         ; $5556: $a8
    inc bc                                        ; $5557: $03
    ld l, a                                       ; $5558: $6f
    add b                                         ; $5559: $80

jr_093_555a:
    ld [hl], b                                    ; $555a: $70
    cpl                                           ; $555b: $2f
    nop                                           ; $555c: $00
    xor [hl]                                      ; $555d: $ae
    ld d, c                                       ; $555e: $51
    sbc $01                                       ; $555f: $de $01
    jr nz, jr_093_5582                            ; $5561: $20 $1f

    sub $29                                       ; $5563: $d6 $29
    ld [bc], a                                    ; $5565: $02
    push de                                       ; $5566: $d5
    nop                                           ; $5567: $00
    ld [$d500], a                                 ; $5568: $ea $00 $d5
    jr z, jr_093_5571                             ; $556b: $28 $04

    nop                                           ; $556d: $00
    nop                                           ; $556e: $00
    add d                                         ; $556f: $82
    xor a                                         ; $5570: $af

jr_093_5571:
    inc c                                         ; $5571: $0c
    push af                                       ; $5572: $f5
    inc bc                                        ; $5573: $03
    xor l                                         ; $5574: $ad
    ld d, e                                       ; $5575: $53
    ld bc, $04ba                                  ; $5576: $01 $ba $04
    dec b                                         ; $5579: $05
    ld [hl+], a                                   ; $557a: $22
    ld a, [$c8a8]                                 ; $557b: $fa $a8 $c8
    inc c                                         ; $557e: $0c
    rst $38                                       ; $557f: $ff
    ld d, [hl]                                    ; $5580: $56
    xor c                                         ; $5581: $a9

jr_093_5582:
    ld h, b                                       ; $5582: $60
    ld [$80fe], sp                                ; $5583: $08 $fe $80
    ld h, b                                       ; $5586: $60
    nop                                           ; $5587: $00
    add hl, bc                                    ; $5588: $09
    ld b, $44                                     ; $5589: $06 $44
    rrca                                          ; $558b: $0f
    and [hl]                                      ; $558c: $a6
    ld e, a                                       ; $558d: $5f
    ld a, d                                       ; $558e: $7a
    nop                                           ; $558f: $00
    add l                                         ; $5590: $85
    or a                                          ; $5591: $b7
    ld c, b                                       ; $5592: $48
    ld a, a                                       ; $5593: $7f
    add b                                         ; $5594: $80
    cp a                                          ; $5595: $bf
    ld b, b                                       ; $5596: $40
    ld d, [hl]                                    ; $5597: $56
    db $10                                        ; $5598: $10
    xor c                                         ; $5599: $a9
    cp l                                          ; $559a: $bd
    ld b, d                                       ; $559b: $42
    rst $18                                       ; $559c: $df
    inc c                                         ; $559d: $0c
    ld [hl], a                                    ; $559e: $77
    adc b                                         ; $559f: $88
    and b                                         ; $55a0: $a0
    nop                                           ; $55a1: $00
    nop                                           ; $55a2: $00
    ld d, l                                       ; $55a3: $55
    ld [$000a], sp                                ; $55a4: $08 $0a $00
    ld e, e                                       ; $55a7: $5b
    inc b                                         ; $55a8: $04
    and c                                         ; $55a9: $a1
    ld b, b                                       ; $55aa: $40
    add b                                         ; $55ab: $80
    db $10                                        ; $55ac: $10
    jr jr_093_5604                                ; $55ad: $18 $55

    nop                                           ; $55af: $00
    ld [hl+], a                                   ; $55b0: $22
    ld bc, $0090                                  ; $55b1: $01 $90 $00
    inc a                                         ; $55b4: $3c
    stop                                          ; $55b5: $10 $00
    ld h, l                                       ; $55b7: $65
    add d                                         ; $55b8: $82
    rst $38                                       ; $55b9: $ff
    inc c                                         ; $55ba: $0c
    ld [hl], l                                    ; $55bb: $75
    adc d                                         ; $55bc: $8a
    ld bc, $0000                                  ; $55bd: $01 $00 $00
    ld h, [hl]                                    ; $55c0: $66
    add b                                         ; $55c1: $80
    ld bc, $4a00                                  ; $55c2: $01 $00 $4a
    jr nc, jr_093_555a                            ; $55c5: $30 $93

    inc c                                         ; $55c7: $0c
    add b                                         ; $55c8: $80
    rrca                                          ; $55c9: $0f
    dec c                                         ; $55ca: $0d
    ld e, a                                       ; $55cb: $5f
    and b                                         ; $55cc: $a0
    xor e                                         ; $55cd: $ab
    db $10                                        ; $55ce: $10
    rla                                           ; $55cf: $17
    nop                                           ; $55d0: $00
    dec hl                                        ; $55d1: $2b
    inc c                                         ; $55d2: $0c
    nop                                           ; $55d3: $00
    sub e                                         ; $55d4: $93
    nop                                           ; $55d5: $00
    xor e                                         ; $55d6: $ab
    jr nc, jr_093_55e9                            ; $55d7: $30 $10

    db $f4                                        ; $55d9: $f4
    ld bc, $aaa0                                  ; $55da: $01 $a0 $aa
    ld bc, $5504                                  ; $55dd: $01 $04 $55
    nop                                           ; $55e0: $00
    xor [hl]                                      ; $55e1: $ae
    nop                                           ; $55e2: $00
    ld d, a                                       ; $55e3: $57
    and b                                         ; $55e4: $a0
    cpl                                           ; $55e5: $2f
    dec c                                         ; $55e6: $0d
    db $10                                        ; $55e7: $10
    ld d, l                                       ; $55e8: $55

jr_093_55e9:
    xor d                                         ; $55e9: $aa
    cp l                                          ; $55ea: $bd
    sub b                                         ; $55eb: $90
    nop                                           ; $55ec: $00
    ld [hl], l                                    ; $55ed: $75
    nop                                           ; $55ee: $00
    ld [$4004], a                                 ; $55ef: $ea $04 $40
    ld [hl], l                                    ; $55f2: $75
    sub b                                         ; $55f3: $90
    db $10                                        ; $55f4: $10
    ld a, [$d505]                                 ; $55f5: $fa $05 $d5
    ld [bc], a                                    ; $55f8: $02
    xor d                                         ; $55f9: $aa
    ld bc, $5504                                  ; $55fa: $01 $04 $55
    add b                                         ; $55fd: $80
    xor d                                         ; $55fe: $aa
    nop                                           ; $55ff: $00
    ld d, l                                       ; $5600: $55
    jr nz, jr_093_5613                            ; $5601: $20 $10

    push de                                       ; $5603: $d5

jr_093_5604:
    ld a, [hl+]                                   ; $5604: $2a
    ld b, c                                       ; $5605: $41
    ld l, e                                       ; $5606: $6b
    ret nc                                        ; $5607: $d0

    ld bc, $006b                                  ; $5608: $01 $6b $00
    cp a                                          ; $560b: $bf
    nop                                           ; $560c: $00
    ld d, a                                       ; $560d: $57
    or b                                          ; $560e: $b0
    stop                                          ; $560f: $10 $00
    xor [hl]                                      ; $5611: $ae
    ld d, c                                       ; $5612: $51

jr_093_5613:
    rst $38                                       ; $5613: $ff
    nop                                           ; $5614: $00
    or $09                                        ; $5615: $f6 $09
    ld a, a                                       ; $5617: $7f
    add b                                         ; $5618: $80
    ld [$0cf3], sp                                ; $5619: $08 $f3 $0c
    rst $08                                       ; $561c: $cf
    jr nc, @+$71                                  ; $561d: $30 $6f

    dec c                                         ; $561f: $0d

jr_093_5620:
    xor $11                                       ; $5620: $ee $11
    rst $38                                       ; $5622: $ff
    nop                                           ; $5623: $00
    nop                                           ; $5624: $00
    halt                                          ; $5625: $76
    adc c                                         ; $5626: $89
    ei                                            ; $5627: $fb
    inc b                                         ; $5628: $04
    rst $38                                       ; $5629: $ff
    nop                                           ; $562a: $00
    cp [hl]                                       ; $562b: $be
    ld b, b                                       ; $562c: $40
    ld b, c                                       ; $562d: $41
    db $10                                        ; $562e: $10
    jr z, jr_093_5620                             ; $562f: $28 $ef

    db $10                                        ; $5631: $10
    cp a                                          ; $5632: $bf
    ld b, b                                       ; $5633: $40
    rst $18                                       ; $5634: $df
    jr nz, jr_093_5657                            ; $5635: $20 $20

    db $fd                                        ; $5637: $fd
    ld [bc], a                                    ; $5638: $02
    adc a                                         ; $5639: $8f
    dec c                                         ; $563a: $0d
    xor d                                         ; $563b: $aa
    ld d, l                                       ; $563c: $55
    push af                                       ; $563d: $f5
    ld a, [bc]                                    ; $563e: $0a
    cp $02                                        ; $563f: $fe $02
    ld bc, $02fd                                  ; $5641: $01 $fd $02
    cp [hl]                                       ; $5644: $be
    ld b, c                                       ; $5645: $41
    ld a, l                                       ; $5646: $7d
    and b                                         ; $5647: $a0
    db $10                                        ; $5648: $10
    call nc, Call_000_2b00                        ; $5649: $d4 $00 $2b
    call nc, Call_093_6e20                        ; $564c: $d4 $20 $6e
    or b                                          ; $564f: $b0
    or l                                          ; $5650: $b5
    ld a, d                                       ; $5651: $7a
    ld l, d                                       ; $5652: $6a
    nop                                           ; $5653: $00
    dec a                                         ; $5654: $3d
    cp $1f                                        ; $5655: $fe $1f

jr_093_5657:
    ld a, l                                       ; $5657: $7d
    add d                                         ; $5658: $82
    adc c                                         ; $5659: $89
    ld a, a                                       ; $565a: $7f
    add hl, bc                                    ; $565b: $09
    nop                                           ; $565c: $00
    or $aa                                        ; $565d: $f6 $aa
    ld b, b                                       ; $565f: $40
    dec e                                         ; $5660: $1d
    ld h, b                                       ; $5661: $60
    ld a, [hl+]                                   ; $5662: $2a
    ld a, l                                       ; $5663: $7d
    cp a                                          ; $5664: $bf
    nop                                           ; $5665: $00
    ld a, a                                       ; $5666: $7f
    xor l                                         ; $5667: $ad
    jp nc, $c03f                                  ; $5668: $d2 $3f $c0

    ld l, a                                       ; $566b: $6f
    ret nc                                        ; $566c: $d0

    add hl, hl                                    ; $566d: $29
    db $10                                        ; $566e: $10
    sub $12                                       ; $566f: $d6 $12
    db $ed                                        ; $5671: $ed
    ld [hl-], a                                   ; $5672: $32
    rlca                                          ; $5673: $07
    push de                                       ; $5674: $d5
    dec d                                         ; $5675: $15
    ld [$512a], a                                 ; $5676: $ea $2a $51
    push de                                       ; $5679: $d5
    rst $08                                       ; $567a: $cf
    dec c                                         ; $567b: $0d
    ld [$03b8], sp                                ; $567c: $08 $b8 $03
    inc h                                         ; $567f: $24
    rst $38                                       ; $5680: $ff
    adc b                                         ; $5681: $88
    add $07                                       ; $5682: $c6 $07
    ld b, e                                       ; $5684: $43
    adc c                                         ; $5685: $89
    add b                                         ; $5686: $80
    inc d                                         ; $5687: $14
    ld d, l                                       ; $5688: $55
    xor d                                         ; $5689: $aa
    xor d                                         ; $568a: $aa
    ld d, l                                       ; $568b: $55
    inc b                                         ; $568c: $04
    jr z, @-$0f                                   ; $568d: $28 $ef

    dec c                                         ; $568f: $0d
    ld h, b                                       ; $5690: $60

jr_093_5691:
    nop                                           ; $5691: $00
    add b                                         ; $5692: $80
    ld [bc], a                                    ; $5693: $02
    db $10                                        ; $5694: $10
    ld c, b                                       ; $5695: $48
    ld b, b                                       ; $5696: $40
    cp a                                          ; $5697: $bf
    xor b                                         ; $5698: $a8
    ld d, a                                       ; $5699: $57
    ld d, h                                       ; $569a: $54
    ld l, b                                       ; $569b: $68
    xor e                                         ; $569c: $ab
    inc b                                         ; $569d: $04
    jr @+$11                                      ; $569e: $18 $0f

    ld c, $22                                     ; $56a0: $0e $22
    ld hl, sp+$03                                 ; $56a2: $f8 $03
    inc b                                         ; $56a4: $04
    rst $38                                       ; $56a5: $ff
    jr nz, jr_093_56e2                            ; $56a6: $20 $3a

    rst $38                                       ; $56a8: $ff
    db $10                                        ; $56a9: $10
    ld hl, sp+$07                                 ; $56aa: $f8 $07
    jr nz, jr_093_56be                            ; $56ac: $20 $10

    ld [$5006], sp                                ; $56ae: $08 $06 $50
    adc h                                         ; $56b1: $8c
    rlca                                          ; $56b2: $07
    ld b, h                                       ; $56b3: $44
    ld [hl+], a                                   ; $56b4: $22
    rst $38                                       ; $56b5: $ff
    sub b                                         ; $56b6: $90
    ret nc                                        ; $56b7: $d0

    inc d                                         ; $56b8: $14
    dec h                                         ; $56b9: $25
    rst $38                                       ; $56ba: $ff
    add d                                         ; $56bb: $82
    ld e, $00                                     ; $56bc: $1e $00

jr_093_56be:
    nop                                           ; $56be: $00
    and b                                         ; $56bf: $a0
    ld b, $00                                     ; $56c0: $06 $00
    ld [$14e0], sp                                ; $56c2: $08 $e0 $14
    ld de, $84ff                                  ; $56c5: $11 $ff $84
    rst $38                                       ; $56c8: $ff
    ld b, c                                       ; $56c9: $41
    and b                                         ; $56ca: $a0
    inc d                                         ; $56cb: $14
    nop                                           ; $56cc: $00
    ld b, c                                       ; $56cd: $41
    db $10                                        ; $56ce: $10
    jr nz, jr_093_5691                            ; $56cf: $20 $c0

    inc d                                         ; $56d1: $14
    sbc [hl]                                      ; $56d2: $9e
    dec c                                         ; $56d3: $0d
    ld b, d                                       ; $56d4: $42
    rst $38                                       ; $56d5: $ff
    ld bc, $8360                                  ; $56d6: $01 $60 $83
    rst $38                                       ; $56d9: $ff
    pop bc                                        ; $56da: $c1
    cp a                                          ; $56db: $bf
    inc b                                         ; $56dc: $04
    ld c, b                                       ; $56dd: $48
    ld bc, $fe00                                  ; $56de: $01 $00 $fe
    ld a, [hl+]                                   ; $56e1: $2a

jr_093_56e2:
    push de                                       ; $56e2: $d5
    sub c                                         ; $56e3: $91
    ld l, [hl]                                    ; $56e4: $6e
    xor e                                         ; $56e5: $ab
    ld d, h                                       ; $56e6: $54
    db $fd                                        ; $56e7: $fd
    nop                                           ; $56e8: $00
    nop                                           ; $56e9: $00
    ld e, d                                       ; $56ea: $5a
    nop                                           ; $56eb: $00
    sub h                                         ; $56ec: $94
    nop                                           ; $56ed: $00
    nop                                           ; $56ee: $00
    nop                                           ; $56ef: $00
    inc b                                         ; $56f0: $04
    nop                                           ; $56f1: $00
    ei                                            ; $56f2: $fb
    jp nz, $a53d                                  ; $56f3: $c2 $3d $a5

    ld e, d                                       ; $56f6: $5a
    rst $28                                       ; $56f7: $ef
    db $10                                        ; $56f8: $10
    ld l, l                                       ; $56f9: $6d
    nop                                           ; $56fa: $00
    db $10                                        ; $56fb: $10
    ld e, e                                       ; $56fc: $5b
    nop                                           ; $56fd: $00
    sub l                                         ; $56fe: $95
    nop                                           ; $56ff: $00
    ld [hl+], a                                   ; $5700: $22
    nop                                           ; $5701: $00
    jr nz, jr_093_5704                            ; $5702: $20 $00

jr_093_5704:
    rst $18                                       ; $5704: $df
    ld d, d                                       ; $5705: $52
    xor l                                         ; $5706: $ad
    ld d, [hl]                                    ; $5707: $56
    adc c                                         ; $5708: $89
    db $ec                                        ; $5709: $ec
    ld bc, $005f                                  ; $570a: $01 $5f $00
    nop                                           ; $570d: $00
    sub h                                         ; $570e: $94
    ld bc, $0009                                  ; $570f: $01 $09 $00
    nop                                           ; $5712: $00
    ld bc, $c510                                  ; $5713: $01 $10 $c5
    inc h                                         ; $5716: $24
    nop                                           ; $5717: $00
    inc bc                                        ; $5718: $03
    jr c, jr_093_571d                             ; $5719: $38 $02

    nop                                           ; $571b: $00
    dec b                                         ; $571c: $05

jr_093_571d:
    inc b                                         ; $571d: $04
    nop                                           ; $571e: $00
    inc b                                         ; $571f: $04
    inc d                                         ; $5720: $14
    ld b, b                                       ; $5721: $40
    ld h, b                                       ; $5722: $60
    ld bc, $6002                                  ; $5723: $01 $02 $60
    ld [de], a                                    ; $5726: $12
    ld [$0002], sp                                ; $5727: $08 $02 $00
    dec d                                         ; $572a: $15
    nop                                           ; $572b: $00
    add d                                         ; $572c: $82
    nop                                           ; $572d: $00
    nop                                           ; $572e: $00
    ld d, l                                       ; $572f: $55
    nop                                           ; $5730: $00
    xor e                                         ; $5731: $ab
    nop                                           ; $5732: $00
    sbc $00                                       ; $5733: $de $00
    add b                                         ; $5735: $80
    and b                                         ; $5736: $a0
    ld h, h                                       ; $5737: $64
    nop                                           ; $5738: $00
    add c                                         ; $5739: $81
    ld c, $00                                     ; $573a: $0e $00
    pop bc                                        ; $573c: $c1
    nop                                           ; $573d: $00
    xor d                                         ; $573e: $aa
    nop                                           ; $573f: $00
    db $dd                                        ; $5740: $dd
    jr nz, jr_093_5743                            ; $5741: $20 $00

jr_093_5743:
    db $eb                                        ; $5743: $eb
    jr nc, jr_093_5746                            ; $5744: $30 $00

jr_093_5746:
    ld hl, $4100                                  ; $5746: $21 $00 $41
    nop                                           ; $5749: $00
    ldh [rP1], a                                  ; $574a: $e0 $00
    ld bc, $0051                                  ; $574c: $01 $51 $00
    xor d                                         ; $574f: $aa
    ld bc, $03f4                                  ; $5750: $01 $f4 $03
    cp h                                          ; $5753: $bc
    nop                                           ; $5754: $00
    ld bc, $00fd                                  ; $5755: $01 $fd $00
    rst $30                                       ; $5758: $f7
    ld [$20df], sp                                ; $5759: $08 $df $20
    ld a, [hl]                                    ; $575c: $7e
    nop                                           ; $575d: $00
    add c                                         ; $575e: $81
    rst $28                                       ; $575f: $ef
    db $10                                        ; $5760: $10
    ld e, d                                       ; $5761: $5a
    and l                                         ; $5762: $a5
    dec h                                         ; $5763: $25
    jp c, LCDCInterrupt                           ; $5764: $da $48 $00

    or a                                          ; $5767: $b7
    rst $38                                       ; $5768: $ff
    nop                                           ; $5769: $00
    ei                                            ; $576a: $fb
    nop                                           ; $576b: $00
    sbc $01                                       ; $576c: $de $01
    ei                                            ; $576e: $fb
    nop                                           ; $576f: $00
    inc b                                         ; $5770: $04
    ld [hl], a                                    ; $5771: $77
    adc b                                         ; $5772: $88
    cp e                                          ; $5773: $bb
    ld b, h                                       ; $5774: $44
    ld d, l                                       ; $5775: $55
    xor d                                         ; $5776: $aa
    ld [hl+], a                                   ; $5777: $22
    nop                                           ; $5778: $00
    db $dd                                        ; $5779: $dd
    ld a, h                                       ; $577a: $7c
    inc bc                                        ; $577b: $03
    ld a, [$ec05]                                 ; $577c: $fa $05 $ec
    inc bc                                        ; $577f: $03
    cp $00                                        ; $5780: $fe $00
    ld bc, $136c                                  ; $5782: $01 $6c $13
    ld a, [$5405]                                 ; $5785: $fa $05 $54
    xor e                                         ; $5788: $ab
    adc b                                         ; $5789: $88
    inc b                                         ; $578a: $04
    ld [hl], a                                    ; $578b: $77
    ld a, a                                       ; $578c: $7f
    ccf                                           ; $578d: $3f
    ld e, a                                       ; $578e: $5f
    ccf                                           ; $578f: $3f
    inc b                                         ; $5790: $04
    ld [$3c7c], sp                                ; $5791: $08 $7c $3c
    jr nc, jr_093_57f5                            ; $5794: $30 $5f

    ld a, $0c                                     ; $5796: $3e $0c
    ld [$18f0], sp                                ; $5798: $08 $f0 $18
    rst $28                                       ; $579b: $ef
    rst $28                                       ; $579c: $ef
    sbc $dc                                       ; $579d: $de $dc
    ld [bc], a                                    ; $579f: $02
    ccf                                           ; $57a0: $3f
    ccf                                           ; $57a1: $3f
    sbc a                                         ; $57a2: $9f
    rra                                           ; $57a3: $1f
    ld l, a                                       ; $57a4: $6f
    ld h, [hl]                                    ; $57a5: $66
    nop                                           ; $57a6: $00
    add hl, bc                                    ; $57a7: $09
    ei                                            ; $57a8: $fb
    nop                                           ; $57a9: $00
    ei                                            ; $57aa: $fb
    db $fd                                        ; $57ab: $fd
    ld sp, hl                                     ; $57ac: $f9
    ld a, $1c                                     ; $57ad: $3e $1c
    rst $38                                       ; $57af: $ff
    cp $ee                                        ; $57b0: $fe $ee
    inc d                                         ; $57b2: $14
    adc $1e                                       ; $57b3: $ce $1e
    inc c                                         ; $57b5: $0c
    db $10                                        ; $57b6: $10
    ld bc, $01df                                  ; $57b7: $01 $df $01
    nop                                           ; $57ba: $00
    sbc a                                         ; $57bb: $9f
    cp a                                          ; $57bc: $bf
    add b                                         ; $57bd: $80
    ld [hl], $00                                  ; $57be: $36 $00
    cp a                                          ; $57c0: $bf
    ccf                                           ; $57c1: $3f
    rst $18                                       ; $57c2: $df
    rst $08                                       ; $57c3: $cf
    ld a, [hl]                                    ; $57c4: $7e
    ld a, $5d                                     ; $57c5: $3e $5d
    ld [$7f3c], sp                                ; $57c7: $08 $3c $7f
    dec a                                         ; $57ca: $3d
    ld e, [hl]                                    ; $57cb: $5e
    ld b, [hl]                                    ; $57cc: $46
    nop                                           ; $57cd: $00
    ld l, e                                       ; $57ce: $6b
    ccf                                           ; $57cf: $3f

Call_093_57d0:
    ld e, [hl]                                    ; $57d0: $5e
    inc b                                         ; $57d1: $04
    ccf                                           ; $57d2: $3f
    ld c, [hl]                                    ; $57d3: $4e
    ccf                                           ; $57d4: $3f
    rst $30                                       ; $57d5: $f7
    rst $30                                       ; $57d6: $f7
    ld [hl-], a                                   ; $57d7: $32
    add hl, bc                                    ; $57d8: $09
    db $eb                                        ; $57d9: $eb
    rst $38                                       ; $57da: $ff
    inc b                                         ; $57db: $04
    rst $10                                       ; $57dc: $d7
    rst $38                                       ; $57dd: $ff
    xor [hl]                                      ; $57de: $ae
    rst $38                                       ; $57df: $ff
    ld a, a                                       ; $57e0: $7f
    dec a                                         ; $57e1: $3d
    ld bc, $fdfd                                  ; $57e2: $01 $fd $fd
    ld [hl+], a                                   ; $57e5: $22
    cp $fb                                        ; $57e6: $fe $fb
    inc de                                        ; $57e8: $13
    db $10                                        ; $57e9: $10
    rst $38                                       ; $57ea: $ff
    rst $28                                       ; $57eb: $ef
    rst $38                                       ; $57ec: $ff
    dec de                                        ; $57ed: $1b
    ld [$00ef], sp                                ; $57ee: $08 $ef $00
    rst $20                                       ; $57f1: $e7
    rst $38                                       ; $57f2: $ff
    rst $38                                       ; $57f3: $ff
    cp a                                          ; $57f4: $bf

jr_093_57f5:
    rst $38                                       ; $57f5: $ff
    db $dd                                        ; $57f6: $dd
    rst $38                                       ; $57f7: $ff
    xor a                                         ; $57f8: $af
    ld [hl+], a                                   ; $57f9: $22
    rst $38                                       ; $57fa: $ff
    ld d, a                                       ; $57fb: $57
    ld e, e                                       ; $57fc: $5b
    ld de, $3f5d                                  ; $57fd: $11 $5d $3f
    ld e, e                                       ; $5800: $5b
    add b                                         ; $5801: $80
    nop                                           ; $5802: $00
    ld c, a                                       ; $5803: $4f
    ldh [$84], a                                  ; $5804: $e0 $84
    db $10                                        ; $5806: $10
    ld [bc], a                                    ; $5807: $02
    ld [$0034], sp                                ; $5808: $08 $34 $00
    ld a, a                                       ; $580b: $7f
    ld a, a                                       ; $580c: $7f
    ld a, e                                       ; $580d: $7b
    ld e, e                                       ; $580e: $5b
    ld a, e                                       ; $580f: $7b
    nop                                           ; $5810: $00
    ld l, e                                       ; $5811: $6b
    ld a, c                                       ; $5812: $79
    ld [hl], c                                    ; $5813: $71
    ld h, c                                       ; $5814: $61
    adc l                                         ; $5815: $8d
    inc b                                         ; $5816: $04
    cp $fc                                        ; $5817: $fe $fc
    ld b, b                                       ; $5819: $40
    rst $30                                       ; $581a: $f7
    ld a, [hl]                                    ; $581b: $7e
    nop                                           ; $581c: $00
    dec sp                                        ; $581d: $3b
    inc sp                                        ; $581e: $33
    push de                                       ; $581f: $d5
    add a                                         ; $5820: $87
    rst $20                                       ; $5821: $e7
    jp $e900                                      ; $5822: $c3 $00 $e9


    ldh [$ee], a                                  ; $5825: $e0 $ee
    call z, $cfdf                                 ; $5827: $cc $df $cf
    rst $20                                       ; $582a: $e7
    jp $9f02                                      ; $582b: $c3 $02 $9f


    rrca                                          ; $582e: $0f
    ld sp, hl                                     ; $582f: $f9

Jump_093_5830:
    pop af                                        ; $5830: $f1
    rst $20                                       ; $5831: $e7
    jp Jump_000_0998                              ; $5832: $c3 $98 $09


    db $fd                                        ; $5835: $fd
    ret nz                                        ; $5836: $c0

    dec l                                         ; $5837: $2d
    ld [$10c0], sp                                ; $5838: $08 $c0 $10
    ld e, b                                       ; $583b: $58
    jr c, jr_093_589e                             ; $583c: $38 $60

    jr c, @+$01                                   ; $583e: $38 $ff

    nop                                           ; $5840: $00
    ld b, b                                       ; $5841: $40
    nop                                           ; $5842: $00

jr_093_5843:
    ld [hl], d                                    ; $5843: $72
    nop                                           ; $5844: $00
    cp $fe                                        ; $5845: $fe $fe
    rst $38                                       ; $5847: $ff
    cp $ff                                        ; $5848: $fe $ff
    rst $38                                       ; $584a: $ff
    rrca                                          ; $584b: $0f
    ccf                                           ; $584c: $3f
    ccf                                           ; $584d: $3f
    nop                                           ; $584e: $00
    ccf                                           ; $584f: $3f
    db $10                                        ; $5850: $10
    ld [$08ad], sp                                ; $5851: $08 $ad $08
    jp nz, Jump_000_0c19                          ; $5854: $c2 $19 $0c

jr_093_5857:
    nop                                           ; $5857: $00
    or b                                          ; $5858: $b0
    db $10                                        ; $5859: $10
    db $10                                        ; $585a: $10
    rst $38                                       ; $585b: $ff
    rra                                           ; $585c: $1f
    ld [$4010], sp                                ; $585d: $08 $10 $40
    ld [bc], a                                    ; $5860: $02
    rst $38                                       ; $5861: $ff
    ld bc, $58ff                                  ; $5862: $01 $ff $58
    ld [hl+], a                                   ; $5865: $22
    inc b                                         ; $5866: $04
    nop                                           ; $5867: $00
    xor e                                         ; $5868: $ab
    or d                                          ; $5869: $b2
    nop                                           ; $586a: $00
    db $ec                                        ; $586b: $ec
    add hl, bc                                    ; $586c: $09
    inc b                                         ; $586d: $04
    ei                                            ; $586e: $fb
    ld [hl+], a                                   ; $586f: $22
    inc bc                                        ; $5870: $03
    db $dd                                        ; $5871: $dd
    add b                                         ; $5872: $80
    rst $38                                       ; $5873: $ff
    ld d, d                                       ; $5874: $52
    rst $38                                       ; $5875: $ff
    xor h                                         ; $5876: $ac
    xor [hl]                                      ; $5877: $ae
    nop                                           ; $5878: $00
    ld a, [hl+]                                   ; $5879: $2a
    ld [$1100], sp                                ; $587a: $08 $00 $11
    rst $28                                       ; $587d: $ef
    ld b, b                                       ; $587e: $40
    rst $38                                       ; $587f: $ff
    ld hl, $72ff                                  ; $5880: $21 $ff $72
    rst $38                                       ; $5883: $ff
    db $10                                        ; $5884: $10
    and l                                         ; $5885: $a5
    rst $38                                       ; $5886: $ff
    ld d, e                                       ; $5887: $53
    dec bc                                        ; $5888: $0b
    ld [de], a                                    ; $5889: $12
    ld c, e                                       ; $588a: $4b
    jr nc, jr_093_5843                            ; $588b: $30 $b6

    add hl, de                                    ; $588d: $19
    nop                                           ; $588e: $00
    sbc e                                         ; $588f: $9b
    inc c                                         ; $5890: $0c
    dec c                                         ; $5891: $0d
    ld b, $14                                     ; $5892: $06 $14
    inc bc                                        ; $5894: $03
    xor a                                         ; $5895: $af
    ld bc, $5400                                  ; $5896: $01 $00 $54
    xor e                                         ; $5899: $ab
    adc e                                         ; $589a: $8b
    halt                                          ; $589b: $76
    ld a, e                                       ; $589c: $7b
    add [hl]                                      ; $589d: $86

jr_093_589e:
    or [hl]                                       ; $589e: $b6
    ld c, h                                       ; $589f: $4c
    nop                                           ; $58a0: $00
    ld l, h                                       ; $58a1: $6c
    sbc b                                         ; $58a2: $98
    ret c                                         ; $58a3: $d8

jr_093_58a4:
    jr nc, jr_093_5857                            ; $58a4: $30 $b1

    ld h, b                                       ; $58a6: $60
    ld [hl], a                                    ; $58a7: $77
    ret nz                                        ; $58a8: $c0

    nop                                           ; $58a9: $00
    rst $18                                       ; $58aa: $df
    ld h, b                                       ; $58ab: $60
    ld c, [hl]                                    ; $58ac: $4e
    ld sp, $6817                                  ; $58ad: $31 $17 $68

jr_093_58b0:
    xor l                                         ; $58b0: $ad
    ld d, b                                       ; $58b1: $50
    nop                                           ; $58b2: $00
    rst $10                                       ; $58b3: $d7
    jr z, jr_093_58a4                             ; $58b4: $28 $ee

    db $10                                        ; $58b6: $10
    call nc, $aa20                                ; $58b7: $d4 $20 $aa
    ld b, b                                       ; $58ba: $40
    nop                                           ; $58bb: $00
    ld l, c                                       ; $58bc: $69
    add b                                         ; $58bd: $80
    ld d, d                                       ; $58be: $52
    add c                                         ; $58bf: $81
    ld [de], a                                    ; $58c0: $12
    db $ec                                        ; $58c1: $ec
    ld l, h                                       ; $58c2: $6c
    sbc b                                         ; $58c3: $98
    nop                                           ; $58c4: $00
    reti                                          ; $58c5: $d9


    jr nc, @-$4a                                  ; $58c6: $30 $b4

    ld h, b                                       ; $58c8: $60
    ld l, c                                       ; $58c9: $69
    ret nz                                        ; $58ca: $c0

    ld hl, $0080                                  ; $58cb: $21 $80 $00
    pop hl                                        ; $58ce: $e1
    nop                                           ; $58cf: $00
    db $ec                                        ; $58d0: $ec

jr_093_58d1:
    nop                                           ; $58d1: $00
    and a                                         ; $58d2: $a7
    jr jr_093_58b0                                ; $58d3: $18 $db

    inc c                                         ; $58d5: $0c
    nop                                           ; $58d6: $00
    db $fd                                        ; $58d7: $fd
    ld b, $fe                                     ; $58d8: $06 $fe
    inc bc                                        ; $58da: $03
    ld a, e                                       ; $58db: $7b
    ld bc, $006e                                  ; $58dc: $01 $6e $00
    nop                                           ; $58df: $00
    push de                                       ; $58e0: $d5
    ld [bc], a                                    ; $58e1: $02
    xor [hl]                                      ; $58e2: $ae
    ld bc, $03c4                                  ; $58e3: $01 $c4 $03
    xor [hl]                                      ; $58e6: $ae
    ld bc, $da00                                  ; $58e7: $01 $00 $da
    dec b                                         ; $58ea: $05
    push af                                       ; $58eb: $f5
    ld a, [bc]                                    ; $58ec: $0a
    ld a, b                                       ; $58ed: $78
    add a                                         ; $58ee: $87
    ret c                                         ; $58ef: $d8

    ld h, a                                       ; $58f0: $67
    nop                                           ; $58f1: $00
    db $ed                                        ; $58f2: $ed
    ld [hl-], a                                   ; $58f3: $32
    or a                                          ; $58f4: $b7

jr_093_58f5:
    jr jr_093_58d1                                ; $58f5: $18 $da

    jr nz, @-$12                                  ; $58f7: $20 $ec

    db $10                                        ; $58f9: $10
    ld bc, $20de                                  ; $58fa: $01 $de $20
    ld l, e                                       ; $58fd: $6b
    inc d                                         ; $58fe: $14
    ld d, l                                       ; $58ff: $55
    nop                                           ; $5900: $00
    ld a, [bc]                                    ; $5901: $0a
    ret c                                         ; $5902: $d8

    ld bc, $a800                                  ; $5903: $01 $00 $a8
    nop                                           ; $5906: $00
    scf                                           ; $5907: $37
    nop                                           ; $5908: $00
    ld a, [bc]                                    ; $5909: $0a
    ld bc, $0087                                  ; $590a: $01 $87 $00
    nop                                           ; $590d: $00
    ld c, [hl]                                    ; $590e: $4e
    ld bc, $40ab                                  ; $590f: $01 $ab $40
    pop bc                                        ; $5912: $c1
    jr nz, jr_093_5987                            ; $5913: $20 $72

    nop                                           ; $5915: $00
    nop                                           ; $5916: $00
    ld e, c                                       ; $5917: $59
    jr nz, jr_093_58f5                            ; $5918: $20 $db

    inc c                                         ; $591a: $0c
    db $ed                                        ; $591b: $ed
    ld b, $56                                     ; $591c: $06 $56
    add e                                         ; $591e: $83
    nop                                           ; $591f: $00
    db $e3                                        ; $5920: $e3
    ld bc, $03ec                                  ; $5921: $01 $ec $03
    ld a, e                                       ; $5924: $7b
    ld b, $b2                                     ; $5925: $06 $b2
    inc c                                         ; $5927: $0c
    nop                                           ; $5928: $00
    ld l, h                                       ; $5929: $6c
    jr @+$01                                      ; $592a: $18 $ff

    rst $38                                       ; $592c: $ff
    xor d                                         ; $592d: $aa
    rst $38                                       ; $592e: $ff
    db $10                                        ; $592f: $10
    rst $28                                       ; $5930: $ef
    ld b, $a0                                     ; $5931: $06 $a0
    rst $38                                       ; $5933: $ff
    ld h, c                                       ; $5934: $61
    rst $38                                       ; $5935: $ff
    jp c, $1160                                   ; $5936: $da $60 $11

    db $10                                        ; $5939: $10
    ld [$b660], sp                                ; $593a: $08 $60 $b6
    inc d                                         ; $593d: $14
    nop                                           ; $593e: $00
    ld [hl], l                                    ; $593f: $75
    ld [hl], b                                    ; $5940: $70
    ld bc, $0980                                  ; $5941: $01 $80 $09
    rst $38                                       ; $5944: $ff
    jp c, $e000                                   ; $5945: $da $00 $e0

    ld c, b                                       ; $5948: $48
    rst $38                                       ; $5949: $ff
    db $10                                        ; $594a: $10
    rst $38                                       ; $594b: $ff
    ld d, l                                       ; $594c: $55
    rst $38                                       ; $594d: $ff
    ldh [rOBP0], a                                ; $594e: $e0 $48
    add sp, $00                                   ; $5950: $e8 $00
    ld b, h                                       ; $5952: $44
    nop                                           ; $5953: $00
    inc b                                         ; $5954: $04
    add hl, bc                                    ; $5955: $09
    nop                                           ; $5956: $00
    ld d, a                                       ; $5957: $57
    nop                                           ; $5958: $00
    xor [hl]                                      ; $5959: $ae
    inc h                                         ; $595a: $24
    ld [bc], a                                    ; $595b: $02
    ld l, e                                       ; $595c: $6b
    sub b                                         ; $595d: $90
    nop                                           ; $595e: $00
    or l                                          ; $595f: $b5
    ld b, d                                       ; $5960: $42
    db $eb                                        ; $5961: $eb
    inc [hl]                                      ; $5962: $34
    and h                                         ; $5963: $a4
    dec de                                        ; $5964: $1b
    ld a, d                                       ; $5965: $7a

jr_093_5966:
    dec c                                         ; $5966: $0d
    nop                                           ; $5967: $00
    db $ed                                        ; $5968: $ed
    ld d, $b6                                     ; $5969: $16 $b6
    dec bc                                        ; $596b: $0b
    ld d, e                                       ; $596c: $53
    dec c                                         ; $596d: $0d
    db $ed                                        ; $596e: $ed
    inc de                                        ; $596f: $13

jr_093_5970:
    nop                                           ; $5970: $00
    ld e, e                                       ; $5971: $5b
    ld h, $bb                                     ; $5972: $26 $bb
    ld b, $d6                                     ; $5974: $06 $d6
    inc c                                         ; $5976: $0c
    xor h                                         ; $5977: $ac
    jr jr_093_597a                                ; $5978: $18 $00

jr_093_597a:
    call c, $bd30                                 ; $597a: $dc $30 $bd
    ld h, b                                       ; $597d: $60
    ld a, e                                       ; $597e: $7b
    call nz, Call_093_64db                        ; $597f: $c4 $db $64
    nop                                           ; $5982: $00
    ld l, c                                       ; $5983: $69
    jr nc, jr_093_59b9                            ; $5984: $30 $33

    inc c                                         ; $5986: $0c

jr_093_5987:
    ld h, [hl]                                    ; $5987: $66
    jr jr_093_59b4                                ; $5988: $18 $2a

    inc d                                         ; $598a: $14
    nop                                           ; $598b: $00
    ld d, a                                       ; $598c: $57
    ld [$040b], sp                                ; $598d: $08 $0b $04
    ld d, a                                       ; $5990: $57
    ld [$10a9], sp                                ; $5991: $08 $a9 $10
    nop                                           ; $5994: $00
    ld a, [de]                                    ; $5995: $1a
    jr nz, jr_093_5966                            ; $5996: $20 $ce

    nop                                           ; $5998: $00
    ld d, a                                       ; $5999: $57
    xor b                                         ; $599a: $a8
    rst $28                                       ; $599b: $ef
    stop                                          ; $599c: $10 $00
    ld e, e                                       ; $599e: $5b
    and b                                         ; $599f: $a0
    or [hl]                                       ; $59a0: $b6
    ld b, c                                       ; $59a1: $41
    cp h                                          ; $59a2: $bc
    ld b, e                                       ; $59a3: $43
    ld a, e                                       ; $59a4: $7b
    add [hl]                                      ; $59a5: $86
    ld [$0cf6], sp                                ; $59a6: $08 $f6 $0c
    or $0c                                        ; $59a9: $f6 $0c
    ld c, $09                                     ; $59ab: $0e $09
    or b                                          ; $59ad: $b0
    ld h, b                                       ; $59ae: $60
    ld h, b                                       ; $59af: $60
    ld b, b                                       ; $59b0: $40
    ret nz                                        ; $59b1: $c0

    xor e                                         ; $59b2: $ab
    ld a, [bc]                                    ; $59b3: $0a

jr_093_59b4:
    xor b                                         ; $59b4: $a8
    nop                                           ; $59b5: $00
    inc [hl]                                      ; $59b6: $34
    jr jr_093_5a13                                ; $59b7: $18 $5a

jr_093_59b9:
    inc c                                         ; $59b9: $0c
    ld bc, $06ad                                  ; $59ba: $01 $ad $06
    ld e, [hl]                                    ; $59bd: $5e
    inc bc                                        ; $59be: $03
    dec hl                                        ; $59bf: $2b
    ld bc, $c62b                                  ; $59c0: $01 $2b $c6
    ld [bc], a                                    ; $59c3: $02
    inc b                                         ; $59c4: $04
    ld e, e                                       ; $59c5: $5b
    nop                                           ; $59c6: $00
    ld [hl], c                                    ; $59c7: $71
    nop                                           ; $59c8: $00
    ld h, a                                       ; $59c9: $67
    jp c, $9600                                   ; $59ca: $da $00 $96

    nop                                           ; $59cd: $00
    nop                                           ; $59ce: $00
    inc c                                         ; $59cf: $0c
    ret nz                                        ; $59d0: $c0

    ld d, [hl]                                    ; $59d1: $56
    ldh [$e9], a                                  ; $59d2: $e0 $e9
    jr nc, jr_093_59fc                            ; $59d4: $30 $26

    ret c                                         ; $59d6: $d8

    nop                                           ; $59d7: $00
    rst $28                                       ; $59d8: $ef
    jr jr_093_59b9                                ; $59d9: $18 $de

    jr nc, jr_093_5970                            ; $59db: $30 $93

    ld l, h                                       ; $59dd: $6c
    ld a, c                                       ; $59de: $79
    add $00                                       ; $59df: $c6 $00
    db $db                                        ; $59e1: $db
    ld h, b                                       ; $59e2: $60
    ld c, l                                       ; $59e3: $4d
    jr nc, jr_093_5a5c                            ; $59e4: $30 $76

    jr jr_093_5a1b                                ; $59e6: $18 $33

    inc c                                         ; $59e8: $0c
    db $10                                        ; $59e9: $10
    ld [hl], h                                    ; $59ea: $74
    nop                                           ; $59eb: $00
    cp d                                          ; $59ec: $ba
    adc [hl]                                      ; $59ed: $8e
    nop                                           ; $59ee: $00
    cp e                                          ; $59ef: $bb
    ld b, b                                       ; $59f0: $40
    ld a, [bc]                                    ; $59f1: $0a
    ldh a, [rP1]                                  ; $59f2: $f0 $00
    add l                                         ; $59f4: $85
    ld a, b                                       ; $59f5: $78
    ld l, e                                       ; $59f6: $6b
    inc d                                         ; $59f7: $14

jr_093_59f8:
    dec l                                         ; $59f8: $2d

jr_093_59f9:
    ld [bc], a                                    ; $59f9: $02
    cpl                                           ; $59fa: $2f
    nop                                           ; $59fb: $00

jr_093_59fc:
    nop                                           ; $59fc: $00
    sub [hl]                                      ; $59fd: $96
    ld bc, $026d                                  ; $59fe: $01 $6d $02
    jp c, Jump_000_2e05                           ; $5a01: $da $05 $2e

    ld bc, $0480                                  ; $5a04: $01 $80 $04
    dec bc                                        ; $5a07: $0b
    ret nz                                        ; $5a08: $c0

    nop                                           ; $5a09: $00
    sbc e                                         ; $5a0a: $9b
    ld l, h                                       ; $5a0b: $6c
    call $a636                                    ; $5a0c: $cd $36 $a6
    nop                                           ; $5a0f: $00
    ld e, e                                       ; $5a10: $5b
    ld [de], a                                    ; $5a11: $12
    db $ed                                        ; $5a12: $ed

jr_093_5a13:
    or l                                          ; $5a13: $b5
    ld c, e                                       ; $5a14: $4b
    db $eb                                        ; $5a15: $eb
    ld d, $b6                                     ; $5a16: $16 $b6
    nop                                           ; $5a18: $00
    dec c                                         ; $5a19: $0d
    ld l, h                                       ; $5a1a: $6c

jr_093_5a1b:
    dec de                                        ; $5a1b: $1b
    halt                                          ; $5a1c: $76
    add b                                         ; $5a1d: $80
    db $eb                                        ; $5a1e: $eb

jr_093_5a1f:
    db $10                                        ; $5a1f: $10
    dec [hl]                                      ; $5a20: $35
    nop                                           ; $5a21: $00
    jp z, $e857                                   ; $5a22: $ca $57 $e8

    ld l, e                                       ; $5a25: $6b
    inc [hl]                                      ; $5a26: $34
    or h                                          ; $5a27: $b4
    dec de                                        ; $5a28: $1b
    sbc d                                         ; $5a29: $9a
    nop                                           ; $5a2a: $00
    dec c                                         ; $5a2b: $0d
    adc c                                         ; $5a2c: $89
    ld b, $a8                                     ; $5a2d: $06 $a8
    db $10                                        ; $5a2f: $10
    ld c, a                                       ; $5a30: $4f
    nop                                           ; $5a31: $00
    inc [hl]                                      ; $5a32: $34
    nop                                           ; $5a33: $00
    ld bc, $036c                                  ; $5a34: $01 $6c $03
    cp e                                          ; $5a37: $bb
    ld b, $d2                                     ; $5a38: $06 $d2

jr_093_5a3a:
    inc c                                         ; $5a3a: $0c
    and h                                         ; $5a3b: $a4
    nop                                           ; $5a3c: $00
    jr @-$26                                      ; $5a3d: $18 $d8

    jr nc, jr_093_5a1f                            ; $5a3f: $30 $de

    jr nc, jr_093_59f8                            ; $5a41: $30 $b5

    ld h, d                                       ; $5a43: $62
    ld l, [hl]                                    ; $5a44: $6e
    nop                                           ; $5a45: $00
    pop bc                                        ; $5a46: $c1
    dec b                                         ; $5a47: $05
    add b                                         ; $5a48: $80
    ld l, d                                       ; $5a49: $6a
    nop                                           ; $5a4a: $00
    rst $08                                       ; $5a4b: $cf
    jr nc, jr_093_59f9                            ; $5a4c: $30 $ab

    nop                                           ; $5a4e: $00
    ld d, h                                       ; $5a4f: $54
    ld [hl], h                                    ; $5a50: $74
    dec bc                                        ; $5a51: $0b
    add $03                                       ; $5a52: $c6 $03
    rst $30                                       ; $5a54: $f7
    ld bc, $007d                                  ; $5a55: $01 $7d $00
    add e                                         ; $5a58: $83
    dec sp                                        ; $5a59: $3b
    add $f6                                       ; $5a5a: $c6 $f6

jr_093_5a5c:
    inc c                                         ; $5a5c: $0c
    db $ed                                        ; $5a5d: $ed
    jr jr_093_5a3a                                ; $5a5e: $18 $da

    add b                                         ; $5a60: $80
    sub $00                                       ; $5a61: $d6 $00
    sub h                                         ; $5a63: $94
    ld h, b                                       ; $5a64: $60
    ld a, d                                       ; $5a65: $7a
    ret nz                                        ; $5a66: $c0

    push de                                       ; $5a67: $d5
    ld l, d                                       ; $5a68: $6a

jr_093_5a69:
    ld c, b                                       ; $5a69: $48
    nop                                           ; $5a6a: $00
    scf                                           ; $5a6b: $37
    inc [hl]                                      ; $5a6c: $34
    dec de                                        ; $5a6d: $1b
    dec de                                        ; $5a6e: $1b
    inc c                                         ; $5a6f: $0c
    adc l                                         ; $5a70: $8d
    ld b, $06                                     ; $5a71: $06 $06
    nop                                           ; $5a73: $00
    inc bc                                        ; $5a74: $03
    ld a, [hl+]                                   ; $5a75: $2a
    dec b                                         ; $5a76: $05
    add l                                         ; $5a77: $85
    ld [bc], a                                    ; $5a78: $02
    ld l, c                                       ; $5a79: $69
    add b                                         ; $5a7a: $80
    sub [hl]                                      ; $5a7b: $96
    nop                                           ; $5a7c: $00
    ld h, b                                       ; $5a7d: $60
    dec de                                        ; $5a7e: $1b
    ldh [$03], a                                  ; $5a7f: $e0 $03
    db $fc                                        ; $5a81: $fc
    sub c                                         ; $5a82: $91
    ld l, [hl]                                    ; $5a83: $6e
    ret c                                         ; $5a84: $d8

    nop                                           ; $5a85: $00
    daa                                           ; $5a86: $27
    ld l, d                                       ; $5a87: $6a
    ret nz                                        ; $5a88: $c0

    ld l, d                                       ; $5a89: $6a
    add b                                         ; $5a8a: $80
    call nc, Call_093_6d00                        ; $5a8b: $d4 $00 $6d
    nop                                           ; $5a8e: $00
    add b                                         ; $5a8f: $80
    ld a, [$b400]                                 ; $5a90: $fa $00 $b4
    ld b, b                                       ; $5a93: $40
    db $db                                        ; $5a94: $db
    jr nz, jr_093_5ac4                            ; $5a95: $20 $2d

    jr nc, jr_093_5a69                            ; $5a97: $30 $d0

    inc bc                                        ; $5a99: $03
    sub e                                         ; $5a9a: $93
    dec bc                                        ; $5a9b: $0b
    sbc h                                         ; $5a9c: $9c
    ld bc, $0017                                  ; $5a9d: $01 $17 $00
    xor [hl]                                      ; $5aa0: $ae
    nop                                           ; $5aa1: $00
    nop                                           ; $5aa2: $00
    ld [hl], l                                    ; $5aa3: $75
    nop                                           ; $5aa4: $00
    xor $01                                       ; $5aa5: $ee $01
    ld [hl], l                                    ; $5aa7: $75
    adc d                                         ; $5aa8: $8a
    db $dd                                        ; $5aa9: $dd
    ld h, d                                       ; $5aaa: $62
    add b                                         ; $5aab: $80
    ld a, h                                       ; $5aac: $7c
    ld [$0d7a], sp                                ; $5aad: $08 $7a $0d
    cp l                                          ; $5ab0: $bd
    ld b, $66                                     ; $5ab1: $06 $66
    dec de                                        ; $5ab3: $1b
    rst $08                                       ; $5ab4: $cf
    ld [bc], a                                    ; $5ab5: $02
    ld sp, $40ba                                  ; $5ab6: $31 $ba $40
    call nc, $a000                                ; $5ab9: $d4 $00 $a0
    add $03                                       ; $5abc: $c6 $03
    jp nz, RST_00                                 ; $5abe: $c2 $00 $00

    xor c                                         ; $5ac1: $a9
    nop                                           ; $5ac2: $00
    rla                                           ; $5ac3: $17

jr_093_5ac4:
    ret nz                                        ; $5ac4: $c0

    ld e, l                                       ; $5ac5: $5d
    ldh [$28], a                                  ; $5ac6: $e0 $28
    nop                                           ; $5ac8: $00
    rlca                                          ; $5ac9: $07
    ld d, b                                       ; $5aca: $50
    rrca                                          ; $5acb: $0f
    db $eb                                        ; $5acc: $eb
    inc d                                         ; $5acd: $14
    jp c, $f420                                   ; $5ace: $da $20 $f4

    nop                                           ; $5ad1: $00
    nop                                           ; $5ad2: $00
    ld h, c                                       ; $5ad3: $61
    add b                                         ; $5ad4: $80
    jp nc, $ac01                                  ; $5ad5: $d2 $01 $ac

    ld b, e                                       ; $5ad8: $43
    ld l, l                                       ; $5ad9: $6d
    ld [$db83], sp                                ; $5ada: $08 $83 $db
    ld b, $36                                     ; $5add: $06 $36
    cp b                                          ; $5adf: $b8
    ld bc, $30d9                                  ; $5ae0: $01 $d9 $30
    or d                                          ; $5ae3: $b2
    nop                                           ; $5ae4: $00
    ld h, b                                       ; $5ae5: $60
    dec a                                         ; $5ae6: $3d
    jp nz, $ba45                                  ; $5ae7: $c2 $45 $ba

    dec a                                         ; $5aea: $3d
    ld b, $3e                                     ; $5aeb: $06 $3e
    ld [bc], a                                    ; $5aed: $02
    inc bc                                        ; $5aee: $03
    sub a                                         ; $5aef: $97
    ld bc, $a05c                                  ; $5af0: $01 $5c $a0
    ld h, [hl]                                    ; $5af3: $66
    db $fc                                        ; $5af4: $fc
    nop                                           ; $5af5: $00
    xor d                                         ; $5af6: $aa
    nop                                           ; $5af7: $00
    inc d                                         ; $5af8: $14
    push af                                       ; $5af9: $f5
    ld [$0097], sp                                ; $5afa: $08 $97 $00
    jp Jump_000_2500                              ; $5afd: $c3 $00 $25


    nop                                           ; $5b00: $00
    ret nz                                        ; $5b01: $c0

    ld e, d                                       ; $5b02: $5a
    pop hl                                        ; $5b03: $e1
    ld l, a                                       ; $5b04: $6f
    jr nc, jr_093_5b3d                            ; $5b05: $30 $36

    add hl, de                                    ; $5b07: $19
    dec de                                        ; $5b08: $1b
    nop                                           ; $5b09: $00
    inc c                                         ; $5b0a: $0c
    dec e                                         ; $5b0b: $1d
    ld b, $a1                                     ; $5b0c: $06 $a1
    nop                                           ; $5b0e: $00
    ld c, d                                       ; $5b0f: $4a
    add b                                         ; $5b10: $80
    push af                                       ; $5b11: $f5
    ld [$dd00], sp                                ; $5b12: $08 $00 $dd
    inc bc                                        ; $5b15: $03
    ld l, e                                       ; $5b16: $6b
    ld l, b                                       ; $5b17: $68
    ld [bc], a                                    ; $5b18: $02
    ld l, a                                       ; $5b19: $6f
    sbc b                                         ; $5b1a: $98
    db $db                                        ; $5b1b: $db
    nop                                           ; $5b1c: $00
    inc [hl]                                      ; $5b1d: $34
    reti                                          ; $5b1e: $d9


    ld [hl], $b2                                  ; $5b1f: $36 $b2
    ld l, l                                       ; $5b21: $6d
    ld a, l                                       ; $5b22: $7d
    jp nz, Jump_000_009f                          ; $5b23: $c2 $9f $00

    nop                                           ; $5b26: $00
    dec bc                                        ; $5b27: $0b
    nop                                           ; $5b28: $00
    sub c                                         ; $5b29: $91
    nop                                           ; $5b2a: $00
    ld c, b                                       ; $5b2b: $48
    nop                                           ; $5b2c: $00
    push af                                       ; $5b2d: $f5
    nop                                           ; $5b2e: $00
    nop                                           ; $5b2f: $00
    ld l, b                                       ; $5b30: $68
    sub b                                         ; $5b31: $90
    ld [hl], l                                    ; $5b32: $75
    adc b                                         ; $5b33: $88
    jp z, $ac04                                   ; $5b34: $ca $04 $ac

    nop                                           ; $5b37: $00
    ld [bc], a                                    ; $5b38: $02
    ld b, a                                       ; $5b39: $47
    nop                                           ; $5b3a: $00
    ld [hl], e                                    ; $5b3b: $73
    nop                                           ; $5b3c: $00

jr_093_5b3d:
    jr z, jr_093_5b3f                             ; $5b3d: $28 $00

Jump_093_5b3f:
jr_093_5b3f:
    or h                                          ; $5b3f: $b4
    nop                                           ; $5b40: $00
    nop                                           ; $5b41: $00
    ld e, [hl]                                    ; $5b42: $5e
    inc bc                                        ; $5b43: $03
    ld l, a                                       ; $5b44: $6f
    ld de, $13ed                                  ; $5b45: $11 $ed $13
    ld c, e                                       ; $5b48: $4b
    ld [bc], a                                    ; $5b49: $02
    ld b, $16                                     ; $5b4a: $06 $16
    inc c                                         ; $5b4c: $0c
    inc l                                         ; $5b4d: $2c
    jr jr_093_5ba9                                ; $5b4e: $18 $59

    ld a, b                                       ; $5b50: $78

jr_093_5b51:
    ld [bc], a                                    ; $5b51: $02
    or [hl]                                       ; $5b52: $b6
    inc bc                                        ; $5b53: $03
    ld l, b                                       ; $5b54: $68
    ld h, l                                       ; $5b55: $65
    ret c                                         ; $5b56: $d8

    db $db                                        ; $5b57: $db

jr_093_5b58:
    ld h, h                                       ; $5b58: $64
    ld l, l                                       ; $5b59: $6d
    ld e, d                                       ; $5b5a: $5a
    ld [bc], a                                    ; $5b5b: $02
    ld a, b                                       ; $5b5c: $78
    ld a, [de]                                    ; $5b5d: $1a
    nop                                           ; $5b5e: $00
    cp d                                          ; $5b5f: $ba
    ld b, b                                       ; $5b60: $40
    ld l, a                                       ; $5b61: $6f
    db $10                                        ; $5b62: $10
    db $eb                                        ; $5b63: $eb
    inc b                                         ; $5b64: $04
    ld d, [hl]                                    ; $5b65: $56
    ld hl, $b900                                  ; $5b66: $21 $00 $b9

jr_093_5b69:
    nop                                           ; $5b69: $00
    ld [hl], l                                    ; $5b6a: $75
    adc d                                         ; $5b6b: $8a
    ei                                            ; $5b6c: $fb
    inc b                                         ; $5b6d: $04
    db $ed                                        ; $5b6e: $ed
    ld [bc], a                                    ; $5b6f: $02
    nop                                           ; $5b70: $00
    jr jr_093_5b74                                ; $5b71: $18 $01

    or l                                          ; $5b73: $b5

jr_093_5b74:
    inc bc                                        ; $5b74: $03
    ld c, e                                       ; $5b75: $4b
    ld b, $b6                                     ; $5b76: $06 $b6
    inc c                                         ; $5b78: $0c
    inc de                                        ; $5b79: $13
    ld l, l                                       ; $5b7a: $6d
    jr jr_093_5b58                                ; $5b7b: $18 $db

    call nz, Call_093_7902                        ; $5b7d: $c4 $02 $79
    ret nz                                        ; $5b80: $c0

    xor b                                         ; $5b81: $a8
    ld a, [hl+]                                   ; $5b82: $2a
    adc b                                         ; $5b83: $88
    ld a, [hl+]                                   ; $5b84: $2a
    ret nz                                        ; $5b85: $c0

    xor b                                         ; $5b86: $a8
    ld a, [hl+]                                   ; $5b87: $2a
    adc b                                         ; $5b88: $88
    ld a, [hl+]                                   ; $5b89: $2a
    ld [hl], $c1                                  ; $5b8a: $36 $c1
    ld e, [hl]                                    ; $5b8c: $5e
    pop hl                                        ; $5b8d: $e1
    rst $28                                       ; $5b8e: $ef
    jr nc, jr_093_5b51                            ; $5b8f: $30 $c0

    ld c, [hl]                                    ; $5b91: $4e
    ld [$1a88], sp                                ; $5b92: $08 $88 $1a
    rst $18                                       ; $5b95: $df
    ld h, b                                       ; $5b96: $60
    ld l, [hl]                                    ; $5b97: $6e
    or b                                          ; $5b98: $b0
    or a                                          ; $5b99: $b7
    ld e, b                                       ; $5b9a: $58
    db $10                                        ; $5b9b: $10
    sbc d                                         ; $5b9c: $9a
    ld l, l                                       ; $5b9d: $6d
    ld c, l                                       ; $5b9e: $4d
    sub [hl]                                      ; $5b9f: $96
    ld bc, $a15f                                  ; $5ba0: $01 $5f $a1
    ld a, l                                       ; $5ba3: $7d
    add b                                         ; $5ba4: $80
    pop af                                        ; $5ba5: $f1
    cp b                                          ; $5ba6: $b8
    ld a, [hl+]                                   ; $5ba7: $2a
    sbc b                                         ; $5ba8: $98

jr_093_5ba9:
    add hl, hl                                    ; $5ba9: $29
    cp b                                          ; $5baa: $b8
    ld a, [hl+]                                   ; $5bab: $2a
    sbc b                                         ; $5bac: $98
    add hl, de                                    ; $5bad: $19
    ld l, l                                       ; $5bae: $6d
    inc bc                                        ; $5baf: $03
    db $ed                                        ; $5bb0: $ed
    cp b                                          ; $5bb1: $b8
    ld [bc], a                                    ; $5bb2: $02
    db $10                                        ; $5bb3: $10
    or a                                          ; $5bb4: $b7
    inc c                                         ; $5bb5: $0c
    ld l, [hl]                                    ; $5bb6: $6e
    or $01                                        ; $5bb7: $f6 $01

jr_093_5bb9:
    cp [hl]                                       ; $5bb9: $be
    ld h, b                                       ; $5bba: $60
    ld [hl], h                                    ; $5bbb: $74
    ret nz                                        ; $5bbc: $c0

    inc l                                         ; $5bbd: $2c
    dec e                                         ; $5bbe: $1d
    add d                                         ; $5bbf: $82
    inc e                                         ; $5bc0: $1c
    inc e                                         ; $5bc1: $1c
    xor $57                                       ; $5bc2: $ee $57
    inc c                                         ; $5bc4: $0c
    jr nz, @+$06                                  ; $5bc5: $20 $04

    rst $28                                       ; $5bc7: $ef
    rst $38                                       ; $5bc8: $ff
    nop                                           ; $5bc9: $00
    ld a, [$fafc]                                 ; $5bca: $fa $fc $fa
    db $fc                                        ; $5bcd: $fc
    xor $fc                                       ; $5bce: $ee $fc
    cp d                                          ; $5bd0: $ba
    db $fc                                        ; $5bd1: $fc
    dec b                                         ; $5bd2: $05
    cp $fc                                        ; $5bd3: $fe $fc
    ld [$b6fc], a                                 ; $5bd5: $ea $fc $b6
    inc c                                         ; $5bd8: $0c
    nop                                           ; $5bd9: $00
    nop                                           ; $5bda: $00
    cp d                                          ; $5bdb: $ba
    inc bc                                        ; $5bdc: $03
    nop                                           ; $5bdd: $00
    ld c, d                                       ; $5bde: $4a
    or l                                          ; $5bdf: $b5
    dec de                                        ; $5be0: $1b
    ldh [$75], a                                  ; $5be1: $e0 $75
    add b                                         ; $5be3: $80
    jp nc, Jump_000_1400                          ; $5be4: $d2 $00 $14

    jr nz, jr_093_5b69                            ; $5be7: $20 $80

    ret nz                                        ; $5be9: $c0

    ld d, b                                       ; $5bea: $50
    ld h, l                                       ; $5beb: $65
    ld bc, $1bd3                                  ; $5bec: $01 $d3 $1b
    rst $38                                       ; $5bef: $ff
    ei                                            ; $5bf0: $fb
    nop                                           ; $5bf1: $00
    pop af                                        ; $5bf2: $f1
    rst $30                                       ; $5bf3: $f7
    ld h, a                                       ; $5bf4: $67
    ld l, a                                       ; $5bf5: $6f
    ld l, a                                       ; $5bf6: $6f
    ld l, a                                       ; $5bf7: $6f
    cpl                                           ; $5bf8: $2f
    xor [hl]                                      ; $5bf9: $ae
    jr nc, @+$2e                                  ; $5bfa: $30 $2c

    cp $40                                        ; $5bfc: $fe $40
    nop                                           ; $5bfe: $00
    inc b                                         ; $5bff: $04
    jr c, @+$7c                                   ; $5c00: $38 $7a

    inc a                                         ; $5c02: $3c
    nop                                           ; $5c03: $00
    add b                                         ; $5c04: $80
    ld h, b                                       ; $5c05: $60
    add b                                         ; $5c06: $80
    inc [hl]                                      ; $5c07: $34
    dec b                                         ; $5c08: $05
    inc b                                         ; $5c09: $04

jr_093_5c0a:
    jr c, jr_093_5bb9                             ; $5c0a: $38 $ad

    xor c                                         ; $5c0c: $a9
    and e                                         ; $5c0d: $a3
    and e                                         ; $5c0e: $a3
    or a                                          ; $5c0f: $b7
    ld b, $83                                     ; $5c10: $06 $83
    db $db                                        ; $5c12: $db
    sub c                                         ; $5c13: $91
    call c, Call_093_71d8                         ; $5c14: $dc $d8 $71
    nop                                           ; $5c17: $00
    db $dd                                        ; $5c18: $dd

jr_093_5c19:
    dec b                                         ; $5c19: $05
    cp [hl]                                       ; $5c1a: $be
    nop                                           ; $5c1b: $00
    inc a                                         ; $5c1c: $3c
    cp d                                          ; $5c1d: $ba
    sbc h                                         ; $5c1e: $9c
    cp [hl]                                       ; $5c1f: $be
    sbc h                                         ; $5c20: $9c
    cp d                                          ; $5c21: $ba
    inc a                                         ; $5c22: $3c
    ld a, [hl]                                    ; $5c23: $7e
    ld b, b                                       ; $5c24: $40
    inc a                                         ; $5c25: $3c
    ld a, d                                       ; $5c26: $7a
    ld [$fcfa], sp                                ; $5c27: $08 $fa $fc
    sub b                                         ; $5c2a: $90
    nop                                           ; $5c2b: $00
    adc b                                         ; $5c2c: $88
    nop                                           ; $5c2d: $00
    nop                                           ; $5c2e: $00
    inc d                                         ; $5c2f: $14
    add b                                         ; $5c30: $80
    xor d                                         ; $5c31: $aa
    nop                                           ; $5c32: $00
    ld e, a                                       ; $5c33: $5f
    add b                                         ; $5c34: $80

jr_093_5c35:
    ei                                            ; $5c35: $fb
    nop                                           ; $5c36: $00
    ld [$803f], sp                                ; $5c37: $08 $3f $80
    cpl                                           ; $5c3a: $2f
    ret nz                                        ; $5c3b: $c0

    ld h, b                                       ; $5c3c: $60
    ld c, l                                       ; $5c3d: $4d
    or $01                                        ; $5c3e: $f6 $01
    cp h                                          ; $5c40: $bc
    jr nz, jr_093_5c44                            ; $5c41: $20 $01

jr_093_5c43:
    ei                                            ; $5c43: $fb

jr_093_5c44:
    ld de, $6f06                                  ; $5c44: $11 $06 $6f
    rst $38                                       ; $5c47: $ff
    ldh [$e0], a                                  ; $5c48: $e0 $e0
    nop                                           ; $5c4a: $00
    ld h, b                                       ; $5c4b: $60
    ldh [$60], a                                  ; $5c4c: $e0 $60
    inc e                                         ; $5c4e: $1c
    ld [hl], b                                    ; $5c4f: $70
    ld [$fcbe], sp                                ; $5c50: $08 $be $fc
    ld a, $fc                                     ; $5c53: $3e $fc
    ld [bc], a                                    ; $5c55: $02
    ld b, b                                       ; $5c56: $40
    db $fc                                        ; $5c57: $fc
    add b                                         ; $5c58: $80
    inc c                                         ; $5c59: $0c
    cp $ff                                        ; $5c5a: $fe $ff
    ld a, l                                       ; $5c5c: $7d
    add d                                         ; $5c5d: $82
    scf                                           ; $5c5e: $37
    ret z                                         ; $5c5f: $c8

    nop                                           ; $5c60: $00
    ld a, l                                       ; $5c61: $7d
    add d                                         ; $5c62: $82
    inc d                                         ; $5c63: $14
    db $eb                                        ; $5c64: $eb
    ld e, $e1                                     ; $5c65: $1e $e1
    dec l                                         ; $5c67: $2d
    jp nc, $9200                                  ; $5c68: $d2 $00 $92

    ld l, l                                       ; $5c6b: $6d
    inc b                                         ; $5c6c: $04
    ei                                            ; $5c6d: $fb
    ld a, [hl]                                    ; $5c6e: $7e
    ld bc, $05fa                                  ; $5c6f: $01 $fa $05
    dec [hl]                                      ; $5c72: $35
    xor $01                                       ; $5c73: $ee $01
    ld [hl], b                                    ; $5c75: $70
    dec a                                         ; $5c76: $3d
    adc [hl]                                      ; $5c77: $8e
    jr c, jr_093_5c19                             ; $5c78: $38 $9f

    call z, $8405                                 ; $5c7a: $cc $05 $84
    ei                                            ; $5c7d: $fb

jr_093_5c7e:
    dec b                                         ; $5c7e: $05
    jr nz, jr_093_5c0a                            ; $5c7f: $20 $89

    ld [$0802], sp                                ; $5c81: $08 $02 $08
    add c                                         ; $5c84: $81
    nop                                           ; $5c85: $00

jr_093_5c86:
    add c                                         ; $5c86: $81
    ld a, [hl]                                    ; $5c87: $7e
    ld bc, $8000                                  ; $5c88: $01 $00 $80
    ld [$0088], sp                                ; $5c8b: $08 $88 $00
    nop                                           ; $5c8e: $00
    ld [hl-], a                                   ; $5c8f: $32
    jr nc, @+$34                                  ; $5c90: $30 $32

    nop                                           ; $5c92: $00
    db $10                                        ; $5c93: $10
    ld [hl-], a                                   ; $5c94: $32
    jr nc, jr_093_5c99                            ; $5c95: $30 $02

    nop                                           ; $5c97: $00
    ld [bc], a                                    ; $5c98: $02

jr_093_5c99:
    db $fd                                        ; $5c99: $fd
    ld [bc], a                                    ; $5c9a: $02
    nop                                           ; $5c9b: $00
    nop                                           ; $5c9c: $00
    jr nc, jr_093_5ccf                            ; $5c9d: $30 $30

    nop                                           ; $5c9f: $00
    nop                                           ; $5ca0: $00
    ld h, h                                       ; $5ca1: $64
    jr nz, jr_093_5d08                            ; $5ca2: $20 $64

    ld [$6460], sp                                ; $5ca4: $08 $60 $64
    jr nz, jr_093_5cad                            ; $5ca7: $20 $04

    ld e, d                                       ; $5ca9: $5a
    ld b, $04                                     ; $5caa: $06 $04
    nop                                           ; $5cac: $00

jr_093_5cad:
    ld h, b                                       ; $5cad: $60
    inc b                                         ; $5cae: $04
    jr nz, jr_093_5c35                            ; $5caf: $20 $84

    inc b                                         ; $5cb1: $04
    add h                                         ; $5cb2: $84
    inc b                                         ; $5cb3: $04
    inc a                                         ; $5cb4: $3c
    jr jr_093_5c43                                ; $5cb5: $18 $8c

    inc c                                         ; $5cb7: $0c
    nop                                           ; $5cb8: $00
    adc h                                         ; $5cb9: $8c
    inc b                                         ; $5cba: $04
    adc h                                         ; $5cbb: $8c
    inc c                                         ; $5cbc: $0c
    add hl, bc                                    ; $5cbd: $09
    adc b                                         ; $5cbe: $88
    ld [$4088], sp                                ; $5cbf: $08 $88 $40
    ld bc, $00b0                                  ; $5cc2: $01 $b0 $00
    ld bc, $1880                                  ; $5cc5: $01 $80 $18
    sbc b                                         ; $5cc8: $98
    add hl, de                                    ; $5cc9: $19
    adc b                                         ; $5cca: $88
    dec b                                         ; $5ccb: $05
    jr @-$66                                      ; $5ccc: $18 $98

    ld [hl-], a                                   ; $5cce: $32

jr_093_5ccf:
    db $10                                        ; $5ccf: $10
    jr nc, jr_093_5d0e                            ; $5cd0: $30 $3c

    nop                                           ; $5cd2: $00
    xor b                                         ; $5cd3: $a8
    ld e, d                                       ; $5cd4: $5a
    ld b, $00                                     ; $5cd5: $06 $00
    ld d, b                                       ; $5cd7: $50
    ld d, b                                       ; $5cd8: $50
    ld [hl], d                                    ; $5cd9: $72
    ld [hl], b                                    ; $5cda: $70
    db $10                                        ; $5cdb: $10
    db $10                                        ; $5cdc: $10
    ld h, h                                       ; $5cdd: $64
    ld h, b                                       ; $5cde: $60
    ld d, d                                       ; $5cdf: $52
    ld h, b                                       ; $5ce0: $60
    inc a                                         ; $5ce1: $3c
    nop                                           ; $5ce2: $00
    xor d                                         ; $5ce3: $aa
    ld h, h                                       ; $5ce4: $64
    ld b, $40                                     ; $5ce5: $06 $40
    ld b, b                                       ; $5ce7: $40
    inc c                                         ; $5ce8: $0c
    nop                                           ; $5ce9: $00
    ld h, b                                       ; $5cea: $60
    ret c                                         ; $5ceb: $d8

    inc a                                         ; $5cec: $3c
    jr nz, jr_093_5d29                            ; $5ced: $20 $3a

    nop                                           ; $5cef: $00
    adc h                                         ; $5cf0: $8c
    ld c, b                                       ; $5cf1: $48
    db $10                                        ; $5cf2: $10
    inc a                                         ; $5cf3: $3c
    jr nz, jr_093_5c7e                            ; $5cf4: $20 $88

    add hl, de                                    ; $5cf6: $19
    sbc b                                         ; $5cf7: $98
    ld h, c                                       ; $5cf8: $61
    jr jr_093_5d43                                ; $5cf9: $18 $48

    db $10                                        ; $5cfb: $10
    inc a                                         ; $5cfc: $3c
    jr @+$22                                      ; $5cfd: $18 $20

    jr nz, @+$34                                  ; $5cff: $20 $32

    jr nc, jr_093_5d4b                            ; $5d01: $30 $48

    jr jr_093_5c86                                ; $5d03: $18 $81

    inc a                                         ; $5d05: $3c
    jr @+$63                                      ; $5d06: $18 $61

jr_093_5d08:
    ld h, c                                       ; $5d08: $61
    ld h, l                                       ; $5d09: $65
    ld h, c                                       ; $5d0a: $61
    ld hl, $4821                                  ; $5d0b: $21 $21 $48

jr_093_5d0e:
    ld [$8002], sp                                ; $5d0e: $08 $02 $80
    nop                                           ; $5d11: $00
    sub h                                         ; $5d12: $94
    inc d                                         ; $5d13: $14
    sbc h                                         ; $5d14: $9c
    inc e                                         ; $5d15: $1c
    add h                                         ; $5d16: $84
    ld [$8080], sp                                ; $5d17: $08 $80 $80
    sbc e                                         ; $5d1a: $9b
    ld bc, $ff00                                  ; $5d1b: $01 $00 $ff
    ld bc, $2880                                  ; $5d1e: $01 $80 $28
    xor b                                         ; $5d21: $a8
    add hl, sp                                    ; $5d22: $39
    rrca                                          ; $5d23: $0f
    cp b                                          ; $5d24: $b8
    ld [$8188], sp                                ; $5d25: $08 $88 $81
    db $fc                                        ; $5d28: $fc

jr_093_5d29:
    ld b, $82                                     ; $5d29: $06 $82
    dec c                                         ; $5d2b: $0d
    or h                                          ; $5d2c: $b4
    ld [$183c], sp                                ; $5d2d: $08 $3c $18

jr_093_5d30:
    add b                                         ; $5d30: $80
    db $10                                        ; $5d31: $10
    jr jr_093_5d38                                ; $5d32: $18 $04

    nop                                           ; $5d34: $00
    or c                                          ; $5d35: $b1
    or c                                          ; $5d36: $b1
    or l                                          ; $5d37: $b5

jr_093_5d38:
    sub c                                         ; $5d38: $91
    or c                                          ; $5d39: $b1
    ld h, b                                       ; $5d3a: $60
    or c                                          ; $5d3b: $b1
    db $e4                                        ; $5d3c: $e4
    ld c, $a2                                     ; $5d3d: $0e $a2
    dec c                                         ; $5d3f: $0d
    nop                                           ; $5d40: $00
    nop                                           ; $5d41: $00
    xor c                                         ; $5d42: $a9

jr_093_5d43:
    and c                                         ; $5d43: $a1
    jp hl                                         ; $5d44: $e9


    nop                                           ; $5d45: $00
    pop hl                                        ; $5d46: $e1
    add hl, hl                                    ; $5d47: $29
    ld hl, $0008                                  ; $5d48: $21 $08 $00

jr_093_5d4b:
    ld [$08f7], sp                                ; $5d4b: $08 $f7 $08
    nop                                           ; $5d4e: $00
    nop                                           ; $5d4f: $00
    and c                                         ; $5d50: $a1
    and c                                         ; $5d51: $a1
    ld bc, $9100                                  ; $5d52: $01 $00 $91
    add b                                         ; $5d55: $80
    sub c                                         ; $5d56: $91
    add b                                         ; $5d57: $80
    inc b                                         ; $5d58: $04
    nop                                           ; $5d59: $00
    ld de, $1d00                                  ; $5d5a: $11 $00 $1d
    ldh [rNR11], a                                ; $5d5d: $e0 $11
    nop                                           ; $5d5f: $00
    add c                                         ; $5d60: $81
    ret z                                         ; $5d61: $c8

    ld d, l                                       ; $5d62: $55
    ld [$21f0], sp                                ; $5d63: $08 $f0 $21
    ld d, d                                       ; $5d66: $52
    add b                                         ; $5d67: $80
    ldh a, [$09]                                  ; $5d68: $f0 $09
    nop                                           ; $5d6a: $00
    rst $38                                       ; $5d6b: $ff
    ld [hl+], a                                   ; $5d6c: $22
    ld [bc], a                                    ; $5d6d: $02
    db $dd                                        ; $5d6e: $dd
    ld d, a                                       ; $5d6f: $57
    xor b                                         ; $5d70: $a8
    db $f4                                        ; $5d71: $f4
    ld bc, $00ab                                  ; $5d72: $01 $ab $00
    rlca                                          ; $5d75: $07
    add b                                         ; $5d76: $80
    ld [bc], a                                    ; $5d77: $02
    nop                                           ; $5d78: $00
    ld de, $e900                                  ; $5d79: $11 $00 $e9
    pop hl                                        ; $5d7c: $e1
    ld hl, $003c                                  ; $5d7d: $21 $3c $00
    and d                                         ; $5d80: $a2
    nop                                           ; $5d81: $00
    nop                                           ; $5d82: $00
    ld [$c200], sp                                ; $5d83: $08 $00 $c2
    jp nz, $c2ca                                  ; $5d86: $c2 $ca $c2

    jp nz, $c228                                  ; $5d89: $c2 $28 $c2

    sub c                                         ; $5d8c: $91
    inc [hl]                                      ; $5d8d: $34
    nop                                           ; $5d8e: $00
    ld de, $036c                                  ; $5d8f: $11 $6c $03
    ld de, $c100                                  ; $5d92: $11 $00 $c1
    dec c                                         ; $5d95: $0d
    ret nz                                        ; $5d96: $c0

    pop de                                        ; $5d97: $d1
    ret nz                                        ; $5d98: $c0

    pop bc                                        ; $5d99: $c1
    ld sp, $6100                                  ; $5d9a: $31 $00 $61
    ld c, a                                       ; $5d9d: $4f
    ld b, b                                       ; $5d9e: $40
    jr z, jr_093_5da1                             ; $5d9f: $28 $00

jr_093_5da1:
    add c                                         ; $5da1: $81
    inc l                                         ; $5da2: $2c
    ld [$6262], sp                                ; $5da3: $08 $62 $62
    ld l, d                                       ; $5da6: $6a
    ld [hl+], a                                   ; $5da7: $22
    ld h, d                                       ; $5da8: $62
    ld h, d                                       ; $5da9: $62
    jr c, jr_093_5db4                             ; $5daa: $38 $08

    adc l                                         ; $5dac: $8d
    inc l                                         ; $5dad: $2c
    jr nc, jr_093_5d30                            ; $5dae: $30 $80

    pop bc                                        ; $5db0: $c1
    ret nz                                        ; $5db1: $c0

    jr c, @+$0a                                   ; $5db2: $38 $08

jr_093_5db4:
    ldh a, [$09]                                  ; $5db4: $f0 $09
    sub h                                         ; $5db6: $94
    ld c, h                                       ; $5db7: $4c
    rlca                                          ; $5db8: $07
    ld b, l                                       ; $5db9: $45
    rst $18                                       ; $5dba: $df
    jr z, jr_093_5dc4                             ; $5dbb: $28 $07

    ccf                                           ; $5dbd: $3f
    add b                                         ; $5dbe: $80
    ld l, a                                       ; $5dbf: $6f
    ld e, a                                       ; $5dc0: $5f
    rlca                                          ; $5dc1: $07
    ld b, b                                       ; $5dc2: $40
    ret nz                                        ; $5dc3: $c0

jr_093_5dc4:
    inc bc                                        ; $5dc4: $03
    ld de, $00e0                                  ; $5dc5: $11 $e0 $00
    jp nc, $076e                                  ; $5dc8: $d2 $6e $07

    push af                                       ; $5dcb: $f5
    nop                                           ; $5dcc: $00
    cp e                                          ; $5dcd: $bb
    ld l, b                                       ; $5dce: $68
    nop                                           ; $5dcf: $00
    ld bc, $4343                                  ; $5dd0: $01 $43 $43
    ld l, e                                       ; $5dd3: $6b
    ld h, c                                       ; $5dd4: $61
    ld h, e                                       ; $5dd5: $63
    ld h, e                                       ; $5dd6: $63
    ld [$20e0], sp                                ; $5dd7: $08 $e0 $20
    or b                                          ; $5dda: $b0
    ld l, b                                       ; $5ddb: $68
    jr z, jr_093_5def                             ; $5ddc: $28 $11

    ld a, h                                       ; $5dde: $7c
    ld a, [bc]                                    ; $5ddf: $0a
    ld [hl], d                                    ; $5de0: $72
    ld b, $7d                                     ; $5de1: $06 $7d
    add d                                         ; $5de3: $82
    ld [hl], a                                    ; $5de4: $77
    adc b                                         ; $5de5: $88
    add b                                         ; $5de6: $80
    ldh a, [rOBP1]                                ; $5de7: $f0 $49
    sbc $00                                       ; $5de9: $de $00
    xor a                                         ; $5deb: $af
    db $10                                        ; $5dec: $10
    db $db                                        ; $5ded: $db
    inc h                                         ; $5dee: $24

jr_093_5def:
    ld a, [c]                                     ; $5def: $f2
    nop                                           ; $5df0: $00
    dec c                                         ; $5df1: $0d
    ld h, l                                       ; $5df2: $65
    sbc d                                         ; $5df3: $9a
    ld [$5415], a                                 ; $5df4: $ea $15 $54
    xor e                                         ; $5df7: $ab
    and b                                         ; $5df8: $a0
    ld b, c                                       ; $5df9: $41
    ld e, a                                       ; $5dfa: $5f
    ret nz                                        ; $5dfb: $c0

    ld a, [de]                                    ; $5dfc: $1a
    sbc e                                         ; $5dfd: $9b
    ld h, b                                       ; $5dfe: $60
    push af                                       ; $5dff: $f5
    nop                                           ; $5e00: $00
    ld d, d                                       ; $5e01: $52
    jr jr_093_5e08                                ; $5e02: $18 $04

    ld l, b                                       ; $5e04: $68
    ld b, b                                       ; $5e05: $40
    sbc a                                         ; $5e06: $9f
    ld e, b                                       ; $5e07: $58

jr_093_5e08:
    ld hl, sp+$07                                 ; $5e08: $f8 $07
    db $10                                        ; $5e0a: $10
    jp z, Jump_000_1400                           ; $5e0b: $ca $00 $14

    nop                                           ; $5e0e: $00

jr_093_5e0f:
    ld a, [hl+]                                   ; $5e0f: $2a
    nop                                           ; $5e10: $00
    nop                                           ; $5e11: $00
    ld e, a                                       ; $5e12: $5f
    nop                                           ; $5e13: $00
    ld a, e                                       ; $5e14: $7b
    nop                                           ; $5e15: $00
    cp a                                          ; $5e16: $bf
    nop                                           ; $5e17: $00
    rst $28                                       ; $5e18: $ef
    nop                                           ; $5e19: $00
    nop                                           ; $5e1a: $00
    db $fd                                        ; $5e1b: $fd
    ld [bc], a                                    ; $5e1c: $02
    rst $30                                       ; $5e1d: $f7
    ld [$827d], sp                                ; $5e1e: $08 $7d $82
    sub h                                         ; $5e21: $94
    ld a, h                                       ; $5e22: $7c
    ld l, e                                       ; $5e23: $6b
    ld b, b                                       ; $5e24: $40
    ld a, [hl+]                                   ; $5e25: $2a
    or b                                          ; $5e26: $b0
    dec c                                         ; $5e27: $0d
    add b                                         ; $5e28: $80
    ld c, [hl]                                    ; $5e29: $4e
    ret nz                                        ; $5e2a: $c0

    dec c                                         ; $5e2b: $0d
    ldh a, [rKEY1]                                ; $5e2c: $f0 $4d
    ret z                                         ; $5e2e: $c8

    rst $30                                       ; $5e2f: $f7
    jr nz, @+$03                                  ; $5e30: $20 $01

    cp $f0                                        ; $5e32: $fe $f0
    ld c, l                                       ; $5e34: $4d
    dec hl                                        ; $5e35: $2b
    nop                                           ; $5e36: $00
    ld a, c                                       ; $5e37: $79
    ld b, $ea                                     ; $5e38: $06 $ea
    nop                                           ; $5e3a: $00
    dec d                                         ; $5e3b: $15
    sub a                                         ; $5e3c: $97
    ld l, b                                       ; $5e3d: $68
    ld a, [hl+]                                   ; $5e3e: $2a
    ret nc                                        ; $5e3f: $d0

    ld d, b                                       ; $5e40: $50
    and b                                         ; $5e41: $a0
    rlc b                                         ; $5e42: $cb $00
    nop                                           ; $5e44: $00
    or h                                          ; $5e45: $b4
    inc bc                                        ; $5e46: $03
    ld l, h                                       ; $5e47: $6c
    inc bc                                        ; $5e48: $03
    ld h, b                                       ; $5e49: $60
    rra                                           ; $5e4a: $1f
    ld b, h                                       ; $5e4b: $44
    nop                                           ; $5e4c: $00
    dec sp                                        ; $5e4d: $3b
    adc l                                         ; $5e4e: $8d
    ld [hl], d                                    ; $5e4f: $72
    ld d, [hl]                                    ; $5e50: $56
    add hl, hl                                    ; $5e51: $29
    db $dd                                        ; $5e52: $dd
    inc hl                                        ; $5e53: $23
    ld l, e                                       ; $5e54: $6b
    nop                                           ; $5e55: $00
    ld d, $96                                     ; $5e56: $16 $96
    ld l, h                                       ; $5e58: $6c

jr_093_5e59:
    cp a                                          ; $5e59: $bf
    ld a, a                                       ; $5e5a: $7f
    ld b, b                                       ; $5e5b: $40
    rst $38                                       ; $5e5c: $ff
    sub h                                         ; $5e5d: $94
    nop                                           ; $5e5e: $00
    ldh [$bf], a                                  ; $5e5f: $e0 $bf
    ret nz                                        ; $5e61: $c0

    xor d                                         ; $5e62: $aa
    push de                                       ; $5e63: $d5
    sub b                                         ; $5e64: $90
    rst $28                                       ; $5e65: $ef
    and b                                         ; $5e66: $a0
    dec b                                         ; $5e67: $05
    rst $18                                       ; $5e68: $df

jr_093_5e69:
    add b                                         ; $5e69: $80

jr_093_5e6a:
    rst $38                                       ; $5e6a: $ff
    dec l                                         ; $5e6b: $2d
    ld e, b                                       ; $5e6c: $58
    ld hl, sp+$1b                                 ; $5e6d: $f8 $1b
    sbc a                                         ; $5e6f: $9f
    ret z                                         ; $5e70: $c8

    dec bc                                        ; $5e71: $0b
    nop                                           ; $5e72: $00
    jr jr_093_5e0f                                ; $5e73: $18 $9a

    dec c                                         ; $5e75: $0d
    ldh [$df], a                                  ; $5e76: $e0 $df
    ldh [$bf], a                                  ; $5e78: $e0 $bf
    and b                                         ; $5e7a: $a0
    ld [$e0bf], sp                                ; $5e7b: $08 $bf $e0
    cp a                                          ; $5e7e: $bf
    cp a                                          ; $5e7f: $bf
    ld b, $00                                     ; $5e80: $06 $00
    cp a                                          ; $5e82: $bf
    and b                                         ; $5e83: $a0
    xor c                                         ; $5e84: $a9
    inc b                                         ; $5e85: $04
    or [hl]                                       ; $5e86: $b6
    ld [bc], a                                    ; $5e87: $02
    db $fd                                        ; $5e88: $fd
    jr nz, jr_093_5e6a                            ; $5e89: $20 $df

    ld h, b                                       ; $5e8b: $60
    ld c, [hl]                                    ; $5e8c: $4e
    ld c, b                                       ; $5e8d: $48
    rst $30                                       ; $5e8e: $f7
    ld b, b                                       ; $5e8f: $40
    and c                                         ; $5e90: $a1
    ld [hl], b                                    ; $5e91: $70
    ld d, b                                       ; $5e92: $50
    nop                                           ; $5e93: $00
    rst $38                                       ; $5e94: $ff
    cp a                                          ; $5e95: $bf
    ret nz                                        ; $5e96: $c0

    jr c, jr_093_5e59                             ; $5e97: $38 $c0

jr_093_5e99:
    nop                                           ; $5e99: $00
    cp b                                          ; $5e9a: $b8
    push bc                                       ; $5e9b: $c5
    dec a                                         ; $5e9c: $3d
    ret nz                                        ; $5e9d: $c0

    cp b                                          ; $5e9e: $b8
    ret nz                                        ; $5e9f: $c0

    jr c, jr_093_5e69                             ; $5ea0: $38 $c7

    nop                                           ; $5ea2: $00
    or b                                          ; $5ea3: $b0
    ret nz                                        ; $5ea4: $c0

    ld bc, $ffff                                  ; $5ea5: $01 $ff $ff
    ld bc, $011f                                  ; $5ea8: $01 $1f $01
    db $10                                        ; $5eab: $10
    rra                                           ; $5eac: $1f

jr_093_5ead:
    and c                                         ; $5ead: $a1
    cp a                                          ; $5eae: $bf
    ld b, $08                                     ; $5eaf: $06 $08
    pop hl                                        ; $5eb1: $e1
    rrca                                          ; $5eb2: $0f
    ld bc, $0055                                  ; $5eb3: $01 $55 $00
    xor d                                         ; $5eb6: $aa
    rst $38                                       ; $5eb7: $ff
    nop                                           ; $5eb8: $00
    ld d, a                                       ; $5eb9: $57
    xor c                                         ; $5eba: $a9
    dec l                                         ; $5ebb: $2d
    jp c, $007f                                   ; $5ebc: $da $7f $00

    add b                                         ; $5ebf: $80
    ld d, h                                       ; $5ec0: $54
    add b                                         ; $5ec1: $80
    ld a, l                                       ; $5ec2: $7d
    add d                                         ; $5ec3: $82
    ld d, a                                       ; $5ec4: $57
    xor e                                         ; $5ec5: $ab
    ld d, c                                       ; $5ec6: $51
    nop                                           ; $5ec7: $00
    xor [hl]                                      ; $5ec8: $ae
    ei                                            ; $5ec9: $fb
    nop                                           ; $5eca: $00
    pop de                                        ; $5ecb: $d1
    xor d                                         ; $5ecc: $aa
    ld l, d                                       ; $5ecd: $6a
    sub c                                         ; $5ece: $91
    ei                                            ; $5ecf: $fb
    jr nz, jr_093_5ed6                            ; $5ed0: $20 $04

    ld d, c                                       ; $5ed2: $51
    db $db                                        ; $5ed3: $db
    inc bc                                        ; $5ed4: $03
    cp d                                          ; $5ed5: $ba

jr_093_5ed6:
    ld d, l                                       ; $5ed6: $55
    jr nc, jr_093_5e99                            ; $5ed7: $30 $c0

    or b                                          ; $5ed9: $b0
    ld [bc], a                                    ; $5eda: $02
    ret nz                                        ; $5edb: $c0

    jr nc, jr_093_5ead                            ; $5edc: $30 $cf

    cp a                                          ; $5ede: $bf

Call_093_5edf:
    ret nz                                        ; $5edf: $c0

    ld a, a                                       ; $5ee0: $7f
    sub [hl]                                      ; $5ee1: $96
    ld b, $aa                                     ; $5ee2: $06 $aa
    dec b                                         ; $5ee4: $05
    push de                                       ; $5ee5: $d5
    rst $38                                       ; $5ee6: $ff
    rst $38                                       ; $5ee7: $ff
    rrca                                          ; $5ee8: $0f
    ld bc, $0002                                  ; $5ee9: $01 $02 $00
    pop af                                        ; $5eec: $f1
    sub l                                         ; $5eed: $95
    rlca                                          ; $5eee: $07
    add b                                         ; $5eef: $80
    or d                                          ; $5ef0: $b2
    rlca                                          ; $5ef1: $07
    xor d                                         ; $5ef2: $aa
    ld d, l                                       ; $5ef3: $55
    rst $38                                       ; $5ef4: $ff
    rst $38                                       ; $5ef5: $ff
    dec a                                         ; $5ef6: $3d
    sbc $55                                       ; $5ef7: $de $55
    nop                                           ; $5ef9: $00
    xor e                                         ; $5efa: $ab
    ld a, l                                       ; $5efb: $7d
    add d                                         ; $5efc: $82
    ld [hl], b                                    ; $5efd: $70
    add b                                         ; $5efe: $80
    ld a, a                                       ; $5eff: $7f
    add b                                         ; $5f00: $80
    inc hl                                        ; $5f01: $23
    nop                                           ; $5f02: $00
    call c, $ab57                                 ; $5f03: $dc $57 $ab
    dec l                                         ; $5f06: $2d
    jp nc, $aa55                                  ; $5f07: $d2 $55 $aa

    xor a                                         ; $5f0a: $af
    jr nz, jr_093_5f62                            ; $5f0b: $20 $55

    rst $38                                       ; $5f0d: $ff
    inc c                                         ; $5f0e: $0c
    ld [bc], a                                    ; $5f0f: $02
    db $fd                                        ; $5f10: $fd
    nop                                           ; $5f11: $00
    add hl, hl                                    ; $5f12: $29
    db $dd                                        ; $5f13: $dd
    call nc, Call_000_3b10                        ; $5f14: $d4 $10 $3b
    ld l, c                                       ; $5f17: $69
    sub $20                                       ; $5f18: $d6 $20
    inc c                                         ; $5f1a: $0c
    ld a, a                                       ; $5f1b: $7f

Jump_093_5f1c:
    add b                                         ; $5f1c: $80
    ld a, l                                       ; $5f1d: $7d
    sbc d                                         ; $5f1e: $9a
    ld bc, $b44b                                  ; $5f1f: $01 $4b $b4
    ld a, l                                       ; $5f22: $7d
    ld [$807f], a                                 ; $5f23: $ea $7f $80
    ld b, d                                       ; $5f26: $42
    ld b, b                                       ; $5f27: $40
    ld [de], a                                    ; $5f28: $12
    nop                                           ; $5f29: $00
    rst $38                                       ; $5f2a: $ff
    nop                                           ; $5f2b: $00
    ld l, a                                       ; $5f2c: $6f
    sub d                                         ; $5f2d: $92
    sub $29                                       ; $5f2e: $d6 $29
    ld a, e                                       ; $5f30: $7b
    or h                                          ; $5f31: $b4
    ld b, b                                       ; $5f32: $40
    rst $38                                       ; $5f33: $ff
    ld [hl-], a                                   ; $5f34: $32
    ld b, $7f                                     ; $5f35: $06 $7f
    add b                                         ; $5f37: $80
    ld e, c                                       ; $5f38: $59
    add b                                         ; $5f39: $80
    ld a, a                                       ; $5f3a: $7f
    nop                                           ; $5f3b: $00
    dec b                                         ; $5f3c: $05
    ld e, l                                       ; $5f3d: $5d
    ld a, [hl+]                                   ; $5f3e: $2a
    dec hl                                        ; $5f3f: $2b
    ld d, a                                       ; $5f40: $57
    push af                                       ; $5f41: $f5
    jr nz, jr_093_5f44                            ; $5f42: $20 $00

jr_093_5f44:
    pop de                                        ; $5f44: $d1
    ld h, b                                       ; $5f45: $60
    ld bc, $4540                                  ; $5f46: $01 $40 $45
    ld d, e                                       ; $5f49: $53
    inc b                                         ; $5f4a: $04
    ld a, [$b535]                                 ; $5f4b: $fa $35 $b5
    ld c, d                                       ; $5f4e: $4a
    ld [$4ad5], a                                 ; $5f4f: $ea $d5 $4a
    rst $38                                       ; $5f52: $ff
    adc [hl]                                      ; $5f53: $8e
    ld b, $aa                                     ; $5f54: $06 $aa
    push de                                       ; $5f56: $d5
    ld a, b                                       ; $5f57: $78
    ld [$1480], sp                                ; $5f58: $08 $80 $14
    rlca                                          ; $5f5b: $07
    add b                                         ; $5f5c: $80
    ld h, $ff                                     ; $5f5d: $26 $ff
    db $dd                                        ; $5f5f: $dd
    add d                                         ; $5f60: $82
    nop                                           ; $5f61: $00

jr_093_5f62:
    xor d                                         ; $5f62: $aa
    ld d, l                                       ; $5f63: $55
    ld a, b                                       ; $5f64: $78
    ld [$0c76], sp                                ; $5f65: $08 $76 $0c
    nop                                           ; $5f68: $00
    ld sp, $5dff                                  ; $5f69: $31 $ff $5d
    add d                                         ; $5f6c: $82
    nop                                           ; $5f6d: $00
    db $10                                        ; $5f6e: $10
    ld c, b                                       ; $5f6f: $48
    ld l, d                                       ; $5f70: $6a
    rst $38                                       ; $5f71: $ff
    cp d                                          ; $5f72: $ba
    db $10                                        ; $5f73: $10
    ld d, b                                       ; $5f74: $50
    ld h, b                                       ; $5f75: $60
    sub $a2                                       ; $5f76: $d6 $a2
    nop                                           ; $5f78: $00
    ldh [$08], a                                  ; $5f79: $e0 $08
    push hl                                       ; $5f7b: $e5
    ld e, d                                       ; $5f7c: $5a
    ld a, [$ff35]                                 ; $5f7d: $fa $35 $ff
    jr nz, jr_093_5f82                            ; $5f80: $20 $00

jr_093_5f82:
    ld a, h                                       ; $5f82: $7c
    xor e                                         ; $5f83: $ab
    inc b                                         ; $5f84: $04
    or $29                                        ; $5f85: $f6 $29
    ld d, h                                       ; $5f87: $54
    xor e                                         ; $5f88: $ab
    cp $00                                        ; $5f89: $fe $00
    ld bc, $9966                                  ; $5f8b: $01 $66 $99
    sbc $21                                       ; $5f8e: $de $21

jr_093_5f90:
    cp $01                                        ; $5f90: $fe $01
    ld d, b                                       ; $5f92: $50
    sub b                                         ; $5f93: $90
    or $03                                        ; $5f94: $f6 $03
    cp [hl]                                       ; $5f96: $be
    ld e, c                                       ; $5f97: $59
    ld c, d                                       ; $5f98: $4a
    db $10                                        ; $5f99: $10
    ld [hl+], a                                   ; $5f9a: $22
    ld [$082a], sp                                ; $5f9b: $08 $2a $08
    inc c                                         ; $5f9e: $0c
    ld a, [hl+]                                   ; $5f9f: $2a
    ld l, b                                       ; $5fa0: $68
    ld a, [bc]                                    ; $5fa1: $0a
    ld hl, sp+$02                                 ; $5fa2: $f8 $02
    nop                                           ; $5fa4: $00
    db $10                                        ; $5fa5: $10
    jr jr_093_5f90                                ; $5fa6: $18 $e8

    adc d                                         ; $5fa8: $8a
    add b                                         ; $5fa9: $80
    inc c                                         ; $5faa: $0c
    ld [$8ae8], sp                                ; $5fab: $08 $e8 $8a
    adc [hl]                                      ; $5fae: $8e
    xor b                                         ; $5faf: $a8
    ld l, [hl]                                    ; $5fb0: $6e
    ld [$000f], sp                                ; $5fb1: $08 $0f $00
    jr nz, jr_093_5fc5                            ; $5fb4: $20 $0f

    jr nz, jr_093_5fc6                            ; $5fb6: $20 $0e

    jr z, jr_093_5fba                             ; $5fb8: $28 $00

jr_093_5fba:
    ld [hl+], a                                   ; $5fba: $22
    ld e, l                                       ; $5fbb: $5d
    nop                                           ; $5fbc: $00
    ld a, a                                       ; $5fbd: $7f
    nop                                           ; $5fbe: $00
    ld a, a                                       ; $5fbf: $7f
    nop                                           ; $5fc0: $00
    nop                                           ; $5fc1: $00
    adc a                                         ; $5fc2: $8f
    and b                                         ; $5fc3: $a0
    adc a                                         ; $5fc4: $8f

jr_093_5fc5:
    nop                                           ; $5fc5: $00

jr_093_5fc6:
    and b                                         ; $5fc6: $a0
    adc [hl]                                      ; $5fc7: $8e
    xor b                                         ; $5fc8: $a8
    adc b                                         ; $5fc9: $88
    xor d                                         ; $5fca: $aa
    nop                                           ; $5fcb: $00
    ld [hl+], a                                   ; $5fcc: $22
    call c, $fe00                                 ; $5fcd: $dc $00 $fe
    nop                                           ; $5fd0: $00
    cp $00                                        ; $5fd1: $fe $00
    nop                                           ; $5fd3: $00
    xor d                                         ; $5fd4: $aa
    ld d, l                                       ; $5fd5: $55
    ld b, b                                       ; $5fd6: $40
    inc [hl]                                      ; $5fd7: $34
    rst $38                                       ; $5fd8: $ff
    ld [$0004], a                                 ; $5fd9: $ea $04 $00
    ld [bc], a                                    ; $5fdc: $02
    ld [$129d], sp                                ; $5fdd: $08 $9d $12
    ld bc, $55ab                                  ; $5fe0: $01 $ab $55
    add sp, -$34                                  ; $5fe3: $e8 $cc
    rlca                                          ; $5fe5: $07
    inc b                                         ; $5fe6: $04
    nop                                           ; $5fe7: $00
    ld [bc], a                                    ; $5fe8: $02
    ld [$0a4f], sp                                ; $5fe9: $08 $4f $0a
    nop                                           ; $5fec: $00
    ld c, l                                       ; $5fed: $4d
    ld b, $a6                                     ; $5fee: $06 $a6
    nop                                           ; $5ff0: $00
    inc bc                                        ; $5ff1: $03
    ld e, a                                       ; $5ff2: $5f
    and c                                         ; $5ff3: $a1
    ld d, c                                       ; $5ff4: $51
    xor [hl]                                      ; $5ff5: $ae
    db $f4                                        ; $5ff6: $f4
    dec bc                                        ; $5ff7: $0b
    ld e, d                                       ; $5ff8: $5a
    nop                                           ; $5ff9: $00
    dec b                                         ; $5ffa: $05
    ld [hl], l                                    ; $5ffb: $75
    ld a, [bc]                                    ; $5ffc: $0a
    dec sp                                        ; $5ffd: $3b
    inc b                                         ; $5ffe: $04
    sub l                                         ; $5fff: $95
    ld [bc], a                                    ; $6000: $02
    xor d                                         ; $6001: $aa
    nop                                           ; $6002: $00
    ld bc, $804b                                  ; $6003: $01 $4b $80
    and l                                         ; $6006: $a5
    ld b, b                                       ; $6007: $40

Jump_093_6008:
    sub c                                         ; $6008: $91
    ld h, b                                       ; $6009: $60
    ld a, [hl-]                                   ; $600a: $3a
    nop                                           ; $600b: $00
    ret nz                                        ; $600c: $c0

    xor l                                         ; $600d: $ad
    ld d, b                                       ; $600e: $50
    ld d, a                                       ; $600f: $57
    xor b                                         ; $6010: $a8
    adc [hl]                                      ; $6011: $8e
    ld [hl], c                                    ; $6012: $71
    adc l                                         ; $6013: $8d
    ld bc, $5b73                                  ; $6014: $01 $73 $5b
    and [hl]                                      ; $6017: $a6
    ld a, [c]                                     ; $6018: $f2
    dec c                                         ; $6019: $0d
    db $ec                                        ; $601a: $ec
    dec de                                        ; $601b: $1b
    ld a, [hl-]                                   ; $601c: $3a
    ld c, $00                                     ; $601d: $0e $00
    ld h, h                                       ; $601f: $64
    db $db                                        ; $6020: $db
    sub $69                                       ; $6021: $d6 $69
    ld l, e                                       ; $6023: $6b
    inc [hl]                                      ; $6024: $34
    ld [hl], $18                                  ; $6025: $36 $18
    nop                                           ; $6027: $00
    dec de                                        ; $6028: $1b
    inc c                                         ; $6029: $0c
    dec a                                         ; $602a: $3d
    ld b, $56                                     ; $602b: $06 $56
    inc hl                                        ; $602d: $23
    cp e                                          ; $602e: $bb
    ld b, c                                       ; $602f: $41
    jr nc, @+$52                                  ; $6030: $30 $50

    add b                                         ; $6032: $80
    halt                                          ; $6033: $76
    ld bc, $097a                                  ; $6034: $01 $7a $09
    rst $38                                       ; $6037: $ff
    push de                                       ; $6038: $d5
    rst $38                                       ; $6039: $ff
    xor a                                         ; $603a: $af
    ld hl, sp+$11                                 ; $603b: $f8 $11
    dec d                                         ; $603d: $15
    halt                                          ; $603e: $76
    ld bc, $1004                                  ; $603f: $01 $04 $10
    ld a, e                                       ; $6042: $7b
    ld bc, $159a                                  ; $6043: $01 $9a $15
    db $10                                        ; $6046: $10
    rst $38                                       ; $6047: $ff
    cp d                                          ; $6048: $ba
    ldh a, [rDIV]                                 ; $6049: $f0 $04
    db $10                                        ; $604b: $10
    db $10                                        ; $604c: $10
    jr z, jr_093_60cd                             ; $604d: $28 $7e

    nop                                           ; $604f: $00
    inc b                                         ; $6050: $04
    db $10                                        ; $6051: $10
    ld d, l                                       ; $6052: $55
    rst $38                                       ; $6053: $ff
    db $eb                                        ; $6054: $eb
    rst $38                                       ; $6055: $ff
    ld b, b                                       ; $6056: $40
    push af                                       ; $6057: $f5
    adc [hl]                                      ; $6058: $8e
    ld a, [bc]                                    ; $6059: $0a
    xor d                                         ; $605a: $aa
    rst $28                                       ; $605b: $ef
    add b                                         ; $605c: $80
    ld d, l                                       ; $605d: $55
    add b                                         ; $605e: $80
    ld [$0d80], a                                 ; $605f: $ea $80 $0d
    inc b                                         ; $6062: $04
    rst $38                                       ; $6063: $ff
    add b                                         ; $6064: $80
    ld d, l                                       ; $6065: $55
    and d                                         ; $6066: $a2
    and $99                                       ; $6067: $e6 $99
    ld d, l                                       ; $6069: $55
    ld bc, $bfaa                                  ; $606a: $01 $aa $bf
    ccf                                           ; $606d: $3f
    ld d, b                                       ; $606e: $50
    ld e, a                                       ; $606f: $5f
    rst $38                                       ; $6070: $ff
    ccf                                           ; $6071: $3f
    add [hl]                                      ; $6072: $86
    add hl, bc                                    ; $6073: $09
    nop                                           ; $6074: $00

Jump_093_6075:
    rst $10                                       ; $6075: $d7
    ld [$209f], sp                                ; $6076: $08 $9f $20
    ld d, l                                       ; $6079: $55
    xor d                                         ; $607a: $aa
    ld a, [$08f0]                                 ; $607b: $fa $f0 $08
    dec d                                         ; $607e: $15
    ldh a, [rIE]                                  ; $607f: $f0 $ff
    ldh a, [$96]                                  ; $6081: $f0 $96
    add hl, bc                                    ; $6083: $09
    ld l, d                                       ; $6084: $6a
    sub l                                         ; $6085: $95
    db $fd                                        ; $6086: $fd
    ld a, [bc]                                    ; $6087: $0a
    nop                                           ; $6088: $00
    ld d, l                                       ; $6089: $55
    xor d                                         ; $608a: $aa
    xor d                                         ; $608b: $aa
    or [hl]                                       ; $608c: $b6
    ld b, $ae                                     ; $608d: $06 $ae
    inc a                                         ; $608f: $3c
    dec c                                         ; $6090: $0d
    nop                                           ; $6091: $00
    ld de, $52ad                                  ; $6092: $11 $ad $52
    ld a, d                                       ; $6095: $7a
    and b                                         ; $6096: $a0
    ld bc, $afd0                                  ; $6097: $01 $d0 $af
    ld a, a                                       ; $609a: $7f
    ld b, b                                       ; $609b: $40
    nop                                           ; $609c: $00
    jr nc, jr_093_60f4                            ; $609d: $30 $55

    xor b                                         ; $609f: $a8
    ld b, b                                       ; $60a0: $40
    nop                                           ; $60a1: $00
    adc e                                         ; $60a2: $8b
    nop                                           ; $60a3: $00
    add b                                         ; $60a4: $80
    ld b, b                                       ; $60a5: $40
    inc b                                         ; $60a6: $04
    ret c                                         ; $60a7: $d8

    nop                                           ; $60a8: $00
    sub b                                         ; $60a9: $90
    ld c, l                                       ; $60aa: $4d
    add b                                         ; $60ab: $80
    ld b, b                                       ; $60ac: $40
    nop                                           ; $60ad: $00
    ld b, b                                       ; $60ae: $40
    add b                                         ; $60af: $80
    ld b, b                                       ; $60b0: $40
    nop                                           ; $60b1: $00
    ld a, [bc]                                    ; $60b2: $0a
    push de                                       ; $60b3: $d5
    sub h                                         ; $60b4: $94
    ld c, b                                       ; $60b5: $48
    ld bc, $0102                                  ; $60b6: $01 $02 $01
    ld [bc], a                                    ; $60b9: $02
    nop                                           ; $60ba: $00
    ld de, $01a2                                  ; $60bb: $11 $a2 $01
    ld [bc], a                                    ; $60be: $02
    nop                                           ; $60bf: $00
    inc bc                                        ; $60c0: $03
    ld c, c                                       ; $60c1: $49
    ld [hl-], a                                   ; $60c2: $32
    nop                                           ; $60c3: $00
    ld de, $298a                                  ; $60c4: $11 $8a $29
    ld [de], a                                    ; $60c7: $12
    rst $38                                       ; $60c8: $ff
    nop                                           ; $60c9: $00
    ld d, b                                       ; $60ca: $50
    xor a                                         ; $60cb: $af
    adc b                                         ; $60cc: $88

jr_093_60cd:
    nop                                           ; $60cd: $00
    ld [bc], a                                    ; $60ce: $02
    add d                                         ; $60cf: $82
    ld l, d                                       ; $60d0: $6a
    ld bc, $180a                                  ; $60d1: $01 $0a $18
    ld d, [hl]                                    ; $60d4: $56
    xor c                                         ; $60d5: $a9
    db $ed                                        ; $60d6: $ed
    nop                                           ; $60d7: $00
    add d                                         ; $60d8: $82
    ld a, a                                       ; $60d9: $7f
    add b                                         ; $60da: $80
    add l                                         ; $60db: $85
    ld a, [$807f]                                 ; $60dc: $fa $7f $80
    push af                                       ; $60df: $f5
    nop                                           ; $60e0: $00
    adc b                                         ; $60e1: $88
    ld l, e                                       ; $60e2: $6b
    sub h                                         ; $60e3: $94
    rst $38                                       ; $60e4: $ff
    add b                                         ; $60e5: $80
    adc d                                         ; $60e6: $8a
    ld d, l                                       ; $60e7: $55
    add b                                         ; $60e8: $80
    ld [bc], a                                    ; $60e9: $02
    ld b, b                                       ; $60ea: $40
    sub l                                         ; $60eb: $95
    ld b, b                                       ; $60ec: $40
    nop                                           ; $60ed: $00
    ret nz                                        ; $60ee: $c0

    add b                                         ; $60ef: $80
    ld b, b                                       ; $60f0: $40
    nop                                           ; $60f1: $00
    ccf                                           ; $60f2: $3f
    nop                                           ; $60f3: $00

jr_093_60f4:
    ld a, a                                       ; $60f4: $7f
    add b                                         ; $60f5: $80
    ld a, a                                       ; $60f6: $7f
    ld b, b                                       ; $60f7: $40
    cp e                                          ; $60f8: $bb
    ld bc, $4102                                  ; $60f9: $01 $02 $41
    db $10                                        ; $60fc: $10
    ld [bc], a                                    ; $60fd: $02
    add b                                         ; $60fe: $80
    inc bc                                        ; $60ff: $03
    ld c, b                                       ; $6100: $48
    ld [$fefd], sp                                ; $6101: $08 $fd $fe
    ld bc, $00fe                                  ; $6104: $01 $fe $00
    xor e                                         ; $6107: $ab
    ld d, h                                       ; $6108: $54
    ld d, l                                       ; $6109: $55
    ld a, [bc]                                    ; $610a: $0a
    rst $38                                       ; $610b: $ff
    nop                                           ; $610c: $00
    ld d, c                                       ; $610d: $51
    xor [hl]                                      ; $610e: $ae
    nop                                           ; $610f: $00
    rst $38                                       ; $6110: $ff
    nop                                           ; $6111: $00
    ld e, d                                       ; $6112: $5a
    add l                                         ; $6113: $85
    dec hl                                        ; $6114: $2b
    ld b, b                                       ; $6115: $40
    rst $38                                       ; $6116: $ff
    nop                                           ; $6117: $00
    ld hl, $b748                                  ; $6118: $21 $48 $b7
    inc bc                                        ; $611b: $03
    ld bc, $aa80                                  ; $611c: $01 $80 $aa
    push de                                       ; $611f: $d5
    adc b                                         ; $6120: $88
    add b                                         ; $6121: $80
    ld [bc], a                                    ; $6122: $02
    ld e, d                                       ; $6123: $5a
    and c                                         ; $6124: $a1
    add h                                         ; $6125: $84
    ld a, [bc]                                    ; $6126: $0a
    ld d, l                                       ; $6127: $55
    ret z                                         ; $6128: $c8

    inc c                                         ; $6129: $0c
    ld b, $0a                                     ; $612a: $06 $0a
    db $10                                        ; $612c: $10
    ld a, d                                       ; $612d: $7a
    ld b, $08                                     ; $612e: $06 $08
    dec d                                         ; $6130: $15
    rst $38                                       ; $6131: $ff
    ld a, [hl+]                                   ; $6132: $2a
    push de                                       ; $6133: $d5
    db $10                                        ; $6134: $10

jr_093_6135:
    jr @+$06                                      ; $6135: $18 $04

    and b                                         ; $6137: $a0
    ld [bc], a                                    ; $6138: $02
    ld [bc], a                                    ; $6139: $02
    ld c, $01                                     ; $613a: $0e $01
    dec l                                         ; $613c: $2d
    ld a, [de]                                    ; $613d: $1a
    push hl                                       ; $613e: $e5
    jr nz, jr_093_6169                            ; $613f: $20 $28

    ld [$1224], sp                                ; $6141: $08 $24 $12
    ld a, $29                                     ; $6144: $3e $29
    rst $38                                       ; $6146: $ff
    inc b                                         ; $6147: $04
    db $10                                        ; $6148: $10
    add b                                         ; $6149: $80
    db $10                                        ; $614a: $10
    add hl, bc                                    ; $614b: $09
    cpl                                           ; $614c: $2f
    ret nc                                        ; $614d: $d0

    ld e, d                                       ; $614e: $5a
    add b                                         ; $614f: $80
    ld [hl], l                                    ; $6150: $75
    add d                                         ; $6151: $82
    dec l                                         ; $6152: $2d
    nop                                           ; $6153: $00
    ret nc                                        ; $6154: $d0

    ld a, [hl+]                                   ; $6155: $2a
    add b                                         ; $6156: $80
    ld a, d                                       ; $6157: $7a
    add l                                         ; $6158: $85
    ld c, c                                       ; $6159: $49
    add b                                         ; $615a: $80
    ld d, h                                       ; $615b: $54
    nop                                           ; $615c: $00
    xor e                                         ; $615d: $ab
    and d                                         ; $615e: $a2
    ld e, l                                       ; $615f: $5d
    sub $01                                       ; $6160: $d6 $01
    ld l, [hl]                                    ; $6162: $6e
    add c                                         ; $6163: $81
    ld l, d                                       ; $6164: $6a
    nop                                           ; $6165: $00
    dec d                                         ; $6166: $15
    sub $01                                       ; $6167: $d6 $01

jr_093_6169:
    and d                                         ; $6169: $a2
    ld e, l                                       ; $616a: $5d
    ld c, d                                       ; $616b: $4a
    ld bc, $c12a                                  ; $616c: $01 $2a $c1
    jr nc, jr_093_61d1                            ; $616f: $30 $60

    add b                                         ; $6171: $80
    ld a, [bc]                                    ; $6172: $0a
    and b                                         ; $6173: $a0
    rst $38                                       ; $6174: $ff
    sub c                                         ; $6175: $91
    rst $38                                       ; $6176: $ff
    and d                                         ; $6177: $a2
    add d                                         ; $6178: $82
    ld bc, $5cc6                                  ; $6179: $01 $c6 $5c
    ld c, $dc                                     ; $617c: $0e $dc
    add hl, de                                    ; $617e: $19
    dec d                                         ; $617f: $15
    rst $38                                       ; $6180: $ff
    xor l                                         ; $6181: $ad
    adc [hl]                                      ; $6182: $8e
    ld [bc], a                                    ; $6183: $02
    ld d, b                                       ; $6184: $50
    jr jr_093_6135                                ; $6185: $18 $ae

    ld [$5700], sp                                ; $6187: $08 $00 $57
    nop                                           ; $618a: $00
    ld a, [$1130]                                 ; $618b: $fa $30 $11
    rst $10                                       ; $618e: $d7
    ld [$d09a], sp                                ; $618f: $08 $9a $d0
    ld d, b                                       ; $6192: $50
    add hl, bc                                    ; $6193: $09
    ld a, [bc]                                    ; $6194: $0a
    dec b                                         ; $6195: $05
    cp a                                          ; $6196: $bf
    ld b, b                                       ; $6197: $40
    ld de, $956a                                  ; $6198: $11 $6a $95
    push de                                       ; $619b: $d5
    jr z, @-$7e                                   ; $619c: $28 $80

    db $10                                        ; $619e: $10
    ld bc, $f2a8                                  ; $619f: $01 $a8 $f2
    add hl, bc                                    ; $61a2: $09
    pop de                                        ; $61a3: $d1
    jr z, jr_093_61ee                             ; $61a4: $28 $48

    db $10                                        ; $61a6: $10
    inc b                                         ; $61a7: $04
    jp hl                                         ; $61a8: $e9


    db $10                                        ; $61a9: $10
    ld a, [bc]                                    ; $61aa: $0a
    pop af                                        ; $61ab: $f1
    ldh [rNR41], a                                ; $61ac: $e0 $20
    ld bc, $1ae5                                  ; $61ae: $01 $e5 $1a
    nop                                           ; $61b1: $00
    add c                                         ; $61b2: $81
    nop                                           ; $61b3: $00
    db $10                                        ; $61b4: $10
    ldh [rP1], a                                  ; $61b5: $e0 $00
    nop                                           ; $61b7: $00
    ld d, b                                       ; $61b8: $50
    adc d                                         ; $61b9: $8a
    db $10                                        ; $61ba: $10
    ld [$9504], sp                                ; $61bb: $08 $04 $95
    db $ec                                        ; $61be: $ec
    nop                                           ; $61bf: $00
    ld d, b                                       ; $61c0: $50
    xor a                                         ; $61c1: $af
    cp a                                          ; $61c2: $bf
    ld b, b                                       ; $61c3: $40
    ld bc, $4295                                  ; $61c4: $01 $95 $42
    xor d                                         ; $61c7: $aa
    ld b, c                                       ; $61c8: $41

jr_093_61c9:
    ld a, a                                       ; $61c9: $7f
    add b                                         ; $61ca: $80
    ld d, b                                       ; $61cb: $50
    ld l, d                                       ; $61cc: $6a
    ld bc, $8300                                  ; $61cd: $01 $00 $83
    ld d, h                                       ; $61d0: $54

jr_093_61d1:
    and d                                         ; $61d1: $a2
    inc d                                         ; $61d2: $14
    ldh [rNR12], a                                ; $61d3: $e0 $12
    ld d, b                                       ; $61d5: $50
    and c                                         ; $61d6: $a1
    nop                                           ; $61d7: $00
    pop de                                        ; $61d8: $d1
    ld [hl+], a                                   ; $61d9: $22
    add b                                         ; $61da: $80
    daa                                           ; $61db: $27
    ld b, b                                       ; $61dc: $40
    jr nz, @+$01                                  ; $61dd: $20 $ff

    ccf                                           ; $61df: $3f
    nop                                           ; $61e0: $00
    ld b, d                                       ; $61e1: $42
    db $10                                        ; $61e2: $10
    add hl, bc                                    ; $61e3: $09
    ld d, b                                       ; $61e4: $50
    ld de, $8188                                  ; $61e5: $11 $88 $81
    ld [$2010], sp                                ; $61e8: $08 $10 $20
    dec e                                         ; $61eb: $1d
    add b                                         ; $61ec: $80
    cp e                                          ; $61ed: $bb

jr_093_61ee:
    inc bc                                        ; $61ee: $03
    ld b, b                                       ; $61ef: $40
    ld a, a                                       ; $61f0: $7f
    dec hl                                        ; $61f1: $2b
    call nc, Call_093_5508                        ; $61f2: $d4 $08 $55
    adc d                                         ; $61f5: $8a
    ld a, a                                       ; $61f6: $7f
    add b                                         ; $61f7: $80
    jr nz, @+$1b                                  ; $61f8: $20 $19

    db $eb                                        ; $61fa: $eb
    ret nz                                        ; $61fb: $c0

    ld a, a                                       ; $61fc: $7f
    ld h, h                                       ; $61fd: $64
    ret nz                                        ; $61fe: $c0

    rst $10                                       ; $61ff: $d7
    ld bc, $039a                                  ; $6200: $01 $9a $03
    ret nz                                        ; $6203: $c0

    cp a                                          ; $6204: $bf
    inc b                                         ; $6205: $04
    jr jr_093_61c9                                ; $6206: $18 $c1

    cp a                                          ; $6208: $bf
    ret nc                                        ; $6209: $d0

    sbc b                                         ; $620a: $98
    dec de                                        ; $620b: $1b
    jr nz, jr_093_6229                            ; $620c: $20 $1b

    xor d                                         ; $620e: $aa
    cp h                                          ; $620f: $bc
    rlca                                          ; $6210: $07
    jp $e7ff                                      ; $6211: $c3 $ff $e7


    rst $18                                       ; $6214: $df
    pop bc                                        ; $6215: $c1
    inc b                                         ; $6216: $04
    ld c, b                                       ; $6217: $48
    and b                                         ; $6218: $a0
    rrca                                          ; $6219: $0f
    ld d, a                                       ; $621a: $57
    adc b                                         ; $621b: $88
    db $ed                                        ; $621c: $ed

jr_093_621d:
    nop                                           ; $621d: $00
    ld e, [hl]                                    ; $621e: $5e
    and b                                         ; $621f: $a0

Jump_093_6220:
    rrca                                          ; $6220: $0f
    db $10                                        ; $6221: $10
    ld b, $04                                     ; $6222: $06 $04
    ld [$3dc0], sp                                ; $6224: $08 $c0 $3d
    dec d                                         ; $6227: $15
    ret nz                                        ; $6228: $c0

jr_093_6229:
    ld b, b                                       ; $6229: $40
    jr nz, jr_093_623c                            ; $622a: $20 $10

    ld hl, $1010                                  ; $622c: $21 $10 $10
    and c                                         ; $622f: $a1
    dec h                                         ; $6230: $25
    ld bc, $101e                                  ; $6231: $01 $1e $10
    ld hl, $3606                                  ; $6234: $21 $06 $36
    add hl, de                                    ; $6237: $19
    inc e                                         ; $6238: $1c
    rrca                                          ; $6239: $0f
    dec b                                         ; $623a: $05
    xor d                                         ; $623b: $aa

jr_093_623c:
    ld b, $1c                                     ; $623c: $06 $1c
    ld c, $62                                     ; $623e: $0e $62
    nop                                           ; $6240: $00
    inc e                                         ; $6241: $1c
    sub l                                         ; $6242: $95
    ld h, d                                       ; $6243: $62
    ld b, d                                       ; $6244: $42
    add c                                         ; $6245: $81
    add c                                         ; $6246: $81
    nop                                           ; $6247: $00

jr_093_6248:
    ld [$1000], sp                                ; $6248: $08 $00 $10
    jr nz, jr_093_625d                            ; $624b: $20 $10

    jr nz, @+$32                                  ; $624d: $20 $30

    jr z, jr_093_6281                             ; $624f: $28 $30

    ld [hl], a                                    ; $6251: $77
    nop                                           ; $6252: $00
    jr jr_093_621d                                ; $6253: $18 $c8

    ccf                                           ; $6255: $3f
    cpl                                           ; $6256: $2f
    rst $00                                       ; $6257: $c7
    ld b, c                                       ; $6258: $41
    add b                                         ; $6259: $80
    db $10                                        ; $625a: $10
    add b                                         ; $625b: $80
    add hl, hl                                    ; $625c: $29

jr_093_625d:
    ld b, $10                                     ; $625d: $06 $10
    ld [$0870], sp                                ; $625f: $08 $70 $08
    ret nz                                        ; $6262: $c0

    jr c, jr_093_627d                             ; $6263: $38 $18

    nop                                           ; $6265: $00
    ldh a, [$d8]                                  ; $6266: $f0 $d8
    ldh [rLY], a                                  ; $6268: $e0 $44
    cp b                                          ; $626a: $b8
    nop                                           ; $626b: $00
    inc bc                                        ; $626c: $03
    inc bc                                        ; $626d: $03
    ld [bc], a                                    ; $626e: $02
    ld bc, $0103                                  ; $626f: $01 $03 $01
    rla                                           ; $6272: $17
    ld bc, $1083                                  ; $6273: $01 $83 $10
    ld b, $ab                                     ; $6276: $06 $ab
    jr nz, jr_093_627a                            ; $6278: $20 $00

jr_093_627a:
    sbc $86                                       ; $627a: $de $86
    dec b                                         ; $627c: $05

jr_093_627d:
    add b                                         ; $627d: $80
    ld bc, $8167                                  ; $627e: $01 $67 $81

jr_093_6281:
    add hl, sp                                    ; $6281: $39
    nop                                           ; $6282: $00
    rst $00                                       ; $6283: $c7
    jp nz, $bafe                                  ; $6284: $c2 $fe $ba

    ld a, h                                       ; $6287: $7c
    pop hl                                        ; $6288: $e1
    ld e, $ea                                     ; $6289: $1e $ea
    nop                                           ; $628b: $00
    rlca                                          ; $628c: $07
    ld h, [hl]                                    ; $628d: $66
    add c                                         ; $628e: $81
    ld a, [hl]                                    ; $628f: $7e
    add e                                         ; $6290: $83
    ld a, b                                       ; $6291: $78
    rst $38                                       ; $6292: $ff
    xor d                                         ; $6293: $aa
    nop                                           ; $6294: $00
    ld de, $1010                                  ; $6295: $11 $10 $10
    ld [$0410], sp                                ; $6298: $08 $10 $04
    jr jr_093_6248                                ; $629b: $18 $ab

    nop                                           ; $629d: $00
    inc e                                         ; $629e: $1c
    ld [bc], a                                    ; $629f: $02
    inc b                                         ; $62a0: $04
    call nz, Call_093_7802                        ; $62a1: $c4 $02 $78
    add [hl]                                      ; $62a4: $86
    adc d                                         ; $62a5: $8a
    nop                                           ; $62a6: $00
    db $fc                                        ; $62a7: $fc
    halt                                          ; $62a8: $76
    jr c, jr_093_62ca                             ; $62a9: $38 $1f

    jr nz, jr_093_630a                            ; $62ab: $20 $5d

    jr nz, @-$63                                  ; $62ad: $20 $9b

    nop                                           ; $62af: $00
    ld h, b                                       ; $62b0: $60
    add e                                         ; $62b1: $83
    rst $38                                       ; $62b2: $ff
    ld b, c                                       ; $62b3: $41
    cp a                                          ; $62b4: $bf
    add e                                         ; $62b5: $83
    ld a, a                                       ; $62b6: $7f
    ld bc, $ff20                                  ; $62b7: $01 $20 $ff
    inc bc                                        ; $62ba: $03
    jp z, $ff12                                   ; $62bb: $ca $12 $ff

    rst $38                                       ; $62be: $ff
    add c                                         ; $62bf: $81
    cp $aa                                        ; $62c0: $fe $aa
    nop                                           ; $62c2: $00
    push de                                       ; $62c3: $d5
    sub c                                         ; $62c4: $91
    xor $2b                                       ; $62c5: $ee $2b
    call nc, $807d                                ; $62c7: $d4 $7d $80

jr_093_62ca:
    jp c, $f8b4                                   ; $62ca: $da $b4 $f8

    rlca                                          ; $62cd: $07
    add b                                         ; $62ce: $80
    db $10                                        ; $62cf: $10
    ld b, $a2                                     ; $62d0: $06 $a2
    ccf                                           ; $62d2: $3f
    add b                                         ; $62d3: $80
    ld b, b                                       ; $62d4: $40
    inc b                                         ; $62d5: $04
    add b                                         ; $62d6: $80
    nop                                           ; $62d7: $00
    ld b, b                                       ; $62d8: $40
    add c                                         ; $62d9: $81
    ld b, [hl]                                    ; $62da: $46
    inc b                                         ; $62db: $04
    sub l                                         ; $62dc: $95
    nop                                           ; $62dd: $00
    ld [bc], a                                    ; $62de: $02
    add b                                         ; $62df: $80
    push de                                       ; $62e0: $d5
    nop                                           ; $62e1: $00
    inc bc                                        ; $62e2: $03
    dec hl                                        ; $62e3: $2b
    add b                                         ; $62e4: $80
    ld e, [hl]                                    ; $62e5: $5e
    add b                                         ; $62e6: $80
    xor e                                         ; $62e7: $ab
    ld d, h                                       ; $62e8: $54
    jr nz, jr_093_6345                            ; $62e9: $20 $5a

    ld [bc], a                                    ; $62eb: $02
    dec b                                         ; $62ec: $05
    and e                                         ; $62ed: $a3
    jr nz, jr_093_6342                            ; $62ee: $20 $52

    jp c, Jump_093_6220                           ; $62f0: $da $20 $62

    ld d, l                                       ; $62f3: $55
    xor d                                         ; $62f4: $aa
    cp [hl]                                       ; $62f5: $be
    cp d                                          ; $62f6: $ba
    ld b, $f0                                     ; $62f7: $06 $f0
    ld a, [de]                                    ; $62f9: $1a
    ld a, [bc]                                    ; $62fa: $0a
    ld d, h                                       ; $62fb: $54
    xor c                                         ; $62fc: $a9
    ld [$0014], a                                 ; $62fd: $ea $14 $00
    dec de                                        ; $6300: $1b
    xor e                                         ; $6301: $ab
    nop                                           ; $6302: $00
    inc de                                        ; $6303: $13
    or l                                          ; $6304: $b5
    nop                                           ; $6305: $00
    ld c, d                                       ; $6306: $4a
    jp c, $5f21                                   ; $6307: $da $21 $5f

jr_093_630a:
    xor a                                         ; $630a: $af
    or h                                          ; $630b: $b4
    rla                                           ; $630c: $17
    ld e, a                                       ; $630d: $5f
    jr z, @+$11                                   ; $630e: $28 $0f

    ld [$1310], a                                 ; $6310: $ea $10 $13
    db $fc                                        ; $6313: $fc
    ld b, h                                       ; $6314: $44
    rlca                                          ; $6315: $07
    db $fd                                        ; $6316: $fd
    cp $06                                        ; $6317: $fe $06
    ld [$fdfc], sp                                ; $6319: $08 $fc $fd
    db $fc                                        ; $631c: $fc
    xor a                                         ; $631d: $af
    jr nz, jr_093_6333                            ; $631e: $20 $13

    ld [bc], a                                    ; $6320: $02
    dec c                                         ; $6321: $0d
    dec b                                         ; $6322: $05
    jp nz, $0265                                  ; $6323: $c2 $65 $02

    ld b, d                                       ; $6326: $42
    dec c                                         ; $6327: $0d
    xor d                                         ; $6328: $aa
    inc b                                         ; $6329: $04
    ld d, l                                       ; $632a: $55
    adc b                                         ; $632b: $88
    ld a, [$fe1a]                                 ; $632c: $fa $1a $fe
    nop                                           ; $632f: $00
    ld bc, $eb14                                  ; $6330: $01 $14 $eb

jr_093_6333:
    rst $38                                       ; $6333: $ff
    ld bc, $09d7                                  ; $6334: $01 $d7 $09
    ld l, d                                       ; $6337: $6a
    ld b, b                                       ; $6338: $40
    dec d                                         ; $6339: $15
    add $1a                                       ; $633a: $c6 $1a
    sbc e                                         ; $633c: $9b
    ld h, b                                       ; $633d: $60
    ret nc                                        ; $633e: $d0

    jr nz, jr_093_6353                            ; $633f: $20 $12

    adc h                                         ; $6341: $8c

jr_093_6342:
    jr nz, jr_093_6364                            ; $6342: $20 $20

    sub e                                         ; $6344: $93

jr_093_6345:
    db $e3                                        ; $6345: $e3
    rlca                                          ; $6346: $07
    and b                                         ; $6347: $a0
    db $10                                        ; $6348: $10
    and [hl]                                      ; $6349: $a6
    ld l, c                                       ; $634a: $69
    sub b                                         ; $634b: $90
    nop                                           ; $634c: $00
    rlca                                          ; $634d: $07
    ld [$0609], sp                                ; $634e: $08 $09 $06
    dec bc                                        ; $6351: $0b
    inc b                                         ; $6352: $04

jr_093_6353:
    adc c                                         ; $6353: $89
    inc b                                         ; $6354: $04
    nop                                           ; $6355: $00
    ld [bc], a                                    ; $6356: $02
    push de                                       ; $6357: $d5
    ld b, e                                       ; $6358: $43
    and h                                         ; $6359: $a4
    ld hl, $13d6                                  ; $635a: $21 $d6 $13
    add h                                         ; $635d: $84
    nop                                           ; $635e: $00
    ld [hl], l                                    ; $635f: $75
    adc b                                         ; $6360: $88
    xor h                                         ; $6361: $ac
    ld [bc], a                                    ; $6362: $02
    rst $38                                       ; $6363: $ff

jr_093_6364:
    nop                                           ; $6364: $00
    dec b                                         ; $6365: $05
    ld a, [$ff00]                                 ; $6366: $fa $00 $ff
    nop                                           ; $6369: $00
    dec d                                         ; $636a: $15
    ld [$502d], a                                 ; $636b: $ea $2d $50
    rst $38                                       ; $636e: $ff
    nop                                           ; $636f: $00
    nop                                           ; $6370: $00
    push de                                       ; $6371: $d5
    ld [hl+], a                                   ; $6372: $22
    or e                                          ; $6373: $b3
    ld c, h                                       ; $6374: $4c
    rst $38                                       ; $6375: $ff
    nop                                           ; $6376: $00
    ld b, l                                       ; $6377: $45
    cp d                                          ; $6378: $ba
    ld h, b                                       ; $6379: $60
    rst $38                                       ; $637a: $ff
    ldh [rTMA], a                                 ; $637b: $e0 $06
    ld a, [bc]                                    ; $637d: $0a
    dec bc                                        ; $637e: $0b
    ld d, b                                       ; $637f: $50
    adc a                                         ; $6380: $8f
    add b                                         ; $6381: $80
    ret nz                                        ; $6382: $c0

    add h                                         ; $6383: $84
    ld [bc], a                                    ; $6384: $02
    jp $c000                                      ; $6385: $c3 $00 $c0


    add a                                         ; $6388: $87
    ld b, b                                       ; $6389: $40
    rst $38                                       ; $638a: $ff
    add b                                         ; $638b: $80
    inc b                                         ; $638c: $04
    rst $38                                       ; $638d: $ff
    nop                                           ; $638e: $00
    nop                                           ; $638f: $00
    inc b                                         ; $6390: $04
    inc bc                                        ; $6391: $03
    sub l                                         ; $6392: $95
    ld h, d                                       ; $6393: $62
    add l                                         ; $6394: $85
    ld [bc], a                                    ; $6395: $02
    inc c                                         ; $6396: $0c
    ld [bc], a                                    ; $6397: $02
    inc bc                                        ; $6398: $03
    rst $38                                       ; $6399: $ff
    ld a, [hl]                                    ; $639a: $7e
    add c                                         ; $639b: $81
    cp $ab                                        ; $639c: $fe $ab
    jr nz, jr_093_63a3                            ; $639e: $20 $03

    or b                                          ; $63a0: $b0
    ld d, d                                       ; $63a1: $52
    ld c, a                                       ; $63a2: $4f

jr_093_63a3:
    db $10                                        ; $63a3: $10
    dec sp                                        ; $63a4: $3b
    add c                                         ; $63a5: $81
    sbc h                                         ; $63a6: $9c
    rlca                                          ; $63a7: $07
    and l                                         ; $63a8: $a5
    ld e, d                                       ; $63a9: $5a
    jr nz, jr_093_63c7                            ; $63aa: $20 $1b

    add b                                         ; $63ac: $80
    db $ec                                        ; $63ad: $ec
    ld a, [de]                                    ; $63ae: $1a
    inc b                                         ; $63af: $04
    ld e, c                                       ; $63b0: $59
    nop                                           ; $63b1: $00
    nop                                           ; $63b2: $00
    inc b                                         ; $63b3: $04
    cp e                                          ; $63b4: $bb
    adc d                                         ; $63b5: $8a
    ld de, $2bd0                                  ; $63b6: $11 $d0 $2b
    ld d, l                                       ; $63b9: $55
    xor d                                         ; $63ba: $aa
    ld e, h                                       ; $63bb: $5c
    cp d                                          ; $63bc: $ba
    xor d                                         ; $63bd: $aa
    rlca                                          ; $63be: $07
    db $eb                                        ; $63bf: $eb
    ldh a, [rLCDC]                                ; $63c0: $f0 $40
    or b                                          ; $63c2: $b0
    ld a, [bc]                                    ; $63c3: $0a
    ldh [rNR23], a                                ; $63c4: $e0 $18
    or l                                          ; $63c6: $b5

jr_093_63c7:
    ld c, d                                       ; $63c7: $4a
    ld l, b                                       ; $63c8: $68
    db $db                                        ; $63c9: $db
    db $10                                        ; $63ca: $10
    inc b                                         ; $63cb: $04
    nop                                           ; $63cc: $00
    inc c                                         ; $63cd: $0c
    xor d                                         ; $63ce: $aa
    nop                                           ; $63cf: $00
    inc d                                         ; $63d0: $14
    ret nc                                        ; $63d1: $d0

    ld [$6490], sp                                ; $63d2: $08 $90 $64
    dec hl                                        ; $63d5: $2b
    sbc b                                         ; $63d6: $98
    ld [$0c2a], sp                                ; $63d7: $08 $2a $0c
    ld l, e                                       ; $63da: $6b
    inc d                                         ; $63db: $14
    sub [hl]                                      ; $63dc: $96
    dec de                                        ; $63dd: $1b
    ld a, [c]                                     ; $63de: $f2
    add hl, bc                                    ; $63df: $09
    nop                                           ; $63e0: $00
    ld d, b                                       ; $63e1: $50
    xor b                                         ; $63e2: $a8
    ldh a, [$08]                                  ; $63e3: $f0 $08
    jp nc, Jump_093_5029                          ; $63e5: $d2 $29 $50

    dec bc                                        ; $63e8: $0b
    nop                                           ; $63e9: $00
    ldh a, [$08]                                  ; $63ea: $f0 $08
    ld [de], a                                    ; $63ec: $12
    jp hl                                         ; $63ed: $e9


    ldh a, [$08]                                  ; $63ee: $f0 $08
    sub c                                         ; $63f0: $91
    ld c, d                                       ; $63f1: $4a
    nop                                           ; $63f2: $00
    and b                                         ; $63f3: $a0
    add hl, de                                    ; $63f4: $19
    ldh a, [$0a]                                  ; $63f5: $f0 $0a
    ld b, b                                       ; $63f7: $40
    cp b                                          ; $63f8: $b8
    rst $30                                       ; $63f9: $f7
    rrca                                          ; $63fa: $0f
    inc bc                                        ; $63fb: $03
    and b                                         ; $63fc: $a0
    rra                                           ; $63fd: $1f
    ld a, a                                       ; $63fe: $7f
    ld a, a                                       ; $63ff: $7f
    and b                                         ; $6400: $a0
    cp a                                          ; $6401: $bf
    and [hl]                                      ; $6402: $a6
    nop                                           ; $6403: $00
    and b                                         ; $6404: $a0
    ld d, e                                       ; $6405: $53
    sub h                                         ; $6406: $94
    ld [hl], b                                    ; $6407: $70
    inc b                                         ; $6408: $04
    nop                                           ; $6409: $00
    ld a, l                                       ; $640a: $7d
    ld d, b                                       ; $640b: $50
    ld hl, $ba00                                  ; $640c: $21 $00 $ba
    rlca                                          ; $640f: $07
    ld d, h                                       ; $6410: $54
    xor e                                         ; $6411: $ab
    inc b                                         ; $6412: $04
    db $eb                                        ; $6413: $eb
    ld bc, $0156                                  ; $6414: $01 $56 $01
    db $eb                                        ; $6417: $eb
    sbc l                                         ; $6418: $9d
    rlca                                          ; $6419: $07
    rst $38                                       ; $641a: $ff
    ld bc, $2204                                  ; $641b: $01 $04 $22
    ld e, l                                       ; $641e: $5d
    rra                                           ; $641f: $1f
    ld b, c                                       ; $6420: $41
    ld d, h                                       ; $6421: $54
    jp nc, Jump_000_0007                          ; $6422: $d2 $07 $00

    nop                                           ; $6425: $00
    ld bc, $e814                                  ; $6426: $01 $14 $e8
    add b                                         ; $6429: $80
    nop                                           ; $642a: $00
    adc [hl]                                      ; $642b: $8e
    ld [hl], b                                    ; $642c: $70
    ld b, b                                       ; $642d: $40
    sbc $07                                       ; $642e: $de $07
    nop                                           ; $6430: $00
    ld a, $41                                     ; $6431: $3e $41
    dec h                                         ; $6433: $25
    ld e, e                                       ; $6434: $5b
    ld a, $41                                     ; $6435: $3e $41
    cpl                                           ; $6437: $2f
    ld b, c                                       ; $6438: $41
    nop                                           ; $6439: $00
    ld a, [de]                                    ; $643a: $1a
    ld b, c                                       ; $643b: $41
    ccf                                           ; $643c: $3f
    ld b, c                                       ; $643d: $41
    ld [hl+], a                                   ; $643e: $22
    ld e, l                                       ; $643f: $5d
    ccf                                           ; $6440: $3f
    ld b, c                                       ; $6441: $41
    ld [bc], a                                    ; $6442: $02
    ld b, h                                       ; $6443: $44
    add d                                         ; $6444: $82
    adc b                                         ; $6445: $88
    ld [hl-], a                                   ; $6446: $32
    ld b, b                                       ; $6447: $40
    add d                                         ; $6448: $82
    adc a                                         ; $6449: $8f
    inc d                                         ; $644a: $14
    rst $38                                       ; $644b: $ff
    inc b                                         ; $644c: $04
    db $eb                                        ; $644d: $eb
    ldh [$3f], a                                  ; $644e: $e0 $3f
    ldh [rNR30], a                                ; $6450: $e0 $1a
    inc e                                         ; $6452: $1c
    nop                                           ; $6453: $00
    ld a, $41                                     ; $6454: $3e $41
    nop                                           ; $6456: $00
    inc hl                                        ; $6457: $23
    ld e, l                                       ; $6458: $5d
    cp [hl]                                       ; $6459: $be
    pop bc                                        ; $645a: $c1
    dec hl                                        ; $645b: $2b
    pop bc                                        ; $645c: $c1
    ld d, [hl]                                    ; $645d: $56
    add hl, bc                                    ; $645e: $09
    jr @+$01                                      ; $645f: $18 $ff

    ld bc, $7be5                                  ; $6461: $01 $e5 $7b
    dec bc                                        ; $6464: $0b
    nop                                           ; $6465: $00
    ld b, h                                       ; $6466: $44
    ld b, [hl]                                    ; $6467: $46
    cp c                                          ; $6468: $b9
    ld bc, $0102                                  ; $6469: $01 $02 $01
    db $fd                                        ; $646c: $fd
    inc bc                                        ; $646d: $03
    xor c                                         ; $646e: $a9
    ld d, a                                       ; $646f: $57
    ld de, $06a3                                  ; $6470: $11 $a3 $06
    add l                                         ; $6473: $85
    add sp, -$59                                  ; $6474: $e8 $a7
    ld b, $2e                                     ; $6476: $06 $2e
    dec a                                         ; $6478: $3d
    ld [hl-], a                                   ; $6479: $32
    dec e                                         ; $647a: $1d
    xor d                                         ; $647b: $aa
    ld e, $25                                     ; $647c: $1e $25
    rst $38                                       ; $647e: $ff
    rst $38                                       ; $647f: $ff
    ld d, a                                       ; $6480: $57
    jp Jump_000_2410                              ; $6481: $c3 $10 $24


    ldh a, [$39]                                  ; $6484: $f0 $39
    or b                                          ; $6486: $b0
    ld c, h                                       ; $6487: $4c
    ret c                                         ; $6488: $d8

    inc h                                         ; $6489: $24
    db $10                                        ; $648a: $10
    rlca                                          ; $648b: $07
    add $18                                       ; $648c: $c6 $18
    add b                                         ; $648e: $80
    or b                                          ; $648f: $b0
    db $10                                        ; $6490: $10
    xor d                                         ; $6491: $aa
    ld b, b                                       ; $6492: $40
    ld d, l                                       ; $6493: $55
    xor d                                         ; $6494: $aa
    ld [$35e0], a                                 ; $6495: $ea $e0 $35
    db $10                                        ; $6498: $10
    ldh [$ef], a                                  ; $6499: $e0 $ef
    ldh [$b6], a                                  ; $649b: $e0 $b6
    ld c, $0a                                     ; $649d: $0e $0a
    dec [hl]                                      ; $649f: $35
    dec d                                         ; $64a0: $15
    jr z, jr_093_64a3                             ; $64a1: $28 $00

jr_093_64a3:
    ld sp, hl                                     ; $64a3: $f9
    inc b                                         ; $64a4: $04
    db $10                                        ; $64a5: $10
    db $ec                                        ; $64a6: $ec
    ld hl, sp+$04                                 ; $64a7: $f8 $04
    ret nc                                        ; $64a9: $d0

    inc c                                         ; $64aa: $0c
    nop                                           ; $64ab: $00
    ld l, b                                       ; $64ac: $68
    inc d                                         ; $64ad: $14
    ld sp, hl                                     ; $64ae: $f9
    inc b                                         ; $64af: $04
    ld d, b                                       ; $64b0: $50
    xor h                                         ; $64b1: $ac
    ld sp, hl                                     ; $64b2: $f9
    inc b                                         ; $64b3: $04
    db $10                                        ; $64b4: $10
    ld c, l                                       ; $64b5: $4d
    or b                                          ; $64b6: $b0
    nop                                           ; $64b7: $00
    dec bc                                        ; $64b8: $0b
    dec b                                         ; $64b9: $05
    add b                                         ; $64ba: $80
    ld b, b                                       ; $64bb: $40
    ld bc, $0040                                  ; $64bc: $01 $40 $00
    ld [hl-], a                                   ; $64bf: $32
    call Call_000_0001                            ; $64c0: $cd $01 $00
    ld [de], a                                    ; $64c3: $12
    call z, $201f                                 ; $64c4: $cc $1f $20
    nop                                           ; $64c7: $00
    dec b                                         ; $64c8: $05
    ld a, [hl-]                                   ; $64c9: $3a
    rra                                           ; $64ca: $1f
    jr nz, jr_093_64da                            ; $64cb: $20 $0d

    jr nc, jr_093_64d9                            ; $64cd: $30 $0a

    and c                                         ; $64cf: $a1
    nop                                           ; $64d0: $00
    rra                                           ; $64d1: $1f
    and b                                         ; $64d2: $a0
    ld bc, $1fbe                                  ; $64d3: $01 $be $1f
    and b                                         ; $64d6: $a0
    ret nc                                        ; $64d7: $d0

    inc h                                         ; $64d8: $24

jr_093_64d9:
    nop                                           ; $64d9: $00

jr_093_64da:
    or b                                          ; $64da: $b0

Call_093_64db:
    ld c, h                                       ; $64db: $4c
    ld hl, sp+$05                                 ; $64dc: $f8 $05
    ld b, b                                       ; $64de: $40
    cp h                                          ; $64df: $bc
    ei                                            ; $64e0: $fb
    rlca                                          ; $64e1: $07
    dec hl                                        ; $64e2: $2b
    xor b                                         ; $64e3: $a8
    rlca                                          ; $64e4: $07
    jp c, Jump_000_000c                           ; $64e5: $da $0c $00

    db $fc                                        ; $64e8: $fc
    inc b                                         ; $64e9: $04
    ret nz                                        ; $64ea: $c0

    ld h, h                                       ; $64eb: $64
    inc bc                                        ; $64ec: $03
    sbc d                                         ; $64ed: $9a
    rrca                                          ; $64ee: $0f
    ld b, b                                       ; $64ef: $40
    ld d, l                                       ; $64f0: $55
    and e                                         ; $64f1: $a3
    inc b                                         ; $64f2: $04
    ld a, [de]                                    ; $64f3: $1a
    dec h                                         ; $64f4: $25
    rrca                                          ; $64f5: $0f
    jr nz, jr_093_6517                            ; $64f6: $20 $1f

    jr nz, jr_093_64fa                            ; $64f8: $20 $00

jr_093_64fa:
    inc d                                         ; $64fa: $14
    dec hl                                        ; $64fb: $2b
    rst $18                                       ; $64fc: $df
    ldh [$15], a                                  ; $64fd: $e0 $15
    ldh [$2b], a                                  ; $64ff: $e0 $2b
    ret nz                                        ; $6501: $c0

    nop                                           ; $6502: $00
    rst $38                                       ; $6503: $ff
    nop                                           ; $6504: $00
    ld e, a                                       ; $6505: $5f
    cp a                                          ; $6506: $bf
    xor b                                         ; $6507: $a8
    cpl                                           ; $6508: $2f
    rst $38                                       ; $6509: $ff
    rra                                           ; $650a: $1f
    ret nz                                        ; $650b: $c0

    add b                                         ; $650c: $80
    add hl, de                                    ; $650d: $19
    ld d, b                                       ; $650e: $50
    inc c                                         ; $650f: $0c
    nop                                           ; $6510: $00
    add b                                         ; $6511: $80
    ld [$20b0], sp                                ; $6512: $08 $b0 $20
    sbc e                                         ; $6515: $9b
    add b                                         ; $6516: $80

jr_093_6517:
    push af                                       ; $6517: $f5
    ld a, [bc]                                    ; $6518: $0a
    inc h                                         ; $6519: $24
    sbc b                                         ; $651a: $98
    ld a, [bc]                                    ; $651b: $0a
    add l                                         ; $651c: $85
    inc d                                         ; $651d: $14
    adc b                                         ; $651e: $88
    ld [hl+], a                                   ; $651f: $22
    inc bc                                        ; $6520: $03
    sbc l                                         ; $6521: $9d
    nop                                           ; $6522: $00
    add b                                         ; $6523: $80
    ld a, [hl+]                                   ; $6524: $2a
    add b                                         ; $6525: $80
    ld bc, $1305                                  ; $6526: $01 $05 $13
    rrca                                          ; $6529: $0f
    ld [bc], a                                    ; $652a: $02
    ld bc, $fdff                                  ; $652b: $01 $ff $fd
    ld a, [$f80f]                                 ; $652e: $fa $0f $f8
    db $fd                                        ; $6531: $fd
    ld hl, sp-$50                                 ; $6532: $f8 $b0
    ld a, [de]                                    ; $6534: $1a
    ret nz                                        ; $6535: $c0

    ld [hl], b                                    ; $6536: $70
    inc c                                         ; $6537: $0c
    ld h, b                                       ; $6538: $60
    ld c, c                                       ; $6539: $49
    and d                                         ; $653a: $a2
    dec e                                         ; $653b: $1d
    ld e, a                                       ; $653c: $5f
    ld bc, $0403                                  ; $653d: $01 $03 $04
    nop                                           ; $6540: $00
    nop                                           ; $6541: $00
    rlca                                          ; $6542: $07
    inc hl                                        ; $6543: $23
    ld b, h                                       ; $6544: $44
    ld bc, $0204                                  ; $6545: $01 $04 $02
    dec b                                         ; $6548: $05
    nop                                           ; $6549: $00
    inc bc                                        ; $654a: $03
    inc b                                         ; $654b: $04
    xor c                                         ; $654c: $a9
    ld d, [hl]                                    ; $654d: $56
    ld d, e                                       ; $654e: $53
    inc h                                         ; $654f: $24
    cp $01                                        ; $6550: $fe $01
    ld bc, $5ba5                                  ; $6552: $01 $a5 $5b
    cp $01                                        ; $6555: $fe $01
    xor a                                         ; $6557: $af
    ld bc, $a3da                                  ; $6558: $01 $da $a3
    ld b, $00                                     ; $655b: $06 $00
    ld [hl+], a                                   ; $655d: $22
    db $dd                                        ; $655e: $dd
    rst $38                                       ; $655f: $ff
    ld bc, $55aa                                  ; $6560: $01 $aa $55
    inc bc                                        ; $6563: $03
    inc b                                         ; $6564: $04
    ld b, b                                       ; $6565: $40
    add e                                         ; $6566: $83
    inc h                                         ; $6567: $24
    nop                                           ; $6568: $00
    inc bc                                        ; $6569: $03
    inc b                                         ; $656a: $04
    ld bc, $fb04                                  ; $656b: $01 $04 $fb
    db $fc                                        ; $656e: $fc
    db $10                                        ; $656f: $10
    inc bc                                        ; $6570: $03
    db $fc                                        ; $6571: $fc
    jp c, Jump_000_001c                           ; $6572: $da $1c $00

    cp $01                                        ; $6575: $fe $01
    inc hl                                        ; $6577: $23
    db $dd                                        ; $6578: $dd
    ld a, [bc]                                    ; $6579: $0a
    cp $01                                        ; $657a: $fe $01
    xor e                                         ; $657c: $ab
    ld b, c                                       ; $657d: $41
    ld h, b                                       ; $657e: $60
    add hl, bc                                    ; $657f: $09
    add c                                         ; $6580: $81
    ld e, h                                       ; $6581: $5c
    inc [hl]                                      ; $6582: $34
    ret nz                                        ; $6583: $c0

    ld h, d                                       ; $6584: $62
    cp a                                          ; $6585: $bf
    ld d, b                                       ; $6586: $50
    inc c                                         ; $6587: $0c
    ld b, b                                       ; $6588: $40
    inc a                                         ; $6589: $3c
    sub l                                         ; $658a: $95
    nop                                           ; $658b: $00
    ld [$03de], sp                                ; $658c: $08 $de $03
    xor d                                         ; $658f: $aa
    nop                                           ; $6590: $00
    push de                                       ; $6591: $d5
    ld a, a                                       ; $6592: $7f
    add b                                         ; $6593: $80
    or e                                          ; $6594: $b3
    call z, $807f                                 ; $6595: $cc $7f $80
    or [hl]                                       ; $6598: $b6
    nop                                           ; $6599: $00
    ret nz                                        ; $659a: $c0

    halt                                          ; $659b: $76
    adc c                                         ; $659c: $89
    cp l                                          ; $659d: $bd
    jp nz, $8075                                  ; $659e: $c2 $75 $80

    ld b, l                                       ; $65a1: $45
    ld d, b                                       ; $65a2: $50
    cp d                                          ; $65a3: $ba
    and b                                         ; $65a4: $a0
    ld e, l                                       ; $65a5: $5d
    dec b                                         ; $65a6: $05
    and b                                         ; $65a7: $a0
    ld h, c                                       ; $65a8: $61
    ld a, l                                       ; $65a9: $7d
    add b                                         ; $65aa: $80
    ld [hl], a                                    ; $65ab: $77
    adc b                                         ; $65ac: $88
    nop                                           ; $65ad: $00
    ld e, a                                       ; $65ae: $5f
    and b                                         ; $65af: $a0
    ld a, [hl]                                    ; $65b0: $7e
    add c                                         ; $65b1: $81
    rst $28                                       ; $65b2: $ef
    sub b                                         ; $65b3: $90
    ld e, d                                       ; $65b4: $5a
    and l                                         ; $65b5: $a5
    nop                                           ; $65b6: $00
    and l                                         ; $65b7: $a5
    jp c, $b7c8                                   ; $65b8: $da $c8 $b7

    cp d                                          ; $65bb: $ba
    ret nz                                        ; $65bc: $c0

    ld a, a                                       ; $65bd: $7f
    add b                                         ; $65be: $80
    ld de, $c7b8                                  ; $65bf: $11 $b8 $c7
    ld l, e                                       ; $65c2: $6b
    ld b, b                                       ; $65c3: $40
    nop                                           ; $65c4: $00
    ld a, a                                       ; $65c5: $7f
    add b                                         ; $65c6: $80
    and b                                         ; $65c7: $a0
    inc c                                         ; $65c8: $0c
    nop                                           ; $65c9: $00
    ld d, c                                       ; $65ca: $51
    add d                                         ; $65cb: $82
    add $02                                       ; $65cc: $c6 $02
    and d                                         ; $65ce: $a2
    jp z, $ab02                                   ; $65cf: $ca $02 $ab

    rst $38                                       ; $65d2: $ff
    rst $10                                       ; $65d3: $d7
    ld [c], a                                     ; $65d4: $e2
    ld h, $c0                                     ; $65d5: $26 $c0
    jp hl                                         ; $65d7: $e9


    ld e, $cc                                     ; $65d8: $1e $cc
    ld b, $f3                                     ; $65da: $06 $f3
    rst $38                                       ; $65dc: $ff
    pop hl                                        ; $65dd: $e1
    rst $38                                       ; $65de: $ff
    pop hl                                        ; $65df: $e1
    cp $0d                                        ; $65e0: $fe $0d
    pop hl                                        ; $65e2: $e1
    sbc $f3                                       ; $65e3: $de $f3
    call z, Call_000_301a                         ; $65e5: $cc $1a $30
    ret c                                         ; $65e8: $d8

    dec c                                         ; $65e9: $0d
    ld [$071c], a                                 ; $65ea: $ea $1c $07
    ld [hl], b                                    ; $65ed: $70
    ret nz                                        ; $65ee: $c0

    ld [bc], a                                    ; $65ef: $02
    db $10                                        ; $65f0: $10
    inc de                                        ; $65f1: $13
    rrca                                          ; $65f2: $0f
    ld a, [$4a0f]                                 ; $65f3: $fa $0f $4a
    or l                                          ; $65f6: $b5
    sbc e                                         ; $65f7: $9b
    ld h, b                                       ; $65f8: $60
    db $10                                        ; $65f9: $10
    push af                                       ; $65fa: $f5
    nop                                           ; $65fb: $00
    ld d, d                                       ; $65fc: $52
    ld l, [hl]                                    ; $65fd: $6e
    ld [bc], a                                    ; $65fe: $02
    ld b, d                                       ; $65ff: $42
    ld bc, $fe01                                  ; $6600: $01 $01 $fe
    nop                                           ; $6603: $00
    ld a, [hl+]                                   ; $6604: $2a
    push de                                       ; $6605: $d5
    sub c                                         ; $6606: $91
    ld l, [hl]                                    ; $6607: $6e
    xor e                                         ; $6608: $ab
    ld d, h                                       ; $6609: $54
    db $fd                                        ; $660a: $fd
    nop                                           ; $660b: $00
    nop                                           ; $660c: $00
    ld e, d                                       ; $660d: $5a
    nop                                           ; $660e: $00
    adc h                                         ; $660f: $8c
    ld [hl], b                                    ; $6610: $70
    ld b, h                                       ; $6611: $44
    adc b                                         ; $6612: $88
    inc b                                         ; $6613: $04
    ei                                            ; $6614: $fb
    nop                                           ; $6615: $00
    jp nz, $a53d                                  ; $6616: $c2 $3d $a5

    ld e, d                                       ; $6619: $5a
    rst $28                                       ; $661a: $ef
    db $10                                        ; $661b: $10
    ld l, l                                       ; $661c: $6d
    db $10                                        ; $661d: $10
    ld b, h                                       ; $661e: $44
    ld e, e                                       ; $661f: $5b
    ld [bc], a                                    ; $6620: $02
    dec b                                         ; $6621: $05
    jr nz, jr_093_6626                            ; $6622: $20 $02

    nop                                           ; $6624: $00
    ld d, d                                       ; $6625: $52

jr_093_6626:
    inc bc                                        ; $6626: $03
    ld a, [bc]                                    ; $6627: $0a
    inc b                                         ; $6628: $04
    nop                                           ; $6629: $00
    inc d                                         ; $662a: $14
    ld [$100d], sp                                ; $662b: $08 $0d $10
    ld d, $18                                     ; $662e: $16 $18
    dec d                                         ; $6630: $15
    ld c, $00                                     ; $6631: $0e $00
    ld c, [hl]                                    ; $6633: $4e
    inc bc                                        ; $6634: $03
    add c                                         ; $6635: $81
    ld a, [hl]                                    ; $6636: $7e
    ld h, c                                       ; $6637: $61
    add d                                         ; $6638: $82
    ld [$4001], sp                                ; $6639: $08 $01 $40
    ld bc, $02a4                                  ; $663c: $01 $a4 $02
    cp l                                          ; $663f: $bd
    ld [bc], a                                    ; $6640: $02
    ld h, d                                       ; $6641: $62
    sbc h                                         ; $6642: $9c
    push af                                       ; $6643: $f5
    ld hl, sp+$00                                 ; $6644: $f8 $00
    db $10                                        ; $6646: $10
    rrca                                          ; $6647: $0f
    add h                                         ; $6648: $84
    ld [$08da], sp                                ; $6649: $08 $da $08
    ld h, l                                       ; $664c: $65
    sbc b                                         ; $664d: $98
    nop                                           ; $664e: $00
    set 7, h                                      ; $664f: $cb $fc
    ld e, b                                       ; $6651: $58
    ccf                                           ; $6652: $3f
    dec bc                                        ; $6653: $0b
    rlca                                          ; $6654: $07
    ld bc, $0002                                  ; $6655: $01 $02 $00
    dec [hl]                                      ; $6658: $35
    jp nz, $3983                                  ; $6659: $c2 $83 $39

    ld bc, $5804                                  ; $665c: $01 $04 $58
    inc b                                         ; $665f: $04
    ld bc, $18e4                                  ; $6660: $01 $e4 $18
    ld l, [hl]                                    ; $6663: $6e
    ldh a, [$fc]                                  ; $6664: $f0 $fc
    add b                                         ; $6666: $80
    ret nz                                        ; $6667: $c0

    adc d                                         ; $6668: $8a
    ld b, $00                                     ; $6669: $06 $00
    rst $38                                       ; $666b: $ff
    nop                                           ; $666c: $00
    sub c                                         ; $666d: $91
    ld l, [hl]                                    ; $666e: $6e
    or [hl]                                       ; $666f: $b6
    nop                                           ; $6670: $00
    db $dd                                        ; $6671: $dd
    nop                                           ; $6672: $00
    inc b                                         ; $6673: $04
    call nc, $ef2b                                ; $6674: $d4 $2b $ef
    db $10                                        ; $6677: $10
    ld [hl], e                                    ; $6678: $73
    db $10                                        ; $6679: $10
    db $10                                        ; $667a: $10
    adc [hl]                                      ; $667b: $8e
    ld [hl], c                                    ; $667c: $71
    ld b, c                                       ; $667d: $41
    cp a                                          ; $667e: $bf
    and h                                         ; $667f: $a4
    ld b, $40                                     ; $6680: $06 $40

jr_093_6682:
    cp a                                          ; $6682: $bf
    push af                                       ; $6683: $f5
    ld a, [bc]                                    ; $6684: $0a
    cp [hl]                                       ; $6685: $be
    jr nz, jr_093_6698                            ; $6686: $20 $10

    nop                                           ; $6688: $00
    pop af                                        ; $6689: $f1
    ld c, $ab                                     ; $668a: $0e $ab
    nop                                           ; $668c: $00
    db $fd                                        ; $668d: $fd
    nop                                           ; $668e: $00

jr_093_668f:
    ld sp, $11ce                                  ; $668f: $31 $ce $11
    ld a, a                                       ; $6692: $7f
    add b                                         ; $6693: $80
    jp hl                                         ; $6694: $e9


    jr nc, jr_093_66a7                            ; $6695: $30 $10

    rst $20                                       ; $6697: $e7

jr_093_6698:
    jr @+$01                                      ; $6698: $18 $ff

    inc d                                         ; $669a: $14
    inc bc                                        ; $669b: $03
    dec b                                         ; $669c: $05
    ld hl, sp+$07                                 ; $669d: $f8 $07
    rst $38                                       ; $669f: $ff
    nop                                           ; $66a0: $00
    cp [hl]                                       ; $66a1: $be
    rlca                                          ; $66a2: $07
    dec bc                                        ; $66a3: $0b
    rst $38                                       ; $66a4: $ff
    ldh a, [$2c]                                  ; $66a5: $f0 $2c

jr_093_66a7:
    ld h, b                                       ; $66a7: $60
    inc bc                                        ; $66a8: $03
    ret nz                                        ; $66a9: $c0

    dec b                                         ; $66aa: $05
    ld h, b                                       ; $66ab: $60
    ld c, c                                       ; $66ac: $49
    jr jr_093_668f                                ; $66ad: $18 $e0

    ld bc, $8018                                  ; $66af: $01 $18 $80
    inc bc                                        ; $66b2: $03
    inc b                                         ; $66b3: $04
    jr nc, jr_093_6682                            ; $66b4: $30 $cc

    ld [hl], h                                    ; $66b6: $74
    ld hl, sp+$78                                 ; $66b7: $f8 $78
    sub [hl]                                      ; $66b9: $96
    dec h                                         ; $66ba: $25
    sub d                                         ; $66bb: $92
    ld [bc], a                                    ; $66bc: $02
    adc b                                         ; $66bd: $88
    ld [hl], b                                    ; $66be: $70
    nop                                           ; $66bf: $00
    dec c                                         ; $66c0: $0d
    ld a, [c]                                     ; $66c1: $f2
    ld [$0674], a                                 ; $66c2: $ea $74 $06
    cp b                                          ; $66c5: $b8
    ld b, a                                       ; $66c6: $47
    ld e, a                                       ; $66c7: $5f
    inc h                                         ; $66c8: $24
    and b                                         ; $66c9: $a0
    ld l, [hl]                                    ; $66ca: $6e
    add b                                         ; $66cb: $80
    db $10                                        ; $66cc: $10
    add $39                                       ; $66cd: $c6 $39
    ld a, b                                       ; $66cf: $78
    inc c                                         ; $66d0: $0c
    rst $08                                       ; $66d1: $cf
    jr nc, jr_093_66e4                            ; $66d2: $30 $10

    cp $01                                        ; $66d4: $fe $01
    rst $10                                       ; $66d6: $d7
    ld d, d                                       ; $66d7: $52
    ld [$3000], sp                                ; $66d8: $08 $00 $30
    rst $08                                       ; $66db: $cf
    rst $38                                       ; $66dc: $ff
    call nz, $07c2                                ; $66dd: $c4 $c2 $07
    ld [hl], b                                    ; $66e0: $70
    dec bc                                        ; $66e1: $0b
    rst $38                                       ; $66e2: $ff
    nop                                           ; $66e3: $00

jr_093_66e4:
    ld l, e                                       ; $66e4: $6b
    ld l, $07                                     ; $66e5: $2e $07
    cp c                                          ; $66e7: $b9
    ld b, [hl]                                    ; $66e8: $46
    inc d                                         ; $66e9: $14
    db $fd                                        ; $66ea: $fd
    nop                                           ; $66eb: $00
    jp c, $2010                                   ; $66ec: $da $10 $20

    or $3e                                        ; $66ef: $f6 $3e
    rlca                                          ; $66f1: $07
    ld a, [hl-]                                   ; $66f2: $3a
    push bc                                       ; $66f3: $c5
    ld [hl], b                                    ; $66f4: $70
    ld a, l                                       ; $66f5: $7d
    jr z, jr_093_6708                             ; $66f6: $28 $10

    ld c, d                                       ; $66f8: $4a
    rrca                                          ; $66f9: $0f
    dec h                                         ; $66fa: $25
    rrca                                          ; $66fb: $0f
    adc h                                         ; $66fc: $8c

jr_093_66fd:
    ld [hl], e                                    ; $66fd: $73
    ld a, a                                       ; $66fe: $7f
    nop                                           ; $66ff: $00
    ld h, b                                       ; $6700: $60
    push de                                       ; $6701: $d5
    db $10                                        ; $6702: $10
    jr z, jr_093_677b                             ; $6703: $28 $76

    ld hl, $9ff7                                  ; $6705: $21 $f7 $9f

jr_093_6708:
    rst $38                                       ; $6708: $ff
    rrca                                          ; $6709: $0f
    ei                                            ; $670a: $fb
    ld e, $0f                                     ; $670b: $1e $0f
    rst $30                                       ; $670d: $f7
    rrca                                          ; $670e: $0f
    add l                                         ; $670f: $85
    add hl, hl                                    ; $6710: $29
    ld b, d                                       ; $6711: $42
    dec bc                                        ; $6712: $0b
    ld c, b                                       ; $6713: $48
    dec de                                        ; $6714: $1b
    sub a                                         ; $6715: $97
    add hl, de                                    ; $6716: $19
    ld e, l                                       ; $6717: $5d
    or b                                          ; $6718: $b0
    ld d, d                                       ; $6719: $52
    rlca                                          ; $671a: $07
    xor [hl]                                      ; $671b: $ae
    ld b, $10                                     ; $671c: $06 $10
    jr nz, jr_093_6748                            ; $671e: $20 $28

    ldh a, [$f1]                                  ; $6720: $f0 $f1
    and b                                         ; $6722: $a0
    db $ec                                        ; $6723: $ec
    ld b, $60                                     ; $6724: $06 $60
    ret z                                         ; $6726: $c8

    di                                            ; $6727: $f3
    sbc a                                         ; $6728: $9f
    ld h, e                                       ; $6729: $63
    cp h                                          ; $672a: $bc
    dec b                                         ; $672b: $05
    cp e                                          ; $672c: $bb
    add hl, hl                                    ; $672d: $29
    ld d, a                                       ; $672e: $57
    pop bc                                        ; $672f: $c1
    ld h, c                                       ; $6730: $61
    jr jr_093_66fd                                ; $6731: $18 $ca

    add hl, hl                                    ; $6733: $29
    db $fd                                        ; $6734: $fd
    ld d, a                                       ; $6735: $57
    ld sp, hl                                     ; $6736: $f9
    inc c                                         ; $6737: $0c
    rst $38                                       ; $6738: $ff
    ld [bc], a                                    ; $6739: $02
    ld [$4683], sp                                ; $673a: $08 $83 $46
    jr c, @+$62                                   ; $673d: $38 $60

    ret nz                                        ; $673f: $c0

    ld sp, $1ee1                                  ; $6740: $31 $e1 $1e
    ld b, [hl]                                    ; $6743: $46
    ld b, b                                       ; $6744: $40
    ld h, d                                       ; $6745: $62
    rlca                                          ; $6746: $07
    or b                                          ; $6747: $b0

jr_093_6748:
    sbc d                                         ; $6748: $9a
    inc bc                                        ; $6749: $03
    inc bc                                        ; $674a: $03
    ld [bc], a                                    ; $674b: $02
    db $10                                        ; $674c: $10
    or c                                          ; $674d: $b1
    rrca                                          ; $674e: $0f
    ei                                            ; $674f: $fb
    db $fc                                        ; $6750: $fc
    xor e                                         ; $6751: $ab

jr_093_6752:
    ld hl, sp+$00                                 ; $6752: $f8 $00
    ld a, c                                       ; $6754: $79
    ld [$d76f], a                                 ; $6755: $ea $6f $d7
    ld h, a                                       ; $6758: $67
    ret z                                         ; $6759: $c8

    inc sp                                        ; $675a: $33
    add sp, -$80                                  ; $675b: $e8 $80
    ld de, $ae1a                                  ; $675d: $11 $1a $ae
    cp $dc                                        ; $6760: $fe $dc
    ld a, [hl]                                    ; $6762: $7e
    db $ec                                        ; $6763: $ec
    ld e, $ed                                     ; $6764: $1e $ed
    ld b, b                                       ; $6766: $40
    ccf                                           ; $6767: $3f
    ld b, $1a                                     ; $6768: $06 $1a
    rra                                           ; $676a: $1f
    rra                                           ; $676b: $1f
    ld [$00c8], sp                                ; $676c: $08 $c8 $00
    add [hl]                                      ; $676f: $86
    ld [bc], a                                    ; $6770: $02
    nop                                           ; $6771: $00
    inc b                                         ; $6772: $04
    db $10                                        ; $6773: $10
    db $10                                        ; $6774: $10
    add sp, -$08                                  ; $6775: $e8 $f8
    pop hl                                        ; $6777: $e1
    rrca                                          ; $6778: $0f
    cp l                                          ; $6779: $bd
    add d                                         ; $677a: $82

jr_093_677b:
    cp $07                                        ; $677b: $fe $07
    ld [hl], h                                    ; $677d: $74
    adc e                                         ; $677e: $8b
    rst $18                                       ; $677f: $df
    nop                                           ; $6780: $00
    cp e                                          ; $6781: $bb
    nop                                           ; $6782: $00
    ld hl, $06ae                                  ; $6783: $21 $ae $06
    ld bc, $00ff                                  ; $6786: $01 $ff $00
    ld d, [hl]                                    ; $6789: $56
    xor c                                         ; $678a: $a9
    adc h                                         ; $678b: $8c
    rlca                                          ; $678c: $07
    ld [$0200], sp                                ; $678d: $08 $00 $02
    push de                                       ; $6790: $d5
    inc c                                         ; $6791: $0c
    nop                                           ; $6792: $00
    ld d, l                                       ; $6793: $55
    ld a, [hl+]                                   ; $6794: $2a
    ld [hl], l                                    ; $6795: $75
    ld [c], a                                     ; $6796: $e2
    rlca                                          ; $6797: $07
    ld a, [hl-]                                   ; $6798: $3a
    ld b, $00                                     ; $6799: $06 $00

jr_093_679b:
    jr nc, @+$04                                  ; $679b: $30 $02

    db $10                                        ; $679d: $10
    ldh [rNR21], a                                ; $679e: $e0 $16
    jr c, jr_093_6752                             ; $67a0: $38 $b0

    ld d, b                                       ; $67a2: $50
    jr c, jr_093_67b9                             ; $67a3: $38 $14

    cp d                                          ; $67a5: $ba
    rst $38                                       ; $67a6: $ff
    ld [hl], l                                    ; $67a7: $75
    ld a, a                                       ; $67a8: $7f
    jr nc, jr_093_679b                            ; $67a9: $30 $f0

    ld [bc], a                                    ; $67ab: $02
    ld [$2290], sp                                ; $67ac: $08 $90 $22
    ld c, [hl]                                    ; $67af: $4e
    inc c                                         ; $67b0: $0c
    sub $40                                       ; $67b1: $d6 $40
    db $f4                                        ; $67b3: $f4
    rst $38                                       ; $67b4: $ff
    jp c, Jump_093_44ff                           ; $67b5: $da $ff $44

    ld [hl], h                                    ; $67b8: $74

jr_093_67b9:
    inc b                                         ; $67b9: $04
    nop                                           ; $67ba: $00
    db $f4                                        ; $67bb: $f4
    rst $38                                       ; $67bc: $ff
    ld e, d                                       ; $67bd: $5a
    inc c                                         ; $67be: $0c
    ld [$03fd], sp                                ; $67bf: $08 $fd $03
    nop                                           ; $67c2: $00
    ld a, [$df01]                                 ; $67c3: $fa $01 $df
    nop                                           ; $67c6: $00
    ei                                            ; $67c7: $fb
    inc b                                         ; $67c8: $04
    ld [hl], a                                    ; $67c9: $77
    adc b                                         ; $67ca: $88
    nop                                           ; $67cb: $00
    cp e                                          ; $67cc: $bb
    ld b, h                                       ; $67cd: $44
    ld d, l                                       ; $67ce: $55
    xor d                                         ; $67cf: $aa
    ld [hl+], a                                   ; $67d0: $22
    db $dd                                        ; $67d1: $dd
    ld d, h                                       ; $67d2: $54
    cp a                                          ; $67d3: $bf
    nop                                           ; $67d4: $00
    db $eb                                        ; $67d5: $eb
    rst $30                                       ; $67d6: $f7
    cpl                                           ; $67d7: $2f
    ret nz                                        ; $67d8: $c0

    cp $01                                        ; $67d9: $fe $01
    ld l, l                                       ; $67db: $6d
    ld [de], a                                    ; $67dc: $12
    nop                                           ; $67dd: $00
    ld a, [$5405]                                 ; $67de: $fa $05 $54
    xor e                                         ; $67e1: $ab
    adc b                                         ; $67e2: $88
    ld [hl], a                                    ; $67e3: $77
    ld a, [hl]                                    ; $67e4: $7e
    ret nz                                        ; $67e5: $c0

    nop                                           ; $67e6: $00
    xor a                                         ; $67e7: $af
    ret nc                                        ; $67e8: $d0

    db $db                                        ; $67e9: $db
    inc h                                         ; $67ea: $24
    ld a, [c]                                     ; $67eb: $f2
    dec c                                         ; $67ec: $0d
    ld h, l                                       ; $67ed: $65
    sbc d                                         ; $67ee: $9a
    nop                                           ; $67ef: $00
    ld [$5415], a                                 ; $67f0: $ea $15 $54
    xor e                                         ; $67f3: $ab
    and b                                         ; $67f4: $a0
    ld e, a                                       ; $67f5: $5f
    ret nc                                        ; $67f6: $d0

    db $10                                        ; $67f7: $10
    call Call_093_420a                            ; $67f8: $cd $0a $42
    rst $38                                       ; $67fb: $ff
    ld bc, $8360                                  ; $67fc: $01 $60 $83
    rst $38                                       ; $67ff: $ff
    pop bc                                        ; $6800: $c1
    cp a                                          ; $6801: $bf
    inc b                                         ; $6802: $04
    ld c, b                                       ; $6803: $48
    rst $38                                       ; $6804: $ff
    add hl, bc                                    ; $6805: $09
    nop                                           ; $6806: $00
    db $fd                                        ; $6807: $fd
    nop                                           ; $6808: $00
    rst $38                                       ; $6809: $ff
    ld [bc], a                                    ; $680a: $02
    ldh a, [$7f]                                  ; $680b: $f0 $7f
    add b                                         ; $680d: $80
    inc b                                         ; $680e: $04
    jr z, @-$6e                                   ; $680f: $28 $90

    ld [bc], a                                    ; $6811: $02
    jr z, jr_093_6853                             ; $6812: $28 $3f

    ret nz                                        ; $6814: $c0

    inc b                                         ; $6815: $04
    ld [$a05f], sp                                ; $6816: $08 $5f $a0
    add b                                         ; $6819: $80
    nop                                           ; $681a: $00
    nop                                           ; $681b: $00
    call nc, Call_093_6a00                        ; $681c: $d4 $00 $6a
    nop                                           ; $681f: $00
    push de                                       ; $6820: $d5
    nop                                           ; $6821: $00
    ld a, [hl]                                    ; $6822: $7e
    nop                                           ; $6823: $00
    ld b, b                                       ; $6824: $40
    ei                                            ; $6825: $fb
    ld c, b                                       ; $6826: $48
    db $10                                        ; $6827: $10
    add b                                         ; $6828: $80
    nop                                           ; $6829: $00
    nop                                           ; $682a: $00
    nop                                           ; $682b: $00
    inc h                                         ; $682c: $24
    nop                                           ; $682d: $00
    ld b, $40                                     ; $682e: $06 $40
    nop                                           ; $6830: $00
    xor d                                         ; $6831: $aa
    nop                                           ; $6832: $00
    db $dd                                        ; $6833: $dd
    ld [de], a                                    ; $6834: $12
    db $10                                        ; $6835: $10
    ld bc, $0208                                  ; $6836: $01 $08 $02
    adc [hl]                                      ; $6839: $8e
    stop                                          ; $683a: $10 $00
    nop                                           ; $683c: $00
    nop                                           ; $683d: $00
    ld a, [hl+]                                   ; $683e: $2a
    ld h, $00                                     ; $683f: $26 $00
    db $10                                        ; $6841: $10
    jr jr_093_6859                                ; $6842: $18 $15

    ld [$2880], sp                                ; $6844: $08 $80 $28
    nop                                           ; $6847: $00
    jr nz, jr_093_6874                            ; $6848: $20 $2a

    nop                                           ; $684a: $00
    adc b                                         ; $684b: $88
    db $10                                        ; $684c: $10
    jr nz, @+$03                                  ; $684d: $20 $01

    ld bc, $6002                                  ; $684f: $01 $02 $60
    inc bc                                        ; $6852: $03

jr_093_6853:
    ld [bc], a                                    ; $6853: $02
    jr jr_093_6887                                ; $6854: $18 $31

    ld [$f0f0], sp                                ; $6856: $08 $f0 $f0

jr_093_6859:
    ld a, b                                       ; $6859: $78
    adc b                                         ; $685a: $88
    db $fc                                        ; $685b: $fc
    ld bc, $fc04                                  ; $685c: $01 $04 $fc
    inc b                                         ; $685f: $04
    ld a, [hl]                                    ; $6860: $7e
    cp $7e                                        ; $6861: $fe $7e
    xor d                                         ; $6863: $aa
    ld sp, $1020                                  ; $6864: $31 $20 $10
    inc b                                         ; $6867: $04
    ld b, $0a                                     ; $6868: $06 $0a
    ld [bc], a                                    ; $686a: $02
    ld [$140c], sp                                ; $686b: $08 $0c $14
    ld d, b                                       ; $686e: $50
    nop                                           ; $686f: $00
    inc b                                         ; $6870: $04
    ldh [rP1], a                                  ; $6871: $e0 $00
    ret nc                                        ; $6873: $d0

jr_093_6874:
    nop                                           ; $6874: $00
    add sp, $04                                   ; $6875: $e8 $04
    nop                                           ; $6877: $00
    ldh [rP1], a                                  ; $6878: $e0 $00
    db $10                                        ; $687a: $10
    ldh a, [rP1]                                  ; $687b: $f0 $00
    and b                                         ; $687d: $a0
    ld a, [hl-]                                   ; $687e: $3a
    nop                                           ; $687f: $00
    ld bc, $7a01                                  ; $6880: $01 $01 $7a
    ld a, e                                       ; $6883: $7b
    nop                                           ; $6884: $00
    rst $30                                       ; $6885: $f7
    adc a                                         ; $6886: $8f

jr_093_6887:
    ei                                            ; $6887: $fb
    add [hl]                                      ; $6888: $86
    db $fd                                        ; $6889: $fd
    add [hl]                                      ; $688a: $86
    db $ed                                        ; $688b: $ed
    sbc [hl]                                      ; $688c: $9e
    nop                                           ; $688d: $00
    ld a, e                                       ; $688e: $7b
    halt                                          ; $688f: $76
    ld a, h                                       ; $6890: $7c
    sub h                                         ; $6891: $94
    ld l, b                                       ; $6892: $68
    cp b                                          ; $6893: $b8
    or $0e                                        ; $6894: $f6 $0e
    nop                                           ; $6896: $00
    rst $38                                       ; $6897: $ff
    ld sp, hl                                     ; $6898: $f9
    rst $38                                       ; $6899: $ff
    dec d                                         ; $689a: $15
    db $fd                                        ; $689b: $fd
    rlca                                          ; $689c: $07
    rst $38                                       ; $689d: $ff
    rla                                           ; $689e: $17
    nop                                           ; $689f: $00
    db $fd                                        ; $68a0: $fd
    ld d, $0c                                     ; $68a1: $16 $0c
    inc d                                         ; $68a3: $14
    inc c                                         ; $68a4: $0c
    inc d                                         ; $68a5: $14
    jr jr_093_68d0                                ; $68a6: $18 $28

    add b                                         ; $68a8: $80
    ld [bc], a                                    ; $68a9: $02
    ld [$5030], sp                                ; $68aa: $08 $30 $50
    jr nc, jr_093_68ff                            ; $68ad: $30 $50

    or b                                          ; $68af: $b0
    ret nc                                        ; $68b0: $d0

    ret nc                                        ; $68b1: $d0

    nop                                           ; $68b2: $00
    nop                                           ; $68b3: $00
    call nz, $a203                                ; $68b4: $c4 $03 $a2
    inc b                                         ; $68b7: $04
    ret c                                         ; $68b8: $d8

    inc b                                         ; $68b9: $04
    db $e4                                        ; $68ba: $e4
    nop                                           ; $68bb: $00
    ld [$08f0], sp                                ; $68bc: $08 $f0 $08
    and h                                         ; $68bf: $a4
    ld [$08f7], sp                                ; $68c0: $08 $f7 $08
    dec hl                                        ; $68c3: $2b
    nop                                           ; $68c4: $00
    scf                                           ; $68c5: $37
    scf                                           ; $68c6: $37
    inc a                                         ; $68c7: $3c
    dec de                                        ; $68c8: $1b
    dec e                                         ; $68c9: $1d
    dec c                                         ; $68ca: $0d
    rrca                                          ; $68cb: $0f
    ld d, $00                                     ; $68cc: $16 $00
    add hl, de                                    ; $68ce: $19
    inc d                                         ; $68cf: $14

jr_093_68d0:
    dec de                                        ; $68d0: $1b
    rra                                           ; $68d1: $1f
    ld de, $1f1e                                  ; $68d2: $11 $1e $1f
    db $fd                                        ; $68d5: $fd
    nop                                           ; $68d6: $00
    ld l, [hl]                                    ; $68d7: $6e
    rst $38                                       ; $68d8: $ff
    sbc a                                         ; $68d9: $9f
    ld a, a                                       ; $68da: $7f
    add d                                         ; $68db: $82
    add hl, sp                                    ; $68dc: $39
    cp $ff                                        ; $68dd: $fe $ff
    nop                                           ; $68df: $00
    rst $30                                       ; $68e0: $f7
    sub $ff                                       ; $68e1: $d6 $ff
    sbc l                                         ; $68e3: $9d
    db $fd                                        ; $68e4: $fd
    db $eb                                        ; $68e5: $eb
    ld a, [$00e0]                                 ; $68e6: $fa $e0 $00
    and b                                         ; $68e9: $a0
    ldh [$a0], a                                  ; $68ea: $e0 $a0
    ld [hl], b                                    ; $68ec: $70
    ldh a, [$c0]                                  ; $68ed: $f0 $c0
    ld b, b                                       ; $68ef: $40
    ld b, b                                       ; $68f0: $40
    ld [$c0c0], sp                                ; $68f1: $08 $c0 $c0
    ld b, b                                       ; $68f4: $40
    add b                                         ; $68f5: $80
    ld bc, $f200                                  ; $68f6: $01 $00 $f2
    inc c                                         ; $68f9: $0c
    ld sp, hl                                     ; $68fa: $f9
    nop                                           ; $68fb: $00
    ld c, $fc                                     ; $68fc: $0e $fc
    rlca                                          ; $68fe: $07

jr_093_68ff:
    rst $38                                       ; $68ff: $ff
    inc bc                                        ; $6900: $03
    rst $30                                       ; $6901: $f7
    ld [$06ff], sp                                ; $6902: $08 $ff $06
    nop                                           ; $6905: $00
    push af                                       ; $6906: $f5
    ld a, [bc]                                    ; $6907: $0a
    xor d                                         ; $6908: $aa
    ld d, l                                       ; $6909: $55
    pop de                                        ; $690a: $d1
    jr nc, @-$24                                  ; $690b: $30 $da

    jr z, @+$0a                                   ; $690d: $28 $08

    nop                                           ; $690f: $00
    nop                                           ; $6910: $00
    ld [$0804], sp                                ; $6911: $08 $04 $08
    inc c                                         ; $6914: $0c
    ld [$0c0a], sp                                ; $6915: $08 $0a $0c
    ld bc, $040f                                  ; $6918: $01 $0f $04
    dec b                                         ; $691b: $05
    ld b, $07                                     ; $691c: $06 $07
    ld [bc], a                                    ; $691e: $02
    ld [$000c], sp                                ; $691f: $08 $0c $00
    nop                                           ; $6922: $00
    jr @+$0a                                      ; $6923: $18 $08

    inc e                                         ; $6925: $1c
    ld [$180c], sp                                ; $6926: $08 $0c $18
    jr z, jr_093_6949                             ; $6929: $28 $1e

    ld [$39ce], sp                                ; $692b: $08 $ce $39
    ret                                           ; $692e: $c9


    jr c, jr_093_6961                             ; $692f: $38 $30

    ld h, b                                       ; $6931: $60
    add b                                         ; $6932: $80
    ld [bc], a                                    ; $6933: $02
    inc bc                                        ; $6934: $03
    nop                                           ; $6935: $00
    dec b                                         ; $6936: $05
    inc bc                                        ; $6937: $03

jr_093_6938:
    add hl, bc                                    ; $6938: $09
    inc b                                         ; $6939: $04
    nop                                           ; $693a: $00
    ld [$0810], sp                                ; $693b: $08 $10 $08
    add b                                         ; $693e: $80
    inc bc                                        ; $693f: $03
    nop                                           ; $6940: $00
    db $10                                        ; $6941: $10
    dec de                                        ; $6942: $1b
    inc c                                         ; $6943: $0c
    ld d, b                                       ; $6944: $50
    or b                                          ; $6945: $b0
    jr jr_093_6938                                ; $6946: $18 $f0

    nop                                           ; $6948: $00

jr_093_6949:
    ld hl, sp-$10                                 ; $6949: $f8 $f0
    ld a, b                                       ; $694b: $78
    db $10                                        ; $694c: $10
    inc a                                         ; $694d: $3c
    db $10                                        ; $694e: $10
    halt                                          ; $694f: $76
    jr jr_093_695a                                ; $6950: $18 $08

    rst $10                                       ; $6952: $d7
    jr c, @-$6b                                   ; $6953: $38 $93

    ld a, h                                       ; $6955: $7c
    ld [hl], l                                    ; $6956: $75
    nop                                           ; $6957: $00
    ld b, b                                       ; $6958: $40
    nop                                           ; $6959: $00

jr_093_695a:
    ld b, b                                       ; $695a: $40
    ld b, b                                       ; $695b: $40
    jr nz, jr_093_6962                            ; $695c: $20 $04

    nop                                           ; $695e: $00
    and b                                         ; $695f: $a0
    ld b, b                                       ; $6960: $40

jr_093_6961:
    nop                                           ; $6961: $00

jr_093_6962:
    ret nz                                        ; $6962: $c0

    ld h, b                                       ; $6963: $60
    ret nz                                        ; $6964: $c0

    nop                                           ; $6965: $00
    nop                                           ; $6966: $00
    nop                                           ; $6967: $00
    ld b, b                                       ; $6968: $40
    add b                                         ; $6969: $80
    jr nz, jr_093_69ac                            ; $696a: $20 $40

    db $10                                        ; $696c: $10
    jr nz, jr_093_69af                            ; $696d: $20 $40

    jr nz, jr_093_699f                            ; $696f: $20 $2e

    nop                                           ; $6971: $00
    add d                                         ; $6972: $82
    inc a                                         ; $6973: $3c
    dec h                                         ; $6974: $25
    ld b, d                                       ; $6975: $42
    ld [$040f], sp                                ; $6976: $08 $0f $04
    rrca                                          ; $6979: $0f
    rlca                                          ; $697a: $07
    inc bc                                        ; $697b: $03
    nop                                           ; $697c: $00
    dec b                                         ; $697d: $05
    ld h, h                                       ; $697e: $64
    ld bc, $0020                                  ; $697f: $01 $20 $00
    nop                                           ; $6982: $00
    ld b, d                                       ; $6983: $42

jr_093_6984:
    nop                                           ; $6984: $00
    stop                                          ; $6985: $10 $00
    jr c, @-$07                                   ; $6987: $38 $f7

    rst $20                                       ; $6989: $e7
    ret nz                                        ; $698a: $c0

    nop                                           ; $698b: $00
    and b                                         ; $698c: $a0
    ret nz                                        ; $698d: $c0

    or b                                          ; $698e: $b0
    ret nz                                        ; $698f: $c0

    adc $71                                       ; $6990: $ce $71
    ld a, a                                       ; $6992: $7f
    ccf                                           ; $6993: $3f
    nop                                           ; $6994: $00
    rra                                           ; $6995: $1f
    nop                                           ; $6996: $00
    add l                                         ; $6997: $85
    nop                                           ; $6998: $00
    ld l, b                                       ; $6999: $68
    ret nz                                        ; $699a: $c0

    ld [hl], b                                    ; $699b: $70
    ret nz                                        ; $699c: $c0

    nop                                           ; $699d: $00
    ld l, b                                       ; $699e: $68

jr_093_699f:
    jr nz, @-$4e                                  ; $699f: $20 $b0

    ld h, b                                       ; $69a1: $60
    jr nz, jr_093_6984                            ; $69a2: $20 $e0

    add sp, -$40                                  ; $69a4: $e8 $c0
    ld b, b                                       ; $69a6: $40
    add b                                         ; $69a7: $80
    xor d                                         ; $69a8: $aa
    ld bc, $4182                                  ; $69a9: $01 $82 $41

jr_093_69ac:
    ld b, b                                       ; $69ac: $40
    add c                                         ; $69ad: $81
    ld b, c                                       ; $69ae: $41

jr_093_69af:
    add b                                         ; $69af: $80
    add b                                         ; $69b0: $80
    ld [bc], a                                    ; $69b1: $02
    ld [$8069], sp                                ; $69b2: $08 $69 $80
    or [hl]                                       ; $69b5: $b6
    pop bc                                        ; $69b6: $c1
    sbc h                                         ; $69b7: $9c
    db $e3                                        ; $69b8: $e3
    and d                                         ; $69b9: $a2
    adc b                                         ; $69ba: $88
    cp h                                          ; $69bb: $bc
    ld bc, $807a                                  ; $69bc: $01 $7a $80
    ld e, l                                       ; $69bf: $5d
    ret c                                         ; $69c0: $d8

    ld bc, $80ff                                  ; $69c1: $01 $ff $80
    ei                                            ; $69c4: $fb
    ld [bc], a                                    ; $69c5: $02
    add h                                         ; $69c6: $84
    xor l                                         ; $69c7: $ad
    jp nc, $002a                                  ; $69c8: $d2 $2a $00

    ld d, a                                       ; $69cb: $57
    jp z, $7f01                                   ; $69cc: $ca $01 $7f

    nop                                           ; $69cf: $00
    nop                                           ; $69d0: $00
    db $db                                        ; $69d1: $db
    inc h                                         ; $69d2: $24
    cp a                                          ; $69d3: $bf
    ld b, b                                       ; $69d4: $40
    push de                                       ; $69d5: $d5
    ld a, [hl+]                                   ; $69d6: $2a
    xor d                                         ; $69d7: $aa
    nop                                           ; $69d8: $00
    ld d, l                                       ; $69d9: $55
    db $f4                                        ; $69da: $f4
    nop                                           ; $69db: $00
    xor b                                         ; $69dc: $a8
    nop                                           ; $69dd: $00
    push af                                       ; $69de: $f5
    nop                                           ; $69df: $00
    cp $81                                        ; $69e0: $fe $81
    ld [bc], a                                    ; $69e2: $02
    ld [bc], a                                    ; $69e3: $02

jr_093_69e4:
    rst $18                                       ; $69e4: $df
    jr nz, jr_093_69e4                            ; $69e5: $20 $fd

    ld [bc], a                                    ; $69e7: $02
    ld d, a                                       ; $69e8: $57
    xor b                                         ; $69e9: $a8
    xor h                                         ; $69ea: $ac
    ld bc, $0000                                  ; $69eb: $01 $00 $00
    ld [bc], a                                    ; $69ee: $02
    ld bc, $0204                                  ; $69ef: $01 $04 $02
    ld [bc], a                                    ; $69f2: $02

Call_093_69f3:
    inc b                                         ; $69f3: $04
    inc bc                                        ; $69f4: $03
    add b                                         ; $69f5: $80
    ldh [rP1], a                                  ; $69f6: $e0 $00
    ld b, $03                                     ; $69f8: $06 $03
    ret nc                                        ; $69fa: $d0

    ld h, b                                       ; $69fb: $60
    ld c, b                                       ; $69fc: $48
    ldh a, [$27]                                  ; $69fd: $f0 $27
    nop                                           ; $69ff: $00

Call_093_6a00:
    jr c, jr_093_6a32                             ; $6a00: $38 $30

    rra                                           ; $6a02: $1f
    rra                                           ; $6a03: $1f
    rrca                                          ; $6a04: $0f
    inc bc                                        ; $6a05: $03
    ld c, $e3                                     ; $6a06: $0e $e3
    inc b                                         ; $6a08: $04
    ld e, $03                                     ; $6a09: $1e $03
    cp $03                                        ; $6a0b: $fe $03
    ld bc, $3912                                  ; $6a0d: $01 $12 $39
    inc h                                         ; $6a10: $24
    jr jr_093_6a13                                ; $6a11: $18 $00

jr_093_6a13:
    ld a, [de]                                    ; $6a13: $1a
    inc h                                         ; $6a14: $24
    and $fb                                       ; $6a15: $e6 $fb
    or h                                          ; $6a17: $b4
    ld b, e                                       ; $6a18: $43
    inc bc                                        ; $6a19: $03
    ld b, c                                       ; $6a1a: $41
    nop                                           ; $6a1b: $00
    add c                                         ; $6a1c: $81
    ld b, c                                       ; $6a1d: $41
    ld h, d                                       ; $6a1e: $62
    ld b, c                                       ; $6a1f: $41

jr_093_6a20:
    ld d, h                                       ; $6a20: $54
    ld h, e                                       ; $6a21: $63
    ld h, c                                       ; $6a22: $61
    ccf                                           ; $6a23: $3f
    inc hl                                        ; $6a24: $23
    ccf                                           ; $6a25: $3f
    ld e, $30                                     ; $6a26: $1e $30
    add hl, sp                                    ; $6a28: $39
    stop                                          ; $6a29: $10 $00
    add d                                         ; $6a2b: $82
    cp b                                          ; $6a2c: $b8
    nop                                           ; $6a2d: $00
    ld de, $001a                                  ; $6a2e: $11 $1a $00
    rlca                                          ; $6a31: $07

jr_093_6a32:
    nop                                           ; $6a32: $00
    ld [$2007], sp                                ; $6a33: $08 $07 $20
    ld [$0844], sp                                ; $6a36: $08 $44 $08
    nop                                           ; $6a39: $00
    inc b                                         ; $6a3a: $04
    jr @+$47                                      ; $6a3b: $18 $45

    ld [hl+], a                                   ; $6a3d: $22
    ld b, d                                       ; $6a3e: $42
    ld hl, $2140                                  ; $6a3f: $21 $40 $21
    nop                                           ; $6a42: $00
    ld h, c                                       ; $6a43: $61
    jr nz, jr_093_6ab6                            ; $6a44: $20 $70

    and b                                         ; $6a46: $a0
    ld sp, $2160                                  ; $6a47: $31 $60 $21
    jr nc, jr_093_6a64                            ; $6a4a: $30 $18

    dec hl                                        ; $6a4c: $2b
    jr nc, jr_093_6a6b                            ; $6a4d: $30 $1c

    inc l                                         ; $6a4f: $2c
    ld [de], a                                    ; $6a50: $12
    ld d, a                                       ; $6a51: $57
    ld [bc], a                                    ; $6a52: $02
    add b                                         ; $6a53: $80
    ld c, b                                       ; $6a54: $48
    add b                                         ; $6a55: $80
    ld bc, $8040                                  ; $6a56: $01 $40 $80
    ld [$5e80], a                                 ; $6a59: $ea $80 $5e
    nop                                           ; $6a5c: $00
    or a                                          ; $6a5d: $b7
    sbc [hl]                                      ; $6a5e: $9e
    nop                                           ; $6a5f: $00
    jr nz, @-$1f                                  ; $6a60: $20 $df

    nop                                           ; $6a62: $00
    add b                                         ; $6a63: $80

jr_093_6a64:
    add hl, hl                                    ; $6a64: $29
    or [hl]                                       ; $6a65: $b6
    jr jr_093_6ac3                                ; $6a66: $18 $5b

    inc c                                         ; $6a68: $0c
    ld hl, sp+$00                                 ; $6a69: $f8 $00

jr_093_6a6b:
    rrca                                          ; $6a6b: $0f
    db $dd                                        ; $6a6c: $dd
    rlca                                          ; $6a6d: $07
    cp $03                                        ; $6a6e: $fe $03
    ld a, a                                       ; $6a70: $7f
    add d                                         ; $6a71: $82
    ei                                            ; $6a72: $fb
    nop                                           ; $6a73: $00
    ld b, $af                                     ; $6a74: $06 $af
    ld d, d                                       ; $6a76: $52
    ld l, a                                       ; $6a77: $6f
    jr nc, jr_093_6a20                            ; $6a78: $30 $a6

    ld a, c                                       ; $6a7a: $79
    ret nz                                        ; $6a7b: $c0

    ld [bc], a                                    ; $6a7c: $02
    rst $38                                       ; $6a7d: $ff
    and c                                         ; $6a7e: $a1
    rra                                           ; $6a7f: $1f
    rla                                           ; $6a80: $17
    ld c, $0e                                     ; $6a81: $0e $0e
    adc b                                         ; $6a83: $88
    ld de, $04f4                                  ; $6a84: $11 $f4 $04
    add b                                         ; $6a87: $80
    xor b                                         ; $6a88: $a8
    add b                                         ; $6a89: $80
    push af                                       ; $6a8a: $f5
    add b                                         ; $6a8b: $80
    ret nz                                        ; $6a8c: $c0

    ld [$601f], sp                                ; $6a8d: $08 $1f $60
    nop                                           ; $6a90: $00
    ld a, l                                       ; $6a91: $7d

jr_093_6a92:
    ld [hl+], a                                   ; $6a92: $22
    scf                                           ; $6a93: $37
    ld l, b                                       ; $6a94: $68
    ccf                                           ; $6a95: $3f
    ret nz                                        ; $6a96: $c0

    ld d, a                                       ; $6a97: $57
    xor b                                         ; $6a98: $a8
    nop                                           ; $6a99: $00
    cpl                                           ; $6a9a: $2f
    ret nc                                        ; $6a9b: $d0

    dec d                                         ; $6a9c: $15
    ld [$f44b], a                                 ; $6a9d: $ea $4b $f4
    nop                                           ; $6aa0: $00
    rst $38                                       ; $6aa1: $ff
    ld b, b                                       ; $6aa2: $40
    sub [hl]                                      ; $6aa3: $96
    dec e                                         ; $6aa4: $1d
    inc bc                                        ; $6aa5: $03
    add a                                         ; $6aa6: $87
    ld hl, sp-$13                                 ; $6aa7: $f8 $ed
    ld a, [c]                                     ; $6aa9: $f2
    rla                                           ; $6aaa: $17
    ldh [rP1], a                                  ; $6aab: $e0 $00
    jp c, $b705                                   ; $6aad: $da $05 $b7

    ld c, b                                       ; $6ab0: $48
    ld a, [hl]                                    ; $6ab1: $7e
    add c                                         ; $6ab2: $81

jr_093_6ab3:
    rst $18                                       ; $6ab3: $df
    jr nz, jr_093_6ab6                            ; $6ab4: $20 $00

jr_093_6ab6:
    ld [hl], c                                    ; $6ab6: $71
    add b                                         ; $6ab7: $80
    add sp, $10                                   ; $6ab8: $e8 $10
    push hl                                       ; $6aba: $e5
    jr jr_093_6ab3                                ; $6abb: $18 $f6

    rrca                                          ; $6abd: $0f
    nop                                           ; $6abe: $00
    adc a                                         ; $6abf: $8f
    ld [hl], b                                    ; $6ac0: $70
    jr nc, jr_093_6a92                            ; $6ac1: $30 $cf

jr_093_6ac3:
    ld a, a                                       ; $6ac3: $7f
    add b                                         ; $6ac4: $80
    dec b                                         ; $6ac5: $05
    ld a, [$a000]                                 ; $6ac6: $fa $00 $a0
    rst $38                                       ; $6ac9: $ff
    pop de                                        ; $6aca: $d1
    rst $38                                       ; $6acb: $ff
    ld a, $ff                                     ; $6acc: $3e $ff
    xor l                                         ; $6ace: $ad
    ld d, d                                       ; $6acf: $52
    add hl, bc                                    ; $6ad0: $09
    ei                                            ; $6ad1: $fb
    inc b                                         ; $6ad2: $04
    sbc $21                                       ; $6ad3: $de $21
    ld h, $1b                                     ; $6ad5: $26 $1b
    dec bc                                        ; $6ad7: $0b
    inc c                                         ; $6ad8: $0c
    ld [hl], c                                    ; $6ad9: $71
    ld bc, $0400                                  ; $6ada: $01 $00 $04
    rrca                                          ; $6add: $0f
    rrca                                          ; $6ade: $0f
    dec bc                                        ; $6adf: $0b
    dec c                                         ; $6ae0: $0d
    rrca                                          ; $6ae1: $0f
    add hl, bc                                    ; $6ae2: $09
    ld a, a                                       ; $6ae3: $7f
    nop                                           ; $6ae4: $00
    ld a, e                                       ; $6ae5: $7b
    ld [$d99f], a                                 ; $6ae6: $ea $9f $d9
    jp hl                                         ; $6ae9: $e9


    ldh a, [$f0]                                  ; $6aea: $f0 $f0
    ret c                                         ; $6aec: $d8

    nop                                           ; $6aed: $00
    add sp, $70                                   ; $6aee: $e8 $70
    ld [hl], b                                    ; $6af0: $70
    or b                                          ; $6af1: $b0
    ret nc                                        ; $6af2: $d0

    ldh a, [$90]                                  ; $6af3: $f0 $90
    cp $00                                        ; $6af5: $fe $00
    cp [hl]                                       ; $6af7: $be
    xor a                                         ; $6af8: $af
    pop af                                        ; $6af9: $f1
    db $fd                                        ; $6afa: $fd
    ld [bc], a                                    ; $6afb: $02
    rst $28                                       ; $6afc: $ef
    db $10                                        ; $6afd: $10
    db $f4                                        ; $6afe: $f4
    nop                                           ; $6aff: $00
    dec bc                                        ; $6b00: $0b
    xor b                                         ; $6b01: $a8
    ld d, a                                       ; $6b02: $57
    jp nc, $002f                                  ; $6b03: $d2 $2f $00

    rst $38                                       ; $6b06: $ff
    ld l, c                                       ; $6b07: $69
    add b                                         ; $6b08: $80
    ld a, l                                       ; $6b09: $7d
    inc bc                                        ; $6b0a: $03
    pop de                                        ; $6b0b: $d1
    ld l, $22                                     ; $6b0c: $2e $22
    db $dd                                        ; $6b0e: $dd
    add b                                         ; $6b0f: $80
    ld a, a                                       ; $6b10: $7f
    nop                                           ; $6b11: $00
    ld [bc], a                                    ; $6b12: $02
    rst $38                                       ; $6b13: $ff
    ld [$95ff], sp                                ; $6b14: $08 $ff $95
    rst $38                                       ; $6b17: $ff
    ld a, [hl]                                    ; $6b18: $7e
    adc l                                         ; $6b19: $8d
    inc bc                                        ; $6b1a: $03
    rst $30                                       ; $6b1b: $f7
    nop                                           ; $6b1c: $00
    sbc c                                         ; $6b1d: $99
    res 7, h                                      ; $6b1e: $cb $bc
    add $bf                                       ; $6b20: $c6 $bf
    pop hl                                        ; $6b22: $e1
    sbc a                                         ; $6b23: $9f
    ldh a, [$08]                                  ; $6b24: $f0 $08
    adc a                                         ; $6b26: $8f
    rst $38                                       ; $6b27: $ff
    rst $38                                       ; $6b28: $ff
    add b                                         ; $6b29: $80
    sbc l                                         ; $6b2a: $9d
    inc bc                                        ; $6b2b: $03
    ld e, a                                       ; $6b2c: $5f
    cp c                                          ; $6b2d: $b9
    cp a                                          ; $6b2e: $bf
    nop                                           ; $6b2f: $00
    push bc                                       ; $6b30: $c5
    ei                                            ; $6b31: $fb
    ld a, l                                       ; $6b32: $7d
    add a                                         ; $6b33: $87
    ld sp, hl                                     ; $6b34: $f9
    rra                                           ; $6b35: $1f
    pop hl                                        ; $6b36: $e1
    rst $38                                       ; $6b37: $ff
    jr nz, @+$01                                  ; $6b38: $20 $ff

    ld bc, $03ad                                  ; $6b3a: $01 $ad $03
    rst $28                                       ; $6b3d: $ef
    db $10                                        ; $6b3e: $10
    ld d, a                                       ; $6b3f: $57
    xor b                                         ; $6b40: $a8
    ld c, $00                                     ; $6b41: $0e $00
    ld sp, hl                                     ; $6b43: $f9
    or [hl]                                       ; $6b44: $b6
    ld sp, hl                                     ; $6b45: $f9
    rst $08                                       ; $6b46: $cf

jr_093_6b47:
    ldh a, [$5d]                                  ; $6b47: $f0 $5d
    and d                                         ; $6b49: $a2
    xor a                                         ; $6b4a: $af
    ld [$f750], sp                                ; $6b4b: $08 $50 $f7
    ld [$2c87], sp                                ; $6b4e: $08 $87 $2c
    inc de                                        ; $6b51: $13
    ld d, h                                       ; $6b52: $54
    add b                                         ; $6b53: $80
    ld l, a                                       ; $6b54: $6f
    nop                                           ; $6b55: $00
    ldh a, [$ee]                                  ; $6b56: $f0 $ee
    rra                                           ; $6b58: $1f
    rst $18                                       ; $6b59: $df
    jr nz, jr_093_6b47                            ; $6b5a: $20 $eb

    db $10                                        ; $6b5c: $10

jr_093_6b5d:
    rst $38                                       ; $6b5d: $ff
    nop                                           ; $6b5e: $00
    nop                                           ; $6b5f: $00
    pop hl                                        ; $6b60: $e1
    nop                                           ; $6b61: $00
    ret nz                                        ; $6b62: $c0

    nop                                           ; $6b63: $00
    and b                                         ; $6b64: $a0
    ld b, b                                       ; $6b65: $40
    cp d                                          ; $6b66: $ba
    ld bc, $5d61                                  ; $6b67: $01 $61 $5d
    cp [hl]                                       ; $6b6a: $be
    ccf                                           ; $6b6b: $3f
    ret nz                                        ; $6b6c: $c0

    cpl                                           ; $6b6d: $2f
    ret nc                                        ; $6b6e: $d0

    halt                                          ; $6b6f: $76

jr_093_6b70:
    dec bc                                        ; $6b70: $0b
    add b                                         ; $6b71: $80
    adc h                                         ; $6b72: $8c
    ld a, [bc]                                    ; $6b73: $0a
    rst $38                                       ; $6b74: $ff
    nop                                           ; $6b75: $00
    rst $18                                       ; $6b76: $df
    jr nz, jr_093_6b70                            ; $6b77: $20 $f7

    ld [$047b], sp                                ; $6b79: $08 $7b $04
    add h                                         ; $6b7c: $84
    ld a, a                                       ; $6b7d: $7f
    add b                                         ; $6b7e: $80
    cp $01                                        ; $6b7f: $fe $01
    or d                                          ; $6b81: $b2
    dec hl                                        ; $6b82: $2b
    rst $38                                       ; $6b83: $ff
    nop                                           ; $6b84: $00
    nop                                           ; $6b85: $00
    rst $28                                       ; $6b86: $ef
    db $10                                        ; $6b87: $10
    ei                                            ; $6b88: $fb
    inc b                                         ; $6b89: $04

jr_093_6b8a:
    or $09                                        ; $6b8a: $f6 $09
    rst $38                                       ; $6b8c: $ff
    nop                                           ; $6b8d: $00
    jr jr_093_6b8a                                ; $6b8e: $18 $fa

    inc b                                         ; $6b90: $04
    rst $28                                       ; $6b91: $ef
    ld a, [hl-]                                   ; $6b92: $3a
    nop                                           ; $6b93: $00
    add $0b                                       ; $6b94: $c6 $0b
    push de                                       ; $6b96: $d5
    xor b                                         ; $6b97: $a8
    xor [hl]                                      ; $6b98: $ae
    add hl, bc                                    ; $6b99: $09
    ld b, c                                       ; $6b9a: $41
    ld e, c                                       ; $6b9b: $59
    and d                                         ; $6b9c: $a2
    ld e, a                                       ; $6b9d: $5f
    ld [de], a                                    ; $6b9e: $12
    nop                                           ; $6b9f: $00
    ld l, a                                       ; $6ba0: $6f
    sub b                                         ; $6ba1: $90
    ld hl, sp+$1b                                 ; $6ba2: $f8 $1b
    nop                                           ; $6ba4: $00
    rst $18                                       ; $6ba5: $df
    jr nz, jr_093_6c1e                            ; $6ba6: $20 $76

    ld [$52ad], sp                                ; $6ba8: $08 $ad $52
    rst $10                                       ; $6bab: $d7
    nop                                           ; $6bac: $00
    jr nz, jr_093_6b5d                            ; $6bad: $20 $ae

    ld d, c                                       ; $6baf: $51
    add sp, $0b                                   ; $6bb0: $e8 $0b
    db $fc                                        ; $6bb2: $fc
    inc bc                                        ; $6bb3: $03
    ld [hl], c                                    ; $6bb4: $71
    adc [hl]                                      ; $6bb5: $8e
    or b                                          ; $6bb6: $b0
    nop                                           ; $6bb7: $00
    ld e, a                                       ; $6bb8: $5f
    ld a, [$6d1f]                                 ; $6bb9: $fa $1f $6d
    sbc a                                         ; $6bbc: $9f
    db $d3                                        ; $6bbd: $d3
    cpl                                           ; $6bbe: $2f
    add d                                         ; $6bbf: $82
    nop                                           ; $6bc0: $00
    ld bc, $8043                                  ; $6bc1: $01 $43 $80
    rrca                                          ; $6bc4: $0f
    ldh a, [$f0]                                  ; $6bc5: $f0 $f0
    rrca                                          ; $6bc7: $0f
    ld e, $00                                     ; $6bc8: $1e $00
    pop hl                                        ; $6bca: $e1
    ld c, $f1                                     ; $6bcb: $0e $f1
    ld d, e                                       ; $6bcd: $53
    rst $38                                       ; $6bce: $ff
    db $fd                                        ; $6bcf: $fd
    cp $16                                        ; $6bd0: $fe $16
    nop                                           ; $6bd2: $00
    jp hl                                         ; $6bd3: $e9


    db $fd                                        ; $6bd4: $fd
    ld [bc], a                                    ; $6bd5: $02
    push bc                                       ; $6bd6: $c5
    ld a, e                                       ; $6bd7: $7b
    ld sp, $8eff                                  ; $6bd8: $31 $ff $8e
    add d                                         ; $6bdb: $82
    ret nc                                        ; $6bdc: $d0

jr_093_6bdd:
    ld b, b                                       ; $6bdd: $40
    rra                                           ; $6bde: $1f

jr_093_6bdf:
    ldh [$0a], a                                  ; $6bdf: $e0 $0a
    push af                                       ; $6be1: $f5
    ld de, $0441                                  ; $6be2: $11 $41 $04
    ld [hl+], a                                   ; $6be5: $22
    ld [$44ff], sp                                ; $6be6: $08 $ff $44
    rst $38                                       ; $6be9: $ff
    sbc d                                         ; $6bea: $9a
    ld l, l                                       ; $6beb: $6d
    inc b                                         ; $6bec: $04
    ld b, b                                       ; $6bed: $40
    cp a                                          ; $6bee: $bf
    jr nz, jr_093_6c32                            ; $6bef: $20 $41

    rst $18                                       ; $6bf1: $df
    ld d, c                                       ; $6bf2: $51
    inc c                                         ; $6bf3: $0c
    ld hl, $52ff                                  ; $6bf4: $21 $ff $52
    rst $38                                       ; $6bf7: $ff
    jp hl                                         ; $6bf8: $e9


    ld a, l                                       ; $6bf9: $7d
    inc b                                         ; $6bfa: $04
    inc b                                         ; $6bfb: $04
    adc d                                         ; $6bfc: $8a
    ld [hl], l                                    ; $6bfd: $75
    jr nz, jr_093_6bdf                            ; $6bfe: $20 $df

    ld [bc], a                                    ; $6c00: $02
    ld h, e                                       ; $6c01: $63
    inc b                                         ; $6c02: $04
    ld [hl+], a                                   ; $6c03: $22
    rst $38                                       ; $6c04: $ff
    add hl, de                                    ; $6c05: $19
    ld d, h                                       ; $6c06: $54
    rst $38                                       ; $6c07: $ff
    ld a, [$0c8d]                                 ; $6c08: $fa $8d $0c
    ld l, [hl]                                    ; $6c0b: $6e
    inc b                                         ; $6c0c: $04
    ld e, a                                       ; $6c0d: $5f
    jr nz, @+$54                                  ; $6c0e: $20 $52

    inc c                                         ; $6c10: $0c
    nop                                           ; $6c11: $00
    ei                                            ; $6c12: $fb
    inc b                                         ; $6c13: $04
    cp a                                          ; $6c14: $bf
    ld b, b                                       ; $6c15: $40
    ld l, a                                       ; $6c16: $6f
    sub b                                         ; $6c17: $90
    ld l, [hl]                                    ; $6c18: $6e
    sub b                                         ; $6c19: $90
    ld [$02fd], sp                                ; $6c1a: $08 $fd $02
    db $fd                                        ; $6c1d: $fd

jr_093_6c1e:
    inc bc                                        ; $6c1e: $03
    or h                                          ; $6c1f: $b4
    jr jr_093_6bdd                                ; $6c20: $18 $bb

    ld b, h                                       ; $6c22: $44
    rst $38                                       ; $6c23: $ff
    nop                                           ; $6c24: $00
    nop                                           ; $6c25: $00
    ld c, $07                                     ; $6c26: $0e $07
    dec bc                                        ; $6c28: $0b
    rlca                                          ; $6c29: $07
    ld l, [hl]                                    ; $6c2a: $6e
    sub c                                         ; $6c2b: $91
    db $ed                                        ; $6c2c: $ed
    ld h, b                                       ; $6c2d: $60
    ld a, [c]                                     ; $6c2e: $f2
    ld e, [hl]                                    ; $6c2f: $5e
    inc bc                                        ; $6c30: $03
    ld h, d                                       ; $6c31: $62

jr_093_6c32:
    inc bc                                        ; $6c32: $03
    ld a, a                                       ; $6c33: $7f
    add b                                         ; $6c34: $80
    cp a                                          ; $6c35: $bf
    ld b, b                                       ; $6c36: $40
    db $eb                                        ; $6c37: $eb
    nop                                           ; $6c38: $00
    inc d                                         ; $6c39: $14
    rst $30                                       ; $6c3a: $f7
    ld [$20df], sp                                ; $6c3b: $08 $df $20
    db $ed                                        ; $6c3e: $ed
    ld [bc], a                                    ; $6c3f: $02
    ld e, a                                       ; $6c40: $5f
    nop                                           ; $6c41: $00
    and b                                         ; $6c42: $a0
    or $00                                        ; $6c43: $f6 $00
    db $dd                                        ; $6c45: $dd
    ld [hl+], a                                   ; $6c46: $22
    add c                                         ; $6c47: $81
    ld a, [hl]                                    ; $6c48: $7e
    ld e, $08                                     ; $6c49: $1e $08
    pop hl                                        ; $6c4b: $e1
    and [hl]                                      ; $6c4c: $a6
    ld sp, hl                                     ; $6c4d: $f9
    call nc, $014c                                ; $6c4e: $d4 $4c $01
    push af                                       ; $6c51: $f5
    ld a, [bc]                                    ; $6c52: $0a
    rra                                           ; $6c53: $1f
    stop                                          ; $6c54: $10 $00
    ld c, $01                                     ; $6c56: $0e $01
    ld b, h                                       ; $6c58: $44
    ld [$827d], sp                                ; $6c59: $08 $7d $82
    ld a, a                                       ; $6c5c: $7f
    add b                                         ; $6c5d: $80
    nop                                           ; $6c5e: $00
    db $fd                                        ; $6c5f: $fd
    ld [bc], a                                    ; $6c60: $02
    sbc $21                                       ; $6c61: $de $21
    ei                                            ; $6c63: $fb
    dec b                                         ; $6c64: $05
    db $fd                                        ; $6c65: $fd
    inc bc                                        ; $6c66: $03
    nop                                           ; $6c67: $00
    db $fd                                        ; $6c68: $fd
    inc bc                                        ; $6c69: $03
    or $09                                        ; $6c6a: $f6 $09
    ld l, e                                       ; $6c6c: $6b
    sub h                                         ; $6c6d: $94
    cp $81                                        ; $6c6e: $fe $81
    nop                                           ; $6c70: $00
    ld d, l                                       ; $6c71: $55
    and d                                         ; $6c72: $a2
    ld d, a                                       ; $6c73: $57
    ld [$51aa], sp                                ; $6c74: $08 $aa $51
    ld a, a                                       ; $6c77: $7f
    add b                                         ; $6c78: $80
    nop                                           ; $6c79: $00
    ld [hl], a                                    ; $6c7a: $77
    adc b                                         ; $6c7b: $88
    xor $f1                                       ; $6c7c: $ee $f1
    cp a                                          ; $6c7e: $bf
    ld b, b                                       ; $6c7f: $40
    rst $10                                       ; $6c80: $d7
    ld [$fd00], sp                                ; $6c81: $08 $00 $fd
    ld [bc], a                                    ; $6c84: $02
    cp [hl]                                       ; $6c85: $be
    ld b, c                                       ; $6c86: $41
    xor e                                         ; $6c87: $ab
    inc b                                         ; $6c88: $04
    rst $18                                       ; $6c89: $df
    jr nz, jr_093_6c8c                            ; $6c8a: $20 $00

jr_093_6c8c:
    add sp, $17                                   ; $6c8c: $e8 $17
    db $fd                                        ; $6c8e: $fd
    ld [bc], a                                    ; $6c8f: $02
    cp $01                                        ; $6c90: $fe $01
    ei                                            ; $6c92: $fb
    inc b                                         ; $6c93: $04
    nop                                           ; $6c94: $00
    rst $38                                       ; $6c95: $ff
    nop                                           ; $6c96: $00
    cp $01                                        ; $6c97: $fe $01
    rst $28                                       ; $6c99: $ef
    db $10                                        ; $6c9a: $10
    ld e, a                                       ; $6c9b: $5f
    add b                                         ; $6c9c: $80
    ld bc, $e21f                                  ; $6c9d: $01 $1f $e2
    dec bc                                        ; $6ca0: $0b
    or $12                                        ; $6ca1: $f6 $12
    rst $38                                       ; $6ca3: $ff
    ld [bc], a                                    ; $6ca4: $02
    ret nz                                        ; $6ca5: $c0

    nop                                           ; $6ca6: $00
    ld b, b                                       ; $6ca7: $40
    ld b, [hl]                                    ; $6ca8: $46
    ret nz                                        ; $6ca9: $c0

    db $10                                        ; $6caa: $10
    ld [bc], a                                    ; $6cab: $02
    inc c                                         ; $6cac: $0c
    adc c                                         ; $6cad: $89
    ld c, $88                                     ; $6cae: $0e $88
    rrca                                          ; $6cb0: $0f
    ld bc, $0f9f                                  ; $6cb1: $01 $9f $0f
    ld sp, hl                                     ; $6cb4: $f9
    rrca                                          ; $6cb5: $0f
    ld l, d                                       ; $6cb6: $6a
    sbc a                                         ; $6cb7: $9f
    add hl, bc                                    ; $6cb8: $09
    dec a                                         ; $6cb9: $3d
    dec b                                         ; $6cba: $05
    dec b                                         ; $6cbb: $05
    jp z, Jump_093_6075                           ; $6cbc: $ca $75 $60

    rst $18                                       ; $6cbf: $df
    jp nz, Jump_093_40c0                          ; $6cc0: $c2 $c0 $40

    ld l, a                                       ; $6cc3: $6f
    ld l, d                                       ; $6cc4: $6a

jr_093_6cc5:
    nop                                           ; $6cc5: $00
    nop                                           ; $6cc6: $00
    xor [hl]                                      ; $6cc7: $ae
    ld de, $04fb                                  ; $6cc8: $11 $fb $04
    db $dd                                        ; $6ccb: $dd
    jr nz, jr_093_6cc5                            ; $6ccc: $20 $f7

    nop                                           ; $6cce: $00
    ld b, b                                       ; $6ccf: $40
    or a                                          ; $6cd0: $b7
    sbc b                                         ; $6cd1: $98
    nop                                           ; $6cd2: $00
    adc e                                         ; $6cd3: $8b
    ld [hl], h                                    ; $6cd4: $74
    ret nz                                        ; $6cd5: $c0

    ld a, a                                       ; $6cd6: $7f
    or l                                          ; $6cd7: $b5
    ld a, a                                       ; $6cd8: $7f
    nop                                           ; $6cd9: $00
    ld e, [hl]                                    ; $6cda: $5e
    cp a                                          ; $6cdb: $bf
    ei                                            ; $6cdc: $fb
    rlca                                          ; $6cdd: $07
    ld l, a                                       ; $6cde: $6f
    sub b                                         ; $6cdf: $90
    rst $30                                       ; $6ce0: $f7
    ld [$fe42], sp                                ; $6ce1: $08 $42 $fe
    sub b                                         ; $6ce4: $90
    nop                                           ; $6ce5: $00
    rst $38                                       ; $6ce6: $ff
    nop                                           ; $6ce7: $00
    ld [hl], a                                    ; $6ce8: $77
    adc b                                         ; $6ce9: $88
    ld a, d                                       ; $6cea: $7a
    add hl, bc                                    ; $6ceb: $09
    cp h                                          ; $6cec: $bc
    nop                                           ; $6ced: $00
    ld b, e                                       ; $6cee: $43
    ld l, c                                       ; $6cef: $69
    ld b, $bc                                     ; $6cf0: $06 $bc
    ld b, a                                       ; $6cf2: $47
    db $eb                                        ; $6cf3: $eb
    rla                                           ; $6cf4: $17
    rst $38                                       ; $6cf5: $ff
    jr nz, jr_093_6cf8                            ; $6cf6: $20 $00

jr_093_6cf8:
    db $e3                                        ; $6cf8: $e3
    or d                                          ; $6cf9: $b2
    ld bc, $20d4                                  ; $6cfa: $01 $d4 $20
    and a                                         ; $6cfd: $a7
    ld a, b                                       ; $6cfe: $78
    rst $18                                       ; $6cff: $df

Call_093_6d00:
    ld bc, $a13f                                  ; $6d00: $01 $3f $a1
    ld e, [hl]                                    ; $6d03: $5e
    xor $11                                       ; $6d04: $ee $11
    db $fd                                        ; $6d06: $fd
    ld [bc], a                                    ; $6d07: $02
    jr z, jr_093_6d12                             ; $6d08: $28 $08

    nop                                           ; $6d0a: $00
    dec e                                         ; $6d0b: $1d
    ld [c], a                                     ; $6d0c: $e2

jr_093_6d0d:
    swap h                                        ; $6d0d: $cb $34
    push af                                       ; $6d0f: $f5
    ld a, [bc]                                    ; $6d10: $0a
    rla                                           ; $6d11: $17

jr_093_6d12:
    add sp, -$70                                  ; $6d12: $e8 $90
    ld c, b                                       ; $6d14: $48
    inc c                                         ; $6d15: $0c
    db $fd                                        ; $6d16: $fd
    ld [bc], a                                    ; $6d17: $02
    add d                                         ; $6d18: $82
    dec c                                         ; $6d19: $0d
    dec de                                        ; $6d1a: $1b
    db $e4                                        ; $6d1b: $e4
    xor $11                                       ; $6d1c: $ee $11
    ld [hl+], a                                   ; $6d1e: $22
    dec [hl]                                      ; $6d1f: $35
    jp z, $0d8c                                   ; $6d20: $ca $8c $0d

    db $fd                                        ; $6d23: $fd
    ld [bc], a                                    ; $6d24: $02
    db $db                                        ; $6d25: $db
    ld [hl+], a                                   ; $6d26: $22
    ld bc, $40da                                  ; $6d27: $01 $da $40
    dec h                                         ; $6d2a: $25
    sbc d                                         ; $6d2b: $9a
    dec c                                         ; $6d2c: $0d
    ld d, l                                       ; $6d2d: $55
    ld [c], a                                     ; $6d2e: $e2
    cp l                                          ; $6d2f: $bd
    ld a, [hl]                                    ; $6d30: $7e
    rst $30                                       ; $6d31: $f7
    ld [$af09], sp                                ; $6d32: $08 $09 $af
    ld d, b                                       ; $6d35: $50
    ld a, l                                       ; $6d36: $7d
    ld [bc], a                                    ; $6d37: $02
    ldh [rSB], a                                  ; $6d38: $e0 $01
    nop                                           ; $6d3a: $00
    ei                                            ; $6d3b: $fb
    ret z                                         ; $6d3c: $c8

    ld bc, $be10                                  ; $6d3d: $01 $10 $be
    ld b, c                                       ; $6d40: $41
    rst $10                                       ; $6d41: $d7
    ld a, h                                       ; $6d42: $7c
    inc b                                         ; $6d43: $04
    db $eb                                        ; $6d44: $eb
    inc b                                         ; $6d45: $04
    ld e, a                                       ; $6d46: $5f
    jr nz, jr_093_6d49                            ; $6d47: $20 $00

jr_093_6d49:
    ld a, [$f704]                                 ; $6d49: $fa $04 $f7
    nop                                           ; $6d4c: $00
    adc a                                         ; $6d4d: $8f
    ld hl, sp+$76                                 ; $6d4e: $f8 $76
    ld hl, sp-$80                                 ; $6d50: $f8 $80
    ret nz                                        ; $6d52: $c0

    dec c                                         ; $6d53: $0d
    scf                                           ; $6d54: $37
    ld b, b                                       ; $6d55: $40
    ld e, a                                       ; $6d56: $5f
    ldh [$bf], a                                  ; $6d57: $e0 $bf
    ret nz                                        ; $6d59: $c0

    rst $18                                       ; $6d5a: $df
    dec bc                                        ; $6d5b: $0b
    jr nz, jr_093_6d0d                            ; $6d5c: $20 $af

    ld d, b                                       ; $6d5e: $50
    ei                                            ; $6d5f: $fb
    ld d, b                                       ; $6d60: $50
    nop                                           ; $6d61: $00
    ld e, a                                       ; $6d62: $5f
    cp $11                                        ; $6d63: $fe $11
    and $08                                       ; $6d65: $e6 $08
    add b                                         ; $6d67: $80
    and $29                                       ; $6d68: $e6 $29
    db $db                                        ; $6d6a: $db
    inc h                                         ; $6d6b: $24
    rst $38                                       ; $6d6c: $ff
    nop                                           ; $6d6d: $00
    db $dd                                        ; $6d6e: $dd
    ld [bc], a                                    ; $6d6f: $02
    ld [hl], a                                    ; $6d70: $77
    ret nz                                        ; $6d71: $c0

    ld l, [hl]                                    ; $6d72: $6e
    ld [$033c], sp                                ; $6d73: $08 $3c $03
    cp $01                                        ; $6d76: $fe $01
    db $eb                                        ; $6d78: $eb
    inc b                                         ; $6d79: $04
    cp [hl]                                       ; $6d7a: $be
    ld b, b                                       ; $6d7b: $40
    inc c                                         ; $6d7c: $0c
    rst $28                                       ; $6d7d: $ef
    db $10                                        ; $6d7e: $10
    or l                                          ; $6d7f: $b5
    ld [bc], a                                    ; $6d80: $02
    or b                                          ; $6d81: $b0
    ld [$0ade], sp                                ; $6d82: $08 $de $0a
    push af                                       ; $6d85: $f5
    ld a, [bc]                                    ; $6d86: $0a
    db $10                                        ; $6d87: $10
    ld e, a                                       ; $6d88: $5f
    add b                                         ; $6d89: $80
    ld l, l                                       ; $6d8a: $6d
    ld l, $02                                     ; $6d8b: $2e $02
    ld [hl], l                                    ; $6d8d: $75
    add d                                         ; $6d8e: $82
    rst $18                                       ; $6d8f: $df
    jr nz, jr_093_6d92                            ; $6d90: $20 $00

jr_093_6d92:
    ei                                            ; $6d92: $fb
    inc b                                         ; $6d93: $04
    rst $10                                       ; $6d94: $d7
    ld [$14eb], sp                                ; $6d95: $08 $eb $14
    ld a, a                                       ; $6d98: $7f
    add b                                         ; $6d99: $80
    nop                                           ; $6d9a: $00
    and b                                         ; $6d9b: $a0
    ld e, a                                       ; $6d9c: $5f
    ld e, a                                       ; $6d9d: $5f
    and b                                         ; $6d9e: $a0
    cp $01                                        ; $6d9f: $fe $01
    or a                                          ; $6da1: $b7
    ld c, b                                       ; $6da2: $48
    nop                                           ; $6da3: $00
    ld a, a                                       ; $6da4: $7f
    add b                                         ; $6da5: $80
    sbc $20                                       ; $6da6: $de $20
    ld a, l                                       ; $6da8: $7d
    add d                                         ; $6da9: $82
    push af                                       ; $6daa: $f5
    dec bc                                        ; $6dab: $0b
    inc c                                         ; $6dac: $0c
    ld a, [hl]                                    ; $6dad: $7e
    add c                                         ; $6dae: $81
    sbc a                                         ; $6daf: $9f
    ld h, b                                       ; $6db0: $60
    xor [hl]                                      ; $6db1: $ae
    dec e                                         ; $6db2: $1d
    or b                                          ; $6db3: $b0
    dec c                                         ; $6db4: $0d
    inc bc                                        ; $6db5: $03
    ld [bc], a                                    ; $6db6: $02
    nop                                           ; $6db7: $00
    ld b, $05                                     ; $6db8: $06 $05
    add hl, bc                                    ; $6dba: $09
    rrca                                          ; $6dbb: $0f
    ld c, $0b                                     ; $6dbc: $0e $0b
    rlca                                          ; $6dbe: $07
    inc b                                         ; $6dbf: $04
    inc e                                         ; $6dc0: $1c
    ld [bc], a                                    ; $6dc1: $02
    inc bc                                        ; $6dc2: $03
    ld bc, $33f6                                  ; $6dc3: $01 $f6 $33
    halt                                          ; $6dc6: $76
    jr jr_093_6e47                                ; $6dc7: $18 $7e

    ld a, [de]                                    ; $6dc9: $1a
    rst $38                                       ; $6dca: $ff
    nop                                           ; $6dcb: $00
    nop                                           ; $6dcc: $00
    cp a                                          ; $6dcd: $bf
    ld b, b                                       ; $6dce: $40
    cp $00                                        ; $6dcf: $fe $00
    or a                                          ; $6dd1: $b7
    ld c, b                                       ; $6dd2: $48
    cp $01                                        ; $6dd3: $fe $01
    ld a, d                                       ; $6dd5: $7a
    db $ed                                        ; $6dd6: $ed

jr_093_6dd7:
    cp b                                          ; $6dd7: $b8
    ld [bc], a                                    ; $6dd8: $02
    ld [hl], d                                    ; $6dd9: $72
    add hl, bc                                    ; $6dda: $09
    xor h                                         ; $6ddb: $ac
    ld a, [bc]                                    ; $6ddc: $0a
    call c, $ea08                                 ; $6ddd: $dc $08 $ea
    db $fc                                        ; $6de0: $fc
    ld bc, $04eb                                  ; $6de1: $01 $eb $04
    inc d                                         ; $6de4: $14

jr_093_6de5:
    rst $18                                       ; $6de5: $df
    nop                                           ; $6de6: $00
    cp l                                          ; $6de7: $bd
    ld b, d                                       ; $6de8: $42
    cp $13                                        ; $6de9: $fe $13
    rlca                                          ; $6deb: $07
    rrca                                          ; $6dec: $0f
    nop                                           ; $6ded: $00
    ld [$101f], sp                                ; $6dee: $08 $1f $10
    rra                                           ; $6df1: $1f
    db $10                                        ; $6df2: $10
    ccf                                           ; $6df3: $3f
    ccf                                           ; $6df4: $3f
    ccf                                           ; $6df5: $3f
    ld b, b                                       ; $6df6: $40
    ld a, [hl+]                                   ; $6df7: $2a
    inc e                                         ; $6df8: $1c
    ld d, $80                                     ; $6df9: $16 $80
    ld b, b                                       ; $6dfb: $40
    ret nz                                        ; $6dfc: $c0

    and b                                         ; $6dfd: $a0
    ld h, b                                       ; $6dfe: $60
    and b                                         ; $6dff: $a0
    inc b                                         ; $6e00: $04
    ld h, b                                       ; $6e01: $60
    jr nz, jr_093_6de5                            ; $6e02: $20 $e1

    ld hl, $2ce2                                  ; $6e04: $21 $e2 $2c
    inc h                                         ; $6e07: $24
    jr nc, jr_093_6e3a                            ; $6e08: $30 $30

    db $10                                        ; $6e0a: $10
    ld d, b                                       ; $6e0b: $50
    ld h, b                                       ; $6e0c: $60
    and b                                         ; $6e0d: $a0
    add d                                         ; $6e0e: $82
    dec c                                         ; $6e0f: $0d
    rra                                           ; $6e10: $1f
    inc d                                         ; $6e11: $14
    db $eb                                        ; $6e12: $eb
    xor $00                                       ; $6e13: $ee $00
    rst $10                                       ; $6e15: $d7
    jr c, jr_093_6dd7                             ; $6e16: $38 $bf

    ld a, a                                       ; $6e18: $7f
    ld h, a                                       ; $6e19: $67
    ret c                                         ; $6e1a: $d8

    rst $38                                       ; $6e1b: $ff
    ret nz                                        ; $6e1c: $c0

    nop                                           ; $6e1d: $00
    cp $c9                                        ; $6e1e: $fe $c9

Call_093_6e20:
    ld e, a                                       ; $6e20: $5f
    ld l, [hl]                                    ; $6e21: $6e
    ld b, e                                       ; $6e22: $43
    push bc                                       ; $6e23: $c5
    ld b, [hl]                                    ; $6e24: $46
    jp z, $ac00                                   ; $6e25: $ca $00 $ac

    ld [hl], h                                    ; $6e28: $74
    sbc $ee                                       ; $6e29: $de $ee
    ccf                                           ; $6e2b: $3f
    pop de                                        ; $6e2c: $d1
    ld a, a                                       ; $6e2d: $7f
    and c                                         ; $6e2e: $a1
    ld [$71ef], sp                                ; $6e2f: $08 $ef $71
    or a                                          ; $6e32: $b7
    ld sp, hl                                     ; $6e33: $f9
    adc $10                                       ; $6e34: $ce $10
    ld bc, $20d7                                  ; $6e36: $01 $d7 $20
    nop                                           ; $6e39: $00

jr_093_6e3a:
    ld l, h                                       ; $6e3a: $6c
    inc de                                        ; $6e3b: $13
    ld a, e                                       ; $6e3c: $7b
    add h                                         ; $6e3d: $84
    ld hl, sp+$07                                 ; $6e3e: $f8 $07
    inc e                                         ; $6e40: $1c
    rlca                                          ; $6e41: $07
    nop                                           ; $6e42: $00
    cp l                                          ; $6e43: $bd
    xor e                                         ; $6e44: $ab
    ld a, [hl]                                    ; $6e45: $7e
    ld sp, hl                                     ; $6e46: $f9

jr_093_6e47:
    xor l                                         ; $6e47: $ad
    ld a, a                                       ; $6e48: $7f
    rst $30                                       ; $6e49: $f7
    rst $28                                       ; $6e4a: $ef
    nop                                           ; $6e4b: $00
    cp $bf                                        ; $6e4c: $fe $bf
    halt                                          ; $6e4e: $76
    ld a, a                                       ; $6e4f: $7f
    ld a, e                                       ; $6e50: $7b
    ld a, a                                       ; $6e51: $7f
    ld a, $2f                                     ; $6e52: $3e $2f
    nop                                           ; $6e54: $00
    ld a, $fe                                     ; $6e55: $3e $fe
    ld [$baf6], a                                 ; $6e57: $ea $f6 $ba
    ld a, [hl]                                    ; $6e5a: $7e
    ld [hl], h                                    ; $6e5b: $74
    sbc h                                         ; $6e5c: $9c
    nop                                           ; $6e5d: $00
    db $fc                                        ; $6e5e: $fc

jr_093_6e5f:
    call nc, $b878                                ; $6e5f: $d4 $78 $b8
    ldh a, [rNR10]                                ; $6e62: $f0 $10
    ldh a, [$f0]                                  ; $6e64: $f0 $f0
    sub d                                         ; $6e66: $92
    ld a, [hl]                                    ; $6e67: $7e
    ld l, $05                                     ; $6e68: $2e $05
    ld b, $02                                     ; $6e6a: $06 $02
    ld [$0704], sp                                ; $6e6c: $08 $04 $07
    or c                                          ; $6e6f: $b1
    ld c, $e0                                     ; $6e70: $0e $e0
    nop                                           ; $6e72: $00
    ldh [$d0], a                                  ; $6e73: $e0 $d0
    jr nc, jr_093_6e5f                            ; $6e75: $30 $e8

    jr @-$06                                      ; $6e77: $18 $f8

    ld [$10f8], sp                                ; $6e79: $08 $f8 $10
    ld [$18e8], sp                                ; $6e7c: $08 $e8 $18
    add sp, $18                                   ; $6e7f: $e8 $18
    inc bc                                        ; $6e81: $03
    inc bc                                        ; $6e82: $03
    ld a, h                                       ; $6e83: $7c
    ld a, a                                       ; $6e84: $7f
    ld [bc], a                                    ; $6e85: $02
    or h                                          ; $6e86: $b4
    rst $08                                       ; $6e87: $cf
    db $fc                                        ; $6e88: $fc
    add a                                         ; $6e89: $87
    cp $9f                                        ; $6e8a: $fe $9f
    inc [hl]                                      ; $6e8c: $34
    nop                                           ; $6e8d: $00
    db $10                                        ; $6e8e: $10
    ld [bc], a                                    ; $6e8f: $02
    jr @-$16                                      ; $6e90: $18 $e8

jr_093_6e92:
    db $fc                                        ; $6e92: $fc
    db $fc                                        ; $6e93: $fc
    rst $20                                       ; $6e94: $e7
    dec de                                        ; $6e95: $1b
    dec [hl]                                      ; $6e96: $35
    ld [bc], a                                    ; $6e97: $02
    ld [de], a                                    ; $6e98: $12
    nop                                           ; $6e99: $00
    ld a, e                                       ; $6e9a: $7b
    sub a                                         ; $6e9b: $97
    cp d                                          ; $6e9c: $ba
    rst $20                                       ; $6e9d: $e7
    ld d, a                                       ; $6e9e: $57
    ld l, a                                       ; $6e9f: $6f
    cpl                                           ; $6ea0: $2f
    inc a                                         ; $6ea1: $3c
    nop                                           ; $6ea2: $00
    rra                                           ; $6ea3: $1f
    dec e                                         ; $6ea4: $1d
    rrca                                          ; $6ea5: $0f
    rrca                                          ; $6ea6: $0f
    inc d                                         ; $6ea7: $14
    dec de                                        ; $6ea8: $1b
    dec l                                         ; $6ea9: $2d
    inc sp                                        ; $6eaa: $33
    nop                                           ; $6eab: $00
    rra                                           ; $6eac: $1f
    rra                                           ; $6ead: $1f
    ld l, d                                       ; $6eae: $6a
    sub [hl]                                      ; $6eaf: $96
    ld a, a                                       ; $6eb0: $7f
    or a                                          ; $6eb1: $b7
    db $fd                                        ; $6eb2: $fd
    db $dd                                        ; $6eb3: $dd
    nop                                           ; $6eb4: $00
    or [hl]                                       ; $6eb5: $b6
    adc $4d                                       ; $6eb6: $ce $4d
    di                                            ; $6eb8: $f3
    db $fd                                        ; $6eb9: $fd
    cp $db                                        ; $6eba: $fe $db
    cp $00                                        ; $6ebc: $fe $00
    db $fd                                        ; $6ebe: $fd
    rst $38                                       ; $6ebf: $ff
    push de                                       ; $6ec0: $d5
    xor b                                         ; $6ec1: $a8
    rst $38                                       ; $6ec2: $ff
    ld a, a                                       ; $6ec3: $7f
    cp [hl]                                       ; $6ec4: $be
    rst $38                                       ; $6ec5: $ff
    nop                                           ; $6ec6: $00
    rst $38                                       ; $6ec7: $ff
    cp [hl]                                       ; $6ec8: $be
    cp [hl]                                       ; $6ec9: $be
    cp [hl]                                       ; $6eca: $be
    and d                                         ; $6ecb: $a2
    pop bc                                        ; $6ecc: $c1
    ld a, a                                       ; $6ecd: $7f
    rst $38                                       ; $6ece: $ff
    jr nz, jr_093_6e92                            ; $6ecf: $20 $c1

    ld a, $a8                                     ; $6ed1: $3e $a8
    dec bc                                        ; $6ed3: $0b
    or $88                                        ; $6ed4: $f6 $88
    xor l                                         ; $6ed6: $ad
    jp nc, $10d7                                  ; $6ed7: $d2 $d7 $10

    add b                                         ; $6eda: $80
    xor [hl]                                      ; $6edb: $ae
    pop de                                        ; $6edc: $d1
    ld c, [hl]                                    ; $6edd: $4e
    rrca                                          ; $6ede: $0f
    db $fc                                        ; $6edf: $fc
    inc bc                                        ; $6ee0: $03
    ld a, a                                       ; $6ee1: $7f
    rst $38                                       ; $6ee2: $ff
    sub b                                         ; $6ee3: $90
    jr nz, jr_093_6f1e                            ; $6ee4: $20 $38

    jp Jump_093_703c                              ; $6ee6: $c3 $3c $70


    dec bc                                        ; $6ee9: $0b
    sbc [hl]                                      ; $6eea: $9e
    pop hl                                        ; $6eeb: $e1
    adc [hl]                                      ; $6eec: $8e
    pop af                                        ; $6eed: $f1
    ld b, d                                       ; $6eee: $42
    db $d3                                        ; $6eef: $d3
    ld [hl], b                                    ; $6ef0: $70
    inc hl                                        ; $6ef1: $23
    ld d, l                                       ; $6ef2: $55
    ld [c], a                                     ; $6ef3: $e2
    cp a                                          ; $6ef4: $bf
    ld a, h                                       ; $6ef5: $7c
    nop                                           ; $6ef6: $00
    ld c, d                                       ; $6ef7: $4a
    ld d, l                                       ; $6ef8: $55
    nop                                           ; $6ef9: $00
    ld l, [hl]                                    ; $6efa: $6e
    ld e, a                                       ; $6efb: $5f
    ld a, a                                       ; $6efc: $7f
    ld l, e                                       ; $6efd: $6b
    ld e, d                                       ; $6efe: $5a
    dec [hl]                                      ; $6eff: $35
    dec a                                         ; $6f00: $3d
    dec a                                         ; $6f01: $3d
    nop                                           ; $6f02: $00
    dec h                                         ; $6f03: $25
    dec de                                        ; $6f04: $1b
    rla                                           ; $6f05: $17
    ld a, l                                       ; $6f06: $7d
    ld a, a                                       ; $6f07: $7f
    ld a, [c]                                     ; $6f08: $f2
    sbc a                                         ; $6f09: $9f
    and b                                         ; $6f0a: $a0
    jr z, @+$62                                   ; $6f0b: $28 $60

    ret nz                                        ; $6f0d: $c0

    sbc d                                         ; $6f0e: $9a
    ld b, $c0                                     ; $6f0f: $06 $c0
    jr nc, @+$03                                  ; $6f11: $30 $01

    ldh [rNR41], a                                ; $6f13: $e0 $20
    ld a, [hl]                                    ; $6f15: $7e
    nop                                           ; $6f16: $00
    cp [hl]                                       ; $6f17: $be
    rst $18                                       ; $6f18: $df
    pop af                                        ; $6f19: $f1
    db $fc                                        ; $6f1a: $fc
    and a                                         ; $6f1b: $a7
    ret c                                         ; $6f1c: $d8

    cp a                                          ; $6f1d: $bf

jr_093_6f1e:
    ret nz                                        ; $6f1e: $c0

    ld [hl+], a                                   ; $6f1f: $22
    cp a                                          ; $6f20: $bf
    ldh [$60], a                                  ; $6f21: $e0 $60
    inc [hl]                                      ; $6f23: $34
    rst $30                                       ; $6f24: $f7
    sbc c                                         ; $6f25: $99
    sub e                                         ; $6f26: $93
    dec d                                         ; $6f27: $15
    inc bc                                        ; $6f28: $03
    rlca                                          ; $6f29: $07
    db $10                                        ; $6f2a: $10
    ld sp, hl                                     ; $6f2b: $f9
    rrca                                          ; $6f2c: $0f
    pop af                                        ; $6f2d: $f1
    ld h, b                                       ; $6f2e: $60
    inc e                                         ; $6f2f: $1c
    add sp, $17                                   ; $6f30: $e8 $17
    rst $38                                       ; $6f32: $ff
    rrca                                          ; $6f33: $0f
    nop                                           ; $6f34: $00
    rst $30                                       ; $6f35: $f7
    rra                                           ; $6f36: $1f
    rst $38                                       ; $6f37: $ff
    rla                                           ; $6f38: $17
    rst $30                                       ; $6f39: $f7
    rla                                           ; $6f3a: $17
    db $f4                                        ; $6f3b: $f4
    jr jr_093_6f3e                                ; $6f3c: $18 $00

jr_093_6f3e:
    rst $28                                       ; $6f3e: $ef
    rra                                           ; $6f3f: $1f
    ld e, b                                       ; $6f40: $58
    add a                                         ; $6f41: $87
    pop de                                        ; $6f42: $d1
    rst $38                                       ; $6f43: $ff
    cp $ff                                        ; $6f44: $fe $ff
    nop                                           ; $6f46: $00
    db $dd                                        ; $6f47: $dd
    ld a, [c]                                     ; $6f48: $f2
    ei                                            ; $6f49: $fb
    call nc, $d1de                                ; $6f4a: $d4 $de $d1
    ld e, a                                       ; $6f4d: $5f
    jr nc, jr_093_6f5c                            ; $6f4e: $30 $0c

    rst $28                                       ; $6f50: $ef
    ldh a, [$3f]                                  ; $6f51: $f0 $3f
    ret nz                                        ; $6f53: $c0

    ret nz                                        ; $6f54: $c0

    ld sp, $1026                                  ; $6f55: $31 $26 $10
    or a                                          ; $6f58: $b7
    ld d, a                                       ; $6f59: $57
    add b                                         ; $6f5a: $80
    ret nz                                        ; $6f5b: $c0

jr_093_6f5c:
    ld sp, $dfe0                                  ; $6f5c: $31 $e0 $df
    ldh a, [$fe]                                  ; $6f5f: $f0 $fe
    pop de                                        ; $6f61: $d1
    rst $18                                       ; $6f62: $df
    ret nc                                        ; $6f63: $d0

    nop                                           ; $6f64: $00
    ld [hl], h                                    ; $6f65: $74
    sbc b                                         ; $6f66: $98
    rst $28                                       ; $6f67: $ef
    rra                                           ; $6f68: $1f
    ld hl, sp+$07                                 ; $6f69: $f8 $07
    ret nc                                        ; $6f6b: $d0

    jr nz, jr_093_6f6e                            ; $6f6c: $20 $00

jr_093_6f6e:
    add sp, $30                                   ; $6f6e: $e8 $30
    xor $1f                                       ; $6f70: $ee $1f
    rst $38                                       ; $6f72: $ff
    nop                                           ; $6f73: $00
    ld e, [hl]                                    ; $6f74: $5e
    add b                                         ; $6f75: $80
    and b                                         ; $6f76: $a0
    ld [hl], $18                                  ; $6f77: $36 $18
    ld a, a                                       ; $6f79: $7f
    ld [$7f01], a                                 ; $6f7a: $ea $01 $7f
    add b                                         ; $6f7d: $80
    rlca                                          ; $6f7e: $07
    nop                                           ; $6f7f: $00
    add e                                         ; $6f80: $83
    or b                                          ; $6f81: $b0
    inc h                                         ; $6f82: $24
    dec d                                         ; $6f83: $15
    xor $11                                       ; $6f84: $ee $11
    inc c                                         ; $6f86: $0c
    ldh a, [rNR11]                                ; $6f87: $f0 $11
    rst $18                                       ; $6f89: $df
    jr nz, jr_093_6f99                            ; $6f8a: $20 $0d

    dec bc                                        ; $6f8c: $0b
    nop                                           ; $6f8d: $00
    rra                                           ; $6f8e: $1f
    rra                                           ; $6f8f: $1f
    dec e                                         ; $6f90: $1d
    inc de                                        ; $6f91: $13
    ld e, $1e                                     ; $6f92: $1e $1e
    ld e, $12                                     ; $6f94: $1e $12
    nop                                           ; $6f96: $00
    ld d, $1a                                     ; $6f97: $16 $1a

jr_093_6f99:
    ld a, a                                       ; $6f99: $7f
    ld a, e                                       ; $6f9a: $7b
    ei                                            ; $6f9b: $fb
    sbc [hl]                                      ; $6f9c: $9e
    jp c, Jump_000_00ea                           ; $6f9d: $da $ea $00

    db $fc                                        ; $6fa0: $fc
    db $fc                                        ; $6fa1: $fc
    ld e, h                                       ; $6fa2: $5c
    ld h, h                                       ; $6fa3: $64
    inc a                                         ; $6fa4: $3c
    inc a                                         ; $6fa5: $3c
    ld d, h                                       ; $6fa6: $54
    ld l, h                                       ; $6fa7: $6c
    nop                                           ; $6fa8: $00
    ld a, b                                       ; $6fa9: $78
    ld c, b                                       ; $6faa: $48
    cp $de                                        ; $6fab: $fe $de
    rst $18                                       ; $6fad: $df
    cp c                                          ; $6fae: $b9
    push de                                       ; $6faf: $d5

jr_093_6fb0:
    xor b                                         ; $6fb0: $a8
    rlca                                          ; $6fb1: $07
    xor a                                         ; $6fb2: $af
    ld c, a                                       ; $6fb3: $4f
    ld d, a                                       ; $6fb4: $57
    cp a                                          ; $6fb5: $bf
    ld e, a                                       ; $6fb6: $5f
    sub b                                         ; $6fb7: $90
    nop                                           ; $6fb8: $00
    ld e, d                                       ; $6fb9: $5a
    jr @+$68                                      ; $6fba: $18 $66

    dec b                                         ; $6fbc: $05
    nop                                           ; $6fbd: $00
    ldh [$d6], a                                  ; $6fbe: $e0 $d6
    ld hl, sp-$03                                 ; $6fc0: $f8 $fd
    jp nc, $d0d7                                  ; $6fc2: $d2 $d7 $d0

    ld e, [hl]                                    ; $6fc5: $5e
    nop                                           ; $6fc6: $00
    ld sp, $f0ef                                  ; $6fc7: $31 $ef $f0
    ld a, $c1                                     ; $6fca: $3e $c1
    rst $38                                       ; $6fcc: $ff
    sub e                                         ; $6fcd: $93
    jp z, $d082                                   ; $6fce: $ca $82 $d0

    ld b, b                                       ; $6fd1: $40
    add b                                         ; $6fd2: $80
    rst $38                                       ; $6fd3: $ff
    rst $18                                       ; $6fd4: $df
    push hl                                       ; $6fd5: $e5
    dec sp                                        ; $6fd6: $3b
    adc $10                                       ; $6fd7: $ce $10
    ccf                                           ; $6fd9: $3f
    ld [hl], b                                    ; $6fda: $70
    pop bc                                        ; $6fdb: $c1
    jr nc, @+$0f                                  ; $6fdc: $30 $0d

    ld [hl-], a                                   ; $6fde: $32
    dec b                                         ; $6fdf: $05
    ret z                                         ; $6fe0: $c8

    inc bc                                        ; $6fe1: $03
    db $fd                                        ; $6fe2: $fd
    ld [bc], a                                    ; $6fe3: $02
    jp c, Jump_000_0021                           ; $6fe4: $da $21 $00

    cp $01                                        ; $6fe7: $fe $01
    jp c, $fc25                                   ; $6fe9: $da $25 $fc

    ld bc, $01fe                                  ; $6fec: $01 $fe $01
    ld b, [hl]                                    ; $6fef: $46
    push de                                       ; $6ff0: $d5
    ld d, [hl]                                    ; $6ff1: $56
    dec b                                         ; $6ff2: $05
    push de                                       ; $6ff3: $d5
    rst $38                                       ; $6ff4: $ff
    xor d                                         ; $6ff5: $aa
    jp c, Jump_000_0405                           ; $6ff6: $da $05 $04

    ld [$23ff], sp                                ; $6ff9: $08 $ff $23
    rst $38                                       ; $6ffc: $ff
    ld d, l                                       ; $6ffd: $55
    ld d, [hl]                                    ; $6ffe: $56
    dec b                                         ; $6fff: $05
    ld d, l                                       ; $7000: $55
    rst $38                                       ; $7001: $ff
    xor e                                         ; $7002: $ab
    ld [$0405], a                                 ; $7003: $ea $05 $04
    ld [$ff00], sp                                ; $7006: $08 $00 $ff
    rst $38                                       ; $7009: $ff
    xor [hl]                                      ; $700a: $ae
    ld d, c                                       ; $700b: $51
    ld a, [$fc01]                                 ; $700c: $fa $01 $fc
    inc bc                                        ; $700f: $03
    db $10                                        ; $7010: $10
    ld e, [hl]                                    ; $7011: $5e
    add c                                         ; $7012: $81

jr_093_7013:
    cp $2c                                        ; $7013: $fe $2c
    nop                                           ; $7015: $00
    ld a, [$fe05]                                 ; $7016: $fa $05 $fe
    ld bc, $7000                                  ; $7019: $01 $00 $70
    db $10                                        ; $701c: $10
    ret nc                                        ; $701d: $d0

    jr nc, jr_093_6fb0                            ; $701e: $30 $90

    ld [hl], b                                    ; $7020: $70
    jr z, jr_093_7013                             ; $7021: $28 $f0

    nop                                           ; $7023: $00
    push de                                       ; $7024: $d5
    ret z                                         ; $7025: $c8

    adc b                                         ; $7026: $88
    inc b                                         ; $7027: $04
    nop                                           ; $7028: $00
    inc b                                         ; $7029: $04
    dec c                                         ; $702a: $0d
    inc b                                         ; $702b: $04
    add b                                         ; $702c: $80
    sbc d                                         ; $702d: $9a
    ld e, $05                                     ; $702e: $1e $05
    nop                                           ; $7030: $00
    ld a, [hl+]                                   ; $7031: $2a
    nop                                           ; $7032: $00
    dec d                                         ; $7033: $15
    nop                                           ; $7034: $00
    xor a                                         ; $7035: $af
    add b                                         ; $7036: $80
    ld [$0b07], sp                                ; $7037: $08 $07 $0b
    nop                                           ; $703a: $00
    ld b, [hl]                                    ; $703b: $46

Jump_093_703c:
    nop                                           ; $703c: $00
    xor l                                         ; $703d: $ad
    nop                                           ; $703e: $00
    rla                                           ; $703f: $17
    inc a                                         ; $7040: $3c
    nop                                           ; $7041: $00
    cp a                                          ; $7042: $bf
    inc d                                         ; $7043: $14
    rlca                                          ; $7044: $07
    ld h, [hl]                                    ; $7045: $66
    dec d                                         ; $7046: $15
    ld b, $16                                     ; $7047: $06 $16
    inc b                                         ; $7049: $04
    jr c, @-$5f                                   ; $704a: $38 $9f

    inc b                                         ; $704c: $04
    nop                                           ; $704d: $00
    ld [hl], l                                    ; $704e: $75
    adc h                                         ; $704f: $8c
    ld l, a                                       ; $7050: $6f
    sbc b                                         ; $7051: $98
    rra                                           ; $7052: $1f
    ldh a, [$f3]                                  ; $7053: $f0 $f3
    ldh [rSB], a                                  ; $7055: $e0 $01
    push bc                                       ; $7057: $c5
    add b                                         ; $7058: $80
    add d                                         ; $7059: $82
    nop                                           ; $705a: $00
    dec h                                         ; $705b: $25
    nop                                           ; $705c: $00
    inc de                                        ; $705d: $13
    adc h                                         ; $705e: $8c
    rlca                                          ; $705f: $07
    ld d, b                                       ; $7060: $50
    dec bc                                        ; $7061: $0b
    jr nc, jr_093_7064                            ; $7062: $30 $00

jr_093_7064:
    inc hl                                        ; $7064: $23
    inc [hl]                                      ; $7065: $34
    nop                                           ; $7066: $00
    adc a                                         ; $7067: $8f
    nop                                           ; $7068: $00
    dec e                                         ; $7069: $1d
    nop                                           ; $706a: $00
    ld a, c                                       ; $706b: $79
    ld e, a                                       ; $706c: $5f

jr_093_706d:
    or b                                          ; $706d: $b0
    ld d, $a4                                     ; $706e: $16 $a4
    dec e                                         ; $7070: $1d
    or b                                          ; $7071: $b0
    ld c, $10                                     ; $7072: $0e $10
    ld c, $81                                     ; $7074: $0e $81
    ld a, [hl]                                    ; $7076: $7e
    db $10                                        ; $7077: $10
    ld a, $9e                                     ; $7078: $3e $9e
    xor b                                         ; $707a: $a8
    dec c                                         ; $707b: $0d
    ldh [rP1], a                                  ; $707c: $e0 $00
    ld d, b                                       ; $707e: $50
    add hl, sp                                    ; $707f: $39
    ld h, [hl]                                    ; $7080: $66
    ld e, $50                                     ; $7081: $1e $50
    add hl, sp                                    ; $7083: $39
    ld c, [hl]                                    ; $7084: $4e
    ccf                                           ; $7085: $3f
    add b                                         ; $7086: $80
    ret nz                                        ; $7087: $c0

    ld bc, $0f00                                  ; $7088: $01 $00 $0f
    ld b, b                                       ; $708b: $40
    nop                                           ; $708c: $00
    nop                                           ; $708d: $00
    inc b                                         ; $708e: $04
    ld b, $1a                                     ; $708f: $06 $1a
    inc e                                         ; $7091: $1c
    nop                                           ; $7092: $00
    ld h, h                                       ; $7093: $64
    ret nz                                        ; $7094: $c0

    pop bc                                        ; $7095: $c1

jr_093_7096:
    pop bc                                        ; $7096: $c1
    ld b, [hl]                                    ; $7097: $46
    daa                                           ; $7098: $27
    ld sp, hl                                     ; $7099: $f9
    sbc [hl]                                      ; $709a: $9e
    nop                                           ; $709b: $00
    and $f8                                       ; $709c: $e6 $f8
    ret c                                         ; $709e: $d8

    ld h, b                                       ; $709f: $60
    ldh [$a0], a                                  ; $70a0: $e0 $a0
    and b                                         ; $70a2: $a0

jr_093_70a3:
    sub b                                         ; $70a3: $90
    ld b, $90                                     ; $70a4: $06 $90
    ld a, b                                       ; $70a6: $78
    sbc b                                         ; $70a7: $98
    ldh [$60], a                                  ; $70a8: $e0 $60
    jr z, jr_093_70f4                             ; $70aa: $28 $48

    ld b, b                                       ; $70ac: $40
    dec a                                         ; $70ad: $3d
    xor d                                         ; $70ae: $aa
    ld b, $00                                     ; $70af: $06 $00
    ld d, l                                       ; $70b1: $55
    xor d                                         ; $70b2: $aa
    ld a, [hl+]                                   ; $70b3: $2a
    rst $38                                       ; $70b4: $ff
    ld b, b                                       ; $70b5: $40
    dec a                                         ; $70b6: $3d
    db $10                                        ; $70b7: $10
    ld [$7faa], sp                                ; $70b8: $08 $aa $7f
    rst $38                                       ; $70bb: $ff
    ld b, b                                       ; $70bc: $40
    dec a                                         ; $70bd: $3d
    db $10                                        ; $70be: $10
    jr jr_093_70c1                                ; $70bf: $18 $00

jr_093_70c1:
    ccf                                           ; $70c1: $3f
    jr nz, jr_093_70dc                            ; $70c2: $20 $18

    ld bc, $5658                                  ; $70c4: $01 $58 $56
    ld b, $12                                     ; $70c7: $06 $12
    ld e, b                                       ; $70c9: $58
    adc h                                         ; $70ca: $8c
    adc h                                         ; $70cb: $8c
    rlca                                          ; $70cc: $07
    ld a, e                                       ; $70cd: $7b
    inc b                                         ; $70ce: $04
    ld a, a                                       ; $70cf: $7f
    sub d                                         ; $70d0: $92
    rlca                                          ; $70d1: $07
    inc b                                         ; $70d2: $04
    jr jr_093_7114                                ; $70d3: $18 $3f

    ld b, b                                       ; $70d5: $40
    add b                                         ; $70d6: $80
    inc c                                         ; $70d7: $0c
    ld [$0060], sp                                ; $70d8: $08 $60 $00
    ld d, b                                       ; $70db: $50

jr_093_70dc:
    jr nz, jr_093_7146                            ; $70dc: $20 $68

    jr nc, @+$70                                  ; $70de: $30 $6e

    ld c, $1f                                     ; $70e0: $0e $1f
    ld a, a                                       ; $70e2: $7f
    nop                                           ; $70e3: $00
    ld e, [hl]                                    ; $70e4: $5e
    inc [hl]                                      ; $70e5: $34
    rlca                                          ; $70e6: $07
    or b                                          ; $70e7: $b0
    ld l, $70                                     ; $70e8: $2e $70
    jr jr_093_706d                                ; $70ea: $18 $81

    inc c                                         ; $70ec: $0c
    rst $38                                       ; $70ed: $ff
    ret nz                                        ; $70ee: $c0

    cp a                                          ; $70ef: $bf
    add b                                         ; $70f0: $80
    inc b                                         ; $70f1: $04
    jr nz, jr_093_7096                            ; $70f2: $20 $a2

jr_093_70f4:
    add hl, de                                    ; $70f4: $19
    nop                                           ; $70f5: $00
    rst $38                                       ; $70f6: $ff
    jr nc, jr_093_70a3                            ; $70f7: $30 $aa

    ld d, l                                       ; $70f9: $55
    ld d, l                                       ; $70fa: $55
    add hl, de                                    ; $70fb: $19
    or [hl]                                       ; $70fc: $b6
    add hl, bc                                    ; $70fd: $09
    ld a, a                                       ; $70fe: $7f
    add b                                         ; $70ff: $80
    ld a, e                                       ; $7100: $7b
    add b                                         ; $7101: $80
    nop                                           ; $7102: $00
    ld d, a                                       ; $7103: $57
    add b                                         ; $7104: $80
    ld l, d                                       ; $7105: $6a
    add b                                         ; $7106: $80
    ld d, b                                       ; $7107: $50
    add b                                         ; $7108: $80
    ld c, d                                       ; $7109: $4a
    add b                                         ; $710a: $80
    ld h, d                                       ; $710b: $62
    ld h, b                                       ; $710c: $60
    ld a, [c]                                     ; $710d: $f2
    rlca                                          ; $710e: $07
    inc c                                         ; $710f: $0c
    add hl, bc                                    ; $7110: $09
    rst $38                                       ; $7111: $ff
    nop                                           ; $7112: $00
    ld e, l                                       ; $7113: $5d

jr_093_7114:
    add b                                         ; $7114: $80
    ld bc, $0855                                  ; $7115: $01 $55 $08
    nop                                           ; $7118: $00
    adc b                                         ; $7119: $88
    nop                                           ; $711a: $00
    ld hl, $1784                                  ; $711b: $21 $84 $17
    sbc $00                                       ; $711e: $de $00
    push af                                       ; $7120: $f5
    ld [bc], a                                    ; $7121: $02
    nop                                           ; $7122: $00
    xor b                                         ; $7123: $a8
    nop                                           ; $7124: $00
    ld b, l                                       ; $7125: $45
    nop                                           ; $7126: $00
    jr nz, jr_093_7145                            ; $7127: $20 $1c

    rlca                                          ; $7129: $07
    ld b, b                                       ; $712a: $40
    db $e3                                        ; $712b: $e3
    inc h                                         ; $712c: $24
    nop                                           ; $712d: $00
    inc b                                         ; $712e: $04
    ld c, b                                       ; $712f: $48
    ld [hl+], a                                   ; $7130: $22
    ld c, c                                       ; $7131: $49
    inc h                                         ; $7132: $24
    jr jr_093_714f                                ; $7133: $18 $1a

    or $04                                        ; $7135: $f6 $04
    jr nc, jr_093_7141                            ; $7137: $30 $08

    ld bc, $007d                                  ; $7139: $01 $7d $00
    xor d                                         ; $713c: $aa
    nop                                           ; $713d: $00
    ld d, b                                       ; $713e: $50
    nop                                           ; $713f: $00
    inc h                                         ; $7140: $24

jr_093_7141:
    and b                                         ; $7141: $a0
    inc e                                         ; $7142: $1c
    jr z, jr_093_7145                             ; $7143: $28 $00

jr_093_7145:
    rst $10                                       ; $7145: $d7

jr_093_7146:
    ld c, $10                                     ; $7146: $0e $10
    adc d                                         ; $7148: $8a
    ld b, b                                       ; $7149: $40
    db $10                                        ; $714a: $10
    ldh a, [$08]                                  ; $714b: $f0 $08
    ldh a, [rP1]                                  ; $714d: $f0 $00

jr_093_714f:
    ld [$08d4], sp                                ; $714f: $08 $d4 $08
    xor b                                         ; $7152: $a8
    ld [$085c], sp                                ; $7153: $08 $5c $08
    adc [hl]                                      ; $7156: $8e
    nop                                           ; $7157: $00
    ld [$083e], sp                                ; $7158: $08 $3e $08
    adc e                                         ; $715b: $8b
    ld a, h                                       ; $715c: $7c
    ld bc, $0502                                  ; $715d: $01 $02 $05
    ld b, b                                       ; $7160: $40
    ld [bc], a                                    ; $7161: $02
    inc b                                         ; $7162: $04
    ld [$020b], sp                                ; $7163: $08 $0b $02
    rlca                                          ; $7166: $07
    ld [bc], a                                    ; $7167: $02
    adc [hl]                                      ; $7168: $8e
    ld [bc], a                                    ; $7169: $02
    ld hl, $045f                                  ; $716a: $21 $5f $04
    reti                                          ; $716d: $d9


    inc b                                         ; $716e: $04
    ld bc, $0100                                  ; $716f: $01 $00 $01
    ld [bc], a                                    ; $7172: $02
    pop af                                        ; $7173: $f1
    inc b                                         ; $7174: $04
    ld b, b                                       ; $7175: $40
    nop                                           ; $7176: $00
    jr jr_093_7179                                ; $7177: $18 $00

jr_093_7179:
    ld bc, $5b02                                  ; $7179: $01 $02 $5b
    adc h                                         ; $717c: $8c
    adc c                                         ; $717d: $89
    ld c, $00                                     ; $717e: $0e $00
    inc c                                         ; $7180: $0c
    rlca                                          ; $7181: $07
    inc b                                         ; $7182: $04
    inc bc                                        ; $7183: $03

jr_093_7184:
    rlca                                          ; $7184: $07

jr_093_7185:
    inc bc                                        ; $7185: $03
    inc bc                                        ; $7186: $03
    ld b, $00                                     ; $7187: $06 $00
    inc bc                                        ; $7189: $03
    ld b, $46                                     ; $718a: $06 $46
    inc c                                         ; $718c: $0c
    or h                                          ; $718d: $b4
    inc c                                         ; $718e: $0c
    db $ec                                        ; $718f: $ec
    jr @+$03                                      ; $7190: $18 $01

    jr c, jr_093_7184                             ; $7192: $38 $f0

    ld [hl], b                                    ; $7194: $70
    ret nz                                        ; $7195: $c0

    db $e4                                        ; $7196: $e4
    add b                                         ; $7197: $80
    ret nc                                        ; $7198: $d0

    sub b                                         ; $7199: $90
    db $10                                        ; $719a: $10
    add d                                         ; $719b: $82
    add $0f                                       ; $719c: $c6 $0f
    add e                                         ; $719e: $83
    ld a, a                                       ; $719f: $7f
    ld bc, $03ff                                  ; $71a0: $01 $ff $03
    adc $07                                       ; $71a3: $ce $07
    inc bc                                        ; $71a5: $03
    ld bc, $c1ff                                  ; $71a6: $01 $ff $c1
    cp a                                          ; $71a9: $bf
    jp $e7ff                                      ; $71aa: $c3 $ff $e7


    rst $18                                       ; $71ad: $df
    inc b                                         ; $71ae: $04
    ld c, b                                       ; $71af: $48
    ld b, b                                       ; $71b0: $40
    xor $b0                                       ; $71b1: $ee $b0
    rlca                                          ; $71b3: $07
    dec a                                         ; $71b4: $3d
    ld [bc], a                                    ; $71b5: $02
    rlca                                          ; $71b6: $07
    nop                                           ; $71b7: $00
    ld b, e                                       ; $71b8: $43
    nop                                           ; $71b9: $00
    ld [$826d], sp                                ; $71ba: $08 $6d $82
    ei                                            ; $71bd: $fb
    db $fc                                        ; $71be: $fc
    cp b                                          ; $71bf: $b8
    rlca                                          ; $71c0: $07
    rrca                                          ; $71c1: $0f
    rst $10                                       ; $71c2: $d7
    rra                                           ; $71c3: $1f
    jr nz, jr_093_7185                            ; $71c4: $20 $bf

    ld d, a                                       ; $71c6: $57
    cp $3a                                        ; $71c7: $fe $3a
    rst $30                                       ; $71c9: $f7
    ldh [$db], a                                  ; $71ca: $e0 $db
    db $f4                                        ; $71cc: $f4
    or $00                                        ; $71cd: $f6 $00
    ret c                                         ; $71cf: $d8

    rst $18                                       ; $71d0: $df
    ret nc                                        ; $71d1: $d0

    ld e, l                                       ; $71d2: $5d
    ld [hl-], a                                   ; $71d3: $32
    push hl                                       ; $71d4: $e5
    ld hl, sp+$3f                                 ; $71d5: $f8 $3f
    nop                                           ; $71d7: $00

Call_093_71d8:
    ret nz                                        ; $71d8: $c0

    ei                                            ; $71d9: $fb
    inc b                                         ; $71da: $04
    ld [hl], h                                    ; $71db: $74
    add e                                         ; $71dc: $83
    sbc $21                                       ; $71dd: $de $21
    ld a, [$0500]                                 ; $71df: $fa $00 $05
    sub $09                                       ; $71e2: $d6 $09
    ld [$7e15], a                                 ; $71e4: $ea $15 $7e
    add c                                         ; $71e7: $81
    and b                                         ; $71e8: $a0
    nop                                           ; $71e9: $00
    ld e, a                                       ; $71ea: $5f
    ld e, [hl]                                    ; $71eb: $5e
    and c                                         ; $71ec: $a1
    adc d                                         ; $71ed: $8a
    ld [hl], l                                    ; $71ee: $75
    jp nz, $b47f                                  ; $71ef: $c2 $7f $b4

    nop                                           ; $71f2: $00
    ld a, a                                       ; $71f3: $7f
    ld e, d                                       ; $71f4: $5a
    cp l                                          ; $71f5: $bd
    cp $01                                        ; $71f6: $fe $01
    ld l, [hl]                                    ; $71f8: $6e
    sub c                                         ; $71f9: $91
    or $70                                        ; $71fa: $f6 $70
    add hl, bc                                    ; $71fc: $09
    call nz, $f402                                ; $71fd: $c4 $02 $f4
    ld [bc], a                                    ; $7200: $02
    ld [$fe08], sp                                ; $7201: $08 $08 $fe
    ld bc, $21de                                  ; $7204: $01 $de $21
    ld [$09f6], sp                                ; $7207: $08 $f6 $09
    ld a, d                                       ; $720a: $7a
    add l                                         ; $720b: $85
    ld [$7608], sp                                ; $720c: $08 $08 $76
    add hl, bc                                    ; $720f: $09
    xor h                                         ; $7210: $ac
    nop                                           ; $7211: $00
    ld d, e                                       ; $7212: $53
    sub $01                                       ; $7213: $d6 $01
    xor [hl]                                      ; $7215: $ae
    ld d, c                                       ; $7216: $51
    cp $01                                        ; $7217: $fe $01
    ld a, [hl]                                    ; $7219: $7e
    ld b, b                                       ; $721a: $40
    add c                                         ; $721b: $81
    sub b                                         ; $721c: $90
    ld a, $55                                     ; $721d: $3e $55
    nop                                           ; $721f: $00
    xor d                                         ; $7220: $aa
    ld d, l                                       ; $7221: $55
    ld d, l                                       ; $7222: $55
    rst $38                                       ; $7223: $ff
    rst $38                                       ; $7224: $ff
    ld [hl], b                                    ; $7225: $70
    ld a, $10                                     ; $7226: $3e $10
    jr jr_093_729a                                ; $7228: $18 $70

    ld a, $20                                     ; $722a: $3e $20
    jr @+$72                                      ; $722c: $18 $70

    ld l, $7a                                     ; $722e: $2e $7a
    inc b                                         ; $7230: $04
    jr nc, jr_093_7243                            ; $7231: $30 $10

    ld [hl], b                                    ; $7233: $70
    ld a, $82                                     ; $7234: $3e $82
    ld b, b                                       ; $7236: $40
    ld [$ff54], sp                                ; $7237: $08 $54 $ff
    ei                                            ; $723a: $fb
    and a                                         ; $723b: $a7
    call c, $145e                                 ; $723c: $dc $5e $14
    db $fc                                        ; $723f: $fc
    ld b, a                                       ; $7240: $47
    add e                                         ; $7241: $83
    ld h, b                                       ; $7242: $60

jr_093_7243:
    inc e                                         ; $7243: $1c
    rst $38                                       ; $7244: $ff
    ret                                           ; $7245: $c9


    ld d, e                                       ; $7246: $53
    ld h, b                                       ; $7247: $60
    ld d, h                                       ; $7248: $54
    jp nc, Jump_093_6008                          ; $7249: $d2 $08 $60

    inc a                                         ; $724c: $3c
    jr nz, @-$26                                  ; $724d: $20 $d8

    daa                                           ; $724f: $27

jr_093_7250:
    nop                                           ; $7250: $00
    rlca                                          ; $7251: $07
    ldh [$d3], a                                  ; $7252: $e0 $d3
    ldh a, [$f0]                                  ; $7254: $f0 $f0
    ret nc                                        ; $7256: $d0

    nop                                           ; $7257: $00
    call nc, Call_093_57d0                        ; $7258: $d4 $d0 $57
    jr c, @+$01                                   ; $725b: $38 $ff

    rst $38                                       ; $725d: $ff
    ld hl, $00de                                  ; $725e: $21 $de $00
    or $09                                        ; $7261: $f6 $09
    rst $18                                       ; $7263: $df
    ld bc, $44bb                                  ; $7264: $01 $bb $44
    db $fd                                        ; $7267: $fd
    ld [bc], a                                    ; $7268: $02
    ld hl, $8f7f                                  ; $7269: $21 $7f $8f
    add [hl]                                      ; $726c: $86
    inc e                                         ; $726d: $1c
    ld d, a                                       ; $726e: $57
    add b                                         ; $726f: $80
    dec de                                        ; $7270: $1b
    db $e4                                        ; $7271: $e4
    jp nz, Jump_000_000e                          ; $7272: $c2 $0e $00

    db $fd                                        ; $7275: $fd
    ld [c], a                                     ; $7276: $e2
    push de                                       ; $7277: $d5
    ld hl, sp-$01                                 ; $7278: $f8 $ff
    ret nc                                        ; $727a: $d0

    db $db                                        ; $727b: $db
    call nc, $96a8                                ; $727c: $d4 $a8 $96
    inc d                                         ; $727f: $14
    daa                                           ; $7280: $27
    ld a, [$fb0f]                                 ; $7281: $fa $0f $fb
    inc h                                         ; $7284: $24
    ld b, $6f                                     ; $7285: $06 $6f
    sub b                                         ; $7287: $90
    ld e, [hl]                                    ; $7288: $5e
    inc b                                         ; $7289: $04
    jr nc, @-$11                                  ; $728a: $30 $ed

    ld a, [c]                                     ; $728c: $f2
    dec a                                         ; $728d: $3d
    jp Jump_000_0e3a                              ; $728e: $c3 $3a $0e


    rst $38                                       ; $7291: $ff
    nop                                           ; $7292: $00
    jr c, jr_093_7250                             ; $7293: $38 $bb

    ld b, h                                       ; $7295: $44
    ld b, [hl]                                    ; $7296: $46
    ld e, $f0                                     ; $7297: $1e $f0
    dec bc                                        ; $7299: $0b

jr_093_729a:
    jr nz, jr_093_72cb                            ; $729a: $20 $2f

    adc a                                         ; $729c: $8f
    ld hl, sp+$7f                                 ; $729d: $f8 $7f
    ld b, b                                       ; $729f: $40
    rst $38                                       ; $72a0: $ff
    ret nc                                        ; $72a1: $d0

    inc c                                         ; $72a2: $0c
    scf                                           ; $72a3: $37

jr_093_72a4:
    ld d, a                                       ; $72a4: $57
    ld d, h                                       ; $72a5: $54
    ld hl, sp-$51                                 ; $72a6: $f8 $af
    rst $18                                       ; $72a8: $df
    jr nz, @-$26                                  ; $72a9: $20 $d8

    daa                                           ; $72ab: $27
    nop                                           ; $72ac: $00
    rlca                                          ; $72ad: $07
    ldh [$dd], a                                  ; $72ae: $e0 $dd
    ld a, [c]                                     ; $72b0: $f2
    rst $38                                       ; $72b1: $ff
    ret nc                                        ; $72b2: $d0

    nop                                           ; $72b3: $00
    rst $18                                       ; $72b4: $df
    ret nc                                        ; $72b5: $d0

    ld e, a                                       ; $72b6: $5f
    jr nc, jr_093_72a4                            ; $72b7: $30 $eb

    db $f4                                        ; $72b9: $f4
    ccf                                           ; $72ba: $3f
    ret nz                                        ; $72bb: $c0

    ld bc, $99f7                                  ; $72bc: $01 $f7 $99
    res 7, h                                      ; $72bf: $cb $bc
    add $bf                                       ; $72c1: $c6 $bf
    pop hl                                        ; $72c3: $e1
    ld b, b                                       ; $72c4: $40
    inc [hl]                                      ; $72c5: $34
    nop                                           ; $72c6: $00
    ld e, a                                       ; $72c7: $5f
    cp c                                          ; $72c8: $b9
    cp a                                          ; $72c9: $bf
    push bc                                       ; $72ca: $c5

jr_093_72cb:
    ei                                            ; $72cb: $fb
    ld a, l                                       ; $72cc: $7d
    add a                                         ; $72cd: $87
    ld sp, hl                                     ; $72ce: $f9
    jr nz, @+$21                                  ; $72cf: $20 $1f

    pop hl                                        ; $72d1: $e1
    ld b, b                                       ; $72d2: $40

jr_093_72d3:
    inc e                                         ; $72d3: $1c
    halt                                          ; $72d4: $76
    add c                                         ; $72d5: $81
    rst $18                                       ; $72d6: $df
    jr nz, jr_093_72d3                            ; $72d7: $20 $fa

    db $10                                        ; $72d9: $10
    dec b                                         ; $72da: $05
    rst $10                                       ; $72db: $d7
    ld [$0960], sp                                ; $72dc: $08 $60 $09
    and d                                         ; $72df: $a2
    ld e, l                                       ; $72e0: $5d
    ld e, h                                       ; $72e1: $5c
    and e                                         ; $72e2: $a3
    jr nz, jr_093_72a4                            ; $72e3: $20 $bf

    ld c, a                                       ; $72e5: $4f
    ld e, $0d                                     ; $72e6: $1e $0d
    rst $10                                       ; $72e8: $d7
    scf                                           ; $72e9: $37
    db $f4                                        ; $72ea: $f4
    jr jr_093_733c                                ; $72eb: $18 $4f

    nop                                           ; $72ed: $00
    cp a                                          ; $72ee: $bf
    ldh a, [rTAC]                                 ; $72ef: $f0 $07
    db $dd                                        ; $72f1: $dd
    ld [hl+], a                                   ; $72f2: $22
    pop hl                                        ; $72f3: $e1
    cp $de                                        ; $72f4: $fe $de
    nop                                           ; $72f6: $00
    pop af                                        ; $72f7: $f1
    or $d9                                        ; $72f8: $f6 $d9
    call nc, Call_093_5edf                        ; $72fa: $d4 $df $5e
    ccf                                           ; $72fd: $3f
    push hl                                       ; $72fe: $e5
    dec bc                                        ; $72ff: $0b
    ld a, [$c01f]                                 ; $7300: $fa $1f $c0
    ld c, $62                                     ; $7303: $0e $62
    inc b                                         ; $7305: $04
    cp $40                                        ; $7306: $fe $40
    inc b                                         ; $7308: $04
    ld [hl], b                                    ; $7309: $70
    inc a                                         ; $730a: $3c
    jr nz, jr_093_737c                            ; $730b: $20 $6f

    add b                                         ; $730d: $80
    ldh [$5d], a                                  ; $730e: $e0 $5d
    adc e                                         ; $7310: $8b
    ld [hl], h                                    ; $7311: $74
    ret nz                                        ; $7312: $c0

    ld a, a                                       ; $7313: $7f
    or l                                          ; $7314: $b5
    nop                                           ; $7315: $00
    rst $38                                       ; $7316: $ff
    sbc $bf                                       ; $7317: $de $bf
    ei                                            ; $7319: $fb
    add a                                         ; $731a: $87
    rst $28                                       ; $731b: $ef
    sub b                                         ; $731c: $90
    ld [hl], a                                    ; $731d: $77
    inc b                                         ; $731e: $04
    adc b                                         ; $731f: $88
    cp $01                                        ; $7320: $fe $01
    rst $28                                       ; $7322: $ef
    db $10                                        ; $7323: $10
    ldh [rKEY1], a                                ; $7324: $e0 $4d
    pop bc                                        ; $7326: $c1
    ld a, $40                                     ; $7327: $3e $40
    add a                                         ; $7329: $87
    ldh [rNR21], a                                ; $732a: $e0 $16
    call nc, $ef80                                ; $732c: $d4 $80 $ef
    ldh a, [$ee]                                  ; $732f: $f0 $ee
    sbc a                                         ; $7331: $9f
    jr jr_093_7393                                ; $7332: $18 $5f

    and b                                         ; $7334: $a0
    db $eb                                        ; $7335: $eb
    jr @+$09                                      ; $7336: $18 $07

    or b                                          ; $7338: $b0
    ld l, $d5                                     ; $7339: $2e $d5
    nop                                           ; $733b: $00

jr_093_733c:
    ld a, [hl+]                                   ; $733c: $2a

jr_093_733d:
    ld bc, $55d5                                  ; $733d: $01 $d5 $55
    rst $38                                       ; $7340: $ff
    xor $11                                       ; $7341: $ee $11
    db $fd                                        ; $7343: $fd
    ld [bc], a                                    ; $7344: $02
    and b                                         ; $7345: $a0
    rrca                                          ; $7346: $0f
    jr nc, jr_093_7366                            ; $7347: $30 $1d

    ld [c], a                                     ; $7349: $e2
    or b                                          ; $734a: $b0
    add hl, de                                    ; $734b: $19
    ret nz                                        ; $734c: $c0

    dec hl                                        ; $734d: $2b
    rst $28                                       ; $734e: $ef
    rrca                                          ; $734f: $0f
    ld d, a                                       ; $7350: $57
    cp a                                          ; $7351: $bf
    ret nz                                        ; $7352: $c0

    sbc b                                         ; $7353: $98
    ld [$2bc0], sp                                ; $7354: $08 $c0 $2b
    cp $ff                                        ; $7357: $fe $ff
    push de                                       ; $7359: $d5
    ld a, [$d0ff]                                 ; $735a: $fa $ff $d0
    jr z, jr_093_733d                             ; $735d: $28 $de

    pop de                                        ; $735f: $d1
    ld d, [hl]                                    ; $7360: $56
    inc b                                         ; $7361: $04
    ld [$1bb0], sp                                ; $7362: $08 $b0 $1b
    ld a, a                                       ; $7365: $7f

jr_093_7366:
    add b                                         ; $7366: $80
    dec b                                         ; $7367: $05
    db $10                                        ; $7368: $10
    ld a, [$ffa0]                                 ; $7369: $fa $a0 $ff
    sub $0d                                       ; $736c: $d6 $0d
    ld l, b                                       ; $736e: $68

jr_093_736f:
    sub a                                         ; $736f: $97
    cp $81                                        ; $7370: $fe $81

jr_093_7372:
    nop                                           ; $7372: $00
    ld d, l                                       ; $7373: $55
    and d                                         ; $7374: $a2
    ld d, a                                       ; $7375: $57
    ld [$51aa], sp                                ; $7376: $08 $aa $51
    ld a, a                                       ; $7379: $7f
    add b                                         ; $737a: $80
    nop                                           ; $737b: $00

jr_093_737c:
    ld d, a                                       ; $737c: $57
    jr c, @-$10                                   ; $737d: $38 $ee

    pop af                                        ; $737f: $f1
    ccf                                           ; $7380: $3f
    ret nz                                        ; $7381: $c0

    rst $10                                       ; $7382: $d7
    ld [$fd00], sp                                ; $7383: $08 $00 $fd
    ld [bc], a                                    ; $7386: $02
    cp [hl]                                       ; $7387: $be
    ld b, c                                       ; $7388: $41
    xor e                                         ; $7389: $ab
    inc b                                         ; $738a: $04
    rst $18                                       ; $738b: $df
    jr nz, jr_093_7372                            ; $738c: $20 $e4

    ldh a, [$3f]                                  ; $738e: $f0 $3f
    db $10                                        ; $7390: $10
    ld a, [de]                                    ; $7391: $1a
    ld h, b                                       ; $7392: $60

jr_093_7393:
    ld a, [hl-]                                   ; $7393: $3a
    ld d, h                                       ; $7394: $54
    ld bc, $09e0                                  ; $7395: $01 $e0 $09
    ld a, a                                       ; $7398: $7f
    add b                                         ; $7399: $80
    ret nz                                        ; $739a: $c0

    ld l, h                                       ; $739b: $6c
    add hl, de                                    ; $739c: $19
    and b                                         ; $739d: $a0
    add hl, hl                                    ; $739e: $29
    ei                                            ; $739f: $fb
    inc b                                         ; $73a0: $04
    or $09                                        ; $73a1: $f6 $09
    rst $38                                       ; $73a3: $ff
    nop                                           ; $73a4: $00
    ld [bc], a                                    ; $73a5: $02
    ld a, [$ef04]                                 ; $73a6: $fa $04 $ef
    ldh a, [$df]                                  ; $73a9: $f0 $df
    ldh a, [rRP]                                  ; $73ab: $f0 $56
    add hl, bc                                    ; $73ad: $09
    db $f4                                        ; $73ae: $f4
    nop                                           ; $73af: $00
    jr jr_093_7421                                ; $73b0: $18 $6f

    sbc a                                         ; $73b2: $9f
    or b                                          ; $73b3: $b0
    ld e, a                                       ; $73b4: $5f
    ld a, [$6d1f]                                 ; $73b5: $fa $1f $6d
    ld [bc], a                                    ; $73b8: $02
    sbc a                                         ; $73b9: $9f
    db $d3                                        ; $73ba: $d3
    cpl                                           ; $73bb: $2f
    add d                                         ; $73bc: $82
    ld bc, $0043                                  ; $73bd: $01 $43 $00
    ld b, $e0                                     ; $73c0: $06 $e0
    ld [bc], a                                    ; $73c2: $02
    rst $38                                       ; $73c3: $ff
    ld e, $e1                                     ; $73c4: $1e $e1
    ld c, $f1                                     ; $73c6: $0e $f1
    ld d, e                                       ; $73c8: $53
    or b                                          ; $73c9: $b0
    ld h, $76                                     ; $73ca: $26 $76
    and a                                         ; $73cc: $a7
    ldh [rSB], a                                  ; $73cd: $e0 $01
    dec sp                                        ; $73cf: $3b
    ldh [rSB], a                                  ; $73d0: $e0 $01
    halt                                          ; $73d2: $76
    add hl, bc                                    ; $73d3: $09
    ld a, [$f400]                                 ; $73d4: $fa $00 $f4
    rlca                                          ; $73d7: $07
    ldh [$29], a                                  ; $73d8: $e0 $29
    nop                                           ; $73da: $00
    cp l                                          ; $73db: $bd
    ld b, d                                       ; $73dc: $42
    push de                                       ; $73dd: $d5
    ld [$a05f], sp                                ; $73de: $08 $5f $a0
    ei                                            ; $73e1: $fb
    inc b                                         ; $73e2: $04
    add b                                         ; $73e3: $80
    or b                                          ; $73e4: $b0
    dec sp                                        ; $73e5: $3b
    ld d, b                                       ; $73e6: $50
    add b                                         ; $73e7: $80
    ld b, d                                       ; $73e8: $42
    add b                                         ; $73e9: $80
    ld b, l                                       ; $73ea: $45
    add b                                         ; $73eb: $80
    ld e, [hl]                                    ; $73ec: $5e
    jr nz, jr_093_736f                            ; $73ed: $20 $80

    ld [hl], a                                    ; $73ef: $77
    ld b, $07                                     ; $73f0: $06 $07
    ld e, a                                       ; $73f2: $5f
    add b                                         ; $73f3: $80
    ld [hl], a                                    ; $73f4: $77
    adc b                                         ; $73f5: $88
    ld a, a                                       ; $73f6: $7f
    nop                                           ; $73f7: $00
    add b                                         ; $73f8: $80
    ld [hl], l                                    ; $73f9: $75
    adc d                                         ; $73fa: $8a
    xor d                                         ; $73fb: $aa
    push de                                       ; $73fc: $d5
    ld d, c                                       ; $73fd: $51
    xor [hl]                                      ; $73fe: $ae
    and d                                         ; $73ff: $a2
    ld d, a                                       ; $7400: $57
    db $dd                                        ; $7401: $dd
    add sp, $0d                                   ; $7402: $e8 $0d
    adc b                                         ; $7404: $88
    jr nz, @+$07                                  ; $7405: $20 $05

    cp $61                                        ; $7407: $fe $61
    inc c                                         ; $7409: $0c
    ld a, [$030c]                                 ; $740a: $fa $0c $03
    ld [$8028], sp                                ; $740d: $08 $28 $80
    ld c, b                                       ; $7410: $48
    ld c, $04                                     ; $7411: $0e $04
    ld [$4502], a                                 ; $7413: $ea $02 $45
    jr nz, jr_093_7418                            ; $7416: $20 $00

jr_093_7418:
    ld b, b                                       ; $7418: $40
    pop bc                                        ; $7419: $c1
    xor d                                         ; $741a: $aa
    dec b                                         ; $741b: $05
    db $10                                        ; $741c: $10
    ld c, b                                       ; $741d: $48
    ld [de], a                                    ; $741e: $12
    nop                                           ; $741f: $00
    add l                                         ; $7420: $85

jr_093_7421:
    nop                                           ; $7421: $00
    and d                                         ; $7422: $a2
    jr z, jr_093_7429                             ; $7423: $28 $04

    jr jr_093_7421                                ; $7425: $18 $fa

    nop                                           ; $7427: $00
    db $dd                                        ; $7428: $dd

jr_093_7429:
    ld b, h                                       ; $7429: $44
    dec c                                         ; $742a: $0d
    ld b, d                                       ; $742b: $42
    ld [bc], a                                    ; $742c: $02
    xor l                                         ; $742d: $ad
    ld d, d                                       ; $742e: $52
    inc bc                                        ; $742f: $03
    db $10                                        ; $7430: $10
    ld [bc], a                                    ; $7431: $02
    ld [bc], a                                    ; $7432: $02
    inc bc                                        ; $7433: $03
    call nz, $0107                                ; $7434: $c4 $07 $01
    ld bc, $0800                                  ; $7437: $01 $00 $08
    add b                                         ; $743a: $80
    ld c, b                                       ; $743b: $48
    nop                                           ; $743c: $00
    ld l, d                                       ; $743d: $6a
    nop                                           ; $743e: $00
    or [hl]                                       ; $743f: $b6
    inc c                                         ; $7440: $0c
    db $e4                                        ; $7441: $e4
    inc e                                         ; $7442: $1c
    ld c, h                                       ; $7443: $4c

jr_093_7444:
    nop                                           ; $7444: $00
    cp b                                          ; $7445: $b8
    jr @-$0e                                      ; $7446: $18 $f0

    ldh a, [$e0]                                  ; $7448: $f0 $e0
    ldh [rP1], a                                  ; $744a: $e0 $00
    ld [bc], a                                    ; $744c: $02
    push af                                       ; $744d: $f5
    jr nc, jr_093_7450                            ; $744e: $30 $00

jr_093_7450:
    ld d, e                                       ; $7450: $53
    dec a                                         ; $7451: $3d
    ld d, b                                       ; $7452: $50
    jr @-$3e                                      ; $7453: $18 $c0

    jr @+$7f                                      ; $7455: $18 $7d

    ret z                                         ; $7457: $c8

    nop                                           ; $7458: $00
    ld l, a                                       ; $7459: $6f
    ret nz                                        ; $745a: $c0

    nop                                           ; $745b: $00
    sub b                                         ; $745c: $90
    jp c, Jump_093_5f1c                           ; $745d: $da $1c $5f

    jr nz, jr_093_7444                            ; $7460: $20 $e2

    inc c                                         ; $7462: $0c
    ld a, e                                       ; $7463: $7b
    inc b                                         ; $7464: $04
    ccf                                           ; $7465: $3f
    ld b, b                                       ; $7466: $40
    jr nc, jr_093_74d8                            ; $7467: $30 $6f

    db $10                                        ; $7469: $10
    add [hl]                                      ; $746a: $86
    ld e, $c4                                     ; $746b: $1e $c4
    inc l                                         ; $746d: $2c
    pop bc                                        ; $746e: $c1
    cp a                                          ; $746f: $bf
    ccf                                           ; $7470: $3f
    ld b, b                                       ; $7471: $40
    nop                                           ; $7472: $00
    ld l, e                                       ; $7473: $6b
    inc d                                         ; $7474: $14
    ld [hl], a                                    ; $7475: $77
    ld [$205f], sp                                ; $7476: $08 $5f $20
    ld l, l                                       ; $7479: $6d
    ld [bc], a                                    ; $747a: $02
    nop                                           ; $747b: $00
    ld e, a                                       ; $747c: $5f
    jr nz, jr_093_74f5                            ; $747d: $20 $76

    nop                                           ; $747f: $00
    ld e, l                                       ; $7480: $5d
    ld [hl+], a                                   ; $7481: $22
    ld a, l                                       ; $7482: $7d
    inc bc                                        ; $7483: $03
    nop                                           ; $7484: $00
    halt                                          ; $7485: $76
    add hl, bc                                    ; $7486: $09
    db $eb                                        ; $7487: $eb
    inc d                                         ; $7488: $14
    ld a, [hl]                                    ; $7489: $7e
    ld bc, $22d5                                  ; $748a: $01 $d5 $22
    and e                                         ; $748d: $a3
    add b                                         ; $748e: $80
    ld de, $f000                                  ; $748f: $11 $00 $f0
    ld a, [hl+]                                   ; $7492: $2a
    halt                                          ; $7493: $76
    adc c                                         ; $7494: $89
    rst $28                                       ; $7495: $ef
    db $ec                                        ; $7496: $ec
    ld bc, $1f18                                  ; $7497: $01 $18 $1f
    nop                                           ; $749a: $00
    ld e, a                                       ; $749b: $5f
    ld hl, $01ff                                  ; $749c: $21 $ff $01
    ld a, a                                       ; $749f: $7f
    add c                                         ; $74a0: $81
    ei                                            ; $74a1: $fb
    dec b                                         ; $74a2: $05
    nop                                           ; $74a3: $00
    cp [hl]                                       ; $74a4: $be
    ld b, c                                       ; $74a5: $41
    ld l, a                                       ; $74a6: $6f
    sub b                                         ; $74a7: $90
    ld l, [hl]                                    ; $74a8: $6e
    sub b                                         ; $74a9: $90
    rst $38                                       ; $74aa: $ff
    cp $00                                        ; $74ab: $fe $00
    ld a, l                                       ; $74ad: $7d
    rst $38                                       ; $74ae: $ff
    rst $38                                       ; $74af: $ff
    ld a, l                                       ; $74b0: $7d
    ld a, l                                       ; $74b1: $7d
    ld a, l                                       ; $74b2: $7d
    ld b, l                                       ; $74b3: $45
    add e                                         ; $74b4: $83
    nop                                           ; $74b5: $00
    cp $ff                                        ; $74b6: $fe $ff
    add e                                         ; $74b8: $83
    ld a, h                                       ; $74b9: $7c
    ld c, $07                                     ; $74ba: $0e $07
    dec bc                                        ; $74bc: $0b
    rlca                                          ; $74bd: $07
    ld bc, $916f                                  ; $74be: $01 $6f $91
    db $ed                                        ; $74c1: $ed
    di                                            ; $74c2: $f3
    rst $38                                       ; $74c3: $ff
    ld bc, $def5                                  ; $74c4: $01 $f5 $de
    inc bc                                        ; $74c7: $03
    ld [$807f], sp                                ; $74c8: $08 $7f $80
    add a                                         ; $74cb: $87
    ld hl, sp+$20                                 ; $74cc: $f8 $20
    ld e, b                                       ; $74ce: $58
    rst $38                                       ; $74cf: $ff
    cpl                                           ; $74d0: $2f
    rst $38                                       ; $74d1: $ff
    ld de, $ff5b                                  ; $74d2: $11 $5b $ff
    ld l, $04                                     ; $74d5: $2e $04
    nop                                           ; $74d7: $00

jr_093_74d8:
    cpl                                           ; $74d8: $2f
    rst $38                                       ; $74d9: $ff
    ld e, d                                       ; $74da: $5a
    inc c                                         ; $74db: $0c
    ld [$830e], sp                                ; $74dc: $08 $0e $83
    rst $38                                       ; $74df: $ff
    ld b, c                                       ; $74e0: $41
    cp a                                          ; $74e1: $bf
    ld [hl], b                                    ; $74e2: $70
    inc l                                         ; $74e3: $2c
    ld [c], a                                     ; $74e4: $e2
    ld d, $de                                     ; $74e5: $16 $de
    rla                                           ; $74e7: $17
    ld [hl], a                                    ; $74e8: $77
    ld b, b                                       ; $74e9: $40
    sub a                                         ; $74ea: $97
    sbc $0f                                       ; $74eb: $de $0f
    ld hl, sp+$07                                 ; $74ed: $f8 $07
    cp a                                          ; $74ef: $bf
    ld b, b                                       ; $74f0: $40
    cp $e0                                        ; $74f1: $fe $e0
    rlca                                          ; $74f3: $07
    rst $10                                       ; $74f4: $d7

jr_093_74f5:
    ld hl, sp-$02                                 ; $74f5: $f8 $fe
    pop de                                        ; $74f7: $d1
    db $dd                                        ; $74f8: $dd
    ld c, $03                                     ; $74f9: $0e $03
    ld c, [hl]                                    ; $74fb: $4e
    rla                                           ; $74fc: $17
    jp c, $930f                                   ; $74fd: $da $0f $93

    ld [hl], b                                    ; $7500: $70
    ld d, $ef                                     ; $7501: $16 $ef
    ccf                                           ; $7503: $3f
    ldh [rIF], a                                  ; $7504: $e0 $0f
    ld d, a                                       ; $7506: $57
    sub a                                         ; $7507: $97
    ld [hl], b                                    ; $7508: $70
    ld l, $e0                                     ; $7509: $2e $e0
    rrca                                          ; $750b: $0f
    db $10                                        ; $750c: $10
    rst $30                                       ; $750d: $f7
    ret nc                                        ; $750e: $d0

    db $d3                                        ; $750f: $d3
    ldh [rSB], a                                  ; $7510: $e0 $01
    rst $08                                       ; $7512: $cf
    rra                                           ; $7513: $1f
    cp b                                          ; $7514: $b8
    ld b, a                                       ; $7515: $47
    xor b                                         ; $7516: $a8
    or b                                          ; $7517: $b0
    jr c, jr_093_7571                             ; $7518: $38 $57

    ld b, [hl]                                    ; $751a: $46
    inc bc                                        ; $751b: $03
    ld [hl], $c0                                  ; $751c: $36 $c0
    ld b, c                                       ; $751e: $41
    ld e, a                                       ; $751f: $5f
    rst $28                                       ; $7520: $ef
    or a                                          ; $7521: $b7
    nop                                           ; $7522: $00
    ld a, a                                       ; $7523: $7f
    rst $38                                       ; $7524: $ff
    rla                                           ; $7525: $17
    or a                                          ; $7526: $b7
    ld d, a                                       ; $7527: $57
    ld [hl], h                                    ; $7528: $74
    jr @-$2f                                      ; $7529: $18 $cf

    ld [$f03f], sp                                ; $752b: $08 $3f $f0
    rlca                                          ; $752e: $07
    ei                                            ; $752f: $fb
    jr jr_093_7534                                ; $7530: $18 $02

    sbc $f1                                       ; $7532: $de $f1

jr_093_7534:
    rst $30                                       ; $7534: $f7
    add b                                         ; $7535: $80
    or b                                          ; $7536: $b0
    inc b                                         ; $7537: $04
    ld e, e                                       ; $7538: $5b
    inc [hl]                                      ; $7539: $34
    rst $28                                       ; $753a: $ef
    ldh a, [$3a]                                  ; $753b: $f0 $3a
    call nz, Call_000_10f7                        ; $753d: $c4 $f7 $10
    nop                                           ; $7540: $00
    ld l, a                                       ; $7541: $6f
    sub b                                         ; $7542: $90
    db $fc                                        ; $7543: $fc
    rra                                           ; $7544: $1f
    rst $18                                       ; $7545: $df
    cpl                                           ; $7546: $2f
    rst $30                                       ; $7547: $f7
    rra                                           ; $7548: $1f
    inc c                                         ; $7549: $0c
    rst $18                                       ; $754a: $df
    rla                                           ; $754b: $17
    ld [hl], a                                    ; $754c: $77
    rla                                           ; $754d: $17
    ld l, [hl]                                    ; $754e: $6e
    inc b                                         ; $754f: $04
    db $fc                                        ; $7550: $fc
    ld b, $fe                                     ; $7551: $06 $fe
    ld bc, $eb10                                  ; $7553: $01 $10 $eb
    db $e4                                        ; $7556: $e4
    sbc $40                                       ; $7557: $de $40
    ld [bc], a                                    ; $7559: $02
    push de                                       ; $755a: $d5
    jp nc, Jump_000_18f4                          ; $755b: $d2 $f4 $18

    nop                                           ; $755e: $00
    xor a                                         ; $755f: $af
    ld e, a                                       ; $7560: $5f
    ld a, b                                       ; $7561: $78
    add a                                         ; $7562: $87
    sbc $20                                       ; $7563: $de $20
    ld a, l                                       ; $7565: $7d
    add d                                         ; $7566: $82
    ld bc, $0bf5                                  ; $7567: $01 $f5 $0b
    ld a, [hl]                                    ; $756a: $7e
    add c                                         ; $756b: $81
    sbc a                                         ; $756c: $9f
    ld h, b                                       ; $756d: $60
    ld e, [hl]                                    ; $756e: $5e
    sbc b                                         ; $756f: $98
    nop                                           ; $7570: $00

jr_093_7571:
    dec a                                         ; $7571: $3d
    dec a                                         ; $7572: $3d
    jp nz, $4510                                  ; $7573: $c2 $10 $45

    cp d                                          ; $7576: $ba
    rrca                                          ; $7577: $0f
    db $10                                        ; $7578: $10

jr_093_7579:
    ld d, $7c                                     ; $7579: $16 $7c
    ld h, $55                                     ; $757b: $26 $55
    halt                                          ; $757d: $76
    rlca                                          ; $757e: $07
    ld h, b                                       ; $757f: $60
    ld d, l                                       ; $7580: $55
    pop de                                        ; $7581: $d1
    rla                                           ; $7582: $17
    xor l                                         ; $7583: $ad
    inc b                                         ; $7584: $04
    rst $38                                       ; $7585: $ff
    db $db                                        ; $7586: $db
    sub b                                         ; $7587: $90
    ld a, [bc]                                    ; $7588: $0a
    or l                                          ; $7589: $b5
    rlca                                          ; $758a: $07
    ld b, d                                       ; $758b: $42
    rst $38                                       ; $758c: $ff
    ld bc, $8360                                  ; $758d: $01 $60 $83
    rst $38                                       ; $7590: $ff
    pop bc                                        ; $7591: $c1
    cp a                                          ; $7592: $bf
    inc b                                         ; $7593: $04
    ld c, b                                       ; $7594: $48
    nop                                           ; $7595: $00
    nop                                           ; $7596: $00
    rst $38                                       ; $7597: $ff
    jr nz, jr_093_7579                            ; $7598: $20 $df

    ld b, c                                       ; $759a: $41
    cp [hl]                                       ; $759b: $be
    xor e                                         ; $759c: $ab
    ld d, h                                       ; $759d: $54
    ld e, [hl]                                    ; $759e: $5e
    nop                                           ; $759f: $00
    and c                                         ; $75a0: $a1
    rst $30                                       ; $75a1: $f7
    nop                                           ; $75a2: $00
    ld a, a                                       ; $75a3: $7f
    add b                                         ; $75a4: $80
    ld a, [$0000]                                 ; $75a5: $fa $00 $00
    nop                                           ; $75a8: $00
    rst $38                                       ; $75a9: $ff
    add b                                         ; $75aa: $80
    ld a, a                                       ; $75ab: $7f
    ld d, l                                       ; $75ac: $55
    xor d                                         ; $75ad: $aa
    rst $28                                       ; $75ae: $ef
    db $10                                        ; $75af: $10
    cp l                                          ; $75b0: $bd
    nop                                           ; $75b1: $00
    ld b, b                                       ; $75b2: $40
    rst $38                                       ; $75b3: $ff
    nop                                           ; $75b4: $00
    ld l, l                                       ; $75b5: $6d
    nop                                           ; $75b6: $00
    cp e                                          ; $75b7: $bb
    nop                                           ; $75b8: $00
    dec d                                         ; $75b9: $15
    nop                                           ; $75ba: $00
    ld [$55aa], a                                 ; $75bb: $ea $aa $55
    rst $30                                       ; $75be: $f7
    ld [$805d], sp                                ; $75bf: $08 $5d $80
    rst $28                                       ; $75c2: $ef
    ld [bc], a                                    ; $75c3: $02
    nop                                           ; $75c4: $00
    ld d, a                                       ; $75c5: $57
    nop                                           ; $75c6: $00
    xor e                                         ; $75c7: $ab
    nop                                           ; $75c8: $00
    ld d, l                                       ; $75c9: $55
    jr nz, jr_093_75cc                            ; $75ca: $20 $00

jr_093_75cc:
    adc d                                         ; $75cc: $8a
    nop                                           ; $75cd: $00
    ld [hl], l                                    ; $75ce: $75
    rst $10                                       ; $75cf: $d7
    jr z, jr_093_764d                             ; $75d0: $28 $7b

    add h                                         ; $75d2: $84
    rst $38                                       ; $75d3: $ff
    nop                                           ; $75d4: $00
    xor $80                                       ; $75d5: $ee $80
    ld e, $00                                     ; $75d7: $1e $00
    ld e, a                                       ; $75d9: $5f
    nop                                           ; $75da: $00
    rst $38                                       ; $75db: $ff
    nop                                           ; $75dc: $00
    ld b, b                                       ; $75dd: $40
    add b                                         ; $75de: $80
    dec d                                         ; $75df: $15
    ld [$6a80], sp                                ; $75e0: $08 $80 $6a
    add b                                         ; $75e3: $80
    ccf                                           ; $75e4: $3f
    inc b                                         ; $75e5: $04
    db $10                                        ; $75e6: $10
    ld a, a                                       ; $75e7: $7f
    add b                                         ; $75e8: $80
    rst $38                                       ; $75e9: $ff
    jr z, jr_093_75ec                             ; $75ea: $28 $00

jr_093_75ec:
    nop                                           ; $75ec: $00
    ld h, $00                                     ; $75ed: $26 $00
    xor d                                         ; $75ef: $aa
    jr jr_093_75f2                                ; $75f0: $18 $00

jr_093_75f2:
    xor d                                         ; $75f2: $aa
    nop                                           ; $75f3: $00
    db $fc                                        ; $75f4: $fc
    db $10                                        ; $75f5: $10
    inc bc                                        ; $75f6: $03
    ld hl, sp+$04                                 ; $75f7: $f8 $04
    db $10                                        ; $75f9: $10
    ld c, b                                       ; $75fa: $48
    ccf                                           ; $75fb: $3f
    ret nz                                        ; $75fc: $c0

    rra                                           ; $75fd: $1f
    jr nz, jr_093_7600                            ; $75fe: $20 $00

jr_093_7600:
    rst $38                                       ; $7600: $ff
    nop                                           ; $7601: $00
    ld [bc], a                                    ; $7602: $02
    ld bc, $0154                                  ; $7603: $01 $54 $01
    xor d                                         ; $7606: $aa
    ld bc, $fc40                                  ; $7607: $01 $40 $fc
    inc b                                         ; $760a: $04
    db $10                                        ; $760b: $10
    cp $01                                        ; $760c: $fe $01
    dec a                                         ; $760e: $3d
    add d                                         ; $760f: $82
    ld a, b                                       ; $7610: $78
    add l                                         ; $7611: $85
    nop                                           ; $7612: $00
    ld a, $82                                     ; $7613: $3e $82
    ld a, a                                       ; $7615: $7f
    add d                                         ; $7616: $82
    add hl, sp                                    ; $7617: $39
    add l                                         ; $7618: $85
    ld a, [hl]                                    ; $7619: $7e
    add e                                         ; $761a: $83
    nop                                           ; $761b: $00
    inc a                                         ; $761c: $3c
    add e                                         ; $761d: $83
    ld a, [hl+]                                   ; $761e: $2a
    push de                                       ; $761f: $d5
    or d                                          ; $7620: $b2
    ld c, c                                       ; $7621: $49
    dec d                                         ; $7622: $15
    xor d                                         ; $7623: $aa
    nop                                           ; $7624: $00
    ld a, a                                       ; $7625: $7f
    ld c, d                                       ; $7626: $4a
    ld a, a                                       ; $7627: $7f
    ld b, [hl]                                    ; $7628: $46
    sbc a                                         ; $7629: $9f
    and d                                         ; $762a: $a2
    ld a, d                                       ; $762b: $7a
    rst $00                                       ; $762c: $c7
    nop                                           ; $762d: $00
    dec sp                                        ; $762e: $3b
    add $aa                                       ; $762f: $c6 $aa
    ld d, a                                       ; $7631: $57
    ld e, l                                       ; $7632: $5d
    sub d                                         ; $7633: $92
    jr @+$57                                      ; $7634: $18 $55

    nop                                           ; $7636: $00
    ld a, $52                                     ; $7637: $3e $52
    ld a, a                                       ; $7639: $7f
    ld h, d                                       ; $763a: $62
    add hl, sp                                    ; $763b: $39
    ld b, l                                       ; $763c: $45
    ld a, [hl]                                    ; $763d: $7e
    ld b, e                                       ; $763e: $43
    nop                                           ; $763f: $00
    ld a, h                                       ; $7640: $7c
    ld b, e                                       ; $7641: $43
    ld [$bc55], a                                 ; $7642: $ea $55 $bc
    ld b, c                                       ; $7645: $41
    ld e, $a1                                     ; $7646: $1e $a1
    nop                                           ; $7648: $00
    ld a, h                                       ; $7649: $7c
    ld b, c                                       ; $764a: $41
    ld a, [hl]                                    ; $764b: $7e
    ld b, c                                       ; $764c: $41

jr_093_764d:
    sbc h                                         ; $764d: $9c
    and c                                         ; $764e: $a1
    ld a, [hl]                                    ; $764f: $7e
    pop bc                                        ; $7650: $c1
    nop                                           ; $7651: $00
    inc a                                         ; $7652: $3c
    pop bc                                        ; $7653: $c1
    xor d                                         ; $7654: $aa
    ld d, l                                       ; $7655: $55
    ld b, b                                       ; $7656: $40
    add b                                         ; $7657: $80
    add b                                         ; $7658: $80
    nop                                           ; $7659: $00
    nop                                           ; $765a: $00
    rrca                                          ; $765b: $0f
    add b                                         ; $765c: $80
    sub a                                         ; $765d: $97
    ld [$841b], sp                                ; $765e: $08 $1b $84
    sub l                                         ; $7661: $95
    ld a, [bc]                                    ; $7662: $0a
    nop                                           ; $7663: $00
    ld a, [de]                                    ; $7664: $1a
    add l                                         ; $7665: $85
    sub b                                         ; $7666: $90
    rrca                                          ; $7667: $0f
    ld c, $03                                     ; $7668: $0e $03
    rra                                           ; $766a: $1f
    ld bc, $e104                                  ; $766b: $01 $04 $e1
    ld e, $f3                                     ; $766e: $1e $f3
    inc c                                         ; $7670: $0c
    rst $38                                       ; $7671: $ff
    sbc d                                         ; $7672: $9a
    nop                                           ; $7673: $00
    xor a                                         ; $7674: $af
    ld d, b                                       ; $7675: $50
    inc e                                         ; $7676: $1c
    nop                                           ; $7677: $00
    rst $38                                       ; $7678: $ff
    ret nz                                        ; $7679: $c0

    ld hl, $0c00                                  ; $767a: $21 $00 $0c
    ld [$0810], sp                                ; $767d: $08 $10 $08
    push af                                       ; $7680: $f5
    ld a, [bc]                                    ; $7681: $0a
    ld bc, $ff00                                  ; $7682: $01 $00 $ff

jr_093_7685:
    call c, $fa00                                 ; $7685: $dc $00 $fa
    nop                                           ; $7688: $00
    call nc, Call_000_00a0                        ; $7689: $d4 $a0 $00
    nop                                           ; $768c: $00
    ret nz                                        ; $768d: $c0

    nop                                           ; $768e: $00
    add b                                         ; $768f: $80
    nop                                           ; $7690: $00
    add d                                         ; $7691: $82
    nop                                           ; $7692: $00
    nop                                           ; $7693: $00
    add b                                         ; $7694: $80
    nop                                           ; $7695: $00
    ld d, [hl]                                    ; $7696: $56
    nop                                           ; $7697: $00
    add hl, hl                                    ; $7698: $29
    nop                                           ; $7699: $00
    ld b, b                                       ; $769a: $40
    nop                                           ; $769b: $00
    dec b                                         ; $769c: $05
    nop                                           ; $769d: $00
    nop                                           ; $769e: $00
    ld [bc], a                                    ; $769f: $02
    nop                                           ; $76a0: $00
    rla                                           ; $76a1: $17
    nop                                           ; $76a2: $00
    ld c, a                                       ; $76a3: $4f
    nop                                           ; $76a4: $00
    dec d                                         ; $76a5: $15
    ld [bc], a                                    ; $76a6: $02
    nop                                           ; $76a7: $00
    add c                                         ; $76a8: $81
    add c                                         ; $76a9: $81
    ld [bc], a                                    ; $76aa: $02
    add e                                         ; $76ab: $83
    add l                                         ; $76ac: $85
    add [hl]                                      ; $76ad: $86
    dec bc                                        ; $76ae: $0b
    adc h                                         ; $76af: $8c
    ld hl, $8c8b                                  ; $76b0: $21 $8b $8c
    inc b                                         ; $76b3: $04

jr_093_76b4:
    jr jr_093_76b4                                ; $76b4: $18 $fe

    cp $fd                                        ; $76b6: $fe $fd
    inc bc                                        ; $76b8: $03
    ld c, h                                       ; $76b9: $4c
    nop                                           ; $76ba: $00
    nop                                           ; $76bb: $00
    jr c, jr_093_7685                             ; $76bc: $38 $c7

    ld a, h                                       ; $76be: $7c
    jp $fa7e                                      ; $76bf: $c3 $7e $fa


    ld a, a                                       ; $76c2: $7f
    cp l                                          ; $76c3: $bd
    nop                                           ; $76c4: $00
    ld h, a                                       ; $76c5: $67
    and b                                         ; $76c6: $a0
    nop                                           ; $76c7: $00
    ld b, h                                       ; $76c8: $44
    add b                                         ; $76c9: $80
    and b                                         ; $76ca: $a0
    nop                                           ; $76cb: $00
    ld d, d                                       ; $76cc: $52
    ld [bc], a                                    ; $76cd: $02
    add b                                         ; $76ce: $80
    db $ed                                        ; $76cf: $ed
    nop                                           ; $76d0: $00
    halt                                          ; $76d1: $76
    add b                                         ; $76d2: $80
    ld l, [hl]                                    ; $76d3: $6e
    ldh a, [rP1]                                  ; $76d4: $f0 $00
    cpl                                           ; $76d6: $2f
    nop                                           ; $76d7: $00
    nop                                           ; $76d8: $00
    sbc l                                         ; $76d9: $9d
    ld [bc], a                                    ; $76da: $02
    ld a, $01                                     ; $76db: $3e $01
    ld e, a                                       ; $76dd: $5f
    nop                                           ; $76de: $00
    dec sp                                        ; $76df: $3b
    nop                                           ; $76e0: $00
    inc b                                         ; $76e1: $04
    ld e, l                                       ; $76e2: $5d
    ld [bc], a                                    ; $76e3: $02
    cp d                                          ; $76e4: $ba
    dec b                                         ; $76e5: $05
    ld a, h                                       ; $76e6: $7c
    inc bc                                        ; $76e7: $03
    adc e                                         ; $76e8: $8b
    nop                                           ; $76e9: $00
    adc [hl]                                      ; $76ea: $8e
    dec b                                         ; $76eb: $05
    adc a                                         ; $76ec: $8f
    add h                                         ; $76ed: $84
    adc a                                         ; $76ee: $8f
    ld [bc], a                                    ; $76ef: $02
    add a                                         ; $76f0: $87
    add c                                         ; $76f1: $81
    db $10                                        ; $76f2: $10
    add a                                         ; $76f3: $87
    nop                                           ; $76f4: $00
    add e                                         ; $76f5: $83
    ld a, h                                       ; $76f6: $7c
    add hl, bc                                    ; $76f7: $09
    pop de                                        ; $76f8: $d1
    ccf                                           ; $76f9: $3f
    xor $1f                                       ; $76fa: $ee $1f
    ld b, $c1                                     ; $76fc: $06 $c1
    rst $38                                       ; $76fe: $ff
    ld a, $ff                                     ; $76ff: $3e $ff
    pop bc                                        ; $7701: $c1
    sub c                                         ; $7702: $91
    nop                                           ; $7703: $00
    adc h                                         ; $7704: $8c
    add hl, bc                                    ; $7705: $09
    ld a, a                                       ; $7706: $7f
    nop                                           ; $7707: $00
    add b                                         ; $7708: $80
    ld [hl], l                                    ; $7709: $75
    adc d                                         ; $770a: $8a
    ld l, [hl]                                    ; $770b: $6e
    sub c                                         ; $770c: $91
    ld a, l                                       ; $770d: $7d
    add d                                         ; $770e: $82
    ld a, d                                       ; $770f: $7a
    nop                                           ; $7710: $00
    add l                                         ; $7711: $85
    ld d, l                                       ; $7712: $55
    xor d                                         ; $7713: $aa
    ld l, b                                       ; $7714: $68
    sub a                                         ; $7715: $97
    ld d, h                                       ; $7716: $54
    xor e                                         ; $7717: $ab
    sbc $00                                       ; $7718: $de $00
    ld hl, $0bf4                                  ; $771a: $21 $f4 $0b
    cp $01                                        ; $771d: $fe $01
    call c, $ea23                                 ; $771f: $dc $23 $ea
    nop                                           ; $7722: $00
    dec d                                         ; $7723: $15
    ld e, h                                       ; $7724: $5c
    and e                                         ; $7725: $a3
    xor b                                         ; $7726: $a8

jr_093_7727:
    ld d, a                                       ; $7727: $57
    dec d                                         ; $7728: $15
    ld [$0080], a                                 ; $7729: $ea $80 $00
    ld a, a                                       ; $772c: $7f
    ld b, b                                       ; $772d: $40
    cp a                                          ; $772e: $bf
    ccf                                           ; $772f: $3f
    ret nz                                        ; $7730: $c0

    ld [hl], l                                    ; $7731: $75
    adc d                                         ; $7732: $8a
    cpl                                           ; $7733: $2f
    ld bc, $56d0                                  ; $7734: $01 $d0 $56
    xor c                                         ; $7737: $a9
    inc hl                                        ; $7738: $23
    call c, $fa05                                 ; $7739: $dc $05 $fa
    cp e                                          ; $773c: $bb
    ld [$ed00], sp                                ; $773d: $08 $00 $ed
    ld [de], a                                    ; $7740: $12
    sbc $21                                       ; $7741: $de $21
    xor a                                         ; $7743: $af
    ld d, b                                       ; $7744: $50
    rst $10                                       ; $7745: $d7
    jr z, jr_093_7750                             ; $7746: $28 $08

    adc [hl]                                      ; $7748: $8e

jr_093_7749:
    ld [hl], c                                    ; $7749: $71
    dec h                                         ; $774a: $25
    jp c, Jump_000_00b3                           ; $774b: $da $b3 $00

    add b                                         ; $774e: $80
    ld b, b                                       ; $774f: $40

jr_093_7750:
    ret nz                                        ; $7750: $c0

    nop                                           ; $7751: $00
    and b                                         ; $7752: $a0
    ld h, b                                       ; $7753: $60
    ldh [rNR41], a                                ; $7754: $e0 $20
    ret nc                                        ; $7756: $d0

    jr nc, jr_093_7749                            ; $7757: $30 $f0

    stop                                          ; $7759: $10 $00
    ldh a, [rNR10]                                ; $775b: $f0 $10
    inc bc                                        ; $775d: $03
    inc bc                                        ; $775e: $03
    dec e                                         ; $775f: $1d
    ld e, $6f                                     ; $7760: $1e $6f
    ld [hl], b                                    ; $7762: $70
    nop                                           ; $7763: $00
    cp e                                          ; $7764: $bb
    rst $00                                       ; $7765: $c7
    db $fc                                        ; $7766: $fc
    rst $18                                       ; $7767: $df
    and e                                         ; $7768: $a3
    rst $38                                       ; $7769: $ff
    cp l                                          ; $776a: $bd
    cp $00                                        ; $776b: $fe $00
    ld a, a                                       ; $776d: $7f
    ld a, c                                       ; $776e: $79
    ldh a, [$f0]                                  ; $776f: $f0 $f0
    add sp, $18                                   ; $7771: $e8 $18
    db $fc                                        ; $7773: $fc
    inc b                                         ; $7774: $04
    nop                                           ; $7775: $00
    ld a, [$3ec6]                                 ; $7776: $fa $c6 $3e
    ld [c], a                                     ; $7779: $e2

jr_093_777a:
    cp $e2                                        ; $777a: $fe $e2
    cp $22                                        ; $777c: $fe $22
    jr nz, jr_093_777a                            ; $777e: $20 $fa

    add $8f                                       ; $7780: $c6 $8f
    ld bc, $0100                                  ; $7782: $01 $00 $01
    ld bc, $0302                                  ; $7785: $01 $02 $03
    nop                                           ; $7788: $00
    dec b                                         ; $7789: $05
    ld b, $07                                     ; $778a: $06 $07
    inc b                                         ; $778c: $04
    dec bc                                        ; $778d: $0b
    inc c                                         ; $778e: $0c
    rrca                                          ; $778f: $0f
    ld [$f000], sp                                ; $7790: $08 $00 $f0

jr_093_7793:
    db $10                                        ; $7793: $10
    ret nc                                        ; $7794: $d0

    jr nc, jr_093_7727                            ; $7795: $30 $90

    ldh a, [rNR41]                                ; $7797: $f0 $20
    ldh [$08], a                                  ; $7799: $e0 $08
    ret nz                                        ; $779b: $c0

    ldh [rP1], a                                  ; $779c: $e0 $00
    ret nz                                        ; $779e: $c0

    inc e                                         ; $779f: $1c
    ld a, [bc]                                    ; $77a0: $0a
    halt                                          ; $77a1: $76
    ld c, a                                       ; $77a2: $4f
    ld a, a                                       ; $77a3: $7f
    nop                                           ; $77a4: $00
    ld b, b                                       ; $77a5: $40
    ld c, a                                       ; $77a6: $4f
    ld a, a                                       ; $77a7: $7f
    jr nz, jr_093_7829                            ; $77a8: $20 $7f

    rra                                           ; $77aa: $1f

Call_093_77ab:
    ld a, a                                       ; $77ab: $7f
    nop                                           ; $77ac: $00
    ld b, b                                       ; $77ad: $40
    ccf                                           ; $77ae: $3f
    inc l                                         ; $77af: $2c
    ld a, [bc]                                    ; $77b0: $0a
    ld a, [$f20e]                                 ; $77b1: $fa $0e $f2

jr_093_77b4:
    ld a, $84                                     ; $77b4: $3e $84
    cp $02                                        ; $77b6: $fe $02

jr_093_77b8:
    jr jr_093_77b8                                ; $77b8: $18 $fe

    ldh [$fc], a                                  ; $77ba: $e0 $fc
    nop                                           ; $77bc: $00
    ld hl, sp+$3c                                 ; $77bd: $f8 $3c
    ld a, [bc]                                    ; $77bf: $0a
    rrca                                          ; $77c0: $0f
    nop                                           ; $77c1: $00
    ld [$080f], sp                                ; $77c2: $08 $0f $08
    dec bc                                        ; $77c5: $0b
    inc c                                         ; $77c6: $0c
    add hl, bc                                    ; $77c7: $09
    rrca                                          ; $77c8: $0f
    inc b                                         ; $77c9: $04
    jr @+$09                                      ; $77ca: $18 $07

    inc bc                                        ; $77cc: $03
    rlca                                          ; $77cd: $07
    ld c, h                                       ; $77ce: $4c
    ld a, [bc]                                    ; $77cf: $0a
    ld c, e                                       ; $77d0: $4b
    add hl, bc                                    ; $77d1: $09
    xor $11                                       ; $77d2: $ee $11
    db $fd                                        ; $77d4: $fd
    nop                                           ; $77d5: $00
    ld [bc], a                                    ; $77d6: $02
    ld a, [$d505]                                 ; $77d7: $fa $05 $d5
    ld a, [hl+]                                   ; $77da: $2a
    ld l, b                                       ; $77db: $68
    sub a                                         ; $77dc: $97
    call nc, $2b78                                ; $77dd: $d4 $78 $2b
    ld e, e                                       ; $77e0: $5b
    add hl, bc                                    ; $77e1: $09
    ret nz                                        ; $77e2: $c0

    ld c, b                                       ; $77e3: $48
    ld l, e                                       ; $77e4: $6b
    add hl, bc                                    ; $77e5: $09
    ret nz                                        ; $77e6: $c0

    ld c, b                                       ; $77e7: $48
    rst $38                                       ; $77e8: $ff
    rst $38                                       ; $77e9: $ff
    add b                                         ; $77ea: $80
    sub d                                         ; $77eb: $92
    ld [bc], a                                    ; $77ec: $02
    nop                                           ; $77ed: $00
    ret nz                                        ; $77ee: $c0

    cp a                                          ; $77ef: $bf
    inc b                                         ; $77f0: $04
    jr jr_093_77b4                                ; $77f1: $18 $c1

    cp a                                          ; $77f3: $bf
    ld b, d                                       ; $77f4: $42
    ld [$50aa], sp                                ; $77f5: $08 $aa $50
    ld d, l                                       ; $77f8: $55
    sub c                                         ; $77f9: $91
    add hl, de                                    ; $77fa: $19
    xor d                                         ; $77fb: $aa
    sub b                                         ; $77fc: $90
    ld [de], a                                    ; $77fd: $12
    ld b, c                                       ; $77fe: $41
    cp a                                          ; $77ff: $bf
    add e                                         ; $7800: $83
    ld a, a                                       ; $7801: $7f

Call_093_7802:
    ld bc, $ff01                                  ; $7802: $01 $01 $ff
    inc bc                                        ; $7805: $03
    rst $38                                       ; $7806: $ff
    ld bc, $abff                                  ; $7807: $01 $ff $ab
    xor l                                         ; $780a: $ad
    ld [bc], a                                    ; $780b: $02
    nop                                           ; $780c: $00
    ld a, [de]                                    ; $780d: $1a
    add b                                         ; $780e: $80
    sub h                                         ; $780f: $94
    nop                                           ; $7810: $00
    jr jr_093_7793                                ; $7811: $18 $80

    sub b                                         ; $7813: $90
    nop                                           ; $7814: $00
    jr @+$12                                      ; $7815: $18 $10

    add b                                         ; $7817: $80
    adc a                                         ; $7818: $8f
    sbc [hl]                                      ; $7819: $9e
    ld bc, $09a6                                  ; $781a: $01 $a6 $09
    nop                                           ; $781d: $00
    nop                                           ; $781e: $00
    rlca                                          ; $781f: $07
    dec b                                         ; $7820: $05
    nop                                           ; $7821: $00
    ld [$1200], sp                                ; $7822: $08 $00 $12
    ld bc, $0a5a                                  ; $7825: $01 $5a $0a
    nop                                           ; $7828: $00

jr_093_7829:
    and h                                         ; $7829: $a4
    ld [bc], a                                    ; $782a: $02
    ld h, e                                       ; $782b: $63
    ld l, d                                       ; $782c: $6a
    ld h, [hl]                                    ; $782d: $66
    ld [bc], a                                    ; $782e: $02
    ld [bc], a                                    ; $782f: $02
    ld [$c03f], sp                                ; $7830: $08 $3f $c0
    add b                                         ; $7833: $80
    sub c                                         ; $7834: $91
    db $10                                        ; $7835: $10
    ld l, h                                       ; $7836: $6c

jr_093_7837:
    ld a, [bc]                                    ; $7837: $0a
    call nc, Call_000_19e2                        ; $7838: $d4 $e2 $19
    ld h, d                                       ; $783b: $62
    add hl, bc                                    ; $783c: $09
    cp $5c                                        ; $783d: $fe $5c
    ld [bc], a                                    ; $783f: $02
    cp $02                                        ; $7840: $fe $02
    db $10                                        ; $7842: $10
    db $fd                                        ; $7843: $fd
    inc bc                                        ; $7844: $03
    ld b, d                                       ; $7845: $42
    ld bc, $02fd                                  ; $7846: $01 $fd $02
    inc d                                         ; $7849: $14
    ld c, e                                       ; $784a: $4b
    and d                                         ; $784b: $a2
    ld e, l                                       ; $784c: $5d
    ld a, d                                       ; $784d: $7a
    add hl, bc                                    ; $784e: $09
    and b                                         ; $784f: $a0
    nop                                           ; $7850: $00
    ld e, a                                       ; $7851: $5f
    xor b                                         ; $7852: $a8
    rra                                           ; $7853: $1f
    ld h, d                                       ; $7854: $62
    dec e                                         ; $7855: $1d
    xor b                                         ; $7856: $a8
    rra                                           ; $7857: $1f
    inc b                                         ; $7858: $04
    ld [bc], a                                    ; $7859: $02
    ld a, a                                       ; $785a: $7f
    sub h                                         ; $785b: $94
    ld a, [hl]                                    ; $785c: $7e
    rlca                                          ; $785d: $07
    ei                                            ; $785e: $fb
    ld a, [$021f]                                 ; $785f: $fa $1f $02
    xor c                                         ; $7862: $a9
    jr nz, jr_093_78bb                            ; $7863: $20 $56

    or h                                          ; $7865: $b4
    xor $02                                       ; $7866: $ee $02
    push af                                       ; $7868: $f5
    ldh [rPCM12], a                               ; $7869: $e0 $76
    ldh [$d5], a                                  ; $786b: $e0 $d5
    nop                                           ; $786d: $00
    ld [$ffaa], a                                 ; $786e: $ea $aa $ff
    ld a, [bc]                                    ; $7871: $0a
    ldh a, [$59]                                  ; $7872: $f0 $59
    or b                                          ; $7874: $b0
    adc d                                         ; $7875: $8a
    nop                                           ; $7876: $00
    ld [hl], b                                    ; $7877: $70
    add hl, de                                    ; $7878: $19
    ldh a, [$a4]                                  ; $7879: $f0 $a4
    add hl, de                                    ; $787b: $19
    and a                                         ; $787c: $a7
    jr jr_093_78c3                                ; $787d: $18 $44

    nop                                           ; $787f: $00
    cp c                                          ; $7880: $b9
    or a                                          ; $7881: $b7
    ld hl, sp-$4a                                 ; $7882: $f8 $b6
    add hl, bc                                    ; $7884: $09
    ld d, l                                       ; $7885: $55
    ld [$0017], sp                                ; $7886: $08 $17 $00
    ld [$0857], sp                                ; $7889: $08 $57 $08
    ld h, l                                       ; $788c: $65
    jr jr_093_7837                                ; $788d: $18 $a8

    rra                                           ; $788f: $1f
    push hl                                       ; $7890: $e5
    nop                                           ; $7891: $00
    jr @-$14                                      ; $7892: $18 $ea

    dec e                                         ; $7894: $1d
    and c                                         ; $7895: $a1
    ld e, $aa                                     ; $7896: $1e $aa
    dec e                                         ; $7898: $1d
    ld h, l                                       ; $7899: $65
    nop                                           ; $789a: $00
    ld a, [de]                                    ; $789b: $1a
    xor b                                         ; $789c: $a8
    rra                                           ; $789d: $1f
    ld d, h                                       ; $789e: $54
    and e                                         ; $789f: $a3
    ld a, [bc]                                    ; $78a0: $0a
    push af                                       ; $78a1: $f5
    ld b, l                                       ; $78a2: $45
    nop                                           ; $78a3: $00
    add b                                         ; $78a4: $80
    nop                                           ; $78a5: $00
    rst $38                                       ; $78a6: $ff
    ld d, d                                       ; $78a7: $52
    dec c                                         ; $78a8: $0d
    xor c                                         ; $78a9: $a9
    ld d, [hl]                                    ; $78aa: $56
    ld b, h                                       ; $78ab: $44
    nop                                           ; $78ac: $00
    jr c, @+$17                                   ; $78ad: $38 $15

    ld [c], a                                     ; $78af: $e2
    jp z, $1930                                   ; $78b0: $ca $30 $19

    ldh a, [rWY]                                  ; $78b3: $f0 $4a

jr_093_78b5:
    nop                                           ; $78b5: $00
    jr nc, jr_093_78cd                            ; $78b6: $30 $15

    ld a, [$bd42]                                 ; $78b8: $fa $42 $bd

jr_093_78bb:
    rla                                           ; $78bb: $17
    ld hl, sp-$7a                                 ; $78bc: $f8 $86
    nop                                           ; $78be: $00
    ld a, b                                       ; $78bf: $78
    ld d, l                                       ; $78c0: $55
    cp d                                          ; $78c1: $ba
    ld d, l                                       ; $78c2: $55

jr_093_78c3:
    ld [$0815], sp                                ; $78c3: $08 $15 $08
    or l                                          ; $78c6: $b5
    nop                                           ; $78c7: $00
    ld a, [bc]                                    ; $78c8: $0a
    ld e, d                                       ; $78c9: $5a
    xor a                                         ; $78ca: $af
    xor d                                         ; $78cb: $aa
    ld d, l                                       ; $78cc: $55

jr_093_78cd:
    rst $38                                       ; $78cd: $ff
    nop                                           ; $78ce: $00
    xor l                                         ; $78cf: $ad
    nop                                           ; $78d0: $00
    nop                                           ; $78d1: $00
    ld c, d                                       ; $78d2: $4a
    or l                                          ; $78d3: $b5
    jr nz, jr_093_78b5                            ; $78d4: $20 $df

    call nz, Call_000_00bb                        ; $78d6: $c4 $bb $00
    nop                                           ; $78d9: $00
    rst $38                                       ; $78da: $ff
    and b                                         ; $78db: $a0
    rst $18                                       ; $78dc: $df
    nop                                           ; $78dd: $00
    rst $38                                       ; $78de: $ff
    add d                                         ; $78df: $82
    rst $38                                       ; $78e0: $ff
    ld d, l                                       ; $78e1: $55
    inc b                                         ; $78e2: $04
    rst $38                                       ; $78e3: $ff
    cp e                                          ; $78e4: $bb
    rst $38                                       ; $78e5: $ff
    adc b                                         ; $78e6: $88
    ld [hl], a                                    ; $78e7: $77
    ld [hl], d                                    ; $78e8: $72
    dec bc                                        ; $78e9: $0b
    nop                                           ; $78ea: $00
    rst $38                                       ; $78eb: $ff
    ld b, b                                       ; $78ec: $40
    ld b, h                                       ; $78ed: $44
    jr jr_093_78f1                                ; $78ee: $18 $01

    ld d, b                                       ; $78f0: $50

jr_093_78f1:
    rst $38                                       ; $78f1: $ff
    db $eb                                        ; $78f2: $eb
    rst $38                                       ; $78f3: $ff
    add a                                         ; $78f4: $87
    add a                                         ; $78f5: $87
    nop                                           ; $78f6: $00
    dec bc                                        ; $78f7: $0b
    adc h                                         ; $78f8: $8c
    sbc a                                         ; $78f9: $9f
    sub b                                         ; $78fa: $90
    cpl                                           ; $78fb: $2f
    or c                                          ; $78fc: $b1
    cp [hl]                                       ; $78fd: $be
    and e                                         ; $78fe: $a3
    nop                                           ; $78ff: $00
    ccf                                           ; $7900: $3f
    and e                                         ; $7901: $a3

Call_093_7902:
    cp a                                          ; $7902: $bf
    and d                                         ; $7903: $a2
    cpl                                           ; $7904: $2f
    or c                                          ; $7905: $b1
    ldh [$e0], a                                  ; $7906: $e0 $e0
    nop                                           ; $7908: $00
    call c, $fb3c                                 ; $7909: $dc $3c $fb
    rlca                                          ; $790c: $07
    xor $f1                                       ; $790d: $ee $f1
    rra                                           ; $790f: $1f
    db $fd                                        ; $7910: $fd
    nop                                           ; $7911: $00
    ld [c], a                                     ; $7912: $e2
    rst $38                                       ; $7913: $ff
    sbc $3f                                       ; $7914: $de $3f
    rst $38                                       ; $7916: $ff
    rst $08                                       ; $7917: $cf
    ld d, b                                       ; $7918: $50
    rrca                                          ; $7919: $0f
    nop                                           ; $791a: $00
    jr @+$11                                      ; $791b: $18 $0f

    ld d, b                                       ; $791d: $50
    rrca                                          ; $791e: $0f
    xor a                                         ; $791f: $af
    ld e, a                                       ; $7920: $5f
    xor d                                         ; $7921: $aa
    ld d, l                                       ; $7922: $55
    nop                                           ; $7923: $00
    push af                                       ; $7924: $f5
    nop                                           ; $7925: $00
    cp d                                          ; $7926: $ba
    dec b                                         ; $7927: $05
    ld c, l                                       ; $7928: $4d
    jr nz, jr_093_7936                            ; $7929: $20 $0b

    ldh a, [rP1]                                  ; $792b: $f0 $00
    add hl, de                                    ; $792d: $19
    ldh a, [$0b]                                  ; $792e: $f0 $0b
    ldh a, [$f9]                                  ; $7930: $f0 $f9
    ldh a, [$aa]                                  ; $7932: $f0 $aa
    ld d, b                                       ; $7934: $50
    nop                                           ; $7935: $00

jr_093_7936:
    xor c                                         ; $7936: $a9
    db $10                                        ; $7937: $10
    ld l, d                                       ; $7938: $6a
    db $10                                        ; $7939: $10
    xor c                                         ; $793a: $a9
    db $10                                        ; $793b: $10
    xor a                                         ; $793c: $af
    cp b                                          ; $793d: $b8
    nop                                           ; $793e: $00
    daa                                           ; $793f: $27
    cp [hl]                                       ; $7940: $be
    sub b                                         ; $7941: $90
    cp a                                          ; $7942: $bf
    inc c                                         ; $7943: $0c
    cp a                                          ; $7944: $bf
    add e                                         ; $7945: $83
    sbc a                                         ; $7946: $9f
    jr nz, jr_093_7949                            ; $7947: $20 $00

jr_093_7949:
    adc a                                         ; $7949: $8f
    db $ec                                        ; $794a: $ec
    dec bc                                        ; $794b: $0b
    or a                                          ; $794c: $b7
    ld a, c                                       ; $794d: $79
    rst $38                                       ; $794e: $ff
    ld bc, $01f9                                  ; $794f: $01 $f9 $01
    rst $38                                       ; $7952: $ff
    ld [bc], a                                    ; $7953: $02
    rst $38                                       ; $7954: $ff
    db $fc                                        ; $7955: $fc
    rst $38                                       ; $7956: $ff
    nop                                           ; $7957: $00
    cp $fc                                        ; $7958: $fe $fc
    dec bc                                        ; $795a: $0b
    nop                                           ; $795b: $00
    sub b                                         ; $795c: $90
    dec h                                         ; $795d: $25
    ld l, e                                       ; $795e: $6b
    inc b                                         ; $795f: $04
    sub b                                         ; $7960: $90
    dec h                                         ; $7961: $25
    or h                                          ; $7962: $b4
    nop                                           ; $7963: $00
    nop                                           ; $7964: $00
    cp a                                          ; $7965: $bf
    nop                                           ; $7966: $00
    ret z                                         ; $7967: $c8

    dec h                                         ; $7968: $25
    or e                                          ; $7969: $b3
    inc b                                         ; $796a: $04
    ld e, d                                       ; $796b: $5a
    inc h                                         ; $796c: $24
    nop                                           ; $796d: $00
    ld l, d                                       ; $796e: $6a
    db $10                                        ; $796f: $10
    xor b                                         ; $7970: $a8
    db $10                                        ; $7971: $10
    db $ed                                        ; $7972: $ed
    db $10                                        ; $7973: $10
    ld [$7015], a                                 ; $7974: $ea $15 $70
    xor d                                         ; $7977: $aa
    inc a                                         ; $7978: $3c
    nop                                           ; $7979: $00
    ld b, b                                       ; $797a: $40
    ld [$03c1], sp                                ; $797b: $08 $c1 $03
    ld a, a                                       ; $797e: $7f
    ld e, d                                       ; $797f: $5a
    nop                                           ; $7980: $00
    and l                                         ; $7981: $a5
    ld [$b25a], sp                                ; $7982: $08 $5a $b2
    dec c                                         ; $7985: $0d
    ld d, a                                       ; $7986: $57
    cp d                                          ; $7987: $ba
    nop                                           ; $7988: $00
    ld d, a                                       ; $7989: $57
    ld [$0300], sp                                ; $798a: $08 $00 $03
    rst $38                                       ; $798d: $ff
    ld [$b0ff], sp                                ; $798e: $08 $ff $b0
    rrca                                          ; $7991: $0f
    ld e, a                                       ; $7992: $5f
    ret nz                                        ; $7993: $c0

    nop                                           ; $7994: $00
    ld [hl], b                                    ; $7995: $70
    jr jr_093_7998                                ; $7996: $18 $00

jr_093_7998:
    xor l                                         ; $7998: $ad
    nop                                           ; $7999: $00
    ld l, a                                       ; $799a: $6f
    nop                                           ; $799b: $00
    ld d, l                                       ; $799c: $55
    xor d                                         ; $799d: $aa
    xor d                                         ; $799e: $aa
    rst $38                                       ; $799f: $ff
    ld bc, $50aa                                  ; $79a0: $01 $aa $50
    jp hl                                         ; $79a3: $e9


    db $10                                        ; $79a4: $10
    xor d                                         ; $79a5: $aa
    db $10                                        ; $79a6: $10
    jp hl                                         ; $79a7: $e9


    ld [hl], h                                    ; $79a8: $74
    nop                                           ; $79a9: $00
    nop                                           ; $79aa: $00
    ld l, c                                       ; $79ab: $69
    db $10                                        ; $79ac: $10
    ld c, d                                       ; $79ad: $4a
    or b                                          ; $79ae: $b0
    or l                                          ; $79af: $b5
    ld a, [$0fb0]                                 ; $79b0: $fa $b0 $0f

jr_093_79b3:
    nop                                           ; $79b3: $00
    ld e, d                                       ; $79b4: $5a
    dec c                                         ; $79b5: $0d
    db $10                                        ; $79b6: $10
    rrca                                          ; $79b7: $0f
    ld e, b                                       ; $79b8: $58
    rrca                                          ; $79b9: $0f
    ld d, h                                       ; $79ba: $54
    add hl, bc                                    ; $79bb: $09
    nop                                           ; $79bc: $00
    rla                                           ; $79bd: $17
    ld [$09b4], sp                                ; $79be: $08 $b4 $09
    ld d, a                                       ; $79c1: $57
    xor b                                         ; $79c2: $a8
    ld b, $f9                                     ; $79c3: $06 $f9
    nop                                           ; $79c5: $00
    sub l                                         ; $79c6: $95
    ld a, b                                       ; $79c7: $78
    rlca                                          ; $79c8: $07
    ld a, b                                       ; $79c9: $78
    sub a                                         ; $79ca: $97
    ld a, b                                       ; $79cb: $78
    nop                                           ; $79cc: $00
    nop                                           ; $79cd: $00
    nop                                           ; $79ce: $00
    rra                                           ; $79cf: $1f
    rra                                           ; $79d0: $1f
    cpl                                           ; $79d1: $2f
    jr nc, jr_093_79b3                            ; $79d2: $30 $df

    ldh [$bf], a                                  ; $79d4: $e0 $bf
    jp $bc00                                      ; $79d6: $c3 $00 $bc


    rst $00                                       ; $79d9: $c7

jr_093_79da:
    cp h                                          ; $79da: $bc
    rst $00                                       ; $79db: $c7
    cp a                                          ; $79dc: $bf
    rst $00                                       ; $79dd: $c7
    nop                                           ; $79de: $00
    nop                                           ; $79df: $00
    nop                                           ; $79e0: $00
    ldh [$e0], a                                  ; $79e1: $e0 $e0
    ret c                                         ; $79e3: $d8

    jr c, jr_093_79da                             ; $79e4: $38 $f4

    inc c                                         ; $79e6: $0c
    ld a, [$0086]                                 ; $79e7: $fa $86 $00
    ld a, [hl]                                    ; $79ea: $7e
    jp nz, $e33d                                  ; $79eb: $c2 $3d $e3

    xor a                                         ; $79ee: $af
    pop af                                        ; $79ef: $f1
    ret nz                                        ; $79f0: $c0

    ret nz                                        ; $79f1: $c0

    nop                                           ; $79f2: $00
    cp b                                          ; $79f3: $b8
    ld a, b                                       ; $79f4: $78
    or $0e                                        ; $79f5: $f6 $0e
    db $dd                                        ; $79f7: $dd
    db $e3                                        ; $79f8: $e3
    ccf                                           ; $79f9: $3f
    ei                                            ; $79fa: $fb
    nop                                           ; $79fb: $00
    push bc                                       ; $79fc: $c5
    rst $38                                       ; $79fd: $ff
    cp l                                          ; $79fe: $bd
    ld a, a                                       ; $79ff: $7f
    rst $38                                       ; $7a00: $ff
    sbc a                                         ; $7a01: $9f
    cp e                                          ; $7a02: $bb
    add $00                                       ; $7a03: $c6 $00
    cp l                                          ; $7a05: $bd
    db $e3                                        ; $7a06: $e3
    ld e, [hl]                                    ; $7a07: $5e
    pop af                                        ; $7a08: $f1
    ld c, h                                       ; $7a09: $4c
    rst $38                                       ; $7a0a: $ff
    inc hl                                        ; $7a0b: $23
    ld a, a                                       ; $7a0c: $7f
    jr nz, @+$1e                                  ; $7a0d: $20 $1c

    ld a, a                                       ; $7a0f: $7f
    xor h                                         ; $7a10: $ac
    inc c                                         ; $7a11: $0c
    rst $18                                       ; $7a12: $df
    ld [hl], c                                    ; $7a13: $71
    rra                                           ; $7a14: $1f
    pop af                                        ; $7a15: $f1
    db $ed                                        ; $7a16: $ed
    ld [bc], a                                    ; $7a17: $02
    di                                            ; $7a18: $f3
    add hl, de                                    ; $7a19: $19
    rst $38                                       ; $7a1a: $ff
    ld [c], a                                     ; $7a1b: $e2
    cp $1c                                        ; $7a1c: $fe $1c
    ret nz                                        ; $7a1e: $c0

    db $10                                        ; $7a1f: $10
    ld l, a                                       ; $7a20: $6f
    nop                                           ; $7a21: $00
    di                                            ; $7a22: $f3
    rst $38                                       ; $7a23: $ff
    inc bc                                        ; $7a24: $03
    di                                            ; $7a25: $f3
    rst $38                                       ; $7a26: $ff
    inc b                                         ; $7a27: $04
    cp $f8                                        ; $7a28: $fe $f8

jr_093_7a2a:
    jr jr_093_7a2a                                ; $7a2a: $18 $fe

    nop                                           ; $7a2c: $00
    db $fc                                        ; $7a2d: $fc
    add b                                         ; $7a2e: $80
    ld a, [hl+]                                   ; $7a2f: $2a
    ret nc                                        ; $7a30: $d0

    ld c, c                                       ; $7a31: $49
    nop                                           ; $7a32: $00
    rst $38                                       ; $7a33: $ff
    db $10                                        ; $7a34: $10
    rra                                           ; $7a35: $1f
    rst $38                                       ; $7a36: $ff
    dec b                                         ; $7a37: $05
    ld a, [$39d0]                                 ; $7a38: $fa $d0 $39
    db $eb                                        ; $7a3b: $eb

jr_093_7a3c:
    dec bc                                        ; $7a3c: $0b
    or b                                          ; $7a3d: $b0
    ld [$29d0], sp                                ; $7a3e: $08 $d0 $29
    ei                                            ; $7a41: $fb
    dec bc                                        ; $7a42: $0b
    and b                                         ; $7a43: $a0
    ret nc                                        ; $7a44: $d0

    ld c, c                                       ; $7a45: $49
    ld bc, $0cc0                                  ; $7a46: $01 $c0 $0c
    add hl, hl                                    ; $7a49: $29
    ld a, d                                       ; $7a4a: $7a
    add l                                         ; $7a4b: $85
    cp $01                                        ; $7a4c: $fe $01
    nop                                           ; $7a4e: $00
    xor $01                                       ; $7a4f: $ee $01
    cp d                                          ; $7a51: $ba
    ld bc, $015e                                  ; $7a52: $01 $5e $01
    rst $00                                       ; $7a55: $c7
    rst $38                                       ; $7a56: $ff
    jr z, jr_093_7a3c                             ; $7a57: $28 $e3

    rst $18                                       ; $7a59: $df
    inc b                                         ; $7a5a: $04
    ld [$04e7], sp                                ; $7a5b: $08 $e7 $04
    jr nz, @-$7c                                  ; $7a5e: $20 $82

    nop                                           ; $7a60: $00
    ld d, b                                       ; $7a61: $50
    ld a, [hl+]                                   ; $7a62: $2a
    nop                                           ; $7a63: $00
    ld bc, $04c4                                  ; $7a64: $01 $c4 $04
    add b                                         ; $7a67: $80
    ld [$a400], sp                                ; $7a68: $08 $00 $a4
    ld h, $04                                     ; $7a6b: $26 $04
    xor [hl]                                      ; $7a6d: $ae
    ld [bc], a                                    ; $7a6e: $02
    ld bc, $0055                                  ; $7a6f: $01 $55 $00
    ld a, [bc]                                    ; $7a72: $0a
    ld bc, $45a5                                  ; $7a73: $01 $a5 $45
    dec bc                                        ; $7a76: $0b
    nop                                           ; $7a77: $00
    nop                                           ; $7a78: $00
    inc bc                                        ; $7a79: $03
    nop                                           ; $7a7a: $00
    adc c                                         ; $7a7b: $89
    nop                                           ; $7a7c: $00
    xor b                                         ; $7a7d: $a8
    nop                                           ; $7a7e: $00
    pop de                                        ; $7a7f: $d1
    nop                                           ; $7a80: $00
    inc d                                         ; $7a81: $14
    db $eb                                        ; $7a82: $eb
    nop                                           ; $7a83: $00
    rst $10                                       ; $7a84: $d7
    ld hl, sp+$04                                 ; $7a85: $f8 $04
    ld l, a                                       ; $7a87: $6f
    db $ec                                        ; $7a88: $ec
    inc b                                         ; $7a89: $04

jr_093_7a8a:
    ld e, a                                       ; $7a8a: $5f
    and b                                         ; $7a8b: $a0
    ld b, b                                       ; $7a8c: $40
    ld b, c                                       ; $7a8d: $41
    inc d                                         ; $7a8e: $14
    nop                                           ; $7a8f: $00
    call nc, $e901                                ; $7a90: $d4 $01 $e9
    nop                                           ; $7a93: $00
    ld a, [$1001]                                 ; $7a94: $fa $01 $10
    db $fd                                        ; $7a97: $fd
    nop                                           ; $7a98: $00
    cp $a4                                        ; $7a99: $fe $a4
    ld [bc], a                                    ; $7a9b: $02
    cp a                                          ; $7a9c: $bf
    ld b, b                                       ; $7a9d: $40
    ld l, a                                       ; $7a9e: $6f
    sub b                                         ; $7a9f: $90
    add b                                         ; $7aa0: $80
    ret nz                                        ; $7aa1: $c0

    ld c, e                                       ; $7aa2: $4b
    xor [hl]                                      ; $7aa3: $ae
    ld d, c                                       ; $7aa4: $51

jr_093_7aa5:
    ld e, [hl]                                    ; $7aa5: $5e
    and c                                         ; $7aa6: $a1
    db $ec                                        ; $7aa7: $ec
    inc de                                        ; $7aa8: $13
    sbc $00                                       ; $7aa9: $de $00
    ld hl, $51ae                                  ; $7aab: $21 $ae $51
    sub $29                                       ; $7aae: $d6 $29
    adc a                                         ; $7ab0: $8f
    ld [hl], c                                    ; $7ab1: $71
    inc h                                         ; $7ab2: $24
    nop                                           ; $7ab3: $00
    db $db                                        ; $7ab4: $db
    ld h, l                                       ; $7ab5: $65
    jr jr_093_7b21                                ; $7ab6: $18 $69

    ld e, $40                                     ; $7ab8: $1e $40
    cp a                                          ; $7aba: $bf
    cp a                                          ; $7abb: $bf
    add b                                         ; $7abc: $80
    ld b, $0b                                     ; $7abd: $06 $0b
    inc d                                         ; $7abf: $14
    inc b                                         ; $7ac0: $04
    ei                                            ; $7ac1: $fb
    xor b                                         ; $7ac2: $a8
    ld b, a                                       ; $7ac3: $47
    jr nz, jr_093_7aa5                            ; $7ac4: $20 $df

    jr nz, jr_093_7b1d                            ; $7ac6: $20 $55

    jr z, @+$1c                                   ; $7ac8: $28 $1a

    inc c                                         ; $7aca: $0c
    ld [bc], a                                    ; $7acb: $02
    db $fd                                        ; $7acc: $fd
    sub a                                         ; $7acd: $97
    ld a, b                                       ; $7ace: $78
    and [hl]                                      ; $7acf: $a6
    nop                                           ; $7ad0: $00
    jr jr_093_7ae7                                ; $7ad1: $18 $14

    ei                                            ; $7ad3: $fb
    rlca                                          ; $7ad4: $07
    ld hl, sp+$56                                 ; $7ad5: $f8 $56
    jr c, jr_093_7ae0                             ; $7ad7: $38 $07

    nop                                           ; $7ad9: $00
    ld hl, sp-$09                                 ; $7ada: $f8 $f7
    ld hl, sp-$5b                                 ; $7adc: $f8 $a5
    ld e, b                                       ; $7ade: $58
    rst $20                                       ; $7adf: $e7

jr_093_7ae0:
    jr @-$19                                      ; $7ae0: $18 $e5

    nop                                           ; $7ae2: $00
    jr jr_093_7a8a                                ; $7ae3: $18 $a5

    ld e, d                                       ; $7ae5: $5a
    ld e, a                                       ; $7ae6: $5f

jr_093_7ae7:
    nop                                           ; $7ae7: $00
    and d                                         ; $7ae8: $a2
    nop                                           ; $7ae9: $00
    ld c, [hl]                                    ; $7aea: $4e
    ld [$5db1], sp                                ; $7aeb: $08 $b1 $5d
    nop                                           ; $7aee: $00
    and [hl]                                      ; $7aef: $a6
    cp [hl]                                       ; $7af0: $be
    inc b                                         ; $7af1: $04
    dec h                                         ; $7af2: $25
    nop                                           ; $7af3: $00
    ld d, l                                       ; $7af4: $55
    nop                                           ; $7af5: $00
    and d                                         ; $7af6: $a2
    ld [hl+], a                                   ; $7af7: $22
    inc e                                         ; $7af8: $1c
    sub l                                         ; $7af9: $95
    ld l, d                                       ; $7afa: $6a
    ld c, d                                       ; $7afb: $4a
    or b                                          ; $7afc: $b0
    nop                                           ; $7afd: $00
    nop                                           ; $7afe: $00
    rst $38                                       ; $7aff: $ff
    and d                                         ; $7b00: $a2
    ld bc, $af50                                  ; $7b01: $01 $50 $af
    ld a, [hl+]                                   ; $7b04: $2a

jr_093_7b05:
    push bc                                       ; $7b05: $c5
    nop                                           ; $7b06: $00
    nop                                           ; $7b07: $00
    rst $38                                       ; $7b08: $ff
    and l                                         ; $7b09: $a5
    ld e, b                                       ; $7b0a: $58
    ld d, [hl]                                    ; $7b0b: $56
    cp b                                          ; $7b0c: $b8
    add h                                         ; $7b0d: $84
    ld a, e                                       ; $7b0e: $7b
    ld d, l                                       ; $7b0f: $55
    nop                                           ; $7b10: $00
    cp b                                          ; $7b11: $b8
    and [hl]                                      ; $7b12: $a6
    jr jr_093_7b2c                                ; $7b13: $18 $17

    ld hl, sp-$5a                                 ; $7b15: $f8 $a6
    jr jr_093_7b2e                                ; $7b17: $18 $15

    nop                                           ; $7b19: $00
    ld a, [$18e6]                                 ; $7b1a: $fa $e6 $18

jr_093_7b1d:
    dec h                                         ; $7b1d: $25
    jr jr_093_7b05                                ; $7b1e: $18 $e5

    ld a, [de]                                    ; $7b20: $1a

jr_093_7b21:
    ld [$1f48], a                                 ; $7b21: $ea $48 $1f
    xor b                                         ; $7b24: $a8
    ld bc, $6b90                                  ; $7b25: $01 $90 $6b
    xor h                                         ; $7b28: $ac
    ld bc, $00be                                  ; $7b29: $01 $be $00

jr_093_7b2c:
    ld e, c                                       ; $7b2c: $59
    add b                                         ; $7b2d: $80

jr_093_7b2e:
    ret nz                                        ; $7b2e: $c0

    ld de, $0fb0                                  ; $7b2f: $11 $b0 $0f
    ld a, [de]                                    ; $7b32: $1a
    dec c                                         ; $7b33: $0d
    ld d, b                                       ; $7b34: $50
    rrca                                          ; $7b35: $0f
    ld a, [de]                                    ; $7b36: $1a
    inc b                                         ; $7b37: $04
    inc c                                         ; $7b38: $0c
    dec l                                         ; $7b39: $2d
    nop                                           ; $7b3a: $00
    sub l                                         ; $7b3b: $95
    ld l, d                                       ; $7b3c: $6a
    adc d                                         ; $7b3d: $8a
    inc c                                         ; $7b3e: $0c
    xor l                                         ; $7b3f: $ad
    ld d, b                                       ; $7b40: $50
    ld b, b                                       ; $7b41: $40
    add sp, $40                                   ; $7b42: $e8 $40
    ld [bc], a                                    ; $7b44: $02
    xor b                                         ; $7b45: $a8
    ld d, b                                       ; $7b46: $50
    ld b, a                                       ; $7b47: $47
    cp b                                          ; $7b48: $b8
    dec d                                         ; $7b49: $15
    ld hl, sp-$80                                 ; $7b4a: $f8 $80
    ld b, b                                       ; $7b4c: $40
    add hl, bc                                    ; $7b4d: $09
    ld d, d                                       ; $7b4e: $52
    dec c                                         ; $7b4f: $0d
    sub a                                         ; $7b50: $97
    ld [$0856], sp                                ; $7b51: $08 $56 $08
    sub l                                         ; $7b54: $95

jr_093_7b55:
    jr c, jr_093_7b61                             ; $7b55: $38 $0a

    db $eb                                        ; $7b57: $eb
    ld d, h                                       ; $7b58: $54
    ld [bc], a                                    ; $7b59: $02
    ldh [$09], a                                  ; $7b5a: $e0 $09
    ret nz                                        ; $7b5c: $c0

    ld a, [hl+]                                   ; $7b5d: $2a
    ld [de], a                                    ; $7b5e: $12
    dec c                                         ; $7b5f: $0d
    ld e, c                                       ; $7b60: $59

jr_093_7b61:
    nop                                           ; $7b61: $00
    ld c, $b0                                     ; $7b62: $0e $b0
    rrca                                          ; $7b64: $0f
    ld e, b                                       ; $7b65: $58
    xor a                                         ; $7b66: $af
    and d                                         ; $7b67: $a2
    ld e, h                                       ; $7b68: $5c
    jp hl                                         ; $7b69: $e9


    ld [bc], a                                    ; $7b6a: $02
    ld e, $a2                                     ; $7b6b: $1e $a2
    inc e                                         ; $7b6d: $1c
    add sp, $1f                                   ; $7b6e: $e8 $1f
    ld [$0240], a                                 ; $7b70: $ea $40 $02
    xor b                                         ; $7b73: $a8
    ld b, b                                       ; $7b74: $40
    ld d, b                                       ; $7b75: $50
    ld b, [hl]                                    ; $7b76: $46
    ld a, [bc]                                    ; $7b77: $0a
    ld l, d                                       ; $7b78: $6a
    sub b                                         ; $7b79: $90
    ld l, d                                       ; $7b7a: $6a
    db $10                                        ; $7b7b: $10
    ld l, b                                       ; $7b7c: $68
    sub b                                         ; $7b7d: $90
    nop                                           ; $7b7e: $00
    rst $10                                       ; $7b7f: $d7
    ld [$0896], sp                                ; $7b80: $08 $96 $08
    rst $10                                       ; $7b83: $d7
    ld [$0897], sp                                ; $7b84: $08 $97 $08
    ld b, b                                       ; $7b87: $40
    ld d, l                                       ; $7b88: $55
    inc b                                         ; $7b89: $04
    db $10                                        ; $7b8a: $10
    sub l                                         ; $7b8b: $95
    ld a, [bc]                                    ; $7b8c: $0a
    ld h, d                                       ; $7b8d: $62
    inc e                                         ; $7b8e: $1c
    xor c                                         ; $7b8f: $a9
    ld e, $11                                     ; $7b90: $1e $11
    ldh [$1f], a                                  ; $7b92: $e0 $1f
    xor a                                         ; $7b94: $af
    jr z, jr_093_7b97                             ; $7b95: $28 $00

jr_093_7b97:
    xor c                                         ; $7b97: $a9
    ld d, b                                       ; $7b98: $50
    xor d                                         ; $7b99: $aa
    inc l                                         ; $7b9a: $2c
    ld [bc], a                                    ; $7b9b: $02
    add b                                         ; $7b9c: $80
    and h                                         ; $7b9d: $a4
    ld a, [bc]                                    ; $7b9e: $0a
    ld [$a510], a                                 ; $7b9f: $ea $10 $a5
    ld a, [de]                                    ; $7ba2: $1a
    ld [c], a                                     ; $7ba3: $e2
    dec e                                         ; $7ba4: $1d
    and a                                         ; $7ba5: $a7
    nop                                           ; $7ba6: $00
    ld e, b                                       ; $7ba7: $58
    and a                                         ; $7ba8: $a7
    jr @+$68                                      ; $7ba9: $18 $66

    add hl, de                                    ; $7bab: $19
    ld d, d                                       ; $7bac: $52
    dec c                                         ; $7bad: $0d
    jr jr_093_7bf0                                ; $7bae: $18 $40

    rrca                                          ; $7bb0: $0f
    inc a                                         ; $7bb1: $3c
    ld [bc], a                                    ; $7bb2: $02
    xor l                                         ; $7bb3: $ad
    and b                                         ; $7bb4: $a0
    ld e, l                                       ; $7bb5: $5d
    ld [$601d], a                                 ; $7bb6: $ea $1d $60
    nop                                           ; $7bb9: $00
    dec e                                         ; $7bba: $1d
    xor d                                         ; $7bbb: $aa
    ld e, l                                       ; $7bbc: $5d
    ld b, l                                       ; $7bbd: $45
    jr c, jr_093_7b55                             ; $7bbe: $38 $95

    ld a, b                                       ; $7bc0: $78
    ld b, l                                       ; $7bc1: $45
    nop                                           ; $7bc2: $00
    ld a, [hl-]                                   ; $7bc3: $3a
    ld a, [de]                                    ; $7bc4: $1a
    ld a, a                                       ; $7bc5: $7f
    ld a, [bc]                                    ; $7bc6: $0a
    ld [hl], b                                    ; $7bc7: $70
    sbc c                                         ; $7bc8: $99
    ld [hl], b                                    ; $7bc9: $70
    ld a, [bc]                                    ; $7bca: $0a
    add hl, de                                    ; $7bcb: $19
    ldh a, [$99]                                  ; $7bcc: $f0 $99
    ld [hl], b                                    ; $7bce: $70
    ld [hl], b                                    ; $7bcf: $70
    ld a, [hl+]                                   ; $7bd0: $2a
    ld h, b                                       ; $7bd1: $60
    ld [bc], a                                    ; $7bd2: $02
    inc c                                         ; $7bd3: $0c
    db $10                                        ; $7bd4: $10
    ld h, h                                       ; $7bd5: $64
    ld [bc], a                                    ; $7bd6: $02
    nop                                           ; $7bd7: $00
    and a                                         ; $7bd8: $a7
    jr jr_093_7c3f                                ; $7bd9: $18 $64

    jr jr_093_7c24                                ; $7bdb: $18 $47

    cp b                                          ; $7bdd: $b8
    or a                                          ; $7bde: $b7
    ld hl, sp+$00                                 ; $7bdf: $f8 $00
    dec b                                         ; $7be1: $05
    ld hl, sp-$6b                                 ; $7be2: $f8 $95
    ld a, d                                       ; $7be4: $7a
    ld b, l                                       ; $7be5: $45
    cp b                                          ; $7be6: $b8
    sub l                                         ; $7be7: $95

jr_093_7be8:
    ld a, b                                       ; $7be8: $78
    nop                                           ; $7be9: $00
    pop hl                                        ; $7bea: $e1
    ld e, $a8                                     ; $7beb: $1e $a8
    rra                                           ; $7bed: $1f
    and b                                         ; $7bee: $a0
    ld e, a                                       ; $7bef: $5f

jr_093_7bf0:
    ld l, a                                       ; $7bf0: $6f
    rra                                           ; $7bf1: $1f
    nop                                           ; $7bf2: $00
    and d                                         ; $7bf3: $a2
    dec e                                         ; $7bf4: $1d
    ld h, a                                       ; $7bf5: $67
    sbc b                                         ; $7bf6: $98
    ld h, l                                       ; $7bf7: $65
    jr jr_093_7c61                                ; $7bf8: $18 $67

    sbc b                                         ; $7bfa: $98
    and b                                         ; $7bfb: $a0
    jr c, jr_093_7c16                             ; $7bfc: $38 $18

    push af                                       ; $7bfe: $f5
    or b                                          ; $7bff: $b0
    db $10                                        ; $7c00: $10
    or l                                          ; $7c01: $b5
    nop                                           ; $7c02: $00
    ld d, d                                       ; $7c03: $52
    xor l                                         ; $7c04: $ad
    ld d, c                                       ; $7c05: $51
    inc b                                         ; $7c06: $04
    ld c, $18                                     ; $7c07: $0e $18
    rrca                                          ; $7c09: $0f
    or d                                          ; $7c0a: $b2
    dec c                                         ; $7c0b: $0d
    or b                                          ; $7c0c: $b0
    ld [$1fe8], sp                                ; $7c0d: $08 $e8 $1f
    ld [$1c63], sp                                ; $7c10: $08 $63 $1c
    xor b                                         ; $7c13: $a8
    ld e, a                                       ; $7c14: $5f
    ld d, b                                       ; $7c15: $50

jr_093_7c16:
    ld bc, $85b8                                  ; $7c16: $01 $b8 $85
    ld a, [hl-]                                   ; $7c19: $3a
    nop                                           ; $7c1a: $00
    ld a, [de]                                    ; $7c1b: $1a
    rst $38                                       ; $7c1c: $ff
    dec c                                         ; $7c1d: $0d
    jr nc, jr_093_7c38                            ; $7c1e: $30 $18

    ldh a, [$8a]                                  ; $7c20: $f0 $8a
    ld [hl], b                                    ; $7c22: $70
    inc b                                         ; $7c23: $04

jr_093_7c24:
    jr jr_093_7c16                                ; $7c24: $18 $f0

    and [hl]                                      ; $7c26: $a6
    jr @+$67                                      ; $7c27: $18 $65

    ld d, b                                       ; $7c29: $50
    nop                                           ; $7c2a: $00
    or l                                          ; $7c2b: $b5
    ld hl, sp+$50                                 ; $7c2c: $f8 $50
    ld d, a                                       ; $7c2e: $57
    db $ec                                        ; $7c2f: $ec
    nop                                           ; $7c30: $00
    ld d, l                                       ; $7c31: $55
    cp h                                          ; $7c32: $bc
    nop                                           ; $7c33: $00
    pop hl                                        ; $7c34: $e1
    ld e, $6a                                     ; $7c35: $1e $6a
    dec e                                         ; $7c37: $1d

jr_093_7c38:
    db $10                                        ; $7c38: $10
    ldh [$1f], a                                  ; $7c39: $e0 $1f
    rst $28                                       ; $7c3b: $ef
    ld d, b                                       ; $7c3c: $50
    nop                                           ; $7c3d: $00
    rst $20                                       ; $7c3e: $e7

jr_093_7c3f:
    jr jr_093_7be8                                ; $7c3f: $18 $a7

    jr jr_093_7c43                                ; $7c41: $18 $00

jr_093_7c43:
    and [hl]                                      ; $7c43: $a6
    ld e, c                                       ; $7c44: $59
    jp z, Jump_093_5830                           ; $7c45: $ca $30 $58

    or b                                          ; $7c48: $b0
    ld [$00f0], sp                                ; $7c49: $08 $f0 $00
    ld a, [$b8f0]                                 ; $7c4c: $fa $f0 $b8
    nop                                           ; $7c4f: $00
    ld a, [de]                                    ; $7c50: $1a
    nop                                           ; $7c51: $00
    ld e, d                                       ; $7c52: $5a
    nop                                           ; $7c53: $00
    ld de, $0018                                  ; $7c54: $11 $18 $00
    push de                                       ; $7c57: $d5
    ldh [rP1], a                                  ; $7c58: $e0 $00
    push de                                       ; $7c5a: $d5
    ld a, [bc]                                    ; $7c5b: $0a
    sbc d                                         ; $7c5c: $9a
    add h                                         ; $7c5d: $84
    inc bc                                        ; $7c5e: $03
    ld b, h                                       ; $7c5f: $44
    sbc b                                         ; $7c60: $98

jr_093_7c61:
    inc b                                         ; $7c61: $04
    db $10                                        ; $7c62: $10
    ld a, l                                       ; $7c63: $7d
    nop                                           ; $7c64: $00
    sbc d                                         ; $7c65: $9a
    db $10                                        ; $7c66: $10
    inc de                                        ; $7c67: $13
    nop                                           ; $7c68: $00
    rst $38                                       ; $7c69: $ff
    nop                                           ; $7c6a: $00
    add hl, de                                    ; $7c6b: $19
    cp $00                                        ; $7c6c: $fe $00
    cp $19                                        ; $7c6e: $fe $19
    cp $67                                        ; $7c70: $fe $67
    jr @+$42                                      ; $7c72: $18 $40

    and h                                         ; $7c74: $a4
    and b                                         ; $7c75: $a0
    jr nz, jr_093_7ccd                            ; $7c76: $20 $55

    cp d                                          ; $7c78: $ba
    dec b                                         ; $7c79: $05
    ld hl, sp+$15                                 ; $7c7a: $f8 $15
    ld hl, sp+$0a                                 ; $7c7c: $f8 $0a
    ld [hl+], a                                   ; $7c7e: $22
    db $dd                                        ; $7c7f: $dd
    sub c                                         ; $7c80: $91
    ld l, [hl]                                    ; $7c81: $6e
    ld l, a                                       ; $7c82: $6f
    ld c, $05                                     ; $7c83: $0e $05
    sbc $04                                       ; $7c85: $de $04
    rlca                                          ; $7c87: $07
    add b                                         ; $7c88: $80
    ldh a, [$03]                                  ; $7c89: $f0 $03
    add e                                         ; $7c8b: $83
    ld a, l                                       ; $7c8c: $7d
    ld [$11f7], sp                                ; $7c8d: $08 $f7 $11
    rst $28                                       ; $7c90: $ef
    ld [$f702], sp                                ; $7c91: $08 $02 $f7
    ld bc, $a0ff                                  ; $7c94: $01 $ff $a0
    rst $38                                       ; $7c97: $ff
    ld [hl], l                                    ; $7c98: $75
    nop                                           ; $7c99: $00
    inc b                                         ; $7c9a: $04
    rst $38                                       ; $7c9b: $ff
    ld b, $f4                                     ; $7c9c: $06 $f4
    rst $38                                       ; $7c9e: $ff
    jp c, $74ff                                   ; $7c9f: $da $ff $74

    inc b                                         ; $7ca2: $04
    nop                                           ; $7ca3: $00
    ld [$5020], sp                                ; $7ca4: $08 $20 $50
    nop                                           ; $7ca7: $00
    ld c, $19                                     ; $7ca8: $0e $19
    ld c, $10                                     ; $7caa: $0e $10
    rrca                                          ; $7cac: $0f
    ld e, a                                       ; $7cad: $5f
    rrca                                          ; $7cae: $0f
    ld a, [de]                                    ; $7caf: $1a
    add b                                         ; $7cb0: $80
    xor b                                         ; $7cb1: $a8
    ld bc, $005a                                  ; $7cb2: $01 $5a $00
    add hl, de                                    ; $7cb5: $19
    nop                                           ; $7cb6: $00
    add b                                         ; $7cb7: $80
    ld a, l                                       ; $7cb8: $7d
    ld a, [de]                                    ; $7cb9: $1a

jr_093_7cba:
    inc b                                         ; $7cba: $04
    db $fd                                        ; $7cbb: $fd
    nop                                           ; $7cbc: $00
    db $fd                                        ; $7cbd: $fd
    ld a, [$c4fd]                                 ; $7cbe: $fa $fd $c4
    nop                                           ; $7cc1: $00
    dec c                                         ; $7cc2: $0d
    ld [de], a                                    ; $7cc3: $12
    ld e, $0d                                     ; $7cc4: $1e $0d
    ld e, b                                       ; $7cc6: $58
    rrca                                          ; $7cc7: $0f
    inc d                                         ; $7cc8: $14
    ld [$4ba0], sp                                ; $7cc9: $08 $a0 $4b
    ld b, b                                       ; $7ccc: $40

jr_093_7ccd:
    add hl, de                                    ; $7ccd: $19
    and b                                         ; $7cce: $a0
    dec sp                                        ; $7ccf: $3b
    add c                                         ; $7cd0: $81
    sub [hl]                                      ; $7cd1: $96
    ld e, h                                       ; $7cd2: $5c
    dec [hl]                                      ; $7cd3: $35
    ret nz                                        ; $7cd4: $c0

    cp a                                          ; $7cd5: $bf
    ld d, b                                       ; $7cd6: $50
    dec c                                         ; $7cd7: $0d
    rst $38                                       ; $7cd8: $ff
    ld c, b                                       ; $7cd9: $48
    dec b                                         ; $7cda: $05
    ld d, b                                       ; $7cdb: $50
    dec l                                         ; $7cdc: $2d
    inc bc                                        ; $7cdd: $03
    adc h                                         ; $7cde: $8c
    db $ec                                        ; $7cdf: $ec
    rlca                                          ; $7ce0: $07
    xor d                                         ; $7ce1: $aa
    db $10                                        ; $7ce2: $10
    ld l, b                                       ; $7ce3: $68
    or b                                          ; $7ce4: $b0
    inc de                                        ; $7ce5: $13
    ldh a, [$0c]                                  ; $7ce6: $f0 $0c
    add d                                         ; $7ce8: $82
    ld e, l                                       ; $7ce9: $5d
    db $10                                        ; $7cea: $10
    dec h                                         ; $7ceb: $25
    ret c                                         ; $7cec: $d8

    ld d, [hl]                                    ; $7ced: $56
    and b                                         ; $7cee: $a0
    inc h                                         ; $7cef: $24
    ld [bc], a                                    ; $7cf0: $02
    db $fd                                        ; $7cf1: $fd
    ld d, l                                       ; $7cf2: $55
    cp b                                          ; $7cf3: $b8
    ld [$b806], sp                                ; $7cf4: $08 $06 $b8
    ld d, l                                       ; $7cf7: $55
    cp b                                          ; $7cf8: $b8
    jr nz, jr_093_7d25                            ; $7cf9: $20 $2a

    xor d                                         ; $7cfb: $aa
    ld d, l                                       ; $7cfc: $55
    xor a                                         ; $7cfd: $af
    ld [bc], a                                    ; $7cfe: $02
    nop                                           ; $7cff: $00
    ld e, l                                       ; $7d00: $5d
    and b                                         ; $7d01: $a0
    or d                                          ; $7d02: $b2
    inc b                                         ; $7d03: $04
    xor e                                         ; $7d04: $ab
    ldh [$03], a                                  ; $7d05: $e0 $03
    ld c, e                                       ; $7d07: $4b
    jr nc, jr_093_7cba                            ; $7d08: $30 $b0

    cp c                                          ; $7d0a: $b9
    ld h, b                                       ; $7d0b: $60
    inc b                                         ; $7d0c: $04
    ldh a, [rNR31]                                ; $7d0d: $f0 $1b
    ld c, b                                       ; $7d0f: $48
    sub l                                         ; $7d10: $95
    and e                                         ; $7d11: $a3
    ld e, h                                       ; $7d12: $5c
    nop                                           ; $7d13: $00
    ld b, h                                       ; $7d14: $44
    ld a, [de]                                    ; $7d15: $1a
    adc c                                         ; $7d16: $89
    ld d, [hl]                                    ; $7d17: $56
    inc b                                         ; $7d18: $04
    db $d3                                        ; $7d19: $d3
    xor d                                         ; $7d1a: $aa
    ld d, l                                       ; $7d1b: $55
    ld [$f104], sp                                ; $7d1c: $08 $04 $f1
    xor d                                         ; $7d1f: $aa
    ld d, l                                       ; $7d20: $55
    inc [hl]                                      ; $7d21: $34
    ld [$f807], sp                                ; $7d22: $08 $07 $f8

jr_093_7d25:
    ld d, a                                       ; $7d25: $57
    db $10                                        ; $7d26: $10
    cp b                                          ; $7d27: $b8
    add l                                         ; $7d28: $85
    ld a, b                                       ; $7d29: $78
    ld b, b                                       ; $7d2a: $40

jr_093_7d2b:
    ld [$38d5], sp                                ; $7d2b: $08 $d5 $38
    ld a, [hl+]                                   ; $7d2e: $2a
    sub b                                         ; $7d2f: $90
    nop                                           ; $7d30: $00
    add sp, $10                                   ; $7d31: $e8 $10
    dec l                                         ; $7d33: $2d
    sub b                                         ; $7d34: $90
    ld [$6215], a                                 ; $7d35: $ea $15 $62
    sbc l                                         ; $7d38: $9d
    ld b, b                                       ; $7d39: $40
    and a                                         ; $7d3a: $a7
    or b                                          ; $7d3b: $b0
    ld [bc], a                                    ; $7d3c: $02
    rst $20                                       ; $7d3d: $e7
    jr jr_093_7d46                                ; $7d3e: $18 $06

    ld a, b                                       ; $7d40: $78
    sub [hl]                                      ; $7d41: $96
    ld a, b                                       ; $7d42: $78
    adc [hl]                                      ; $7d43: $8e
    sub b                                         ; $7d44: $90
    ld c, e                                       ; $7d45: $4b

jr_093_7d46:
    or l                                          ; $7d46: $b5
    nop                                           ; $7d47: $00
    or $40                                        ; $7d48: $f6 $40
    inc d                                         ; $7d4a: $14
    ld h, b                                       ; $7d4b: $60
    dec l                                         ; $7d4c: $2d
    ld d, h                                       ; $7d4d: $54
    add hl, bc                                    ; $7d4e: $09
    ld a, [de]                                    ; $7d4f: $1a
    dec e                                         ; $7d50: $1d
    nop                                           ; $7d51: $00
    ld d, l                                       ; $7d52: $55
    ld a, [bc]                                    ; $7d53: $0a
    inc a                                         ; $7d54: $3c

jr_093_7d55:
    inc c                                         ; $7d55: $0c
    call c, $d01c                                 ; $7d56: $dc $1c $d0
    jr jr_093_7d65                                ; $7d59: $18 $0a

    ret c                                         ; $7d5b: $d8

    inc b                                         ; $7d5c: $04
    add b                                         ; $7d5d: $80
    inc b                                         ; $7d5e: $04
    ld [$fc02], sp                                ; $7d5f: $08 $02 $fc
    add hl, de                                    ; $7d62: $19
    cp $02                                        ; $7d63: $fe $02

jr_093_7d65:
    db $fc                                        ; $7d65: $fc
    ld hl, sp+$20                                 ; $7d66: $f8 $20
    cp $b0                                        ; $7d68: $fe $b0
    jr jr_093_7d6d                                ; $7d6a: $18 $01

    ld d, b                                       ; $7d6c: $50

jr_093_7d6d:
    rrca                                          ; $7d6d: $0f
    add hl, de                                    ; $7d6e: $19
    ld c, $47                                     ; $7d6f: $0e $47
    jr nz, jr_093_7d2b                            ; $7d71: $20 $b8

    ld d, $a0                                     ; $7d73: $16 $a0
    ld [bc], a                                    ; $7d75: $02
    ld e, d                                       ; $7d76: $5a
    cp a                                          ; $7d77: $bf
    nop                                           ; $7d78: $00
    cp a                                          ; $7d79: $bf
    ld e, b                                       ; $7d7a: $58
    inc b                                         ; $7d7b: $04
    cp a                                          ; $7d7c: $bf
    ld [bc], a                                    ; $7d7d: $02
    cp l                                          ; $7d7e: $bd
    ld e, b                                       ; $7d7f: $58
    cp l                                          ; $7d80: $bd
    ld [bc], a                                    ; $7d81: $02
    ld b, $7f                                     ; $7d82: $06 $7f
    cp a                                          ; $7d84: $bf
    ld b, b                                       ; $7d85: $40
    ret nz                                        ; $7d86: $c0

    sbc $07                                       ; $7d87: $de $07
    inc e                                         ; $7d89: $1c
    db $e3                                        ; $7d8a: $e3
    ld a, $c3                                     ; $7d8b: $3e $c3
    ld a, [hl]                                    ; $7d8d: $7e
    ld e, a                                       ; $7d8e: $5f
    ld c, b                                       ; $7d8f: $48
    cp $10                                        ; $7d90: $fe $10
    cpl                                           ; $7d92: $2f
    ret nc                                        ; $7d93: $d0

    jr nc, jr_093_7d98                            ; $7d94: $30 $02

    jr jr_093_7d55                                ; $7d96: $18 $bd

jr_093_7d98:
    and $8b                                       ; $7d98: $e6 $8b
    inc bc                                        ; $7d9a: $03
    db $fc                                        ; $7d9b: $fc
    ld [hl], a                                    ; $7d9c: $77
    ld hl, sp-$7d                                 ; $7d9d: $f8 $83
    rst $38                                       ; $7d9f: $ff
    ld a, h                                       ; $7da0: $7c
    ld e, d                                       ; $7da1: $5a
    ld b, $80                                     ; $7da2: $06 $80
    rrca                                          ; $7da4: $0f
    add b                                         ; $7da5: $80
    jr jr_093_7da8                                ; $7da6: $18 $00

jr_093_7da8:
    ld [hl], b                                    ; $7da8: $70
    and b                                         ; $7da9: $a0
    ldh a, [rNR41]                                ; $7daa: $f0 $20
    ldh a, [rLCDC]                                ; $7dac: $f0 $40
    ldh [rNR41], a                                ; $7dae: $e0 $20
    add b                                         ; $7db0: $80
    ldh [$d0], a                                  ; $7db1: $e0 $d0
    ld d, $0f                                     ; $7db3: $16 $0f
    scf                                           ; $7db5: $37
    jr c, jr_093_7e17                             ; $7db6: $38 $5f

    ld h, b                                       ; $7db8: $60
    nop                                           ; $7db9: $00
    cp a                                          ; $7dba: $bf

jr_093_7dbb:
    jp $87fc                                      ; $7dbb: $c3 $fc $87


    ld a, b                                       ; $7dbe: $78
    adc a                                         ; $7dbf: $8f
    db $eb                                        ; $7dc0: $eb
    rra                                           ; $7dc1: $1f
    jr nc, jr_093_7dbb                            ; $7dc2: $30 $f7

    inc e                                         ; $7dc4: $1c
    jr nc, jr_093_7dd6                            ; $7dc5: $30 $0f

    sbc [hl]                                      ; $7dc7: $9e
    inc c                                         ; $7dc8: $0c
    ld a, d                                       ; $7dc9: $7a
    add $7a                                       ; $7dca: $c6 $7a
    add $00                                       ; $7dcc: $c6 $00
    ld a, [$bac6]                                 ; $7dce: $fa $c6 $ba
    add $f1                                       ; $7dd1: $c6 $f1
    rra                                           ; $7dd3: $1f
    ld l, [hl]                                    ; $7dd4: $6e
    sbc a                                         ; $7dd5: $9f

jr_093_7dd6:
    ld b, $30                                     ; $7dd6: $06 $30
    rst $38                                       ; $7dd8: $ff
    adc a                                         ; $7dd9: $8f
    rst $38                                       ; $7dda: $ff
    ld [hl], b                                    ; $7ddb: $70
    jr jr_093_7de3                                ; $7ddc: $18 $05

    ret nz                                        ; $7dde: $c0

    rrca                                          ; $7ddf: $0f
    ld a, d                                       ; $7de0: $7a
    nop                                           ; $7de1: $00
    adc [hl]                                      ; $7de2: $8e

jr_093_7de3:
    db $f4                                        ; $7de3: $f4
    ld e, $64                                     ; $7de4: $1e $64
    cp $88                                        ; $7de6: $fe $88
    db $fc                                        ; $7de8: $fc
    ld [hl], b                                    ; $7de9: $70
    ld sp, hl                                     ; $7dea: $f9
    db $10                                        ; $7deb: $10
    daa                                           ; $7dec: $27
    sub b                                         ; $7ded: $90
    rrca                                          ; $7dee: $0f
    ld d, b                                       ; $7def: $50
    ld c, l                                       ; $7df0: $4d
    and b                                         ; $7df1: $a0
    rla                                           ; $7df2: $17
    ld d, b                                       ; $7df3: $50
    ld b, l                                       ; $7df4: $45
    add b                                         ; $7df5: $80
    add b                                         ; $7df6: $80
    and c                                         ; $7df7: $a1
    rlca                                          ; $7df8: $07
    add b                                         ; $7df9: $80
    inc b                                         ; $7dfa: $04
    nop                                           ; $7dfb: $00
    add a                                         ; $7dfc: $87
    add a                                         ; $7dfd: $87
    dec de                                        ; $7dfe: $1b
    sbc h                                         ; $7dff: $9c
    xor [hl]                                      ; $7e00: $ae
    or c                                          ; $7e01: $b1
    ccf                                           ; $7e02: $3f
    ld b, b                                       ; $7e03: $40
    or a                                          ; $7e04: $b7
    or l                                          ; $7e05: $b5
    ld d, $00                                     ; $7e06: $16 $00
    db $fc                                        ; $7e08: $fc
    db $fc                                        ; $7e09: $fc
    ld a, d                                       ; $7e0a: $7a
    add [hl]                                      ; $7e0b: $86
    rst $38                                       ; $7e0c: $ff
    nop                                           ; $7e0d: $00
    ld bc, $f1fe                                  ; $7e0e: $01 $fe $f1
    rrca                                          ; $7e11: $0f
    ld hl, sp-$58                                 ; $7e12: $f8 $a8
    cp a                                          ; $7e14: $bf
    cpl                                           ; $7e15: $2f
    nop                                           ; $7e16: $00

jr_093_7e17:
    cp a                                          ; $7e17: $bf
    sbc a                                         ; $7e18: $9f
    sbc [hl]                                      ; $7e19: $9e
    dec e                                         ; $7e1a: $1d
    sub e                                         ; $7e1b: $93
    sbc a                                         ; $7e1c: $9f
    sub b                                         ; $7e1d: $90
    inc de                                        ; $7e1e: $13
    nop                                           ; $7e1f: $00
    sbc a                                         ; $7e20: $9f
    adc b                                         ; $7e21: $88
    sbc a                                         ; $7e22: $9f
    rlca                                          ; $7e23: $07
    sbc a                                         ; $7e24: $9f
    rst $38                                       ; $7e25: $ff
    ld hl, sp+$7f                                 ; $7e26: $f8 $7f
    nop                                           ; $7e28: $00
    adc b                                         ; $7e29: $88
    cp $71                                        ; $7e2a: $fe $71
    cp [hl]                                       ; $7e2c: $be
    jp Jump_000_0ffc                              ; $7e2d: $c3 $fc $0f


    pop hl                                        ; $7e30: $e1
    nop                                           ; $7e31: $00
    rst $38                                       ; $7e32: $ff
    ld b, $ff                                     ; $7e33: $06 $ff
    ld hl, sp-$01                                 ; $7e35: $f8 $ff
    add b                                         ; $7e37: $80
    adc a                                         ; $7e38: $8f
    rrca                                          ; $7e39: $0f
    nop                                           ; $7e3a: $00
    adc a                                         ; $7e3b: $8f
    sub [hl]                                      ; $7e3c: $96
    sbc c                                         ; $7e3d: $99
    cpl                                           ; $7e3e: $2f
    or b                                          ; $7e3f: $b0
    cp h                                          ; $7e40: $bc
    cp a                                          ; $7e41: $bf
    ld hl, $bf03                                  ; $7e42: $21 $03 $bf
    sbc h                                         ; $7e45: $9c
    sbc a                                         ; $7e46: $9f
    dec bc                                        ; $7e47: $0b
    adc a                                         ; $7e48: $8f
    nop                                           ; $7e49: $00
    ld [c], a                                     ; $7e4a: $e2
    nop                                           ; $7e4b: $00
    ld b, d                                       ; $7e4c: $42
    dec e                                         ; $7e4d: $1d
    nop                                           ; $7e4e: $00
    sbc [hl]                                      ; $7e4f: $9e
    ld [c], a                                     ; $7e50: $e2
    dec l                                         ; $7e51: $2d
    di                                            ; $7e52: $f3
    rra                                           ; $7e53: $1f
    pop af                                        ; $7e54: $f1
    ld hl, sp-$01                                 ; $7e55: $f8 $ff
    nop                                           ; $7e57: $00
    rst $28                                       ; $7e58: $ef
    sbc [hl]                                      ; $7e59: $9e
    cp l                                          ; $7e5a: $bd
    jp $f0ef                                      ; $7e5b: $c3 $ef $f0


    sbc l                                         ; $7e5e: $9d
    cp $00                                        ; $7e5f: $fe $00
    ld h, e                                       ; $7e61: $63
    rst $38                                       ; $7e62: $ff
    sbc b                                         ; $7e63: $98
    rst $38                                       ; $7e64: $ff

jr_093_7e65:
    rlca                                          ; $7e65: $07
    cp a                                          ; $7e66: $bf
    rst $18                                       ; $7e67: $df
    pop af                                        ; $7e68: $f1

jr_093_7e69:
    nop                                           ; $7e69: $00
    xor a                                         ; $7e6a: $af
    ld [hl], c                                    ; $7e6b: $71
    db $dd                                        ; $7e6c: $dd
    db $e3                                        ; $7e6d: $e3

jr_093_7e6e:
    cp $02                                        ; $7e6e: $fe $02
    or $0e                                        ; $7e70: $f6 $0e
    ld b, b                                       ; $7e72: $40
    db $fc                                        ; $7e73: $fc
    inc h                                         ; $7e74: $24
    dec b                                         ; $7e75: $05
    ld l, b                                       ; $7e76: $68

jr_093_7e77:
    sbc h                                         ; $7e77: $9c
    sbc e                                         ; $7e78: $9b
    sbc h                                         ; $7e79: $9c
    cpl                                           ; $7e7a: $2f
    or b                                          ; $7e7b: $b0
    nop                                           ; $7e7c: $00
    ld sp, hl                                     ; $7e7d: $f9
    rst $00                                       ; $7e7e: $c7
    or h                                          ; $7e7f: $b4
    rst $08                                       ; $7e80: $cf
    ld hl, sp-$71                                 ; $7e81: $f8 $8f
    ei                                            ; $7e83: $fb
    adc a                                         ; $7e84: $8f

jr_093_7e85:
    nop                                           ; $7e85: $00
    push af                                       ; $7e86: $f5
    adc [hl]                                      ; $7e87: $8e
    cp e                                          ; $7e88: $bb
    rst $00                                       ; $7e89: $c7
    db $f4                                        ; $7e8a: $f4

jr_093_7e8b:
    inc c                                         ; $7e8b: $0c
    inc a                                         ; $7e8c: $3c
    db $fc                                        ; $7e8d: $fc
    nop                                           ; $7e8e: $00
    add h                                         ; $7e8f: $84
    db $fc                                        ; $7e90: $fc
    jr c, jr_093_7e8b                             ; $7e91: $38 $f8

    ret nc                                        ; $7e93: $d0

    ldh a, [rNR34]                                ; $7e94: $f0 $1e
    cp $00                                        ; $7e96: $fe $00
    rst $30                                       ; $7e98: $f7
    ld a, c                                       ; $7e99: $79
    cp l                                          ; $7e9a: $bd
    jp $c0ff                                      ; $7e9b: $c3 $ff $c0


    ld l, a                                       ; $7e9e: $6f
    ldh a, [rSCY]                                 ; $7e9f: $f0 $42
    cp a                                          ; $7ea1: $bf
    inc [hl]                                      ; $7ea2: $34
    dec b                                         ; $7ea3: $05
    adc a                                         ; $7ea4: $8f
    cp a                                          ; $7ea5: $bf
    nop                                           ; $7ea6: $00
    sbc a                                         ; $7ea7: $9f
    ld h, e                                       ; $7ea8: $63
    rlca                                          ; $7ea9: $07
    add b                                         ; $7eaa: $80
    ld [bc], a                                    ; $7eab: $02
    rst $30                                       ; $7eac: $f7
    rrca                                          ; $7ead: $0f
    cp c                                          ; $7eae: $b9
    ld a, a                                       ; $7eaf: $7f
    add $ff                                       ; $7eb0: $c6 $ff
    ldh a, [rNR22]                                ; $7eb2: $f0 $17
    ldh a, [rIF]                                  ; $7eb4: $f0 $0f
    nop                                           ; $7eb6: $00
    ret nz                                        ; $7eb7: $c0

    db $fc                                        ; $7eb8: $fc
    db $fc                                        ; $7eb9: $fc
    cp b                                          ; $7eba: $b8
    jr z, jr_093_7e65                             ; $7ebb: $28 $a8

    jr z, jr_093_7e77                             ; $7ebd: $28 $b8

    jr z, jr_093_7e69                             ; $7ebf: $28 $a8

    jr z, jr_093_7e85                             ; $7ec1: $28 $c2

    cp b                                          ; $7ec3: $b8
    jr z, jr_093_7e6e                             ; $7ec4: $28 $a8

    ld [$9897], sp                                ; $7ec6: $08 $97 $98
    cpl                                           ; $7ec9: $2f
    or b                                          ; $7eca: $b0
    cp b                                          ; $7ecb: $b8
    jr z, jr_093_7ece                             ; $7ecc: $28 $00

jr_093_7ece:
    nop                                           ; $7ece: $00
    cp $f0                                        ; $7ecf: $fe $f0
    ldh a, [$ec]                                  ; $7ed1: $f0 $ec
    inc e                                         ; $7ed3: $1c
    ld a, [$df06]                                 ; $7ed4: $fa $06 $df
    nop                                           ; $7ed7: $00
    pop hl                                        ; $7ed8: $e1
    ld e, [hl]                                    ; $7ed9: $5e
    db $e3                                        ; $7eda: $e3
    sbc $e3                                       ; $7edb: $de $e3
    ld e, a                                       ; $7edd: $5f
    db $e3                                        ; $7ede: $e3
    db $dd                                        ; $7edf: $dd
    add b                                         ; $7ee0: $80
    sub $05                                       ; $7ee1: $d6 $05
    xor a                                         ; $7ee3: $af
    ld hl, sp+$26                                 ; $7ee4: $f8 $26
    rst $38                                       ; $7ee6: $ff
    db $fd                                        ; $7ee7: $fd
    jp Jump_000_003f                              ; $7ee8: $c3 $3f $00


    pop hl                                        ; $7eeb: $e1
    ld e, $f1                                     ; $7eec: $1e $f1
    rst $10                                       ; $7eee: $d7
    ld hl, sp-$11                                 ; $7eef: $f8 $ef
    jr c, @-$6f                                   ; $7ef1: $38 $8f

    nop                                           ; $7ef3: $00
    ld hl, sp+$76                                 ; $7ef4: $f8 $76
    ld sp, hl                                     ; $7ef6: $f9
    inc c                                         ; $7ef7: $0c
    rst $38                                       ; $7ef8: $ff

    db $00, $00, $ff, $7f, $05, $54, $01, $14, $7d, $5b, $52, $3e, $49, $25, $82, $18
    db $3e, $53, $f6, $25, $ad, $04, $23, $00, $ae, $1e, $e8, $1d, $01, $0d, $60, $04
    db $7d, $5b, $3e, $53, $10, $09, $65, $00, $73, $56, $6b, $3d, $84, $28, $00, $1c
    db $fa, $72, $13, $5e, $2b, $3d, $44, $1c, $ff, $53, $9c, $02, $16, $01, $0f, $00
    db $01, $04, $ff, $7f, $15, $54, $15, $54, $13, $7e, $8e, $61, $c8, $44, $01, $28
    db $4e, $6e, $49, $49, $a5, $30, $01, $18, $95, $11, $0e, $11, $88, $14, $01, $18
    db $7f, $2e, $97, $1d, $ce, $10, $26, $0c, $a7, $40, $65, $2c, $43, $1c, $02, $0c
    db $1c, $42, $0e, $2d, $c8, $44, $05, $04, $2b, $59, $c8, $40, $64, $28, $00, $10

    nop                                           ; $7f79: $00
    inc c                                         ; $7f7a: $0c
    nop                                           ; $7f7b: $00
    inc h                                         ; $7f7c: $24
    nop                                           ; $7f7d: $00
    ld b, b                                       ; $7f7e: $40
    nop                                           ; $7f7f: $00
    inc d                                         ; $7f80: $14
    nop                                           ; $7f81: $00
    jr nz, jr_093_7fc4                            ; $7f82: $20 $40

    inc [hl]                                      ; $7f84: $34
    ld b, b                                       ; $7f85: $40
    ld c, h                                       ; $7f86: $4c
    jr nz, jr_093_7ff2                            ; $7f87: $20 $69

    jr nz, jr_093_7fb7                            ; $7f89: $20 $2c

    or b                                          ; $7f8b: $b0
    ld de, $00cb                                  ; $7f8c: $11 $cb $00
    ld [hl], l                                    ; $7f8f: $75
    ld h, $21                                     ; $7f90: $26 $21
    jr nz, jr_093_7f94                            ; $7f92: $20 $00

jr_093_7f94:
    add hl, bc                                    ; $7f94: $09
    nop                                           ; $7f95: $00
    ld [de], a                                    ; $7f96: $12
    pop af                                        ; $7f97: $f1
    ld bc, $1c05                                  ; $7f98: $01 $05 $1c
    dec bc                                        ; $7f9b: $0b
    inc [hl]                                      ; $7f9c: $34
    ld de, $204c                                  ; $7f9d: $11 $4c $20
    inc l                                         ; $7fa0: $2c
    sra h                                         ; $7fa1: $cb $2c
    ld h, a                                       ; $7fa3: $67
    jr nz, jr_093_7feb                            ; $7fa4: $20 $45

    inc e                                         ; $7fa6: $1c
    xor a                                         ; $7fa7: $af
    dec c                                         ; $7fa8: $0d
    ld b, b                                       ; $7fa9: $40
    ld c, h                                       ; $7faa: $4c
    dec c                                         ; $7fab: $0d
    ld bc, $0068                                  ; $7fac: $01 $68 $00
    ld [hl], $0e                                  ; $7faf: $36 $0e
    nop                                           ; $7fb1: $00
    jr nz, jr_093_7fe7                            ; $7fb2: $20 $33

    ld e, $af                                     ; $7fb4: $1e $af
    dec c                                         ; $7fb6: $0d

jr_093_7fb7:
    jr @+$35                                      ; $7fb7: $18 $33

    ld bc, $ff00                                  ; $7fb9: $01 $00 $ff
    ld a, a                                       ; $7fbc: $7f
    dec d                                         ; $7fbd: $15
    ld d, h                                       ; $7fbe: $54
    dec d                                         ; $7fbf: $15
    ld d, h                                       ; $7fc0: $54
    ld [hl], l                                    ; $7fc1: $75
    ld b, d                                       ; $7fc2: $42
    or c                                          ; $7fc3: $b1

jr_093_7fc4:
    add hl, hl                                    ; $7fc4: $29
    call z, Call_093_4414                         ; $7fc5: $cc $14 $44
    inc b                                         ; $7fc8: $04
    pop de                                        ; $7fc9: $d1
    ld sp, $192d                                  ; $7fca: $31 $2d $19
    ld l, c                                       ; $7fcd: $69
    ld [$0024], sp                                ; $7fce: $08 $24 $00
    inc d                                         ; $7fd1: $14
    ld [hl], $31                                  ; $7fd2: $36 $31
    dec e                                         ; $7fd4: $1d
    ld l, h                                       ; $7fd5: $6c
    ld [$0027], sp                                ; $7fd6: $08 $27 $00
    rst $30                                       ; $7fd9: $f7
    ld d, d                                       ; $7fda: $52
    rst $28                                       ; $7fdb: $ef
    dec [hl]                                      ; $7fdc: $35
    add sp, $24                                   ; $7fdd: $e8 $24
    inc hl                                        ; $7fdf: $23
    db $10                                        ; $7fe0: $10
    ld c, l                                       ; $7fe1: $4d
    ld hl, $08a9                                  ; $7fe2: $21 $a9 $08
    dec b                                         ; $7fe5: $05
    nop                                           ; $7fe6: $00

jr_093_7fe7:
    nop                                           ; $7fe7: $00
    nop                                           ; $7fe8: $00
    sub $6a                                       ; $7fe9: $d6 $6a

jr_093_7feb:
    adc $51                                       ; $7feb: $ce $51
    rst $00                                       ; $7fed: $c7
    inc [hl]                                      ; $7fee: $34
    ld [hl+], a                                   ; $7fef: $22
    inc e                                         ; $7ff0: $1c
    sbc [hl]                                      ; $7ff1: $9e

jr_093_7ff2:
    ld h, e                                       ; $7ff2: $63
    inc de                                        ; $7ff3: $13
    ld [hl], $2d                                  ; $7ff4: $36 $2d
    add hl, de                                    ; $7ff6: $19
    ld b, [hl]                                    ; $7ff7: $46
    nop                                           ; $7ff8: $00
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff

Jump_093_7fff:
    rst $38                                       ; $7fff: $ff
