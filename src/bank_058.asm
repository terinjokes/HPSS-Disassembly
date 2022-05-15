; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $058", ROMX[$4000], BANK[$58]

    ld e, b                                       ; $4000: $58
    add hl, hl                                    ; $4001: $29
    call nc, Call_000_27e8                        ; $4002: $d4 $e8 $27
    db $fc                                        ; $4005: $fc
    ld c, $ff                                     ; $4006: $0e $ff
    inc de                                        ; $4008: $13
    ld b, a                                       ; $4009: $47
    dec l                                         ; $400a: $2d

jr_058_400b:
    jp hl                                         ; $400b: $e9


    xor e                                         ; $400c: $ab
    inc a                                         ; $400d: $3c
    jp nz, Jump_058_7a95                          ; $400e: $c2 $95 $7a

    ld a, l                                       ; $4011: $7d
    inc e                                         ; $4012: $1c
    halt                                          ; $4013: $76
    ld [c], a                                     ; $4014: $e2
    ld l, e                                       ; $4015: $6b
    ld l, e                                       ; $4016: $6b
    ld a, l                                       ; $4017: $7d
    sub l                                         ; $4018: $95
    sub a                                         ; $4019: $97
    cp b                                          ; $401a: $b8
    xor c                                         ; $401b: $a9
    rra                                           ; $401c: $1f
    add [hl]                                      ; $401d: $86
    dec [hl]                                      ; $401e: $35
    ld e, [hl]                                    ; $401f: $5e
    ld c, $0b                                     ; $4020: $0e $0b
    sbc l                                         ; $4022: $9d
    xor [hl]                                      ; $4023: $ae
    ld a, [c]                                     ; $4024: $f2
    sub h                                         ; $4025: $94
    ld a, c                                       ; $4026: $79
    adc c                                         ; $4027: $89
    sbc e                                         ; $4028: $9b
    ld a, [$e961]                                 ; $4029: $fa $61 $e9
    ld a, d                                       ; $402c: $7a
    xor c                                         ; $402d: $a9
    ld de, $493d                                  ; $402e: $11 $3d $49
    ld l, $3a                                     ; $4031: $2e $3a
    rst $10                                       ; $4033: $d7
    jr nc, jr_058_406b                            ; $4034: $30 $35

    sbc h                                         ; $4036: $9c
    dec hl                                        ; $4037: $2b
    ld e, b                                       ; $4038: $58
    inc l                                         ; $4039: $2c
    ld a, e                                       ; $403a: $7b
    jp hl                                         ; $403b: $e9


Call_058_403c:
    sub e                                         ; $403c: $93
    sbc e                                         ; $403d: $9b
    adc $bc                                       ; $403e: $ce $bc
    sbc b                                         ; $4040: $98
    ld sp, $0ef6                                  ; $4041: $31 $f6 $0e
    dec [hl]                                      ; $4044: $35
    cp $aa                                        ; $4045: $fe $aa
    db $fd                                        ; $4047: $fd
    ret nc                                        ; $4048: $d0

    dec bc                                        ; $4049: $0b
    ld bc, $9e7d                                  ; $404a: $01 $7d $9e
    ld a, d                                       ; $404d: $7a
    jp c, $1c75                                   ; $404e: $da $75 $1c

    halt                                          ; $4051: $76
    ld [c], a                                     ; $4052: $e2
    ld l, e                                       ; $4053: $6b
    sub e                                         ; $4054: $93
    inc e                                         ; $4055: $1c
    sub a                                         ; $4056: $97
    ld l, [hl]                                    ; $4057: $6e
    ld a, a                                       ; $4058: $7f
    add a                                         ; $4059: $87
    or h                                          ; $405a: $b4
    ldh a, [rOBP0]                                ; $405b: $f0 $48
    ld l, d                                       ; $405d: $6a
    jp z, $ba32                                   ; $405e: $ca $32 $ba

    xor e                                         ; $4061: $ab
    ld c, $7b                                     ; $4062: $0e $7b
    daa                                           ; $4064: $27
    and $66                                       ; $4065: $e6 $66
    push af                                       ; $4067: $f5
    add d                                         ; $4068: $82
    ld b, l                                       ; $4069: $45
    cp e                                          ; $406a: $bb

jr_058_406b:
    db $f4                                        ; $406b: $f4
    dec hl                                        ; $406c: $2b
    xor a                                         ; $406d: $af
    db $e3                                        ; $406e: $e3
    jr nc, jr_058_400b                            ; $406f: $30 $9a

    xor d                                         ; $4071: $aa
    dec h                                         ; $4072: $25
    ld d, h                                       ; $4073: $54
    inc d                                         ; $4074: $14
    adc a                                         ; $4075: $8f
    xor $aa                                       ; $4076: $ee $aa
    jp $0110                                      ; $4078: $c3 $10 $01


    db $dd                                        ; $407b: $dd
    ld a, [$93e2]                                 ; $407c: $fa $e2 $93
    ld a, l                                       ; $407f: $7d
    add hl, bc                                    ; $4080: $09
    sub [hl]                                      ; $4081: $96
    db $dd                                        ; $4082: $dd
    sbc c                                         ; $4083: $99
    adc e                                         ; $4084: $8b
    cpl                                           ; $4085: $2f
    adc c                                         ; $4086: $89
    add hl, de                                    ; $4087: $19
    and a                                         ; $4088: $a7
    cp a                                          ; $4089: $bf
    cp h                                          ; $408a: $bc
    db $d3                                        ; $408b: $d3
    ret                                           ; $408c: $c9


    ld [c], a                                     ; $408d: $e2
    ld c, d                                       ; $408e: $4a
    adc l                                         ; $408f: $8d
    nop                                           ; $4090: $00
    add b                                         ; $4091: $80
    db $dd                                        ; $4092: $dd
    ld h, d                                       ; $4093: $62
    add $d8                                       ; $4094: $c6 $d8
    or d                                          ; $4096: $b2
    rra                                           ; $4097: $1f
    ld a, [hl-]                                   ; $4098: $3a
    ld d, $ed                                     ; $4099: $16 $ed
    ld a, d                                       ; $409b: $7a
    ld e, [hl]                                    ; $409c: $5e
    sub l                                         ; $409d: $95
    ld b, $6e                                     ; $409e: $06 $6e
    add hl, hl                                    ; $40a0: $29
    ld e, a                                       ; $40a1: $5f
    ld e, c                                       ; $40a2: $59
    and [hl]                                      ; $40a3: $a6
    db $f4                                        ; $40a4: $f4
    add l                                         ; $40a5: $85
    ld c, [hl]                                    ; $40a6: $4e
    ld l, $e5                                     ; $40a7: $2e $e5
    add hl, hl                                    ; $40a9: $29
    di                                            ; $40aa: $f3
    ld c, $b5                                     ; $40ab: $0e $b5
    sub b                                         ; $40ad: $90
    dec d                                         ; $40ae: $15
    adc a                                         ; $40af: $8f
    and h                                         ; $40b0: $a4
    halt                                          ; $40b1: $76
    ld [hl-], a                                   ; $40b2: $32
    jp hl                                         ; $40b3: $e9


    or $b1                                        ; $40b4: $f6 $b1
    ld h, l                                       ; $40b6: $65
    rst $20                                       ; $40b7: $e7
    rra                                           ; $40b8: $1f
    sub $ce                                       ; $40b9: $d6 $ce
    or l                                          ; $40bb: $b5
    or h                                          ; $40bc: $b4
    ld e, e                                       ; $40bd: $5b
    sub a                                         ; $40be: $97
    ret z                                         ; $40bf: $c8

    sub a                                         ; $40c0: $97
    ld h, b                                       ; $40c1: $60
    reti                                          ; $40c2: $d9


    db $e3                                        ; $40c3: $e3
    add hl, hl                                    ; $40c4: $29
    ld a, l                                       ; $40c5: $7d
    inc [hl]                                      ; $40c6: $34
    ld d, l                                       ; $40c7: $55
    db $eb                                        ; $40c8: $eb
    ld c, d                                       ; $40c9: $4a
    inc a                                         ; $40ca: $3c
    push hl                                       ; $40cb: $e5
    or b                                          ; $40cc: $b0
    call nz, $d46a                                ; $40cd: $c4 $6a $d4
    ld a, [hl-]                                   ; $40d0: $3a
    cpl                                           ; $40d1: $2f
    ld a, b                                       ; $40d2: $78
    sub [hl]                                      ; $40d3: $96
    jp hl                                         ; $40d4: $e9


    and c                                         ; $40d5: $a1
    add hl, de                                    ; $40d6: $19
    ld [hl+], a                                   ; $40d7: $22
    cp l                                          ; $40d8: $bd
    or e                                          ; $40d9: $b3
    ld [c], a                                     ; $40da: $e2
    dec [hl]                                      ; $40db: $35
    daa                                           ; $40dc: $27
    ld l, $d6                                     ; $40dd: $2e $d6
    xor [hl]                                      ; $40df: $ae
    rst $20                                       ; $40e0: $e7
    ld d, l                                       ; $40e1: $55
    ld l, c                                       ; $40e2: $69
    ldh [rPCM12], a                               ; $40e3: $e0 $76
    ld h, a                                       ; $40e5: $67
    add $fb                                       ; $40e6: $c6 $fb
    and c                                         ; $40e8: $a1
    ld h, e                                       ; $40e9: $63
    ld e, c                                       ; $40ea: $59
    ld c, $a3                                     ; $40eb: $0e $a3
    sbc e                                         ; $40ed: $9b
    ld h, [hl]                                    ; $40ee: $66
    ld b, d                                       ; $40ef: $42
    push de                                       ; $40f0: $d5
    sub h                                         ; $40f1: $94
    cp [hl]                                       ; $40f2: $be
    db $e4                                        ; $40f3: $e4
    scf                                           ; $40f4: $37
    adc b                                         ; $40f5: $88
    nop                                           ; $40f6: $00
    rst $30                                       ; $40f7: $f7
    ld h, h                                       ; $40f8: $64
    set 1, [hl]                                   ; $40f9: $cb $ce
    ld e, e                                       ; $40fb: $5b
    rst $00                                       ; $40fc: $c7
    ld h, c                                       ; $40fd: $61
    daa                                           ; $40fe: $27
    ld [$79ad], a                                 ; $40ff: $ea $ad $79
    db $f4                                        ; $4102: $f4
    rla                                           ; $4103: $17
    pop af                                        ; $4104: $f1
    ld [$1cfd], sp                                ; $4105: $08 $fd $1c
    or d                                          ; $4108: $b2
    dec hl                                        ; $4109: $2b
    cp d                                          ; $410a: $ba
    dec e                                         ; $410b: $1d
    di                                            ; $410c: $f3
    ld c, b                                       ; $410d: $48
    ld l, d                                       ; $410e: $6a
    cp l                                          ; $410f: $bd
    db $eb                                        ; $4110: $eb
    db $d3                                        ; $4111: $d3
    db $f4                                        ; $4112: $f4
    sub a                                         ; $4113: $97
    nop                                           ; $4114: $00
    ld [hl], a                                    ; $4115: $77
    or a                                          ; $4116: $b7
    ld h, l                                       ; $4117: $65
    dec e                                         ; $4118: $1d
    add a                                         ; $4119: $87
    dec e                                         ; $411a: $1d
    rst $10                                       ; $411b: $d7
    adc b                                         ; $411c: $88
    add a                                         ; $411d: $87
    rst $30                                       ; $411e: $f7
    ld h, e                                       ; $411f: $63
    db $f4                                        ; $4120: $f4
    ld [$32d7], sp                                ; $4121: $08 $d7 $32
    ld c, c                                       ; $4124: $49
    ld a, [de]                                    ; $4125: $1a
    ld [hl+], a                                   ; $4126: $22
    dec a                                         ; $4127: $3d
    ld a, [$6439]                                 ; $4128: $fa $39 $64
    ld d, a                                       ; $412b: $57
    ld [hl], h                                    ; $412c: $74
    dec sp                                        ; $412d: $3b
    ld d, $2f                                     ; $412e: $16 $2f
    ld a, $19                                     ; $4130: $3e $19
    ld sp, hl                                     ; $4132: $f9
    adc $c9                                       ; $4133: $ce $c9
    and l                                         ; $4135: $a5
    call z, $dfe3                                 ; $4136: $cc $e3 $df
    ld b, [hl]                                    ; $4139: $46
    add sp, -$39                                  ; $413a: $e8 $c7
    cp h                                          ; $413c: $bc
    di                                            ; $413d: $f3
    sbc c                                         ; $413e: $99
    or l                                          ; $413f: $b5
    jp Jump_058_7596                              ; $4140: $c3 $96 $75


    inc e                                         ; $4143: $1c
    and $5a                                       ; $4144: $e6 $5a
    ld e, c                                       ; $4146: $59
    xor c                                         ; $4147: $a9
    pop de                                        ; $4148: $d1
    cp c                                          ; $4149: $b9
    ld b, [hl]                                    ; $414a: $46
    db $ed                                        ; $414b: $ed
    sub b                                         ; $414c: $90
    ld e, l                                       ; $414d: $5d
    ld d, l                                       ; $414e: $55
    ld e, $fe                                     ; $414f: $1e $fe
    call z, $0110                                 ; $4151: $cc $10 $01
    dec a                                         ; $4154: $3d
    ld a, [$6439]                                 ; $4155: $fa $39 $64
    ld d, a                                       ; $4158: $57
    ld [hl], h                                    ; $4159: $74
    dec sp                                        ; $415a: $3b
    xor [hl]                                      ; $415b: $ae
    push bc                                       ; $415c: $c5
    daa                                           ; $415d: $27
    inc hl                                        ; $415e: $23
    rst $18                                       ; $415f: $df
    add hl, sp                                    ; $4160: $39
    cp c                                          ; $4161: $b9
    sub h                                         ; $4162: $94
    push bc                                       ; $4163: $c5
    ld [hl], b                                    ; $4164: $70
    add hl, hl                                    ; $4165: $29
    call nc, $afd2                                ; $4166: $d4 $d2 $af
    inc a                                         ; $4169: $3c
    ld a, [$4c8b]                                 ; $416a: $fa $8b $4c
    or d                                          ; $416d: $b2
    ld h, l                                       ; $416e: $65
    daa                                           ; $416f: $27
    db $e3                                        ; $4170: $e3
    cp c                                          ; $4171: $b9
    and [hl]                                      ; $4172: $a6
    cp d                                          ; $4173: $ba
    call nc, $d872                                ; $4174: $d4 $72 $d8
    ld hl, $6abb                                  ; $4177: $21 $bb $6a
    ld a, a                                       ; $417a: $7f
    adc c                                         ; $417b: $89
    ccf                                           ; $417c: $3f
    ld b, h                                       ; $417d: $44
    add hl, hl                                    ; $417e: $29
    ld h, h                                       ; $417f: $64
    ld d, a                                       ; $4180: $57
    ld [hl], h                                    ; $4181: $74
    dec sp                                        ; $4182: $3b
    xor [hl]                                      ; $4183: $ae
    dec h                                         ; $4184: $25
    ld c, a                                       ; $4185: $4f
    ld d, h                                       ; $4186: $54
    cp c                                          ; $4187: $b9
    sub [hl]                                      ; $4188: $96
    pop af                                        ; $4189: $f1
    db $e4                                        ; $418a: $e4
    ld sp, $e5bf                                  ; $418b: $31 $bf $e5
    or b                                          ; $418e: $b0
    ld hl, sp+$64                                 ; $418f: $f8 $64
    ld hl, sp+$49                                 ; $4191: $f8 $49
    ldh a, [$b0]                                  ; $4193: $f0 $b0
    and $b0                                       ; $4195: $e6 $b0
    db $eb                                        ; $4197: $eb
    cp e                                          ; $4198: $bb
    ldh [$ee], a                                  ; $4199: $e0 $ee
    ld a, h                                       ; $419b: $7c
    ld [hl], d                                    ; $419c: $72
    ld h, d                                       ; $419d: $62
    rst $00                                       ; $419e: $c7
    inc hl                                        ; $419f: $23
    rst $18                                       ; $41a0: $df
    add hl, sp                                    ; $41a1: $39
    cp c                                          ; $41a2: $b9
    call nc, $3872                                ; $41a3: $d4 $72 $38
    inc d                                         ; $41a6: $14
    ld b, h                                       ; $41a7: $44
    cp l                                          ; $41a8: $bd
    xor c                                         ; $41a9: $a9
    ld h, l                                       ; $41aa: $65
    sub d                                         ; $41ab: $92
    call c, $b5df                                 ; $41ac: $dc $df $b5
    ld [hl], b                                    ; $41af: $70
    and $00                                       ; $41b0: $e6 $00
    sub a                                         ; $41b2: $97
    jp $d90e                                      ; $41b3: $c3 $0e $d9


    ld d, l                                       ; $41b6: $55
    ld d, e                                       ; $41b7: $53

jr_058_41b8:
    and $d1                                       ; $41b8: $e6 $d1
    ld e, l                                       ; $41ba: $5d
    ld [hl], l                                    ; $41bb: $75
    ret c                                         ; $41bc: $d8

    dec sp                                        ; $41bd: $3b
    ld h, h                                       ; $41be: $64
    ld d, a                                       ; $41bf: $57
    ld [hl], h                                    ; $41c0: $74
    dec sp                                        ; $41c1: $3b
    and $29                                       ; $41c2: $e6 $29
    ld a, l                                       ; $41c4: $7d
    rst $00                                       ; $41c5: $c7
    dec b                                         ; $41c6: $05
    ld de, $f8f7                                  ; $41c7: $11 $f7 $f8
    or b                                          ; $41ca: $b0
    ld h, l                                       ; $41cb: $65
    ld b, h                                       ; $41cc: $44
    ld d, [hl]                                    ; $41cd: $56
    ld l, [hl]                                    ; $41ce: $6e
    ld e, l                                       ; $41cf: $5d
    rst $00                                       ; $41d0: $c7
    cp e                                          ; $41d1: $bb
    rst $20                                       ; $41d2: $e7
    rst $00                                       ; $41d3: $c7
    jr c, jr_058_41b8                             ; $41d4: $38 $e2

    push de                                       ; $41d6: $d5
    sub d                                         ; $41d7: $92
    cp [hl]                                       ; $41d8: $be
    adc d                                         ; $41d9: $8a
    ld b, a                                       ; $41da: $47
    ld d, d                                       ; $41db: $52
    db $eb                                        ; $41dc: $eb
    ld e, l                                       ; $41dd: $5d
    sbc a                                         ; $41de: $9f
    and [hl]                                      ; $41df: $a6
    cp a                                          ; $41e0: $bf
    add h                                         ; $41e1: $84
    dec [hl]                                      ; $41e2: $35
    ld c, e                                       ; $41e3: $4b
    ld [hl], b                                    ; $41e4: $70
    call $9322                                    ; $41e5: $cd $22 $93
    ld l, h                                       ; $41e8: $6c
    add c                                         ; $41e9: $81
    db $eb                                        ; $41ea: $eb
    ld a, c                                       ; $41eb: $79
    or d                                          ; $41ec: $b2
    call nz, Call_058_653c                        ; $41ed: $c4 $3c $65
    sbc $f9                                       ; $41f0: $de $f9
    ld sp, $18ba                                  ; $41f2: $31 $ba $18
    ld [hl+], a                                   ; $41f5: $22
    add hl, hl                                    ; $41f6: $29

Call_058_41f7:
    ld a, [c]                                     ; $41f7: $f2
    ld h, d                                       ; $41f8: $62
    inc e                                         ; $41f9: $1c
    or [hl]                                       ; $41fa: $b6
    ld a, [de]                                    ; $41fb: $1a
    and c                                         ; $41fc: $a1
    sbc a                                         ; $41fd: $9f
    ld b, e                                       ; $41fe: $43
    halt                                          ; $41ff: $76
    ld b, l                                       ; $4200: $45
    or a                                          ; $4201: $b7
    ld h, e                                       ; $4202: $63
    ld e, $49                                     ; $4203: $1e $49
    xor l                                         ; $4205: $ad
    ld [hl], a                                    ; $4206: $77
    ld a, l                                       ; $4207: $7d
    sbc d                                         ; $4208: $9a
    cp $12                                        ; $4209: $fe $12
    or h                                          ; $420b: $b4
    db $e3                                        ; $420c: $e3
    ld a, [c]                                     ; $420d: $f2
    call z, Call_058_74ef                         ; $420e: $cc $ef $74
    ld e, h                                       ; $4211: $5c
    sla h                                         ; $4212: $cb $24
    add hl, bc                                    ; $4214: $09
    ld de, $55f7                                  ; $4215: $11 $f7 $55
    ld d, a                                       ; $4218: $57
    ld [hl-], a                                   ; $4219: $32
    ld l, d                                       ; $421a: $6a
    add a                                         ; $421b: $87
    db $ec                                        ; $421c: $ec
    xor d                                         ; $421d: $aa
    ld a, [c]                                     ; $421e: $f2
    sbc d                                         ; $421f: $9a
    dec h                                         ; $4220: $25
    cp b                                          ; $4221: $b8
    sub [hl]                                      ; $4222: $96
    ld c, c                                       ; $4223: $49
    jp nc, Jump_058_49da                          ; $4224: $d2 $da $49

    ld e, a                                       ; $4227: $5f
    add l                                         ; $4228: $85
    ld e, l                                       ; $4229: $5d
    ld e, [hl]                                    ; $422a: $5e
    rst $28                                       ; $422b: $ef
    ld a, [$fd34]                                 ; $422c: $fa $34 $fd
    dec h                                         ; $422f: $25
    ld l, b                                       ; $4230: $68
    rst $30                                       ; $4231: $f7
    ld [hl], a                                    ; $4232: $77
    ld a, [hl-]                                   ; $4233: $3a
    cp d                                          ; $4234: $ba
    ld b, l                                       ; $4235: $45
    ld a, c                                       ; $4236: $79
    ld l, [hl]                                    ; $4237: $6e
    call $e535                                    ; $4238: $cd $35 $e5
    ld e, d                                       ; $423b: $5a

Call_058_423c:
    add $b1                                       ; $423c: $c6 $b1
    cp [hl]                                       ; $423e: $be
    inc b                                         ; $423f: $04
    adc b                                         ; $4240: $88
    nop                                           ; $4241: $00
    db $dd                                        ; $4242: $dd
    and $61                                       ; $4243: $e6 $61
    ld l, d                                       ; $4245: $6a
    ld c, d                                       ; $4246: $4a
    rst $18                                       ; $4247: $df
    ld hl, $aabb                                  ; $4248: $21 $bb $aa
    cp h                                          ; $424b: $bc
    ld a, e                                       ; $424c: $7b
    ld a, h                                       ; $424d: $7c
    ret c                                         ; $424e: $d8

    ld [hl-], a                                   ; $424f: $32
    ld [hl+], a                                   ; $4250: $22
    dec hl                                        ; $4251: $2b
    or a                                          ; $4252: $b7
    xor [hl]                                      ; $4253: $ae
    db $e3                                        ; $4254: $e3
    db $dd                                        ; $4255: $dd
    di                                            ; $4256: $f3
    ld h, e                                       ; $4257: $63
    ld e, h                                       ; $4258: $5c
    add $da                                       ; $4259: $c6 $da
    push hl                                       ; $425b: $e5
    call nz, Call_058_5242                        ; $425c: $c4 $42 $52
    db $10                                        ; $425f: $10
    ld bc, $6429                                  ; $4260: $01 $29 $64
    ld d, a                                       ; $4263: $57
    ld b, c                                       ; $4264: $41
    ld [$6947], sp                                ; $4265: $08 $47 $69
    ld b, a                                       ; $4268: $47
    inc a                                         ; $4269: $3c
    reti                                          ; $426a: $d9


    ld hl, $a2bb                                  ; $426b: $21 $bb $a2
    db $db                                        ; $426e: $db
    ld sp, $a76b                                  ; $426f: $31 $6b $a7
    db $f4                                        ; $4272: $f4
    dec h                                         ; $4273: $25
    ld h, [hl]                                    ; $4274: $66
    ld [$eee1], sp                                ; $4275: $08 $e1 $ee
    pop af                                        ; $4278: $f1
    ld h, c                                       ; $4279: $61
    res 1, b                                      ; $427a: $cb $88
    xor h                                         ; $427c: $ac
    call c, $8eba                                 ; $427d: $dc $ba $8e
    ld [hl], a                                    ; $4280: $77
    rst $08                                       ; $4281: $cf
    ld l, a                                       ; $4282: $6f
    and a                                         ; $4283: $a7
    rst $10                                       ; $4284: $d7
    xor $c9                                       ; $4285: $ee $c9
    sbc $a1                                       ; $4287: $de $a1
    add h                                         ; $4289: $84
    ld hl, $3d02                                  ; $428a: $21 $02 $3d
    ld c, c                                       ; $428d: $49
    ld l, $3a                                     ; $428e: $2e $3a
    rst $10                                       ; $4290: $d7
    sbc d                                         ; $4291: $9a
    reti                                          ; $4292: $d9


    dec [hl]                                      ; $4293: $35
    and l                                         ; $4294: $a5
    adc a                                         ; $4295: $8f
    ld [hl], b                                    ; $4296: $70
    ld c, l                                       ; $4297: $4d
    xor h                                         ; $4298: $ac
    call c, Call_000_296b                         ; $4299: $dc $6b $29
    ld h, h                                       ; $429c: $64
    ld d, a                                       ; $429d: $57
    db $ed                                        ; $429e: $ed
    sbc [hl]                                      ; $429f: $9e
    rra                                           ; $42a0: $1f
    db $e3                                        ; $42a1: $e3
    cp $4e                                        ; $42a2: $fe $4e
    ld b, a                                       ; $42a4: $47
    or a                                          ; $42a5: $b7
    jr z, @-$2f                                   ; $42a6: $28 $cf

    db $fc                                        ; $42a8: $fc
    ld c, [hl]                                    ; $42a9: $4e
    rst $00                                       ; $42aa: $c7
    db $10                                        ; $42ab: $10
    ld bc, $fa3d                                  ; $42ac: $01 $3d $fa
    add hl, sp                                    ; $42af: $39
    ld h, h                                       ; $42b0: $64
    ld d, a                                       ; $42b1: $57
    ld [hl], h                                    ; $42b2: $74
    dec sp                                        ; $42b3: $3b
    xor [hl]                                      ; $42b4: $ae
    push bc                                       ; $42b5: $c5
    daa                                           ; $42b6: $27
    inc hl                                        ; $42b7: $23
    db $f4                                        ; $42b8: $f4
    ld [hl], e                                    ; $42b9: $73
    add hl, bc                                    ; $42ba: $09
    ld sp, hl                                     ; $42bb: $f9
    adc $c9                                       ; $42bc: $ce $c9
    and l                                         ; $42be: $a5
    ldh [$7a], a                                  ; $42bf: $e0 $7a
    call c, $0fd4                                 ; $42c1: $dc $d4 $0f
    ret                                           ; $42c4: $c9


    ccf                                           ; $42c5: $3f
    and e                                         ; $42c6: $a3
    ld [hl], e                                    ; $42c7: $73
    ld c, l                                       ; $42c8: $4d
    add hl, sp                                    ; $42c9: $39
    inc l                                         ; $42ca: $2c
    ld a, $99                                     ; $42cb: $3e $99
    ld [hl], d                                    ; $42cd: $72
    ld sp, hl                                     ; $42ce: $f9
    db $ec                                        ; $42cf: $ec
    ret z                                         ; $42d0: $c8

    adc e                                         ; $42d1: $8b
    pop de                                        ; $42d2: $d1
    ld [hl], b                                    ; $42d3: $70
    add hl, hl                                    ; $42d4: $29
    sbc [hl]                                      ; $42d5: $9e
    sbc c                                         ; $42d6: $99
    ld e, l                                       ; $42d7: $5d
    inc hl                                        ; $42d8: $23
    ld e, $de                                     ; $42d9: $1e $de
    rst $18                                       ; $42db: $df
    jp hl                                         ; $42dc: $e9


    add sp, $16                                   ; $42dd: $e8 $16
    push hl                                       ; $42df: $e5
    sbc c                                         ; $42e0: $99
    rst $18                                       ; $42e1: $df

jr_058_42e2:
    jp hl                                         ; $42e2: $e9


    jr jr_058_4307                                ; $42e3: $18 $22

    add hl, hl                                    ; $42e5: $29
    cp a                                          ; $42e6: $bf
    halt                                          ; $42e7: $76
    rst $08                                       ; $42e8: $cf
    rlca                                          ; $42e9: $07
    ld c, l                                       ; $42ea: $4d
    db $e4                                        ; $42eb: $e4
    or $ce                                        ; $42ec: $f6 $ce
    sub h                                         ; $42ee: $94
    ld [hl], a                                    ; $42ef: $77
    rst $30                                       ; $42f0: $f7
    rst $00                                       ; $42f1: $c7
    ld b, a                                       ; $42f2: $47
    ld [hl], e                                    ; $42f3: $73
    add hl, bc                                    ; $42f4: $09
    ret nz                                        ; $42f5: $c0

    ld c, h                                       ; $42f6: $4c
    sub d                                         ; $42f7: $92
    ld e, a                                       ; $42f8: $5f
    ld [bc], a                                    ; $42f9: $02
    ld h, a                                       ; $42fa: $67
    sbc c                                         ; $42fb: $99
    ld l, e                                       ; $42fc: $6b
    jp z, $a532                                   ; $42fd: $ca $32 $a5

    cpl                                           ; $4300: $2f
    db $dd                                        ; $4301: $dd
    ld d, l                                       ; $4302: $55
    dec sp                                        ; $4303: $3b
    ld a, [c]                                     ; $4304: $f2
    ld h, d                                       ; $4305: $62
    db $f4                                        ; $4306: $f4

jr_058_4307:
    or b                                          ; $4307: $b0
    dec d                                         ; $4308: $15
    call c, $e65d                                 ; $4309: $dc $5d $e6
    db $fd                                        ; $430c: $fd
    sbc l                                         ; $430d: $9d
    adc [hl]                                      ; $430e: $8e
    ld l, [hl]                                    ; $430f: $6e
    ld d, c                                       ; $4310: $51
    sbc [hl]                                      ; $4311: $9e
    ld sp, hl                                     ; $4312: $f9
    sbc l                                         ; $4313: $9d
    adc [hl]                                      ; $4314: $8e
    ld hl, $2902                                  ; $4315: $21 $02 $29
    sbc [hl]                                      ; $4318: $9e
    sbc c                                         ; $4319: $99
    ld e, l                                       ; $431a: $5d
    dec sp                                        ; $431b: $3b
    ld h, h                                       ; $431c: $64
    ld d, a                                       ; $431d: $57
    ld [hl], h                                    ; $431e: $74
    dec sp                                        ; $431f: $3b
    and $61                                       ; $4320: $e6 $61
    xor e                                         ; $4322: $ab
    dec h                                         ; $4323: $25
    sbc a                                         ; $4324: $9f
    inc h                                         ; $4325: $24
    ld c, l                                       ; $4326: $4d
    ld h, h                                       ; $4327: $64
    ld h, l                                       ; $4328: $65
    sbc $df                                       ; $4329: $de $df
    jp hl                                         ; $432b: $e9


    add sp, $16                                   ; $432c: $e8 $16
    push hl                                       ; $432e: $e5
    sbc c                                         ; $432f: $99
    rst $18                                       ; $4330: $df
    jp hl                                         ; $4331: $e9


    jr jr_058_42e2                                ; $4332: $18 $ae

    db $db                                        ; $4334: $db
    inc a                                         ; $4335: $3c
    rst $10                                       ; $4336: $d7
    ldh a, [rNR13]                                ; $4337: $f0 $13
    or c                                          ; $4339: $b1
    adc h                                         ; $433a: $8c
    jp c, $bb21                                   ; $433b: $da $21 $bb

    xor d                                         ; $433e: $aa
    inc c                                         ; $433f: $0c
    ld de, $5f00                                  ; $4340: $11 $00 $5f
    adc h                                         ; $4343: $8c
    and e                                         ; $4344: $a3
    ld [hl], e                                    ; $4345: $73
    db $ed                                        ; $4346: $ed
    pop af                                        ; $4347: $f1
    sub h                                         ; $4348: $94
    ld a, $65                                     ; $4349: $3e $65
    sbc h                                         ; $434b: $9c
    push hl                                       ; $434c: $e5
    ld [hl], b                                    ; $434d: $70
    cp c                                          ; $434e: $b9
    ret c                                         ; $434f: $d8

    and e                                         ; $4350: $a3
    ld [hl], e                                    ; $4351: $73
    dec l                                         ; $4352: $2d
    or [hl]                                       ; $4353: $b6
    ld [hl], a                                    ; $4354: $77
    adc [hl]                                      ; $4355: $8e
    ld b, l                                       ; $4356: $45
    cp e                                          ; $4357: $bb
    sbc [hl]                                      ; $4358: $9e
    ld d, a                                       ; $4359: $57
    and l                                         ; $435a: $a5
    add c                                         ; $435b: $81
    ld e, e                                       ; $435c: $5b
    adc a                                         ; $435d: $8f
    ld l, e                                       ; $435e: $6b
    call nz, Call_000_29ab                        ; $435f: $c4 $ab $29
    ld a, l                                       ; $4362: $7d
    sub [hl]                                      ; $4363: $96
    ld [hl], c                                    ; $4364: $71
    ld l, c                                       ; $4365: $69
    ld e, d                                       ; $4366: $5a
    inc sp                                        ; $4367: $33
    sbc l                                         ; $4368: $9d
    dec bc                                        ; $4369: $0b
    cp e                                          ; $436a: $bb
    db $ed                                        ; $436b: $ed
    ld h, h                                       ; $436c: $64
    cp h                                          ; $436d: $bc
    or h                                          ; $436e: $b4
    ld e, e                                       ; $436f: $5b
    sub a                                         ; $4370: $97
    ret z                                         ; $4371: $c8

    sub a                                         ; $4372: $97
    nop                                           ; $4373: $00
    ld de, $01bd                                  ; $4374: $11 $bd $01
    call c, Call_000_1f71                         ; $4377: $dc $71 $1f
    ret nz                                        ; $437a: $c0

    ld a, e                                       ; $437b: $7b
    rst $28                                       ; $437c: $ef
    cp c                                          ; $437d: $b9
    inc bc                                        ; $437e: $03
    ldh [$6d], a                                  ; $437f: $e0 $6d
    db $eb                                        ; $4381: $eb
    ld a, l                                       ; $4382: $7d
    di                                            ; $4383: $f3
    db $dd                                        ; $4384: $dd
    or a                                          ; $4385: $b7
    and l                                         ; $4386: $a5
    jr nz, jr_058_43cc                            ; $4387: $20 $43

    add hl, hl                                    ; $4389: $29
    dec e                                         ; $438a: $1d
    db $d3                                        ; $438b: $d3
    add a                                         ; $438c: $87
    xor h                                         ; $438d: $ac
    xor h                                         ; $438e: $ac
    db $f4                                        ; $438f: $f4
    ld h, e                                       ; $4390: $63
    ld h, c                                       ; $4391: $61
    inc b                                         ; $4392: $04
    add hl, hl                                    ; $4393: $29
    db $ec                                        ; $4394: $ec
    call nz, $8dbb                                ; $4395: $c4 $bb $8d
    ld sp, hl                                     ; $4398: $f9
    ld c, e                                       ; $4399: $4b
    ld [hl], b                                    ; $439a: $70
    ld hl, $2943                                  ; $439b: $21 $43 $29
    dec e                                         ; $439e: $1d
    db $d3                                        ; $439f: $d3
    ld b, a                                       ; $43a0: $47
    rst $20                                       ; $43a1: $e7
    db $e4                                        ; $43a2: $e4
    rst $00                                       ; $43a3: $c7
    and $42                                       ; $43a4: $e6 $42
    ld [hl], a                                    ; $43a6: $77
    ld a, a                                       ; $43a7: $7f
    ret nc                                        ; $43a8: $d0

    call nz, Call_058_5b73                        ; $43a9: $c4 $73 $5b
    ld [hl], a                                    ; $43ac: $77
    xor [hl]                                      ; $43ad: $ae
    ldh a, [rDIV]                                 ; $43ae: $f0 $04
    ld bc, $2943                                  ; $43b0: $01 $43 $29
    dec e                                         ; $43b3: $1d
    db $d3                                        ; $43b4: $d3
    add a                                         ; $43b5: $87
    dec e                                         ; $43b6: $1d
    call nz, Call_000_0085                        ; $43b7: $c4 $85 $00
    ld [hl], a                                    ; $43ba: $77
    rst $38                                       ; $43bb: $ff
    add sp, -$23                                  ; $43bc: $e8 $dd
    rst $10                                       ; $43be: $d7
    ld e, $b3                                     ; $43bf: $1e $b3

jr_058_43c1:
    reti                                          ; $43c1: $d9


    add l                                         ; $43c2: $85
    nop                                           ; $43c3: $00
    ld b, e                                       ; $43c4: $43
    add b                                         ; $43c5: $80
    jr c, jr_058_43c1                             ; $43c6: $38 $f9

    or c                                          ; $43c8: $b1
    cp c                                          ; $43c9: $b9
    adc h                                         ; $43ca: $8c
    nop                                           ; $43cb: $00

jr_058_43cc:
    ld a, l                                       ; $43cc: $7d
    ld a, [c]                                     ; $43cd: $f2
    ld hl, $b7f4                                  ; $43ce: $21 $f4 $b7
    cp e                                          ; $43d1: $bb
    ld l, l                                       ; $43d2: $6d
    ld [hl], l                                    ; $43d3: $75
    db $10                                        ; $43d4: $10
    add hl, hl                                    ; $43d5: $29
    db $ec                                        ; $43d6: $ec
    call nz, $fc03                                ; $43d7: $c4 $03 $fc
    ld e, d                                       ; $43da: $5a
    db $eb                                        ; $43db: $eb
    db $db                                        ; $43dc: $db
    ld [$59dd], sp                                ; $43dd: $08 $dd $59
    rrca                                          ; $43e0: $0f
    ld c, e                                       ; $43e1: $4b
    ld bc, $fc4d                                  ; $43e2: $01 $4d $fc
    sub $be                                       ; $43e5: $d6 $be
    inc b                                         ; $43e7: $04
    inc b                                         ; $43e8: $04
    add hl, hl                                    ; $43e9: $29
    db $ec                                        ; $43ea: $ec
    call nz, $8dbb                                ; $43eb: $c4 $bb $8d
    ld sp, hl                                     ; $43ee: $f9
    ld c, e                                       ; $43ef: $4b
    ld [hl], b                                    ; $43f0: $70
    ld hl, $0043                                  ; $43f1: $21 $43 $00
    dec e                                         ; $43f4: $1d
    db $e4                                        ; $43f5: $e4
    ld c, e                                       ; $43f6: $4b
    ld e, b                                       ; $43f7: $58
    ld c, $7b                                     ; $43f8: $0e $7b
    ld a, [c]                                     ; $43fa: $f2
    pop af                                        ; $43fb: $f1
    dec sp                                        ; $43fc: $3b
    sbc l                                         ; $43fd: $9d
    inc l                                         ; $43fe: $2c
    ld [$d5b7], sp                                ; $43ff: $08 $b7 $d5
    rlca                                          ; $4402: $07
    cp l                                          ; $4403: $bd
    ld e, $7f                                     ; $4404: $1e $7f
    add $4f                                       ; $4406: $c6 $4f
    stop                                          ; $4408: $10 $00
    ld [hl], d                                    ; $440a: $72
    ld a, [hl-]                                   ; $440b: $3a
    dec a                                         ; $440c: $3d
    ret nz                                        ; $440d: $c0

    ld a, $8c                                     ; $440e: $3e $8c
    nop                                           ; $4410: $00
    ld a, l                                       ; $4411: $7d
    ld e, h                                       ; $4412: $5c
    and l                                         ; $4413: $a5
    add hl, de                                    ; $4414: $19
    ldh [$5c], a                                  ; $4415: $e0 $5c
    call nz, Call_058_41f7                        ; $4417: $c4 $f7 $41
    ld b, e                                       ; $441a: $43
    nop                                           ; $441b: $00
    dec e                                         ; $441c: $1d
    rrca                                          ; $441d: $0f
    ld e, a                                       ; $441e: $5f
    xor d                                         ; $441f: $aa
    ld a, h                                       ; $4420: $7c
    ld a, [hl]                                    ; $4421: $7e
    sub b                                         ; $4422: $90
    ld c, e                                       ; $4423: $4b
    ld c, [hl]                                    ; $4424: $4e
    rst $00                                       ; $4425: $c7
    inc [hl]                                      ; $4426: $34
    ld [bc], a                                    ; $4427: $02
    ld [hl], a                                    ; $4428: $77
    ld a, a                                       ; $4429: $7f
    ret nc                                        ; $442a: $d0

    call nz, Call_058_5b73                        ; $442b: $c4 $73 $5b
    adc a                                         ; $442e: $8f
    adc [hl]                                      ; $442f: $8e
    ld a, l                                       ; $4430: $7d
    db $10                                        ; $4431: $10
    ld b, e                                       ; $4432: $43
    add b                                         ; $4433: $80
    rst $38                                       ; $4434: $ff
    ld sp, $5959                                  ; $4435: $31 $59 $59
    jp hl                                         ; $4438: $e9


    rst $00                                       ; $4439: $c7
    jp nz, $b708                                  ; $443a: $c2 $08 $b7

    cp [hl]                                       ; $443d: $be
    ld a, d                                       ; $443e: $7a
    db $eb                                        ; $443f: $eb
    cp $26                                        ; $4440: $fe $26
    jr nc, jr_058_4446                            ; $4442: $30 $02

    ld b, e                                       ; $4444: $43
    ld [hl], a                                    ; $4445: $77

jr_058_4446:
    db $eb                                        ; $4446: $eb
    rst $20                                       ; $4447: $e7
    rst $00                                       ; $4448: $c7
    cp b                                          ; $4449: $b8
    inc e                                         ; $444a: $1c
    sub $34                                       ; $444b: $d6 $34
    jp z, $ed34                                   ; $444d: $ca $34 $ed

    ret z                                         ; $4450: $c8

    ld l, $04                                     ; $4451: $2e $04
    ld [hl], a                                    ; $4453: $77
    cp a                                          ; $4454: $bf
    adc d                                         ; $4455: $8a
    inc bc                                        ; $4456: $03
    ld h, [hl]                                    ; $4457: $66
    adc e                                         ; $4458: $8b
    ld b, d                                       ; $4459: $42
    db $dd                                        ; $445a: $dd
    ld h, l                                       ; $445b: $65
    jr nc, @-$43                                  ; $445c: $30 $bb

    push af                                       ; $445e: $f5
    add hl, hl                                    ; $445f: $29
    dec c                                         ; $4460: $0d
    ld [bc], a                                    ; $4461: $02
    ld [hl], a                                    ; $4462: $77
    inc a                                         ; $4463: $3c
    add hl, de                                    ; $4464: $19
    add b                                         ; $4465: $80
    xor h                                         ; $4466: $ac
    cp $43                                        ; $4467: $fe $43
    ld b, e                                       ; $4469: $43
    nop                                           ; $446a: $00
    ld a, l                                       ; $446b: $7d
    ld hl, sp+$4b                                 ; $446c: $f8 $4b
    ld b, b                                       ; $446e: $40
    ld [hl], a                                    ; $446f: $77
    ld a, l                                       ; $4470: $7d
    ld [hl], b                                    ; $4471: $70
    ldh [rPCM12], a                               ; $4472: $e0 $76
    xor e                                         ; $4474: $ab
    adc [hl]                                      ; $4475: $8e
    pop af                                        ; $4476: $f1
    sub a                                         ; $4477: $97
    add e                                         ; $4478: $83
    nop                                           ; $4479: $00
    or a                                          ; $447a: $b7
    call nc, $b27f                                ; $447b: $d4 $7f $b2
    dec sp                                        ; $447e: $3b
    ld a, a                                       ; $447f: $7f
    ld b, l                                       ; $4480: $45
    pop af                                        ; $4481: $f1
    add hl, sp                                    ; $4482: $39
    ld [$12b7], sp                                ; $4483: $08 $b7 $12
    ld l, $4d                                     ; $4486: $2e $4d
    db $db                                        ; $4488: $db
    ld a, l                                       ; $4489: $7d
    sub [hl]                                      ; $448a: $96
    rrca                                          ; $448b: $0f
    ld a, [hl-]                                   ; $448c: $3a
    ld [hl+], a                                   ; $448d: $22
    scf                                           ; $448e: $37
    bit 5, a                                      ; $448f: $cb $6f
    db $eb                                        ; $4491: $eb

jr_058_4492:
    sub e                                         ; $4492: $93
    rrca                                          ; $4493: $0f
    pop af                                        ; $4494: $f1
    ld de, $4343                                  ; $4495: $11 $43 $43
    scf                                           ; $4498: $37
    rst $18                                       ; $4499: $df
    ld a, l                                       ; $449a: $7d
    inc sp                                        ; $449b: $33
    ldh a, [$db]                                  ; $449c: $f0 $db
    halt                                          ; $449e: $76
    db $db                                        ; $449f: $db
    dec a                                         ; $44a0: $3d
    nop                                           ; $44a1: $00
    ld l, a                                       ; $44a2: $6f
    inc bc                                        ; $44a3: $03
    nop                                           ; $44a4: $00
    ldh a, [$e6]                                  ; $44a5: $f0 $e6
    dec sp                                        ; $44a7: $3b
    xor $b9                                       ; $44a8: $ee $b9
    ei                                            ; $44aa: $fb
    or [hl]                                       ; $44ab: $b6
    ld a, e                                       ; $44ac: $7b
    nop                                           ; $44ad: $00
    ld [hl+], a                                   ; $44ae: $22
    ld b, e                                       ; $44af: $43
    add hl, hl                                    ; $44b0: $29
    dec e                                         ; $44b1: $1d
    db $d3                                        ; $44b2: $d3
    add a                                         ; $44b3: $87
    xor h                                         ; $44b4: $ac
    xor h                                         ; $44b5: $ac
    db $f4                                        ; $44b6: $f4
    ld h, e                                       ; $44b7: $63
    ld h, c                                       ; $44b8: $61
    rla                                           ; $44b9: $17
    ld [bc], a                                    ; $44ba: $02
    db $dd                                        ; $44bb: $dd
    ld c, a                                       ; $44bc: $4f
    halt                                          ; $44bd: $76
    ld e, e                                       ; $44be: $5b
    or e                                          ; $44bf: $b3
    and h                                         ; $44c0: $a4
    rst $18                                       ; $44c1: $df
    dec sp                                        ; $44c2: $3b
    ld [$2fdd], sp                                ; $44c3: $08 $dd $2f
    ld sp, hl                                     ; $44c6: $f9
    ld l, d                                       ; $44c7: $6a
    ld [hl], a                                    ; $44c8: $77
    ccf                                           ; $44c9: $3f
    ld de, $4304                                  ; $44ca: $11 $04 $43
    nop                                           ; $44cd: $00
    ld a, l                                       ; $44ce: $7d
    ret c                                         ; $44cf: $d8

    call $85ca                                    ; $44d0: $cd $ca $85
    nop                                           ; $44d3: $00
    ld a, l                                       ; $44d4: $7d
    ld e, $e8                                     ; $44d5: $1e $e8
    cp b                                          ; $44d7: $b8
    ld e, e                                       ; $44d8: $5b
    ld c, d                                       ; $44d9: $4a
    rst $00                                       ; $44da: $c7
    ret c                                         ; $44db: $d8

    adc h                                         ; $44dc: $8c
    nop                                           ; $44dd: $00
    ld b, e                                       ; $44de: $43
    ld [hl], a                                    ; $44df: $77
    ld [$5872], a                                 ; $44e0: $ea $72 $58
    ld e, h                                       ; $44e3: $5c
    rst $38                                       ; $44e4: $ff
    call nz, Call_000_393d                        ; $44e5: $c4 $3d $39
    ret                                           ; $44e8: $c9


    xor e                                         ; $44e9: $ab
    or $03                                        ; $44ea: $f6 $03
    ld [bc], a                                    ; $44ec: $02
    rst $30                                       ; $44ed: $f7
    ld de, $0dbf                                  ; $44ee: $11 $bf $0d
    ld h, b                                       ; $44f1: $60
    jp hl                                         ; $44f2: $e9


    jr c, jr_058_4492                             ; $44f3: $38 $9d

    ld de, $b743                                  ; $44f5: $11 $43 $b7
    db $dd                                        ; $44f8: $dd
    or e                                          ; $44f9: $b3
    sub h                                         ; $44fa: $94
    ei                                            ; $44fb: $fb
    ld l, [hl]                                    ; $44fc: $6e
    ld c, e                                       ; $44fd: $4b
    cp c                                          ; $44fe: $b9
    db $e3                                        ; $44ff: $e3
    or [hl]                                       ; $4500: $b6
    cp e                                          ; $4501: $bb
    xor $1a                                       ; $4502: $ee $1a
    ret nz                                        ; $4504: $c0

    sbc e                                         ; $4505: $9b
    rst $28                                       ; $4506: $ef
    cp h                                          ; $4507: $bc
    ld [hl], e                                    ; $4508: $73
    nop                                           ; $4509: $00
    rst $28                                       ; $450a: $ef
    cp b                                          ; $450b: $b8
    dec bc                                        ; $450c: $0b
    ld bc, $6c29                                  ; $450d: $01 $29 $6c
    sub d                                         ; $4510: $92
    ld a, b                                       ; $4511: $78
    ld a, [c]                                     ; $4512: $f2
    cp l                                          ; $4513: $bd
    ld e, $17                                     ; $4514: $1e $17
    cp a                                          ; $4516: $bf
    ldh [rSCY], a                                 ; $4517: $e0 $42
    add hl, hl                                    ; $4519: $29
    ld a, [$b279]                                 ; $451a: $fa $79 $b2
    ld l, [hl]                                    ; $451d: $6e
    rst $18                                       ; $451e: $df
    db $ed                                        ; $451f: $ed
    ld a, [$008c]                                 ; $4520: $fa $8c $00
    ld [hl], a                                    ; $4523: $77
    rst $38                                       ; $4524: $ff
    add sp, $75                                   ; $4525: $e8 $75
    ei                                            ; $4527: $fb
    add hl, bc                                    ; $4528: $09
    ld [bc], a                                    ; $4529: $02
    scf                                           ; $452a: $37
    cp a                                          ; $452b: $bf
    jp z, $0032                                   ; $452c: $ca $32 $00

    rra                                           ; $452f: $1f
    or h                                          ; $4530: $b4
    ld de, $3a77                                  ; $4531: $11 $77 $3a
    ld sp, hl                                     ; $4534: $f9
    or d                                          ; $4535: $b2
    ld e, e                                       ; $4536: $5b
    db $f4                                        ; $4537: $f4
    ld d, d                                       ; $4538: $52
    rra                                           ; $4539: $1f
    ld [hl], h                                    ; $453a: $74
    ld b, h                                       ; $453b: $44
    ld [hl], a                                    ; $453c: $77
    sub $3f                                       ; $453d: $d6 $3f
    ld c, e                                       ; $453f: $4b
    pop de                                        ; $4540: $d1
    ld sp, $1d76                                  ; $4541: $31 $76 $1d
    inc b                                         ; $4544: $04
    ld b, e                                       ; $4545: $43
    ld b, e                                       ; $4546: $43
    ld b, e                                       ; $4547: $43
    or a                                          ; $4548: $b7
    db $dd                                        ; $4549: $dd
    ld [hl], l                                    ; $454a: $75
    db $db                                        ; $454b: $db
    xor l                                         ; $454c: $ad
    nop                                           ; $454d: $00
    ld bc, $7bdc                                  ; $454e: $01 $dc $7b
    rst $08                                       ; $4551: $cf
    dec e                                         ; $4552: $1d
    or a                                          ; $4553: $b7
    xor $66                                       ; $4554: $ee $66
    nop                                           ; $4556: $00
    nop                                           ; $4557: $00
    ld d, e                                       ; $4558: $53
    db $10                                        ; $4559: $10
    ld b, e                                       ; $455a: $43
    rst $30                                       ; $455b: $f7
    ld d, l                                       ; $455c: $55
    ld d, [hl]                                    ; $455d: $56
    ld a, d                                       ; $455e: $7a
    inc a                                         ; $455f: $3c
    sbc l                                         ; $4560: $9d
    inc l                                         ; $4561: $2c
    add a                                         ; $4562: $87
    db $fd                                        ; $4563: $fd
    jr nc, jr_058_4568                            ; $4564: $30 $02

    or a                                          ; $4566: $b7
    ld [de], a                                    ; $4567: $12

jr_058_4568:
    push af                                       ; $4568: $f5
    rst $08                                       ; $4569: $cf
    ld a, d                                       ; $456a: $7a
    rst $10                                       ; $456b: $d7
    db $d3                                        ; $456c: $d3
    jr nz, @-$47                                  ; $456d: $20 $b7

    and $f6                                       ; $456f: $e6 $f6
    ld h, l                                       ; $4571: $65
    nop                                           ; $4572: $00
    ld [hl], d                                    ; $4573: $72
    ld a, [$c9cb]                                 ; $4574: $fa $cb $c9
    add d                                         ; $4577: $82
    nop                                           ; $4578: $00
    ld a, l                                       ; $4579: $7d
    ld c, h                                       ; $457a: $4c
    db $d3                                        ; $457b: $d3
    db $eb                                        ; $457c: $eb
    db $fd                                        ; $457d: $fd
    ld [hl], b                                    ; $457e: $70
    ld d, $04                                     ; $457f: $16 $04
    rst $30                                       ; $4581: $f7
    add d                                         ; $4582: $82
    or c                                          ; $4583: $b1
    db $ec                                        ; $4584: $ec
    sbc $fe                                       ; $4585: $de $fe
    ld l, a                                       ; $4587: $6f
    xor c                                         ; $4588: $a9
    ld l, a                                       ; $4589: $6f
    ld b, c                                       ; $458a: $41
    nop                                           ; $458b: $00
    ld [hl], d                                    ; $458c: $72
    ld a, d                                       ; $458d: $7a
    rst $30                                       ; $458e: $f7
    or $7f                                        ; $458f: $f6 $7f
    ei                                            ; $4591: $fb
    xor e                                         ; $4592: $ab
    ld [hl], d                                    ; $4593: $72
    ld l, e                                       ; $4594: $6b
    ld [$1f29], sp                                ; $4595: $08 $29 $1f
    ld h, a                                       ; $4598: $67
    ld e, c                                       ; $4599: $59
    rst $08                                       ; $459a: $cf
    xor e                                         ; $459b: $ab
    ld a, [$0107]                                 ; $459c: $fa $07 $01
    ld b, b                                       ; $459f: $40
    sbc [hl]                                      ; $45a0: $9e

jr_058_45a1:
    ld b, [hl]                                    ; $45a1: $46
    cp h                                          ; $45a2: $bc
    db $db                                        ; $45a3: $db
    dec hl                                        ; $45a4: $2b
    rra                                           ; $45a5: $1f
    ld b, [hl]                                    ; $45a6: $46
    ld b, e                                       ; $45a7: $43
    ret nz                                        ; $45a8: $c0

    sbc b                                         ; $45a9: $98
    ld e, l                                       ; $45aa: $5d

Call_058_45ab:
    db $ed                                        ; $45ab: $ed
    rlca                                          ; $45ac: $07
    sub a                                         ; $45ad: $97
    ld b, a                                       ; $45ae: $47
    ld d, [hl]                                    ; $45af: $56
    ld c, $f5                                     ; $45b0: $0e $f5
    jr nc, jr_058_462a                            ; $45b2: $30 $76

    ld a, l                                       ; $45b4: $7d
    add hl, bc                                    ; $45b5: $09
    ld [$58b7], sp                                ; $45b6: $08 $b7 $58
    sub $ed                                       ; $45b9: $d6 $ed
    daa                                           ; $45bb: $27
    ld b, [hl]                                    ; $45bc: $46
    ld b, e                                       ; $45bd: $43
    add hl, hl                                    ; $45be: $29
    db $e4                                        ; $45bf: $e4
    ld l, a                                       ; $45c0: $6f
    dec l                                         ; $45c1: $2d
    db $fd                                        ; $45c2: $fd
    jp c, $e393                                   ; $45c3: $da $93 $e3

    ld a, [$1012]                                 ; $45c6: $fa $12 $10
    db $dd                                        ; $45c9: $dd
    ld c, a                                       ; $45ca: $4f
    ld b, $e0                                     ; $45cb: $06 $e0
    scf                                           ; $45cd: $37
    ld l, e                                       ; $45ce: $6b
    db $10                                        ; $45cf: $10
    ld b, e                                       ; $45d0: $43
    ld [hl], a                                    ; $45d1: $77
    ld l, c                                       ; $45d2: $69
    inc d                                         ; $45d3: $14
    ei                                            ; $45d4: $fb
    ld h, c                                       ; $45d5: $61
    inc b                                         ; $45d6: $04
    scf                                           ; $45d7: $37
    dec hl                                        ; $45d8: $2b
    scf                                           ; $45d9: $37
    rst $28                                       ; $45da: $ef
    ld c, [hl]                                    ; $45db: $4e
    or a                                          ; $45dc: $b7
    ld h, [hl]                                    ; $45dd: $66
    ld h, [hl]                                    ; $45de: $66
    inc b                                         ; $45df: $04
    or a                                          ; $45e0: $b7
    db $fc                                        ; $45e1: $fc
    sub $76                                       ; $45e2: $d6 $76
    sub a                                         ; $45e4: $97
    ld a, [hl]                                    ; $45e5: $7e
    ld e, b                                       ; $45e6: $58
    add e                                         ; $45e7: $83
    nop                                           ; $45e8: $00
    ld a, l                                       ; $45e9: $7d
    ld e, h                                       ; $45ea: $5c
    add $9a                                       ; $45eb: $c6 $9a
    and l                                         ; $45ed: $a5
    ld h, h                                       ; $45ee: $64
    cp l                                          ; $45ef: $bd
    add hl, de                                    ; $45f0: $19
    ld bc, $7cf7                                  ; $45f1: $01 $f7 $7c
    ret nc                                        ; $45f4: $d0

    ld [hl], c                                    ; $45f5: $71
    ld [hl], a                                    ; $45f6: $77
    cp l                                          ; $45f7: $bd
    db $e4                                        ; $45f8: $e4
    cp e                                          ; $45f9: $bb
    ld c, $02                                     ; $45fa: $0e $02
    ld b, e                                       ; $45fc: $43
    scf                                           ; $45fd: $37
    daa                                           ; $45fe: $27
    jp z, $4bed                                   ; $45ff: $ca $ed $4b

    jr jr_058_45a1                                ; $4602: $18 $9d

    ld l, e                                       ; $4604: $6b
    ld sp, $ed79                                  ; $4605: $31 $79 $ed
    or e                                          ; $4608: $b3
    ld sp, hl                                     ; $4609: $f9
    sbc h                                         ; $460a: $9c
    rra                                           ; $460b: $1f
    db $eb                                        ; $460c: $eb
    ld c, e                                       ; $460d: $4b
    ld b, b                                       ; $460e: $40
    scf                                           ; $460f: $37
    adc e                                         ; $4610: $8b
    jp nc, $eeec                                  ; $4611: $d2 $ec $ee

    rst $18                                       ; $4614: $df
    sbc d                                         ; $4615: $9a
    dec bc                                        ; $4616: $0b
    ld bc, $afdd                                  ; $4617: $01 $dd $af
    jp z, $8032                                   ; $461a: $ca $32 $80

    ld a, [hl-]                                   ; $461d: $3a
    add sp, $68                                   ; $461e: $e8 $68
    dec c                                         ; $4620: $0d
    ld [bc], a                                    ; $4621: $02
    ld a, l                                       ; $4622: $7d
    or d                                          ; $4623: $b2
    ld [hl], a                                    ; $4624: $77
    adc a                                         ; $4625: $8f
    ld l, $82                                     ; $4626: $2e $82
    nop                                           ; $4628: $00
    ld [hl], a                                    ; $4629: $77

jr_058_462a:
    reti                                          ; $462a: $d9


    cp e                                          ; $462b: $bb
    ei                                            ; $462c: $fb
    adc c                                         ; $462d: $89
    ld [hl], d                                    ; $462e: $72
    ld a, [c]                                     ; $462f: $f2
    ld e, e                                       ; $4630: $5b
    inc sp                                        ; $4631: $33
    ld [bc], a                                    ; $4632: $02
    ld [hl], a                                    ; $4633: $77
    ccf                                           ; $4634: $3f
    and $dd                                       ; $4635: $e6 $dd
    ld h, d                                       ; $4637: $62
    ld de, $2333                                  ; $4638: $11 $33 $23
    rst $30                                       ; $463b: $f7
    sbc c                                         ; $463c: $99
    cp l                                          ; $463d: $bd
    sub h                                         ; $463e: $94
    add a                                         ; $463f: $87
    ld [hl], l                                    ; $4640: $75
    or a                                          ; $4641: $b7
    add e                                         ; $4642: $83
    nop                                           ; $4643: $00
    rst $30                                       ; $4644: $f7
    ld a, l                                       ; $4645: $7d
    rst $10                                       ; $4646: $d7
    reti                                          ; $4647: $d9


    ld e, l                                       ; $4648: $5d
    ld c, a                                       ; $4649: $4f
    ld b, d                                       ; $464a: $42
    ld a, l                                       ; $464b: $7d
    dec d                                         ; $464c: $15
    adc h                                         ; $464d: $8c
    nop                                           ; $464e: $00
    nop                                           ; $464f: $00
    ld a, $68                                     ; $4650: $3e $68
    ld [c], a                                     ; $4652: $e2
    sub l                                         ; $4653: $95
    ld a, [de]                                    ; $4654: $1a
    sub b                                         ; $4655: $90
    rst $18                                       ; $4656: $df
    sub h                                         ; $4657: $94
    db $eb                                        ; $4658: $eb
    sub b                                         ; $4659: $90
    ld e, a                                       ; $465a: $5f
    stop                                          ; $465b: $10 $00
    ld a, [c]                                     ; $465d: $f2
    add hl, sp                                    ; $465e: $39
    db $eb                                        ; $465f: $eb
    adc $7a                                       ; $4660: $ce $7a
    ld l, b                                       ; $4662: $68
    rst $28                                       ; $4663: $ef
    jr nz, jr_058_468f                            ; $4664: $20 $29

    xor h                                         ; $4666: $ac
    rrca                                          ; $4667: $0f
    ret z                                         ; $4668: $c8

    ld l, a                                       ; $4669: $6f
    db $ed                                        ; $466a: $ed
    ccf                                           ; $466b: $3f
    ld a, h                                       ; $466c: $7c
    db $10                                        ; $466d: $10
    ld b, e                                       ; $466e: $43
    nop                                           ; $466f: $00
    dec e                                         ; $4670: $1d
    push hl                                       ; $4671: $e5
    sbc a                                         ; $4672: $9f
    cp b                                          ; $4673: $b8
    sbc b                                         ; $4674: $98
    cp h                                          ; $4675: $bc
    or $d9                                        ; $4676: $f6 $d9
    ld a, h                                       ; $4678: $7c
    adc $8f                                       ; $4679: $ce $8f
    push af                                       ; $467b: $f5
    dec h                                         ; $467c: $25
    jr nz, jr_058_46fc                            ; $467d: $20 $7d

    or d                                          ; $467f: $b2
    rst $10                                       ; $4680: $d7
    cp e                                          ; $4681: $bb
    sbc [hl]                                      ; $4682: $9e
    jr nc, jr_058_4687                            ; $4683: $30 $02

    ld [hl], a                                    ; $4685: $77
    cp a                                          ; $4686: $bf

jr_058_4687:
    ld [bc], a                                    ; $4687: $02
    xor l                                         ; $4688: $ad
    sbc a                                         ; $4689: $9f
    db $dd                                        ; $468a: $dd
    and a                                         ; $468b: $a7
    ld d, a                                       ; $468c: $57
    ld a, [c]                                     ; $468d: $f2
    rrca                                          ; $468e: $0f

jr_058_468f:
    ld [bc], a                                    ; $468f: $02
    ld b, b                                       ; $4690: $40
    sbc [hl]                                      ; $4691: $9e
    ld b, [hl]                                    ; $4692: $46
    cp h                                          ; $4693: $bc
    ld e, e                                       ; $4694: $5b
    or d                                          ; $4695: $b2
    ld b, $b4                                     ; $4696: $06 $b4
    ld de, $59dd                                  ; $4698: $11 $dd $59
    db $e4                                        ; $469b: $e4
    xor l                                         ; $469c: $ad
    rst $20                                       ; $469d: $e7
    add e                                         ; $469e: $83
    adc [hl]                                      ; $469f: $8e
    rlca                                          ; $46a0: $07
    ld bc, $b743                                  ; $46a1: $01 $43 $b7
    dec [hl]                                      ; $46a4: $35
    add e                                         ; $46a5: $83
    and $ca                                       ; $46a6: $e6 $ca
    ld a, [c]                                     ; $46a8: $f2
    ld b, c                                       ; $46a9: $41
    rst $28                                       ; $46aa: $ef
    and $e2                                       ; $46ab: $e6 $e2
    or e                                          ; $46ad: $b3
    ld c, e                                       ; $46ae: $4b
    halt                                          ; $46af: $76
    ld c, b                                       ; $46b0: $48
    sbc a                                         ; $46b1: $9f
    rst $28                                       ; $46b2: $ef
    sub $c6                                       ; $46b3: $d6 $c6
    cpl                                           ; $46b5: $2f
    add $f1                                       ; $46b6: $c6 $f1
    ld l, a                                       ; $46b8: $6f
    ld [$94b7], sp                                ; $46b9: $08 $b7 $94
    ld c, $da                                     ; $46bc: $0e $da
    cp e                                          ; $46be: $bb
    dec de                                        ; $46bf: $1b
    db $f4                                        ; $46c0: $f4
    db $dd                                        ; $46c1: $dd
    cp a                                          ; $46c2: $bf
    or l                                          ; $46c3: $b5
    daa                                           ; $46c4: $27
    ld [$12b7], sp                                ; $46c5: $08 $b7 $12
    ld a, [hl-]                                   ; $46c8: $3a
    add sp, -$48                                  ; $46c9: $e8 $b8
    ld e, e                                       ; $46cb: $5b
    db $db                                        ; $46cc: $db
    inc de                                        ; $46cd: $13
    adc $82                                       ; $46ce: $ce $82
    nop                                           ; $46d0: $00
    db $dd                                        ; $46d1: $dd
    ld c, a                                       ; $46d2: $4f
    ld b, h                                       ; $46d3: $44
    or e                                          ; $46d4: $b3
    ld e, e                                       ; $46d5: $5b
    ld a, [hl]                                    ; $46d6: $7e
    dec sp                                        ; $46d7: $3b
    ld e, c                                       ; $46d8: $59
    db $10                                        ; $46d9: $10
    db $dd                                        ; $46da: $dd
    cpl                                           ; $46db: $2f
    ld sp, hl                                     ; $46dc: $f9
    ld l, d                                       ; $46dd: $6a
    or a                                          ; $46de: $b7
    ld l, b                                       ; $46df: $68
    ld c, d                                       ; $46e0: $4a
    adc h                                         ; $46e1: $8c
    nop                                           ; $46e2: $00
    cp l                                          ; $46e3: $bd

jr_058_46e4:
    ld [hl], l                                    ; $46e4: $75
    call $feee                                    ; $46e5: $cd $ee $fe
    xor l                                         ; $46e8: $ad
    cp c                                          ; $46e9: $b9
    db $10                                        ; $46ea: $10
    ld [hl], a                                    ; $46eb: $77
    inc a                                         ; $46ec: $3c
    ld e, c                                       ; $46ed: $59
    ld a, [bc]                                    ; $46ee: $0a
    pop af                                        ; $46ef: $f1
    ret nz                                        ; $46f0: $c0

    jr nz, @+$7f                                  ; $46f1: $20 $7d

    ld [hl-], a                                   ; $46f3: $32
    ld hl, $ebbb                                  ; $46f4: $21 $bb $eb
    add c                                         ; $46f7: $81
    add hl, hl                                    ; $46f8: $29
    dec bc                                        ; $46f9: $0b
    ld l, b                                       ; $46fa: $68
    inc hl                                        ; $46fb: $23

jr_058_46fc:
    ld [hl], a                                    ; $46fc: $77
    db $fd                                        ; $46fd: $fd
    di                                            ; $46fe: $f3
    sub [hl]                                      ; $46ff: $96
    jp nz, $fa39                                  ; $4700: $c2 $39 $fa

    jr nz, jr_058_477c                            ; $4703: $20 $77

    db $fd                                        ; $4705: $fd
    di                                            ; $4706: $f3
    ld b, $e4                                     ; $4707: $06 $e4
    ld sp, $f723                                  ; $4709: $31 $23 $f7
    dec a                                         ; $470c: $3d
    cp l                                          ; $470d: $bd
    xor l                                         ; $470e: $ad
    db $db                                        ; $470f: $db
    ld [hl], a                                    ; $4710: $77
    dec sp                                        ; $4711: $3b
    inc hl                                        ; $4712: $23
    rst $30                                       ; $4713: $f7
    dec a                                         ; $4714: $3d
    cp l                                          ; $4715: $bd
    db $ed                                        ; $4716: $ed
    xor $57                                       ; $4717: $ee $57
    ld b, a                                       ; $4719: $47
    ld e, c                                       ; $471a: $59
    db $10                                        ; $471b: $10
    add hl, hl                                    ; $471c: $29
    rra                                           ; $471d: $1f
    ld h, a                                       ; $471e: $67
    reti                                          ; $471f: $d9


    ld a, l                                       ; $4720: $7d
    call nz, $c927                                ; $4721: $c4 $27 $c9
    add e                                         ; $4724: $83
    nop                                           ; $4725: $00
    ld b, e                                       ; $4726: $43
    ld b, e                                       ; $4727: $43
    ld b, e                                       ; $4728: $43
    ld b, e                                       ; $4729: $43
    ld b, e                                       ; $472a: $43
    ld b, e                                       ; $472b: $43
    ld b, e                                       ; $472c: $43
    ld b, e                                       ; $472d: $43
    ld b, e                                       ; $472e: $43
    ld b, e                                       ; $472f: $43
    ld b, e                                       ; $4730: $43
    ld b, e                                       ; $4731: $43
    ld b, e                                       ; $4732: $43
    ld b, e                                       ; $4733: $43
    ld b, e                                       ; $4734: $43
    ld b, e                                       ; $4735: $43
    ld b, e                                       ; $4736: $43
    ld b, e                                       ; $4737: $43
    ld b, e                                       ; $4738: $43
    ld b, e                                       ; $4739: $43
    ld b, e                                       ; $473a: $43

jr_058_473b:
    ld b, e                                       ; $473b: $43
    ld b, e                                       ; $473c: $43
    ld b, e                                       ; $473d: $43
    ld b, e                                       ; $473e: $43
    ld b, e                                       ; $473f: $43
    ld b, e                                       ; $4740: $43
    ld b, e                                       ; $4741: $43
    ld b, e                                       ; $4742: $43
    ld b, e                                       ; $4743: $43
    ld b, e                                       ; $4744: $43
    ld b, e                                       ; $4745: $43
    ld b, e                                       ; $4746: $43
    ld b, e                                       ; $4747: $43
    dec a                                         ; $4748: $3d
    cp $da                                        ; $4749: $fe $da
    cp c                                          ; $474b: $b9
    or $63                                        ; $474c: $f6 $63
    db $f4                                        ; $474e: $f4
    sub h                                         ; $474f: $94
    ld c, $21                                     ; $4750: $0e $21
    db $ec                                        ; $4752: $ec
    ld a, c                                       ; $4753: $79
    ld d, l                                       ; $4754: $55
    sbc d                                         ; $4755: $9a
    db $dd                                        ; $4756: $dd
    sub a                                         ; $4757: $97
    sbc c                                         ; $4758: $99
    ld e, l                                       ; $4759: $5d
    cp l                                          ; $475a: $bd
    db $10                                        ; $475b: $10

jr_058_475c:
    add b                                         ; $475c: $80
    db $dd                                        ; $475d: $dd
    jr nz, jr_058_46e4                            ; $475e: $20 $84

    ld [$fadd], sp                                ; $4760: $08 $dd $fa
    ld e, h                                       ; $4763: $5c
    ld d, e                                       ; $4764: $53
    ld h, [hl]                                    ; $4765: $66
    db $ed                                        ; $4766: $ed
    ld a, [hl]                                    ; $4767: $7e
    adc h                                         ; $4768: $8c
    sbc $79                                       ; $4769: $de $79
    jp nz, Jump_058_76bd                          ; $476b: $c2 $bd $76

    ld l, a                                       ; $476e: $6f
    jr @-$6d                                      ; $476f: $18 $91

    db $fc                                        ; $4771: $fc
    inc sp                                        ; $4772: $33
    and l                                         ; $4773: $a5
    rst $08                                       ; $4774: $cf
    dec [hl]                                      ; $4775: $35
    jp nz, $5da5                                  ; $4776: $c2 $a5 $5d

    jp c, $a9ac                                   ; $4779: $da $ac $a9

jr_058_477c:
    add hl, hl                                    ; $477c: $29
    di                                            ; $477d: $f3
    ld e, $4f                                     ; $477e: $1e $4f
    jp hl                                         ; $4780: $e9


    or e                                          ; $4781: $b3
    jr z, jr_058_473b                             ; $4782: $28 $b7

    rra                                           ; $4784: $1f
    halt                                          ; $4785: $76
    ld [c], a                                     ; $4786: $e2
    ld l, e                                       ; $4787: $6b
    ld c, e                                       ; $4788: $4b
    dec sp                                        ; $4789: $3b
    ld l, b                                       ; $478a: $68
    ld b, h                                       ; $478b: $44
    inc a                                         ; $478c: $3c
    sub d                                         ; $478d: $92
    ld e, d                                       ; $478e: $5a
    rst $28                                       ; $478f: $ef
    rst $10                                       ; $4790: $d7
    jr c, jr_058_475c                             ; $4791: $38 $c9

    push bc                                       ; $4793: $c5
    xor c                                         ; $4794: $a9
    ld de, $cd80                                  ; $4795: $11 $80 $cd
    ld a, e                                       ; $4798: $7b

jr_058_4799:
    xor l                                         ; $4799: $ad
    ld a, c                                       ; $479a: $79
    xor a                                         ; $479b: $af
    pop af                                        ; $479c: $f1
    ld [hl-], a                                   ; $479d: $32
    ld e, $76                                     ; $479e: $1e $76
    add sp, -$7b                                  ; $47a0: $e8 $85
    nop                                           ; $47a2: $00
    or a                                          ; $47a3: $b7
    dec de                                        ; $47a4: $1b
    ld e, e                                       ; $47a5: $5b
    ld e, [hl]                                    ; $47a6: $5e
    db $e3                                        ; $47a7: $e3
    call nc, Call_058_79eb                        ; $47a8: $d4 $eb $79
    ld d, l                                       ; $47ab: $55
    sbc d                                         ; $47ac: $9a
    db $dd                                        ; $47ad: $dd
    sub a                                         ; $47ae: $97
    sbc c                                         ; $47af: $99
    ld e, l                                       ; $47b0: $5d
    inc hl                                        ; $47b1: $23
    xor c                                         ; $47b2: $a9
    push af                                       ; $47b3: $f5
    ld a, [hl]                                    ; $47b4: $7e
    adc l                                         ; $47b5: $8d
    sub e                                         ; $47b6: $93
    ld e, h                                       ; $47b7: $5c
    sbc h                                         ; $47b8: $9c
    ld a, d                                       ; $47b9: $7a
    or a                                          ; $47ba: $b7

Call_058_47bb:
    push de                                       ; $47bb: $d5
    sub h                                         ; $47bc: $94
    ld a, c                                       ; $47bd: $79
    sub d                                         ; $47be: $92
    cp l                                          ; $47bf: $bd
    adc [hl]                                      ; $47c0: $8e
    jp $93e2                                      ; $47c1: $c3 $e2 $93


    add l                                         ; $47c4: $85
    ld c, [hl]                                    ; $47c5: $4e
    ld d, a                                       ; $47c6: $57
    ld a, c                                       ; $47c7: $79
    ld [hl], h                                    ; $47c8: $74
    xor [hl]                                      ; $47c9: $ae
    add hl, hl                                    ; $47ca: $29
    add a                                         ; $47cb: $87
    ld e, [hl]                                    ; $47cc: $5e
    inc bc                                        ; $47cd: $03
    ld e, b                                       ; $47ce: $58
    sub [hl]                                      ; $47cf: $96
    ldh [$9a], a                                  ; $47d0: $e0 $9a
    jp nc, $d927                                  ; $47d2: $d2 $27 $d9

    or d                                          ; $47d5: $b2
    ld e, e                                       ; $47d6: $5b
    ld e, h                                       ; $47d7: $5c
    ld e, l                                       ; $47d8: $5d
    sbc b                                         ; $47d9: $98
    dec a                                         ; $47da: $3d
    jp nz, $b8f1                                  ; $47db: $c2 $f1 $b8

    sub [hl]                                      ; $47de: $96
    jp Jump_058_72b8                              ; $47df: $c3 $b8 $72


    ld l, e                                       ; $47e2: $6b
    ret c                                         ; $47e3: $d8

    ld [hl+], a                                   ; $47e4: $22
    sub a                                         ; $47e5: $97
    call nz, $dc5c                                ; $47e6: $c4 $5c $dc
    dec bc                                        ; $47e9: $0b
    ld bc, $1c7d                                  ; $47ea: $01 $7d $1c
    sub [hl]                                      ; $47ed: $96
    sbc b                                         ; $47ee: $98
    rst $30                                       ; $47ef: $f7
    ld h, e                                       ; $47f0: $63
    inc [hl]                                      ; $47f1: $34
    add h                                         ; $47f2: $84
    sub b                                         ; $47f3: $90
    ld c, b                                       ; $47f4: $48
    sbc $5c                                       ; $47f5: $de $5c
    ld d, e                                       ; $47f7: $53
    and $d1                                       ; $47f8: $e6 $d1
    cp c                                          ; $47fa: $b9
    ld h, $d9                                     ; $47fb: $26 $d9
    cp l                                          ; $47fd: $bd
    db $10                                        ; $47fe: $10
    db $fd                                        ; $47ff: $fd
    ld l, d                                       ; $4800: $6a
    and a                                         ; $4801: $a7
    inc a                                         ; $4802: $3c
    rst $10                                       ; $4803: $d7
    jr c, jr_058_4799                             ; $4804: $38 $93

    and h                                         ; $4806: $a4
    dec h                                         ; $4807: $25
    push af                                       ; $4808: $f5
    cp d                                          ; $4809: $ba
    call Call_000_2d73                            ; $480a: $cd $73 $2d
    and $e2                                       ; $480d: $e6 $e2
    add hl, hl                                    ; $480f: $29
    ld a, l                                       ; $4810: $7d
    pop af                                        ; $4811: $f1
    ret                                           ; $4812: $c9


    adc $c3                                       ; $4813: $ce $c3
    call $a923                                    ; $4815: $cd $23 $a9
    push hl                                       ; $4818: $e5
    or b                                          ; $4819: $b0
    or h                                          ; $481a: $b4
    add [hl]                                      ; $481b: $86
    reti                                          ; $481c: $d9


    ld [hl], b                                    ; $481d: $70
    rst $30                                       ; $481e: $f7
    add [hl]                                      ; $481f: $86
    dec e                                         ; $4820: $1d
    ld l, d                                       ; $4821: $6a
    pop af                                        ; $4822: $f1
    ret                                           ; $4823: $c9


    sub h                                         ; $4824: $94
    cp [hl]                                       ; $4825: $be
    or $82                                        ; $4826: $f6 $82
    rla                                           ; $4828: $17
    ld [hl], e                                    ; $4829: $73
    pop af                                        ; $482a: $f1
    dec h                                         ; $482b: $25
    ld sp, $f4e3                                  ; $482c: $31 $e3 $f4
    sub a                                         ; $482f: $97
    ld [hl], a                                    ; $4830: $77
    ld a, [hl-]                                   ; $4831: $3a
    ld e, c                                       ; $4832: $59
    ld e, h                                       ; $4833: $5c
    dec sp                                        ; $4834: $3b
    add hl, de                                    ; $4835: $19
    rst $28                                       ; $4836: $ef
    call nz, $ba47                                ; $4837: $c4 $47 $ba
    add [hl]                                      ; $483a: $86
    ld e, a                                       ; $483b: $5f
    ld hl, sp-$57                                 ; $483c: $f8 $a9
    ld de, $5177                                  ; $483e: $11 $77 $51
    db $ec                                        ; $4841: $ec
    ld e, d                                       ; $4842: $5a
    jp c, $3caa                                   ; $4843: $da $aa $3c

    adc e                                         ; $4846: $8b
    adc h                                         ; $4847: $8c
    ld e, d                                       ; $4848: $5a
    ld [hl], e                                    ; $4849: $73
    ld [$7c5e], sp                                ; $484a: $08 $5e $7c
    jp hl                                         ; $484d: $e9


    rst $10                                       ; $484e: $d7
    ldh [$ba], a                                  ; $484f: $e0 $ba
    call $9d0b                                    ; $4851: $cd $0b $9d
    ld e, h                                       ; $4854: $5c
    jp z, Jump_000_38eb                           ; $4855: $ca $eb $38

    inc c                                         ; $4858: $0c
    ld l, e                                       ; $4859: $6b
    inc a                                         ; $485a: $3c
    cp d                                          ; $485b: $ba
    xor e                                         ; $485c: $ab
    jr nz, jr_058_4861                            ; $485d: $20 $02

    ld a, l                                       ; $485f: $7d
    inc e                                         ; $4860: $1c

jr_058_4861:
    ld b, [hl]                                    ; $4861: $46
    cp h                                          ; $4862: $bc
    ld a, [de]                                    ; $4863: $1a
    ld a, [hl]                                    ; $4864: $7e
    rst $20                                       ; $4865: $e7
    cp b                                          ; $4866: $b8
    or $92                                        ; $4867: $f6 $92
    add hl, hl                                    ; $4869: $29
    dec a                                         ; $486a: $3d
    db $dd                                        ; $486b: $dd
    call z, Call_058_497c                         ; $486c: $cc $7c $49
    call z, Call_058_70c5                         ; $486f: $cc $c5 $70
    db $dd                                        ; $4872: $dd
    and $b9                                       ; $4873: $e6 $b9
    sub [hl]                                      ; $4875: $96
    ld a, [hl]                                    ; $4876: $7e
    push hl                                       ; $4877: $e5
    ld e, c                                       ; $4878: $59
    sub $57                                       ; $4879: $d6 $57
    ld a, c                                       ; $487b: $79
    call nc, Call_058_6a68                        ; $487c: $d4 $68 $6a
    pop hl                                        ; $487f: $e1
    ld c, a                                       ; $4880: $4f
    add hl, de                                    ; $4881: $19
    adc a                                         ; $4882: $8f
    ld a, a                                       ; $4883: $7f
    sbc e                                         ; $4884: $9b
    ld [hl], d                                    ; $4885: $72
    add b                                         ; $4886: $80
    db $eb                                        ; $4887: $eb
    ld [hl], $cf                                  ; $4888: $36 $cf
    or l                                          ; $488a: $b5
    xor e                                         ; $488b: $ab
    ld b, [hl]                                    ; $488c: $46
    rst $20                                       ; $488d: $e7
    ld a, [hl-]                                   ; $488e: $3a
    or c                                          ; $488f: $b1
    db $e3                                        ; $4890: $e3
    sub $7e                                       ; $4891: $d6 $7e
    ldh a, [$62]                                  ; $4893: $f0 $62
    ld l, $3e                                     ; $4895: $2e $3e
    sbc h                                         ; $4897: $9c
    ld h, e                                       ; $4898: $63
    ld [hl], h                                    ; $4899: $74
    ld c, l                                       ; $489a: $4d
    jp hl                                         ; $489b: $e9


    adc e                                         ; $489c: $8b
    ld c, a                                       ; $489d: $4f
    halt                                          ; $489e: $76
    ld e, $6e                                     ; $489f: $1e $6e
    ld e, $49                                     ; $48a1: $1e $49
    pop bc                                        ; $48a3: $c1
    push af                                       ; $48a4: $f5
    cp b                                          ; $48a5: $b8
    or h                                          ; $48a6: $b4
    ld c, e                                       ; $48a7: $4b
    call c, $88c2                                 ; $48a8: $dc $c2 $88
    db $e4                                        ; $48ab: $e4
    or a                                          ; $48ac: $b7
    ld l, b                                       ; $48ad: $68
    sbc c                                         ; $48ae: $99
    jp nc, $fc97                                  ; $48af: $d2 $97 $fc

    or [hl]                                       ; $48b2: $b6
    or h                                          ; $48b3: $b4
    add e                                         ; $48b4: $83
    ld b, [hl]                                    ; $48b5: $46
    call nz, Call_058_56c3                        ; $48b6: $c4 $c3 $56
    db $10                                        ; $48b9: $10
    ld bc, $16dd                                  ; $48ba: $01 $dd $16
    pop af                                        ; $48bd: $f1
    ld c, $e7                                     ; $48be: $0e $e7
    jr @+$2f                                      ; $48c0: $18 $2d

    dec sp                                        ; $48c2: $3b
    xor [hl]                                      ; $48c3: $ae
    ld a, l                                       ; $48c4: $7d
    ld h, c                                       ; $48c5: $61
    sub a                                         ; $48c6: $97
    rst $08                                       ; $48c7: $cf
    ld a, c                                       ; $48c8: $79

jr_058_48c9:
    jp nz, $19d3                                  ; $48c9: $c2 $d3 $19

    ld [hl+], a                                   ; $48cc: $22
    db $dd                                        ; $48cd: $dd
    ld l, a                                       ; $48ce: $6f
    ld e, h                                       ; $48cf: $5c
    sub [hl]                                      ; $48d0: $96
    ldh [$9a], a                                  ; $48d1: $e0 $9a
    jp nc, $c577                                  ; $48d3: $d2 $77 $c5

    ld hl, sp+$4b                                 ; $48d6: $f8 $4b
    jr @+$01                                      ; $48d8: $18 $ff

    ld b, $d7                                     ; $48da: $06 $d7
    ld l, l                                       ; $48dc: $6d
    sbc c                                         ; $48dd: $99
    push bc                                       ; $48de: $c5
    ld [hl], e                                    ; $48df: $73
    call $dbb2                                    ; $48e0: $cd $b2 $db
    ld [hl], e                                    ; $48e3: $73
    ei                                            ; $48e4: $fb
    ld a, c                                       ; $48e5: $79
    ld hl, sp-$7b                                 ; $48e6: $f8 $85
    xor a                                         ; $48e8: $af
    dec e                                         ; $48e9: $1d
    sub c                                         ; $48ea: $91
    db $e4                                        ; $48eb: $e4
    sbc d                                         ; $48ec: $9a
    jp nc, Jump_058_5ed7                          ; $48ed: $d2 $d7 $5e

    jr z, jr_058_48c9                             ; $48f0: $28 $d7

    ld h, d                                       ; $48f2: $62
    ld l, $3e                                     ; $48f3: $2e $3e
    rrca                                          ; $48f5: $0f
    or a                                          ; $48f6: $b7
    cpl                                           ; $48f7: $2f
    pop bc                                        ; $48f8: $c1
    ld [hl-], a                                   ; $48f9: $32
    push af                                       ; $48fa: $f5
    dec b                                         ; $48fb: $05
    ld [hl+], a                                   ; $48fc: $22
    db $dd                                        ; $48fd: $dd
    and $3d                                       ; $48fe: $e6 $3d
    ld d, c                                       ; $4900: $51
    push hl                                       ; $4901: $e5
    add hl, hl                                    ; $4902: $29

jr_058_4903:
    ld a, l                                       ; $4903: $7d
    ld e, h                                       ; $4904: $5c
    sub [hl]                                      ; $4905: $96
    ldh [$9a], a                                  ; $4906: $e0 $9a
    ld l, e                                       ; $4908: $6b
    sub [hl]                                      ; $4909: $96
    db $dd                                        ; $490a: $dd
    sbc [hl]                                      ; $490b: $9e
    db $db                                        ; $490c: $db
    rst $08                                       ; $490d: $cf
    db $e3                                        ; $490e: $e3
    ld a, [$fb64]                                 ; $490f: $fa $64 $fb
    and b                                         ; $4912: $a0
    push af                                       ; $4913: $f5
    inc bc                                        ; $4914: $03
    ld [hl], a                                    ; $4915: $77

Jump_058_4916:
    rst $00                                       ; $4916: $c7
    sub h                                         ; $4917: $94
    ld h, l                                       ; $4918: $65
    db $ed                                        ; $4919: $ed
    add l                                         ; $491a: $85
    ld [hl], d                                    ; $491b: $72
    ld c, l                                       ; $491c: $4d
    jp hl                                         ; $491d: $e9


    adc e                                         ; $491e: $8b
    cp c                                          ; $491f: $b9
    ld hl, sp-$6e                                 ; $4920: $f8 $92
    sbc b                                         ; $4922: $98
    ld [hl], c                                    ; $4923: $71
    ld a, [$3bcb]                                 ; $4924: $fa $cb $3b
    sbc l                                         ; $4927: $9d
    inc l                                         ; $4928: $2c
    ld l, $b8                                     ; $4929: $2e $b8
    ld a, $0e                                     ; $492b: $3e $0e
    dec sp                                        ; $492d: $3b
    db $e4                                        ; $492e: $e4
    inc de                                        ; $492f: $13
    push hl                                       ; $4930: $e5
    ld [hl], d                                    ; $4931: $72
    dec l                                         ; $4932: $2d

jr_058_4933:
    ld [hl], h                                    ; $4933: $74
    ld e, h                                       ; $4934: $5c
    ld [c], a                                     ; $4935: $e2
    sbc c                                         ; $4936: $99
    ld b, a                                       ; $4937: $47
    cp [hl]                                       ; $4938: $be
    ld e, d                                       ; $4939: $5a
    call z, $fd38                                 ; $493a: $cc $38 $fd
    push hl                                       ; $493d: $e5
    sbc l                                         ; $493e: $9d
    ld c, [hl]                                    ; $493f: $4e
    ld d, $d7                                     ; $4940: $16 $d7
    ld [hl], d                                    ; $4942: $72
    jr c, jr_058_4999                             ; $4943: $38 $54

    ld l, d                                       ; $4945: $6a
    inc b                                         ; $4946: $04
    nop                                           ; $4947: $00
    push af                                       ; $4948: $f5
    ld h, e                                       ; $4949: $63
    add hl, de                                    ; $494a: $19
    cp a                                          ; $494b: $bf
    jr jr_058_4903                                ; $494c: $18 $b5

    ld d, e                                       ; $494e: $53
    and $25                                       ; $494f: $e6 $25
    xor a                                         ; $4951: $af
    sub [hl]                                      ; $4952: $96
    cp b                                          ; $4953: $b8
    xor c                                         ; $4954: $a9
    rra                                           ; $4955: $1f
    halt                                          ; $4956: $76
    db $e4                                        ; $4957: $e4
    scf                                           ; $4958: $37
    add [hl]                                      ; $4959: $86
    ld [$e6dd], sp                                ; $495a: $08 $dd $e6
    dec h                                         ; $495d: $25
    xor a                                         ; $495e: $af
    sub [hl]                                      ; $495f: $96
    ld a, [hl]                                    ; $4960: $7e
    push hl                                       ; $4961: $e5
    ld de, $109a                                  ; $4962: $11 $9a $10
    call c, $807e                                 ; $4965: $dc $7e $80
    db $eb                                        ; $4968: $eb
    db $d3                                        ; $4969: $d3
    ld [hl], l                                    ; $496a: $75
    adc [hl]                                      ; $496b: $8e
    halt                                          ; $496c: $76
    adc c                                         ; $496d: $89
    add l                                         ; $496e: $85

jr_058_496f:
    rst $00                                       ; $496f: $c7
    cp a                                          ; $4970: $bf
    xor l                                         ; $4971: $ad
    db $e3                                        ; $4972: $e3
    jr nc, jr_058_49af                            ; $4973: $30 $3a

    rla                                           ; $4975: $17
    cp e                                          ; $4976: $bb
    dec [hl]                                      ; $4977: $35
    rst $10                                       ; $4978: $d7
    add d                                         ; $4979: $82
    adc $fc                                       ; $497a: $ce $fc

Call_058_497c:
    or $78                                        ; $497c: $f6 $78
    dec e                                         ; $497e: $1d
    add a                                         ; $497f: $87
    ld de, $d79d                                  ; $4980: $11 $9d $d7
    ret z                                         ; $4983: $c8

    push af                                       ; $4984: $f5
    cp h                                          ; $4985: $bc
    ld a, [hl+]                                   ; $4986: $2a
    call $cbee                                    ; $4987: $cd $ee $cb
    call z, $d4ae                                 ; $498a: $cc $ae $d4
    ld [$143d], sp                                ; $498d: $08 $3d $14
    jp hl                                         ; $4990: $e9


    sbc d                                         ; $4991: $9a
    jp nc, Jump_058_7ed7                          ; $4992: $d2 $d7 $7e

    ld [hl], h                                    ; $4995: $74
    dec l                                         ; $4996: $2d
    and $62                                       ; $4997: $e6 $62

jr_058_4999:
    adc e                                         ; $4999: $8b
    ld d, e                                       ; $499a: $53
    cpl                                           ; $499b: $2f
    push bc                                       ; $499c: $c5
    dec [hl]                                      ; $499d: $35
    push hl                                       ; $499e: $e5
    jr nc, jr_058_4933                            ; $499f: $30 $92

    ld e, d                                       ; $49a1: $5a
    rst $28                                       ; $49a2: $ef
    rst $10                                       ; $49a3: $d7
    jr c, jr_058_496f                             ; $49a4: $38 $c9

    push bc                                       ; $49a6: $c5
    xor c                                         ; $49a7: $a9
    ld de, $f8b7                                  ; $49a8: $11 $b7 $f8
    ldh a, [$3a]                                  ; $49ab: $f0 $3a
    ld c, $fb                                     ; $49ad: $0e $fb

jr_058_49af:
    ld sp, $817a                                  ; $49af: $31 $7a $81
    xor d                                         ; $49b2: $aa
    xor c                                         ; $49b3: $a9
    rst $08                                       ; $49b4: $cf
    sla h                                         ; $49b5: $cb $24
    add hl, bc                                    ; $49b7: $09
    rst $10                                       ; $49b8: $d7
    db $e3                                        ; $49b9: $e3
    jp nz, $bc5f                                  ; $49ba: $c2 $5f $bc

    sbc b                                         ; $49bd: $98
    ld sp, $2d76                                  ; $49be: $31 $76 $2d
    db $fd                                        ; $49c1: $fd
    jp z, $dfe3                                   ; $49c2: $ca $e3 $df

    ld b, [hl]                                    ; $49c5: $46
    db $ed                                        ; $49c6: $ed
    call nz, Call_058_5b8e                        ; $49c7: $c4 $8e $5b
    di                                            ; $49ca: $f3
    or b                                          ; $49cb: $b0
    jp $8674                                      ; $49cc: $c3 $74 $86


    ld [$ff80], sp                                ; $49cf: $08 $80 $ff
    adc [hl]                                      ; $49d2: $8e
    ld e, e                                       ; $49d3: $5b
    ld [hl], b                                    ; $49d4: $70
    call $ed34                                    ; $49d5: $cd $34 $ed
    ret z                                         ; $49d8: $c8

    xor [hl]                                      ; $49d9: $ae

Jump_058_49da:
    pop af                                        ; $49da: $f1
    ld l, a                                       ; $49db: $6f
    xor e                                         ; $49dc: $ab
    adc a                                         ; $49dd: $8f
    db $dd                                        ; $49de: $dd
    ld a, [hl]                                    ; $49df: $7e
    ldh a, [$c8]                                  ; $49e0: $f0 $c8
    ld a, [$b5c7]                                 ; $49e2: $fa $c7 $b5
    cp a                                          ; $49e5: $bf
    dec sp                                        ; $49e6: $3b
    ld [hl], e                                    ; $49e7: $73
    ld [hl], c                                    ; $49e8: $71
    ld l, h                                       ; $49e9: $6c
    ld a, d                                       ; $49ea: $7a
    ld a, [hl-]                                   ; $49eb: $3a
    ld l, l                                       ; $49ec: $6d
    add c                                         ; $49ed: $81
    cp e                                          ; $49ee: $bb
    or e                                          ; $49ef: $b3
    db $d3                                        ; $49f0: $d3
    ld b, l                                       ; $49f1: $45
    ld c, $5b                                     ; $49f2: $0e $5b
    adc $92                                       ; $49f4: $ce $92
    ccf                                           ; $49f6: $3f
    ld [c], a                                     ; $49f7: $e2
    dec d                                         ; $49f8: $15
    call c, Call_058_65ed                         ; $49f9: $dc $ed $65
    or l                                          ; $49fc: $b5
    inc e                                         ; $49fd: $1c
    halt                                          ; $49fe: $76
    ld a, e                                       ; $49ff: $7b
    dec a                                         ; $4a00: $3d
    adc c                                         ; $4a01: $89
    ld [$dd80], sp                                ; $4a02: $08 $80 $dd
    jp nz, Jump_000_2e62                          ; $4a05: $c2 $62 $2e

    ld a, $fc                                     ; $4a08: $3e $fc
    ld h, e                                       ; $4a0a: $63
    add h                                         ; $4a0b: $84
    ld [$f7fd], sp                                ; $4a0c: $08 $fd $f7
    pop de                                        ; $4a0f: $d1
    rrca                                          ; $4a10: $0f
    db $eb                                        ; $4a11: $eb
    ld h, a                                       ; $4a12: $67
    rst $30                                       ; $4a13: $f7
    db $fd                                        ; $4a14: $fd
    sub $3e                                       ; $4a15: $d6 $3e
    sbc b                                         ; $4a17: $98
    rrca                                          ; $4a18: $0f
    ld a, [hl-]                                   ; $4a19: $3a
    ld [hl], $f7                                  ; $4a1a: $36 $f7
    ld a, a                                       ; $4a1c: $7f
    ret                                           ; $4a1d: $c9


    pop hl                                        ; $4a1e: $e1
    inc e                                         ; $4a1f: $1c
    inc hl                                        ; $4a20: $23
    ld [bc], a                                    ; $4a21: $02
    db $fd                                        ; $4a22: $fd
    rst $30                                       ; $4a23: $f7
    sub $5b                                       ; $4a24: $d6 $5b
    ei                                            ; $4a26: $fb
    adc c                                         ; $4a27: $89
    ld l, e                                       ; $4a28: $6b
    rst $30                                       ; $4a29: $f7
    push hl                                       ; $4a2a: $e5
    add sp, -$4c                                  ; $4a2b: $e8 $b4
    and [hl]                                      ; $4a2d: $a6
    rst $38                                       ; $4a2e: $ff
    ld c, e                                       ; $4a2f: $4b
    ld c, $e7                                     ; $4a30: $0e $e7
    jr jr_058_4a45                                ; $4a32: $18 $11

    db $fd                                        ; $4a34: $fd
    rst $30                                       ; $4a35: $f7
    ld l, $87                                     ; $4a36: $2e $87
    ld e, h                                       ; $4a38: $5c
    ld e, a                                       ; $4a39: $5f
    ccf                                           ; $4a3a: $3f
    ld d, e                                       ; $4a3b: $53
    sub [hl]                                      ; $4a3c: $96
    add l                                         ; $4a3d: $85
    or $98                                        ; $4a3e: $f6 $98
    db $dd                                        ; $4a40: $dd
    rst $38                                       ; $4a41: $ff
    dec h                                         ; $4a42: $25
    add a                                         ; $4a43: $87
    ld [hl], e                                    ; $4a44: $73

jr_058_4a45:
    adc h                                         ; $4a45: $8c
    ld [$dffd], sp                                ; $4a46: $08 $fd $df
    di                                            ; $4a49: $f3
    ld hl, sp-$37                                 ; $4a4a: $f8 $c9
    sub h                                         ; $4a4c: $94
    ld h, l                                       ; $4a4d: $65
    ld h, d                                       ; $4a4e: $62
    push hl                                       ; $4a4f: $e5
    ld d, d                                       ; $4a50: $52
    push hl                                       ; $4a51: $e5
    ret z                                         ; $4a52: $c8

    ccf                                           ; $4a53: $3f
    cp b                                          ; $4a54: $b8
    rst $38                                       ; $4a55: $ff
    ld c, e                                       ; $4a56: $4b
    ld c, $e7                                     ; $4a57: $0e $e7
    jr @+$13                                      ; $4a59: $18 $11

    dec a                                         ; $4a5b: $3d
    ret                                           ; $4a5c: $c9


    dec de                                        ; $4a5d: $1b
    or [hl]                                       ; $4a5e: $b6
    jp c, $4f69                                   ; $4a5f: $da $69 $4f

    add d                                         ; $4a62: $82
    reti                                          ; $4a63: $d9


    ld [hl+], a                                   ; $4a64: $22
    xor [hl]                                      ; $4a65: $ae
    ld e, [hl]                                    ; $4a66: $5e
    inc bc                                        ; $4a67: $03
    ld l, h                                       ; $4a68: $6c
    sbc [hl]                                      ; $4a69: $9e
    jp nc, $d927                                  ; $4a6a: $d2 $27 $d9

    bit 7, b                                      ; $4a6d: $cb $78
    jp z, $17b8                                   ; $4a6f: $ca $b8 $17

    ld [bc], a                                    ; $4a72: $02
    add b                                         ; $4a73: $80
    db $dd                                        ; $4a74: $dd
    or h                                          ; $4a75: $b4
    inc hl                                        ; $4a76: $23
    dec hl                                        ; $4a77: $2b
    db $d3                                        ; $4a78: $d3
    ld a, $27                                     ; $4a79: $3e $27
    rst $10                                       ; $4a7b: $d7
    ld d, d                                       ; $4a7c: $52
    ld hl, sp-$39                                 ; $4a7d: $f8 $c7
    or $25                                        ; $4a7f: $f6 $25
    ld c, h                                       ; $4a81: $4c
    ld h, a                                       ; $4a82: $67
    cpl                                           ; $4a83: $2f
    or c                                          ; $4a84: $b1
    sbc d                                         ; $4a85: $9a
    xor d                                         ; $4a86: $aa
    sbc a                                         ; $4a87: $9f
    db $10                                        ; $4a88: $10
    ld a, [$3b79]                                 ; $4a89: $fa $79 $3b
    call $979f                                    ; $4a8c: $cd $9f $97
    db $fc                                        ; $4a8f: $fc
    ld [hl], e                                    ; $4a90: $73
    ld a, b                                       ; $4a91: $78
    ret c                                         ; $4a92: $d8

    ld l, d                                       ; $4a93: $6a
    call nc, $2f3a                                ; $4a94: $d4 $3a $2f
    ld a, b                                       ; $4a97: $78
    jp hl                                         ; $4a98: $e9


    ld e, h                                       ; $4a99: $5c
    inc a                                         ; $4a9a: $3c
    ret                                           ; $4a9b: $c9


    sub [hl]                                      ; $4a9c: $96
    sbc l                                         ; $4a9d: $9d
    or $24                                        ; $4a9e: $f6 $24
    cp b                                          ; $4aa0: $b8
    ldh [$ee], a                                  ; $4aa1: $e0 $ee
    ld a, h                                       ; $4aa3: $7c
    ld [hl], d                                    ; $4aa4: $72
    ld h, d                                       ; $4aa5: $62
    rst $00                                       ; $4aa6: $c7
    sub e                                         ; $4aa7: $93
    ld l, h                                       ; $4aa8: $6c
    reti                                          ; $4aa9: $d9


    ld c, e                                       ; $4aaa: $4b
    add $16                                       ; $4aab: $c6 $16
    ld a, c                                       ; $4aad: $79
    ld l, e                                       ; $4aae: $6b
    ccf                                           ; $4aaf: $3f
    inc b                                         ; $4ab0: $04
    rst $10                                       ; $4ab1: $d7
    ld a, [hl]                                    ; $4ab2: $7e
    add sp, $58                                   ; $4ab3: $e8 $58
    jr nz, jr_058_4ab9                            ; $4ab5: $20 $02

    nop                                           ; $4ab7: $00
    ld e, a                                       ; $4ab8: $5f

jr_058_4ab9:
    adc h                                         ; $4ab9: $8c
    jp c, $d6f5                                   ; $4aba: $da $f5 $d6

    add h                                         ; $4abd: $84
    ld a, [$220a]                                 ; $4abe: $fa $0a $22
    add b                                         ; $4ac1: $80
    db $dd                                        ; $4ac2: $dd
    sub [hl]                                      ; $4ac3: $96
    halt                                          ; $4ac4: $76
    call z, Call_000_1b18                         ; $4ac5: $cc $18 $1b
    xor [hl]                                      ; $4ac8: $ae
    adc a                                         ; $4ac9: $8f
    jp $d44e                                      ; $4aca: $c3 $4e $d4


    ei                                            ; $4acd: $fb
    ld e, a                                       ; $4ace: $5f
    add sp, -$48                                  ; $4acf: $e8 $b8
    call nz, $3a23                                ; $4ad1: $c4 $23 $3a
    ld a, l                                       ; $4ad4: $7d
    dec [hl]                                      ; $4ad5: $35
    sub d                                         ; $4ad6: $92
    rst $00                                       ; $4ad7: $c7
    cp a                                          ; $4ad8: $bf
    ld l, l                                       ; $4ad9: $6d
    call $ed6c                                    ; $4ada: $cd $6c $ed
    or b                                          ; $4add: $b0
    ld h, l                                       ; $4ade: $65
    dec e                                         ; $4adf: $1d
    add a                                         ; $4ae0: $87
    ld de, $46af                                  ; $4ae1: $11 $af $46
    inc a                                         ; $4ae4: $3c

jr_058_4ae5:
    and $29                                       ; $4ae5: $e6 $29
    di                                            ; $4ae7: $f3
    ld c, $35                                     ; $4ae8: $0e $35
    xor [hl]                                      ; $4aea: $ae
    sub a                                         ; $4aeb: $97
    halt                                          ; $4aec: $76
    db $e3                                        ; $4aed: $e3
    ld h, c                                       ; $4aee: $61
    xor e                                         ; $4aef: $ab
    ld d, c                                       ; $4af0: $51
    dec sp                                        ; $4af1: $3b
    ld h, h                                       ; $4af2: $64
    ld [hl], l                                    ; $4af3: $75
    ld l, c                                       ; $4af4: $69
    ret c                                         ; $4af5: $d8

    ld c, e                                       ; $4af6: $4b
    rst $38                                       ; $4af7: $ff
    sub $5c                                       ; $4af8: $d6 $5c
    inc hl                                        ; $4afa: $23
    ld e, h                                       ; $4afb: $5c
    inc hl                                        ; $4afc: $23
    xor c                                         ; $4afd: $a9
    and l                                         ; $4afe: $a5
    ld e, a                                       ; $4aff: $5f
    inc a                                         ; $4b00: $3c
    ld e, a                                       ; $4b01: $5f
    cp l                                          ; $4b02: $bd
    dec a                                         ; $4b03: $3d
    ld e, [hl]                                    ; $4b04: $5e
    rst $00                                       ; $4b05: $c7
    ld h, c                                       ; $4b06: $61
    sbc b                                         ; $4b07: $98
    ld a, [de]                                    ; $4b08: $1a
    pop af                                        ; $4b09: $f1
    add [hl]                                      ; $4b0a: $86
    dec e                                         ; $4b0b: $1d
    ld h, [hl]                                    ; $4b0c: $66
    ld e, c                                       ; $4b0d: $59
    db $d3                                        ; $4b0e: $d3

Call_058_4b0f:
    dec bc                                        ; $4b0f: $0b
    ld [hl+], a                                   ; $4b10: $22
    ld [hl], a                                    ; $4b11: $77
    rst $20                                       ; $4b12: $e7
    ld [de], a                                    ; $4b13: $12
    db $ed                                        ; $4b14: $ed
    ret z                                         ; $4b15: $c8

    jp z, $cfb4                                   ; $4b16: $ca $b4 $cf

    ret                                           ; $4b19: $c9


    or l                                          ; $4b1a: $b5
    inc d                                         ; $4b1b: $14
    cp $b1                                        ; $4b1c: $fe $b1
    ld a, l                                       ; $4b1e: $7d
    add hl, bc                                    ; $4b1f: $09
    db $10                                        ; $4b20: $10
    ld bc, $e777                                  ; $4b21: $01 $77 $e7
    ld [de], a                                    ; $4b24: $12
    db $ed                                        ; $4b25: $ed
    ld a, d                                       ; $4b26: $7a
    ld e, [hl]                                    ; $4b27: $5e
    sub l                                         ; $4b28: $95
    ld b, [hl]                                    ; $4b29: $46
    dec sp                                        ; $4b2a: $3b
    ld [hl+], a                                   ; $4b2b: $22
    ld a, c                                       ; $4b2c: $79
    dec bc                                        ; $4b2d: $0b
    sbc l                                         ; $4b2e: $9d
    xor [hl]                                      ; $4b2f: $ae
    sbc d                                         ; $4b30: $9a
    jp nc, $b847                                  ; $4b31: $d2 $47 $b8

    and [hl]                                      ; $4b34: $a6
    or e                                          ; $4b35: $b3
    ld a, e                                       ; $4b36: $7b
    ld hl, $55f7                                  ; $4b37: $21 $f7 $55
    and [hl]                                      ; $4b3a: $a6
    ld a, l                                       ; $4b3b: $7d
    ld c, [hl]                                    ; $4b3c: $4e
    xor [hl]                                      ; $4b3d: $ae
    and l                                         ; $4b3e: $a5
    inc [hl]                                      ; $4b3f: $34
    cp l                                          ; $4b40: $bd
    halt                                          ; $4b41: $76
    inc l                                         ; $4b42: $2c
    adc d                                         ; $4b43: $8a
    dec a                                         ; $4b44: $3d
    db $ec                                        ; $4b45: $ec
    jr nc, jr_058_4ae5                            ; $4b46: $30 $9d

    ld b, a                                       ; $4b48: $47
    rst $20                                       ; $4b49: $e7
    ld a, [de]                                    ; $4b4a: $1a
    or l                                          ; $4b4b: $b5
    db $e3                                        ; $4b4c: $e3
    sbc c                                         ; $4b4d: $99
    reti                                          ; $4b4e: $d9


    or l                                          ; $4b4f: $b5
    db $d3                                        ; $4b50: $d3
    sbc [hl]                                      ; $4b51: $9e
    inc b                                         ; $4b52: $04
    or e                                          ; $4b53: $b3
    ld b, l                                       ; $4b54: $45
    ld e, h                                       ; $4b55: $5c
    jp c, $b0e5                                   ; $4b56: $da $e5 $b0

    sbc $9a                                       ; $4b59: $de $9a
    ld d, b                                       ; $4b5b: $50
    ld e, a                                       ; $4b5c: $5f
    db $ed                                        ; $4b5d: $ed
    cp h                                          ; $4b5e: $bc
    dec a                                         ; $4b5f: $3d
    sbc [hl]                                      ; $4b60: $9e
    ld [hl-], a                                   ; $4b61: $32
    cpl                                           ; $4b62: $2f
    ld a, $39                                     ; $4b63: $3e $39
    or c                                          ; $4b65: $b1
    db $e3                                        ; $4b66: $e3
    ld b, l                                       ; $4b67: $45
    ld e, l                                       ; $4b68: $5d
    call nz, $fa4b                                ; $4b69: $c4 $4b $fa
    ld a, [hl+]                                   ; $4b6c: $2a
    ld c, a                                       ; $4b6d: $4f
    or d                                          ; $4b6e: $b2
    ld h, l                                       ; $4b6f: $65
    add h                                         ; $4b70: $84
    dec bc                                        ; $4b71: $0b
    ld [hl+], a                                   ; $4b72: $22
    ld a, l                                       ; $4b73: $7d
    sbc [hl]                                      ; $4b74: $9e
    halt                                          ; $4b75: $76
    jp z, $f8bc                                   ; $4b76: $ca $bc $f8

    ld h, h                                       ; $4b79: $64
    jp z, $90bc                                   ; $4b7a: $ca $bc $90

    dec d                                         ; $4b7d: $15
    cpl                                           ; $4b7e: $2f
    jp hl                                         ; $4b7f: $e9


    xor e                                         ; $4b80: $ab
    inc c                                         ; $4b81: $0c
    ld hl, $0e5c                                  ; $4b82: $21 $5c $0e
    dec sp                                        ; $4b85: $3b
    db $ed                                        ; $4b86: $ed
    ld c, c                                       ; $4b87: $49
    or b                                          ; $4b88: $b0
    ld a, b                                       ; $4b89: $78
    jp z, $9f3b                                   ; $4b8a: $ca $3b $9f

    reti                                          ; $4b8d: $d9


    dec [hl]                                      ; $4b8e: $35
    sub d                                         ; $4b8f: $92
    ld e, d                                       ; $4b90: $5a
    ld c, $87                                     ; $4b91: $0e $87
    add d                                         ; $4b93: $82
    ld [$d5b7], sp                                ; $4b94: $08 $b7 $d5
    sub h                                         ; $4b97: $94
    ld a, c                                       ; $4b98: $79
    and c                                         ; $4b99: $a1
    db $fc                                        ; $4b9a: $fc
    ld a, c                                       ; $4b9b: $79
    add hl, de                                    ; $4b9c: $19
    xor a                                         ; $4b9d: $af
    db $e3                                        ; $4b9e: $e3
    or b                                          ; $4b9f: $b0
    db $e3                                        ; $4ba0: $e3
    sbc d                                         ; $4ba1: $9a
    sbc c                                         ; $4ba2: $99
    ld e, l                                       ; $4ba3: $5d
    cp l                                          ; $4ba4: $bd
    db $10                                        ; $4ba5: $10
    add b                                         ; $4ba6: $80
    ei                                            ; $4ba7: $fb
    xor d                                         ; $4ba8: $aa
    dec e                                         ; $4ba9: $1d
    ld l, d                                       ; $4baa: $6a
    ld hl, $ed2b                                  ; $4bab: $21 $2b $ed
    or b                                          ; $4bae: $b0
    ld h, l                                       ; $4baf: $65
    ld c, c                                       ; $4bb0: $49
    ld e, a                                       ; $4bb1: $5f
    dec [hl]                                      ; $4bb2: $35
    ld a, [hl-]                                   ; $4bb3: $3a
    rst $10                                       ; $4bb4: $d7
    ld sp, hl                                     ; $4bb5: $f9
    sub c                                         ; $4bb6: $91
    ld a, a                                       ; $4bb7: $7f
    add b                                         ; $4bb8: $80
    ld [$dbbd], sp                                ; $4bb9: $08 $bd $db
    rst $00                                       ; $4bbc: $c7
    ld h, l                                       ; $4bbd: $65
    ld d, c                                       ; $4bbe: $51
    sbc $ab                                       ; $4bbf: $de $ab
    or h                                          ; $4bc1: $b4
    cp a                                          ; $4bc2: $bf
    jp nc, $e7ae                                  ; $4bc3: $d2 $ae $e7

    ld d, l                                       ; $4bc6: $55
    ld l, c                                       ; $4bc7: $69
    ldh [$fa], a                                  ; $4bc8: $e0 $fa
    jr c, jr_058_4bf8                             ; $4bca: $38 $2c

    db $fc                                        ; $4bcc: $fc
    ld e, d                                       ; $4bcd: $5a
    rst $28                                       ; $4bce: $ef
    ld a, [$fd34]                                 ; $4bcf: $fa $34 $fd
    dec h                                         ; $4bd2: $25
    db $ec                                        ; $4bd3: $ec
    ld a, [c]                                     ; $4bd4: $f2
    sub c                                         ; $4bd5: $91
    reti                                          ; $4bd6: $d9


    ld [de], a                                    ; $4bd7: $12
    ld b, [hl]                                    ; $4bd8: $46
    rst $20                                       ; $4bd9: $e7
    jp c, Jump_058_4f89                           ; $4bda: $da $89 $4f

    ld e, c                                       ; $4bdd: $59
    ld l, c                                       ; $4bde: $69
    ld a, [hl+]                                   ; $4bdf: $2a
    db $ed                                        ; $4be0: $ed
    ret c                                         ; $4be1: $d8

    ld sp, $dd26                                  ; $4be2: $31 $26 $dd
    adc [hl]                                      ; $4be5: $8e
    ld hl, $b702                                  ; $4be6: $21 $02 $b7
    ld a, a                                       ; $4be9: $7f
    ld h, c                                       ; $4bea: $61
    db $ed                                        ; $4beb: $ed
    ld [$88d7], sp                                ; $4bec: $08 $d7 $88
    ld d, a                                       ; $4bef: $57
    db $eb                                        ; $4bf0: $eb
    jr c, @+$4e                                   ; $4bf1: $38 $4c

    ld a, c                                       ; $4bf3: $79
    and a                                         ; $4bf4: $a7
    dec a                                         ; $4bf5: $3d
    add hl, bc                                    ; $4bf6: $09
    ld h, [hl]                                    ; $4bf7: $66

jr_058_4bf8:
    adc e                                         ; $4bf8: $8b
    ld e, b                                       ; $4bf9: $58
    cp h                                          ; $4bfa: $bc
    adc [hl]                                      ; $4bfb: $8e
    jp Jump_000_2cb8                              ; $4bfc: $c3 $b8 $2c


    pop bc                                        ; $4bff: $c1
    dec b                                         ; $4c00: $05
    ld de, $d429                                  ; $4c01: $11 $29 $d4
    sub h                                         ; $4c04: $94
    sbc c                                         ; $4c05: $99
    dec a                                         ; $4c06: $3d
    rst $10                                       ; $4c07: $d7
    sbc $89                                       ; $4c08: $de $89
    sub l                                         ; $4c0a: $95
    add hl, de                                    ; $4c0b: $19
    ld [hl+], a                                   ; $4c0c: $22
    or a                                          ; $4c0d: $b7
    ld a, a                                       ; $4c0e: $7f
    ld h, c                                       ; $4c0f: $61
    db $ed                                        ; $4c10: $ed
    or b                                          ; $4c11: $b0
    ld l, e                                       ; $4c12: $6b
    rst $28                                       ; $4c13: $ef
    call nz, Call_000_0cca                        ; $4c14: $c4 $ca $0c
    ld de, $c9b7                                  ; $4c17: $11 $b7 $c9
    ld [c], a                                     ; $4c1a: $e2
    sub e                                         ; $4c1b: $93
    cp l                                          ; $4c1c: $bd
    and [hl]                                      ; $4c1d: $a6
    ld [$a68f], a                                 ; $4c1e: $ea $8f $a6
    ld b, [hl]                                    ; $4c21: $46
    rst $20                                       ; $4c22: $e7
    ld a, [de]                                    ; $4c23: $1a
    sub $78                                       ; $4c24: $d6 $78
    rst $28                                       ; $4c26: $ef
    call nz, Call_000_0cca                        ; $4c27: $c4 $ca $0c
    ld de, $50f7                                  ; $4c2a: $11 $f7 $50
    inc hl                                        ; $4c2d: $23
    ld e, [hl]                                    ; $4c2e: $5e

jr_058_4c2f:
    xor l                                         ; $4c2f: $ad
    db $e3                                        ; $4c30: $e3
    jr nc, jr_058_4c2f                            ; $4c31: $30 $fc

    adc $71                                       ; $4c33: $ce $71
    db $ed                                        ; $4c35: $ed
    dec h                                         ; $4c36: $25
    ld a, e                                       ; $4c37: $7b
    daa                                           ; $4c38: $27
    ld d, [hl]                                    ; $4c39: $56
    ld h, [hl]                                    ; $4c3a: $66
    adc b                                         ; $4c3b: $88
    nop                                           ; $4c3c: $00
    db $dd                                        ; $4c3d: $dd
    and $b9                                       ; $4c3e: $e6 $b9
    ld d, $3e                                     ; $4c40: $16 $3e
    call Call_000_1995                            ; $4c42: $cd $95 $19
    ld [hl+], a                                   ; $4c45: $22
    or a                                          ; $4c46: $b7
    ld a, a                                       ; $4c47: $7f
    ld h, c                                       ; $4c48: $61
    db $ed                                        ; $4c49: $ed
    or b                                          ; $4c4a: $b0
    ld l, e                                       ; $4c4b: $6b
    pop hl                                        ; $4c4c: $e1
    db $d3                                        ; $4c4d: $d3
    ld e, h                                       ; $4c4e: $5c
    sbc c                                         ; $4c4f: $99
    ld hl, $b702                                  ; $4c50: $21 $02 $b7
    ret                                           ; $4c53: $c9


    ld [c], a                                     ; $4c54: $e2
    sub e                                         ; $4c55: $93
    cp l                                          ; $4c56: $bd
    and [hl]                                      ; $4c57: $a6
    ld [$a68f], a                                 ; $4c58: $ea $8f $a6
    ld b, [hl]                                    ; $4c5b: $46
    rst $20                                       ; $4c5c: $e7
    ld a, [de]                                    ; $4c5d: $1a
    sub $78                                       ; $4c5e: $d6 $78
    pop hl                                        ; $4c60: $e1
    db $d3                                        ; $4c61: $d3
    ld e, h                                       ; $4c62: $5c
    sbc c                                         ; $4c63: $99
    ld hl, $f702                                  ; $4c64: $21 $02 $f7
    ld d, b                                       ; $4c67: $50
    inc hl                                        ; $4c68: $23
    ld e, [hl]                                    ; $4c69: $5e

jr_058_4c6a:
    xor l                                         ; $4c6a: $ad
    db $e3                                        ; $4c6b: $e3
    jr nc, jr_058_4c6a                            ; $4c6c: $30 $fc

    adc $71                                       ; $4c6e: $ce $71
    db $ed                                        ; $4c70: $ed
    dec h                                         ; $4c71: $25
    dec bc                                        ; $4c72: $0b
    sbc a                                         ; $4c73: $9f
    and $ca                                       ; $4c74: $e6 $ca
    inc c                                         ; $4c76: $0c
    ld de, $c9b7                                  ; $4c77: $11 $b7 $c9
    ld [c], a                                     ; $4c7a: $e2
    sub e                                         ; $4c7b: $93
    cp l                                          ; $4c7c: $bd
    and [hl]                                      ; $4c7d: $a6
    ld [$a68f], a                                 ; $4c7e: $ea $8f $a6
    ld b, [hl]                                    ; $4c81: $46
    rst $20                                       ; $4c82: $e7
    ld a, [de]                                    ; $4c83: $1a
    sub $78                                       ; $4c84: $d6 $78
    ld e, h                                       ; $4c86: $5c
    cp c                                          ; $4c87: $b9
    or l                                          ; $4c88: $b5
    ld [hl], h                                    ; $4c89: $74
    ld e, a                                       ; $4c8a: $5f
    dec b                                         ; $4c8b: $05
    ld de, $7fb7                                  ; $4c8c: $11 $b7 $7f
    ld h, c                                       ; $4c8f: $61
    db $ed                                        ; $4c90: $ed
    add sp, -$1a                                  ; $4c91: $e8 $e6
    ld a, [c]                                     ; $4c93: $f2
    cp b                                          ; $4c94: $b8
    ld [hl], d                                    ; $4c95: $72
    ld l, e                                       ; $4c96: $6b
    jp hl                                         ; $4c97: $e9


    cp [hl]                                       ; $4c98: $be
    ld a, [bc]                                    ; $4c99: $0a
    ld [hl+], a                                   ; $4c9a: $22
    rst $30                                       ; $4c9b: $f7
    ld d, b                                       ; $4c9c: $50
    inc hl                                        ; $4c9d: $23
    ld e, [hl]                                    ; $4c9e: $5e

jr_058_4c9f:
    xor l                                         ; $4c9f: $ad
    db $e3                                        ; $4ca0: $e3
    jr nc, jr_058_4c9f                            ; $4ca1: $30 $fc

    adc $71                                       ; $4ca3: $ce $71
    db $ed                                        ; $4ca5: $ed
    dec h                                         ; $4ca6: $25
    db $e3                                        ; $4ca7: $e3
    jp z, $a5ad                                   ; $4ca8: $ca $ad $a5

    ei                                            ; $4cab: $fb
    ld a, [hl+]                                   ; $4cac: $2a
    adc b                                         ; $4cad: $88
    nop                                           ; $4cae: $00
    rst $30                                       ; $4caf: $f7
    ld hl, sp+$34                                 ; $4cb0: $f8 $34
    rla                                           ; $4cb2: $17

Call_058_4cb3:
    ld e, h                                       ; $4cb3: $5c
    or a                                          ; $4cb4: $b7
    ld a, c                                       ; $4cb5: $79
    ret                                           ; $4cb6: $c9


    xor e                                         ; $4cb7: $ab
    add hl, hl                                    ; $4cb8: $29
    di                                            ; $4cb9: $f3
    ld l, b                                       ; $4cba: $68
    cp l                                          ; $4cbb: $bd
    dec [hl]                                      ; $4cbc: $35
    sbc $4b                                       ; $4cbd: $de $4b
    or $47                                        ; $4cbf: $f6 $47
    cp h                                          ; $4cc1: $bc
    ld h, b                                       ; $4cc2: $60
    add hl, de                                    ; $4cc3: $19
    rst $38                                       ; $4cc4: $ff
    or [hl]                                       ; $4cc5: $b6
    ld l, [hl]                                    ; $4cc6: $6e
    dec e                                         ; $4cc7: $1d
    or a                                          ; $4cc8: $b7
    cpl                                           ; $4cc9: $2f
    pop bc                                        ; $4cca: $c1
    ld h, d                                       ; $4ccb: $62
    adc b                                         ; $4ccc: $88
    nop                                           ; $4ccd: $00
    or a                                          ; $4cce: $b7
    ld a, a                                       ; $4ccf: $7f
    ld h, c                                       ; $4cd0: $61
    db $ed                                        ; $4cd1: $ed
    add sp, -$1a                                  ; $4cd2: $e8 $e6
    ld a, [c]                                     ; $4cd4: $f2
    call nz, $b9a7                                ; $4cd5: $c4 $a7 $b9
    jr nz, jr_058_4cdc                            ; $4cd8: $20 $02

    ld [hl], a                                    ; $4cda: $77
    inc l                                         ; $4cdb: $2c

jr_058_4cdc:
    sbc l                                         ; $4cdc: $9d
    db $e3                                        ; $4cdd: $e3
    db $db                                        ; $4cde: $db
    ld h, c                                       ; $4cdf: $61
    xor d                                         ; $4ce0: $aa
    and [hl]                                      ; $4ce1: $a6
    call z, $3c7b                                 ; $4ce2: $cc $7b $3c
    ld h, l                                       ; $4ce5: $65
    ld h, [hl]                                    ; $4ce6: $66
    rst $08                                       ; $4ce7: $cf
    or l                                          ; $4ce8: $b5
    rst $10                                       ; $4ce9: $d7
    ld c, d                                       ; $4cea: $4a
    rla                                           ; $4ceb: $17
    ld d, a                                       ; $4cec: $57
    ld h, [hl]                                    ; $4ced: $66
    adc b                                         ; $4cee: $88
    nop                                           ; $4cef: $00
    or a                                          ; $4cf0: $b7
    ld a, a                                       ; $4cf1: $7f
    ld h, c                                       ; $4cf2: $61
    db $ed                                        ; $4cf3: $ed
    or b                                          ; $4cf4: $b0
    ld l, e                                       ; $4cf5: $6b
    xor a                                         ; $4cf6: $af
    sub l                                         ; $4cf7: $95
    ld l, $ae                                     ; $4cf8: $2e $ae
    call z, $0110                                 ; $4cfa: $cc $10 $01
    or a                                          ; $4cfd: $b7
    ret                                           ; $4cfe: $c9


    ld [c], a                                     ; $4cff: $e2
    sub e                                         ; $4d00: $93
    cp l                                          ; $4d01: $bd
    and [hl]                                      ; $4d02: $a6
    ld [$a68f], a                                 ; $4d03: $ea $8f $a6
    ld b, [hl]                                    ; $4d06: $46
    rst $20                                       ; $4d07: $e7
    ld a, [de]                                    ; $4d08: $1a
    sub $78                                       ; $4d09: $d6 $78
    xor a                                         ; $4d0b: $af
    sub l                                         ; $4d0c: $95
    ld l, $ae                                     ; $4d0d: $2e $ae
    call z, $0110                                 ; $4d0f: $cc $10 $01
    rst $30                                       ; $4d12: $f7
    ld d, b                                       ; $4d13: $50
    inc hl                                        ; $4d14: $23
    ld e, [hl]                                    ; $4d15: $5e

jr_058_4d16:
    xor l                                         ; $4d16: $ad
    db $e3                                        ; $4d17: $e3
    jr nc, jr_058_4d16                            ; $4d18: $30 $fc

    adc $71                                       ; $4d1a: $ce $71
    db $ed                                        ; $4d1c: $ed
    dec h                                         ; $4d1d: $25
    ld a, e                                       ; $4d1e: $7b
    xor l                                         ; $4d1f: $ad
    ld [hl], h                                    ; $4d20: $74
    ld [hl], c                                    ; $4d21: $71
    ld h, l                                       ; $4d22: $65
    add [hl]                                      ; $4d23: $86
    ld [$e977], sp                                ; $4d24: $08 $77 $e9
    add a                                         ; $4d27: $87
    ld a, b                                       ; $4d28: $78
    call z, $dd70                                 ; $4d29: $cc $70 $dd
    and $25                                       ; $4d2c: $e6 $25
    xor a                                         ; $4d2e: $af
    ld h, [hl]                                    ; $4d2f: $66
    ld d, c                                       ; $4d30: $51
    ld l, a                                       ; $4d31: $6f
    ld d, $88                                     ; $4d32: $16 $88
    nop                                           ; $4d34: $00
    ld [hl], a                                    ; $4d35: $77
    cp a                                          ; $4d36: $bf
    and [hl]                                      ; $4d37: $a6
    rla                                           ; $4d38: $17
    jp $9b75                                      ; $4d39: $c3 $75 $9b


    sub a                                         ; $4d3c: $97
    cp h                                          ; $4d3d: $bc
    sbc d                                         ; $4d3e: $9a
    ld a, c                                       ; $4d3f: $79
    ld a, [c]                                     ; $4d40: $f2
    jp hl                                         ; $4d41: $e9


    jp $9793                                      ; $4d42: $c3 $93 $97


    ld [$b744], sp                                ; $4d45: $08 $44 $b7
    ld a, a                                       ; $4d48: $7f
    ld h, c                                       ; $4d49: $61
    db $ed                                        ; $4d4a: $ed
    or b                                          ; $4d4b: $b0
    ld l, e                                       ; $4d4c: $6b
    ld hl, sp+$35                                 ; $4d4d: $f8 $35
    cp l                                          ; $4d4f: $bd
    jr jr_058_4d74                                ; $4d50: $18 $22

    or a                                          ; $4d52: $b7

jr_058_4d53:
    ret                                           ; $4d53: $c9


    ld [c], a                                     ; $4d54: $e2
    sub e                                         ; $4d55: $93
    cp l                                          ; $4d56: $bd
    and [hl]                                      ; $4d57: $a6
    ld [$a68f], a                                 ; $4d58: $ea $8f $a6
    ld b, [hl]                                    ; $4d5b: $46
    rst $20                                       ; $4d5c: $e7
    ld a, [de]                                    ; $4d5d: $1a
    sub $78                                       ; $4d5e: $d6 $78
    ld hl, sp+$35                                 ; $4d60: $f8 $35
    cp l                                          ; $4d62: $bd
    jr jr_058_4d53                                ; $4d63: $18 $ee

    ld l, [hl]                                    ; $4d65: $6e
    sra h                                         ; $4d66: $cb $2c
    adc e                                         ; $4d68: $8b
    ld c, a                                       ; $4d69: $4f
    ld b, [hl]                                    ; $4d6a: $46
    rst $20                                       ; $4d6b: $e7
    ld [c], a                                     ; $4d6c: $e2
    pop de                                        ; $4d6d: $d1
    call nc, Call_058_5ce8                        ; $4d6e: $d4 $e8 $5c
    jp $ef1a                                      ; $4d71: $c3 $1a $ef


jr_058_4d74:
    xor $d7                                       ; $4d74: $ee $d7
    add sp, $27                                   ; $4d76: $e8 $27
    ld bc, $f722                                  ; $4d78: $01 $22 $f7
    ld d, b                                       ; $4d7b: $50
    inc hl                                        ; $4d7c: $23
    ld e, [hl]                                    ; $4d7d: $5e

jr_058_4d7e:
    xor l                                         ; $4d7e: $ad
    db $e3                                        ; $4d7f: $e3
    jr nc, jr_058_4d7e                            ; $4d80: $30 $fc

    adc $71                                       ; $4d82: $ce $71
    db $ed                                        ; $4d84: $ed
    dec h                                         ; $4d85: $25
    jp $e9af                                      ; $4d86: $c3 $af $e9


    push bc                                       ; $4d89: $c5
    db $10                                        ; $4d8a: $10
    ld bc, $d429                                  ; $4d8b: $01 $29 $d4
    add h                                         ; $4d8e: $84
    ld a, [de]                                    ; $4d8f: $1a
    pop af                                        ; $4d90: $f1
    ld l, d                                       ; $4d91: $6a
    dec e                                         ; $4d92: $1d
    add a                                         ; $4d93: $87
    cp l                                          ; $4d94: $bd
    ld b, e                                       ; $4d95: $43
    ld h, a                                       ; $4d96: $67
    push hl                                       ; $4d97: $e5
    and [hl]                                      ; $4d98: $a6
    sbc a                                         ; $4d99: $9f
    jp z, Jump_000_1cbc                           ; $4d9a: $ca $bc $1c

    ld c, $05                                     ; $4d9d: $0e $05
    ld de, $c9b7                                  ; $4d9f: $11 $b7 $c9
    ld [c], a                                     ; $4da2: $e2
    sub e                                         ; $4da3: $93
    cp l                                          ; $4da4: $bd
    and [hl]                                      ; $4da5: $a6
    ld [$a68f], a                                 ; $4da6: $ea $8f $a6
    ld b, [hl]                                    ; $4da9: $46
    rst $20                                       ; $4daa: $e7
    ld a, [de]                                    ; $4dab: $1a
    sub $78                                       ; $4dac: $d6 $78
    rst $28                                       ; $4dae: $ef
    ret nc                                        ; $4daf: $d0

    ld e, c                                       ; $4db0: $59
    cp c                                          ; $4db1: $b9
    jp hl                                         ; $4db2: $e9


    and a                                         ; $4db3: $a7
    ld [hl-], a                                   ; $4db4: $32
    ld b, e                                       ; $4db5: $43
    inc b                                         ; $4db6: $04
    rst $30                                       ; $4db7: $f7
    ld d, b                                       ; $4db8: $50
    inc hl                                        ; $4db9: $23
    ld e, [hl]                                    ; $4dba: $5e

Call_058_4dbb:
jr_058_4dbb:
    xor l                                         ; $4dbb: $ad
    db $e3                                        ; $4dbc: $e3
    jr nc, jr_058_4dbb                            ; $4dbd: $30 $fc

    adc $71                                       ; $4dbf: $ce $71
    db $ed                                        ; $4dc1: $ed
    dec h                                         ; $4dc2: $25
    ld a, e                                       ; $4dc3: $7b
    add a                                         ; $4dc4: $87
    adc $ca                                       ; $4dc5: $ce $ca
    ld c, l                                       ; $4dc7: $4d
    ccf                                           ; $4dc8: $3f
    sub l                                         ; $4dc9: $95
    add hl, de                                    ; $4dca: $19
    ld [hl+], a                                   ; $4dcb: $22
    ld a, l                                       ; $4dcc: $7d
    inc e                                         ; $4dcd: $1c
    and $5a                                       ; $4dce: $e6 $5a

jr_058_4dd0:
    ld l, b                                       ; $4dd0: $68
    ld c, a                                       ; $4dd1: $4f
    xor l                                         ; $4dd2: $ad
    db $e3                                        ; $4dd3: $e3
    jr nc, jr_058_4dd0                            ; $4dd4: $30 $fa

    rst $00                                       ; $4dd6: $c7
    jr c, jr_058_4e57                             ; $4dd7: $38 $7e

    ld [hl], c                                    ; $4dd9: $71
    ld a, a                                       ; $4dda: $7f
    and a                                         ; $4ddb: $a7
    dec a                                         ; $4ddc: $3d
    add hl, bc                                    ; $4ddd: $09
    ld h, [hl]                                    ; $4dde: $66
    adc e                                         ; $4ddf: $8b
    cp b                                          ; $4de0: $b8
    or h                                          ; $4de1: $b4
    jp Jump_058_7596                              ; $4de2: $c3 $96 $75


    inc e                                         ; $4de5: $1c
    halt                                          ; $4de6: $76
    inc [hl]                                      ; $4de7: $34
    ld [hl], d                                    ; $4de8: $72
    halt                                          ; $4de9: $76
    inc [hl]                                      ; $4dea: $34
    and d                                         ; $4deb: $a2
    ld b, [hl]                                    ; $4dec: $46
    ld d, d                                       ; $4ded: $52
    dec sp                                        ; $4dee: $3b
    db $ed                                        ; $4def: $ed
    ld c, c                                       ; $4df0: $49
    or b                                          ; $4df1: $b0
    ld b, b                                       ; $4df2: $40
    inc b                                         ; $4df3: $04
    or a                                          ; $4df4: $b7
    ld a, a                                       ; $4df5: $7f
    ld h, c                                       ; $4df6: $61
    db $ed                                        ; $4df7: $ed
    add sp, -$1a                                  ; $4df8: $e8 $e6
    ld a, [c]                                     ; $4dfa: $f2
    ld c, [hl]                                    ; $4dfb: $4e
    ld a, e                                       ; $4dfc: $7b
    ld [de], a                                    ; $4dfd: $12
    call z, Call_058_7116                         ; $4dfe: $cc $16 $71
    ld b, c                                       ; $4e01: $41
    inc b                                         ; $4e02: $04
    or a                                          ; $4e03: $b7
    ret                                           ; $4e04: $c9


    ld [c], a                                     ; $4e05: $e2
    sub e                                         ; $4e06: $93
    cp l                                          ; $4e07: $bd
    and [hl]                                      ; $4e08: $a6
    ld [$a68f], a                                 ; $4e09: $ea $8f $a6
    ld b, [hl]                                    ; $4e0c: $46
    rst $20                                       ; $4e0d: $e7
    ld a, [de]                                    ; $4e0e: $1a
    ld a, [hl]                                    ; $4e0f: $7e
    ld [de], a                                    ; $4e10: $12
    cp h                                          ; $4e11: $bc
    db $d3                                        ; $4e12: $d3
    sbc [hl]                                      ; $4e13: $9e
    inc b                                         ; $4e14: $04
    or e                                          ; $4e15: $b3
    ld b, l                                       ; $4e16: $45
    ld e, h                                       ; $4e17: $5c
    db $10                                        ; $4e18: $10
    jp nz, $c911                                  ; $4e19: $c2 $11 $c9

    ccf                                           ; $4e1c: $3f
    ld d, e                                       ; $4e1d: $53
    sbc $8f                                       ; $4e1e: $de $8f
    pop de                                        ; $4e20: $d1
    dec sp                                        ; $4e21: $3b
    sbc a                                         ; $4e22: $9f
    reti                                          ; $4e23: $d9


    or l                                          ; $4e24: $b5
    ccf                                           ; $4e25: $3f
    xor h                                         ; $4e26: $ac
    adc e                                         ; $4e27: $8b
    ld e, b                                       ; $4e28: $58
    ld b, [hl]                                    ; $4e29: $46
    ld d, d                                       ; $4e2a: $52
    dec sp                                        ; $4e2b: $3b
    db $ed                                        ; $4e2c: $ed
    ld c, c                                       ; $4e2d: $49
    or b                                          ; $4e2e: $b0
    ld l, b                                       ; $4e2f: $68
    and a                                         ; $4e30: $a7
    ld e, $44                                     ; $4e31: $1e $44
    rst $30                                       ; $4e33: $f7
    ld d, b                                       ; $4e34: $50
    inc hl                                        ; $4e35: $23
    ld e, [hl]                                    ; $4e36: $5e

jr_058_4e37:
    xor l                                         ; $4e37: $ad
    db $e3                                        ; $4e38: $e3
    jr nc, jr_058_4e37                            ; $4e39: $30 $fc

    adc $71                                       ; $4e3b: $ce $71
    db $ed                                        ; $4e3d: $ed
    dec h                                         ; $4e3e: $25
    dec sp                                        ; $4e3f: $3b
    db $ed                                        ; $4e40: $ed
    ld c, c                                       ; $4e41: $49
    jr nc, jr_058_4e9f                            ; $4e42: $30 $5b

    call nz, $1105                                ; $4e44: $c4 $05 $11
    dec a                                         ; $4e47: $3d
    xor [hl]                                      ; $4e48: $ae
    ld de, $96af                                  ; $4e49: $11 $af $96
    db $fc                                        ; $4e4c: $fc
    or l                                          ; $4e4d: $b5
    rst $08                                       ; $4e4e: $cf
    cp h                                          ; $4e4f: $bc
    ld [hl], h                                    ; $4e50: $74
    adc $f8                                       ; $4e51: $ce $f8
    or h                                          ; $4e53: $b4
    daa                                           ; $4e54: $27
    pop bc                                        ; $4e55: $c1
    daa                                           ; $4e56: $27

jr_058_4e57:
    ld a, [hl]                                    ; $4e57: $7e
    ld de, $0088                                  ; $4e58: $11 $88 $00
    rst $30                                       ; $4e5b: $f7
    ld a, l                                       ; $4e5c: $7d
    sub c                                         ; $4e5d: $91
    sub e                                         ; $4e5e: $93
    ld a, h                                       ; $4e5f: $7c
    ld de, $87f2                                  ; $4e60: $11 $f2 $87
    ldh [$ba], a                                  ; $4e63: $e0 $ba
    ld [hl], c                                    ; $4e65: $71
    ld l, c                                       ; $4e66: $69
    rra                                           ; $4e67: $1f
    ld e, $b5                                     ; $4e68: $1e $b5
    and h                                         ; $4e6a: $a4
    xor a                                         ; $4e6b: $af
    ld a, [c]                                     ; $4e6c: $f2
    add sp, $5c                                   ; $4e6d: $e8 $5c
    rst $20                                       ; $4e6f: $e7
    ld b, a                                       ; $4e70: $47
    cp $01                                        ; $4e71: $fe $01
    ld [hl+], a                                   ; $4e73: $22
    ld [hl], a                                    ; $4e74: $77
    jp hl                                         ; $4e75: $e9


    push hl                                       ; $4e76: $e5
    ld a, [de]                                    ; $4e77: $1a
    ld c, c                                       ; $4e78: $49
    adc l                                         ; $4e79: $8d
    ld a, [hl-]                                   ; $4e7a: $3a
    rst $00                                       ; $4e7b: $c7
    ld [hl-], a                                   ; $4e7c: $32
    ld h, l                                       ; $4e7d: $65
    ld h, [hl]                                    ; $4e7e: $66
    cpl                                           ; $4e7f: $2f
    db $dd                                        ; $4e80: $dd
    inc e                                         ; $4e81: $1c
    db $e3                                        ; $4e82: $e3
    ld hl, $674b                                  ; $4e83: $21 $4b $67
    ld d, d                                       ; $4e86: $52
    ld l, a                                       ; $4e87: $6f
    adc c                                         ; $4e88: $89
    res 7, h                                      ; $4e89: $cb $bc
    sbc b                                         ; $4e8b: $98
    pop af                                        ; $4e8c: $f1
    adc b                                         ; $4e8d: $88
    rst $08                                       ; $4e8e: $cf
    db $d3                                        ; $4e8f: $d3
    cp c                                          ; $4e90: $b9
    rla                                           ; $4e91: $17
    ld [bc], a                                    ; $4e92: $02
    or a                                          ; $4e93: $b7
    db $fc                                        ; $4e94: $fc
    sub $dc                                       ; $4e95: $d6 $dc
    and l                                         ; $4e97: $a5
    ld de, $0843                                  ; $4e98: $11 $43 $08
    and a                                         ; $4e9b: $a7
    call z, $5e23                                 ; $4e9c: $cc $23 $5e

jr_058_4e9f:
    xor l                                         ; $4e9f: $ad
    db $e3                                        ; $4ea0: $e3
    or b                                          ; $4ea1: $b0
    ld h, e                                       ; $4ea2: $63
    and $d1                                       ; $4ea3: $e6 $d1
    ld e, l                                       ; $4ea5: $5d
    dec b                                         ; $4ea6: $05
    ld de, $7fb7                                  ; $4ea7: $11 $b7 $7f
    ld h, c                                       ; $4eaa: $61
    db $ed                                        ; $4eab: $ed
    add sp, -$1a                                  ; $4eac: $e8 $e6
    ld a, [c]                                     ; $4eae: $f2
    jp nc, $35bf                                  ; $4eaf: $d2 $bf $35

    ld [hl], a                                    ; $4eb2: $77
    ld l, c                                       ; $4eb3: $69
    call nz, $0110                                ; $4eb4: $c4 $10 $01
    or a                                          ; $4eb7: $b7
    ret                                           ; $4eb8: $c9


    ld [c], a                                     ; $4eb9: $e2
    sub e                                         ; $4eba: $93
    cp l                                          ; $4ebb: $bd
    and [hl]                                      ; $4ebc: $a6
    ld [$a68f], a                                 ; $4ebd: $ea $8f $a6
    ld b, [hl]                                    ; $4ec0: $46
    rst $20                                       ; $4ec1: $e7
    ld a, [de]                                    ; $4ec2: $1a
    ld a, [hl]                                    ; $4ec3: $7e
    ld [de], a                                    ; $4ec4: $12
    cp h                                          ; $4ec5: $bc
    db $f4                                        ; $4ec6: $f4
    ld l, a                                       ; $4ec7: $6f
    call $1a5d                                    ; $4ec8: $cd $5d $1a
    ld sp, $f744                                  ; $4ecb: $31 $44 $f7
    ld d, b                                       ; $4ece: $50
    inc hl                                        ; $4ecf: $23
    ld e, [hl]                                    ; $4ed0: $5e

jr_058_4ed1:
    xor l                                         ; $4ed1: $ad
    db $e3                                        ; $4ed2: $e3
    jr nc, jr_058_4ed1                            ; $4ed3: $30 $fc

    adc $71                                       ; $4ed5: $ce $71
    db $ed                                        ; $4ed7: $ed
    dec h                                         ; $4ed8: $25
    ld c, e                                       ; $4ed9: $4b
    rst $38                                       ; $4eda: $ff
    sub $dc                                       ; $4edb: $d6 $dc
    and l                                         ; $4edd: $a5
    ld de, $0443                                  ; $4ede: $11 $43 $04
    rst $30                                       ; $4ee1: $f7
    ld d, b                                       ; $4ee2: $50
    inc hl                                        ; $4ee3: $23
    ld e, [hl]                                    ; $4ee4: $5e
    xor l                                         ; $4ee5: $ad
    db $e3                                        ; $4ee6: $e3
    or b                                          ; $4ee7: $b0
    db $f4                                        ; $4ee8: $f4
    daa                                           ; $4ee9: $27
    ld a, [hl-]                                   ; $4eea: $3a
    ld e, l                                       ; $4eeb: $5d
    dec h                                         ; $4eec: $25
    ld e, a                                       ; $4eed: $5f
    ld [bc], a                                    ; $4eee: $02
    sub c                                         ; $4eef: $91
    ld c, e                                       ; $4ef0: $4b
    jr nz, jr_058_4ef5                            ; $4ef1: $20 $02

    or a                                          ; $4ef3: $b7
    ld a, a                                       ; $4ef4: $7f

jr_058_4ef5:
    ld h, c                                       ; $4ef5: $61
    db $ed                                        ; $4ef6: $ed
    add sp, -$1a                                  ; $4ef7: $e8 $e6
    ld a, [c]                                     ; $4ef9: $f2
    jp nc, $e89f                                  ; $4efa: $d2 $9f $e8

    ld [hl], h                                    ; $4efd: $74
    sub l                                         ; $4efe: $95
    ld a, h                                       ; $4eff: $7c
    add hl, bc                                    ; $4f00: $09
    ld b, h                                       ; $4f01: $44
    ld l, $81                                     ; $4f02: $2e $81
    ld [$c9b7], sp                                ; $4f04: $08 $b7 $c9
    ld [c], a                                     ; $4f07: $e2
    sub e                                         ; $4f08: $93
    cp l                                          ; $4f09: $bd
    and [hl]                                      ; $4f0a: $a6
    ld [$a68f], a                                 ; $4f0b: $ea $8f $a6
    ld b, [hl]                                    ; $4f0e: $46
    rst $20                                       ; $4f0f: $e7
    ld a, [de]                                    ; $4f10: $1a
    ld a, [hl]                                    ; $4f11: $7e
    ld [de], a                                    ; $4f12: $12
    cp h                                          ; $4f13: $bc
    db $f4                                        ; $4f14: $f4
    daa                                           ; $4f15: $27
    ld a, [hl-]                                   ; $4f16: $3a
    ld e, l                                       ; $4f17: $5d
    dec h                                         ; $4f18: $25
    ld e, a                                       ; $4f19: $5f
    ld [bc], a                                    ; $4f1a: $02
    sub c                                         ; $4f1b: $91
    ld c, e                                       ; $4f1c: $4b
    jr nz, jr_058_4f21                            ; $4f1d: $20 $02

    rst $30                                       ; $4f1f: $f7
    ld d, b                                       ; $4f20: $50

jr_058_4f21:
    inc hl                                        ; $4f21: $23
    ld e, [hl]                                    ; $4f22: $5e

jr_058_4f23:
    xor l                                         ; $4f23: $ad
    db $e3                                        ; $4f24: $e3
    jr nc, jr_058_4f23                            ; $4f25: $30 $fc

    adc $71                                       ; $4f27: $ce $71
    db $ed                                        ; $4f29: $ed
    dec h                                         ; $4f2a: $25
    ld c, e                                       ; $4f2b: $4b
    ld a, a                                       ; $4f2c: $7f
    and d                                         ; $4f2d: $a2
    db $d3                                        ; $4f2e: $d3
    ld d, l                                       ; $4f2f: $55
    ld a, [c]                                     ; $4f30: $f2
    dec h                                         ; $4f31: $25
    db $10                                        ; $4f32: $10
    cp c                                          ; $4f33: $b9
    inc b                                         ; $4f34: $04
    ld [hl+], a                                   ; $4f35: $22
    or a                                          ; $4f36: $b7
    jr jr_058_4f95                                ; $4f37: $18 $5c

    ld a, [hl]                                    ; $4f39: $7e
    ld [hl], l                                    ; $4f3a: $75
    ret                                           ; $4f3b: $c9


    ld h, c                                       ; $4f3c: $61
    ld a, a                                       ; $4f3d: $7f
    add c                                         ; $4f3e: $81
    db $10                                        ; $4f3f: $10
    and [hl]                                      ; $4f40: $a6
    inc [hl]                                      ; $4f41: $34
    cp l                                          ; $4f42: $bd
    halt                                          ; $4f43: $76
    sbc $1e                                       ; $4f44: $de $1e
    ld c, a                                       ; $4f46: $4f
    sbc c                                         ; $4f47: $99
    sub a                                         ; $4f48: $97
    cp h                                          ; $4f49: $bc
    ld e, d                                       ; $4f4a: $5a
    cp d                                          ; $4f4b: $ba
    sbc $f8                                       ; $4f4c: $de $f8
    or a                                          ; $4f4e: $b7
    pop hl                                        ; $4f4f: $e1
    call z, $d3e1                                 ; $4f50: $cc $e1 $d3
    db $ec                                        ; $4f53: $ec
    add d                                         ; $4f54: $82
    ld [$7fb7], sp                                ; $4f55: $08 $b7 $7f
    ld h, c                                       ; $4f58: $61
    db $ed                                        ; $4f59: $ed
    add sp, -$1a                                  ; $4f5a: $e8 $e6
    ld a, [c]                                     ; $4f5c: $f2
    jp nc, $9706                                  ; $4f5d: $d2 $06 $97

    ld e, a                                       ; $4f60: $5f
    ld e, l                                       ; $4f61: $5d
    ld [hl], d                                    ; $4f62: $72
    ret c                                         ; $4f63: $d8

    ld e, a                                       ; $4f64: $5f
    ld e, h                                       ; $4f65: $5c
    db $10                                        ; $4f66: $10
    ld bc, $c9b7                                  ; $4f67: $01 $b7 $c9
    ld [c], a                                     ; $4f6a: $e2

Call_058_4f6b:
    sub e                                         ; $4f6b: $93
    cp l                                          ; $4f6c: $bd
    and [hl]                                      ; $4f6d: $a6
    ld [$a68f], a                                 ; $4f6e: $ea $8f $a6
    ld b, [hl]                                    ; $4f71: $46
    rst $20                                       ; $4f72: $e7
    ld a, [de]                                    ; $4f73: $1a
    ld a, [hl]                                    ; $4f74: $7e
    ld [de], a                                    ; $4f75: $12
    cp h                                          ; $4f76: $bc
    or h                                          ; $4f77: $b4
    pop bc                                        ; $4f78: $c1
    push hl                                       ; $4f79: $e5
    ld d, a                                       ; $4f7a: $57
    sub a                                         ; $4f7b: $97
    inc e                                         ; $4f7c: $1c
    or $17                                        ; $4f7d: $f6 $17
    rla                                           ; $4f7f: $17
    ld b, h                                       ; $4f80: $44
    rst $30                                       ; $4f81: $f7
    ld d, b                                       ; $4f82: $50
    inc hl                                        ; $4f83: $23
    ld e, [hl]                                    ; $4f84: $5e

jr_058_4f85:
    xor l                                         ; $4f85: $ad
    db $e3                                        ; $4f86: $e3
    jr nc, jr_058_4f85                            ; $4f87: $30 $fc

Jump_058_4f89:
    adc $71                                       ; $4f89: $ce $71
    db $ed                                        ; $4f8b: $ed
    dec h                                         ; $4f8c: $25
    ld c, e                                       ; $4f8d: $4b
    dec de                                        ; $4f8e: $1b
    ld e, h                                       ; $4f8f: $5c
    ld a, [hl]                                    ; $4f90: $7e
    ld [hl], l                                    ; $4f91: $75
    ret                                           ; $4f92: $c9


    ld h, c                                       ; $4f93: $61
    ld a, a                                       ; $4f94: $7f

jr_058_4f95:
    ld [hl], c                                    ; $4f95: $71
    ld b, c                                       ; $4f96: $41
    inc b                                         ; $4f97: $04
    add hl, hl                                    ; $4f98: $29
    ld e, l                                       ; $4f99: $5d
    dec l                                         ; $4f9a: $2d
    sbc c                                         ; $4f9b: $99
    add l                                         ; $4f9c: $85
    add sp, $74                                   ; $4f9d: $e8 $74
    sub l                                         ; $4f9f: $95
    ld a, h                                       ; $4fa0: $7c
    add hl, bc                                    ; $4fa1: $09
    ld b, h                                       ; $4fa2: $44
    ld l, $49                                     ; $4fa3: $2e $49
    cp l                                          ; $4fa5: $bd
    ld l, [hl]                                    ; $4fa6: $6e
    di                                            ; $4fa7: $f3
    ld [de], a                                    ; $4fa8: $12
    dec hl                                        ; $4fa9: $2b
    push hl                                       ; $4faa: $e5
    ld e, d                                       ; $4fab: $5a
    rst $00                                       ; $4fac: $c7
    ld h, c                                       ; $4fad: $61
    inc h                                         ; $4fae: $24
    dec [hl]                                      ; $4faf: $35
    rst $10                                       ; $4fb0: $d7
    ld [de], a                                    ; $4fb1: $12
    sub a                                         ; $4fb2: $97
    ld a, [$deb4]                                 ; $4fb3: $fa $b4 $de
    ld a, [de]                                    ; $4fb6: $1a
    and a                                         ; $4fb7: $a7
    ld b, [hl]                                    ; $4fb8: $46
    or a                                          ; $4fb9: $b7
    or a                                          ; $4fba: $b7
    call z, $1dac                                 ; $4fbb: $cc $ac $1d
    db $dd                                        ; $4fbe: $dd
    ld e, h                                       ; $4fbf: $5c
    sbc $e9                                       ; $4fc0: $de $e9
    ld l, d                                       ; $4fc2: $6a
    ret                                           ; $4fc3: $c9


    inc l                                         ; $4fc4: $2c
    ld b, h                                       ; $4fc5: $44
    and a                                         ; $4fc6: $a7
    xor e                                         ; $4fc7: $ab
    db $e4                                        ; $4fc8: $e4
    ld c, e                                       ; $4fc9: $4b
    jr nz, @+$74                                  ; $4fca: $20 $72

    add hl, bc                                    ; $4fcc: $09
    ld b, h                                       ; $4fcd: $44
    or a                                          ; $4fce: $b7
    ret                                           ; $4fcf: $c9


    ld [c], a                                     ; $4fd0: $e2
    sub e                                         ; $4fd1: $93
    cp l                                          ; $4fd2: $bd
    and [hl]                                      ; $4fd3: $a6
    ld [$a68f], a                                 ; $4fd4: $ea $8f $a6
    ld b, [hl]                                    ; $4fd7: $46
    rst $20                                       ; $4fd8: $e7
    ld a, [de]                                    ; $4fd9: $1a
    ld a, [hl]                                    ; $4fda: $7e
    ld [de], a                                    ; $4fdb: $12
    cp h                                          ; $4fdc: $bc
    db $d3                                        ; $4fdd: $d3
    push de                                       ; $4fde: $d5
    sub d                                         ; $4fdf: $92
    ld e, c                                       ; $4fe0: $59
    adc b                                         ; $4fe1: $88
    ld c, [hl]                                    ; $4fe2: $4e
    ld d, a                                       ; $4fe3: $57
    ret                                           ; $4fe4: $c9


    sub a                                         ; $4fe5: $97
    ld b, b                                       ; $4fe6: $40
    db $e4                                        ; $4fe7: $e4
    ld [de], a                                    ; $4fe8: $12
    adc b                                         ; $4fe9: $88
    nop                                           ; $4fea: $00
    rst $30                                       ; $4feb: $f7
    ld d, b                                       ; $4fec: $50
    inc hl                                        ; $4fed: $23
    ld e, [hl]                                    ; $4fee: $5e

jr_058_4fef:
    xor l                                         ; $4fef: $ad
    db $e3                                        ; $4ff0: $e3
    jr nc, jr_058_4fef                            ; $4ff1: $30 $fc

    adc $71                                       ; $4ff3: $ce $71
    db $ed                                        ; $4ff5: $ed
    dec h                                         ; $4ff6: $25
    dec sp                                        ; $4ff7: $3b
    ld e, l                                       ; $4ff8: $5d
    dec l                                         ; $4ff9: $2d
    sbc c                                         ; $4ffa: $99
    add l                                         ; $4ffb: $85
    add sp, $74                                   ; $4ffc: $e8 $74
    sub l                                         ; $4ffe: $95
    ld a, h                                       ; $4fff: $7c
    add hl, bc                                    ; $5000: $09
    ld b, h                                       ; $5001: $44
    ld l, $81                                     ; $5002: $2e $81
    ld [$5129], sp                                ; $5004: $08 $29 $51
    inc hl                                        ; $5007: $23
    ld l, d                                       ; $5008: $6a
    jp z, Jump_000_3961                           ; $5009: $ca $61 $39

    adc h                                         ; $500c: $8c
    cp $22                                        ; $500d: $fe $22
    ld c, e                                       ; $500f: $4b
    rst $20                                       ; $5010: $e7
    ld d, d                                       ; $5011: $52
    and $a9                                       ; $5012: $e6 $a9
    rst $08                                       ; $5014: $cf
    xor h                                         ; $5015: $ac
    ld e, l                                       ; $5016: $5d
    rst $08                                       ; $5017: $cf
    xor e                                         ; $5018: $ab
    jp nc, Jump_000_0440                          ; $5019: $d2 $40 $04

    db $dd                                        ; $501c: $dd
    ld a, [$4b5c]                                 ; $501d: $fa $5c $4b
    ld e, e                                       ; $5020: $5b
    sub l                                         ; $5021: $95
    ld h, a                                       ; $5022: $67
    sub c                                         ; $5023: $91
    add hl, hl                                    ; $5024: $29
    ld a, l                                       ; $5025: $7d
    rst $00                                       ; $5026: $c7
    dec [hl]                                      ; $5027: $35

jr_058_5028:
    sbc l                                         ; $5028: $9d
    rst $00                                       ; $5029: $c7
    cp a                                          ; $502a: $bf
    ld l, c                                       ; $502b: $69
    ld [hl], a                                    ; $502c: $77
    ld e, a                                       ; $502d: $5f
    ld h, [hl]                                    ; $502e: $66
    halt                                          ; $502f: $76
    pop bc                                        ; $5030: $c1
    db $dd                                        ; $5031: $dd
    sbc [hl]                                      ; $5032: $9e
    ld l, e                                       ; $5033: $6b
    call nc, Call_058_7f92                        ; $5034: $d4 $92 $7f
    cp h                                          ; $5037: $bc
    rst $00                                       ; $5038: $c7
    db $eb                                        ; $5039: $eb
    jr c, jr_058_5028                             ; $503a: $38 $ec

    rst $00                                       ; $503c: $c7
    add sp, -$5b                                  ; $503d: $e8 $a5
    ei                                            ; $503f: $fb
    ld a, [hl+]                                   ; $5040: $2a
    rst $10                                       ; $5041: $d7
    db $e4                                        ; $5042: $e4
    dec b                                         ; $5043: $05
    db $ed                                        ; $5044: $ed
    ld [$88d7], sp                                ; $5045: $08 $d7 $88
    ld d, a                                       ; $5048: $57
    ld d, e                                       ; $5049: $53
    ld a, [$8b2c]                                 ; $504a: $fa $2c $8b
    cp c                                          ; $504d: $b9
    ld hl, sp-$6e                                 ; $504e: $f8 $92
    sbc b                                         ; $5050: $98
    ld [hl], c                                    ; $5051: $71
    ld a, [$3bcb]                                 ; $5052: $fa $cb $3b
    sbc l                                         ; $5055: $9d
    inc l                                         ; $5056: $2c
    db $e3                                        ; $5057: $e3
    rst $18                                       ; $5058: $df
    and [hl]                                      ; $5059: $a6
    cp [hl]                                       ; $505a: $be
    db $ec                                        ; $505b: $ec
    or $dc                                        ; $505c: $f6 $dc
    ld a, [hl]                                    ; $505e: $7e
    ld e, $d7                                     ; $505f: $1e $d7
    daa                                           ; $5061: $27
    db $db                                        ; $5062: $db
    rlca                                          ; $5063: $07
    xor l                                         ; $5064: $ad
    rra                                           ; $5065: $1f
    cp b                                          ; $5066: $b8
    ld e, e                                       ; $5067: $5b
    ld c, d                                       ; $5068: $4a
    adc a                                         ; $5069: $8f
    ld d, e                                       ; $506a: $53
    sub [hl]                                      ; $506b: $96
    ld de, $3fc9                                  ; $506c: $11 $c9 $3f
    ld d, e                                       ; $506f: $53
    ld a, [$530e]                                 ; $5070: $fa $0e $53
    or l                                          ; $5073: $b5
    sbc h                                         ; $5074: $9c
    cp b                                          ; $5075: $b8
    add sp, $5c                                   ; $5076: $e8 $5c
    or e                                          ; $5078: $b3
    db $ec                                        ; $5079: $ec
    ld [hl], b                                    ; $507a: $70
    xor [hl]                                      ; $507b: $ae
    pop de                                        ; $507c: $d1
    xor a                                         ; $507d: $af
    inc c                                         ; $507e: $0c
    ld de, $1c7d                                  ; $507f: $11 $7d $1c
    add $95                                       ; $5082: $c6 $95
    sub l                                         ; $5084: $95
    ld a, [c]                                     ; $5085: $f2
    sub h                                         ; $5086: $94
    cp [hl]                                       ; $5087: $be
    inc de                                        ; $5088: $13
    push af                                       ; $5089: $f5
    sub $bc                                       ; $508a: $d6 $bc
    and h                                         ; $508c: $a4
    xor a                                         ; $508d: $af
    ld a, [c]                                     ; $508e: $f2
    add sp, -$0a                                  ; $508f: $e8 $f6
    dec h                                         ; $5091: $25
    cp d                                          ; $5092: $ba
    inc a                                         ; $5093: $3c
    ld l, h                                       ; $5094: $6c
    dec [hl]                                      ; $5095: $35
    ld a, [hl-]                                   ; $5096: $3a
    rla                                           ; $5097: $17
    ld l, [hl]                                    ; $5098: $6e
    ld l, $ed                                     ; $5099: $2e $ed
    xor $cb                                       ; $509b: $ee $cb
    call z, $b82e                                 ; $509d: $cc $2e $b8
    xor $2f                                       ; $50a0: $ee $2f
    dec sp                                        ; $50a2: $3b
    ret                                           ; $50a3: $c9


    adc e                                         ; $50a4: $8b
    add h                                         ; $50a5: $84
    ld a, c                                       ; $50a6: $79
    xor [hl]                                      ; $50a7: $ae
    ld d, l                                       ; $50a8: $55
    ld d, a                                       ; $50a9: $57

jr_058_50aa:
    ld e, c                                       ; $50aa: $59
    sub h                                         ; $50ab: $94
    pop hl                                        ; $50ac: $e1
    ld a, d                                       ; $50ad: $7a
    ld e, h                                       ; $50ae: $5c
    inc hl                                        ; $50af: $23
    ld e, [hl]                                    ; $50b0: $5e
    ld c, l                                       ; $50b1: $4d
    jp hl                                         ; $50b2: $e9


    or e                                          ; $50b3: $b3
    inc l                                         ; $50b4: $2c
    and $e2                                       ; $50b5: $e6 $e2
    ld c, e                                       ; $50b7: $4b
    ld h, d                                       ; $50b8: $62
    add $e9                                       ; $50b9: $c6 $e9
    cpl                                           ; $50bb: $2f
    rst $28                                       ; $50bc: $ef
    ld [hl], h                                    ; $50bd: $74
    or d                                          ; $50be: $b2
    adc h                                         ; $50bf: $8c
    ld a, a                                       ; $50c0: $7f
    sbc e                                         ; $50c1: $9b
    ld a, [$dbb2]                                 ; $50c2: $fa $b2 $db
    ld [hl], e                                    ; $50c5: $73
    ei                                            ; $50c6: $fb
    ld a, c                                       ; $50c7: $79
    ld e, h                                       ; $50c8: $5c
    sbc a                                         ; $50c9: $9f
    ld l, h                                       ; $50ca: $6c
    rra                                           ; $50cb: $1f
    or h                                          ; $50cc: $b4
    ld a, [hl]                                    ; $50cd: $7e
    ldh [$6e], a                                  ; $50ce: $e0 $6e
    add hl, hl                                    ; $50d0: $29
    dec a                                         ; $50d1: $3d
    ld c, [hl]                                    ; $50d2: $4e
    ld e, c                                       ; $50d3: $59
    ld b, [hl]                                    ; $50d4: $46
    inc h                                         ; $50d5: $24
    rst $38                                       ; $50d6: $ff
    ld c, h                                       ; $50d7: $4c
    jp hl                                         ; $50d8: $e9


    dec sp                                        ; $50d9: $3b
    ld c, h                                       ; $50da: $4c
    push de                                       ; $50db: $d5
    ld [hl], d                                    ; $50dc: $72
    ld [c], a                                     ; $50dd: $e2
    and d                                         ; $50de: $a2
    ld [hl], e                                    ; $50df: $73
    call $c3b2                                    ; $50e0: $cd $b2 $c3
    cp c                                          ; $50e3: $b9
    ld b, [hl]                                    ; $50e4: $46
    cp a                                          ; $50e5: $bf
    ld [hl-], a                                   ; $50e6: $32
    ld b, h                                       ; $50e7: $44
    dec a                                         ; $50e8: $3d
    xor [hl]                                      ; $50e9: $ae
    cp c                                          ; $50ea: $b9
    and [hl]                                      ; $50eb: $a6
    inc l                                         ; $50ec: $2c
    inc de                                        ; $50ed: $13
    adc l                                         ; $50ee: $8d
    rla                                           ; $50ef: $17
    ld [hl], e                                    ; $50f0: $73
    pop af                                        ; $50f1: $f1
    dec h                                         ; $50f2: $25
    ld sp, $f4e3                                  ; $50f3: $31 $e3 $f4
    sub a                                         ; $50f6: $97
    ld [hl], a                                    ; $50f7: $77
    ld a, [hl-]                                   ; $50f8: $3a
    ld e, c                                       ; $50f9: $59
    inc l                                         ; $50fa: $2c
    ld d, e                                       ; $50fb: $53
    ld e, a                                       ; $50fc: $5f
    or h                                          ; $50fd: $b4
    db $eb                                        ; $50fe: $eb
    ld a, c                                       ; $50ff: $79
    ld d, l                                       ; $5100: $55
    ld a, [de]                                    ; $5101: $1a
    adc b                                         ; $5102: $88
    nop                                           ; $5103: $00
    dec a                                         ; $5104: $3d
    xor [hl]                                      ; $5105: $ae
    cp c                                          ; $5106: $b9
    ld h, [hl]                                    ; $5107: $66
    sbc c                                         ; $5108: $99
    ld l, b                                       ; $5109: $68
    ld d, $73                                     ; $510a: $16 $73
    pop af                                        ; $510c: $f1
    dec h                                         ; $510d: $25
    ld sp, $f4e3                                  ; $510e: $31 $e3 $f4
    sub a                                         ; $5111: $97
    ld [hl], a                                    ; $5112: $77
    ld a, [hl-]                                   ; $5113: $3a
    ld e, c                                       ; $5114: $59
    or h                                          ; $5115: $b4
    dec hl                                        ; $5116: $2b
    ld c, l                                       ; $5117: $4d
    or h                                          ; $5118: $b4
    jr z, jr_058_50aa                             ; $5119: $28 $8f

    halt                                          ; $511b: $76
    sbc l                                         ; $511c: $9d
    jr c, jr_058_518b                             ; $511d: $38 $6c

    or l                                          ; $511f: $b5
    di                                            ; $5120: $f3
    rrca                                          ; $5121: $0f
    ld a, e                                       ; $5122: $7b
    ld a, d                                       ; $5123: $7a
    ld l, b                                       ; $5124: $68
    add [hl]                                      ; $5125: $86
    ld [$94b7], sp                                ; $5126: $08 $b7 $94
    ld b, l                                       ; $5129: $45
    ld l, b                                       ; $512a: $68
    rst $10                                       ; $512b: $d7
    adc c                                         ; $512c: $89
    adc e                                         ; $512d: $8b
    cp c                                          ; $512e: $b9
    ld hl, sp-$6e                                 ; $512f: $f8 $92
    sbc b                                         ; $5131: $98
    ld [hl], c                                    ; $5132: $71
    ld a, [$3bcb]                                 ; $5133: $fa $cb $3b
    sbc l                                         ; $5136: $9d
    inc l                                         ; $5137: $2c
    jp c, $bcf5                                   ; $5138: $da $f5 $bc

    ld a, [hl+]                                   ; $513b: $2a
    dec c                                         ; $513c: $0d
    ld e, h                                       ; $513d: $5c
    rra                                           ; $513e: $1f
    add a                                         ; $513f: $87
    ld de, $e914                                  ; $5140: $11 $14 $e9
    sbc d                                         ; $5143: $9a
    or d                                          ; $5144: $b2
    call z, $90b5                                 ; $5145: $cc $b5 $90
    dec d                                         ; $5148: $15
    ld b, h                                       ; $5149: $44
    scf                                           ; $514a: $37
    rst $00                                       ; $514b: $c7
    xor b                                         ; $514c: $a8
    rst $10                                       ; $514d: $d7
    db $e3                                        ; $514e: $e3
    pop af                                        ; $514f: $f1
    ld d, a                                       ; $5150: $57
    ld b, a                                       ; $5151: $47
    ld [hl], d                                    ; $5152: $72
    inc e                                         ; $5153: $1c
    rst $38                                       ; $5154: $ff
    ld [hl], $cb                                  ; $5155: $36 $cb
    ld b, h                                       ; $5157: $44
    or e                                          ; $5158: $b3
    sbc b                                         ; $5159: $98
    adc e                                         ; $515a: $8b
    cpl                                           ; $515b: $2f
    adc c                                         ; $515c: $89
    add hl, de                                    ; $515d: $19
    and a                                         ; $515e: $a7
    cp a                                          ; $515f: $bf
    cp h                                          ; $5160: $bc
    db $d3                                        ; $5161: $d3
    ret                                           ; $5162: $c9


    and d                                         ; $5163: $a2
    ld e, l                                       ; $5164: $5d
    rst $08                                       ; $5165: $cf
    xor e                                         ; $5166: $ab
    jp nc, $f5c0                                  ; $5167: $d2 $c0 $f5

    ld d, b                                       ; $516a: $50
    and h                                         ; $516b: $a4
    ld l, e                                       ; $516c: $6b
    ld c, d                                       ; $516d: $4a
    ld e, a                                       ; $516e: $5f
    ld a, h                                       ; $516f: $7c
    or d                                          ; $5170: $b2
    ld [hl], h                                    ; $5171: $74
    jp hl                                         ; $5172: $e9


    pop de                                        ; $5173: $d1
    ld d, e                                       ; $5174: $53
    ld d, $88                                     ; $5175: $16 $88
    nop                                           ; $5177: $00
    dec a                                         ; $5178: $3d
    xor [hl]                                      ; $5179: $ae
    cp c                                          ; $517a: $b9
    and [hl]                                      ; $517b: $a6
    inc l                                         ; $517c: $2c
    inc de                                        ; $517d: $13
    rra                                           ; $517e: $1f
    or $62                                        ; $517f: $f6 $62
    ld l, $be                                     ; $5181: $2e $be
    inc h                                         ; $5183: $24
    ld h, [hl]                                    ; $5184: $66
    sbc h                                         ; $5185: $9c
    cp $f2                                        ; $5186: $fe $f2
    ld c, [hl]                                    ; $5188: $4e
    daa                                           ; $5189: $27
    adc e                                         ; $518a: $8b

jr_058_518b:
    ld h, l                                       ; $518b: $65
    ld [$768b], a                                 ; $518c: $ea $8b $76
    dec a                                         ; $518f: $3d
    xor a                                         ; $5190: $af
    ld c, d                                       ; $5191: $4a
    inc bc                                        ; $5192: $03
    rst $10                                       ; $5193: $d7
    ld b, e                                       ; $5194: $43
    sub c                                         ; $5195: $91
    xor [hl]                                      ; $5196: $ae
    add hl, hl                                    ; $5197: $29
    ld a, l                                       ; $5198: $7d
    ccf                                           ; $5199: $3f
    ld b, [hl]                                    ; $519a: $46
    adc a                                         ; $519b: $8f
    and [hl]                                      ; $519c: $a6
    ld l, d                                       ; $519d: $6a
    sub d                                         ; $519e: $92
    dec l                                         ; $519f: $2d
    db $d3                                        ; $51a0: $d3
    db $d3                                        ; $51a1: $d3
    and l                                         ; $51a2: $a5
    ld b, a                                       ; $51a3: $47
    or a                                          ; $51a4: $b7
    rra                                           ; $51a5: $1f
    inc c                                         ; $51a6: $0c
    ld de, $1c7d                                  ; $51a7: $11 $7d $1c
    sub [hl]                                      ; $51aa: $96
    db $fc                                        ; $51ab: $fc
    ld [hl], e                                    ; $51ac: $73
    ret c                                         ; $51ad: $d8

    sub e                                         ; $51ae: $93
    inc e                                         ; $51af: $1c
    and a                                         ; $51b0: $a7
    db $f4                                        ; $51b1: $f4
    add hl, hl                                    ; $51b2: $29
    dec a                                         ; $51b3: $3d
    ld b, [hl]                                    ; $51b4: $46
    di                                            ; $51b5: $f3
    ld [hl-], a                                   ; $51b6: $32
    ld c, c                                       ; $51b7: $49
    adc [hl]                                      ; $51b8: $8e
    ld a, a                                       ; $51b9: $7f
    sbc e                                         ; $51ba: $9b
    ld h, l                                       ; $51bb: $65
    and d                                         ; $51bc: $a2
    ld e, c                                       ; $51bd: $59
    call z, $97c5                                 ; $51be: $cc $c5 $97
    call nz, $d38c                                ; $51c1: $c4 $8c $d3
    ld e, a                                       ; $51c4: $5f
    sbc $e9                                       ; $51c5: $de $e9
    ld h, h                                       ; $51c7: $64
    pop de                                        ; $51c8: $d1
    xor [hl]                                      ; $51c9: $ae
    rst $20                                       ; $51ca: $e7
    ld d, l                                       ; $51cb: $55
    ld l, c                                       ; $51cc: $69
    jr nz, jr_058_51d1                            ; $51cd: $20 $02

    or a                                          ; $51cf: $b7
    ld d, e                                       ; $51d0: $53

jr_058_51d1:
    ld d, e                                       ; $51d1: $53
    sub [hl]                                      ; $51d2: $96
    sbc l                                         ; $51d3: $9d
    ld a, a                                       ; $51d4: $7f
    ret c                                         ; $51d5: $d8

    adc e                                         ; $51d6: $8b
    cp c                                          ; $51d7: $b9
    ld hl, sp-$6e                                 ; $51d8: $f8 $92
    sbc b                                         ; $51da: $98
    ld [hl], c                                    ; $51db: $71
    ld a, [$3bcb]                                 ; $51dc: $fa $cb $3b
    sbc l                                         ; $51df: $9d
    inc l                                         ; $51e0: $2c
    sub [hl]                                      ; $51e1: $96
    call nc, Call_058_4dbb                        ; $51e2: $d4 $bb $4d
    sub [hl]                                      ; $51e5: $96
    ld a, h                                       ; $51e6: $7c
    ld de, $fed7                                  ; $51e7: $11 $d7 $fe
    adc b                                         ; $51ea: $88
    call nz, $8235                                ; $51eb: $c4 $35 $82
    ld [de], a                                    ; $51ee: $12
    sub l                                         ; $51ef: $95
    ld a, [de]                                    ; $51f0: $1a
    ld bc, $53b7                                  ; $51f1: $01 $b7 $53
    ld d, e                                       ; $51f4: $53
    sub [hl]                                      ; $51f5: $96
    sbc l                                         ; $51f6: $9d
    ld a, a                                       ; $51f7: $7f
    ret c                                         ; $51f8: $d8

    adc e                                         ; $51f9: $8b
    cp c                                          ; $51fa: $b9
    ld hl, sp-$6e                                 ; $51fb: $f8 $92
    sbc b                                         ; $51fd: $98
    ld [hl], c                                    ; $51fe: $71
    ld a, [$3bcb]                                 ; $51ff: $fa $cb $3b
    sbc l                                         ; $5202: $9d
    inc l                                         ; $5203: $2c
    sub [hl]                                      ; $5204: $96
    call nc, $23bb                                ; $5205: $d4 $bb $23
    ld b, [hl]                                    ; $5208: $46
    adc a                                         ; $5209: $8f
    adc $c5                                       ; $520a: $ce $c5
    adc a                                         ; $520c: $8f
    sbc h                                         ; $520d: $9c
    ld [hl], d                                    ; $520e: $72
    ret c                                         ; $520f: $d8

    rst $18                                       ; $5210: $df
    pop hl                                        ; $5211: $e1
    inc e                                         ; $5212: $1c
    db $e3                                        ; $5213: $e3
    sub a                                         ; $5214: $97
    ld h, b                                       ; $5215: $60
    ld c, c                                       ; $5216: $49
    adc l                                         ; $5217: $8d
    nop                                           ; $5218: $00
    dec a                                         ; $5219: $3d
    inc d                                         ; $521a: $14
    jp hl                                         ; $521b: $e9


    jp c, $1ce1                                   ; $521c: $da $e1 $1c

    and e                                         ; $521f: $a3
    ld h, l                                       ; $5220: $65
    ld [$c8cb], a                                 ; $5221: $ea $cb $c8
    ld [hl], a                                    ; $5224: $77
    adc [hl]                                      ; $5225: $8e
    ld l, e                                       ; $5226: $6b

jr_058_5227:
    jp z, $9e22                                   ; $5227: $ca $22 $9e

    ld l, b                                       ; $522a: $68
    cp h                                          ; $522b: $bc
    sbc b                                         ; $522c: $98
    adc e                                         ; $522d: $8b
    cpl                                           ; $522e: $2f
    adc c                                         ; $522f: $89
    add hl, de                                    ; $5230: $19
    and a                                         ; $5231: $a7
    cp a                                          ; $5232: $bf
    cp h                                          ; $5233: $bc
    db $d3                                        ; $5234: $d3
    ret                                           ; $5235: $c9


    ld h, d                                       ; $5236: $62
    pop de                                        ; $5237: $d1
    xor [hl]                                      ; $5238: $ae
    rst $20                                       ; $5239: $e7
    ld d, l                                       ; $523a: $55
    ld l, c                                       ; $523b: $69
    jr nz, jr_058_5240                            ; $523c: $20 $02

    dec a                                         ; $523e: $3d
    ld c, a                                       ; $523f: $4f

jr_058_5240:
    add hl, hl                                    ; $5240: $29
    xor a                                         ; $5241: $af

Call_058_5242:
    db $e3                                        ; $5242: $e3
    jr nc, jr_058_5227                            ; $5243: $30 $e2

    ld sp, $994f                                  ; $5245: $31 $4f $99
    add a                                         ; $5248: $87
    xor l                                         ; $5249: $ad
    ld b, [hl]                                    ; $524a: $46
    dec l                                         ; $524b: $2d
    or c                                          ; $524c: $b1
    ld d, d                                       ; $524d: $52
    sub $2e                                       ; $524e: $d6 $2e
    ld sp, hl                                     ; $5250: $f9
    xor l                                         ; $5251: $ad
    ld a, c                                       ; $5252: $79
    dec e                                         ; $5253: $1d
    add a                                         ; $5254: $87
    sbc l                                         ; $5255: $9d
    rla                                           ; $5256: $17
    ld a, b                                       ; $5257: $78
    adc a                                         ; $5258: $8f
    and a                                         ; $5259: $a7
    call z, $b9ec                                 ; $525a: $cc $ec $b9
    ld h, [hl]                                    ; $525d: $66
    ld e, c                                       ; $525e: $59
    ret z                                         ; $525f: $c8

    ld l, d                                       ; $5260: $6a
    ld sp, $5f17                                  ; $5261: $31 $17 $5f
    ld [de], a                                    ; $5264: $12
    inc sp                                        ; $5265: $33
    ld c, [hl]                                    ; $5266: $4e
    ld a, a                                       ; $5267: $7f
    ld a, c                                       ; $5268: $79
    and a                                         ; $5269: $a7
    sub e                                         ; $526a: $93
    ld b, l                                       ; $526b: $45
    cp e                                          ; $526c: $bb
    sbc [hl]                                      ; $526d: $9e
    ld d, a                                       ; $526e: $57
    and l                                         ; $526f: $a5
    add c                                         ; $5270: $81
    ld [$ff80], sp                                ; $5271: $08 $80 $ff
    ld c, [hl]                                    ; $5274: $4e
    ld a, h                                       ; $5275: $7c
    ld l, l                                       ; $5276: $6d
    rst $20                                       ; $5277: $e7
    adc a                                         ; $5278: $8f

jr_058_5279:
    xor [hl]                                      ; $5279: $ae
    scf                                           ; $527a: $37
    and c                                         ; $527b: $a1
    ld l, d                                       ; $527c: $6a
    jp z, $98bc                                   ; $527d: $ca $bc $98

    ld sp, $cd76                                  ; $5280: $31 $76 $cd
    ld [hl-], a                                   ; $5283: $32
    pop de                                        ; $5284: $d1
    inc l                                         ; $5285: $2c
    ld h, [hl]                                    ; $5286: $66
    sbc h                                         ; $5287: $9c
    cp $f2                                        ; $5288: $fe $f2
    ld c, [hl]                                    ; $528a: $4e
    daa                                           ; $528b: $27
    dec bc                                        ; $528c: $0b
    ld b, h                                       ; $528d: $44
    db $dd                                        ; $528e: $dd
    and $b9                                       ; $528f: $e6 $b9
    or $1a                                        ; $5291: $f6 $1a
    xor a                                         ; $5293: $af
    db $e3                                        ; $5294: $e3
    jr nc, jr_058_5279                            ; $5295: $30 $e2

    push de                                       ; $5297: $d5
    add sp, $5c                                   ; $5298: $e8 $5c
    db $eb                                        ; $529a: $eb
    jp nc, $dd38                                  ; $529b: $d2 $38 $dd

    ld a, [hl]                                    ; $529e: $7e
    adc h                                         ; $529f: $8c
    ld h, [hl]                                    ; $52a0: $66
    db $ed                                        ; $52a1: $ed
    ld a, d                                       ; $52a2: $7a
    ld e, [hl]                                    ; $52a3: $5e
    sub l                                         ; $52a4: $95
    ld b, $22                                     ; $52a5: $06 $22
    ld [hl], a                                    ; $52a7: $77
    ld c, b                                       ; $52a8: $48
    or b                                          ; $52a9: $b0
    adc h                                         ; $52aa: $8c
    ld l, [hl]                                    ; $52ab: $6e
    ld l, $2f                                     ; $52ac: $2e $2f
    ld h, [hl]                                    ; $52ae: $66
    sbc h                                         ; $52af: $9c
    cp $f2                                        ; $52b0: $fe $f2
    ld c, [hl]                                    ; $52b2: $4e
    daa                                           ; $52b3: $27
    adc e                                         ; $52b4: $8b
    ld l, e                                       ; $52b5: $6b
    ld [hl], h                                    ; $52b6: $74
    xor [hl]                                      ; $52b7: $ae
    ld [hl], l                                    ; $52b8: $75
    ld l, c                                       ; $52b9: $69
    sbc h                                         ; $52ba: $9c
    ld l, [hl]                                    ; $52bb: $6e
    ccf                                           ; $52bc: $3f
    ld b, [hl]                                    ; $52bd: $46
    or e                                          ; $52be: $b3
    halt                                          ; $52bf: $76
    dec a                                         ; $52c0: $3d

jr_058_52c1:
    xor a                                         ; $52c1: $af
    ld c, d                                       ; $52c2: $4a
    inc bc                                        ; $52c3: $03
    ld de, $6677                                  ; $52c4: $11 $77 $66
    cp h                                          ; $52c7: $bc
    rra                                           ; $52c8: $1f
    ld a, [hl-]                                   ; $52c9: $3a
    sub [hl]                                      ; $52ca: $96
    sbc l                                         ; $52cb: $9d
    xor a                                         ; $52cc: $af
    inc l                                         ; $52cd: $2c
    jp c, $bcf5                                   ; $52ce: $da $f5 $bc

    ld a, [hl+]                                   ; $52d1: $2a
    dec c                                         ; $52d2: $0d
    ld e, h                                       ; $52d3: $5c
    or a                                          ; $52d4: $b7
    ld a, c                                       ; $52d5: $79
    ld sp, $ec63                                  ; $52d6: $31 $63 $ec
    sbc d                                         ; $52d9: $9a
    ld l, b                                       ; $52da: $68
    cp h                                          ; $52db: $bc
    sbc b                                         ; $52dc: $98
    ld [hl], c                                    ; $52dd: $71
    ld a, [$3bcb]                                 ; $52de: $fa $cb $3b
    sbc l                                         ; $52e1: $9d
    inc l                                         ; $52e2: $2c
    xor [hl]                                      ; $52e3: $ae
    jp hl                                         ; $52e4: $e9


    add a                                         ; $52e5: $87
    sbc a                                         ; $52e6: $9f
    inc e                                         ; $52e7: $1c
    or a                                          ; $52e8: $b7
    rra                                           ; $52e9: $1f
    jr nz, jr_058_52ee                            ; $52ea: $20 $02

    dec a                                         ; $52ec: $3d
    scf                                           ; $52ed: $37

jr_058_52ee:
    inc bc                                        ; $52ee: $03
    nop                                           ; $52ef: $00
    nop                                           ; $52f0: $00
    ld l, h                                       ; $52f1: $6c
    rst $30                                       ; $52f2: $f7
    db $dd                                        ; $52f3: $dd
    dec bc                                        ; $52f4: $0b

jr_058_52f5:
    db $10                                        ; $52f5: $10
    ldh [$6d], a                                  ; $52f6: $e0 $6d
    nop                                           ; $52f8: $00
    or h                                          ; $52f9: $b4
    inc bc                                        ; $52fa: $03
    ld c, l                                       ; $52fb: $4d
    cp h                                          ; $52fc: $bc
    ld a, d                                       ; $52fd: $7a
    and b                                         ; $52fe: $a0
    reti                                          ; $52ff: $d9


    ld [hl], l                                    ; $5300: $75
    or h                                          ; $5301: $b4
    sub e                                         ; $5302: $93
    add a                                         ; $5303: $87
    ld a, l                                       ; $5304: $7d
    or $44                                        ; $5305: $f6 $44
    xor l                                         ; $5307: $ad
    call c, $5b1e                                 ; $5308: $dc $1e $5b
    db $ed                                        ; $530b: $ed
    adc e                                         ; $530c: $8b
    ld a, [$ffa0]                                 ; $530d: $fa $a0 $ff
    db $db                                        ; $5310: $db
    dec hl                                        ; $5311: $2b
    adc a                                         ; $5312: $8f
    db $eb                                        ; $5313: $eb
    add hl, hl                                    ; $5314: $29
    db $e3                                        ; $5315: $e3
    ld d, a                                       ; $5316: $57
    pop af                                        ; $5317: $f1
    inc l                                         ; $5318: $2c
    db $d3                                        ; $5319: $d3
    ld a, e                                       ; $531a: $7b
    and d                                         ; $531b: $a2
    ld b, $7e                                     ; $531c: $06 $7e
    ld b, b                                       ; $531e: $40
    ld e, [hl]                                    ; $531f: $5e
    adc c                                         ; $5320: $89
    ld l, e                                       ; $5321: $6b
    or a                                          ; $5322: $b7
    ld d, h                                       ; $5323: $54
    ld a, $70                                     ; $5324: $3e $70
    jr nz, jr_058_5357                            ; $5326: $20 $2f

    jr c, jr_058_52c1                             ; $5328: $38 $97

    ld e, l                                       ; $532a: $5d
    ld a, [hl]                                    ; $532b: $7e
    ld hl, $f702                                  ; $532c: $21 $02 $f7
    ld d, b                                       ; $532f: $50
    inc hl                                        ; $5330: $23
    ld e, [hl]                                    ; $5331: $5e
    ld c, l                                       ; $5332: $4d
    jp hl                                         ; $5333: $e9


    and e                                         ; $5334: $a3
    add hl, hl                                    ; $5335: $29
    and $71                                       ; $5336: $e6 $71
    ld l, c                                       ; $5338: $69
    ld e, d                                       ; $5339: $5a
    di                                            ; $533a: $f3
    pop hl                                        ; $533b: $e1
    sub a                                         ; $533c: $97
    ld e, b                                       ; $533d: $58
    and [hl]                                      ; $533e: $a6
    cp [hl]                                       ; $533f: $be
    ld l, b                                       ; $5340: $68
    and a                                         ; $5341: $a7
    call z, Call_058_7e4b                         ; $5342: $cc $4b $7e
    db $e4                                        ; $5345: $e4
    rra                                           ; $5346: $1f
    ld c, $7b                                     ; $5347: $0e $7b
    cpl                                           ; $5349: $2f
    reti                                          ; $534a: $d9


    ld l, e                                       ; $534b: $6b
    inc a                                         ; $534c: $3c
    sbc l                                         ; $534d: $9d
    rrca                                          ; $534e: $0f
    ld l, e                                       ; $534f: $6b
    ld l, d                                       ; $5350: $6a
    ld [hl], h                                    ; $5351: $74
    xor [hl]                                      ; $5352: $ae
    ld e, c                                       ; $5353: $59
    ld b, [hl]                                    ; $5354: $46
    jr c, jr_058_52f5                             ; $5355: $38 $9e

jr_058_5357:
    cp c                                          ; $5357: $b9
    dec [hl]                                      ; $5358: $35
    rst $10                                       ; $5359: $d7
    cp b                                          ; $535a: $b8
    ld [hl], d                                    ; $535b: $72
    ld l, e                                       ; $535c: $6b
    ld hl, sp-$77                                 ; $535d: $f8 $89
    and h                                         ; $535f: $a4
    sbc $3d                                       ; $5360: $de $3d
    call nc, $93e2                                ; $5362: $d4 $e2 $93
    add hl, hl                                    ; $5365: $29
    ld a, l                                       ; $5366: $7d
    jp hl                                         ; $5367: $e9


    jp nc, $a7a3                                  ; $5368: $d2 $a3 $a7

    inc l                                         ; $536b: $2c
    and e                                         ; $536c: $a3
    cp e                                          ; $536d: $bb
    ld [$f7b0], a                                 ; $536e: $ea $b0 $f7
    sub d                                         ; $5371: $92
    pop hl                                        ; $5372: $e1
    daa                                           ; $5373: $27
    pop bc                                        ; $5374: $c1
    and e                                         ; $5375: $a3
    ld [hl], e                                    ; $5376: $73
    pop hl                                        ; $5377: $e1
    and $9a                                       ; $5378: $e6 $9a
    jp nc, Jump_000_3317                          ; $537a: $d2 $17 $33

    add $ae                                       ; $537d: $c6 $ae
    pop af                                        ; $537f: $f1
    ld l, a                                       ; $5380: $6f
    and e                                         ; $5381: $a3
    sub $fa                                       ; $5382: $d6 $fa
    ld a, [hl+]                                   ; $5384: $2a
    ld b, e                                       ; $5385: $43
    inc b                                         ; $5386: $04
    db $dd                                        ; $5387: $dd
    ld a, [$cb5c]                                 ; $5388: $fa $5c $cb
    ld hl, sp+$7c                                 ; $538b: $f8 $7c
    push hl                                       ; $538d: $e5
    jp c, $f117                                   ; $538e: $da $17 $f1

    cp $e8                                        ; $5391: $fe $e8
    add a                                         ; $5393: $87
    ld a, a                                       ; $5394: $7f
    ei                                            ; $5395: $fb
    ld h, $12                                     ; $5396: $26 $12
    or a                                          ; $5398: $b7
    call nz, Call_058_7a9c                        ; $5399: $c4 $9c $7a
    db $dd                                        ; $539c: $dd
    and $b9                                       ; $539d: $e6 $b9
    sub [hl]                                      ; $539f: $96
    inc a                                         ; $53a0: $3c
    add hl, sp                                    ; $53a1: $39
    pop de                                        ; $53a2: $d1
    db $ed                                        ; $53a3: $ed
    add a                                         ; $53a4: $87
    ld d, c                                       ; $53a5: $51
    db $e3                                        ; $53a6: $e3
    jp z, $3c7b                                   ; $53a7: $ca $7b $3c

    and l                                         ; $53aa: $a5
    rst $28                                       ; $53ab: $ef
    dec [hl]                                      ; $53ac: $35
    ld d, l                                       ; $53ad: $55
    ld a, a                                       ; $53ae: $7f
    ld [hl], h                                    ; $53af: $74
    ld d, a                                       ; $53b0: $57
    adc l                                         ; $53b1: $8d
    ld a, b                                       ; $53b2: $78
    or l                                          ; $53b3: $b5
    daa                                           ; $53b4: $27
    inc a                                         ; $53b5: $3c
    ret                                           ; $53b6: $c9


    ld e, [hl]                                    ; $53b7: $5e
    add $53                                       ; $53b8: $c6 $53
    and $d4                                       ; $53ba: $e6 $d4
    ld [$fadd], sp                                ; $53bc: $08 $dd $fa
    adc b                                         ; $53bf: $88
    ld d, a                                       ; $53c0: $57
    adc e                                         ; $53c1: $8b
    sbc l                                         ; $53c2: $9d
    ld l, $92                                     ; $53c3: $2e $92
    rst $30                                       ; $53c5: $f7
    ld a, [de]                                    ; $53c6: $1a
    rst $28                                       ; $53c7: $ef
    ld h, h                                       ; $53c8: $64
    cp h                                          ; $53c9: $bc
    jp Jump_000_2479                              ; $53ca: $c3 $79 $24


    or l                                          ; $53cd: $b5
    inc de                                        ; $53ce: $13
    ld [hl], e                                    ; $53cf: $73
    ld [hl], e                                    ; $53d0: $73
    ei                                            ; $53d1: $fb
    add a                                         ; $53d2: $87
    ld e, a                                       ; $53d3: $5f
    ld [$43dd], a                                 ; $53d4: $ea $dd $43
    dec l                                         ; $53d7: $2d
    ld a, $99                                     ; $53d8: $3e $99
    jp nc, $fe57                                  ; $53da: $d2 $57 $fe

    rst $00                                       ; $53dd: $c7
    db $e3                                        ; $53de: $e3
    rst $18                                       ; $53df: $df
    sub $fb                                       ; $53e0: $d6 $fb
    dec [hl]                                      ; $53e2: $35
    ld c, [hl]                                    ; $53e3: $4e
    ld [hl], d                                    ; $53e4: $72
    ld [hl], c                                    ; $53e5: $71
    ld l, d                                       ; $53e6: $6a
    inc b                                         ; $53e7: $04
    or a                                          ; $53e8: $b7
    rst $20                                       ; $53e9: $e7
    jp nz, $966e                                  ; $53ea: $c2 $6e $96

    xor c                                         ; $53ed: $a9
    cpl                                           ; $53ee: $2f
    inc hl                                        ; $53ef: $23
    ld e, [hl]                                    ; $53f0: $5e
    db $ed                                        ; $53f1: $ed
    inc [hl]                                      ; $53f2: $34
    adc d                                         ; $53f3: $8a
    ld a, c                                       ; $53f4: $79
    jp z, $c732                                   ; $53f5: $ca $32 $c7

    and $1d                                       ; $53f8: $e6 $1d
    ret                                           ; $53fa: $c9


    jp hl                                         ; $53fb: $e9


    or h                                          ; $53fc: $b4
    ld b, l                                       ; $53fd: $45
    cp e                                          ; $53fe: $bb
    xor $7a                                       ; $53ff: $ee $7a
    and b                                         ; $5401: $a0
    ld [hl], e                                    ; $5402: $73
    ld [$bcf5], a                                 ; $5403: $ea $f5 $bc
    ld a, [de]                                    ; $5406: $1a
    pop af                                        ; $5407: $f1
    ld h, h                                       ; $5408: $64
    ld hl, $de2b                                  ; $5409: $21 $2b $de
    ld c, e                                       ; $540c: $4b
    or h                                          ; $540d: $b4
    inc de                                        ; $540e: $13
    xor d                                         ; $540f: $aa
    ld b, [hl]                                    ; $5410: $46
    inc a                                         ; $5411: $3c
    reti                                          ; $5412: $d9


    sub c                                         ; $5413: $91
    rla                                           ; $5414: $17
    and e                                         ; $5415: $a3
    ld l, e                                       ; $5416: $6b
    add hl, de                                    ; $5417: $19
    ld c, a                                       ; $5418: $4f
    ld a, l                                       ; $5419: $7d
    pop af                                        ; $541a: $f1
    ld b, h                                       ; $541b: $44
    db $e3                                        ; $541c: $e3
    dec h                                         ; $541d: $25
    ld d, $71                                     ; $541e: $16 $71
    adc l                                         ; $5420: $8d
    and h                                         ; $5421: $a4
    and [hl]                                      ; $5422: $a6
    inc l                                         ; $5423: $2c
    jp Jump_058_5b14                              ; $5424: $c3 $14 $5b


    ld d, d                                       ; $5427: $52
    inc hl                                        ; $5428: $23
    db $dd                                        ; $5429: $dd
    ld a, [$5788]                                 ; $542a: $fa $88 $57
    adc e                                         ; $542d: $8b
    db $ed                                        ; $542e: $ed
    dec d                                         ; $542f: $15
    adc a                                         ; $5430: $8f
    ld e, d                                       ; $5431: $5a
    call z, Call_058_7b18                         ; $5432: $cc $18 $7b
    jp z, Jump_000_3961                           ; $5435: $ca $61 $39

    ld [hl], c                                    ; $5438: $71
    db $ed                                        ; $5439: $ed
    adc e                                         ; $543a: $8b
    sbc h                                         ; $543b: $9c
    ld c, [hl]                                    ; $543c: $4e
    sub a                                         ; $543d: $97
    ld h, l                                       ; $543e: $65
    add hl, sp                                    ; $543f: $39
    adc h                                         ; $5440: $8c
    cp $22                                        ; $5441: $fe $22
    ld e, [hl]                                    ; $5443: $5e
    ld [c], a                                     ; $5444: $e2
    ld l, a                                       ; $5445: $6f
    ld e, c                                       ; $5446: $59
    add sp, $58                                   ; $5447: $e8 $58
    inc h                                         ; $5449: $24
    db $e3                                        ; $544a: $e3
    pop de                                        ; $544b: $d1
    ld c, a                                       ; $544c: $4f
    add d                                         ; $544d: $82
    ld h, e                                       ; $544e: $63
    rst $00                                       ; $544f: $c7
    xor l                                         ; $5450: $ad
    cp c                                          ; $5451: $b9
    inc l                                         ; $5452: $2c
    ld [hl], b                                    ; $5453: $70
    rst $30                                       ; $5454: $f7
    add [hl]                                      ; $5455: $86
    ld e, c                                       ; $5456: $59
    sub h                                         ; $5457: $94
    db $db                                        ; $5458: $db
    rrca                                          ; $5459: $0f
    ld [hl], e                                    ; $545a: $73
    ld c, l                                       ; $545b: $4d
    jp hl                                         ; $545c: $e9


    inc hl                                        ; $545d: $23
    ld e, h                                       ; $545e: $5c
    db $10                                        ; $545f: $10
    jp nz, $d491                                  ; $5460: $c2 $91 $d4

    ld a, d                                       ; $5463: $7a
    cp a                                          ; $5464: $bf
    add $49                                       ; $5465: $c6 $49
    ld l, $4e                                     ; $5467: $2e $4e
    adc l                                         ; $5469: $8d
    nop                                           ; $546a: $00
    db $dd                                        ; $546b: $dd
    ld a, [$468e]                                 ; $546c: $fa $8e $46
    adc $94                                       ; $546f: $ce $94
    ld a, c                                       ; $5471: $79
    xor [hl]                                      ; $5472: $ae
    ld e, c                                       ; $5473: $59
    ld b, [hl]                                    ; $5474: $46
    ld [hl], a                                    ; $5475: $77
    ld a, [$fdaa]                                 ; $5476: $fa $aa $fd
    ld de, $d98f                                  ; $5479: $11 $8f $d9
    or d                                          ; $547c: $b2
    rst $00                                       ; $547d: $c7
    ld d, e                                       ; $547e: $53
    ld a, [$cdd2]                                 ; $547f: $fa $d2 $cd
    ld c, e                                       ; $5482: $4b
    ld e, [hl]                                    ; $5483: $5e
    dec bc                                        ; $5484: $0b
    cp h                                          ; $5485: $bc
    cpl                                           ; $5486: $2f
    ld [hl-], a                                   ; $5487: $32
    sub d                                         ; $5488: $92
    ld e, d                                       ; $5489: $5a
    rst $28                                       ; $548a: $ef
    ld a, [$fd34]                                 ; $548b: $fa $34 $fd
    dec h                                         ; $548e: $25
    ret nz                                        ; $548f: $c0

    db $dd                                        ; $5490: $dd
    ld b, e                                       ; $5491: $43
    adc l                                         ; $5492: $8d
    add sp, $2a                                   ; $5493: $e8 $2a
    rst $10                                       ; $5495: $d7
    sub h                                         ; $5496: $94
    ld a, $f3                                     ; $5497: $3e $f3
    ld c, d                                       ; $5499: $4a
    inc de                                        ; $549a: $13
    reti                                          ; $549b: $d9


    bit 7, b                                      ; $549c: $cb $78
    adc a                                         ; $549e: $8f
    and a                                         ; $549f: $a7
    call z, $bfa3                                 ; $54a0: $cc $a3 $bf
    sbc h                                         ; $54a3: $9c
    ld e, c                                       ; $54a4: $59
    ld h, $9a                                     ; $54a5: $26 $9a
    push bc                                       ; $54a7: $c5
    ld e, h                                       ; $54a8: $5c
    ld a, h                                       ; $54a9: $7c
    ld c, c                                       ; $54aa: $49
    call z, $fd38                                 ; $54ab: $cc $38 $fd
    push hl                                       ; $54ae: $e5
    sbc l                                         ; $54af: $9d
    ld c, [hl]                                    ; $54b0: $4e
    sub [hl]                                      ; $54b1: $96
    db $fd                                        ; $54b2: $fd
    and l                                         ; $54b3: $a5
    inc a                                         ; $54b4: $3c
    call c, $b15c                                 ; $54b5: $dc $5c $b1
    jp hl                                         ; $54b8: $e9


    jp hl                                         ; $54b9: $e9


    or h                                          ; $54ba: $b4
    ld h, l                                       ; $54bb: $65
    ld [hl], h                                    ; $54bc: $74
    xor [hl]                                      ; $54bd: $ae
    ld [hl], c                                    ; $54be: $71
    push hl                                       ; $54bf: $e5
    sub $f0                                       ; $54c0: $d6 $f0
    inc de                                        ; $54c2: $13
    add hl, sp                                    ; $54c3: $39
    ld sp, $4317                                  ; $54c4: $31 $17 $43
    inc b                                         ; $54c7: $04

jr_058_54c8:
    db $dd                                        ; $54c8: $dd
    ld a, [$5788]                                 ; $54c9: $fa $88 $57
    and e                                         ; $54cc: $a3
    add hl, hl                                    ; $54cd: $29
    and $f1                                       ; $54ce: $e6 $f1
    adc e                                         ; $54d0: $8b
    ei                                            ; $54d1: $fb
    ld d, e                                       ; $54d2: $53
    sbc $97                                       ; $54d3: $de $97
    ld d, b                                       ; $54d5: $50
    ld d, [hl]                                    ; $54d6: $56
    rst $18                                       ; $54d7: $df
    ld [hl], d                                    ; $54d8: $72
    inc l                                         ; $54d9: $2c
    ld e, [hl]                                    ; $54da: $5e
    ld c, d                                       ; $54db: $4a
    db $d3                                        ; $54dc: $d3
    ld l, e                                       ; $54dd: $6b
    ld [hl], h                                    ; $54de: $74
    xor [hl]                                      ; $54df: $ae
    or $24                                        ; $54e0: $f6 $24
    or b                                          ; $54e2: $b0
    ld d, e                                       ; $54e3: $53
    rst $28                                       ; $54e4: $ef
    sbc [hl]                                      ; $54e5: $9e
    ld l, h                                       ; $54e6: $6c
    add hl, de                                    ; $54e7: $19
    sbc l                                         ; $54e8: $9d
    adc e                                         ; $54e9: $8b
    db $dd                                        ; $54ea: $dd
    sbc d                                         ; $54eb: $9a
    ld l, e                                       ; $54ec: $6b
    jp z, $8f61                                   ; $54ed: $ca $61 $8f

    and a                                         ; $54f0: $a7
    call z, $bfa3                                 ; $54f1: $cc $a3 $bf
    sbc h                                         ; $54f4: $9c
    ld e, c                                       ; $54f5: $59
    ld h, $9a                                     ; $54f6: $26 $9a
    push bc                                       ; $54f8: $c5
    ld e, h                                       ; $54f9: $5c
    ld a, h                                       ; $54fa: $7c
    ld c, c                                       ; $54fb: $49
    call z, $fd38                                 ; $54fc: $cc $38 $fd
    push hl                                       ; $54ff: $e5
    sbc l                                         ; $5500: $9d
    ld c, [hl]                                    ; $5501: $4e
    sub [hl]                                      ; $5502: $96
    db $fd                                        ; $5503: $fd
    and l                                         ; $5504: $a5
    inc a                                         ; $5505: $3c
    call c, $b15c                                 ; $5506: $dc $5c $b1
    jp hl                                         ; $5509: $e9


    jp hl                                         ; $550a: $e9


    or h                                          ; $550b: $b4
    ld h, l                                       ; $550c: $65
    ld [hl], h                                    ; $550d: $74
    xor [hl]                                      ; $550e: $ae
    ld [hl], c                                    ; $550f: $71
    push hl                                       ; $5510: $e5
    sub $f0                                       ; $5511: $d6 $f0
    inc de                                        ; $5513: $13
    add hl, sp                                    ; $5514: $39
    ld sp, $4317                                  ; $5515: $31 $17 $43
    inc b                                         ; $5518: $04
    db $dd                                        ; $5519: $dd
    ld a, [$5788]                                 ; $551a: $fa $88 $57
    dec hl                                        ; $551d: $2b
    dec hl                                        ; $551e: $2b
    ld h, l                                       ; $551f: $65
    ld e, [hl]                                    ; $5520: $5e
    rst $28                                       ; $5521: $ef
    rst $10                                       ; $5522: $d7
    jr c, @-$35                                   ; $5523: $38 $c9

    push bc                                       ; $5525: $c5
    and e                                         ; $5526: $a3
    db $eb                                        ; $5527: $eb
    call $ba32                                    ; $5528: $cd $32 $ba
    inc [hl]                                      ; $552b: $34
    sub c                                         ; $552c: $91
    db $dd                                        ; $552d: $dd
    ld a, [hl]                                    ; $552e: $7e
    jr jr_058_54c8                                ; $552f: $18 $97

    ld a, [hl]                                    ; $5531: $7e
    adc [hl]                                      ; $5532: $8e
    db $db                                        ; $5533: $db
    dec c                                         ; $5534: $0d
    or e                                          ; $5535: $b3
    adc h                                         ; $5536: $8c
    ld l, [hl]                                    ; $5537: $6e
    rrca                                          ; $5538: $0f
    ld h, e                                       ; $5539: $63
    adc e                                         ; $553a: $8b
    ld a, [c]                                     ; $553b: $f2
    add sp, -$61                                  ; $553c: $e8 $9f
    sbc e                                         ; $553e: $9b
    sbc c                                         ; $553f: $99
    rla                                           ; $5540: $17
    sbc a                                         ; $5541: $9f
    ld a, h                                       ; $5542: $7c
    ld c, c                                       ; $5543: $49
    dec a                                         ; $5544: $3d
    nop                                           ; $5545: $00
    sbc d                                         ; $5546: $9a
    ret z                                         ; $5547: $c8

    and $65                                       ; $5548: $e6 $65
    inc a                                         ; $554a: $3c
    bit 0, h                                      ; $554b: $cb $44
    or e                                          ; $554d: $b3
    sbc b                                         ; $554e: $98
    adc e                                         ; $554f: $8b
    cpl                                           ; $5550: $2f
    adc c                                         ; $5551: $89
    add hl, de                                    ; $5552: $19
    and a                                         ; $5553: $a7
    cp a                                          ; $5554: $bf
    cp h                                          ; $5555: $bc
    db $d3                                        ; $5556: $d3
    ret                                           ; $5557: $c9


    or d                                          ; $5558: $b2
    cp a                                          ; $5559: $bf
    sub h                                         ; $555a: $94
    add a                                         ; $555b: $87
    sbc e                                         ; $555c: $9b
    dec hl                                        ; $555d: $2b
    ld [hl], $3d                                  ; $555e: $36 $3d
    sbc l                                         ; $5560: $9d
    or [hl]                                       ; $5561: $b6
    adc h                                         ; $5562: $8c
    adc $35                                       ; $5563: $ce $35
    xor [hl]                                      ; $5565: $ae
    call c, Call_058_7e1a                         ; $5566: $dc $1a $7e
    ld [hl+], a                                   ; $5569: $22
    daa                                           ; $556a: $27
    and $e2                                       ; $556b: $e6 $e2
    pop de                                        ; $556d: $d1
    cp $ae                                        ; $556e: $fe $ae
    add l                                         ; $5570: $85
    adc [hl]                                      ; $5571: $8e
    ld b, l                                       ; $5572: $45
    ld [hl-], a                                   ; $5573: $32
    sbc $89                                       ; $5574: $de $89
    cp c                                          ; $5576: $b9
    ld e, c                                       ; $5577: $59
    halt                                          ; $5578: $76
    ld [hl-], a                                   ; $5579: $32
    sbc [hl]                                      ; $557a: $9e
    ld h, l                                       ; $557b: $65
    daa                                           ; $557c: $27
    and $90                                       ; $557d: $e6 $90
    xor [hl]                                      ; $557f: $ae
    daa                                           ; $5580: $27
    ld [bc], a                                    ; $5581: $02
    ld de, $fadd                                  ; $5582: $11 $dd $fa
    jp nc, $957d                                  ; $5585: $d2 $7d $95

    ld l, e                                       ; $5588: $6b
    db $ed                                        ; $5589: $ed
    jp hl                                         ; $558a: $e9


    sub l                                         ; $558b: $95
    xor $ab                                       ; $558c: $ee $ab
    ld h, d                                       ; $558e: $62
    dec a                                         ; $558f: $3d
    add hl, sp                                    ; $5590: $39
    sub [hl]                                      ; $5591: $96
    sbc c                                         ; $5592: $99
    reti                                          ; $5593: $d9


    dec [hl]                                      ; $5594: $35
    ld l, d                                       ; $5595: $6a
    ld c, c                                       ; $5596: $49
    ld e, a                                       ; $5597: $5f
    push hl                                       ; $5598: $e5
    pop de                                        ; $5599: $d1
    ld l, $f5                                     ; $559a: $2e $f5
    jp $d5b0                                      ; $559c: $c3 $b0 $d5


    nop                                           ; $559f: $00
    dec d                                         ; $55a0: $15
    rst $20                                       ; $55a1: $e7
    sub [hl]                                      ; $55a2: $96
    jp $0e5f                                      ; $55a3: $c3 $5f $0e


    inc hl                                        ; $55a6: $23
    sbc $68                                       ; $55a7: $de $68
    adc d                                         ; $55a9: $8a
    ld a, c                                       ; $55aa: $79
    db $fc                                        ; $55ab: $fc
    db $db                                        ; $55ac: $db
    ld l, [hl]                                    ; $55ad: $6e
    ld l, e                                       ; $55ae: $6b
    ccf                                           ; $55af: $3f
    sbc [hl]                                      ; $55b0: $9e
    ld e, a                                       ; $55b1: $5f
    sub a                                         ; $55b2: $97
    ld h, h                                       ; $55b3: $64
    sub d                                         ; $55b4: $92
    inc a                                         ; $55b5: $3c
    or c                                          ; $55b6: $b1
    ld a, $cd                                     ; $55b7: $3e $cd
    ld d, $a7                                     ; $55b9: $16 $a7
    sbc $bd                                       ; $55bb: $de $bd
    ld h, c                                       ; $55bd: $61
    jp z, $d73c                                   ; $55be: $ca $3c $d7

    ld h, d                                       ; $55c1: $62
    add $d8                                       ; $55c2: $c6 $d8
    inc a                                         ; $55c4: $3c
    bit 0, h                                      ; $55c5: $cb $44
    or e                                          ; $55c7: $b3
    sbc b                                         ; $55c8: $98
    adc e                                         ; $55c9: $8b
    cpl                                           ; $55ca: $2f
    adc c                                         ; $55cb: $89
    add hl, de                                    ; $55cc: $19
    and a                                         ; $55cd: $a7
    cp a                                          ; $55ce: $bf
    cp h                                          ; $55cf: $bc
    db $d3                                        ; $55d0: $d3
    ret                                           ; $55d1: $c9


    or d                                          ; $55d2: $b2
    cp a                                          ; $55d3: $bf
    sub h                                         ; $55d4: $94
    add a                                         ; $55d5: $87
    sbc e                                         ; $55d6: $9b
    dec hl                                        ; $55d7: $2b
    ld [hl], $3d                                  ; $55d8: $36 $3d
    sbc l                                         ; $55da: $9d
    or [hl]                                       ; $55db: $b6
    adc h                                         ; $55dc: $8c
    adc $35                                       ; $55dd: $ce $35
    xor [hl]                                      ; $55df: $ae
    call c, Call_058_7e1a                         ; $55e0: $dc $1a $7e
    ld [hl+], a                                   ; $55e3: $22
    daa                                           ; $55e4: $27
    and $62                                       ; $55e5: $e6 $62
    adc b                                         ; $55e7: $88
    nop                                           ; $55e8: $00
    db $dd                                        ; $55e9: $dd
    ld a, [$5788]                                 ; $55ea: $fa $88 $57
    db $eb                                        ; $55ed: $eb
    ld d, d                                       ; $55ee: $52
    ld l, [hl]                                    ; $55ef: $6e
    cpl                                           ; $55f0: $2f
    ldh a, [$e8]                                  ; $55f1: $f0 $e8
    ld e, h                                       ; $55f3: $5c
    db $eb                                        ; $55f4: $eb
    dec l                                         ; $55f5: $2d
    cpl                                           ; $55f6: $2f
    ld e, c                                       ; $55f7: $59
    ld c, $a3                                     ; $55f8: $0e $a3
    ld [hl], l                                    ; $55fa: $75
    ld de, $d2f3                                  ; $55fb: $11 $f3 $d2
    add hl, sp                                    ; $55fe: $39
    ld e, d                                       ; $55ff: $5a
    halt                                          ; $5600: $76
    ld [hl-], a                                   ; $5601: $32
    ld e, [hl]                                    ; $5602: $5e
    cp d                                          ; $5603: $ba
    ld a, c                                       ; $5604: $79
    add a                                         ; $5605: $87
    dec sp                                        ; $5606: $3b
    ld d, h                                       ; $5607: $54
    inc sp                                        ; $5608: $33
    adc a                                         ; $5609: $8f
    xor [hl]                                      ; $560a: $ae
    or a                                          ; $560b: $b7
    db $f4                                        ; $560c: $f4
    ld c, a                                       ; $560d: $4f
    or a                                          ; $560e: $b7
    sbc a                                         ; $560f: $9f
    reti                                          ; $5610: $d9


    pop de                                        ; $5611: $d1
    sbc h                                         ; $5612: $9c
    ld a, d                                       ; $5613: $7a
    rst $30                                       ; $5614: $f7
    ld l, b                                       ; $5615: $68
    ld [$65b3], sp                                ; $5616: $08 $b3 $65
    add hl, de                                    ; $5619: $19
    rst $08                                       ; $561a: $cf
    ld [hl-], a                                   ; $561b: $32
    pop de                                        ; $561c: $d1
    inc l                                         ; $561d: $2c
    and $e2                                       ; $561e: $e6 $e2
    sbc b                                         ; $5620: $98
    ld [hl], c                                    ; $5621: $71
    ld a, [$3bcb]                                 ; $5622: $fa $cb $3b
    sbc l                                         ; $5625: $9d
    inc l                                         ; $5626: $2c
    ei                                            ; $5627: $fb
    ld c, e                                       ; $5628: $4b
    ld a, c                                       ; $5629: $79
    cp b                                          ; $562a: $b8
    cp c                                          ; $562b: $b9
    ld h, d                                       ; $562c: $62
    db $d3                                        ; $562d: $d3
    db $d3                                        ; $562e: $d3
    ld l, c                                       ; $562f: $69
    set 5, b                                      ; $5630: $cb $e8
    ld e, h                                       ; $5632: $5c
    db $e3                                        ; $5633: $e3
    jp z, $e1ad                                   ; $5634: $ca $ad $e1

    daa                                           ; $5637: $27
    ld [hl], d                                    ; $5638: $72
    ld h, d                                       ; $5639: $62
    ld l, $9e                                     ; $563a: $2e $9e
    ld l, e                                       ; $563c: $6b
    ld e, a                                       ; $563d: $5f
    ret c                                         ; $563e: $d8

    push hl                                       ; $563f: $e5
    ld [hl], e                                    ; $5640: $73
    sbc [hl]                                      ; $5641: $9e

Jump_058_5642:
    ldh a, [$9a]                                  ; $5642: $f0 $9a
    adc a                                         ; $5644: $8f
    ld a, h                                       ; $5645: $7c
    add hl, bc                                    ; $5646: $09
    db $10                                        ; $5647: $10
    ld bc, $fadd                                  ; $5648: $01 $dd $fa
    jp nc, $d7ed                                  ; $564b: $d2 $ed $d7

    ld [hl], d                                    ; $564e: $72
    ld a, [$a48c]                                 ; $564f: $fa $8c $a4
    ld h, $1a                                     ; $5652: $26 $1a
    rrca                                          ; $5654: $0f
    db $eb                                        ; $5655: $eb
    db $ed                                        ; $5656: $ed
    rlca                                          ; $5657: $07
    jp nz, $daec                                  ; $5658: $c2 $ec $da

    pop hl                                        ; $565b: $e1
    ld a, d                                       ; $565c: $7a
    pop af                                        ; $565d: $f1
    ld c, h                                       ; $565e: $4c
    jp hl                                         ; $565f: $e9


    ld [hl], e                                    ; $5660: $73
    adc l                                         ; $5661: $8d
    halt                                          ; $5662: $76
    xor c                                         ; $5663: $a9
    rra                                           ; $5664: $1f
    add [hl]                                      ; $5665: $86
    xor l                                         ; $5666: $ad
    sub [hl]                                      ; $5667: $96
    ld c, c                                       ; $5668: $49
    ld [hl-], a                                   ; $5669: $32
    cp h                                          ; $566a: $bc
    call nz, $b232                                ; $566b: $c4 $32 $b2
    ld [hl-], a                                   ; $566e: $32
    db $ed                                        ; $566f: $ed
    ld [hl], e                                    ; $5670: $73
    ld [hl], d                                    ; $5671: $72
    db $ed                                        ; $5672: $ed
    adc $7f                                       ; $5673: $ce $7f
    ret c                                         ; $5675: $d8

    dec bc                                        ; $5676: $0b
    ld l, a                                       ; $5677: $6f
    jp z, $f521                                   ; $5678: $ca $21 $f5

    ld d, d                                       ; $567b: $52
    db $f4                                        ; $567c: $f4
    ld a, b                                       ; $567d: $78
    ld a, h                                       ; $567e: $7c
    adc [hl]                                      ; $567f: $8e
    ld h, l                                       ; $5680: $65
    rlca                                          ; $5681: $07
    cp a                                          ; $5682: $bf
    add sp, -$66                                  ; $5683: $e8 $9a
    ld a, [c]                                     ; $5685: $f2
    pop hl                                        ; $5686: $e1
    cp h                                          ; $5687: $bc
    db $d3                                        ; $5688: $d3
    push bc                                       ; $5689: $c5
    ld l, $8f                                     ; $568a: $2e $8f
    adc $a5                                       ; $568c: $ce $a5
    cp $94                                        ; $568e: $fe $94
    ld a, c                                       ; $5690: $79
    xor [hl]                                      ; $5691: $ae
    push bc                                       ; $5692: $c5
    adc h                                         ; $5693: $8c
    or c                                          ; $5694: $b1
    ld a, c                                       ; $5695: $79
    sub [hl]                                      ; $5696: $96
    adc c                                         ; $5697: $89
    ld h, [hl]                                    ; $5698: $66
    ld sp, $5f17                                  ; $5699: $31 $17 $5f
    ld [de], a                                    ; $569c: $12
    inc sp                                        ; $569d: $33
    ld c, [hl]                                    ; $569e: $4e
    ld a, a                                       ; $569f: $7f
    ld a, c                                       ; $56a0: $79
    and a                                         ; $56a1: $a7
    sub e                                         ; $56a2: $93
    ld h, l                                       ; $56a3: $65
    ld a, a                                       ; $56a4: $7f
    add hl, hl                                    ; $56a5: $29
    rrca                                          ; $56a6: $0f
    scf                                           ; $56a7: $37
    ld d, a                                       ; $56a8: $57
    ld l, h                                       ; $56a9: $6c
    ld a, d                                       ; $56aa: $7a
    ld a, [hl-]                                   ; $56ab: $3a
    ld l, l                                       ; $56ac: $6d
    add hl, de                                    ; $56ad: $19
    sbc l                                         ; $56ae: $9d
    ld l, e                                       ; $56af: $6b
    ld e, h                                       ; $56b0: $5c
    cp c                                          ; $56b1: $b9
    dec [hl]                                      ; $56b2: $35
    db $fc                                        ; $56b3: $fc
    ld b, h                                       ; $56b4: $44
    ld c, [hl]                                    ; $56b5: $4e
    call z, $10c5                                 ; $56b6: $cc $c5 $10
    ld bc, $fadd                                  ; $56b9: $01 $dd $fa
    adc b                                         ; $56bc: $88
    ld d, a                                       ; $56bd: $57
    and e                                         ; $56be: $a3
    ld [hl], l                                    ; $56bf: $75
    ld de, $7ef3                                  ; $56c0: $11 $f3 $7e

Call_058_56c3:
    add sp, $58                                   ; $56c3: $e8 $58
    ld b, [hl]                                    ; $56c5: $46
    rst $20                                       ; $56c6: $e7
    ld a, [bc]                                    ; $56c7: $0a
    call $dfd8                                    ; $56c8: $cd $d8 $df
    ld [hl-], a                                   ; $56cb: $32
    cp $6d                                        ; $56cc: $fe $6d
    rst $30                                       ; $56ce: $f7
    db $fc                                        ; $56cf: $fc
    and [hl]                                      ; $56d0: $a6
    sbc a                                         ; $56d1: $9f
    call nc, Call_058_47bb                        ; $56d2: $d4 $bb $47
    ld b, e                                       ; $56d5: $43
    sbc b                                         ; $56d6: $98
    dec l                                         ; $56d7: $2d
    bit 7, b                                      ; $56d8: $cb $78
    sub [hl]                                      ; $56da: $96
    adc c                                         ; $56db: $89
    ld h, [hl]                                    ; $56dc: $66
    ld sp, $5f17                                  ; $56dd: $31 $17 $5f
    ld [de], a                                    ; $56e0: $12
    inc sp                                        ; $56e1: $33
    ld c, [hl]                                    ; $56e2: $4e
    ld a, a                                       ; $56e3: $7f
    ld a, c                                       ; $56e4: $79
    and a                                         ; $56e5: $a7
    sub e                                         ; $56e6: $93
    ld h, l                                       ; $56e7: $65
    ld a, a                                       ; $56e8: $7f
    add hl, hl                                    ; $56e9: $29
    rrca                                          ; $56ea: $0f
    scf                                           ; $56eb: $37
    ld d, a                                       ; $56ec: $57
    ld l, h                                       ; $56ed: $6c
    ld a, d                                       ; $56ee: $7a
    ld a, [hl-]                                   ; $56ef: $3a
    ld l, l                                       ; $56f0: $6d
    add hl, de                                    ; $56f1: $19
    sbc l                                         ; $56f2: $9d
    ld l, e                                       ; $56f3: $6b
    ld e, h                                       ; $56f4: $5c
    cp c                                          ; $56f5: $b9
    dec [hl]                                      ; $56f6: $35
    db $fc                                        ; $56f7: $fc
    ld b, h                                       ; $56f8: $44
    ld c, [hl]                                    ; $56f9: $4e
    call z, $a3c5                                 ; $56fa: $cc $c5 $a3
    sbc e                                         ; $56fd: $9b
    and [hl]                                      ; $56fe: $a6
    ld b, [hl]                                    ; $56ff: $46
    rst $10                                       ; $5700: $d7
    sbc e                                         ; $5701: $9b
    sbc e                                         ; $5702: $9b
    sub e                                         ; $5703: $93
    pop af                                        ; $5704: $f1
    ld l, a                                       ; $5705: $6f
    ld [hl], e                                    ; $5706: $73
    ld [hl], e                                    ; $5707: $73
    ld [bc], a                                    ; $5708: $02
    ld de, $51f7                                  ; $5709: $11 $f7 $51
    ld d, e                                       ; $570c: $53
    ld e, a                                       ; $570d: $5f
    inc a                                         ; $570e: $3c
    rst $00                                       ; $570f: $c7
    di                                            ; $5710: $f3
    or b                                          ; $5711: $b0
    push hl                                       ; $5712: $e5
    sub b                                         ; $5713: $90
    adc a                                         ; $5714: $8f
    db $fc                                        ; $5715: $fc
    push hl                                       ; $5716: $e5
    jp c, $aa61                                   ; $5717: $da $61 $aa

    and [hl]                                      ; $571a: $a6
    call z, Call_058_6a13                         ; $571b: $cc $13 $6a
    add hl, sp                                    ; $571e: $39
    inc e                                         ; $571f: $1c
    ld l, d                                       ; $5720: $6a
    adc a                                         ; $5721: $8f
    and a                                         ; $5722: $a7
    db $f4                                        ; $5723: $f4
    ld de, $96af                                  ; $5724: $11 $af $96
    or $61                                        ; $5727: $f6 $61
    adc d                                         ; $5729: $8a
    ld a, c                                       ; $572a: $79
    nop                                           ; $572b: $00
    ld c, e                                       ; $572c: $4b
    db $d3                                        ; $572d: $d3
    sbc d                                         ; $572e: $9a
    jp hl                                         ; $572f: $e9


    ld e, h                                       ; $5730: $5c
    cp b                                          ; $5731: $b8
    cp c                                          ; $5732: $b9
    ldh [$7a], a                                  ; $5733: $e0 $7a
    call c, $13bc                                 ; $5735: $dc $bc $13
    ld [hl], e                                    ; $5738: $73
    or e                                          ; $5739: $b3
    db $ec                                        ; $573a: $ec
    add sp, $18                                   ; $573b: $e8 $18
    cp e                                          ; $573d: $bb
    or $92                                        ; $573e: $f6 $92
    adc c                                         ; $5740: $89
    add [hl]                                      ; $5741: $86
    jr nc, jr_058_579f                            ; $5742: $30 $5b

    sub [hl]                                      ; $5744: $96
    pop af                                        ; $5745: $f1
    inc l                                         ; $5746: $2c
    inc de                                        ; $5747: $13
    call Call_000_2e62                            ; $5748: $cd $62 $2e
    cp [hl]                                       ; $574b: $be
    inc h                                         ; $574c: $24
    ld h, [hl]                                    ; $574d: $66
    sbc h                                         ; $574e: $9c
    cp $f2                                        ; $574f: $fe $f2
    ld c, [hl]                                    ; $5751: $4e
    daa                                           ; $5752: $27
    set 7, [hl]                                   ; $5753: $cb $fe
    ld d, d                                       ; $5755: $52
    ld e, $6e                                     ; $5756: $1e $6e
    xor [hl]                                      ; $5758: $ae
    ret c                                         ; $5759: $d8

    db $f4                                        ; $575a: $f4
    ld [hl], h                                    ; $575b: $74
    jp c, Jump_000_3a32                           ; $575c: $da $32 $3a

    rst $10                                       ; $575f: $d7
    cp b                                          ; $5760: $b8
    ld [hl], d                                    ; $5761: $72
    ld l, e                                       ; $5762: $6b
    ld hl, sp-$77                                 ; $5763: $f8 $89
    sbc h                                         ; $5765: $9c
    sbc b                                         ; $5766: $98
    adc e                                         ; $5767: $8b
    ld hl, $bd02                                  ; $5768: $21 $02 $bd
    db $eb                                        ; $576b: $eb
    or c                                          ; $576c: $b1
    sbc $5c                                       ; $576d: $de $5c
    ld l, $ed                                     ; $576f: $2e $ed
    sub h                                         ; $5771: $94
    ld a, $e2                                     ; $5772: $3e $e2
    push de                                       ; $5774: $d5
    ld [de], a                                    ; $5775: $12
    ld e, l                                       ; $5776: $5d
    call nz, Call_058_403c                        ; $5777: $c4 $3c $40
    and c                                         ; $577a: $a1
    cp c                                          ; $577b: $b9
    di                                            ; $577c: $f3
    ld [hl+], a                                   ; $577d: $22
    ld e, e                                       ; $577e: $5b
    ld d, d                                       ; $577f: $52
    rst $28                                       ; $5780: $ef
    ld e, $0d                                     ; $5781: $1e $0d
    ld h, c                                       ; $5783: $61
    or [hl]                                       ; $5784: $b6
    inc l                                         ; $5785: $2c
    db $e3                                        ; $5786: $e3
    dec a                                         ; $5787: $3d
    sbc [hl]                                      ; $5788: $9e
    ld [hl-], a                                   ; $5789: $32
    adc a                                         ; $578a: $8f
    cp $72                                        ; $578b: $fe $72
    ld h, [hl]                                    ; $578d: $66
    sbc c                                         ; $578e: $99
    ld l, b                                       ; $578f: $68
    ld d, $73                                     ; $5790: $16 $73
    pop af                                        ; $5792: $f1
    dec h                                         ; $5793: $25
    ld sp, $f4e3                                  ; $5794: $31 $e3 $f4
    sub a                                         ; $5797: $97
    ld [hl], a                                    ; $5798: $77
    ld a, [hl-]                                   ; $5799: $3a
    ld e, c                                       ; $579a: $59
    or $97                                        ; $579b: $f6 $97
    ld a, [c]                                     ; $579d: $f2
    ld [hl], b                                    ; $579e: $70

jr_058_579f:
    ld [hl], e                                    ; $579f: $73
    push bc                                       ; $57a0: $c5
    and [hl]                                      ; $57a1: $a6
    and a                                         ; $57a2: $a7
    db $d3                                        ; $57a3: $d3
    sub [hl]                                      ; $57a4: $96
    pop de                                        ; $57a5: $d1
    cp c                                          ; $57a6: $b9
    add $95                                       ; $57a7: $c6 $95
    ld e, e                                       ; $57a9: $5b
    jp $e44f                                      ; $57aa: $c3 $4f $e4


    call nz, Call_000_3c5c                        ; $57ad: $c4 $5c $3c
    sbc d                                         ; $57b0: $9a
    xor d                                         ; $57b1: $aa
    add hl, hl                                    ; $57b2: $29
    add a                                         ; $57b3: $87
    dec h                                         ; $57b4: $25
    cp a                                          ; $57b5: $bf
    and d                                         ; $57b6: $a2
    db $db                                        ; $57b7: $db
    rrca                                          ; $57b8: $0f
    db $e3                                        ; $57b9: $e3
    rst $18                                       ; $57ba: $df
    ld b, [hl]                                    ; $57bb: $46
    db $ed                                        ; $57bc: $ed
    ldh a, [$8f]                                  ; $57bd: $f0 $8f
    pop de                                        ; $57bf: $d1
    inc de                                        ; $57c0: $13
    sbc a                                         ; $57c1: $9f
    or a                                          ; $57c2: $b7
    cp a                                          ; $57c3: $bf
    inc de                                        ; $57c4: $13
    dec [hl]                                      ; $57c5: $35
    db $10                                        ; $57c6: $10
    ld bc, $fadd                                  ; $57c7: $01 $dd $fa
    ret c                                         ; $57ca: $d8

    ld [de], a                                    ; $57cb: $12
    ld e, l                                       ; $57cc: $5d
    res 1, c                                      ; $57cd: $cb $89
    ld l, e                                       ; $57cf: $6b
    jp z, $f3b2                                   ; $57d0: $ca $b2 $f3

    rrca                                          ; $57d3: $0f
    ld a, e                                       ; $57d4: $7b
    db $fc                                        ; $57d5: $fc
    push de                                       ; $57d6: $d5
    dec sp                                        ; $57d7: $3b
    ld c, e                                       ; $57d8: $4b
    dec sp                                        ; $57d9: $3b
    db $fc                                        ; $57da: $fc
    call nz, $9842                                ; $57db: $c4 $42 $98
    ld e, l                                       ; $57de: $5d
    jp c, $b509                                   ; $57df: $da $09 $b5

    sub e                                         ; $57e2: $93
    pop af                                        ; $57e3: $f1
    sub h                                         ; $57e4: $94
    ld a, $d7                                     ; $57e5: $3e $d7
    ld hl, sp-$49                                 ; $57e7: $f8 $b7
    db $f4                                        ; $57e9: $f4
    adc e                                         ; $57ea: $8b
    sbc $5f                                       ; $57eb: $de $5f
    rst $28                                       ; $57ed: $ef
    ld a, [$fd34]                                 ; $57ee: $fa $34 $fd
    dec h                                         ; $57f1: $25
    call z, $aecc                                 ; $57f2: $cc $cc $ae
    ld d, c                                       ; $57f5: $51
    inc hl                                        ; $57f6: $23
    sbc $8e                                       ; $57f7: $de $8e
    sbc c                                         ; $57f9: $99
    ld [hl], a                                    ; $57fa: $77
    ld c, b                                       ; $57fb: $48
    rst $38                                       ; $57fc: $ff
    ld h, [hl]                                    ; $57fd: $66
    sbc $dd                                       ; $57fe: $de $dd
    ld e, l                                       ; $5800: $5d
    and l                                         ; $5801: $a5
    ldh [$6e], a                                  ; $5802: $e0 $6e
    rst $38                                       ; $5804: $ff
    ld [hl], d                                    ; $5805: $72
    and [hl]                                      ; $5806: $a6
    call z, Call_058_4cb3                         ; $5807: $cc $b3 $4c
    inc [hl]                                      ; $580a: $34
    adc e                                         ; $580b: $8b
    cp c                                          ; $580c: $b9
    ld hl, sp-$6e                                 ; $580d: $f8 $92
    sbc b                                         ; $580f: $98
    ld [hl], c                                    ; $5810: $71
    ld a, [$3bcb]                                 ; $5811: $fa $cb $3b
    sbc l                                         ; $5814: $9d
    inc l                                         ; $5815: $2c
    ei                                            ; $5816: $fb
    ld c, e                                       ; $5817: $4b
    ld a, c                                       ; $5818: $79
    cp b                                          ; $5819: $b8
    cp c                                          ; $581a: $b9
    ld h, d                                       ; $581b: $62
    db $d3                                        ; $581c: $d3
    db $d3                                        ; $581d: $d3
    ld l, c                                       ; $581e: $69
    set 5, b                                      ; $581f: $cb $e8
    ld e, h                                       ; $5821: $5c
    db $e3                                        ; $5822: $e3
    jp z, $e1ad                                   ; $5823: $ca $ad $e1

    daa                                           ; $5826: $27
    ld [hl], d                                    ; $5827: $72
    ld h, d                                       ; $5828: $62
    ld l, $d6                                     ; $5829: $2e $d6
    adc $ad                                       ; $582b: $ce $ad
    cp c                                          ; $582d: $b9
    sub [hl]                                      ; $582e: $96
    cp h                                          ; $582f: $bc
    sbc d                                         ; $5830: $9a
    ld [hl-], a                                   ; $5831: $32
    cpl                                           ; $5832: $2f
    db $fd                                        ; $5833: $fd
    jp z, $ec93                                   ; $5834: $ca $93 $ec

    add hl, hl                                    ; $5837: $29
    ld a, l                                       ; $5838: $7d
    xor d                                         ; $5839: $aa
    cp d                                          ; $583a: $ba
    jr nc, @-$43                                  ; $583b: $30 $bb

    rla                                           ; $583d: $17
    ld [bc], a                                    ; $583e: $02
    db $dd                                        ; $583f: $dd
    ld a, [$8b5c]                                 ; $5840: $fa $5c $8b
    add hl, de                                    ; $5843: $19
    ld h, e                                       ; $5844: $63
    di                                            ; $5845: $f3
    ld hl, sp-$49                                 ; $5846: $f8 $b7
    db $f4                                        ; $5848: $f4
    adc e                                         ; $5849: $8b
    ld e, $ff                                     ; $584a: $1e $ff
    or [hl]                                       ; $584c: $b6
    sbc $a5                                       ; $584d: $de $a5
    and c                                         ; $584f: $a1
    jp hl                                         ; $5850: $e9


    cpl                                           ; $5851: $2f
    ld a, [hl+]                                   ; $5852: $2a
    rst $10                                       ; $5853: $d7
    add sp, $7a                                   ; $5854: $e8 $7a
    jp $c95f                                      ; $5856: $c3 $5f $c9


    ld h, e                                       ; $5859: $63
    ld a, $4a                                     ; $585a: $3e $4a
    ld [hl], a                                    ; $585c: $77
    ld l, e                                       ; $585d: $6b
    ld d, $b8                                     ; $585e: $16 $b8
    push af                                       ; $5860: $f5
    ld a, [hl]                                    ; $5861: $7e
    adc l                                         ; $5862: $8d
    sub e                                         ; $5863: $93
    ld e, h                                       ; $5864: $5c
    ld a, h                                       ; $5865: $7c
    ld b, [hl]                                    ; $5866: $46
    cp h                                          ; $5867: $bc
    sub $5c                                       ; $5868: $d6 $5c
    ld c, e                                       ; $586a: $4b
    ld a, [hl]                                    ; $586b: $7e
    ld b, l                                       ; $586c: $45
    rst $10                                       ; $586d: $d7
    ld a, [hl]                                    ; $586e: $7e
    adc h                                         ; $586f: $8c
    ld e, $ad                                     ; $5870: $1e $ad
    or a                                          ; $5872: $b7
    add $3b                                       ; $5873: $c6 $3b
    call nc, Call_058_725e                        ; $5875: $d4 $5e $72
    ld h, d                                       ; $5878: $62
    add hl, sp                                    ; $5879: $39
    ld b, [hl]                                    ; $587a: $46
    adc e                                         ; $587b: $8b
    ld a, [c]                                     ; $587c: $f2
    ld [hl-], a                                   ; $587d: $32
    sbc [hl]                                      ; $587e: $9e
    inc a                                         ; $587f: $3c
    ld h, [hl]                                    ; $5880: $66
    res 0, h                                      ; $5881: $cb $84
    add d                                         ; $5883: $82
    ld [$fadd], sp                                ; $5884: $08 $dd $fa
    adc b                                         ; $5887: $88
    ld d, a                                       ; $5888: $57
    ld c, e                                       ; $5889: $4b
    ei                                            ; $588a: $fb
    ld hl, sp-$69                                 ; $588b: $f8 $97
    ld a, c                                       ; $588d: $79
    ld e, h                                       ; $588e: $5c
    cp c                                          ; $588f: $b9
    dec [hl]                                      ; $5890: $35
    di                                            ; $5891: $f3
    ld [hl], d                                    ; $5892: $72
    ld e, b                                       ; $5893: $58
    ld e, c                                       ; $5894: $59
    add hl, hl                                    ; $5895: $29
    di                                            ; $5896: $f3
    ld a, d                                       ; $5897: $7a
    ld e, h                                       ; $5898: $5c
    ld hl, sp-$75                                 ; $5899: $f8 $8b
    ld d, e                                       ; $589b: $53
    xor a                                         ; $589c: $af
    ld e, e                                       ; $589d: $5b
    rst $18                                       ; $589e: $df
    pop de                                        ; $589f: $d1
    ret z                                         ; $58a0: $c8

    sbc c                                         ; $58a1: $99
    add e                                         ; $58a2: $83
    add l                                         ; $58a3: $85
    db $db                                        ; $58a4: $db
    rrca                                          ; $58a5: $0f
    ld a, e                                       ; $58a6: $7b
    inc a                                         ; $58a7: $3c
    ld h, l                                       ; $58a8: $65
    sbc c                                         ; $58a9: $99
    ld l, b                                       ; $58aa: $68
    cp h                                          ; $58ab: $bc
    sbc b                                         ; $58ac: $98
    adc e                                         ; $58ad: $8b
    cpl                                           ; $58ae: $2f
    adc c                                         ; $58af: $89
    add hl, de                                    ; $58b0: $19
    and a                                         ; $58b1: $a7
    cp a                                          ; $58b2: $bf
    cp h                                          ; $58b3: $bc
    db $d3                                        ; $58b4: $d3
    ret                                           ; $58b5: $c9


    ld h, d                                       ; $58b6: $62
    reti                                          ; $58b7: $d9


    ld e, a                                       ; $58b8: $5f
    jp z, $cdc3                                   ; $58b9: $ca $c3 $cd

    dec d                                         ; $58bc: $15
    sbc e                                         ; $58bd: $9b
    sbc [hl]                                      ; $58be: $9e
    ld c, [hl]                                    ; $58bf: $4e
    ld e, e                                       ; $58c0: $5b
    ld b, [hl]                                    ; $58c1: $46
    rst $20                                       ; $58c2: $e7
    ld a, [de]                                    ; $58c3: $1a
    ld d, a                                       ; $58c4: $57
    ld l, [hl]                                    ; $58c5: $6e
    dec c                                         ; $58c6: $0d
    ccf                                           ; $58c7: $3f
    sub c                                         ; $58c8: $91
    inc de                                        ; $58c9: $13
    ld [hl], e                                    ; $58ca: $73
    pop af                                        ; $58cb: $f1
    ld e, h                                       ; $58cc: $5c
    or e                                          ; $58cd: $b3
    xor h                                         ; $58ce: $ac
    call z, $bb4c                                 ; $58cf: $cc $4c $bb
    call nc, Call_058_4b0f                        ; $58d2: $d4 $0f $4b
    cp e                                          ; $58d5: $bb
    ld [hl], l                                    ; $58d6: $75
    adc c                                         ; $58d7: $89
    ld a, h                                       ; $58d8: $7c
    add hl, bc                                    ; $58d9: $09
    and e                                         ; $58da: $a3
    ld [hl], e                                    ; $58db: $73
    ld c, l                                       ; $58dc: $4d
    ld a, l                                       ; $58dd: $7d
    and $11                                       ; $58de: $e6 $11
    ld l, [hl]                                    ; $58e0: $6e
    ld l, h                                       ; $58e1: $6c
    sbc h                                         ; $58e2: $9c
    add hl, de                                    ; $58e3: $19
    ld [hl+], a                                   ; $58e4: $22
    db $dd                                        ; $58e5: $dd
    ld a, [$5788]                                 ; $58e6: $fa $88 $57
    and e                                         ; $58e9: $a3
    add hl, hl                                    ; $58ea: $29
    and $fd                                       ; $58eb: $e6 $fd
    ret nc                                        ; $58ed: $d0

    or c                                          ; $58ee: $b1
    xor h                                         ; $58ef: $ac
    and e                                         ; $58f0: $a3
    scf                                           ; $58f1: $37
    add a                                         ; $58f2: $87
    sub a                                         ; $58f3: $97
    ld e, b                                       ; $58f4: $58
    inc a                                         ; $58f5: $3c
    push af                                       ; $58f6: $f5
    push bc                                       ; $58f7: $c5
    xor c                                         ; $58f8: $a9
    ld [hl], a                                    ; $58f9: $77
    ld e, a                                       ; $58fa: $5f
    add hl, sp                                    ; $58fb: $39
    sbc b                                         ; $58fc: $98
    rst $30                                       ; $58fd: $f7
    sub d                                         ; $58fe: $92
    ld de, $1a5d                                  ; $58ff: $11 $5d $1a
    cp $ea                                        ; $5902: $fe $ea
    sbc l                                         ; $5904: $9d
    add l                                         ; $5905: $85
    sub a                                         ; $5906: $97
    ldh [$df], a                                  ; $5907: $e0 $df
    sub h                                         ; $5909: $94
    ld b, a                                       ; $590a: $47
    adc c                                         ; $590b: $89
    ld a, [de]                                    ; $590c: $1a
    pop af                                        ; $590d: $f1
    ld l, d                                       ; $590e: $6a
    add hl, hl                                    ; $590f: $29
    rrca                                          ; $5910: $0f
    scf                                           ; $5911: $37
    ld d, a                                       ; $5912: $57
    ld l, h                                       ; $5913: $6c
    ld a, d                                       ; $5914: $7a
    ld a, [hl-]                                   ; $5915: $3a
    ld l, l                                       ; $5916: $6d
    add hl, de                                    ; $5917: $19
    sbc l                                         ; $5918: $9d
    ld l, e                                       ; $5919: $6b
    ld e, h                                       ; $591a: $5c
    cp c                                          ; $591b: $b9
    dec [hl]                                      ; $591c: $35
    db $fc                                        ; $591d: $fc
    ld b, h                                       ; $591e: $44
    ld c, [hl]                                    ; $591f: $4e
    call z, $8bc5                                 ; $5920: $cc $c5 $8b
    add hl, de                                    ; $5923: $19
    ld h, e                                       ; $5924: $63
    di                                            ; $5925: $f3
    or b                                          ; $5926: $b0
    push de                                       ; $5927: $d5
    inc l                                         ; $5928: $2c
    inc de                                        ; $5929: $13
    call Call_000_2e62                            ; $592a: $cd $62 $2e
    cp [hl]                                       ; $592d: $be
    inc h                                         ; $592e: $24
    ld h, [hl]                                    ; $592f: $66
    sbc h                                         ; $5930: $9c
    cp $f2                                        ; $5931: $fe $f2
    ld c, [hl]                                    ; $5933: $4e
    daa                                           ; $5934: $27
    dec bc                                        ; $5935: $0b
    ld b, h                                       ; $5936: $44
    db $dd                                        ; $5937: $dd
    ld a, [$27e8]                                 ; $5938: $fa $e8 $27
    pop bc                                        ; $593b: $c1
    cp h                                          ; $593c: $bc
    xor b                                         ; $593d: $a8
    ld l, c                                       ; $593e: $69
    db $ed                                        ; $593f: $ed
    ld c, e                                       ; $5940: $4b
    ld [hl], b                                    ; $5941: $70
    adc l                                         ; $5942: $8d
    ld a, a                                       ; $5943: $7f
    ld e, e                                       ; $5944: $5b
    ld l, a                                       ; $5945: $6f
    ld c, l                                       ; $5946: $4d
    xor b                                         ; $5947: $a8
    xor a                                         ; $5948: $af
    adc $4e                                       ; $5949: $ce $4e
    db $ec                                        ; $594b: $ec
    cp b                                          ; $594c: $b8
    dec [hl]                                      ; $594d: $35
    or e                                          ; $594e: $b3
    or l                                          ; $594f: $b5

jr_058_5950:
    inc de                                        ; $5950: $13
    adc l                                         ; $5951: $8d
    sub a                                         ; $5952: $97
    ld e, b                                       ; $5953: $58
    ld h, h                                       ; $5954: $64
    rst $30                                       ; $5955: $f7
    db $e4                                        ; $5956: $e4
    ld c, d                                       ; $5957: $4a
    cp e                                          ; $5958: $bb
    jr c, jr_058_5950                             ; $5959: $38 $f5

    ld a, d                                       ; $595b: $7a
    call c, $fc78                                 ; $595c: $dc $78 $fc
    dec de                                        ; $595f: $1b
    db $ed                                        ; $5960: $ed
    and [hl]                                      ; $5961: $a6
    ld a, [hl]                                    ; $5962: $7e
    ld c, b                                       ; $5963: $48
    cp $19                                        ; $5964: $fe $19
    db $fd                                        ; $5966: $fd
    push hl                                       ; $5967: $e5
    ld c, h                                       ; $5968: $4c
    sbc c                                         ; $5969: $99
    daa                                           ; $596a: $27
    call nc, Call_000_132c                        ; $596b: $d4 $2c $13
    call Call_000_2e62                            ; $596e: $cd $62 $2e
    cp [hl]                                       ; $5971: $be
    inc h                                         ; $5972: $24
    ld h, [hl]                                    ; $5973: $66

jr_058_5974:
    sbc h                                         ; $5974: $9c
    cp $f2                                        ; $5975: $fe $f2
    ld c, [hl]                                    ; $5977: $4e
    daa                                           ; $5978: $27
    set 7, [hl]                                   ; $5979: $cb $fe
    ld d, d                                       ; $597b: $52
    ld e, $6e                                     ; $597c: $1e $6e
    xor [hl]                                      ; $597e: $ae
    ret c                                         ; $597f: $d8

    db $f4                                        ; $5980: $f4
    ld [hl], h                                    ; $5981: $74
    jp c, Jump_000_3a32                           ; $5982: $da $32 $3a

    rst $10                                       ; $5985: $d7
    cp b                                          ; $5986: $b8
    ld [hl], d                                    ; $5987: $72
    ld l, e                                       ; $5988: $6b
    ld hl, sp-$77                                 ; $5989: $f8 $89
    sbc h                                         ; $598b: $9c
    sbc b                                         ; $598c: $98
    adc e                                         ; $598d: $8b
    ld hl, $dd02                                  ; $598e: $21 $02 $dd
    ld a, [$5788]                                 ; $5991: $fa $88 $57
    and e                                         ; $5994: $a3
    sbc a                                         ; $5995: $9f
    inc b                                         ; $5996: $04
    di                                            ; $5997: $f3
    xor $c9                                       ; $5998: $ee $c9
    sub l                                         ; $599a: $95
    halt                                          ; $599b: $76
    pop af                                        ; $599c: $f1
    ld [hl], d                                    ; $599d: $72
    ld e, b                                       ; $599e: $58
    ld e, c                                       ; $599f: $59
    add hl, hl                                    ; $59a0: $29
    di                                            ; $59a1: $f3
    ld a, d                                       ; $59a2: $7a
    ld l, e                                       ; $59a3: $6b
    ld b, d                                       ; $59a4: $42
    ld a, l                                       ; $59a5: $7d
    dec [hl]                                      ; $59a6: $35
    cp d                                          ; $59a7: $ba
    sbc $2c                                       ; $59a8: $de $2c
    jp Jump_000_1cef                              ; $59aa: $c3 $ef $1c


    cpl                                           ; $59ad: $2f
    ld e, l                                       ; $59ae: $5d
    ld d, h                                       ; $59af: $54
    add h                                         ; $59b0: $84
    db $eb                                        ; $59b1: $eb
    ld [hl], $b3                                  ; $59b2: $36 $b3
    rst $20                                       ; $59b4: $e7
    ld a, [de]                                    ; $59b5: $1a
    pop hl                                        ; $59b6: $e1
    add $d3                                       ; $59b7: $c6 $d3
    reti                                          ; $59b9: $d9


    or d                                          ; $59ba: $b2
    di                                            ; $59bb: $f3
    jr nc, jr_058_5974                            ; $59bc: $30 $b6

    db $10                                        ; $59be: $10
    sub [hl]                                      ; $59bf: $96
    jr nc, jr_058_5a2e                            ; $59c0: $30 $6c

    or l                                          ; $59c2: $b5
    rst $00                                       ; $59c3: $c7
    ld d, e                                       ; $59c4: $53
    and $b9                                       ; $59c5: $e6 $b9
    ld d, $33                                     ; $59c7: $16 $33
    add $e6                                       ; $59c9: $c6 $e6
    ld e, c                                       ; $59cb: $59
    ld h, $9a                                     ; $59cc: $26 $9a
    push bc                                       ; $59ce: $c5
    ld e, h                                       ; $59cf: $5c
    ld a, h                                       ; $59d0: $7c
    ld c, c                                       ; $59d1: $49
    call z, $fd38                                 ; $59d2: $cc $38 $fd
    push hl                                       ; $59d5: $e5
    sbc l                                         ; $59d6: $9d
    ld c, [hl]                                    ; $59d7: $4e
    sub [hl]                                      ; $59d8: $96
    db $fd                                        ; $59d9: $fd
    and l                                         ; $59da: $a5
    inc a                                         ; $59db: $3c
    call c, $b15c                                 ; $59dc: $dc $5c $b1
    jp hl                                         ; $59df: $e9


    jp hl                                         ; $59e0: $e9


    or h                                          ; $59e1: $b4
    ld h, l                                       ; $59e2: $65
    ld [hl], h                                    ; $59e3: $74
    xor [hl]                                      ; $59e4: $ae
    ld [hl], c                                    ; $59e5: $71
    push hl                                       ; $59e6: $e5
    sub $f0                                       ; $59e7: $d6 $f0
    inc de                                        ; $59e9: $13
    add hl, sp                                    ; $59ea: $39
    ld sp, $4317                                  ; $59eb: $31 $17 $43
    inc b                                         ; $59ee: $04
    db $dd                                        ; $59ef: $dd
    ld a, [$5788]                                 ; $59f0: $fa $88 $57
    adc e                                         ; $59f3: $8b
    add hl, de                                    ; $59f4: $19
    ld h, e                                       ; $59f5: $63
    di                                            ; $59f6: $f3
    ld [$5e37], sp                                ; $59f7: $08 $37 $5e
    ld h, $c9                                     ; $59fa: $26 $c9
    db $fd                                        ; $59fc: $fd
    ld sp, $6255                                  ; $59fd: $31 $55 $62
    ld e, $b6                                     ; $5a00: $1e $b6
    jp c, $b93d                                   ; $5a02: $da $3d $b9

    jp nc, Jump_058_5e2e                          ; $5a05: $d2 $2e $5e

    ld c, $eb                                     ; $5a08: $0e $eb
    sub d                                         ; $5a0a: $92
    inc de                                        ; $5a0b: $13
    call Call_000_1e23                            ; $5a0c: $cd $23 $1e
    ld e, [hl]                                    ; $5a0f: $5e
    ret z                                         ; $5a10: $c8

    ld l, d                                       ; $5a11: $6a
    push hl                                       ; $5a12: $e5
    ld a, a                                       ; $5a13: $7f
    sbc h                                         ; $5a14: $9c
    ld a, d                                       ; $5a15: $7a
    db $dd                                        ; $5a16: $dd
    and $b9                                       ; $5a17: $e6 $b9
    ld h, [hl]                                    ; $5a19: $66
    ld e, c                                       ; $5a1a: $59
    inc sp                                        ; $5a1b: $33
    or e                                          ; $5a1c: $b3
    db $db                                        ; $5a1d: $db
    pop af                                        ; $5a1e: $f1
    xor b                                         ; $5a1f: $a8
    ld de, $89fa                                  ; $5a20: $11 $fa $89
    ld e, $49                                     ; $5a23: $1e $49
    db $ed                                        ; $5a25: $ed
    pop af                                        ; $5a26: $f1
    sub h                                         ; $5a27: $94
    ld a, c                                       ; $5a28: $79
    ld sp, $ec63                                  ; $5a29: $31 $63 $ec
    sbc d                                         ; $5a2c: $9a
    ld h, l                                       ; $5a2d: $65

jr_058_5a2e:
    and d                                         ; $5a2e: $a2
    ld e, c                                       ; $5a2f: $59
    call z, $97c5                                 ; $5a30: $cc $c5 $97
    call nz, $d38c                                ; $5a33: $c4 $8c $d3
    ld e, a                                       ; $5a36: $5f
    sbc $e9                                       ; $5a37: $de $e9
    ld h, h                                       ; $5a39: $64
    reti                                          ; $5a3a: $d9


    ld e, a                                       ; $5a3b: $5f
    jp z, $cdc3                                   ; $5a3c: $ca $c3 $cd

    dec d                                         ; $5a3f: $15
    sbc e                                         ; $5a40: $9b
    sbc [hl]                                      ; $5a41: $9e
    ld c, [hl]                                    ; $5a42: $4e
    ld e, e                                       ; $5a43: $5b
    ld b, [hl]                                    ; $5a44: $46
    rst $20                                       ; $5a45: $e7
    ld a, [de]                                    ; $5a46: $1a
    ld d, a                                       ; $5a47: $57
    ld l, [hl]                                    ; $5a48: $6e
    dec c                                         ; $5a49: $0d
    ccf                                           ; $5a4a: $3f
    sub c                                         ; $5a4b: $91
    inc de                                        ; $5a4c: $13
    ld [hl], e                                    ; $5a4d: $73
    pop af                                        ; $5a4e: $f1
    cp $70                                        ; $5a4f: $fe $70
    xor [hl]                                      ; $5a51: $ae
    ld h, b                                       ; $5a52: $60
    add hl, de                                    ; $5a53: $19
    ld a, a                                       ; $5a54: $7f
    push de                                       ; $5a55: $d5
    ld a, [hl]                                    ; $5a56: $7e
    add b                                         ; $5a57: $80
    ld [$fadd], sp                                ; $5a58: $08 $dd $fa
    adc b                                         ; $5a5b: $88
    ld d, a                                       ; $5a5c: $57
    res 1, c                                      ; $5a5d: $cb $89
    xor e                                         ; $5a5f: $ab
    add hl, sp                                    ; $5a60: $39
    ld d, c                                       ; $5a61: $51
    db $eb                                        ; $5a62: $eb
    or [hl]                                       ; $5a63: $b6
    adc h                                         ; $5a64: $8c
    adc $95                                       ; $5a65: $ce $95
    sub $15                                       ; $5a67: $d6 $15
    ld a, e                                       ; $5a69: $7b
    daa                                           ; $5a6a: $27
    and $b0                                       ; $5a6b: $e6 $b0
    inc e                                         ; $5a6d: $1c
    ld b, [hl]                                    ; $5a6e: $46
    db $eb                                        ; $5a6f: $eb
    ld [hl+], a                                   ; $5a70: $22
    and $29                                       ; $5a71: $e6 $29
    rrc [hl]                                      ; $5a73: $cb $0e
    ld d, l                                       ; $5a75: $55
    ld d, [hl]                                    ; $5a76: $56
    sbc [hl]                                      ; $5a77: $9e
    add l                                         ; $5a78: $85
    add sp, $74                                   ; $5a79: $e8 $74
    sub l                                         ; $5a7b: $95
    ld a, h                                       ; $5a7c: $7c
    add hl, bc                                    ; $5a7d: $09
    sub [hl]                                      ; $5a7e: $96
    call nc, Call_000_37bb                        ; $5a7f: $d4 $bb $37
    inc l                                         ; $5a82: $2c
    push hl                                       ; $5a83: $e5
    pop hl                                        ; $5a84: $e1
    and $8a                                       ; $5a85: $e6 $8a
    ld c, l                                       ; $5a87: $4d
    ld c, a                                       ; $5a88: $4f
    and a                                         ; $5a89: $a7
    dec l                                         ; $5a8a: $2d
    and e                                         ; $5a8b: $a3
    ld [hl], e                                    ; $5a8c: $73
    adc l                                         ; $5a8d: $8d
    dec hl                                        ; $5a8e: $2b
    or a                                          ; $5a8f: $b7
    add [hl]                                      ; $5a90: $86
    sbc a                                         ; $5a91: $9f
    ret z                                         ; $5a92: $c8

    adc c                                         ; $5a93: $89
    cp c                                          ; $5a94: $b9
    ld a, b                                       ; $5a95: $78
    call nz, Call_058_45ab                        ; $5a96: $c4 $ab $45
    ld e, l                                       ; $5a99: $5d
    inc h                                         ; $5a9a: $24
    ld [hl], h                                    ; $5a9b: $74
    ld [hl], d                                    ; $5a9c: $72
    pop af                                        ; $5a9d: $f1
    ld e, $4f                                     ; $5a9e: $1e $4f
    sbc c                                         ; $5aa0: $99
    rst $20                                       ; $5aa1: $e7
    ld e, d                                       ; $5aa2: $5a
    call z, $9b18                                 ; $5aa3: $cc $18 $9b
    ld h, a                                       ; $5aa6: $67
    sbc c                                         ; $5aa7: $99
    ld l, b                                       ; $5aa8: $68
    ld d, $73                                     ; $5aa9: $16 $73
    pop af                                        ; $5aab: $f1
    dec h                                         ; $5aac: $25
    ld sp, $f4e3                                  ; $5aad: $31 $e3 $f4
    sub a                                         ; $5ab0: $97
    ld [hl], a                                    ; $5ab1: $77
    ld a, [hl-]                                   ; $5ab2: $3a
    ld e, c                                       ; $5ab3: $59
    jr nz, jr_058_5ab8                            ; $5ab4: $20 $02

    cp l                                          ; $5ab6: $bd
    db $eb                                        ; $5ab7: $eb

jr_058_5ab8:
    db $d3                                        ; $5ab8: $d3
    db $f4                                        ; $5ab9: $f4
    sub a                                         ; $5aba: $97
    jr nc, @-$1c                                  ; $5abb: $30 $e2

    push de                                       ; $5abd: $d5
    ld [de], a                                    ; $5abe: $12
    ld e, l                                       ; $5abf: $5d
    call nz, Call_058_423c                        ; $5ac0: $c4 $3c $42
    ccf                                           ; $5ac3: $3f
    ld h, h                                       ; $5ac4: $64
    adc [hl]                                      ; $5ac5: $8e
    xor a                                         ; $5ac6: $af
    ld e, c                                       ; $5ac7: $59
    ld d, d                                       ; $5ac8: $52
    cpl                                           ; $5ac9: $2f
    dec b                                         ; $5aca: $05
    ld l, e                                       ; $5acb: $6b
    jp nz, Jump_058_752b                          ; $5acc: $c2 $2b $75

    sub $ac                                       ; $5acf: $d6 $ac
    call c, $e78e                                 ; $5ad1: $dc $8e $e7
    sbc d                                         ; $5ad4: $9a
    ld b, l                                       ; $5ad5: $45
    cp c                                          ; $5ad6: $b9
    db $fd                                        ; $5ad7: $fd
    or b                                          ; $5ad8: $b0
    ld [hl], h                                    ; $5ad9: $74
    jp hl                                         ; $5ada: $e9


    call z, $d7a9                                 ; $5adb: $cc $a9 $d7
    and e                                         ; $5ade: $a3
    db $e3                                        ; $5adf: $e3
    and $23                                       ; $5ae0: $e6 $23
    ld a, d                                       ; $5ae2: $7a
    push de                                       ; $5ae3: $d5
    jp nz, Jump_000_29af                          ; $5ae4: $c2 $af $29

    add a                                         ; $5ae7: $87
    add hl, hl                                    ; $5ae8: $29
    di                                            ; $5ae9: $f3
    jp nc, $ec3e                                  ; $5aea: $d2 $3e $ec

    db $dd                                        ; $5aed: $dd
    ld [c], a                                     ; $5aee: $e2
    ld [$ecc2], a                                 ; $5aef: $ea $c2 $ec
    ld de, $c78e                                  ; $5af2: $11 $8e $c7
    or l                                          ; $5af5: $b5
    inc e                                         ; $5af6: $1c
    add $95                                       ; $5af7: $c6 $95
    ld e, e                                       ; $5af9: $5b
    jp $b916                                      ; $5afa: $c3 $16 $b9


    inc h                                         ; $5afd: $24
    and $62                                       ; $5afe: $e6 $62
    di                                            ; $5b00: $f3
    ld e, [hl]                                    ; $5b01: $5e
    or d                                          ; $5b02: $b2
    rst $10                                       ; $5b03: $d7
    sbc d                                         ; $5b04: $9a
    ld hl, $eb84                                  ; $5b05: $21 $84 $eb
    ld a, c                                       ; $5b08: $79
    ld d, l                                       ; $5b09: $55
    sbc d                                         ; $5b0a: $9a
    db $dd                                        ; $5b0b: $dd
    sub a                                         ; $5b0c: $97
    sbc c                                         ; $5b0d: $99
    ld e, l                                       ; $5b0e: $5d
    sub a                                         ; $5b0f: $97
    call nz, Call_058_6c5c                        ; $5b10: $c4 $5c $6c
    ld c, [hl]                                    ; $5b13: $4e

Jump_058_5b14:
    adc l                                         ; $5b14: $8d
    nop                                           ; $5b15: $00
    db $dd                                        ; $5b16: $dd
    ld a, [$5788]                                 ; $5b17: $fa $88 $57
    and e                                         ; $5b1a: $a3
    ld [hl], l                                    ; $5b1b: $75
    ld de, $7af3                                  ; $5b1c: $11 $f3 $7a
    sub a                                         ; $5b1f: $97
    add [hl]                                      ; $5b20: $86
    and [hl]                                      ; $5b21: $a6
    cp a                                          ; $5b22: $bf
    xor b                                         ; $5b23: $a8
    ld e, h                                       ; $5b24: $5c
    jp c, $cfa9                                   ; $5b25: $da $a9 $cf

    inc a                                         ; $5b28: $3c
    ld b, d                                       ; $5b29: $42
    ccf                                           ; $5b2a: $3f
    ei                                            ; $5b2b: $fb
    db $eb                                        ; $5b2c: $eb
    db $fd                                        ; $5b2d: $fd
    ld a, [de]                                    ; $5b2e: $1a
    daa                                           ; $5b2f: $27
    cp c                                          ; $5b30: $b9
    ld e, b                                       ; $5b31: $58
    dec sp                                        ; $5b32: $3b
    ld [hl+], a                                   ; $5b33: $22
    ret                                           ; $5b34: $c9


    dec [hl]                                      ; $5b35: $35
    and l                                         ; $5b36: $a5
    rst $28                                       ; $5b37: $ef
    call nz, $96d7                                ; $5b38: $c4 $d7 $96
    adc $cb                                       ; $5b3b: $ce $cb
    ld h, c                                       ; $5b3d: $61
    add a                                         ; $5b3e: $87
    ld [hl], l                                    ; $5b3f: $75
    push hl                                       ; $5b40: $e5
    ld [hl], d                                    ; $5b41: $72
    ld [$9edd], a                                 ; $5b42: $ea $dd $9e
    ld l, e                                       ; $5b45: $6b
    adc a                                         ; $5b46: $8f
    rst $30                                       ; $5b47: $f7
    ld e, d                                       ; $5b48: $5a
    di                                            ; $5b49: $f3
    ld c, [hl]                                    ; $5b4a: $4e
    ld a, h                                       ; $5b4b: $7c
    ld l, l                                       ; $5b4c: $6d
    ld [hl], h                                    ; $5b4d: $74
    ld d, a                                       ; $5b4e: $57
    di                                            ; $5b4f: $f3
    adc [hl]                                      ; $5b50: $8e
    jp $8e88                                      ; $5b51: $c3 $88 $8e


    ld sp, $5cf6                                  ; $5b54: $31 $f6 $5c
    ld d, e                                       ; $5b57: $53
    and $09                                       ; $5b58: $e6 $09
    dec [hl]                                      ; $5b5a: $35
    bit 0, h                                      ; $5b5b: $cb $44
    or e                                          ; $5b5d: $b3
    sbc b                                         ; $5b5e: $98
    adc e                                         ; $5b5f: $8b
    ld h, e                                       ; $5b60: $63
    add $e9                                       ; $5b61: $c6 $e9
    cpl                                           ; $5b63: $2f
    rst $28                                       ; $5b64: $ef
    ld [hl], h                                    ; $5b65: $74
    or d                                          ; $5b66: $b2
    adc h                                         ; $5b67: $8c
    ld a, a                                       ; $5b68: $7f
    dec bc                                        ; $5b69: $0b
    dec e                                         ; $5b6a: $1d
    ld c, e                                       ; $5b6b: $4b
    ld [hl], b                                    ; $5b6c: $70
    ei                                            ; $5b6d: $fb
    ld h, c                                       ; $5b6e: $61
    ld a, a                                       ; $5b6f: $7f
    add hl, hl                                    ; $5b70: $29
    rrca                                          ; $5b71: $0f
    scf                                           ; $5b72: $37

Call_058_5b73:
    ld d, a                                       ; $5b73: $57
    ld l, h                                       ; $5b74: $6c
    ld a, d                                       ; $5b75: $7a
    ld a, [hl-]                                   ; $5b76: $3a
    ld l, l                                       ; $5b77: $6d
    add hl, de                                    ; $5b78: $19
    sbc l                                         ; $5b79: $9d
    ld l, e                                       ; $5b7a: $6b
    ld e, h                                       ; $5b7b: $5c
    cp c                                          ; $5b7c: $b9
    dec [hl]                                      ; $5b7d: $35
    db $fc                                        ; $5b7e: $fc
    ld b, h                                       ; $5b7f: $44
    ld c, [hl]                                    ; $5b80: $4e
    call z, $10c5                                 ; $5b81: $cc $c5 $10
    ld bc, $50f7                                  ; $5b84: $01 $f7 $50
    ld c, e                                       ; $5b87: $4b
    rst $30                                       ; $5b88: $f7
    ld d, l                                       ; $5b89: $55
    xor [hl]                                      ; $5b8a: $ae
    add hl, hl                                    ; $5b8b: $29
    di                                            ; $5b8c: $f3
    ld e, [hl]                                    ; $5b8d: $5e

Call_058_5b8e:
    or d                                          ; $5b8e: $b2
    jp $e356                                      ; $5b8f: $c3 $56 $e3


    rst $18                                       ; $5b92: $df
    sub $71                                       ; $5b93: $d6 $71
    ld c, c                                       ; $5b95: $49
    ld a, [$0f89]                                 ; $5b96: $fa $89 $0f
    cp a                                          ; $5b99: $bf
    db $d3                                        ; $5b9a: $d3
    ret                                           ; $5b9b: $c9


    ld h, d                                       ; $5b9c: $62
    pop de                                        ; $5b9d: $d1
    xor [hl]                                      ; $5b9e: $ae
    rst $20                                       ; $5b9f: $e7
    ld d, l                                       ; $5ba0: $55
    ld l, c                                       ; $5ba1: $69
    ldh [$6e], a                                  ; $5ba2: $e0 $6e
    rst $38                                       ; $5ba4: $ff
    ld [hl+], a                                   ; $5ba5: $22
    ld c, e                                       ; $5ba6: $4b
    ld hl, $ed73                                  ; $5ba7: $21 $73 $ed
    ld a, [$795d]                                 ; $5baa: $fa $5d $79
    jp hl                                         ; $5bad: $e9


    ld d, l                                       ; $5bae: $55
    bit 4, c                                      ; $5baf: $cb $61
    rst $00                                       ; $5bb1: $c7
    inc sp                                        ; $5bb2: $33
    or e                                          ; $5bb3: $b3
    ld l, e                                       ; $5bb4: $6b
    cp l                                          ; $5bb5: $bd
    ld e, a                                       ; $5bb6: $5f
    db $e3                                        ; $5bb7: $e3
    inc h                                         ; $5bb8: $24
    rla                                           ; $5bb9: $17
    ld e, a                                       ; $5bba: $5f
    ld [c], a                                     ; $5bbb: $e2
    ld a, b                                       ; $5bbc: $78
    ret z                                         ; $5bbd: $c8

    ld a, [c]                                     ; $5bbe: $f2
    add hl, sp                                    ; $5bbf: $39
    ld d, $88                                     ; $5bc0: $16 $88
    nop                                           ; $5bc2: $00
    add hl, hl                                    ; $5bc3: $29
    sbc l                                         ; $5bc4: $9d
    ld c, e                                       ; $5bc5: $4b
    ld c, [hl]                                    ; $5bc6: $4e
    rst $20                                       ; $5bc7: $e7
    sub d                                         ; $5bc8: $92
    db $d3                                        ; $5bc9: $d3
    ld [hl], h                                    ; $5bca: $74
    and $91                                       ; $5bcb: $e6 $91
    call nc, $63f8                                ; $5bcd: $d4 $f8 $63
    dec bc                                        ; $5bd0: $0b
    ld b, h                                       ; $5bd1: $44
    rla                                           ; $5bd2: $17
    rst $18                                       ; $5bd3: $df
    ld [hl], h                                    ; $5bd4: $74
    ld sp, hl                                     ; $5bd5: $f9
    db $10                                        ; $5bd6: $10
    sub a                                         ; $5bd7: $97
    call c, $f974                                 ; $5bd8: $dc $74 $f9
    db $10                                        ; $5bdb: $10
    db $dd                                        ; $5bdc: $dd
    ld a, [$afc2]                                 ; $5bdd: $fa $c2 $af
    ld h, l                                       ; $5be0: $65
    sub d                                         ; $5be1: $92
    cp h                                          ; $5be2: $bc
    ld bc, $dd01                                  ; $5be3: $01 $01 $dd
    ld a, [$91f8]                                 ; $5be6: $fa $f8 $91
    xor [hl]                                      ; $5be9: $ae
    db $dd                                        ; $5bea: $dd
    ld [hl], h                                    ; $5beb: $74
    ld sp, hl                                     ; $5bec: $f9
    ld d, d                                       ; $5bed: $52
    xor $4b                                       ; $5bee: $ee $4b
    adc l                                         ; $5bf0: $8d
    nop                                           ; $5bf1: $00
    db $dd                                        ; $5bf2: $dd
    ld a, [$2f92]                                 ; $5bf3: $fa $92 $2f
    ld [c], a                                     ; $5bf6: $e2
    jp c, $974d                                   ; $5bf7: $da $4d $97

    cpl                                           ; $5bfa: $2f
    push hl                                       ; $5bfb: $e5
    cp [hl]                                       ; $5bfc: $be
    call nc, $3d08                                ; $5bfd: $d4 $08 $3d
    ret                                           ; $5c00: $c9


    ccf                                           ; $5c01: $3f
    ld d, e                                       ; $5c02: $53
    ld a, [$8c7e]                                 ; $5c03: $fa $7e $8c
    sbc $79                                       ; $5c06: $de $79
    cp b                                          ; $5c08: $b8
    cp c                                          ; $5c09: $b9
    ld b, [hl]                                    ; $5c0a: $46
    ld d, d                                       ; $5c0b: $52
    adc e                                         ; $5c0c: $8b
    cp c                                          ; $5c0d: $b9
    ld a, b                                       ; $5c0e: $78
    ret c                                         ; $5c0f: $d8

    ld l, d                                       ; $5c10: $6a
    ld l, c                                       ; $5c11: $69
    ld d, a                                       ; $5c12: $57
    rla                                           ; $5c13: $17
    ld h, [hl]                                    ; $5c14: $66
    adc a                                         ; $5c15: $8f
    ld [hl], b                                    ; $5c16: $70
    inc a                                         ; $5c17: $3c
    xor [hl]                                      ; $5c18: $ae
    push af                                       ; $5c19: $f5
    scf                                           ; $5c1a: $37
    xor [hl]                                      ; $5c1b: $ae
    call c, $b61a                                 ; $5c1c: $dc $1a $b6
    adc b                                         ; $5c1f: $88
    halt                                          ; $5c20: $76
    jp hl                                         ; $5c21: $e9


    xor [hl]                                      ; $5c22: $ae
    sbc d                                         ; $5c23: $9a
    jp nc, Jump_058_7697                          ; $5c24: $d2 $97 $76

    ret nc                                        ; $5c27: $d0

    adc b                                         ; $5c28: $88
    ld a, b                                       ; $5c29: $78
    ld b, d                                       ; $5c2a: $42
    ld b, c                                       ; $5c2b: $41
    inc b                                         ; $5c2c: $04
    rst $30                                       ; $5c2d: $f7
    ld d, b                                       ; $5c2e: $50
    dec [hl]                                      ; $5c2f: $35
    and l                                         ; $5c30: $a5
    adc a                                         ; $5c31: $8f
    ld a, b                                       ; $5c32: $78
    or l                                          ; $5c33: $b5
    db $d3                                        ; $5c34: $d3
    ld [hl], h                                    ; $5c35: $74
    sub d                                         ; $5c36: $92
    inc [hl]                                      ; $5c37: $34
    cpl                                           ; $5c38: $2f
    sub e                                         ; $5c39: $93
    db $e4                                        ; $5c3a: $e4
    add sp, $5c                                   ; $5c3b: $e8 $5c
    and e                                         ; $5c3d: $a3
    ld [hl], e                                    ; $5c3e: $73
    pop hl                                        ; $5c3f: $e1
    and $d2                                       ; $5c40: $e6 $d2
    ld l, $3e                                     ; $5c42: $2e $3e
    ld e, c                                       ; $5c44: $59
    call z, $c3c5                                 ; $5c45: $cc $c5 $c3
    ld d, [hl]                                    ; $5c48: $56
    ld c, e                                       ; $5c49: $4b
    cp e                                          ; $5c4a: $bb
    cp d                                          ; $5c4b: $ba
    jr nc, jr_058_5cc9                            ; $5c4c: $30 $7b

    add h                                         ; $5c4e: $84
    db $e3                                        ; $5c4f: $e3
    ld [hl], c                                    ; $5c50: $71
    xor l                                         ; $5c51: $ad
    cp a                                          ; $5c52: $bf
    ld [hl], c                                    ; $5c53: $71
    push hl                                       ; $5c54: $e5
    sub $b0                                       ; $5c55: $d6 $b0
    ld b, l                                       ; $5c57: $45
    sub [hl]                                      ; $5c58: $96
    db $f4                                        ; $5c59: $f4
    ld d, l                                       ; $5c5a: $55
    sbc [hl]                                      ; $5c5b: $9e
    ld h, l                                       ; $5c5c: $65
    ret                                           ; $5c5d: $c9


    xor a                                         ; $5c5e: $af
    add sp, -$0a                                  ; $5c5f: $e8 $f6
    jp Jump_058_5642                              ; $5c61: $c3 $42 $56


    inc hl                                        ; $5c64: $23
    ld a, [hl-]                                   ; $5c65: $3a
    ld l, [hl]                                    ; $5c66: $6e
    inc h                                         ; $5c67: $24
    ld b, h                                       ; $5c68: $44
    add hl, hl                                    ; $5c69: $29
    pop af                                        ; $5c6a: $f1
    pop de                                        ; $5c6b: $d1
    db $f4                                        ; $5c6c: $f4
    sub h                                         ; $5c6d: $94
    jp Jump_058_6bcc                              ; $5c6e: $c3 $cc $6b


    cpl                                           ; $5c71: $2f
    cp b                                          ; $5c72: $b8
    or $92                                        ; $5c73: $f6 $92
    dec h                                         ; $5c75: $25
    ld c, a                                       ; $5c76: $4f
    jp c, Jump_058_5e0f                           ; $5c77: $da $0f $5e

    call z, $c3c5                                 ; $5c7a: $cc $c5 $c3
    ld d, [hl]                                    ; $5c7d: $56
    ld c, e                                       ; $5c7e: $4b
    cp e                                          ; $5c7f: $bb
    cp d                                          ; $5c80: $ba
    jr nc, jr_058_5cfe                            ; $5c81: $30 $7b

    add h                                         ; $5c83: $84
    db $e3                                        ; $5c84: $e3
    ld [hl], c                                    ; $5c85: $71
    xor l                                         ; $5c86: $ad
    cp a                                          ; $5c87: $bf
    ld [hl], c                                    ; $5c88: $71
    push hl                                       ; $5c89: $e5
    sub $b0                                       ; $5c8a: $d6 $b0
    ld b, l                                       ; $5c8c: $45
    ldh [rP1], a                                  ; $5c8d: $e0 $00
    ccf                                           ; $5c8f: $3f
    ld l, c                                       ; $5c90: $69
    ccf                                           ; $5c91: $3f
    ld a, b                                       ; $5c92: $78
    ld sp, $2f17                                  ; $5c93: $31 $17 $2f
    ld e, l                                       ; $5c96: $5d
    ld d, $71                                     ; $5c97: $16 $71
    dec l                                         ; $5c99: $2d
    sub e                                         ; $5c9a: $93
    db $e4                                        ; $5c9b: $e4
    adc b                                         ; $5c9c: $88
    db $e4                                        ; $5c9d: $e4
    sbc a                                         ; $5c9e: $9f
    add hl, hl                                    ; $5c9f: $29
    ld a, l                                       ; $5ca0: $7d
    ld c, l                                       ; $5ca1: $4d
    inc de                                        ; $5ca2: $13
    and e                                         ; $5ca3: $a3
    rst $08                                       ; $5ca4: $cf
    add h                                         ; $5ca5: $84
    xor d                                         ; $5ca6: $aa
    add hl, hl                                    ; $5ca7: $29
    ld a, l                                       ; $5ca8: $7d
    jp hl                                         ; $5ca9: $e9


    jp nc, Jump_058_6ba3                          ; $5caa: $d2 $a3 $6b

    jp z, Jump_058_7f78                           ; $5cad: $ca $78 $7f

    sub [hl]                                      ; $5cb0: $96
    push bc                                       ; $5cb1: $c5
    ld e, h                                       ; $5cb2: $5c
    inc e                                         ; $5cb3: $1c
    inc sp                                        ; $5cb4: $33
    ld c, [hl]                                    ; $5cb5: $4e
    ld a, a                                       ; $5cb6: $7f
    ld a, c                                       ; $5cb7: $79
    and a                                         ; $5cb8: $a7
    sub e                                         ; $5cb9: $93
    dec b                                         ; $5cba: $05
    ld [hl+], a                                   ; $5cbb: $22
    ld a, l                                       ; $5cbc: $7d
    inc e                                         ; $5cbd: $1c
    ld b, [hl]                                    ; $5cbe: $46
    cp h                                          ; $5cbf: $bc
    ld a, [de]                                    ; $5cc0: $1a
    pop de                                        ; $5cc1: $d1
    ld d, l                                       ; $5cc2: $55
    cp h                                          ; $5cc3: $bc
    rst $00                                       ; $5cc4: $c7
    inc bc                                        ; $5cc5: $03
    ld a, [c]                                     ; $5cc6: $f2
    dec de                                        ; $5cc7: $1b
    cp e                                          ; $5cc8: $bb

jr_058_5cc9:
    adc [hl]                                      ; $5cc9: $8e
    push hl                                       ; $5cca: $e5
    ld [de], a                                    ; $5ccb: $12
    ld c, [hl]                                    ; $5ccc: $4e
    ld a, [hl]                                    ; $5ccd: $7e
    ld l, e                                       ; $5cce: $6b
    ld e, a                                       ; $5ccf: $5f
    add d                                         ; $5cd0: $82
    push bc                                       ; $5cd1: $c5
    dec sp                                        ; $5cd2: $3b
    ld l, [hl]                                    ; $5cd3: $6e
    pop bc                                        ; $5cd4: $c1
    or l                                          ; $5cd5: $b5
    sbc b                                         ; $5cd6: $98
    adc e                                         ; $5cd7: $8b
    add a                                         ; $5cd8: $87
    xor l                                         ; $5cd9: $ad
    sub [hl]                                      ; $5cda: $96
    halt                                          ; $5cdb: $76
    ld [hl], l                                    ; $5cdc: $75
    ld h, c                                       ; $5cdd: $61
    or $08                                        ; $5cde: $f6 $08
    rst $00                                       ; $5ce0: $c7
    db $e3                                        ; $5ce1: $e3
    ld e, d                                       ; $5ce2: $5a
    ld a, a                                       ; $5ce3: $7f
    db $e3                                        ; $5ce4: $e3
    jp z, Jump_058_61ad                           ; $5ce5: $ca $ad $61

Call_058_5ce8:
    adc e                                         ; $5ce8: $8b
    db $ec                                        ; $5ce9: $ec
    adc a                                         ; $5cea: $8f
    ld a, h                                       ; $5ceb: $7c
    ld sp, $86ba                                  ; $5cec: $31 $ba $86
    xor l                                         ; $5cef: $ad
    halt                                          ; $5cf0: $76
    ld a, [hl-]                                   ; $5cf1: $3a
    add hl, sp                                    ; $5cf2: $39
    and $f6                                       ; $5cf3: $e6 $f6
    sub h                                         ; $5cf5: $94
    jp hl                                         ; $5cf6: $e9


    jp z, $ba27                                   ; $5cf7: $ca $27 $ba

    jr nz, jr_058_5cfe                            ; $5cfa: $20 $02

    db $dd                                        ; $5cfc: $dd
    ld e, [hl]                                    ; $5cfd: $5e

jr_058_5cfe:
    xor h                                         ; $5cfe: $ac
    ld b, a                                       ; $5cff: $47
    di                                            ; $5d00: $f3
    rrca                                          ; $5d01: $0f
    add a                                         ; $5d02: $87
    cp l                                          ; $5d03: $bd
    sbc b                                         ; $5d04: $98
    ld [hl], c                                    ; $5d05: $71
    ld a, [$3bcb]                                 ; $5d06: $fa $cb $3b
    sbc l                                         ; $5d09: $9d
    inc l                                         ; $5d0a: $2c
    ld d, $ef                                     ; $5d0b: $16 $ef
    dec h                                         ; $5d0d: $25
    adc e                                         ; $5d0e: $8b
    cp c                                          ; $5d0f: $b9
    ld a, b                                       ; $5d10: $78
    ret c                                         ; $5d11: $d8

    ld l, d                                       ; $5d12: $6a
    ld l, c                                       ; $5d13: $69
    ld d, a                                       ; $5d14: $57
    rla                                           ; $5d15: $17
    ld h, [hl]                                    ; $5d16: $66
    adc a                                         ; $5d17: $8f
    ld [hl], b                                    ; $5d18: $70
    inc a                                         ; $5d19: $3c
    xor [hl]                                      ; $5d1a: $ae
    push af                                       ; $5d1b: $f5
    scf                                           ; $5d1c: $37
    xor [hl]                                      ; $5d1d: $ae
    call c, $b61a                                 ; $5d1e: $dc $1a $b6
    ret z                                         ; $5d21: $c8

    ld h, d                                       ; $5d22: $62
    add hl, sp                                    ; $5d23: $39
    ld [hl], c                                    ; $5d24: $71
    dec l                                         ; $5d25: $2d
    and l                                         ; $5d26: $a5
    db $e3                                        ; $5d27: $e3
    and [hl]                                      ; $5d28: $a6
    call nz, Call_058_6b73                        ; $5d29: $c4 $73 $6b
    xor [hl]                                      ; $5d2c: $ae
    ld bc, $9e4a                                  ; $5d2d: $01 $4a $9e
    or h                                          ; $5d30: $b4
    rra                                           ; $5d31: $1f
    ld d, $73                                     ; $5d32: $16 $73
    ld sp, $d084                                  ; $5d34: $31 $84 $d0
    xor l                                         ; $5d37: $ad
    cp c                                          ; $5d38: $b9
    ld h, $d9                                     ; $5d39: $26 $d9
    or d                                          ; $5d3b: $b2
    ldh a, [rNR50]                                ; $5d3c: $f0 $24
    cp b                                          ; $5d3e: $b8
    sub [hl]                                      ; $5d3f: $96
    halt                                          ; $5d40: $76
    ld [$729e], sp                                ; $5d41: $08 $9e $72
    ld [hl], e                                    ; $5d44: $73
    ld b, c                                       ; $5d45: $41
    inc b                                         ; $5d46: $04
    db $dd                                        ; $5d47: $dd
    and $b9                                       ; $5d48: $e6 $b9
    halt                                          ; $5d4a: $76
    ld sp, hl                                     ; $5d4b: $f9
    ld h, l                                       ; $5d4c: $65
    sub a                                         ; $5d4d: $97
    cpl                                           ; $5d4e: $2f
    and $e2                                       ; $5d4f: $e6 $e2
    ld h, c                                       ; $5d51: $61
    xor e                                         ; $5d52: $ab
    and l                                         ; $5d53: $a5
    ld e, l                                       ; $5d54: $5d
    ld e, l                                       ; $5d55: $5d
    sbc b                                         ; $5d56: $98
    dec a                                         ; $5d57: $3d
    jp nz, $b8f1                                  ; $5d58: $c2 $f1 $b8

    sub $df                                       ; $5d5b: $d6 $df
    cp b                                          ; $5d5d: $b8
    ld [hl], d                                    ; $5d5e: $72
    ld l, e                                       ; $5d5f: $6b
    ret c                                         ; $5d60: $d8

    ld [hl+], a                                   ; $5d61: $22
    jp c, $117d                                   ; $5d62: $da $7d $11

    push hl                                       ; $5d65: $e5
    add $fb                                       ; $5d66: $c6 $fb
    cp e                                          ; $5d68: $bb
    db $fc                                        ; $5d69: $fc
    ld a, [c]                                     ; $5d6a: $f2
    dec e                                         ; $5d6b: $1d
    rst $10                                       ; $5d6c: $d7
    ld [hl], a                                    ; $5d6d: $77
    ld b, c                                       ; $5d6e: $41
    inc b                                         ; $5d6f: $04
    db $dd                                        ; $5d70: $dd
    and $b9                                       ; $5d71: $e6 $b9
    halt                                          ; $5d73: $76
    push af                                       ; $5d74: $f5
    ld h, l                                       ; $5d75: $65
    adc e                                         ; $5d76: $8b
    add hl, de                                    ; $5d77: $19
    and a                                         ; $5d78: $a7
    cp a                                          ; $5d79: $bf
    cp h                                          ; $5d7a: $bc
    db $d3                                        ; $5d7b: $d3
    ret                                           ; $5d7c: $c9


    ld [c], a                                     ; $5d7d: $e2
    jp c, Jump_000_164b                           ; $5d7e: $da $4b $16

    ld [hl], e                                    ; $5d81: $73
    pop af                                        ; $5d82: $f1
    or b                                          ; $5d83: $b0
    push de                                       ; $5d84: $d5
    jp nc, Jump_000_2eae                          ; $5d85: $d2 $ae $2e

    call z, $e11e                                 ; $5d88: $cc $1e $e1
    ld a, b                                       ; $5d8b: $78
    ld e, h                                       ; $5d8c: $5c
    db $eb                                        ; $5d8d: $eb
    ld l, a                                       ; $5d8e: $6f
    ld e, h                                       ; $5d8f: $5c
    cp c                                          ; $5d90: $b9
    dec [hl]                                      ; $5d91: $35
    ld l, h                                       ; $5d92: $6c
    ld de, $6eb8                                  ; $5d93: $11 $b8 $6e
    di                                            ; $5d96: $f3
    add sp, -$1a                                  ; $5d97: $e8 $e6
    jp Jump_058_6b9e                              ; $5d99: $c3 $9e $6b


    db $fc                                        ; $5d9c: $fc
    db $db                                        ; $5d9d: $db
    adc b                                         ; $5d9e: $88
    adc [hl]                                      ; $5d9f: $8e
    dec de                                        ; $5da0: $1b
    xor c                                         ; $5da1: $a9
    sbc l                                         ; $5da2: $9d
    ld h, h                                       ; $5da3: $64
    bit 3, h                                      ; $5da4: $cb $5c
    ld d, e                                       ; $5da6: $53
    ld a, [hl-]                                   ; $5da7: $3a
    add $d6                                       ; $5da8: $c6 $d6
    ld l, $87                                     ; $5daa: $2e $87
    ld c, c                                       ; $5dac: $49
    or [hl]                                       ; $5dad: $b6
    adc h                                         ; $5dae: $8c
    and [hl]                                      ; $5daf: $a6
    ld d, $9f                                     ; $5db0: $16 $9f
    adc h                                         ; $5db2: $8c
    ld a, a                                       ; $5db3: $7f
    ld e, e                                       ; $5db4: $5b
    ld c, $c3                                     ; $5db5: $0e $c3
    ld d, [hl]                                    ; $5db7: $56
    ld c, e                                       ; $5db8: $4b
    ld a, [$ef2a]                                 ; $5db9: $fa $2a $ef
    call nz, $dca7                                ; $5dbc: $c4 $a7 $dc
    ld a, [hl]                                    ; $5dbf: $7e
    jr nc, @+$46                                  ; $5dc0: $30 $44

    db $dd                                        ; $5dc2: $dd
    and $b9                                       ; $5dc3: $e6 $b9
    ld h, $d9                                     ; $5dc5: $26 $d9
    or d                                          ; $5dc7: $b2
    sbc b                                         ; $5dc8: $98
    adc e                                         ; $5dc9: $8b
    add a                                         ; $5dca: $87
    xor l                                         ; $5dcb: $ad
    sub [hl]                                      ; $5dcc: $96
    halt                                          ; $5dcd: $76
    ld [hl], l                                    ; $5dce: $75
    ld h, c                                       ; $5dcf: $61
    or $08                                        ; $5dd0: $f6 $08
    rst $00                                       ; $5dd2: $c7
    db $e3                                        ; $5dd3: $e3
    ld e, d                                       ; $5dd4: $5a
    ld a, a                                       ; $5dd5: $7f
    db $e3                                        ; $5dd6: $e3
    jp z, Jump_058_61ad                           ; $5dd7: $ca $ad $61

    adc e                                         ; $5dda: $8b
    db $ec                                        ; $5ddb: $ec
    call nz, $de8e                                ; $5ddc: $c4 $8e $de
    ld a, b                                       ; $5ddf: $78
    and l                                         ; $5de0: $a5
    adc e                                         ; $5de1: $8b
    ld [c], a                                     ; $5de2: $e2
    push af                                       ; $5de3: $f5
    ld a, [hl]                                    ; $5de4: $7e
    adc l                                         ; $5de5: $8d
    sub e                                         ; $5de6: $93
    ld e, h                                       ; $5de7: $5c
    inc c                                         ; $5de8: $0c
    sub a                                         ; $5de9: $97
    ld [c], a                                     ; $5dea: $e2
    ld c, c                                       ; $5deb: $49
    sub a                                         ; $5dec: $97
    add $33                                       ; $5ded: $c6 $33
    or e                                          ; $5def: $b3
    ld c, e                                       ; $5df0: $4b
    dec sp                                        ; $5df1: $3b
    and l                                         ; $5df2: $a5
    cpl                                           ; $5df3: $2f
    ld a, $19                                     ; $5df4: $3e $19
    db $fd                                        ; $5df6: $fd
    ld b, l                                       ; $5df7: $45
    inc a                                         ; $5df8: $3c
    ret                                           ; $5df9: $c9


    sub [hl]                                      ; $5dfa: $96
    cp l                                          ; $5dfb: $bd
    ld h, h                                       ; $5dfc: $64
    jp z, $2218                                   ; $5dfd: $ca $18 $22

    dec a                                         ; $5e00: $3d
    ret                                           ; $5e01: $c9


    ccf                                           ; $5e02: $3f
    ld d, e                                       ; $5e03: $53
    ld a, [$1ad2]                                 ; $5e04: $fa $d2 $1a
    ld h, [hl]                                    ; $5e07: $66
    rst $10                                       ; $5e08: $d7
    add sp, $5c                                   ; $5e09: $e8 $5c
    and e                                         ; $5e0b: $a3
    ld b, [hl]                                    ; $5e0c: $46
    ld d, e                                       ; $5e0d: $53
    and e                                         ; $5e0e: $a3

Jump_058_5e0f:
    sbc e                                         ; $5e0f: $9b
    res 1, e                                      ; $5e10: $cb $8b
    cp c                                          ; $5e12: $b9
    ld a, b                                       ; $5e13: $78
    ret c                                         ; $5e14: $d8

    ld l, d                                       ; $5e15: $6a
    ld l, c                                       ; $5e16: $69
    ld d, a                                       ; $5e17: $57
    rla                                           ; $5e18: $17
    ld h, [hl]                                    ; $5e19: $66
    adc a                                         ; $5e1a: $8f
    ld [hl], b                                    ; $5e1b: $70
    inc a                                         ; $5e1c: $3c
    xor [hl]                                      ; $5e1d: $ae
    push af                                       ; $5e1e: $f5
    scf                                           ; $5e1f: $37
    xor [hl]                                      ; $5e20: $ae
    call c, $b61a                                 ; $5e21: $dc $1a $b6
    adc b                                         ; $5e24: $88
    halt                                          ; $5e25: $76
    pop af                                        ; $5e26: $f1
    ret                                           ; $5e27: $c9


    sub h                                         ; $5e28: $94
    cp [hl]                                       ; $5e29: $be
    ld [hl], h                                    ; $5e2a: $74
    jp hl                                         ; $5e2b: $e9


    pop de                                        ; $5e2c: $d1
    and e                                         ; $5e2d: $a3

Jump_058_5e2e:
    sbc e                                         ; $5e2e: $9b
    res 1, e                                      ; $5e2f: $cb $8b
    add hl, de                                    ; $5e31: $19
    and a                                         ; $5e32: $a7
    cp a                                          ; $5e33: $bf
    cp h                                          ; $5e34: $bc
    db $d3                                        ; $5e35: $d3
    ret                                           ; $5e36: $c9


    ld [c], a                                     ; $5e37: $e2
    add d                                         ; $5e38: $82
    ld [$2efd], sp                                ; $5e39: $08 $fd $2e
    jp hl                                         ; $5e3c: $e9


    xor e                                         ; $5e3d: $ab
    inc a                                         ; $5e3e: $3c
    set 2, d                                      ; $5e3f: $cb $d2
    sbc d                                         ; $5e41: $9a
    jp Jump_058_6b9e                              ; $5e42: $c3 $9e $6b


    ccf                                           ; $5e45: $3f
    ld b, [hl]                                    ; $5e46: $46
    rst $28                                       ; $5e47: $ef
    ld d, b                                       ; $5e48: $50
    dec bc                                        ; $5e49: $0b
    xor a                                         ; $5e4a: $af
    ld sp, $1f5c                                  ; $5e4b: $31 $5c $1f
    add a                                         ; $5e4e: $87
    and l                                         ; $5e4f: $a5
    dec e                                         ; $5e50: $1d
    inc [hl]                                      ; $5e51: $34

jr_058_5e52:
    jp nz, $c9de                                  ; $5e52: $c2 $de $c9

    ld a, b                                       ; $5e55: $78
    jp hl                                         ; $5e56: $e9


    ld [hl], d                                    ; $5e57: $72
    ld b, d                                       ; $5e58: $42
    sub [hl]                                      ; $5e59: $96
    rst $08                                       ; $5e5a: $cf
    ld sp, $f744                                  ; $5e5b: $31 $44 $f7
    push hl                                       ; $5e5e: $e5
    ld [c], a                                     ; $5e5f: $e2
    ld [hl-], a                                   ; $5e60: $32
    or e                                          ; $5e61: $b3
    ld l, e                                       ; $5e62: $6b
    xor [hl]                                      ; $5e63: $ae
    ret                                           ; $5e64: $c9


    and a                                         ; $5e65: $a7
    adc a                                         ; $5e66: $8f
    pop hl                                        ; $5e67: $e1
    ld b, b                                       ; $5e68: $40
    ld l, b                                       ; $5e69: $68
    call nz, Call_000_29e2                        ; $5e6a: $c4 $e2 $29
    sub a                                         ; $5e6d: $97
    rst $08                                       ; $5e6e: $cf
    add sp, -$52                                  ; $5e6f: $e8 $ae
    ld d, $5c                                     ; $5e71: $16 $5c
    ld d, e                                       ; $5e73: $53
    ld c, $2b                                     ; $5e74: $0e $2b
    ld e, l                                       ; $5e76: $5d
    inc d                                         ; $5e77: $14
    rst $28                                       ; $5e78: $ef
    xor a                                         ; $5e79: $af
    ld [hl-], a                                   ; $5e7a: $32
    add $66                                       ; $5e7b: $c6 $66
    adc b                                         ; $5e7d: $88
    nop                                           ; $5e7e: $00
    ld [hl], a                                    ; $5e7f: $77
    call nz, $a5e8                                ; $5e80: $c4 $e8 $a5
    ld c, e                                       ; $5e83: $4b
    inc sp                                        ; $5e84: $33
    push hl                                       ; $5e85: $e5
    or b                                          ; $5e86: $b0
    adc h                                         ; $5e87: $8c
    rla                                           ; $5e88: $17
    ld [$67c9], a                                 ; $5e89: $ea $c9 $67
    ld c, [hl]                                    ; $5e8c: $4e
    ld l, e                                       ; $5e8d: $6b
    ld c, $bb                                     ; $5e8e: $0e $bb
    ldh [$ba], a                                  ; $5e90: $e0 $ba
    dec a                                         ; $5e92: $3d
    rst $10                                       ; $5e93: $d7
    ret c                                         ; $5e94: $d8

    jr jr_058_5e52                                ; $5e95: $18 $bb

    db $fd                                        ; $5e97: $fd
    jr nc, @+$38                                  ; $5e98: $30 $36

    or e                                          ; $5e9a: $b3
    rst $30                                       ; $5e9b: $f7
    ld b, a                                       ; $5e9c: $47
    ld a, $92                                     ; $5e9d: $3e $92
    or h                                          ; $5e9f: $b4
    ld b, b                                       ; $5ea0: $40
    inc b                                         ; $5ea1: $04
    ld [hl], a                                    ; $5ea2: $77
    inc l                                         ; $5ea3: $2c
    db $ed                                        ; $5ea4: $ed
    and b                                         ; $5ea5: $a0
    ld de, $4ef6                                  ; $5ea6: $11 $f6 $4e
    add $3b                                       ; $5ea9: $c6 $3b
    db $fc                                        ; $5eab: $fc
    ld e, b                                       ; $5eac: $58
    rst $30                                       ; $5ead: $f7
    cp $08                                        ; $5eae: $fe $08
    scf                                           ; $5eb0: $37
    ld a, [$bd07]                                 ; $5eb1: $fa $07 $bd
    or h                                          ; $5eb4: $b4
    jp $f196                                      ; $5eb5: $c3 $96 $f1


    ld l, a                                       ; $5eb8: $6f
    dec sp                                        ; $5eb9: $3b
    ld c, l                                       ; $5eba: $4d
    ld h, a                                       ; $5ebb: $67
    ld e, [hl]                                    ; $5ebc: $5e
    cp d                                          ; $5ebd: $ba
    ld a, c                                       ; $5ebe: $79
    jp z, $f4bc                                   ; $5ebf: $ca $bc $f4

    dec hl                                        ; $5ec2: $2b
    cpl                                           ; $5ec3: $2f
    xor l                                         ; $5ec4: $ad
    add hl, sp                                    ; $5ec5: $39
    ld l, h                                       ; $5ec6: $6c
    reti                                          ; $5ec7: $d9


    rrca                                          ; $5ec8: $0f
    dec e                                         ; $5ec9: $1d
    bit 3, [hl]                                   ; $5eca: $cb $5e
    ld [hl-], a                                   ; $5ecc: $32
    db $ec                                        ; $5ecd: $ec
    nop                                           ; $5ece: $00
    ld de, $ffdd                                  ; $5ecf: $11 $dd $ff
    inc e                                         ; $5ed2: $1c
    adc a                                         ; $5ed3: $8f
    call z, Call_058_65c5                         ; $5ed4: $cc $c5 $65

Jump_058_5ed7:
    ld h, [hl]                                    ; $5ed7: $66
    adc e                                         ; $5ed8: $8b
    rst $20                                       ; $5ed9: $e7
    ld e, d                                       ; $5eda: $5a
    ei                                            ; $5edb: $fb
    call z, $adcb                                 ; $5edc: $cc $cb $ad
    db $e3                                        ; $5edf: $e3
    ret nc                                        ; $5ee0: $d0

    ld e, $b3                                     ; $5ee1: $1e $b3
    or l                                          ; $5ee3: $b5
    dec sp                                        ; $5ee4: $3b
    ld h, h                                       ; $5ee5: $64
    ld d, a                                       ; $5ee6: $57
    ld c, l                                       ; $5ee7: $4d
    jp hl                                         ; $5ee8: $e9


    jp Jump_000_100e                              ; $5ee9: $c3 $0e $10


    ld bc, $1c7d                                  ; $5eec: $01 $7d $1c
    ld b, [hl]                                    ; $5eef: $46
    cp h                                          ; $5ef0: $bc
    jp c, $8d6b                                   ; $5ef1: $da $6b $8d

    cp a                                          ; $5ef4: $bf
    ld e, d                                       ; $5ef5: $5a
    db $d3                                        ; $5ef6: $d3
    adc e                                         ; $5ef7: $8b
    ld b, a                                       ; $5ef8: $47
    ld d, d                                       ; $5ef9: $52
    inc hl                                        ; $5efa: $23
    sub d                                         ; $5efb: $92
    ld e, h                                       ; $5efc: $5c
    ld [$94c9], a                                 ; $5efd: $ea $c9 $94
    ld a, c                                       ; $5f00: $79
    xor [hl]                                      ; $5f01: $ae
    ld d, c                                       ; $5f02: $51
    inc hl                                        ; $5f03: $23
    sbc $4e                                       ; $5f04: $de $4e
    call nc, $2a9b                                ; $5f06: $d4 $9b $2a
    ld b, e                                       ; $5f09: $43
    inc b                                         ; $5f0a: $04
    rst $30                                       ; $5f0b: $f7
    push hl                                       ; $5f0c: $e5
    and $fa                                       ; $5f0d: $e6 $fa
    ld [de], a                                    ; $5f0f: $12
    and $9a                                       ; $5f10: $e6 $9a
    or d                                          ; $5f12: $b2
    call z, $c3e2                                 ; $5f13: $cc $e2 $c3
    ld e, $ce                                     ; $5f16: $1e $ce
    sub l                                         ; $5f18: $95
    rst $18                                       ; $5f19: $df
    ld a, [hl-]                                   ; $5f1a: $3a
    ld c, $23                                     ; $5f1b: $0e $23
    ld e, [hl]                                    ; $5f1d: $5e
    ld b, c                                       ; $5f1e: $41
    inc b                                         ; $5f1f: $04
    ld a, l                                       ; $5f20: $7d
    inc e                                         ; $5f21: $1c
    halt                                          ; $5f22: $76

jr_058_5f23:
    and d                                         ; $5f23: $a2
    sbc $9a                                       ; $5f24: $de $9a
    rst $10                                       ; $5f26: $d7
    dec h                                         ; $5f27: $25
    daa                                           ; $5f28: $27
    ld a, d                                       ; $5f29: $7a
    dec e                                         ; $5f2a: $1d
    add a                                         ; $5f2b: $87
    ld de, $294f                                  ; $5f2c: $11 $4f $29
    rst $08                                       ; $5f2f: $cf
    or d                                          ; $5f30: $b2
    ret c                                         ; $5f31: $d8

    ld [hl], d                                    ; $5f32: $72
    adc h                                         ; $5f33: $8c
    sbc $1f                                       ; $5f34: $de $1f
    ld sp, hl                                     ; $5f36: $f9
    ld b, h                                       ; $5f37: $44
    sbc $dc                                       ; $5f38: $de $dc
    sbc d                                         ; $5f3a: $9a
    ld l, e                                       ; $5f3b: $6b
    sub d                                         ; $5f3c: $92
    cp l                                          ; $5f3d: $bd
    ld b, e                                       ; $5f3e: $43
    add hl, bc                                    ; $5f3f: $09
    jp Jump_058_71f5                              ; $5f40: $c3 $f5 $71


    ld e, b                                       ; $5f43: $58
    ld a, [c]                                     ; $5f44: $f2
    ld e, e                                       ; $5f45: $5b
    di                                            ; $5f46: $f3
    add sp, -$52                                  ; $5f47: $e8 $ae
    add $c3                                       ; $5f49: $c6 $c3
    ld c, $3b                                     ; $5f4b: $0e $3b
    call nc, $c6b0                                ; $5f4d: $d4 $b0 $c6
    inc de                                        ; $5f50: $13
    dec c                                         ; $5f51: $0d
    di                                            ; $5f52: $f3
    rrca                                          ; $5f53: $0f
    ld l, $43                                     ; $5f54: $2e $43
    inc b                                         ; $5f56: $04
    db $fd                                        ; $5f57: $fd
    ld l, $e9                                     ; $5f58: $2e $e9
    xor e                                         ; $5f5a: $ab
    cp h                                          ; $5f5b: $bc
    jp $8c7a                                      ; $5f5c: $c3 $7a $8c


    pop hl                                        ; $5f5f: $e1
    sub e                                         ; $5f60: $93
    ld h, a                                       ; $5f61: $67
    xor [hl]                                      ; $5f62: $ae
    db $fd                                        ; $5f63: $fd
    jr jr_058_5f23                                ; $5f64: $18 $bd

    ld b, e                                       ; $5f66: $43
    dec l                                         ; $5f67: $2d
    cp h                                          ; $5f68: $bc
    add $10                                       ; $5f69: $c6 $10
    ld bc, $1c7d                                  ; $5f6b: $01 $7d $1c
    and $9a                                       ; $5f6e: $e6 $9a
    ld h, l                                       ; $5f70: $65
    cpl                                           ; $5f71: $2f
    reti                                          ; $5f72: $d9


    ld a, c                                       ; $5f73: $79
    sbc b                                         ; $5f74: $98
    sub $45                                       ; $5f75: $d6 $45
    call z, $8767                                 ; $5f77: $cc $67 $87
    cp e                                          ; $5f7a: $bb
    sbc b                                         ; $5f7b: $98
    ld e, l                                       ; $5f7c: $5d
    db $10                                        ; $5f7d: $10
    ld bc, $1c7d                                  ; $5f7e: $01 $7d $1c
    ld b, [hl]                                    ; $5f81: $46
    cp h                                          ; $5f82: $bc
    ld a, [de]                                    ; $5f83: $1a
    db $dd                                        ; $5f84: $dd
    push de                                       ; $5f85: $d5
    ld a, b                                       ; $5f86: $78
    ret c                                         ; $5f87: $d8

    ld h, c                                       ; $5f88: $61
    db $ed                                        ; $5f89: $ed
    inc sp                                        ; $5f8a: $33
    adc a                                         ; $5f8b: $8f
    ld l, [hl]                                    ; $5f8c: $6e
    adc a                                         ; $5f8d: $8f
    rst $30                                       ; $5f8e: $f7
    and a                                         ; $5f8f: $a7
    call z, $ff3b                                 ; $5f90: $cc $3b $ff
    or b                                          ; $5f93: $b0
    ld hl, $7d02                                  ; $5f94: $21 $02 $7d
    inc e                                         ; $5f97: $1c
    and $1a                                       ; $5f98: $e6 $1a
    ld a, [hl]                                    ; $5f9a: $7e
    adc l                                         ; $5f9b: $8d
    sub a                                         ; $5f9c: $97
    inc de                                        ; $5f9d: $13
    rst $10                                       ; $5f9e: $d7
    call z, Call_058_4f6b                         ; $5f9f: $cc $6b $4f
    call nc, $8f89                                ; $5fa2: $d4 $89 $8f
    call nc, $872e                                ; $5fa5: $d4 $2e $87
    ld c, c                                       ; $5fa8: $49
    or [hl]                                       ; $5fa9: $b6
    inc l                                         ; $5faa: $2c
    inc a                                         ; $5fab: $3c
    add hl, bc                                    ; $5fac: $09
    xor [hl]                                      ; $5fad: $ae
    add hl, hl                                    ; $5fae: $29
    cp l                                          ; $5faf: $bd
    or c                                          ; $5fb0: $b1
    ld l, e                                       ; $5fb1: $6b
    jp z, $ec3c                                   ; $5fb2: $ca $3c $ec

    or b                                          ; $5fb5: $b0
    cp a                                          ; $5fb6: $bf
    jp nc, Jump_058_6084                          ; $5fb7: $d2 $84 $60

    add c                                         ; $5fba: $81
    ld [$1c7d], sp                                ; $5fbb: $08 $7d $1c
    sub [hl]                                      ; $5fbe: $96
    halt                                          ; $5fbf: $76
    ret nc                                        ; $5fc0: $d0

    ld [$277b], sp                                ; $5fc1: $08 $7b $27
    db $e3                                        ; $5fc4: $e3
    ld e, c                                       ; $5fc5: $59
    halt                                          ; $5fc6: $76
    ld [c], a                                     ; $5fc7: $e2
    ccf                                           ; $5fc8: $3f
    rst $00                                       ; $5fc9: $c7
    jp c, $cb61                                   ; $5fca: $da $61 $cb

    ld e, [hl]                                    ; $5fcd: $5e
    and l                                         ; $5fce: $a5
    db $fd                                        ; $5fcf: $fd
    sub l                                         ; $5fd0: $95
    ld a, c                                       ; $5fd1: $79
    call nz, $c52b                                ; $5fd2: $c4 $2b $c5
    and e                                         ; $5fd5: $a3
    ld [hl], e                                    ; $5fd6: $73
    adc l                                         ; $5fd7: $8d
    sbc d                                         ; $5fd8: $9a
    ld [hl-], a                                   ; $5fd9: $32
    db $fd                                        ; $5fda: $fd
    push bc                                       ; $5fdb: $c5
    push hl                                       ; $5fdc: $e5
    ld h, c                                       ; $5fdd: $61
    add a                                         ; $5fde: $87
    dec e                                         ; $5fdf: $1d
    or a                                          ; $5fe0: $b7
    ld h, h                                       ; $5fe1: $64
    ld l, c                                       ; $5fe2: $69
    xor e                                         ; $5fe3: $ab
    ld [hl-], a                                   ; $5fe4: $32
    ld b, h                                       ; $5fe5: $44
    db $dd                                        ; $5fe6: $dd
    and $b9                                       ; $5fe7: $e6 $b9
    or $63                                        ; $5fe9: $f6 $63
    db $f4                                        ; $5feb: $f4
    adc b                                         ; $5fec: $88
    call nz, $b3c5                                ; $5fed: $c4 $c5 $b3
    ld hl, sp-$50                                 ; $5ff0: $f8 $b0
    ld b, a                                       ; $5ff2: $47
    and $e2                                       ; $5ff3: $e6 $e2
    ld [hl-], a                                   ; $5ff5: $32
    di                                            ; $5ff6: $f3
    ld c, [hl]                                    ; $5ff7: $4e
    add $73                                       ; $5ff8: $c6 $73
    adc l                                         ; $5ffa: $8d
    ld [hl], h                                    ; $5ffb: $74
    pop hl                                        ; $5ffc: $e1
    daa                                           ; $5ffd: $27
    ld d, $9e                                     ; $5ffe: $16 $9e
    adc $87                                       ; $6000: $ce $87
    ld a, a                                       ; $6002: $7f
    ld h, e                                       ; $6003: $63
    db $ed                                        ; $6004: $ed
    ld [de], a                                    ; $6005: $12
    di                                            ; $6006: $f3
    sub h                                         ; $6007: $94
    ld c, $11                                     ; $6008: $0e $11
    ld a, l                                       ; $600a: $7d
    inc e                                         ; $600b: $1c
    halt                                          ; $600c: $76
    inc [hl]                                      ; $600d: $34
    ld [c], a                                     ; $600e: $e2
    or e                                          ; $600f: $b3
    ld a, d                                       ; $6010: $7a
    jr jr_058_606e                                ; $6011: $18 $5b

    and $1a                                       ; $6013: $e6 $1a
    cp $cc                                        ; $6015: $fe $cc
    ld c, e                                       ; $6017: $4b
    ei                                            ; $6018: $fb
    or b                                          ; $6019: $b0
    rst $00                                       ; $601a: $c7
    push hl                                       ; $601b: $e5
    jr jr_058_603f                                ; $601c: $18 $21

    ld [bc], a                                    ; $601e: $02
    rst $30                                       ; $601f: $f7
    ld h, h                                       ; $6020: $64
    set 0, d                                      ; $6021: $cb $c2
    sub e                                         ; $6023: $93
    ldh [$da], a                                  ; $6024: $e0 $da
    ld a, c                                       ; $6026: $79
    adc c                                         ; $6027: $89
    cp b                                          ; $6028: $b8
    sub $71                                       ; $6029: $d6 $71
    sbc b                                         ; $602b: $98
    ld e, $33                                     ; $602c: $1e $33
    ld h, $db                                     ; $602e: $26 $db
    ccf                                           ; $6030: $3f
    ld l, $f6                                     ; $6031: $2e $f6
    ld [hl], h                                    ; $6033: $74
    add hl, bc                                    ; $6034: $09
    ld a, [hl+]                                   ; $6035: $2a
    db $e3                                        ; $6036: $e3
    jp Jump_058_695f                              ; $6037: $c3 $5f $69


    and a                                         ; $603a: $a7
    sbc $3a                                       ; $603b: $de $3a
    ld c, $4b                                     ; $603d: $0e $4b

jr_058_603f:
    cp a                                          ; $603f: $bf
    ld a, [c]                                     ; $6040: $f2
    sub d                                         ; $6041: $92
    ld d, a                                       ; $6042: $57
    or e                                          ; $6043: $b3
    inc l                                         ; $6044: $2c
    db $dd                                        ; $6045: $dd
    inc [hl]                                      ; $6046: $34
    ld c, a                                       ; $6047: $4f
    sbc b                                         ; $6048: $98
    dec e                                         ; $6049: $1d
    db $e4                                        ; $604a: $e4
    ld c, e                                       ; $604b: $4b
    add b                                         ; $604c: $80
    ld [$1c7d], sp                                ; $604d: $08 $7d $1c
    ld b, [hl]                                    ; $6050: $46
    rst $20                                       ; $6051: $e7
    ld a, [hl-]                                   ; $6052: $3a
    ld e, l                                       ; $6053: $5d
    pop de                                        ; $6054: $d1
    dec [hl]                                      ; $6055: $35
    ld l, d                                       ; $6056: $6a
    inc [hl]                                      ; $6057: $34
    or l                                          ; $6058: $b5
    sbc b                                         ; $6059: $98
    add l                                         ; $605a: $85
    ld e, a                                       ; $605b: $5f
    db $e4                                        ; $605c: $e4
    ld h, c                                       ; $605d: $61
    xor e                                         ; $605e: $ab
    dec h                                         ; $605f: $25
    ld c, a                                       ; $6060: $4f
    add h                                         ; $6061: $84
    ld a, [hl]                                    ; $6062: $7e
    dec d                                         ; $6063: $15
    inc l                                         ; $6064: $2c
    sbc $17                                       ; $6065: $de $17
    pop af                                        ; $6067: $f1
    cp $b0                                        ; $6068: $fe $b0
    inc bc                                        ; $606a: $03
    ld b, h                                       ; $606b: $44
    ld a, l                                       ; $606c: $7d
    inc e                                         ; $606d: $1c

jr_058_606e:
    and $5a                                       ; $606e: $e6 $5a
    ld a, h                                       ; $6070: $7c
    ld [hl], d                                    ; $6071: $72
    ld h, d                                       ; $6072: $62
    rst $00                                       ; $6073: $c7
    ld c, e                                       ; $6074: $4b
    cp a                                          ; $6075: $bf
    ld a, [c]                                     ; $6076: $f2
    call z, Call_058_7323                         ; $6077: $cc $23 $73
    ld [hl], c                                    ; $607a: $71
    sbc c                                         ; $607b: $99
    ld e, c                                       ; $607c: $59

jr_058_607d:
    dec sp                                        ; $607d: $3b
    ld l, h                                       ; $607e: $6c
    reti                                          ; $607f: $d9


    ld a, c                                       ; $6080: $79
    jp nz, Jump_058_61cb                          ; $6081: $c2 $cb $61

Jump_058_6084:
    rst $20                                       ; $6084: $e7
    rst $28                                       ; $6085: $ef
    cp b                                          ; $6086: $b8
    sub $71                                       ; $6087: $d6 $71
    ld e, b                                       ; $6089: $58
    jp c, $3caa                                   ; $608a: $da $aa $3c

    sbc l                                         ; $608d: $9d
    ld h, a                                       ; $608e: $67
    sub c                                         ; $608f: $91
    sub c                                         ; $6090: $91
    xor [hl]                                      ; $6091: $ae
    sub e                                         ; $6092: $93
    push bc                                       ; $6093: $c5
    or d                                          ; $6094: $b2
    sub e                                         ; $6095: $93
    pop af                                        ; $6096: $f1
    adc $63                                       ; $6097: $ce $63
    ld e, $ce                                     ; $6099: $1e $ce
    jp z, $8dad                                   ; $609b: $ca $ad $8d

    adc $35                                       ; $609e: $ce $35
    db $ec                                        ; $60a0: $ec
    nop                                           ; $60a1: $00
    ld de, $1c7d                                  ; $60a2: $11 $7d $1c
    and [hl]                                      ; $60a5: $a6
    call c, $c738                                 ; $60a6: $dc $38 $c7
    sub c                                         ; $60a9: $91
    call nc, $ab2c                                ; $60aa: $d4 $2c $ab
    call z, $8b2e                                 ; $60ad: $cc $2e $8b
    ld a, [c]                                     ; $60b0: $f2
    ld [hl], h                                    ; $60b1: $74
    ld a, $fc                                     ; $60b2: $3e $fc
    ld e, e                                       ; $60b4: $5b
    ei                                            ; $60b5: $fb
    ld [de], a                                    ; $60b6: $12
    ld h, [hl]                                    ; $60b7: $66
    ld e, c                                       ; $60b8: $59
    ld a, b                                       ; $60b9: $78
    ld [de], a                                    ; $60ba: $12
    or h                                          ; $60bb: $b4
    bit 4, c                                      ; $60bc: $cb $61
    jp z, $d0bc                                   ; $60be: $ca $bc $d0

    ret                                           ; $60c1: $c9


    and l                                         ; $60c2: $a5
    inc a                                         ; $60c3: $3c
    db $ec                                        ; $60c4: $ec
    or b                                          ; $60c5: $b0
    sub e                                         ; $60c6: $93
    ld a, h                                       ; $60c7: $7c
    adc h                                         ; $60c8: $8c
    db $dd                                        ; $60c9: $dd
    or $a7                                        ; $60ca: $f6 $a7
    ld b, a                                       ; $60cc: $47
    daa                                           ; $60cd: $27
    rst $38                                       ; $60ce: $ff
    ld b, b                                       ; $60cf: $40
    inc b                                         ; $60d0: $04
    dec a                                         ; $60d1: $3d
    sbc d                                         ; $60d2: $9a
    db $10                                        ; $60d3: $10
    call c, $187e                                 ; $60d4: $dc $7e $18
    or l                                          ; $60d7: $b5
    db $e3                                        ; $60d8: $e3
    add hl, hl                                    ; $60d9: $29
    rlca                                          ; $60da: $07
    jr c, @-$3e                                   ; $60db: $38 $c0

    ld a, a                                       ; $60dd: $7f
    inc [hl]                                      ; $60de: $34
    ld d, l                                       ; $60df: $55
    ei                                            ; $60e0: $fb
    ld sp, $877a                                  ; $60e1: $31 $7a $87
    ld a, [de]                                    ; $60e4: $1a
    ld a, [hl]                                    ; $60e5: $7e
    ld [de], a                                    ; $60e6: $12
    cp h                                          ; $60e7: $bc
    or h                                          ; $60e8: $b4
    ld c, a                                       ; $60e9: $4f
    ld d, a                                       ; $60ea: $57
    or h                                          ; $60eb: $b4
    jr z, jr_058_607d                             ; $60ec: $28 $8f

    ld [hl], b                                    ; $60ee: $70
    ld c, l                                       ; $60ef: $4d
    ld h, a                                       ; $60f0: $67
    ld b, e                                       ; $60f1: $43
    inc b                                         ; $60f2: $04
    or a                                          ; $60f3: $b7
    ld d, e                                       ; $60f4: $53
    dec [hl]                                      ; $60f5: $35
    ld h, l                                       ; $60f6: $65
    ld de, $1eaf                                  ; $60f7: $11 $af $1e
    add $96                                       ; $60fa: $c6 $96
    ld h, c                                       ; $60fc: $61
    add a                                         ; $60fd: $87
    pop af                                        ; $60fe: $f1
    ld l, a                                       ; $60ff: $6f
    and e                                         ; $6100: $a3
    halt                                          ; $6101: $76

jr_058_6102:
    inc a                                         ; $6102: $3c
    jp c, $9d3c                                   ; $6103: $da $3c $9d

    ld a, e                                       ; $6106: $7b
    ld hl, $38b7                                  ; $6107: $21 $b7 $38
    or [hl]                                       ; $610a: $b6
    rla                                           ; $610b: $17
    ld e, h                                       ; $610c: $5c
    jp c, Jump_058_7d29                           ; $610d: $da $29 $7d

    db $fc                                        ; $6110: $fc
    ld c, b                                       ; $6111: $48
    ld [hl], $dc                                  ; $6112: $36 $dc
    ld a, l                                       ; $6114: $7d
    push de                                       ; $6115: $d5
    sub l                                         ; $6116: $95
    db $ec                                        ; $6117: $ec
    add a                                         ; $6118: $87
    adc [hl]                                      ; $6119: $8e
    dec b                                         ; $611a: $05
    ld [hl+], a                                   ; $611b: $22
    cp l                                          ; $611c: $bd
    or e                                          ; $611d: $b3
    ld [c], a                                     ; $611e: $e2
    pop de                                        ; $611f: $d1
    cp c                                          ; $6120: $b9
    ld c, [hl]                                    ; $6121: $4e
    ld d, a                                       ; $6122: $57
    add h                                         ; $6123: $84
    cp e                                          ; $6124: $bb
    xor a                                         ; $6125: $af
    cp d                                          ; $6126: $ba
    sub d                                         ; $6127: $92
    ld e, c                                       ; $6128: $59
    ld d, $9e                                     ; $6129: $16 $9e
    add h                                         ; $612b: $84
    pop af                                        ; $612c: $f1
    ld l, a                                       ; $612d: $6f
    db $10                                        ; $612e: $10
    ld bc, $b677                                  ; $612f: $01 $77 $b6
    ld d, a                                       ; $6132: $57
    db $ec                                        ; $6133: $ec
    add hl, hl                                    ; $6134: $29
    di                                            ; $6135: $f3
    ld a, [hl]                                    ; $6136: $7e
    adc h                                         ; $6137: $8c
    sbc [hl]                                      ; $6138: $9e
    or d                                          ; $6139: $b2
    adc b                                         ; $613a: $88
    rla                                           ; $613b: $17
    sbc [hl]                                      ; $613c: $9e
    inc b                                         ; $613d: $04
    dec bc                                        ; $613e: $0b
    call c, $96dd                                 ; $613f: $dc $dd $96
    db $fd                                        ; $6142: $fd
    jr jr_058_6102                                ; $6143: $18 $bd

    ldh a, [$97]                                  ; $6145: $f0 $97
    ld c, c                                       ; $6147: $49
    ld [de], a                                    ; $6148: $12
    ld [hl+], a                                   ; $6149: $22
    or a                                          ; $614a: $b7
    rst $20                                       ; $614b: $e7
    ld a, [de]                                    ; $614c: $1a
    dec [hl]                                      ; $614d: $35
    jp c, Jump_000_3cbf                           ; $614e: $da $bf $3c

    push af                                       ; $6151: $f5
    sbc c                                         ; $6152: $99
    ld h, a                                       ; $6153: $67
    pop af                                        ; $6154: $f1
    ld h, c                                       ; $6155: $61
    jp z, $3ca2                                   ; $6156: $ca $a2 $3c

    cp d                                          ; $6159: $ba
    xor e                                         ; $615a: $ab
    ld c, $7b                                     ; $615b: $0e $7b
    ld d, h                                       ; $615d: $54
    adc l                                         ; $615e: $8d
    and h                                         ; $615f: $a4
    sub $fb                                       ; $6160: $d6 $fb
    dec [hl]                                      ; $6162: $35
    ld c, [hl]                                    ; $6163: $4e
    ld [hl], d                                    ; $6164: $72
    or c                                          ; $6165: $b1
    halt                                          ; $6166: $76
    pop hl                                        ; $6167: $e1
    rst $10                                       ; $6168: $d7
    ld a, [hl-]                                   ; $6169: $3a
    ld c, $53                                     ; $616a: $0e $53
    ld c, $b3                                     ; $616c: $0e $b3
    call z, $c3e2                                 ; $616e: $cc $e2 $c3
    sub h                                         ; $6171: $94
    ld b, l                                       ; $6172: $45
    ld a, c                                       ; $6173: $79
    ld h, h                                       ; $6174: $64
    add hl, de                                    ; $6175: $19
    ld a, a                                       ; $6176: $7f
    rst $18                                       ; $6177: $df
    jr nc, @-$0b                                  ; $6178: $30 $f3

    ld a, d                                       ; $617a: $7a
    ld e, [hl]                                    ; $617b: $5e
    sub l                                         ; $617c: $95
    ld h, [hl]                                    ; $617d: $66
    rst $30                                       ; $617e: $f7
    ld h, l                                       ; $617f: $65
    ld h, [hl]                                    ; $6180: $66
    rst $10                                       ; $6181: $d7
    dec h                                         ; $6182: $25
    ld sp, $0f17                                  ; $6183: $31 $17 $0f
    ld e, e                                       ; $6186: $5b
    dec l                                         ; $6187: $2d
    db $ed                                        ; $6188: $ed
    ld [$ecc2], a                                 ; $6189: $ea $c2 $ec
    ld de, $c78e                                  ; $618c: $11 $8e $c7
    or l                                          ; $618f: $b5
    inc e                                         ; $6190: $1c
    add $95                                       ; $6191: $c6 $95
    ld e, e                                       ; $6193: $5b
    jp Jump_058_4916                              ; $6194: $c3 $16 $49


    cp l                                          ; $6197: $bd
    sbc $f5                                       ; $6198: $de $f5
    ld e, b                                       ; $619a: $58
    ld l, a                                       ; $619b: $6f
    ld l, $57                                     ; $619c: $2e $57
    ld l, d                                       ; $619e: $6a
    inc b                                         ; $619f: $04
    db $dd                                        ; $61a0: $dd
    and $25                                       ; $61a1: $e6 $25
    cp a                                          ; $61a3: $bf
    and d                                         ; $61a4: $a2
    ld l, e                                       ; $61a5: $6b
    ccf                                           ; $61a6: $3f
    ld b, [hl]                                    ; $61a7: $46
    rst $28                                       ; $61a8: $ef
    ld h, h                                       ; $61a9: $64
    cp h                                          ; $61aa: $bc
    adc h                                         ; $61ab: $8c
    sub a                                         ; $61ac: $97

Jump_058_61ad:
    adc $d1                                       ; $61ad: $ce $d1
    ld [hl-], a                                   ; $61af: $32
    rst $10                                       ; $61b0: $d7
    ld c, [hl]                                    ; $61b1: $4e
    ld e, a                                       ; $61b2: $5f
    push de                                       ; $61b3: $d5
    ld a, [hl]                                    ; $61b4: $7e
    ld e, b                                       ; $61b5: $58
    inc sp                                        ; $61b6: $33
    di                                            ; $61b7: $f3
    xor b                                         ; $61b8: $a8
    dec [hl]                                      ; $61b9: $35
    rra                                           ; $61ba: $1f
    jp $eef5                                      ; $61bb: $c3 $f5 $ee


    ld [hl], h                                    ; $61be: $74
    push de                                       ; $61bf: $d5
    call z, $0d13                                 ; $61c0: $cc $13 $0d
    di                                            ; $61c3: $f3
    add sp, $5c                                   ; $61c4: $e8 $5c
    and a                                         ; $61c6: $a7
    dec hl                                        ; $61c7: $2b
    ld l, d                                       ; $61c8: $6a
    rst $10                                       ; $61c9: $d7
    di                                            ; $61ca: $f3

Jump_058_61cb:
    xor d                                         ; $61cb: $aa
    inc [hl]                                      ; $61cc: $34
    db $10                                        ; $61cd: $10
    ld bc, $d677                                  ; $61ce: $01 $77 $d6
    adc e                                         ; $61d1: $8b
    pop de                                        ; $61d2: $d1
    or d                                          ; $61d3: $b2
    di                                            ; $61d4: $f3
    sbc c                                         ; $61d5: $99
    ld e, l                                       ; $61d6: $5d
    and e                                         ; $61d7: $a3
    ld [hl], e                                    ; $61d8: $73
    pop af                                        ; $61d9: $f1
    ld a, c                                       ; $61da: $79
    call z, $ab13                                 ; $61db: $cc $13 $ab
    sub c                                         ; $61de: $91
    call nc, Call_000_393a                        ; $61df: $d4 $3a $39
    sbc l                                         ; $61e2: $9d
    or [hl]                                       ; $61e3: $b6
    ret nz                                        ; $61e4: $c0

    db $dd                                        ; $61e5: $dd
    sbc [hl]                                      ; $61e6: $9e
    db $eb                                        ; $61e7: $eb
    ld [hl], h                                    ; $61e8: $74
    push bc                                       ; $61e9: $c5
    db $fd                                        ; $61ea: $fd
    ret nc                                        ; $61eb: $d0

    or c                                          ; $61ec: $b1
    ld l, b                                       ; $61ed: $68
    rst $10                                       ; $61ee: $d7
    di                                            ; $61ef: $f3
    xor d                                         ; $61f0: $aa
    inc [hl]                                      ; $61f1: $34
    db $10                                        ; $61f2: $10
    ld bc, $1f37                                  ; $61f3: $01 $37 $1f
    ld a, [hl-]                                   ; $61f6: $3a
    dec hl                                        ; $61f7: $2b
    scf                                           ; $61f8: $37
    db $fd                                        ; $61f9: $fd
    ld e, h                                       ; $61fa: $5c
    ld d, d                                       ; $61fb: $52
    sbc c                                         ; $61fc: $99
    ld de, $bb00                                  ; $61fd: $11 $00 $bb
    ld a, [hl+]                                   ; $6200: $2a
    ld e, d                                       ; $6201: $5a
    ld a, c                                       ; $6202: $79
    ld [c], a                                     ; $6203: $e2
    db $d3                                        ; $6204: $d3
    ld e, h                                       ; $6205: $5c
    ld [$9f37], sp                                ; $6206: $08 $37 $9f
    ld e, b                                       ; $6209: $58
    sbc c                                         ; $620a: $99
    ld de, $bf77                                  ; $620b: $11 $77 $bf
    and [hl]                                      ; $620e: $a6
    rla                                           ; $620f: $17
    inc hl                                        ; $6210: $23
    scf                                           ; $6211: $37
    or a                                          ; $6212: $b7
    jp nc, $95c5                                  ; $6213: $d2 $c5 $95

    add hl, de                                    ; $6216: $19
    ld bc, $3fbd                                  ; $6217: $01 $bd $3f
    call Call_000_1995                            ; $621a: $cd $95 $19
    ld bc, $af3d                                  ; $621d: $01 $3d $af
    or l                                          ; $6220: $b5
    xor h                                         ; $6221: $ac
    ld e, l                                       ; $6222: $5d
    rst $08                                       ; $6223: $cf
    xor e                                         ; $6224: $ab
    jp nc, Jump_000_0440                          ; $6225: $d2 $40 $04

    rst $30                                       ; $6228: $f7
    ld h, h                                       ; $6229: $64
    ld c, a                                       ; $622a: $4f
    inc [hl]                                      ; $622b: $34
    call z, $f5da                                 ; $622c: $cc $da $f5
    cp h                                          ; $622f: $bc
    ld a, [hl+]                                   ; $6230: $2a
    ld c, l                                       ; $6231: $4d
    cpl                                           ; $6232: $2f
    inc b                                         ; $6233: $04
    dec a                                         ; $6234: $3d
    sbc d                                         ; $6235: $9a
    db $10                                        ; $6236: $10
    call c, $187e                                 ; $6237: $dc $7e $18
    or l                                          ; $623a: $b5
    db $e3                                        ; $623b: $e3
    add hl, hl                                    ; $623c: $29
    rlca                                          ; $623d: $07
    db $ed                                        ; $623e: $ed
    ld a, d                                       ; $623f: $7a
    ld e, [hl]                                    ; $6240: $5e
    sub l                                         ; $6241: $95
    ld b, $22                                     ; $6242: $06 $22
    nop                                           ; $6244: $00
    rst $18                                       ; $6245: $df
    call z, $ff4b                                 ; $6246: $cc $4b $ff
    and [hl]                                      ; $6249: $a6
    inc c                                         ; $624a: $0c
    rst $10                                       ; $624b: $d7
    ld l, l                                       ; $624c: $6d
    ld e, [hl]                                    ; $624d: $5e
    ld a, [c]                                     ; $624e: $f2
    jp z, Jump_058_66b5                           ; $624f: $ca $b5 $66

    add hl, bc                                    ; $6252: $09
    ld h, l                                       ; $6253: $65
    adc b                                         ; $6254: $88
    nop                                           ; $6255: $00
    dec a                                         ; $6256: $3d
    cp $da                                        ; $6257: $fe $da
    push af                                       ; $6259: $f5
    cp h                                          ; $625a: $bc
    ld a, [hl+]                                   ; $625b: $2a
    dec c                                         ; $625c: $0d
    ld b, h                                       ; $625d: $44
    add b                                         ; $625e: $80
    ei                                            ; $625f: $fb
    xor d                                         ; $6260: $aa
    ld de, $1dbf                                  ; $6261: $11 $bf $1d
    or e                                          ; $6264: $b3
    halt                                          ; $6265: $76

jr_058_6266:
    dec a                                         ; $6266: $3d
    xor a                                         ; $6267: $af
    ld c, d                                       ; $6268: $4a
    inc bc                                        ; $6269: $03
    ld de, $fe3d                                  ; $626a: $11 $3d $fe
    rst $20                                       ; $626d: $e7
    adc c                                         ; $626e: $89
    halt                                          ; $626f: $76
    dec a                                         ; $6270: $3d
    xor a                                         ; $6271: $af
    ld c, d                                       ; $6272: $4a
    inc bc                                        ; $6273: $03
    ld de, $b737                                  ; $6274: $11 $37 $b7
    add $5f                                       ; $6277: $c6 $5f
    adc l                                         ; $6279: $8d
    ret nc                                        ; $627a: $d0

    add h                                         ; $627b: $84
    ldh [$f6], a                                  ; $627c: $e0 $f6
    jp Jump_000_1da8                              ; $627e: $c3 $a8 $1d


    ld c, a                                       ; $6281: $4f
    add hl, sp                                    ; $6282: $39
    ld l, b                                       ; $6283: $68
    rst $10                                       ; $6284: $d7
    di                                            ; $6285: $f3
    xor d                                         ; $6286: $aa
    inc [hl]                                      ; $6287: $34
    db $10                                        ; $6288: $10
    ld bc, $e6dd                                  ; $6289: $01 $dd $e6
    cp c                                          ; $628c: $b9
    ld d, $ba                                     ; $628d: $16 $ba
    inc [hl]                                      ; $628f: $34
    and e                                         ; $6290: $a3
    sub [hl]                                      ; $6291: $96
    ld a, [hl]                                    ; $6292: $7e
    push hl                                       ; $6293: $e5
    ld [hl], c                                    ; $6294: $71
    cp l                                          ; $6295: $bd
    inc de                                        ; $6296: $13
    cp l                                          ; $6297: $bd

jr_058_6298:
    jp nc, $b145                                  ; $6298: $d2 $45 $b1

    halt                                          ; $629b: $76
    xor [hl]                                      ; $629c: $ae
    add hl, hl                                    ; $629d: $29
    di                                            ; $629e: $f3
    ld a, [hl]                                    ; $629f: $7e
    adc h                                         ; $62a0: $8c
    xor $85                                       ; $62a1: $ee $85
    nop                                           ; $62a3: $00
    ld a, l                                       ; $62a4: $7d
    inc e                                         ; $62a5: $1c
    and [hl]                                      ; $62a6: $a6
    xor d                                         ; $62a7: $aa
    dec bc                                        ; $62a8: $0b
    ld h, e                                       ; $62a9: $63
    rst $10                                       ; $62aa: $d7
    ld e, [hl]                                    ; $62ab: $5e
    ld l, e                                       ; $62ac: $6b
    db $fc                                        ; $62ad: $fc
    push de                                       ; $62ae: $d5
    ld [hl-], a                                   ; $62af: $32
    ld e, [hl]                                    ; $62b0: $5e
    call nc, $f6b4                                ; $62b1: $d4 $b4 $f6
    dec h                                         ; $62b4: $25
    cp b                                          ; $62b5: $b8
    ldh [$fa], a                                  ; $62b6: $e0 $fa
    jr c, jr_058_6266                             ; $62b8: $38 $ac

    jp hl                                         ; $62ba: $e9


    push hl                                       ; $62bb: $e5
    ld a, [de]                                    ; $62bc: $1a
    ld c, c                                       ; $62bd: $49
    adc l                                         ; $62be: $8d
    ld c, b                                       ; $62bf: $48
    sbc $94                                       ; $62c0: $de $94
    ld a, c                                       ; $62c2: $79
    ld l, c                                       ; $62c3: $69
    or e                                          ; $62c4: $b3
    and [hl]                                      ; $62c5: $a6
    ld a, d                                       ; $62c6: $7a
    ld hl, $cb00                                  ; $62c7: $21 $00 $cb
    ld h, c                                       ; $62ca: $61
    ld [$ed05], a                                 ; $62cb: $ea $05 $ed
    call c, Call_058_6b9a                         ; $62ce: $dc $9a $6b
    ld b, h                                       ; $62d1: $44
    ld a, [c]                                     ; $62d2: $f2
    or h                                          ; $62d3: $b4
    db $eb                                        ; $62d4: $eb
    ld a, c                                       ; $62d5: $79
    ld d, l                                       ; $62d6: $55
    sbc d                                         ; $62d7: $9a
    ld e, [hl]                                    ; $62d8: $5e
    ld [$1c7d], sp                                ; $62d9: $08 $7d $1c
    halt                                          ; $62dc: $76
    and d                                         ; $62dd: $a2
    sbc $9a                                       ; $62de: $de $9a
    rst $10                                       ; $62e0: $d7
    dec h                                         ; $62e1: $25
    daa                                           ; $62e2: $27
    ld a, d                                       ; $62e3: $7a
    dec e                                         ; $62e4: $1d
    add a                                         ; $62e5: $87
    ld b, l                                       ; $62e6: $45
    ld e, l                                       ; $62e7: $5d
    call nz, Call_000_0e6b                        ; $62e8: $c4 $6b $0e
    pop bc                                        ; $62eb: $c1
    jp $fb0e                                      ; $62ec: $c3 $0e $fb


    and c                                         ; $62ef: $a1
    ld h, e                                       ; $62f0: $63
    add c                                         ; $62f1: $81
    ld [$1c7d], sp                                ; $62f2: $08 $7d $1c
    ld d, $a8                                     ; $62f5: $16 $a8
    ld a, [de]                                    ; $62f7: $1a
    halt                                          ; $62f8: $76
    jr jr_058_6298                                ; $62f9: $18 $9d

    adc e                                         ; $62fb: $8b
    rst $08                                       ; $62fc: $cf
    ld h, e                                       ; $62fd: $63
    ld e, [hl]                                    ; $62fe: $5e
    ld a, [c]                                     ; $62ff: $f2
    ld e, e                                       ; $6300: $5b
    dec de                                        ; $6301: $1b
    pop hl                                        ; $6302: $e1
    add d                                         ; $6303: $82
    ld [$1c7d], sp                                ; $6304: $08 $7d $1c
    sub $f4                                       ; $6307: $d6 $f4
    ld [hl], d                                    ; $6309: $72
    adc l                                         ; $630a: $8d
    and h                                         ; $630b: $a4
    ld b, [hl]                                    ; $630c: $46
    inc h                                         ; $630d: $24
    cp c                                          ; $630e: $b9
    sub $f3                                       ; $630f: $d6 $f3
    ld b, d                                       ; $6311: $42
    ld a, l                                       ; $6312: $7d
    dec [hl]                                      ; $6313: $35
    ld [c], a                                     ; $6314: $e2
    push de                                       ; $6315: $d5
    sub d                                         ; $6316: $92
    cp [hl]                                       ; $6317: $be
    adc d                                         ; $6318: $8a
    ld hl, $3d02                                  ; $6319: $21 $02 $3d
    xor a                                         ; $631c: $af
    and [hl]                                      ; $631d: $a6
    db $f4                                        ; $631e: $f4
    dec e                                         ; $631f: $1d
    ld a, c                                       ; $6320: $79
    ld sp, $879a                                  ; $6321: $31 $9a $87
    xor l                                         ; $6324: $ad
    sub $f3                                       ; $6325: $d6 $f3
    ld b, d                                       ; $6327: $42
    ld a, l                                       ; $6328: $7d
    push de                                       ; $6329: $d5
    ld l, e                                       ; $632a: $6b
    dec a                                         ; $632b: $3d
    ld c, a                                       ; $632c: $4f
    ld b, [hl]                                    ; $632d: $46
    cp h                                          ; $632e: $bc
    jp c, $d18f                                   ; $632f: $da $8f $d1

    ld c, e                                       ; $6332: $4b
    ld a, [$1e2a]                                 ; $6333: $fa $2a $1e
    sub $78                                       ; $6336: $d6 $78
    ld a, [hl-]                                   ; $6338: $3a
    ld a, e                                       ; $6339: $7b
    cpl                                           ; $633a: $2f
    add hl, de                                    ; $633b: $19
    and c                                         ; $633c: $a1
    ld h, c                                       ; $633d: $61
    ld a, [hl]                                    ; $633e: $7e
    dec sp                                        ; $633f: $3b
    ld a, a                                       ; $6340: $7f
    ld a, a                                       ; $6341: $7f
    jp z, $f3bc                                   ; $6342: $ca $bc $f3

    rrca                                          ; $6345: $0f
    dec de                                        ; $6346: $1b
    ld [hl+], a                                   ; $6347: $22
    or a                                          ; $6348: $b7
    push de                                       ; $6349: $d5
    ld a, d                                       ; $634a: $7a
    ld e, [hl]                                    ; $634b: $5e
    xor b                                         ; $634c: $a8
    xor a                                         ; $634d: $af
    halt                                          ; $634e: $76
    inc [hl]                                      ; $634f: $34
    or c                                          ; $6350: $b1
    rst $10                                       ; $6351: $d7
    ld a, [$8c38]                                 ; $6352: $fa $38 $8c
    ld a, b                                       ; $6355: $78
    or l                                          ; $6356: $b5
    rra                                           ; $6357: $1f
    and e                                         ; $6358: $a3
    ld [hl], a                                    ; $6359: $77
    call z, $e23c                                 ; $635a: $cc $3c $e2
    pop hl                                        ; $635d: $e1
    sub c                                         ; $635e: $91
    call nc, Call_000_3b2c                        ; $635f: $d4 $2c $3b
    xor h                                         ; $6362: $ac
    adc e                                         ; $6363: $8b
    add d                                         ; $6364: $82
    ld [$c9b7], sp                                ; $6365: $08 $b7 $c9
    ld hl, sp+$4b                                 ; $6368: $f8 $4b
    sbc b                                         ; $636a: $98
    ld l, e                                       ; $636b: $6b
    rst $20                                       ; $636c: $e7
    rst $00                                       ; $636d: $c7
    add sp, -$1e                                  ; $636e: $e8 $e2
    dec de                                        ; $6370: $1b
    sub $f3                                       ; $6371: $d6 $f3
    ld b, d                                       ; $6373: $42
    ld a, l                                       ; $6374: $7d
    dec [hl]                                      ; $6375: $35
    ld [c], a                                     ; $6376: $e2
    push de                                       ; $6377: $d5
    ld a, [hl]                                    ; $6378: $7e
    adc h                                         ; $6379: $8c
    ld e, [hl]                                    ; $637a: $5e
    ld l, h                                       ; $637b: $6c
    ld c, a                                       ; $637c: $4f
    ccf                                           ; $637d: $3f
    ld e, h                                       ; $637e: $5c
    sbc c                                         ; $637f: $99
    adc $e9                                       ; $6380: $ce $e9
    rrca                                          ; $6382: $0f
    rst $10                                       ; $6383: $d7
    di                                            ; $6384: $f3
    ld h, h                                       ; $6385: $64
    xor [hl]                                      ; $6386: $ae
    cp l                                          ; $6387: $bd
    sub $f8                                       ; $6388: $d6 $f8
    xor e                                         ; $638a: $ab
    db $fd                                        ; $638b: $fd
    ld de, $e61a                                  ; $638c: $11 $1a $e6
    or a                                          ; $638f: $b7
    di                                            ; $6390: $f3
    daa                                           ; $6391: $27
    call nc, Call_058_5ce8                        ; $6392: $d4 $e8 $5c
    db $e3                                        ; $6395: $e3
    xor a                                         ; $6396: $af
    inc l                                         ; $6397: $2c
    db $10                                        ; $6398: $10
    ld bc, $af3d                                  ; $6399: $01 $3d $af
    sub $f3                                       ; $639c: $d6 $f3
    ld b, d                                       ; $639e: $42
    ld a, l                                       ; $639f: $7d
    dec [hl]                                      ; $63a0: $35
    ld b, d                                       ; $63a1: $42
    ccf                                           ; $63a2: $3f
    xor a                                         ; $63a3: $af
    jp z, Jump_058_7b87                           ; $63a4: $ca $87 $7b

    ld hl, $5fd7                                  ; $63a7: $21 $d7 $5f
    ccf                                           ; $63aa: $3f
    cp d                                          ; $63ab: $ba
    cp l                                          ; $63ac: $bd
    inc de                                        ; $63ad: $13
    ld e, l                                       ; $63ae: $5d
    jp Jump_000_0356                              ; $63af: $c3 $56 $03


    ld a, [c]                                     ; $63b2: $f2
    ld b, e                                       ; $63b3: $43
    or b                                          ; $63b4: $b0
    add b                                         ; $63b5: $80
    ld [hl], c                                    ; $63b6: $71
    ld d, e                                       ; $63b7: $53
    sub a                                         ; $63b8: $97
    cp b                                          ; $63b9: $b8
    db $fd                                        ; $63ba: $fd
    ld a, b                                       ; $63bb: $78
    ld a, [hl]                                    ; $63bc: $7e
    adc l                                         ; $63bd: $8d
    and h                                         ; $63be: $a4
    ld b, [hl]                                    ; $63bf: $46
    ld l, b                                       ; $63c0: $68
    ld e, d                                       ; $63c1: $5a
    ld a, e                                       ; $63c2: $7b
    jp c, Jump_058_7f5d                           ; $63c3: $da $5d $7f

    db $fd                                        ; $63c6: $fd
    add sp, -$0a                                  ; $63c7: $e8 $f6
    ld c, [hl]                                    ; $63c9: $4e
    ld [hl], h                                    ; $63ca: $74
    dec c                                         ; $63cb: $0d
    ld e, e                                       ; $63cc: $5b
    dec c                                         ; $63cd: $0d
    ret z                                         ; $63ce: $c8

    rrca                                          ; $63cf: $0f
    pop bc                                        ; $63d0: $c1
    ld [bc], a                                    ; $63d1: $02
    add $4d                                       ; $63d2: $c6 $4d
    ld e, l                                       ; $63d4: $5d
    ld [c], a                                     ; $63d5: $e2
    or $e3                                        ; $63d6: $f6 $e3
    ld sp, hl                                     ; $63d8: $f9
    dec b                                         ; $63d9: $05
    ld hl, $7d44                                  ; $63da: $21 $44 $7d
    inc e                                         ; $63dd: $1c
    halt                                          ; $63de: $76
    ld e, [hl]                                    ; $63df: $5e
    ld [hl+], a                                   ; $63e0: $22
    xor [hl]                                      ; $63e1: $ae
    pop hl                                        ; $63e2: $e1
    add a                                         ; $63e3: $87
    pop af                                        ; $63e4: $f1
    or e                                          ; $63e5: $b3
    inc c                                         ; $63e6: $0c
    ld a, a                                       ; $63e7: $7f
    add c                                         ; $63e8: $81
    ld [$3bbd], sp                                ; $63e9: $08 $bd $3b
    ld l, [hl]                                    ; $63ec: $6e
    jp z, $bca2                                   ; $63ed: $ca $a2 $bc

    ld c, h                                       ; $63f0: $4c
    sub d                                         ; $63f1: $92
    pop hl                                        ; $63f2: $e1
    dec h                                         ; $63f3: $25
    ld b, [hl]                                    ; $63f4: $46
    db $dd                                        ; $63f5: $dd
    ld a, [$5f5a]                                 ; $63f6: $fa $5a $5f
    push hl                                       ; $63f9: $e5
    sbc d                                         ; $63fa: $9a
    ld a, c                                       ; $63fb: $79
    and d                                         ; $63fc: $a2
    ld h, c                                       ; $63fd: $61
    ld e, $97                                     ; $63fe: $1e $97
    and [hl]                                      ; $6400: $a6
    dec [hl]                                      ; $6401: $35
    db $d3                                        ; $6402: $d3
    cp c                                          ; $6403: $b9
    or b                                          ; $6404: $b0
    sbc $5e                                       ; $6405: $de $5e
    and l                                         ; $6407: $a5
    ld b, [hl]                                    ; $6408: $46
    ld [hl], a                                    ; $6409: $77
    cp l                                          ; $640a: $bd
    ld d, b                                       ; $640b: $50
    xor [hl]                                      ; $640c: $ae
    dec e                                         ; $640d: $1d
    ld a, [c]                                     ; $640e: $f2
    or a                                          ; $640f: $b7
    ld b, $21                                     ; $6410: $06 $21
    ld b, h                                       ; $6412: $44
    add hl, hl                                    ; $6413: $29
    db $e4                                        ; $6414: $e4
    ld l, a                                       ; $6415: $6f
    ld l, l                                       ; $6416: $6d
    db $ed                                        ; $6417: $ed
    add l                                         ; $6418: $85
    ld [hl-], a                                   ; $6419: $32
    and a                                         ; $641a: $a7
    ld b, [hl]                                    ; $641b: $46
    db $dd                                        ; $641c: $dd
    ld a, [$5788]                                 ; $641d: $fa $88 $57
    ei                                            ; $6420: $fb
    ld sp, $e77a                                  ; $6421: $31 $7a $e7
    pop hl                                        ; $6424: $e1
    ld h, [hl]                                    ; $6425: $66
    sbc $6b                                       ; $6426: $de $6b
    call $c5bb                                    ; $6428: $cd $bb $c5
    push de                                       ; $642b: $d5
    add l                                         ; $642c: $85
    reti                                          ; $642d: $d9


    inc hl                                        ; $642e: $23
    inc e                                         ; $642f: $1c
    adc a                                         ; $6430: $8f
    ld l, e                                       ; $6431: $6b
    add hl, sp                                    ; $6432: $39
    adc h                                         ; $6433: $8c
    dec hl                                        ; $6434: $2b
    or a                                          ; $6435: $b7
    add [hl]                                      ; $6436: $86
    dec l                                         ; $6437: $2d
    ld [hl], d                                    ; $6438: $72
    ld c, c                                       ; $6439: $49
    call z, $3bc5                                 ; $643a: $cc $c5 $3b
    add hl, de                                    ; $643d: $19
    adc a                                         ; $643e: $8f
    rl d                                          ; $643f: $cb $12
    adc $f8                                       ; $6441: $ce $f8
    or a                                          ; $6443: $b7
    add hl, hl                                    ; $6444: $29
    adc e                                         ; $6445: $8b
    ld a, b                                       ; $6446: $78
    ld sp, $f4e3                                  ; $6447: $31 $e3 $f4
    sub a                                         ; $644a: $97
    ld [hl], a                                    ; $644b: $77
    ld a, [hl-]                                   ; $644c: $3a
    ld e, c                                       ; $644d: $59
    inc l                                         ; $644e: $2c
    db $10                                        ; $644f: $10
    ld bc, $fadd                                  ; $6450: $01 $dd $fa
    cp b                                          ; $6453: $b8
    inc l                                         ; $6454: $2c
    pop bc                                        ; $6455: $c1
    dec [hl]                                      ; $6456: $35
    ld l, d                                       ; $6457: $6a
    adc c                                         ; $6458: $89
    ld e, e                                       ; $6459: $5b
    ldh a, [$fa]                                  ; $645a: $f0 $fa
    adc a                                         ; $645c: $8f
    cp c                                          ; $645d: $b9
    cp b                                          ; $645e: $b8
    rst $38                                       ; $645f: $ff
    db $fd                                        ; $6460: $fd
    sbc c                                         ; $6461: $99
    add a                                         ; $6462: $87
    ld e, a                                       ; $6463: $5f
    ld hl, sp+$27                                 ; $6464: $f8 $27
    xor $3c                                       ; $6466: $ee $3c
    adc h                                         ; $6468: $8c
    dec l                                         ; $6469: $2d
    add a                                         ; $646a: $87
    cp e                                          ; $646b: $bb
    ld a, b                                       ; $646c: $78
    ld [hl], h                                    ; $646d: $74
    xor [hl]                                      ; $646e: $ae
    ld d, c                                       ; $646f: $51
    dec sp                                        ; $6470: $3b
    ld h, [hl]                                    ; $6471: $66
    or $32                                        ; $6472: $f6 $32
    ld c, c                                       ; $6474: $49
    adc $b2                                       ; $6475: $ce $b2
    sbc b                                         ; $6477: $98
    adc e                                         ; $6478: $8b
    ld h, e                                       ; $6479: $63
    add $e9                                       ; $647a: $c6 $e9
    cpl                                           ; $647c: $2f
    rst $28                                       ; $647d: $ef
    ld [hl], h                                    ; $647e: $74
    or d                                          ; $647f: $b2
    ld b, b                                       ; $6480: $40
    inc b                                         ; $6481: $04
    db $dd                                        ; $6482: $dd
    ld a, [$5788]                                 ; $6483: $fa $88 $57
    ei                                            ; $6486: $fb
    ld sp, $e77a                                  ; $6487: $31 $7a $e7
    pop hl                                        ; $648a: $e1
    ld h, [hl]                                    ; $648b: $66
    sbc $6b                                       ; $648c: $de $6b
    call $c5bb                                    ; $648e: $cd $bb $c5
    push de                                       ; $6491: $d5
    add l                                         ; $6492: $85
    reti                                          ; $6493: $d9


    inc hl                                        ; $6494: $23
    inc e                                         ; $6495: $1c
    adc a                                         ; $6496: $8f
    ld l, e                                       ; $6497: $6b
    add hl, sp                                    ; $6498: $39
    adc h                                         ; $6499: $8c
    dec hl                                        ; $649a: $2b
    or a                                          ; $649b: $b7
    add [hl]                                      ; $649c: $86
    dec l                                         ; $649d: $2d
    ld [hl], d                                    ; $649e: $72
    ld c, c                                       ; $649f: $49
    call z, $3bc5                                 ; $64a0: $cc $c5 $3b
    add hl, de                                    ; $64a3: $19
    adc a                                         ; $64a4: $8f
    rl d                                          ; $64a5: $cb $12
    adc $f8                                       ; $64a7: $ce $f8
    or a                                          ; $64a9: $b7
    add hl, hl                                    ; $64aa: $29
    adc e                                         ; $64ab: $8b
    ld a, b                                       ; $64ac: $78
    ld sp, $f4e3                                  ; $64ad: $31 $e3 $f4
    sub a                                         ; $64b0: $97
    ld [hl], a                                    ; $64b1: $77
    ld a, [hl-]                                   ; $64b2: $3a
    ld e, c                                       ; $64b3: $59
    inc l                                         ; $64b4: $2c
    jp c, Jump_000_30e5                           ; $64b5: $da $e5 $30

    and l                                         ; $64b8: $a5
    adc a                                         ; $64b9: $8f
    rl d                                          ; $64ba: $cb $12
    ld e, h                                       ; $64bc: $5c
    and e                                         ; $64bd: $a3
    sub [hl]                                      ; $64be: $96
    cp b                                          ; $64bf: $b8
    dec b                                         ; $64c0: $05
    xor a                                         ; $64c1: $af
    rst $38                                       ; $64c2: $ff
    sbc b                                         ; $64c3: $98
    adc e                                         ; $64c4: $8b
    ei                                            ; $64c5: $fb
    rst $18                                       ; $64c6: $df
    sbc a                                         ; $64c7: $9f
    ld a, c                                       ; $64c8: $79
    ld hl, sp-$7b                                 ; $64c9: $f8 $85
    ld a, a                                       ; $64cb: $7f
    ld [c], a                                     ; $64cc: $e2
    adc $c3                                       ; $64cd: $ce $c3
    ret c                                         ; $64cf: $d8

    ld [hl], d                                    ; $64d0: $72
    cp b                                          ; $64d1: $b8
    adc e                                         ; $64d2: $8b
    ld b, a                                       ; $64d3: $47
    rst $20                                       ; $64d4: $e7
    ld a, [de]                                    ; $64d5: $1a
    or l                                          ; $64d6: $b5
    ld h, e                                       ; $64d7: $63
    ld h, [hl]                                    ; $64d8: $66
    cpl                                           ; $64d9: $2f
    sub e                                         ; $64da: $93
    db $e4                                        ; $64db: $e4
    inc l                                         ; $64dc: $2c
    adc e                                         ; $64dd: $8b
    cp c                                          ; $64de: $b9
    jr c, jr_058_6547                             ; $64df: $38 $66

    sbc h                                         ; $64e1: $9c
    cp $f2                                        ; $64e2: $fe $f2
    ld c, [hl]                                    ; $64e4: $4e
    daa                                           ; $64e5: $27
    dec bc                                        ; $64e6: $0b
    ld b, h                                       ; $64e7: $44
    add hl, hl                                    ; $64e8: $29
    ld d, c                                       ; $64e9: $51
    inc hl                                        ; $64ea: $23
    ld l, d                                       ; $64eb: $6a
    jp z, $fc61                                   ; $64ec: $ca $61 $fc

    ld e, e                                       ; $64ef: $5b
    ld a, [$8f45]                                 ; $64f0: $fa $45 $8f
    ld a, a                                       ; $64f3: $7f
    db $db                                        ; $64f4: $db
    or c                                          ; $64f5: $b1
    inc b                                         ; $64f6: $04
    res 0, h                                      ; $64f7: $cb $84
    ld e, d                                       ; $64f9: $5a
    rst $08                                       ; $64fa: $cf
    xor e                                         ; $64fb: $ab
    jp nc, Jump_000_0440                          ; $64fc: $d2 $40 $04

    ld [hl], a                                    ; $64ff: $77
    halt                                          ; $6500: $76
    ld a, [$af2a]                                 ; $6501: $fa $2a $af
    rst $00                                       ; $6504: $c7
    ld d, l                                       ; $6505: $55
    cp e                                          ; $6506: $bb
    cpl                                           ; $6507: $2f
    inc sp                                        ; $6508: $33
    cp e                                          ; $6509: $bb
    or h                                          ; $650a: $b4
    ld [$fadd], sp                                ; $650b: $08 $dd $fa
    adc b                                         ; $650e: $88
    ld d, a                                       ; $650f: $57
    ld c, e                                       ; $6510: $4b
    or a                                          ; $6511: $b7
    rst $08                                       ; $6512: $cf
    cp h                                          ; $6513: $bc
    rla                                           ; $6514: $17
    adc a                                         ; $6515: $8f
    ld c, c                                       ; $6516: $49
    halt                                          ; $6517: $76
    pop af                                        ; $6518: $f1
    ld [de], a                                    ; $6519: $12
    xor e                                         ; $651a: $ab
    push af                                       ; $651b: $f5
    ld a, [hl]                                    ; $651c: $7e
    adc l                                         ; $651d: $8d
    sub e                                         ; $651e: $93
    ld e, h                                       ; $651f: $5c
    cp h                                          ; $6520: $bc
    sbc [hl]                                      ; $6521: $9e
    ld l, $8d                                     ; $6522: $2e $8d
    bit 1, e                                      ; $6524: $cb $4b
    adc c                                         ; $6526: $89
    cp c                                          ; $6527: $b9
    ld a, c                                       ; $6528: $79
    ld [hl], h                                    ; $6529: $74
    xor [hl]                                      ; $652a: $ae
    push af                                       ; $652b: $f5
    jr c, @+$20                                   ; $652c: $38 $1e

    rst $10                                       ; $652e: $d7
    ld e, a                                       ; $652f: $5f
    ld c, $03                                     ; $6530: $0e $03
    ld e, b                                       ; $6532: $58
    cp c                                          ; $6533: $b9
    dec [hl]                                      ; $6534: $35
    sub l                                         ; $6535: $95
    ld sp, $7702                                  ; $6536: $31 $02 $77
    ld e, e                                       ; $6539: $5b
    dec l                                         ; $653a: $2d
    or c                                          ; $653b: $b1

Call_058_653c:
    ld c, b                                       ; $653c: $48
    ei                                            ; $653d: $fb
    ld h, c                                       ; $653e: $61
    call nz, $c76f                                ; $653f: $c4 $6f $c7
    and d                                         ; $6542: $a2
    ld b, l                                       ; $6543: $45
    scf                                           ; $6544: $37
    or a                                          ; $6545: $b7
    or h                                          ; $6546: $b4

jr_058_6547:
    ld a, [hl]                                    ; $6547: $7e
    sub $a3                                       ; $6548: $d6 $a3
    db $e3                                        ; $654a: $e3
    and $23                                       ; $654b: $e6 $23
    ld a, d                                       ; $654d: $7a
    dec d                                         ; $654e: $15
    ld [bc], a                                    ; $654f: $02
    push hl                                       ; $6550: $e5
    ret z                                         ; $6551: $c8

    cp c                                          ; $6552: $b9
    db $10                                        ; $6553: $10
    db $dd                                        ; $6554: $dd
    ld a, [$2bb0]                                 ; $6555: $fa $b0 $2b
    cp d                                          ; $6558: $ba
    ld h, [hl]                                    ; $6559: $66
    ld e, c                                       ; $655a: $59
    ld d, a                                       ; $655b: $57
    sub h                                         ; $655c: $94
    cpl                                           ; $655d: $2f
    ld h, c                                       ; $655e: $61
    cpl                                           ; $655f: $2f
    sbc c                                         ; $6560: $99
    push bc                                       ; $6561: $c5
    dec d                                         ; $6562: $15
    ld a, $44                                     ; $6563: $3e $44
    add b                                         ; $6565: $80
    ld l, b                                       ; $6566: $68
    ld a, [hl-]                                   ; $6567: $3a
    push af                                       ; $6568: $f5
    ld d, d                                       ; $6569: $52
    xor b                                         ; $656a: $a8
    add hl, sp                                    ; $656b: $39
    ld b, [hl]                                    ; $656c: $46
    scf                                           ; $656d: $37
    add [hl]                                      ; $656e: $86
    ld [$b5b7], sp                                ; $656f: $08 $b7 $b5
    rra                                           ; $6572: $1f
    rst $08                                       ; $6573: $cf
    xor a                                         ; $6574: $af
    ld c, h                                       ; $6575: $4c
    sub d                                         ; $6576: $92
    daa                                           ; $6577: $27
    sub $a7                                       ; $6578: $d6 $a7
    add hl, de                                    ; $657a: $19
    ld bc, $b7b7                                  ; $657b: $01 $b7 $b7
    ld c, a                                       ; $657e: $4f
    ld e, d                                       ; $657f: $5a
    ld d, h                                       ; $6580: $54
    ld b, [hl]                                    ; $6581: $46
    add b                                         ; $6582: $80
    ld e, l                                       ; $6583: $5d
    ld hl, sp-$49                                 ; $6584: $f8 $b7
    or $b3                                        ; $6586: $f6 $b3
    ld a, [hl]                                    ; $6588: $7e
    db $10                                        ; $6589: $10
    add b                                         ; $658a: $80
    ld e, l                                       ; $658b: $5d
    ld [$dfe3], a                                 ; $658c: $ea $e3 $df
    jp c, $facf                                   ; $658f: $da $cf $fa

    ld b, c                                       ; $6592: $41
    ld [hl], a                                    ; $6593: $77
    ld [$8b68], sp                                ; $6594: $08 $68 $8b
    ld a, [$0119]                                 ; $6597: $fa $19 $01
    ld b, e                                       ; $659a: $43
    ld b, e                                       ; $659b: $43
    ld b, e                                       ; $659c: $43
    ld b, e                                       ; $659d: $43
    ld b, e                                       ; $659e: $43
    ld b, e                                       ; $659f: $43
    ld b, e                                       ; $65a0: $43
    ld b, e                                       ; $65a1: $43
    ld b, e                                       ; $65a2: $43
    ld b, e                                       ; $65a3: $43
    ld b, e                                       ; $65a4: $43
    ld b, e                                       ; $65a5: $43
    ld b, e                                       ; $65a6: $43
    ld b, e                                       ; $65a7: $43
    ld b, e                                       ; $65a8: $43
    ld b, e                                       ; $65a9: $43
    ld b, e                                       ; $65aa: $43
    ld b, e                                       ; $65ab: $43
    ld b, e                                       ; $65ac: $43
    ld b, e                                       ; $65ad: $43
    ld b, e                                       ; $65ae: $43
    ld b, e                                       ; $65af: $43
    ld b, e                                       ; $65b0: $43
    ld b, e                                       ; $65b1: $43
    ld b, e                                       ; $65b2: $43
    ld b, e                                       ; $65b3: $43
    ld b, e                                       ; $65b4: $43
    ld b, e                                       ; $65b5: $43
    ld b, e                                       ; $65b6: $43
    ld b, e                                       ; $65b7: $43
    ld b, e                                       ; $65b8: $43
    ld b, e                                       ; $65b9: $43
    ld b, e                                       ; $65ba: $43
    ld b, e                                       ; $65bb: $43
    ld b, e                                       ; $65bc: $43
    ld b, e                                       ; $65bd: $43
    ld b, e                                       ; $65be: $43
    ld b, e                                       ; $65bf: $43
    ld b, e                                       ; $65c0: $43
    ld b, e                                       ; $65c1: $43
    ld b, e                                       ; $65c2: $43
    ld b, e                                       ; $65c3: $43
    ld [hl], a                                    ; $65c4: $77

Call_058_65c5:
    ld h, a                                       ; $65c5: $67
    ld c, $9f                                     ; $65c6: $0e $9f
    ld h, [hl]                                    ; $65c8: $66
    inc b                                         ; $65c9: $04
    ld b, b                                       ; $65ca: $40
    ld a, [hl]                                    ; $65cb: $7e
    ld [$3016], sp                                ; $65cc: $08 $16 $30
    ld l, [hl]                                    ; $65cf: $6e
    ld [$fc12], a                                 ; $65d0: $ea $12 $fc
    db $e3                                        ; $65d3: $e3
    ld h, c                                       ; $65d4: $61
    cp l                                          ; $65d5: $bd
    db $10                                        ; $65d6: $10
    or a                                          ; $65d7: $b7
    ld hl, sp-$50                                 ; $65d8: $f8 $b0
    rlca                                          ; $65da: $07
    db $e4                                        ; $65db: $e4
    add a                                         ; $65dc: $87
    ld h, b                                       ; $65dd: $60
    ld bc, $a6e3                                  ; $65de: $01 $e3 $a6
    db $10                                        ; $65e1: $10
    add b                                         ; $65e2: $80
    ld b, d                                       ; $65e3: $42
    ld sp, hl                                     ; $65e4: $f9
    inc e                                         ; $65e5: $1c
    ld d, l                                       ; $65e6: $55
    ld h, $5d                                     ; $65e7: $26 $5d
    sub a                                         ; $65e9: $97
    ldh [$1f], a                                  ; $65ea: $e0 $1f
    rrca                                          ; $65ec: $0f

Call_058_65ed:
    db $eb                                        ; $65ed: $eb
    add l                                         ; $65ee: $85
    nop                                           ; $65ef: $00
    add b                                         ; $65f0: $80
    ccf                                           ; $65f1: $3f
    ccf                                           ; $65f2: $3f
    db $fc                                        ; $65f3: $fc
    db $e3                                        ; $65f4: $e3
    ld h, c                                       ; $65f5: $61
    cp l                                          ; $65f6: $bd
    db $10                                        ; $65f7: $10
    ld [hl], a                                    ; $65f8: $77
    ld h, $3f                                     ; $65f9: $26 $3f
    add $4c                                       ; $65fb: $c6 $4c
    sub d                                         ; $65fd: $92
    ld l, $d2                                     ; $65fe: $2e $d2
    inc h                                         ; $6600: $24
    jp hl                                         ; $6601: $e9


    ld b, d                                       ; $6602: $42
    or a                                          ; $6603: $b7
    call nc, $9ddb                                ; $6604: $d4 $db $9d
    ret                                           ; $6607: $c9


    adc a                                         ; $6608: $8f
    ld sp, $a493                                  ; $6609: $31 $93 $a4
    adc e                                         ; $660c: $8b
    inc [hl]                                      ; $660d: $34
    ld c, c                                       ; $660e: $49
    cp d                                          ; $660f: $ba
    db $10                                        ; $6610: $10
    ld b, e                                       ; $6611: $43
    ld b, e                                       ; $6612: $43
    ld b, e                                       ; $6613: $43
    ld b, e                                       ; $6614: $43
    ld b, e                                       ; $6615: $43
    ld b, e                                       ; $6616: $43
    ld b, e                                       ; $6617: $43
    ld b, e                                       ; $6618: $43
    ld b, e                                       ; $6619: $43
    ld b, e                                       ; $661a: $43
    ld b, e                                       ; $661b: $43
    or a                                          ; $661c: $b7
    rst $20                                       ; $661d: $e7
    ld c, d                                       ; $661e: $4a
    ccf                                           ; $661f: $3f
    ld de, $e3b7                                  ; $6620: $11 $b7 $e3
    sub e                                         ; $6623: $93
    adc $11                                       ; $6624: $ce $11
    ld bc, $4343                                  ; $6626: $01 $43 $43
    ld b, e                                       ; $6629: $43
    ld b, e                                       ; $662a: $43
    ld b, e                                       ; $662b: $43
    ld b, e                                       ; $662c: $43
    ld b, e                                       ; $662d: $43
    ld b, e                                       ; $662e: $43
    ld b, e                                       ; $662f: $43
    ld b, e                                       ; $6630: $43
    ld b, e                                       ; $6631: $43
    ld b, e                                       ; $6632: $43
    ld b, e                                       ; $6633: $43
    ld b, e                                       ; $6634: $43
    ld b, e                                       ; $6635: $43
    ld b, e                                       ; $6636: $43
    ld b, e                                       ; $6637: $43
    ld b, e                                       ; $6638: $43
    ld b, e                                       ; $6639: $43
    ld b, e                                       ; $663a: $43
    ld b, e                                       ; $663b: $43
    scf                                           ; $663c: $37
    or a                                          ; $663d: $b7
    halt                                          ; $663e: $76
    ldh a, [$8b]                                  ; $663f: $f0 $8b
    jp hl                                         ; $6641: $e9


    ld l, $11                                     ; $6642: $2e $11
    rla                                           ; $6644: $17
    ld [bc], a                                    ; $6645: $02
    ld b, e                                       ; $6646: $43
    or a                                          ; $6647: $b7
    ld hl, sp-$50                                 ; $6648: $f8 $b0
    ld [hl], a                                    ; $664a: $77
    bit 5, e                                      ; $664b: $cb $6b
    dec l                                         ; $664d: $2d
    ld c, e                                       ; $664e: $4b
    ld h, b                                       ; $664f: $60
    ld c, l                                       ; $6650: $4d
    ld [$c63a], sp                                ; $6651: $08 $3a $c6
    rra                                           ; $6654: $1f
    ld bc, $d677                                  ; $6655: $01 $77 $d6
    sub e                                         ; $6658: $93
    rst $28                                       ; $6659: $ef
    ld hl, sp-$5e                                 ; $665a: $f8 $a2
    dec bc                                        ; $665c: $0b
    ld bc, $8e3d                                  ; $665d: $01 $3d $8e
    rst $00                                       ; $6660: $c7
    or c                                          ; $6661: $b1
    db $e3                                        ; $6662: $e3
    ld a, b                                       ; $6663: $78
    db $10                                        ; $6664: $10
    ld [hl], a                                    ; $6665: $77
    cp l                                          ; $6666: $bd
    ld e, b                                       ; $6667: $58
    rst $38                                       ; $6668: $ff
    inc e                                         ; $6669: $1c
    ld a, [hl]                                    ; $666a: $7e
    adc c                                         ; $666b: $89
    dec bc                                        ; $666c: $0b
    ld bc, $4343                                  ; $666d: $01 $43 $43
    ld b, e                                       ; $6670: $43
    ld b, e                                       ; $6671: $43
    ld b, e                                       ; $6672: $43
    ld b, e                                       ; $6673: $43
    ld b, e                                       ; $6674: $43
    ld b, e                                       ; $6675: $43
    ld b, e                                       ; $6676: $43
    ld b, e                                       ; $6677: $43
    ld b, e                                       ; $6678: $43
    ld b, e                                       ; $6679: $43
    ld b, e                                       ; $667a: $43
    ld b, e                                       ; $667b: $43
    ld b, e                                       ; $667c: $43
    ld b, e                                       ; $667d: $43
    ld b, e                                       ; $667e: $43
    ld b, e                                       ; $667f: $43
    or a                                          ; $6680: $b7
    or a                                          ; $6681: $b7
    ld l, $0d                                     ; $6682: $2e $0d
    dec de                                        ; $6684: $1b
    ld bc, $4343                                  ; $6685: $01 $43 $43
    ld b, e                                       ; $6688: $43
    ld b, e                                       ; $6689: $43
    ld b, e                                       ; $668a: $43
    rst $38                                       ; $668b: $ff
    rst $38                                       ; $668c: $ff
    rst $38                                       ; $668d: $ff
    rst $38                                       ; $668e: $ff
    rst $38                                       ; $668f: $ff
    rst $38                                       ; $6690: $ff
    rst $38                                       ; $6691: $ff
    rst $38                                       ; $6692: $ff
    rst $38                                       ; $6693: $ff
    rst $38                                       ; $6694: $ff
    rst $38                                       ; $6695: $ff
    rst $38                                       ; $6696: $ff
    rst $38                                       ; $6697: $ff
    rst $38                                       ; $6698: $ff
    rst $38                                       ; $6699: $ff
    rst $38                                       ; $669a: $ff
    rst $38                                       ; $669b: $ff
    rst $38                                       ; $669c: $ff
    rst $38                                       ; $669d: $ff
    rst $38                                       ; $669e: $ff
    rst $38                                       ; $669f: $ff
    rst $38                                       ; $66a0: $ff
    rst $38                                       ; $66a1: $ff
    rst $38                                       ; $66a2: $ff
    rst $38                                       ; $66a3: $ff
    rst $38                                       ; $66a4: $ff
    rst $38                                       ; $66a5: $ff
    rst $38                                       ; $66a6: $ff
    rst $38                                       ; $66a7: $ff
    rst $38                                       ; $66a8: $ff
    rst $38                                       ; $66a9: $ff
    rst $38                                       ; $66aa: $ff
    rst $38                                       ; $66ab: $ff
    rst $38                                       ; $66ac: $ff
    rst $38                                       ; $66ad: $ff
    rst $38                                       ; $66ae: $ff
    rst $38                                       ; $66af: $ff
    rst $38                                       ; $66b0: $ff
    rst $38                                       ; $66b1: $ff
    rst $38                                       ; $66b2: $ff
    rst $38                                       ; $66b3: $ff
    rst $38                                       ; $66b4: $ff

Jump_058_66b5:
    rst $38                                       ; $66b5: $ff
    rst $38                                       ; $66b6: $ff
    rst $38                                       ; $66b7: $ff
    rst $38                                       ; $66b8: $ff
    rst $38                                       ; $66b9: $ff
    rst $38                                       ; $66ba: $ff
    rst $38                                       ; $66bb: $ff
    rst $38                                       ; $66bc: $ff
    rst $38                                       ; $66bd: $ff
    rst $38                                       ; $66be: $ff
    rst $38                                       ; $66bf: $ff
    rst $38                                       ; $66c0: $ff
    rst $38                                       ; $66c1: $ff
    rst $38                                       ; $66c2: $ff
    rst $38                                       ; $66c3: $ff
    rst $38                                       ; $66c4: $ff
    rst $38                                       ; $66c5: $ff
    rst $38                                       ; $66c6: $ff
    rst $38                                       ; $66c7: $ff
    rst $38                                       ; $66c8: $ff
    rst $38                                       ; $66c9: $ff
    rst $38                                       ; $66ca: $ff
    rst $38                                       ; $66cb: $ff
    rst $38                                       ; $66cc: $ff
    rst $38                                       ; $66cd: $ff
    rst $38                                       ; $66ce: $ff
    rst $38                                       ; $66cf: $ff
    rst $38                                       ; $66d0: $ff
    rst $38                                       ; $66d1: $ff
    rst $38                                       ; $66d2: $ff
    rst $38                                       ; $66d3: $ff
    rst $38                                       ; $66d4: $ff
    rst $38                                       ; $66d5: $ff
    rst $38                                       ; $66d6: $ff
    rst $38                                       ; $66d7: $ff
    rst $38                                       ; $66d8: $ff
    rst $38                                       ; $66d9: $ff
    rst $38                                       ; $66da: $ff
    rst $38                                       ; $66db: $ff
    rst $38                                       ; $66dc: $ff
    rst $38                                       ; $66dd: $ff
    rst $38                                       ; $66de: $ff
    rst $38                                       ; $66df: $ff
    rst $38                                       ; $66e0: $ff
    rst $38                                       ; $66e1: $ff
    rst $38                                       ; $66e2: $ff
    rst $38                                       ; $66e3: $ff
    rst $38                                       ; $66e4: $ff
    rst $38                                       ; $66e5: $ff
    rst $38                                       ; $66e6: $ff
    rst $38                                       ; $66e7: $ff
    rst $38                                       ; $66e8: $ff
    rst $38                                       ; $66e9: $ff
    rst $38                                       ; $66ea: $ff
    rst $38                                       ; $66eb: $ff
    rst $38                                       ; $66ec: $ff
    rst $38                                       ; $66ed: $ff
    rst $38                                       ; $66ee: $ff
    rst $38                                       ; $66ef: $ff
    rst $38                                       ; $66f0: $ff
    rst $38                                       ; $66f1: $ff
    rst $38                                       ; $66f2: $ff
    rst $38                                       ; $66f3: $ff
    rst $38                                       ; $66f4: $ff
    rst $38                                       ; $66f5: $ff
    rst $38                                       ; $66f6: $ff
    rst $38                                       ; $66f7: $ff
    rst $38                                       ; $66f8: $ff
    rst $38                                       ; $66f9: $ff
    rst $38                                       ; $66fa: $ff
    rst $38                                       ; $66fb: $ff
    rst $38                                       ; $66fc: $ff
    rst $38                                       ; $66fd: $ff
    rst $38                                       ; $66fe: $ff
    rst $38                                       ; $66ff: $ff
    rst $38                                       ; $6700: $ff
    rst $38                                       ; $6701: $ff
    rst $38                                       ; $6702: $ff
    rst $38                                       ; $6703: $ff
    rst $38                                       ; $6704: $ff
    rst $38                                       ; $6705: $ff
    rst $38                                       ; $6706: $ff
    rst $38                                       ; $6707: $ff
    rst $38                                       ; $6708: $ff
    rst $38                                       ; $6709: $ff
    rst $38                                       ; $670a: $ff
    rst $38                                       ; $670b: $ff
    rst $38                                       ; $670c: $ff
    rst $38                                       ; $670d: $ff
    rst $38                                       ; $670e: $ff
    rst $38                                       ; $670f: $ff
    rst $38                                       ; $6710: $ff
    rst $38                                       ; $6711: $ff
    rst $38                                       ; $6712: $ff
    rst $38                                       ; $6713: $ff
    rst $38                                       ; $6714: $ff
    rst $38                                       ; $6715: $ff
    rst $38                                       ; $6716: $ff
    rst $38                                       ; $6717: $ff
    rst $38                                       ; $6718: $ff
    rst $38                                       ; $6719: $ff
    rst $38                                       ; $671a: $ff
    rst $38                                       ; $671b: $ff
    rst $38                                       ; $671c: $ff
    rst $38                                       ; $671d: $ff
    rst $38                                       ; $671e: $ff
    rst $38                                       ; $671f: $ff
    rst $38                                       ; $6720: $ff
    rst $38                                       ; $6721: $ff
    rst $38                                       ; $6722: $ff
    rst $38                                       ; $6723: $ff
    rst $38                                       ; $6724: $ff
    rst $38                                       ; $6725: $ff
    rst $38                                       ; $6726: $ff
    rst $38                                       ; $6727: $ff
    rst $38                                       ; $6728: $ff
    rst $38                                       ; $6729: $ff
    rst $38                                       ; $672a: $ff
    rst $38                                       ; $672b: $ff
    rst $38                                       ; $672c: $ff
    rst $38                                       ; $672d: $ff
    rst $38                                       ; $672e: $ff
    rst $38                                       ; $672f: $ff
    rst $38                                       ; $6730: $ff
    rst $38                                       ; $6731: $ff
    rst $38                                       ; $6732: $ff
    rst $38                                       ; $6733: $ff
    rst $38                                       ; $6734: $ff
    rst $38                                       ; $6735: $ff
    rst $38                                       ; $6736: $ff
    rst $38                                       ; $6737: $ff
    rst $38                                       ; $6738: $ff
    rst $38                                       ; $6739: $ff
    rst $38                                       ; $673a: $ff
    rst $38                                       ; $673b: $ff
    rst $38                                       ; $673c: $ff
    rst $38                                       ; $673d: $ff
    rst $38                                       ; $673e: $ff
    rst $38                                       ; $673f: $ff
    rst $38                                       ; $6740: $ff
    rst $38                                       ; $6741: $ff
    rst $38                                       ; $6742: $ff
    rst $38                                       ; $6743: $ff
    rst $38                                       ; $6744: $ff
    rst $38                                       ; $6745: $ff
    rst $38                                       ; $6746: $ff
    rst $38                                       ; $6747: $ff
    rst $38                                       ; $6748: $ff
    rst $38                                       ; $6749: $ff
    rst $38                                       ; $674a: $ff
    rst $38                                       ; $674b: $ff
    rst $38                                       ; $674c: $ff
    rst $38                                       ; $674d: $ff
    rst $38                                       ; $674e: $ff
    rst $38                                       ; $674f: $ff
    rst $38                                       ; $6750: $ff
    rst $38                                       ; $6751: $ff
    rst $38                                       ; $6752: $ff
    rst $38                                       ; $6753: $ff
    rst $38                                       ; $6754: $ff
    rst $38                                       ; $6755: $ff
    rst $38                                       ; $6756: $ff
    rst $38                                       ; $6757: $ff
    rst $38                                       ; $6758: $ff
    rst $38                                       ; $6759: $ff
    rst $38                                       ; $675a: $ff
    rst $38                                       ; $675b: $ff
    rst $38                                       ; $675c: $ff
    rst $38                                       ; $675d: $ff
    rst $38                                       ; $675e: $ff
    rst $38                                       ; $675f: $ff
    rst $38                                       ; $6760: $ff
    rst $38                                       ; $6761: $ff
    rst $38                                       ; $6762: $ff
    rst $38                                       ; $6763: $ff
    rst $38                                       ; $6764: $ff
    rst $38                                       ; $6765: $ff
    rst $38                                       ; $6766: $ff
    rst $38                                       ; $6767: $ff
    rst $38                                       ; $6768: $ff
    rst $38                                       ; $6769: $ff
    rst $38                                       ; $676a: $ff
    rst $38                                       ; $676b: $ff
    rst $38                                       ; $676c: $ff
    rst $38                                       ; $676d: $ff
    rst $38                                       ; $676e: $ff
    rst $38                                       ; $676f: $ff
    rst $38                                       ; $6770: $ff
    rst $38                                       ; $6771: $ff
    rst $38                                       ; $6772: $ff
    rst $38                                       ; $6773: $ff
    rst $38                                       ; $6774: $ff
    rst $38                                       ; $6775: $ff
    rst $38                                       ; $6776: $ff
    rst $38                                       ; $6777: $ff
    rst $38                                       ; $6778: $ff
    rst $38                                       ; $6779: $ff
    rst $38                                       ; $677a: $ff
    rst $38                                       ; $677b: $ff
    rst $38                                       ; $677c: $ff
    rst $38                                       ; $677d: $ff
    rst $38                                       ; $677e: $ff
    rst $38                                       ; $677f: $ff
    rst $38                                       ; $6780: $ff
    rst $38                                       ; $6781: $ff
    rst $38                                       ; $6782: $ff
    rst $38                                       ; $6783: $ff
    rst $38                                       ; $6784: $ff
    rst $38                                       ; $6785: $ff
    rst $38                                       ; $6786: $ff
    rst $38                                       ; $6787: $ff
    rst $38                                       ; $6788: $ff
    rst $38                                       ; $6789: $ff
    rst $38                                       ; $678a: $ff
    rst $38                                       ; $678b: $ff
    rst $38                                       ; $678c: $ff
    rst $38                                       ; $678d: $ff
    rst $38                                       ; $678e: $ff
    rst $38                                       ; $678f: $ff
    rst $38                                       ; $6790: $ff
    rst $38                                       ; $6791: $ff
    rst $38                                       ; $6792: $ff
    rst $38                                       ; $6793: $ff
    rst $38                                       ; $6794: $ff
    rst $38                                       ; $6795: $ff
    rst $38                                       ; $6796: $ff
    rst $38                                       ; $6797: $ff
    rst $38                                       ; $6798: $ff
    rst $38                                       ; $6799: $ff
    rst $38                                       ; $679a: $ff
    rst $38                                       ; $679b: $ff
    rst $38                                       ; $679c: $ff
    rst $38                                       ; $679d: $ff
    rst $38                                       ; $679e: $ff
    rst $38                                       ; $679f: $ff
    rst $38                                       ; $67a0: $ff
    rst $38                                       ; $67a1: $ff
    rst $38                                       ; $67a2: $ff
    rst $38                                       ; $67a3: $ff
    rst $38                                       ; $67a4: $ff
    rst $38                                       ; $67a5: $ff
    rst $38                                       ; $67a6: $ff
    rst $38                                       ; $67a7: $ff
    rst $38                                       ; $67a8: $ff
    rst $38                                       ; $67a9: $ff
    rst $38                                       ; $67aa: $ff
    rst $38                                       ; $67ab: $ff
    rst $38                                       ; $67ac: $ff
    rst $38                                       ; $67ad: $ff
    rst $38                                       ; $67ae: $ff
    rst $38                                       ; $67af: $ff
    rst $38                                       ; $67b0: $ff
    rst $38                                       ; $67b1: $ff
    rst $38                                       ; $67b2: $ff
    rst $38                                       ; $67b3: $ff
    rst $38                                       ; $67b4: $ff
    rst $38                                       ; $67b5: $ff
    rst $38                                       ; $67b6: $ff
    rst $38                                       ; $67b7: $ff
    rst $38                                       ; $67b8: $ff
    rst $38                                       ; $67b9: $ff
    rst $38                                       ; $67ba: $ff
    rst $38                                       ; $67bb: $ff
    rst $38                                       ; $67bc: $ff
    rst $38                                       ; $67bd: $ff
    rst $38                                       ; $67be: $ff
    rst $38                                       ; $67bf: $ff
    rst $38                                       ; $67c0: $ff
    rst $38                                       ; $67c1: $ff
    rst $38                                       ; $67c2: $ff
    rst $38                                       ; $67c3: $ff
    rst $38                                       ; $67c4: $ff
    rst $38                                       ; $67c5: $ff
    rst $38                                       ; $67c6: $ff
    rst $38                                       ; $67c7: $ff
    rst $38                                       ; $67c8: $ff
    rst $38                                       ; $67c9: $ff
    rst $38                                       ; $67ca: $ff
    rst $38                                       ; $67cb: $ff
    rst $38                                       ; $67cc: $ff
    rst $38                                       ; $67cd: $ff
    rst $38                                       ; $67ce: $ff
    rst $38                                       ; $67cf: $ff
    rst $38                                       ; $67d0: $ff
    rst $38                                       ; $67d1: $ff
    rst $38                                       ; $67d2: $ff
    rst $38                                       ; $67d3: $ff
    rst $38                                       ; $67d4: $ff
    rst $38                                       ; $67d5: $ff
    rst $38                                       ; $67d6: $ff
    rst $38                                       ; $67d7: $ff
    rst $38                                       ; $67d8: $ff
    rst $38                                       ; $67d9: $ff
    rst $38                                       ; $67da: $ff
    rst $38                                       ; $67db: $ff
    rst $38                                       ; $67dc: $ff
    rst $38                                       ; $67dd: $ff
    rst $38                                       ; $67de: $ff
    rst $38                                       ; $67df: $ff
    rst $38                                       ; $67e0: $ff
    rst $38                                       ; $67e1: $ff
    rst $38                                       ; $67e2: $ff
    rst $38                                       ; $67e3: $ff
    rst $38                                       ; $67e4: $ff
    rst $38                                       ; $67e5: $ff
    rst $38                                       ; $67e6: $ff
    rst $38                                       ; $67e7: $ff
    rst $38                                       ; $67e8: $ff
    rst $38                                       ; $67e9: $ff
    rst $38                                       ; $67ea: $ff
    rst $38                                       ; $67eb: $ff
    rst $38                                       ; $67ec: $ff
    rst $38                                       ; $67ed: $ff
    rst $38                                       ; $67ee: $ff
    rst $38                                       ; $67ef: $ff
    rst $38                                       ; $67f0: $ff
    rst $38                                       ; $67f1: $ff
    rst $38                                       ; $67f2: $ff
    rst $38                                       ; $67f3: $ff
    rst $38                                       ; $67f4: $ff
    rst $38                                       ; $67f5: $ff
    rst $38                                       ; $67f6: $ff
    rst $38                                       ; $67f7: $ff
    rst $38                                       ; $67f8: $ff
    rst $38                                       ; $67f9: $ff
    rst $38                                       ; $67fa: $ff
    rst $38                                       ; $67fb: $ff
    rst $38                                       ; $67fc: $ff
    rst $38                                       ; $67fd: $ff
    rst $38                                       ; $67fe: $ff
    rst $38                                       ; $67ff: $ff
    rst $38                                       ; $6800: $ff
    rst $38                                       ; $6801: $ff
    rst $38                                       ; $6802: $ff
    rst $38                                       ; $6803: $ff
    rst $38                                       ; $6804: $ff
    rst $38                                       ; $6805: $ff
    rst $38                                       ; $6806: $ff
    rst $38                                       ; $6807: $ff
    rst $38                                       ; $6808: $ff
    rst $38                                       ; $6809: $ff
    rst $38                                       ; $680a: $ff
    rst $38                                       ; $680b: $ff
    rst $38                                       ; $680c: $ff
    rst $38                                       ; $680d: $ff
    rst $38                                       ; $680e: $ff
    rst $38                                       ; $680f: $ff
    rst $38                                       ; $6810: $ff
    rst $38                                       ; $6811: $ff
    rst $38                                       ; $6812: $ff
    rst $38                                       ; $6813: $ff
    rst $38                                       ; $6814: $ff
    rst $38                                       ; $6815: $ff
    rst $38                                       ; $6816: $ff
    rst $38                                       ; $6817: $ff
    rst $38                                       ; $6818: $ff
    rst $38                                       ; $6819: $ff
    rst $38                                       ; $681a: $ff
    rst $38                                       ; $681b: $ff
    rst $38                                       ; $681c: $ff
    rst $38                                       ; $681d: $ff
    rst $38                                       ; $681e: $ff
    rst $38                                       ; $681f: $ff
    rst $38                                       ; $6820: $ff
    rst $38                                       ; $6821: $ff
    rst $38                                       ; $6822: $ff
    rst $38                                       ; $6823: $ff
    rst $38                                       ; $6824: $ff
    rst $38                                       ; $6825: $ff
    rst $38                                       ; $6826: $ff
    rst $38                                       ; $6827: $ff
    rst $38                                       ; $6828: $ff
    rst $38                                       ; $6829: $ff
    rst $38                                       ; $682a: $ff
    rst $38                                       ; $682b: $ff
    rst $38                                       ; $682c: $ff
    rst $38                                       ; $682d: $ff
    rst $38                                       ; $682e: $ff
    rst $38                                       ; $682f: $ff
    rst $38                                       ; $6830: $ff
    rst $38                                       ; $6831: $ff
    rst $38                                       ; $6832: $ff
    rst $38                                       ; $6833: $ff
    rst $38                                       ; $6834: $ff
    rst $38                                       ; $6835: $ff
    rst $38                                       ; $6836: $ff
    rst $38                                       ; $6837: $ff
    rst $38                                       ; $6838: $ff
    rst $38                                       ; $6839: $ff
    rst $38                                       ; $683a: $ff
    rst $38                                       ; $683b: $ff
    rst $38                                       ; $683c: $ff
    rst $38                                       ; $683d: $ff
    rst $38                                       ; $683e: $ff
    rst $38                                       ; $683f: $ff
    rst $38                                       ; $6840: $ff
    rst $38                                       ; $6841: $ff
    rst $38                                       ; $6842: $ff
    rst $38                                       ; $6843: $ff
    rst $38                                       ; $6844: $ff
    rst $38                                       ; $6845: $ff
    rst $38                                       ; $6846: $ff
    rst $38                                       ; $6847: $ff
    rst $38                                       ; $6848: $ff
    rst $38                                       ; $6849: $ff
    rst $38                                       ; $684a: $ff
    rst $38                                       ; $684b: $ff
    rst $38                                       ; $684c: $ff
    rst $38                                       ; $684d: $ff
    rst $38                                       ; $684e: $ff
    rst $38                                       ; $684f: $ff
    rst $38                                       ; $6850: $ff
    rst $38                                       ; $6851: $ff
    rst $38                                       ; $6852: $ff
    rst $38                                       ; $6853: $ff
    rst $38                                       ; $6854: $ff
    rst $38                                       ; $6855: $ff
    rst $38                                       ; $6856: $ff
    rst $38                                       ; $6857: $ff
    rst $38                                       ; $6858: $ff
    rst $38                                       ; $6859: $ff
    rst $38                                       ; $685a: $ff
    rst $38                                       ; $685b: $ff
    rst $38                                       ; $685c: $ff
    rst $38                                       ; $685d: $ff
    rst $38                                       ; $685e: $ff
    rst $38                                       ; $685f: $ff
    rst $38                                       ; $6860: $ff
    rst $38                                       ; $6861: $ff
    rst $38                                       ; $6862: $ff
    rst $38                                       ; $6863: $ff
    rst $38                                       ; $6864: $ff
    rst $38                                       ; $6865: $ff
    rst $38                                       ; $6866: $ff
    rst $38                                       ; $6867: $ff
    rst $38                                       ; $6868: $ff
    rst $38                                       ; $6869: $ff
    rst $38                                       ; $686a: $ff
    rst $38                                       ; $686b: $ff
    rst $38                                       ; $686c: $ff
    rst $38                                       ; $686d: $ff
    rst $38                                       ; $686e: $ff
    rst $38                                       ; $686f: $ff
    rst $38                                       ; $6870: $ff
    rst $38                                       ; $6871: $ff
    rst $38                                       ; $6872: $ff
    rst $38                                       ; $6873: $ff
    rst $38                                       ; $6874: $ff
    rst $38                                       ; $6875: $ff
    rst $38                                       ; $6876: $ff
    rst $38                                       ; $6877: $ff
    rst $38                                       ; $6878: $ff
    rst $38                                       ; $6879: $ff
    rst $38                                       ; $687a: $ff
    rst $38                                       ; $687b: $ff
    rst $38                                       ; $687c: $ff
    rst $38                                       ; $687d: $ff
    rst $38                                       ; $687e: $ff
    rst $38                                       ; $687f: $ff
    rst $38                                       ; $6880: $ff
    rst $38                                       ; $6881: $ff
    rst $38                                       ; $6882: $ff
    rst $38                                       ; $6883: $ff
    rst $38                                       ; $6884: $ff
    rst $38                                       ; $6885: $ff
    rst $38                                       ; $6886: $ff
    rst $38                                       ; $6887: $ff
    rst $38                                       ; $6888: $ff
    rst $38                                       ; $6889: $ff
    rst $38                                       ; $688a: $ff
    rst $38                                       ; $688b: $ff
    rst $38                                       ; $688c: $ff
    rst $38                                       ; $688d: $ff
    rst $38                                       ; $688e: $ff
    rst $38                                       ; $688f: $ff
    rst $38                                       ; $6890: $ff
    rst $38                                       ; $6891: $ff
    rst $38                                       ; $6892: $ff
    rst $38                                       ; $6893: $ff
    rst $38                                       ; $6894: $ff
    rst $38                                       ; $6895: $ff
    rst $38                                       ; $6896: $ff
    rst $38                                       ; $6897: $ff
    rst $38                                       ; $6898: $ff
    rst $38                                       ; $6899: $ff
    rst $38                                       ; $689a: $ff
    rst $38                                       ; $689b: $ff
    rst $38                                       ; $689c: $ff
    rst $38                                       ; $689d: $ff
    rst $38                                       ; $689e: $ff
    rst $38                                       ; $689f: $ff
    rst $38                                       ; $68a0: $ff
    rst $38                                       ; $68a1: $ff
    rst $38                                       ; $68a2: $ff
    rst $38                                       ; $68a3: $ff
    rst $38                                       ; $68a4: $ff
    rst $38                                       ; $68a5: $ff
    rst $38                                       ; $68a6: $ff
    rst $38                                       ; $68a7: $ff
    rst $38                                       ; $68a8: $ff
    rst $38                                       ; $68a9: $ff
    rst $38                                       ; $68aa: $ff
    rst $38                                       ; $68ab: $ff
    rst $38                                       ; $68ac: $ff
    rst $38                                       ; $68ad: $ff
    rst $38                                       ; $68ae: $ff
    rst $38                                       ; $68af: $ff
    rst $38                                       ; $68b0: $ff
    rst $38                                       ; $68b1: $ff
    rst $38                                       ; $68b2: $ff
    rst $38                                       ; $68b3: $ff
    rst $38                                       ; $68b4: $ff
    rst $38                                       ; $68b5: $ff
    rst $38                                       ; $68b6: $ff
    rst $38                                       ; $68b7: $ff
    rst $38                                       ; $68b8: $ff
    rst $38                                       ; $68b9: $ff
    rst $38                                       ; $68ba: $ff
    rst $38                                       ; $68bb: $ff
    rst $38                                       ; $68bc: $ff
    rst $38                                       ; $68bd: $ff
    rst $38                                       ; $68be: $ff
    rst $38                                       ; $68bf: $ff
    rst $38                                       ; $68c0: $ff
    rst $38                                       ; $68c1: $ff
    rst $38                                       ; $68c2: $ff
    rst $38                                       ; $68c3: $ff
    rst $38                                       ; $68c4: $ff
    rst $38                                       ; $68c5: $ff
    rst $38                                       ; $68c6: $ff
    rst $38                                       ; $68c7: $ff
    rst $38                                       ; $68c8: $ff
    rst $38                                       ; $68c9: $ff
    rst $38                                       ; $68ca: $ff
    rst $38                                       ; $68cb: $ff
    rst $38                                       ; $68cc: $ff
    rst $38                                       ; $68cd: $ff
    rst $38                                       ; $68ce: $ff
    rst $38                                       ; $68cf: $ff
    rst $38                                       ; $68d0: $ff
    rst $38                                       ; $68d1: $ff
    rst $38                                       ; $68d2: $ff
    rst $38                                       ; $68d3: $ff
    rst $38                                       ; $68d4: $ff
    rst $38                                       ; $68d5: $ff
    rst $38                                       ; $68d6: $ff
    rst $38                                       ; $68d7: $ff
    rst $38                                       ; $68d8: $ff
    rst $38                                       ; $68d9: $ff
    rst $38                                       ; $68da: $ff
    rst $38                                       ; $68db: $ff
    rst $38                                       ; $68dc: $ff
    rst $38                                       ; $68dd: $ff
    rst $38                                       ; $68de: $ff
    rst $38                                       ; $68df: $ff
    rst $38                                       ; $68e0: $ff
    rst $38                                       ; $68e1: $ff
    rst $38                                       ; $68e2: $ff
    rst $38                                       ; $68e3: $ff
    rst $38                                       ; $68e4: $ff
    rst $38                                       ; $68e5: $ff
    rst $38                                       ; $68e6: $ff
    rst $38                                       ; $68e7: $ff
    rst $38                                       ; $68e8: $ff
    rst $38                                       ; $68e9: $ff
    rst $38                                       ; $68ea: $ff
    rst $38                                       ; $68eb: $ff
    rst $38                                       ; $68ec: $ff
    rst $38                                       ; $68ed: $ff
    rst $38                                       ; $68ee: $ff
    rst $38                                       ; $68ef: $ff
    rst $38                                       ; $68f0: $ff
    rst $38                                       ; $68f1: $ff
    rst $38                                       ; $68f2: $ff
    rst $38                                       ; $68f3: $ff
    rst $38                                       ; $68f4: $ff
    rst $38                                       ; $68f5: $ff
    rst $38                                       ; $68f6: $ff
    rst $38                                       ; $68f7: $ff
    rst $38                                       ; $68f8: $ff
    rst $38                                       ; $68f9: $ff
    rst $38                                       ; $68fa: $ff
    rst $38                                       ; $68fb: $ff
    rst $38                                       ; $68fc: $ff
    rst $38                                       ; $68fd: $ff
    rst $38                                       ; $68fe: $ff
    rst $38                                       ; $68ff: $ff
    rst $38                                       ; $6900: $ff
    rst $38                                       ; $6901: $ff
    rst $38                                       ; $6902: $ff
    rst $38                                       ; $6903: $ff
    rst $38                                       ; $6904: $ff
    rst $38                                       ; $6905: $ff
    rst $38                                       ; $6906: $ff
    rst $38                                       ; $6907: $ff
    rst $38                                       ; $6908: $ff
    rst $38                                       ; $6909: $ff
    rst $38                                       ; $690a: $ff
    rst $38                                       ; $690b: $ff
    rst $38                                       ; $690c: $ff
    rst $38                                       ; $690d: $ff
    rst $38                                       ; $690e: $ff
    rst $38                                       ; $690f: $ff
    rst $38                                       ; $6910: $ff
    rst $38                                       ; $6911: $ff
    rst $38                                       ; $6912: $ff
    rst $38                                       ; $6913: $ff
    rst $38                                       ; $6914: $ff
    rst $38                                       ; $6915: $ff
    rst $38                                       ; $6916: $ff
    rst $38                                       ; $6917: $ff
    rst $38                                       ; $6918: $ff
    rst $38                                       ; $6919: $ff
    rst $38                                       ; $691a: $ff
    rst $38                                       ; $691b: $ff
    rst $38                                       ; $691c: $ff
    rst $38                                       ; $691d: $ff
    rst $38                                       ; $691e: $ff
    rst $38                                       ; $691f: $ff
    rst $38                                       ; $6920: $ff
    rst $38                                       ; $6921: $ff
    rst $38                                       ; $6922: $ff
    rst $38                                       ; $6923: $ff
    rst $38                                       ; $6924: $ff
    rst $38                                       ; $6925: $ff
    rst $38                                       ; $6926: $ff
    rst $38                                       ; $6927: $ff
    rst $38                                       ; $6928: $ff
    rst $38                                       ; $6929: $ff
    rst $38                                       ; $692a: $ff
    rst $38                                       ; $692b: $ff
    rst $38                                       ; $692c: $ff
    rst $38                                       ; $692d: $ff
    rst $38                                       ; $692e: $ff
    rst $38                                       ; $692f: $ff
    rst $38                                       ; $6930: $ff
    rst $38                                       ; $6931: $ff
    rst $38                                       ; $6932: $ff
    rst $38                                       ; $6933: $ff
    rst $38                                       ; $6934: $ff
    rst $38                                       ; $6935: $ff
    rst $38                                       ; $6936: $ff
    rst $38                                       ; $6937: $ff
    rst $38                                       ; $6938: $ff
    rst $38                                       ; $6939: $ff
    rst $38                                       ; $693a: $ff
    rst $38                                       ; $693b: $ff
    rst $38                                       ; $693c: $ff
    rst $38                                       ; $693d: $ff
    rst $38                                       ; $693e: $ff
    rst $38                                       ; $693f: $ff
    rst $38                                       ; $6940: $ff
    rst $38                                       ; $6941: $ff
    rst $38                                       ; $6942: $ff
    rst $38                                       ; $6943: $ff
    rst $38                                       ; $6944: $ff
    rst $38                                       ; $6945: $ff
    rst $38                                       ; $6946: $ff
    rst $38                                       ; $6947: $ff
    rst $38                                       ; $6948: $ff
    rst $38                                       ; $6949: $ff
    rst $38                                       ; $694a: $ff
    rst $38                                       ; $694b: $ff
    rst $38                                       ; $694c: $ff
    rst $38                                       ; $694d: $ff
    rst $38                                       ; $694e: $ff
    rst $38                                       ; $694f: $ff
    rst $38                                       ; $6950: $ff
    rst $38                                       ; $6951: $ff
    rst $38                                       ; $6952: $ff
    rst $38                                       ; $6953: $ff
    rst $38                                       ; $6954: $ff
    rst $38                                       ; $6955: $ff
    rst $38                                       ; $6956: $ff
    rst $38                                       ; $6957: $ff
    rst $38                                       ; $6958: $ff
    rst $38                                       ; $6959: $ff
    rst $38                                       ; $695a: $ff
    rst $38                                       ; $695b: $ff
    rst $38                                       ; $695c: $ff
    rst $38                                       ; $695d: $ff
    rst $38                                       ; $695e: $ff

Jump_058_695f:
    rst $38                                       ; $695f: $ff
    rst $38                                       ; $6960: $ff
    rst $38                                       ; $6961: $ff
    rst $38                                       ; $6962: $ff
    rst $38                                       ; $6963: $ff
    rst $38                                       ; $6964: $ff
    rst $38                                       ; $6965: $ff
    rst $38                                       ; $6966: $ff
    rst $38                                       ; $6967: $ff
    rst $38                                       ; $6968: $ff
    rst $38                                       ; $6969: $ff
    rst $38                                       ; $696a: $ff
    rst $38                                       ; $696b: $ff
    rst $38                                       ; $696c: $ff
    rst $38                                       ; $696d: $ff
    rst $38                                       ; $696e: $ff
    rst $38                                       ; $696f: $ff
    rst $38                                       ; $6970: $ff
    rst $38                                       ; $6971: $ff
    rst $38                                       ; $6972: $ff
    rst $38                                       ; $6973: $ff
    rst $38                                       ; $6974: $ff
    rst $38                                       ; $6975: $ff
    rst $38                                       ; $6976: $ff
    rst $38                                       ; $6977: $ff
    rst $38                                       ; $6978: $ff
    rst $38                                       ; $6979: $ff
    rst $38                                       ; $697a: $ff
    rst $38                                       ; $697b: $ff
    rst $38                                       ; $697c: $ff
    rst $38                                       ; $697d: $ff
    rst $38                                       ; $697e: $ff
    rst $38                                       ; $697f: $ff
    rst $38                                       ; $6980: $ff
    rst $38                                       ; $6981: $ff
    rst $38                                       ; $6982: $ff
    rst $38                                       ; $6983: $ff
    rst $38                                       ; $6984: $ff
    rst $38                                       ; $6985: $ff
    rst $38                                       ; $6986: $ff
    rst $38                                       ; $6987: $ff
    rst $38                                       ; $6988: $ff
    rst $38                                       ; $6989: $ff
    rst $38                                       ; $698a: $ff
    rst $38                                       ; $698b: $ff
    rst $38                                       ; $698c: $ff
    rst $38                                       ; $698d: $ff
    rst $38                                       ; $698e: $ff
    rst $38                                       ; $698f: $ff
    rst $38                                       ; $6990: $ff
    rst $38                                       ; $6991: $ff
    rst $38                                       ; $6992: $ff
    rst $38                                       ; $6993: $ff
    rst $38                                       ; $6994: $ff
    rst $38                                       ; $6995: $ff
    rst $38                                       ; $6996: $ff
    rst $38                                       ; $6997: $ff
    rst $38                                       ; $6998: $ff
    rst $38                                       ; $6999: $ff
    rst $38                                       ; $699a: $ff
    rst $38                                       ; $699b: $ff
    rst $38                                       ; $699c: $ff
    rst $38                                       ; $699d: $ff
    rst $38                                       ; $699e: $ff
    rst $38                                       ; $699f: $ff
    rst $38                                       ; $69a0: $ff
    rst $38                                       ; $69a1: $ff
    rst $38                                       ; $69a2: $ff
    rst $38                                       ; $69a3: $ff
    rst $38                                       ; $69a4: $ff
    rst $38                                       ; $69a5: $ff
    rst $38                                       ; $69a6: $ff
    rst $38                                       ; $69a7: $ff
    rst $38                                       ; $69a8: $ff
    rst $38                                       ; $69a9: $ff
    rst $38                                       ; $69aa: $ff
    rst $38                                       ; $69ab: $ff
    rst $38                                       ; $69ac: $ff
    rst $38                                       ; $69ad: $ff
    rst $38                                       ; $69ae: $ff
    rst $38                                       ; $69af: $ff
    rst $38                                       ; $69b0: $ff
    rst $38                                       ; $69b1: $ff
    rst $38                                       ; $69b2: $ff
    rst $38                                       ; $69b3: $ff
    rst $38                                       ; $69b4: $ff
    rst $38                                       ; $69b5: $ff
    rst $38                                       ; $69b6: $ff
    rst $38                                       ; $69b7: $ff
    rst $38                                       ; $69b8: $ff
    rst $38                                       ; $69b9: $ff
    rst $38                                       ; $69ba: $ff
    rst $38                                       ; $69bb: $ff
    rst $38                                       ; $69bc: $ff
    rst $38                                       ; $69bd: $ff
    rst $38                                       ; $69be: $ff
    rst $38                                       ; $69bf: $ff
    rst $38                                       ; $69c0: $ff
    rst $38                                       ; $69c1: $ff
    rst $38                                       ; $69c2: $ff
    rst $38                                       ; $69c3: $ff
    rst $38                                       ; $69c4: $ff
    rst $38                                       ; $69c5: $ff
    rst $38                                       ; $69c6: $ff
    rst $38                                       ; $69c7: $ff
    rst $38                                       ; $69c8: $ff
    rst $38                                       ; $69c9: $ff
    rst $38                                       ; $69ca: $ff
    rst $38                                       ; $69cb: $ff
    rst $38                                       ; $69cc: $ff
    rst $38                                       ; $69cd: $ff
    rst $38                                       ; $69ce: $ff
    rst $38                                       ; $69cf: $ff
    rst $38                                       ; $69d0: $ff
    rst $38                                       ; $69d1: $ff
    rst $38                                       ; $69d2: $ff
    rst $38                                       ; $69d3: $ff
    rst $38                                       ; $69d4: $ff
    rst $38                                       ; $69d5: $ff
    rst $38                                       ; $69d6: $ff
    rst $38                                       ; $69d7: $ff
    rst $38                                       ; $69d8: $ff
    rst $38                                       ; $69d9: $ff
    rst $38                                       ; $69da: $ff
    rst $38                                       ; $69db: $ff
    rst $38                                       ; $69dc: $ff
    rst $38                                       ; $69dd: $ff
    rst $38                                       ; $69de: $ff
    rst $38                                       ; $69df: $ff
    rst $38                                       ; $69e0: $ff
    rst $38                                       ; $69e1: $ff
    rst $38                                       ; $69e2: $ff
    rst $38                                       ; $69e3: $ff
    rst $38                                       ; $69e4: $ff
    rst $38                                       ; $69e5: $ff
    rst $38                                       ; $69e6: $ff
    rst $38                                       ; $69e7: $ff
    rst $38                                       ; $69e8: $ff
    rst $38                                       ; $69e9: $ff
    rst $38                                       ; $69ea: $ff
    rst $38                                       ; $69eb: $ff
    rst $38                                       ; $69ec: $ff
    rst $38                                       ; $69ed: $ff
    rst $38                                       ; $69ee: $ff
    rst $38                                       ; $69ef: $ff
    rst $38                                       ; $69f0: $ff
    rst $38                                       ; $69f1: $ff
    rst $38                                       ; $69f2: $ff
    rst $38                                       ; $69f3: $ff
    rst $38                                       ; $69f4: $ff
    rst $38                                       ; $69f5: $ff
    rst $38                                       ; $69f6: $ff
    rst $38                                       ; $69f7: $ff
    rst $38                                       ; $69f8: $ff
    rst $38                                       ; $69f9: $ff
    rst $38                                       ; $69fa: $ff
    rst $38                                       ; $69fb: $ff
    rst $38                                       ; $69fc: $ff
    rst $38                                       ; $69fd: $ff
    rst $38                                       ; $69fe: $ff
    rst $38                                       ; $69ff: $ff
    rst $38                                       ; $6a00: $ff
    rst $38                                       ; $6a01: $ff
    rst $38                                       ; $6a02: $ff
    rst $38                                       ; $6a03: $ff
    rst $38                                       ; $6a04: $ff
    rst $38                                       ; $6a05: $ff
    rst $38                                       ; $6a06: $ff
    rst $38                                       ; $6a07: $ff
    rst $38                                       ; $6a08: $ff
    rst $38                                       ; $6a09: $ff
    rst $38                                       ; $6a0a: $ff
    rst $38                                       ; $6a0b: $ff
    rst $38                                       ; $6a0c: $ff
    rst $38                                       ; $6a0d: $ff
    rst $38                                       ; $6a0e: $ff
    rst $38                                       ; $6a0f: $ff
    rst $38                                       ; $6a10: $ff
    rst $38                                       ; $6a11: $ff
    rst $38                                       ; $6a12: $ff

Call_058_6a13:
    rst $38                                       ; $6a13: $ff
    rst $38                                       ; $6a14: $ff
    rst $38                                       ; $6a15: $ff
    rst $38                                       ; $6a16: $ff
    rst $38                                       ; $6a17: $ff
    rst $38                                       ; $6a18: $ff
    rst $38                                       ; $6a19: $ff
    rst $38                                       ; $6a1a: $ff
    rst $38                                       ; $6a1b: $ff
    rst $38                                       ; $6a1c: $ff
    rst $38                                       ; $6a1d: $ff
    rst $38                                       ; $6a1e: $ff
    rst $38                                       ; $6a1f: $ff
    rst $38                                       ; $6a20: $ff
    rst $38                                       ; $6a21: $ff
    rst $38                                       ; $6a22: $ff
    rst $38                                       ; $6a23: $ff
    rst $38                                       ; $6a24: $ff
    rst $38                                       ; $6a25: $ff
    rst $38                                       ; $6a26: $ff
    rst $38                                       ; $6a27: $ff
    rst $38                                       ; $6a28: $ff
    rst $38                                       ; $6a29: $ff
    rst $38                                       ; $6a2a: $ff
    rst $38                                       ; $6a2b: $ff
    rst $38                                       ; $6a2c: $ff
    rst $38                                       ; $6a2d: $ff
    rst $38                                       ; $6a2e: $ff
    rst $38                                       ; $6a2f: $ff
    rst $38                                       ; $6a30: $ff
    rst $38                                       ; $6a31: $ff
    rst $38                                       ; $6a32: $ff
    rst $38                                       ; $6a33: $ff
    rst $38                                       ; $6a34: $ff
    rst $38                                       ; $6a35: $ff
    rst $38                                       ; $6a36: $ff
    rst $38                                       ; $6a37: $ff
    rst $38                                       ; $6a38: $ff
    rst $38                                       ; $6a39: $ff
    rst $38                                       ; $6a3a: $ff
    rst $38                                       ; $6a3b: $ff
    rst $38                                       ; $6a3c: $ff
    rst $38                                       ; $6a3d: $ff
    rst $38                                       ; $6a3e: $ff
    rst $38                                       ; $6a3f: $ff
    rst $38                                       ; $6a40: $ff
    rst $38                                       ; $6a41: $ff
    rst $38                                       ; $6a42: $ff
    rst $38                                       ; $6a43: $ff
    rst $38                                       ; $6a44: $ff
    rst $38                                       ; $6a45: $ff
    rst $38                                       ; $6a46: $ff
    rst $38                                       ; $6a47: $ff
    rst $38                                       ; $6a48: $ff
    rst $38                                       ; $6a49: $ff
    rst $38                                       ; $6a4a: $ff
    rst $38                                       ; $6a4b: $ff
    rst $38                                       ; $6a4c: $ff
    rst $38                                       ; $6a4d: $ff
    rst $38                                       ; $6a4e: $ff
    rst $38                                       ; $6a4f: $ff
    rst $38                                       ; $6a50: $ff
    rst $38                                       ; $6a51: $ff
    rst $38                                       ; $6a52: $ff
    rst $38                                       ; $6a53: $ff
    rst $38                                       ; $6a54: $ff
    rst $38                                       ; $6a55: $ff
    rst $38                                       ; $6a56: $ff
    rst $38                                       ; $6a57: $ff
    rst $38                                       ; $6a58: $ff
    rst $38                                       ; $6a59: $ff
    rst $38                                       ; $6a5a: $ff
    rst $38                                       ; $6a5b: $ff
    rst $38                                       ; $6a5c: $ff
    rst $38                                       ; $6a5d: $ff
    rst $38                                       ; $6a5e: $ff
    rst $38                                       ; $6a5f: $ff
    rst $38                                       ; $6a60: $ff
    rst $38                                       ; $6a61: $ff
    rst $38                                       ; $6a62: $ff
    rst $38                                       ; $6a63: $ff
    rst $38                                       ; $6a64: $ff
    rst $38                                       ; $6a65: $ff
    rst $38                                       ; $6a66: $ff
    rst $38                                       ; $6a67: $ff

Call_058_6a68:
    rst $38                                       ; $6a68: $ff
    rst $38                                       ; $6a69: $ff
    rst $38                                       ; $6a6a: $ff
    rst $38                                       ; $6a6b: $ff
    rst $38                                       ; $6a6c: $ff
    rst $38                                       ; $6a6d: $ff
    rst $38                                       ; $6a6e: $ff
    rst $38                                       ; $6a6f: $ff
    rst $38                                       ; $6a70: $ff
    rst $38                                       ; $6a71: $ff
    rst $38                                       ; $6a72: $ff
    rst $38                                       ; $6a73: $ff
    rst $38                                       ; $6a74: $ff
    rst $38                                       ; $6a75: $ff
    rst $38                                       ; $6a76: $ff
    rst $38                                       ; $6a77: $ff
    rst $38                                       ; $6a78: $ff
    rst $38                                       ; $6a79: $ff
    rst $38                                       ; $6a7a: $ff
    rst $38                                       ; $6a7b: $ff
    rst $38                                       ; $6a7c: $ff
    rst $38                                       ; $6a7d: $ff
    rst $38                                       ; $6a7e: $ff
    rst $38                                       ; $6a7f: $ff
    rst $38                                       ; $6a80: $ff
    rst $38                                       ; $6a81: $ff
    rst $38                                       ; $6a82: $ff
    rst $38                                       ; $6a83: $ff
    rst $38                                       ; $6a84: $ff
    rst $38                                       ; $6a85: $ff
    rst $38                                       ; $6a86: $ff
    rst $38                                       ; $6a87: $ff
    rst $38                                       ; $6a88: $ff
    rst $38                                       ; $6a89: $ff
    rst $38                                       ; $6a8a: $ff
    rst $38                                       ; $6a8b: $ff
    rst $38                                       ; $6a8c: $ff
    rst $38                                       ; $6a8d: $ff
    rst $38                                       ; $6a8e: $ff
    rst $38                                       ; $6a8f: $ff
    rst $38                                       ; $6a90: $ff
    rst $38                                       ; $6a91: $ff
    rst $38                                       ; $6a92: $ff
    rst $38                                       ; $6a93: $ff
    rst $38                                       ; $6a94: $ff
    rst $38                                       ; $6a95: $ff
    rst $38                                       ; $6a96: $ff
    rst $38                                       ; $6a97: $ff
    rst $38                                       ; $6a98: $ff
    rst $38                                       ; $6a99: $ff
    rst $38                                       ; $6a9a: $ff
    rst $38                                       ; $6a9b: $ff
    rst $38                                       ; $6a9c: $ff
    rst $38                                       ; $6a9d: $ff
    rst $38                                       ; $6a9e: $ff
    rst $38                                       ; $6a9f: $ff
    rst $38                                       ; $6aa0: $ff
    rst $38                                       ; $6aa1: $ff
    rst $38                                       ; $6aa2: $ff
    rst $38                                       ; $6aa3: $ff
    rst $38                                       ; $6aa4: $ff
    rst $38                                       ; $6aa5: $ff
    rst $38                                       ; $6aa6: $ff
    rst $38                                       ; $6aa7: $ff
    rst $38                                       ; $6aa8: $ff
    rst $38                                       ; $6aa9: $ff
    rst $38                                       ; $6aaa: $ff
    rst $38                                       ; $6aab: $ff
    rst $38                                       ; $6aac: $ff
    rst $38                                       ; $6aad: $ff
    rst $38                                       ; $6aae: $ff
    rst $38                                       ; $6aaf: $ff
    rst $38                                       ; $6ab0: $ff
    rst $38                                       ; $6ab1: $ff
    rst $38                                       ; $6ab2: $ff
    rst $38                                       ; $6ab3: $ff
    rst $38                                       ; $6ab4: $ff
    rst $38                                       ; $6ab5: $ff
    rst $38                                       ; $6ab6: $ff
    rst $38                                       ; $6ab7: $ff
    rst $38                                       ; $6ab8: $ff
    rst $38                                       ; $6ab9: $ff
    rst $38                                       ; $6aba: $ff
    rst $38                                       ; $6abb: $ff
    rst $38                                       ; $6abc: $ff
    rst $38                                       ; $6abd: $ff
    rst $38                                       ; $6abe: $ff
    rst $38                                       ; $6abf: $ff
    rst $38                                       ; $6ac0: $ff
    rst $38                                       ; $6ac1: $ff
    rst $38                                       ; $6ac2: $ff
    rst $38                                       ; $6ac3: $ff
    rst $38                                       ; $6ac4: $ff
    rst $38                                       ; $6ac5: $ff
    rst $38                                       ; $6ac6: $ff
    rst $38                                       ; $6ac7: $ff
    rst $38                                       ; $6ac8: $ff
    rst $38                                       ; $6ac9: $ff
    rst $38                                       ; $6aca: $ff
    rst $38                                       ; $6acb: $ff
    rst $38                                       ; $6acc: $ff
    rst $38                                       ; $6acd: $ff
    rst $38                                       ; $6ace: $ff
    rst $38                                       ; $6acf: $ff
    rst $38                                       ; $6ad0: $ff
    rst $38                                       ; $6ad1: $ff
    rst $38                                       ; $6ad2: $ff
    rst $38                                       ; $6ad3: $ff
    rst $38                                       ; $6ad4: $ff
    rst $38                                       ; $6ad5: $ff
    rst $38                                       ; $6ad6: $ff
    rst $38                                       ; $6ad7: $ff
    rst $38                                       ; $6ad8: $ff
    rst $38                                       ; $6ad9: $ff
    rst $38                                       ; $6ada: $ff
    rst $38                                       ; $6adb: $ff
    rst $38                                       ; $6adc: $ff
    rst $38                                       ; $6add: $ff
    rst $38                                       ; $6ade: $ff
    rst $38                                       ; $6adf: $ff
    rst $38                                       ; $6ae0: $ff
    rst $38                                       ; $6ae1: $ff
    rst $38                                       ; $6ae2: $ff
    rst $38                                       ; $6ae3: $ff
    rst $38                                       ; $6ae4: $ff
    rst $38                                       ; $6ae5: $ff
    rst $38                                       ; $6ae6: $ff
    rst $38                                       ; $6ae7: $ff
    rst $38                                       ; $6ae8: $ff
    rst $38                                       ; $6ae9: $ff
    rst $38                                       ; $6aea: $ff
    rst $38                                       ; $6aeb: $ff
    rst $38                                       ; $6aec: $ff
    rst $38                                       ; $6aed: $ff
    rst $38                                       ; $6aee: $ff
    rst $38                                       ; $6aef: $ff
    rst $38                                       ; $6af0: $ff
    rst $38                                       ; $6af1: $ff
    rst $38                                       ; $6af2: $ff
    rst $38                                       ; $6af3: $ff
    rst $38                                       ; $6af4: $ff
    rst $38                                       ; $6af5: $ff
    rst $38                                       ; $6af6: $ff
    rst $38                                       ; $6af7: $ff
    rst $38                                       ; $6af8: $ff
    rst $38                                       ; $6af9: $ff
    rst $38                                       ; $6afa: $ff
    rst $38                                       ; $6afb: $ff
    rst $38                                       ; $6afc: $ff
    rst $38                                       ; $6afd: $ff
    rst $38                                       ; $6afe: $ff
    rst $38                                       ; $6aff: $ff
    rst $38                                       ; $6b00: $ff
    rst $38                                       ; $6b01: $ff
    rst $38                                       ; $6b02: $ff
    rst $38                                       ; $6b03: $ff
    rst $38                                       ; $6b04: $ff
    rst $38                                       ; $6b05: $ff
    rst $38                                       ; $6b06: $ff
    rst $38                                       ; $6b07: $ff
    rst $38                                       ; $6b08: $ff
    rst $38                                       ; $6b09: $ff
    rst $38                                       ; $6b0a: $ff
    rst $38                                       ; $6b0b: $ff
    rst $38                                       ; $6b0c: $ff
    rst $38                                       ; $6b0d: $ff
    rst $38                                       ; $6b0e: $ff
    rst $38                                       ; $6b0f: $ff
    rst $38                                       ; $6b10: $ff
    rst $38                                       ; $6b11: $ff
    rst $38                                       ; $6b12: $ff
    rst $38                                       ; $6b13: $ff
    rst $38                                       ; $6b14: $ff
    rst $38                                       ; $6b15: $ff
    rst $38                                       ; $6b16: $ff
    rst $38                                       ; $6b17: $ff
    rst $38                                       ; $6b18: $ff
    rst $38                                       ; $6b19: $ff
    rst $38                                       ; $6b1a: $ff
    rst $38                                       ; $6b1b: $ff
    rst $38                                       ; $6b1c: $ff
    rst $38                                       ; $6b1d: $ff
    rst $38                                       ; $6b1e: $ff
    rst $38                                       ; $6b1f: $ff
    rst $38                                       ; $6b20: $ff
    rst $38                                       ; $6b21: $ff
    rst $38                                       ; $6b22: $ff
    rst $38                                       ; $6b23: $ff
    rst $38                                       ; $6b24: $ff
    rst $38                                       ; $6b25: $ff
    rst $38                                       ; $6b26: $ff
    rst $38                                       ; $6b27: $ff
    rst $38                                       ; $6b28: $ff
    rst $38                                       ; $6b29: $ff
    rst $38                                       ; $6b2a: $ff
    rst $38                                       ; $6b2b: $ff
    rst $38                                       ; $6b2c: $ff
    rst $38                                       ; $6b2d: $ff
    rst $38                                       ; $6b2e: $ff
    rst $38                                       ; $6b2f: $ff
    rst $38                                       ; $6b30: $ff
    rst $38                                       ; $6b31: $ff
    rst $38                                       ; $6b32: $ff
    rst $38                                       ; $6b33: $ff
    rst $38                                       ; $6b34: $ff
    rst $38                                       ; $6b35: $ff
    rst $38                                       ; $6b36: $ff
    rst $38                                       ; $6b37: $ff
    rst $38                                       ; $6b38: $ff
    rst $38                                       ; $6b39: $ff
    rst $38                                       ; $6b3a: $ff
    rst $38                                       ; $6b3b: $ff
    rst $38                                       ; $6b3c: $ff
    rst $38                                       ; $6b3d: $ff
    rst $38                                       ; $6b3e: $ff
    rst $38                                       ; $6b3f: $ff
    rst $38                                       ; $6b40: $ff
    rst $38                                       ; $6b41: $ff
    rst $38                                       ; $6b42: $ff
    rst $38                                       ; $6b43: $ff
    rst $38                                       ; $6b44: $ff
    rst $38                                       ; $6b45: $ff
    rst $38                                       ; $6b46: $ff
    rst $38                                       ; $6b47: $ff
    rst $38                                       ; $6b48: $ff
    rst $38                                       ; $6b49: $ff
    rst $38                                       ; $6b4a: $ff
    rst $38                                       ; $6b4b: $ff
    rst $38                                       ; $6b4c: $ff
    rst $38                                       ; $6b4d: $ff
    rst $38                                       ; $6b4e: $ff
    rst $38                                       ; $6b4f: $ff
    rst $38                                       ; $6b50: $ff
    rst $38                                       ; $6b51: $ff
    rst $38                                       ; $6b52: $ff
    rst $38                                       ; $6b53: $ff
    rst $38                                       ; $6b54: $ff
    rst $38                                       ; $6b55: $ff
    rst $38                                       ; $6b56: $ff
    rst $38                                       ; $6b57: $ff
    rst $38                                       ; $6b58: $ff
    rst $38                                       ; $6b59: $ff
    rst $38                                       ; $6b5a: $ff
    rst $38                                       ; $6b5b: $ff
    rst $38                                       ; $6b5c: $ff
    rst $38                                       ; $6b5d: $ff
    rst $38                                       ; $6b5e: $ff
    rst $38                                       ; $6b5f: $ff
    rst $38                                       ; $6b60: $ff
    rst $38                                       ; $6b61: $ff
    rst $38                                       ; $6b62: $ff
    rst $38                                       ; $6b63: $ff
    rst $38                                       ; $6b64: $ff
    rst $38                                       ; $6b65: $ff
    rst $38                                       ; $6b66: $ff
    rst $38                                       ; $6b67: $ff
    rst $38                                       ; $6b68: $ff
    rst $38                                       ; $6b69: $ff
    rst $38                                       ; $6b6a: $ff
    rst $38                                       ; $6b6b: $ff
    rst $38                                       ; $6b6c: $ff
    rst $38                                       ; $6b6d: $ff
    rst $38                                       ; $6b6e: $ff
    rst $38                                       ; $6b6f: $ff
    rst $38                                       ; $6b70: $ff
    rst $38                                       ; $6b71: $ff
    rst $38                                       ; $6b72: $ff

Call_058_6b73:
    rst $38                                       ; $6b73: $ff
    rst $38                                       ; $6b74: $ff
    rst $38                                       ; $6b75: $ff
    rst $38                                       ; $6b76: $ff
    rst $38                                       ; $6b77: $ff
    rst $38                                       ; $6b78: $ff
    rst $38                                       ; $6b79: $ff
    rst $38                                       ; $6b7a: $ff
    rst $38                                       ; $6b7b: $ff
    rst $38                                       ; $6b7c: $ff
    rst $38                                       ; $6b7d: $ff
    rst $38                                       ; $6b7e: $ff
    rst $38                                       ; $6b7f: $ff
    rst $38                                       ; $6b80: $ff
    rst $38                                       ; $6b81: $ff
    rst $38                                       ; $6b82: $ff
    rst $38                                       ; $6b83: $ff
    rst $38                                       ; $6b84: $ff
    rst $38                                       ; $6b85: $ff
    rst $38                                       ; $6b86: $ff
    rst $38                                       ; $6b87: $ff
    rst $38                                       ; $6b88: $ff
    rst $38                                       ; $6b89: $ff
    rst $38                                       ; $6b8a: $ff
    rst $38                                       ; $6b8b: $ff
    rst $38                                       ; $6b8c: $ff
    rst $38                                       ; $6b8d: $ff
    rst $38                                       ; $6b8e: $ff
    rst $38                                       ; $6b8f: $ff
    rst $38                                       ; $6b90: $ff
    rst $38                                       ; $6b91: $ff
    rst $38                                       ; $6b92: $ff
    rst $38                                       ; $6b93: $ff
    rst $38                                       ; $6b94: $ff
    rst $38                                       ; $6b95: $ff
    rst $38                                       ; $6b96: $ff
    rst $38                                       ; $6b97: $ff
    rst $38                                       ; $6b98: $ff
    rst $38                                       ; $6b99: $ff

Call_058_6b9a:
    rst $38                                       ; $6b9a: $ff
    rst $38                                       ; $6b9b: $ff
    rst $38                                       ; $6b9c: $ff
    rst $38                                       ; $6b9d: $ff

Jump_058_6b9e:
    rst $38                                       ; $6b9e: $ff
    rst $38                                       ; $6b9f: $ff
    rst $38                                       ; $6ba0: $ff
    rst $38                                       ; $6ba1: $ff
    rst $38                                       ; $6ba2: $ff

Jump_058_6ba3:
    rst $38                                       ; $6ba3: $ff
    rst $38                                       ; $6ba4: $ff
    rst $38                                       ; $6ba5: $ff
    rst $38                                       ; $6ba6: $ff
    rst $38                                       ; $6ba7: $ff
    rst $38                                       ; $6ba8: $ff
    rst $38                                       ; $6ba9: $ff
    rst $38                                       ; $6baa: $ff
    rst $38                                       ; $6bab: $ff
    rst $38                                       ; $6bac: $ff
    rst $38                                       ; $6bad: $ff
    rst $38                                       ; $6bae: $ff
    rst $38                                       ; $6baf: $ff
    rst $38                                       ; $6bb0: $ff
    rst $38                                       ; $6bb1: $ff
    rst $38                                       ; $6bb2: $ff
    rst $38                                       ; $6bb3: $ff
    rst $38                                       ; $6bb4: $ff
    rst $38                                       ; $6bb5: $ff
    rst $38                                       ; $6bb6: $ff
    rst $38                                       ; $6bb7: $ff
    rst $38                                       ; $6bb8: $ff
    rst $38                                       ; $6bb9: $ff
    rst $38                                       ; $6bba: $ff
    rst $38                                       ; $6bbb: $ff
    rst $38                                       ; $6bbc: $ff
    rst $38                                       ; $6bbd: $ff
    rst $38                                       ; $6bbe: $ff
    rst $38                                       ; $6bbf: $ff
    rst $38                                       ; $6bc0: $ff
    rst $38                                       ; $6bc1: $ff
    rst $38                                       ; $6bc2: $ff
    rst $38                                       ; $6bc3: $ff
    rst $38                                       ; $6bc4: $ff
    rst $38                                       ; $6bc5: $ff
    rst $38                                       ; $6bc6: $ff
    rst $38                                       ; $6bc7: $ff
    rst $38                                       ; $6bc8: $ff
    rst $38                                       ; $6bc9: $ff
    rst $38                                       ; $6bca: $ff
    rst $38                                       ; $6bcb: $ff

Jump_058_6bcc:
    rst $38                                       ; $6bcc: $ff
    rst $38                                       ; $6bcd: $ff
    rst $38                                       ; $6bce: $ff
    rst $38                                       ; $6bcf: $ff
    rst $38                                       ; $6bd0: $ff
    rst $38                                       ; $6bd1: $ff
    rst $38                                       ; $6bd2: $ff
    rst $38                                       ; $6bd3: $ff
    rst $38                                       ; $6bd4: $ff
    rst $38                                       ; $6bd5: $ff
    rst $38                                       ; $6bd6: $ff
    rst $38                                       ; $6bd7: $ff
    rst $38                                       ; $6bd8: $ff
    rst $38                                       ; $6bd9: $ff
    rst $38                                       ; $6bda: $ff
    rst $38                                       ; $6bdb: $ff
    rst $38                                       ; $6bdc: $ff
    rst $38                                       ; $6bdd: $ff
    rst $38                                       ; $6bde: $ff
    rst $38                                       ; $6bdf: $ff
    rst $38                                       ; $6be0: $ff
    rst $38                                       ; $6be1: $ff
    rst $38                                       ; $6be2: $ff
    rst $38                                       ; $6be3: $ff
    rst $38                                       ; $6be4: $ff
    rst $38                                       ; $6be5: $ff
    rst $38                                       ; $6be6: $ff
    rst $38                                       ; $6be7: $ff
    rst $38                                       ; $6be8: $ff
    rst $38                                       ; $6be9: $ff
    rst $38                                       ; $6bea: $ff
    rst $38                                       ; $6beb: $ff
    rst $38                                       ; $6bec: $ff
    rst $38                                       ; $6bed: $ff
    rst $38                                       ; $6bee: $ff
    rst $38                                       ; $6bef: $ff
    rst $38                                       ; $6bf0: $ff
    rst $38                                       ; $6bf1: $ff
    rst $38                                       ; $6bf2: $ff
    rst $38                                       ; $6bf3: $ff
    rst $38                                       ; $6bf4: $ff
    rst $38                                       ; $6bf5: $ff
    rst $38                                       ; $6bf6: $ff
    rst $38                                       ; $6bf7: $ff
    rst $38                                       ; $6bf8: $ff
    rst $38                                       ; $6bf9: $ff
    rst $38                                       ; $6bfa: $ff
    rst $38                                       ; $6bfb: $ff
    rst $38                                       ; $6bfc: $ff
    rst $38                                       ; $6bfd: $ff
    rst $38                                       ; $6bfe: $ff
    rst $38                                       ; $6bff: $ff
    rst $38                                       ; $6c00: $ff
    rst $38                                       ; $6c01: $ff
    rst $38                                       ; $6c02: $ff
    rst $38                                       ; $6c03: $ff
    rst $38                                       ; $6c04: $ff
    rst $38                                       ; $6c05: $ff
    rst $38                                       ; $6c06: $ff
    rst $38                                       ; $6c07: $ff
    rst $38                                       ; $6c08: $ff
    rst $38                                       ; $6c09: $ff
    rst $38                                       ; $6c0a: $ff
    rst $38                                       ; $6c0b: $ff
    rst $38                                       ; $6c0c: $ff
    rst $38                                       ; $6c0d: $ff
    rst $38                                       ; $6c0e: $ff
    rst $38                                       ; $6c0f: $ff
    rst $38                                       ; $6c10: $ff
    rst $38                                       ; $6c11: $ff
    rst $38                                       ; $6c12: $ff
    rst $38                                       ; $6c13: $ff
    rst $38                                       ; $6c14: $ff
    rst $38                                       ; $6c15: $ff
    rst $38                                       ; $6c16: $ff
    rst $38                                       ; $6c17: $ff
    rst $38                                       ; $6c18: $ff
    rst $38                                       ; $6c19: $ff
    rst $38                                       ; $6c1a: $ff
    rst $38                                       ; $6c1b: $ff
    rst $38                                       ; $6c1c: $ff
    rst $38                                       ; $6c1d: $ff
    rst $38                                       ; $6c1e: $ff
    rst $38                                       ; $6c1f: $ff
    rst $38                                       ; $6c20: $ff
    rst $38                                       ; $6c21: $ff
    rst $38                                       ; $6c22: $ff
    rst $38                                       ; $6c23: $ff
    rst $38                                       ; $6c24: $ff
    rst $38                                       ; $6c25: $ff
    rst $38                                       ; $6c26: $ff
    rst $38                                       ; $6c27: $ff
    rst $38                                       ; $6c28: $ff
    rst $38                                       ; $6c29: $ff
    rst $38                                       ; $6c2a: $ff
    rst $38                                       ; $6c2b: $ff
    rst $38                                       ; $6c2c: $ff
    rst $38                                       ; $6c2d: $ff
    rst $38                                       ; $6c2e: $ff
    rst $38                                       ; $6c2f: $ff
    rst $38                                       ; $6c30: $ff
    rst $38                                       ; $6c31: $ff
    rst $38                                       ; $6c32: $ff
    rst $38                                       ; $6c33: $ff
    rst $38                                       ; $6c34: $ff
    rst $38                                       ; $6c35: $ff
    rst $38                                       ; $6c36: $ff
    rst $38                                       ; $6c37: $ff
    rst $38                                       ; $6c38: $ff
    rst $38                                       ; $6c39: $ff
    rst $38                                       ; $6c3a: $ff
    rst $38                                       ; $6c3b: $ff
    rst $38                                       ; $6c3c: $ff
    rst $38                                       ; $6c3d: $ff
    rst $38                                       ; $6c3e: $ff
    rst $38                                       ; $6c3f: $ff
    rst $38                                       ; $6c40: $ff
    rst $38                                       ; $6c41: $ff
    rst $38                                       ; $6c42: $ff
    rst $38                                       ; $6c43: $ff
    rst $38                                       ; $6c44: $ff
    rst $38                                       ; $6c45: $ff
    rst $38                                       ; $6c46: $ff
    rst $38                                       ; $6c47: $ff
    rst $38                                       ; $6c48: $ff
    rst $38                                       ; $6c49: $ff
    rst $38                                       ; $6c4a: $ff
    rst $38                                       ; $6c4b: $ff
    rst $38                                       ; $6c4c: $ff
    rst $38                                       ; $6c4d: $ff
    rst $38                                       ; $6c4e: $ff
    rst $38                                       ; $6c4f: $ff
    rst $38                                       ; $6c50: $ff
    rst $38                                       ; $6c51: $ff
    rst $38                                       ; $6c52: $ff
    rst $38                                       ; $6c53: $ff
    rst $38                                       ; $6c54: $ff
    rst $38                                       ; $6c55: $ff
    rst $38                                       ; $6c56: $ff
    rst $38                                       ; $6c57: $ff
    rst $38                                       ; $6c58: $ff
    rst $38                                       ; $6c59: $ff
    rst $38                                       ; $6c5a: $ff
    rst $38                                       ; $6c5b: $ff

Call_058_6c5c:
    rst $38                                       ; $6c5c: $ff
    rst $38                                       ; $6c5d: $ff
    rst $38                                       ; $6c5e: $ff
    rst $38                                       ; $6c5f: $ff
    rst $38                                       ; $6c60: $ff
    rst $38                                       ; $6c61: $ff
    rst $38                                       ; $6c62: $ff
    rst $38                                       ; $6c63: $ff
    rst $38                                       ; $6c64: $ff
    rst $38                                       ; $6c65: $ff
    rst $38                                       ; $6c66: $ff
    rst $38                                       ; $6c67: $ff
    rst $38                                       ; $6c68: $ff
    rst $38                                       ; $6c69: $ff
    rst $38                                       ; $6c6a: $ff
    rst $38                                       ; $6c6b: $ff
    rst $38                                       ; $6c6c: $ff
    rst $38                                       ; $6c6d: $ff
    rst $38                                       ; $6c6e: $ff
    rst $38                                       ; $6c6f: $ff
    rst $38                                       ; $6c70: $ff
    rst $38                                       ; $6c71: $ff
    rst $38                                       ; $6c72: $ff
    rst $38                                       ; $6c73: $ff
    rst $38                                       ; $6c74: $ff
    rst $38                                       ; $6c75: $ff
    rst $38                                       ; $6c76: $ff
    rst $38                                       ; $6c77: $ff
    rst $38                                       ; $6c78: $ff
    rst $38                                       ; $6c79: $ff
    rst $38                                       ; $6c7a: $ff
    rst $38                                       ; $6c7b: $ff
    rst $38                                       ; $6c7c: $ff
    rst $38                                       ; $6c7d: $ff
    rst $38                                       ; $6c7e: $ff
    rst $38                                       ; $6c7f: $ff
    rst $38                                       ; $6c80: $ff
    rst $38                                       ; $6c81: $ff
    rst $38                                       ; $6c82: $ff
    rst $38                                       ; $6c83: $ff
    rst $38                                       ; $6c84: $ff
    rst $38                                       ; $6c85: $ff
    rst $38                                       ; $6c86: $ff
    rst $38                                       ; $6c87: $ff
    rst $38                                       ; $6c88: $ff
    rst $38                                       ; $6c89: $ff
    rst $38                                       ; $6c8a: $ff
    rst $38                                       ; $6c8b: $ff
    rst $38                                       ; $6c8c: $ff
    rst $38                                       ; $6c8d: $ff
    rst $38                                       ; $6c8e: $ff
    rst $38                                       ; $6c8f: $ff
    rst $38                                       ; $6c90: $ff
    rst $38                                       ; $6c91: $ff
    rst $38                                       ; $6c92: $ff
    rst $38                                       ; $6c93: $ff
    rst $38                                       ; $6c94: $ff
    rst $38                                       ; $6c95: $ff
    rst $38                                       ; $6c96: $ff
    rst $38                                       ; $6c97: $ff
    rst $38                                       ; $6c98: $ff
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

Call_058_70c5:
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

Call_058_7116:
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

Jump_058_71f5:
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

Call_058_725e:
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

Jump_058_72b8:
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

Call_058_7323:
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

Call_058_74ef:
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

Jump_058_752b:
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

Jump_058_7596:
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

Jump_058_7697:
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

Jump_058_76bd:
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

Call_058_79eb:
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

Jump_058_7a95:
    rst $38                                       ; $7a95: $ff
    rst $38                                       ; $7a96: $ff
    rst $38                                       ; $7a97: $ff
    rst $38                                       ; $7a98: $ff
    rst $38                                       ; $7a99: $ff
    rst $38                                       ; $7a9a: $ff
    rst $38                                       ; $7a9b: $ff

Call_058_7a9c:
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

Call_058_7b18:
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

Jump_058_7b87:
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

Jump_058_7d29:
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

Call_058_7e1a:
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

Call_058_7e4b:
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

Jump_058_7ed7:
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

Jump_058_7f5d:
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

Jump_058_7f78:
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

Call_058_7f92:
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
