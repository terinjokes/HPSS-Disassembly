; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0c4", ROMX[$4000], BANK[$c4]

    call nz, Call_000_0e50                        ; $4000: $c4 $50 $0e
    sbc $0c                                       ; $4003: $de $0c
    ld b, b                                       ; $4005: $40
    nop                                           ; $4006: $00
    ld bc, $1420                                  ; $4007: $01 $20 $14
    nop                                           ; $400a: $00
    ld b, b                                       ; $400b: $40
    nop                                           ; $400c: $00
    ld a, [hl+]                                   ; $400d: $2a
    nop                                           ; $400e: $00
    ld b, b                                       ; $400f: $40
    ld e, l                                       ; $4010: $5d
    rrca                                          ; $4011: $0f
    jr nz, jr_0c4_4054                            ; $4012: $20 $40

    nop                                           ; $4014: $00
    jr nz, jr_0c4_4017                            ; $4015: $20 $00

jr_0c4_4017:
    ld bc, $1000                                  ; $4017: $01 $00 $10
    sub h                                         ; $401a: $94
    nop                                           ; $401b: $00
    ld l, d                                       ; $401c: $6a
    rra                                           ; $401d: $1f
    jr z, jr_0c4_4020                             ; $401e: $28 $00

jr_0c4_4020:
    stop                                          ; $4020: $10 $00
    inc h                                         ; $4022: $24
    ld a, [bc]                                    ; $4023: $0a
    nop                                           ; $4024: $00
    ld b, d                                       ; $4025: $42
    nop                                           ; $4026: $00
    add hl, hl                                    ; $4027: $29
    db $10                                        ; $4028: $10
    db $30, $88                                   ; $4029: $30 $88
    ld c, $00                                     ; $402b: $0e $00
    xor b                                         ; $402d: $a8
    ld bc, $5500                                  ; $402e: $01 $00 $55
    nop                                           ; $4031: $00
    dec b                                         ; $4032: $05
    add l                                         ; $4033: $85
    ld a, [bc]                                    ; $4034: $0a
    adc d                                         ; $4035: $8a
    inc b                                         ; $4036: $04
    ld [$1520], sp                                ; $4037: $08 $20 $15
    sub l                                         ; $403a: $95
    inc b                                         ; $403b: $04
    ld [$ab2b], sp                                ; $403c: $08 $2b $ab
    and b                                         ; $403f: $a0
    ret nz                                        ; $4040: $c0

    xor $00                                       ; $4041: $ee $00
    ldh a, [$d7]                                  ; $4043: $f0 $d7
    ld hl, sp+$7f                                 ; $4045: $f8 $7f
    rst $38                                       ; $4047: $ff
    push af                                       ; $4048: $f5
    ld a, [hl]                                    ; $4049: $7e
    ld l, b                                       ; $404a: $68
    nop                                           ; $404b: $00
    rst $38                                       ; $404c: $ff
    or d                                          ; $404d: $b2

jr_0c4_404e:
    ld a, a                                       ; $404e: $7f
    db $e4                                        ; $404f: $e4
    cpl                                           ; $4050: $2f
    inc b                                         ; $4051: $04
    dec hl                                        ; $4052: $2b
    and h                                         ; $4053: $a4

jr_0c4_4054:
    nop                                           ; $4054: $00
    ld e, e                                       ; $4055: $5b
    add l                                         ; $4056: $85
    rst $38                                       ; $4057: $ff
    ld c, e                                       ; $4058: $4b
    cp a                                          ; $4059: $bf
    rst $38                                       ; $405a: $ff
    nop                                           ; $405b: $00
    jp c, $0106                                   ; $405c: $da $06 $01

    ld l, a                                       ; $405f: $6f
    nop                                           ; $4060: $00
    or l                                          ; $4061: $b5
    nop                                           ; $4062: $00
    ld d, a                                       ; $4063: $57
    nop                                           ; $4064: $00
    ld [bc], a                                    ; $4065: $02
    jr c, @+$01                                   ; $4066: $38 $ff

    inc l                                         ; $4068: $2c
    rst $38                                       ; $4069: $ff
    rst $38                                       ; $406a: $ff
    add b                                         ; $406b: $80
    jr z, jr_0c4_404e                             ; $406c: $28 $e0

    ld [bc], a                                    ; $406e: $02
    nop                                           ; $406f: $00
    db $10                                        ; $4070: $10
    ld [$4048], sp                                ; $4071: $08 $48 $40
    inc l                                         ; $4074: $2c
    adc b                                         ; $4075: $88
    add b                                         ; $4076: $80
    sub h                                         ; $4077: $94
    ld [$0203], sp                                ; $4078: $08 $03 $02
    nop                                           ; $407b: $00
    jr nz, jr_0c4_4086                            ; $407c: $20 $08

    ld d, l                                       ; $407e: $55
    ld d, h                                       ; $407f: $54
    inc c                                         ; $4080: $0c
    db $fc                                        ; $4081: $fc
    ld [bc], a                                    ; $4082: $02
    ld b, b                                       ; $4083: $40
    ld b, b                                       ; $4084: $40
    and [hl]                                      ; $4085: $a6

jr_0c4_4086:
    jr nz, jr_0c4_40b8                            ; $4086: $20 $30

    nop                                           ; $4088: $00
    push de                                       ; $4089: $d5
    push de                                       ; $408a: $d5
    nop                                           ; $408b: $00
    cp [hl]                                       ; $408c: $be
    ld b, c                                       ; $408d: $41
    ld d, l                                       ; $408e: $55
    ld d, l                                       ; $408f: $55
    xor d                                         ; $4090: $aa
    xor d                                         ; $4091: $aa
    ld d, h                                       ; $4092: $54
    ld d, h                                       ; $4093: $54
    jr nz, @-$7e                                  ; $4094: $20 $80

    add b                                         ; $4096: $80
    ld b, b                                       ; $4097: $40
    ld [$feff], sp                                ; $4098: $08 $ff $fe
    rst $38                                       ; $409b: $ff
    db $fd                                        ; $409c: $fd
    rst $38                                       ; $409d: $ff

jr_0c4_409e:
    nop                                           ; $409e: $00
    ei                                            ; $409f: $fb
    rst $38                                       ; $40a0: $ff
    rst $30                                       ; $40a1: $f7
    rst $38                                       ; $40a2: $ff
    rst $28                                       ; $40a3: $ef
    rst $38                                       ; $40a4: $ff
    rst $18                                       ; $40a5: $df
    rst $38                                       ; $40a6: $ff
    dec b                                         ; $40a7: $05
    add b                                         ; $40a8: $80
    ld [$40ea], a                                 ; $40a9: $ea $ea $40
    add b                                         ; $40ac: $80
    ld [bc], a                                    ; $40ad: $02
    jr @+$56                                      ; $40ae: $18 $54

    ld [$0000], sp                                ; $40b0: $08 $00 $00
    ld l, d                                       ; $40b3: $6a
    add b                                         ; $40b4: $80
    ld e, l                                       ; $40b5: $5d

jr_0c4_40b6:
    add b                                         ; $40b6: $80
    or [hl]                                       ; $40b7: $b6

jr_0c4_40b8:
    nop                                           ; $40b8: $00
    rst $18                                       ; $40b9: $df
    nop                                           ; $40ba: $00
    nop                                           ; $40bb: $00
    ei                                            ; $40bc: $fb
    inc b                                         ; $40bd: $04
    rst $28                                       ; $40be: $ef
    db $10                                        ; $40bf: $10
    ld a, d                                       ; $40c0: $7a
    add l                                         ; $40c1: $85
    push de                                       ; $40c2: $d5
    ld a, [hl+]                                   ; $40c3: $2a
    nop                                           ; $40c4: $00
    jr z, jr_0c4_409e                             ; $40c5: $28 $d7

    db $10                                        ; $40c7: $10
    rst $28                                       ; $40c8: $ef
    cp l                                          ; $40c9: $bd
    nop                                           ; $40ca: $00
    rst $10                                       ; $40cb: $d7
    nop                                           ; $40cc: $00
    nop                                           ; $40cd: $00
    ld a, a                                       ; $40ce: $7f
    nop                                           ; $40cf: $00
    rst $30                                       ; $40d0: $f7
    ld [$45ba], sp                                ; $40d1: $08 $ba $45
    ld a, a                                       ; $40d4: $7f
    add b                                         ; $40d5: $80
    nop                                           ; $40d6: $00
    xor d                                         ; $40d7: $aa
    ld d, l                                       ; $40d8: $55
    ld d, h                                       ; $40d9: $54
    xor e                                         ; $40da: $ab
    push de                                       ; $40db: $d5
    nop                                           ; $40dc: $00
    cp d                                          ; $40dd: $ba
    nop                                           ; $40de: $00
    nop                                           ; $40df: $00
    db $fd                                        ; $40e0: $fd
    nop                                           ; $40e1: $00
    ld a, a                                       ; $40e2: $7f
    add b                                         ; $40e3: $80
    xor e                                         ; $40e4: $ab
    ld d, h                                       ; $40e5: $54
    ld b, l                                       ; $40e6: $45
    cp d                                          ; $40e7: $ba
    nop                                           ; $40e8: $00
    add d                                         ; $40e9: $82
    ld a, l                                       ; $40ea: $7d
    ld hl, $eede                                  ; $40eb: $21 $de $ee
    nop                                           ; $40ee: $00
    ei                                            ; $40ef: $fb
    nop                                           ; $40f0: $00
    nop                                           ; $40f1: $00
    rst $38                                       ; $40f2: $ff
    nop                                           ; $40f3: $00
    db $db                                        ; $40f4: $db
    inc h                                         ; $40f5: $24
    ld a, l                                       ; $40f6: $7d
    add d                                         ; $40f7: $82
    sub $29                                       ; $40f8: $d6 $29
    nop                                           ; $40fa: $00
    xor b                                         ; $40fb: $a8
    ld d, a                                       ; $40fc: $57
    ld b, h                                       ; $40fd: $44
    cp e                                          ; $40fe: $bb
    ld e, a                                       ; $40ff: $5f

Call_0c4_4100:
    ld e, a                                       ; $4100: $5f
    cp a                                          ; $4101: $bf
    cp a                                          ; $4102: $bf
    jr nc, jr_0c4_4184                            ; $4103: $30 $7f

    ld a, a                                       ; $4105: $7f
    ld l, c                                       ; $4106: $69
    ld [$1804], sp                                ; $4107: $08 $04 $18
    inc d                                         ; $410a: $14
    rla                                           ; $410b: $17
    ld a, [hl+]                                   ; $410c: $2a
    rst $38                                       ; $410d: $ff
    nop                                           ; $410e: $00
    rla                                           ; $410f: $17
    rst $38                                       ; $4110: $ff
    rst $10                                       ; $4111: $d7
    jr z, jr_0c4_40b6                             ; $4112: $28 $a2

    dec e                                         ; $4114: $1d
    push de                                       ; $4115: $d5
    ld a, [bc]                                    ; $4116: $0a
    add hl, de                                    ; $4117: $19
    xor d                                         ; $4118: $aa
    dec b                                         ; $4119: $05
    db $db                                        ; $411a: $db
    add e                                         ; $411b: $83
    db $10                                        ; $411c: $10
    ld e, $18                                     ; $411d: $1e $18
    cp $fe                                        ; $411f: $fe $fe
    ret nc                                        ; $4121: $d0

    ld [$1400], sp                                ; $4122: $08 $00 $14
    nop                                           ; $4125: $00
    xor l                                         ; $4126: $ad
    nop                                           ; $4127: $00
    cp l                                          ; $4128: $bd
    ld b, d                                       ; $4129: $42
    jr z, @+$01                                   ; $412a: $28 $ff

    nop                                           ; $412c: $00
    ld e, l                                       ; $412d: $5d
    cp a                                          ; $412e: $bf
    ld a, [hl+]                                   ; $412f: $2a
    rst $18                                       ; $4130: $df
    ld d, l                                       ; $4131: $55
    xor a                                         ; $4132: $af
    inc h                                         ; $4133: $24
    db $db                                        ; $4134: $db
    add b                                         ; $4135: $80
    ld b, a                                       ; $4136: $47
    ld bc, $4081                                  ; $4137: $01 $81 $40
    ld bc, $0120                                  ; $413a: $01 $20 $01
    db $10                                        ; $413d: $10
    ld bc, $0800                                  ; $413e: $01 $00 $08
    ld bc, $916c                                  ; $4141: $01 $6c $91
    nop                                           ; $4144: $00
    ld bc, $4041                                  ; $4145: $01 $41 $40
    ld [hl], b                                    ; $4148: $70
    add b                                         ; $4149: $80
    cp c                                          ; $414a: $b9
    nop                                           ; $414b: $00
    rst $08                                       ; $414c: $cf
    jr nz, @-$06                                  ; $414d: $20 $f8

    ld [$b130], sp                                ; $414f: $08 $30 $b1
    ld a, [hl]                                    ; $4152: $7e
    ld a, b                                       ; $4153: $78
    nop                                           ; $4154: $00
    rst $38                                       ; $4155: $ff
    xor $f0                                       ; $4156: $ee $f0
    ld e, e                                       ; $4158: $5b
    db $e4                                        ; $4159: $e4
    push af                                       ; $415a: $f5
    ret z                                         ; $415b: $c8

    ld e, e                                       ; $415c: $5b
    nop                                           ; $415d: $00
    ldh [rNR52], a                                ; $415e: $e0 $26
    ret nz                                        ; $4160: $c0

    push de                                       ; $4161: $d5
    push bc                                       ; $4162: $c5

jr_0c4_4163:
    cp d                                          ; $4163: $ba
    xor d                                         ; $4164: $aa
    db $db                                        ; $4165: $db
    nop                                           ; $4166: $00
    inc h                                         ; $4167: $24
    ld e, [hl]                                    ; $4168: $5e
    and d                                         ; $4169: $a2
    call c, $a854                                 ; $416a: $dc $54 $a8
    jr nz, @+$01                                  ; $416d: $20 $ff

    nop                                           ; $416f: $00
    nop                                           ; $4170: $00
    xor b                                         ; $4171: $a8
    jr nz, jr_0c4_4163                            ; $4172: $20 $ef

    rst $38                                       ; $4174: $ff
    rst $38                                       ; $4175: $ff
    rst $30                                       ; $4176: $f7
    rst $30                                       ; $4177: $f7
    nop                                           ; $4178: $00
    ld hl, sp-$01                                 ; $4179: $f8 $ff
    cp $fd                                        ; $417b: $fe $fd
    db $fd                                        ; $417d: $fd
    ld [$6bea], a                                 ; $417e: $ea $ea $6b
    nop                                           ; $4181: $00
    sub h                                         ; $4182: $94
    xor d                                         ; $4183: $aa

jr_0c4_4184:
    xor d                                         ; $4184: $aa
    ld [hl], a                                    ; $4185: $77
    add b                                         ; $4186: $80
    ld e, [hl]                                    ; $4187: $5e
    add b                                         ; $4188: $80
    dec sp                                        ; $4189: $3b
    ld bc, $6fc4                                  ; $418a: $01 $c4 $6f
    sub b                                         ; $418d: $90
    ld a, [hl-]                                   ; $418e: $3a
    push bc                                       ; $418f: $c5
    ld d, l                                       ; $4190: $55
    xor d                                         ; $4191: $aa
    ret nc                                        ; $4192: $d0

    ld [$5300], sp                                ; $4193: $08 $00 $53
    nop                                           ; $4196: $00
    ld e, e                                       ; $4197: $5b
    nop                                           ; $4198: $00
    ld a, d                                       ; $4199: $7a
    add l                                         ; $419a: $85
    ld d, c                                       ; $419b: $51
    rst $38                                       ; $419c: $ff
    ld [$ff3a], sp                                ; $419d: $08 $3a $ff
    dec d                                         ; $41a0: $15
    rst $38                                       ; $41a1: $ff
    ld [hl], b                                    ; $41a2: $70
    ld [$f708], sp                                ; $41a3: $08 $08 $f7
    stop                                          ; $41a6: $10 $00
    rst $38                                       ; $41a8: $ff
    nop                                           ; $41a9: $00
    rst $38                                       ; $41aa: $ff
    ld b, l                                       ; $41ab: $45
    rst $38                                       ; $41ac: $ff
    and d                                         ; $41ad: $a2
    rst $38                                       ; $41ae: $ff
    ld d, l                                       ; $41af: $55
    jr nz, @+$01                                  ; $41b0: $20 $ff

    cp e                                          ; $41b2: $bb
    inc de                                        ; $41b3: $13
    ld bc, $ff00                                  ; $41b4: $01 $00 $ff
    add d                                         ; $41b7: $82
    rst $38                                       ; $41b8: $ff
    jr z, jr_0c4_41bb                             ; $41b9: $28 $00

jr_0c4_41bb:
    rst $38                                       ; $41bb: $ff
    dec b                                         ; $41bc: $05
    rst $38                                       ; $41bd: $ff
    xor e                                         ; $41be: $ab
    rst $38                                       ; $41bf: $ff
    or $ff                                        ; $41c0: $f6 $ff
    db $dd                                        ; $41c2: $dd
    nop                                           ; $41c3: $00
    rst $38                                       ; $41c4: $ff
    ld l, a                                       ; $41c5: $6f
    rst $38                                       ; $41c6: $ff
    ld bc, $10ff                                  ; $41c7: $01 $ff $10
    rst $38                                       ; $41ca: $ff
    adc d                                         ; $41cb: $8a
    xor b                                         ; $41cc: $a8
    inc e                                         ; $41cd: $1c
    nop                                           ; $41ce: $00
    db $eb                                        ; $41cf: $eb
    cpl                                           ; $41d0: $2f
    ld bc, $80fe                                  ; $41d1: $01 $fe $80
    ld bc, $8040                                  ; $41d4: $01 $40 $80
    sbc a                                         ; $41d7: $9f
    nop                                           ; $41d8: $00
    ldh [$f5], a                                  ; $41d9: $e0 $f5
    ld a, [$fde2]                                 ; $41db: $fa $e2 $fd
    ld h, h                                       ; $41de: $64
    rst $38                                       ; $41df: $ff
    jp z, Jump_0c4_7d06                           ; $41e0: $ca $06 $7d

    and h                                         ; $41e3: $a4
    ld a, e                                       ; $41e4: $7b
    ret                                           ; $41e5: $c9


    ld h, $12                                     ; $41e6: $26 $12
    nop                                           ; $41e8: $00
    inc a                                         ; $41e9: $3c
    nop                                           ; $41ea: $00
    ret nc                                        ; $41eb: $d0

    dec hl                                        ; $41ec: $2b
    rst $38                                       ; $41ed: $ff
    xor d                                         ; $41ee: $aa
    ld d, a                                       ; $41ef: $57
    ld bc, $5bef                                  ; $41f0: $01 $ef $5b
    ld bc, $30ff                                  ; $41f3: $01 $ff $30
    nop                                           ; $41f6: $00
    ld d, b                                       ; $41f7: $50
    ld c, b                                       ; $41f8: $48
    ld [hl], d                                    ; $41f9: $72
    rst $38                                       ; $41fa: $ff
    ld d, b                                       ; $41fb: $50
    ld h, b                                       ; $41fc: $60
    jr nz, jr_0c4_4207                            ; $41fd: $20 $08

    ld d, b                                       ; $41ff: $50
    ld c, b                                       ; $4200: $48
    adc b                                         ; $4201: $88
    rst $30                                       ; $4202: $f7
    ld b, b                                       ; $4203: $40
    ld e, b                                       ; $4204: $58
    and b                                         ; $4205: $a0
    nop                                           ; $4206: $00

jr_0c4_4207:
    ld a, a                                       ; $4207: $7f
    sub c                                         ; $4208: $91
    ld l, a                                       ; $4209: $6f
    ld [$04f7], sp                                ; $420a: $08 $f7 $04
    cp e                                          ; $420d: $bb
    ld a, [de]                                    ; $420e: $1a
    nop                                           ; $420f: $00
    and l                                         ; $4210: $a5
    ld a, [bc]                                    ; $4211: $0a
    or l                                          ; $4212: $b5
    ld [$24f7], sp                                ; $4213: $08 $f7 $24
    ld e, e                                       ; $4216: $5b
    daa                                           ; $4217: $27
    nop                                           ; $4218: $00
    db $fc                                        ; $4219: $fc
    daa                                           ; $421a: $27
    ld hl, sp+$15                                 ; $421b: $f8 $15
    ld hl, sp-$53                                 ; $421d: $f8 $ad
    ldh a, [rWY]                                  ; $421f: $f0 $4a
    nop                                           ; $4221: $00
    ldh a, [$3d]                                  ; $4222: $f0 $3d
    ldh a, [$ef]                                  ; $4224: $f0 $ef
    ldh a, [$5d]                                  ; $4226: $f0 $5d
    ldh [$fb], a                                  ; $4228: $e0 $fb
    nop                                           ; $422a: $00
    inc b                                         ; $422b: $04
    ld l, e                                       ; $422c: $6b
    inc d                                         ; $422d: $14
    cp [hl]                                       ; $422e: $be
    ld bc, $0db2                                  ; $422f: $01 $b2 $0d
    ld h, [hl]                                    ; $4232: $66
    nop                                           ; $4233: $00
    add hl, bc                                    ; $4234: $09
    ld e, d                                       ; $4235: $5a
    dec b                                         ; $4236: $05
    ld d, c                                       ; $4237: $51
    rrca                                          ; $4238: $0f
    ld a, [$4405]                                 ; $4239: $fa $05 $44
    nop                                           ; $423c: $00
    ei                                            ; $423d: $fb
    ld b, b                                       ; $423e: $40
    cp a                                          ; $423f: $bf
    sub b                                         ; $4240: $90
    rst $28                                       ; $4241: $ef
    inc d                                         ; $4242: $14
    ld a, a                                       ; $4243: $7f
    jr nz, jr_0c4_4246                            ; $4244: $20 $00

jr_0c4_4246:
    ld a, a                                       ; $4246: $7f
    ld c, b                                       ; $4247: $48
    ld a, a                                       ; $4248: $7f
    ld h, b                                       ; $4249: $60
    rst $38                                       ; $424a: $ff
    jr nc, @+$01                                  ; $424b: $30 $ff

    sbc $00                                       ; $424d: $de $00
    ld l, b                                       ; $424f: $68
    ld a, [bc]                                    ; $4250: $0a
    ldh a, [$57]                                  ; $4251: $f0 $57
    ld hl, sp+$1e                                 ; $4253: $f8 $1e
    pop hl                                        ; $4255: $e1
    cp e                                          ; $4256: $bb

jr_0c4_4257:
    nop                                           ; $4257: $00
    ld h, h                                       ; $4258: $64
    ld d, a                                       ; $4259: $57
    xor b                                         ; $425a: $a8
    add hl, bc                                    ; $425b: $09
    and $2a                                       ; $425c: $e6 $2a
    push hl                                       ; $425e: $e5
    or $00                                        ; $425f: $f6 $00
    add hl, bc                                    ; $4261: $09
    sub $01                                       ; $4262: $d6 $01
    db $f4                                        ; $4264: $f4
    dec bc                                        ; $4265: $0b
    cp [hl]                                       ; $4266: $be
    ld b, c                                       ; $4267: $41
    ld hl, sp+$00                                 ; $4268: $f8 $00
    inc bc                                        ; $426a: $03
    ld l, [hl]                                    ; $426b: $6e
    add c                                         ; $426c: $81
    cp [hl]                                       ; $426d: $be
    inc bc                                        ; $426e: $03
    ld hl, sp+$06                                 ; $426f: $f8 $06
    adc b                                         ; $4271: $88
    nop                                           ; $4272: $00
    rst $30                                       ; $4273: $f7
    ld b, h                                       ; $4274: $44
    cp a                                          ; $4275: $bf
    jr nz, jr_0c4_4257                            ; $4276: $20 $df

    ld b, l                                       ; $4278: $45
    cp e                                          ; $4279: $bb
    or e                                          ; $427a: $b3
    nop                                           ; $427b: $00
    ld c, l                                       ; $427c: $4d
    ld d, h                                       ; $427d: $54
    xor e                                         ; $427e: $ab
    ld hl, $48df                                  ; $427f: $21 $df $48
    or a                                          ; $4282: $b7
    xor a                                         ; $4283: $af
    nop                                           ; $4284: $00
    ldh a, [$9d]                                  ; $4285: $f0 $9d
    ldh [rRP], a                                  ; $4287: $e0 $56
    ldh [$8d], a                                  ; $4289: $e0 $8d
    ldh [$09], a                                  ; $428b: $e0 $09
    nop                                           ; $428d: $00
    ldh [$ad], a                                  ; $428e: $e0 $ad
    ldh [$5e], a                                  ; $4290: $e0 $5e
    ldh [$7b], a                                  ; $4292: $e0 $7b
    ret nz                                        ; $4294: $c0

    db $ed                                        ; $4295: $ed
    nop                                           ; $4296: $00
    inc de                                        ; $4297: $13
    xor l                                         ; $4298: $ad
    ld d, d                                       ; $4299: $52
    ld a, [$9407]                                 ; $429a: $fa $07 $94
    dec hl                                        ; $429d: $2b
    ld l, h                                       ; $429e: $6c
    nop                                           ; $429f: $00
    inc de                                        ; $42a0: $13
    ld sp, $e20f                                  ; $42a1: $31 $0f $e2
    rra                                           ; $42a4: $1f
    ld [hl], h                                    ; $42a5: $74
    dec bc                                        ; $42a6: $0b
    ld [de], a                                    ; $42a7: $12
    nop                                           ; $42a8: $00
    rst $28                                       ; $42a9: $ef
    nop                                           ; $42aa: $00
    rst $38                                       ; $42ab: $ff
    ld b, c                                       ; $42ac: $41
    cp a                                          ; $42ad: $bf
    inc l                                         ; $42ae: $2c
    ei                                            ; $42af: $fb
    add b                                         ; $42b0: $80
    nop                                           ; $42b1: $00
    rst $38                                       ; $42b2: $ff
    ld [de], a                                    ; $42b3: $12
    db $fd                                        ; $42b4: $fd
    ret nz                                        ; $42b5: $c0

    rst $38                                       ; $42b6: $ff
    ld h, b                                       ; $42b7: $60
    rst $38                                       ; $42b8: $ff
    ld e, e                                       ; $42b9: $5b
    nop                                           ; $42ba: $00
    ldh [$2b], a                                  ; $42bb: $e0 $2b
    ret nz                                        ; $42bd: $c0

    ld e, a                                       ; $42be: $5f
    ldh [$3a], a                                  ; $42bf: $e0 $3a
    push bc                                       ; $42c1: $c5
    push af                                       ; $42c2: $f5
    nop                                           ; $42c3: $00
    ld c, b                                       ; $42c4: $48
    ld l, $d1                                     ; $42c5: $2e $d1
    inc de                                        ; $42c7: $13
    db $ec                                        ; $42c8: $ec

jr_0c4_42c9:
    ld a, c                                       ; $42c9: $79
    add $94                                       ; $42ca: $c6 $94
    nop                                           ; $42cc: $00
    daa                                           ; $42cd: $27
    ld e, c                                       ; $42ce: $59
    ld b, $d0                                     ; $42cf: $06 $d0
    cpl                                           ; $42d1: $2f
    cp b                                          ; $42d2: $b8
    dec b                                         ; $42d3: $05
    ldh a, [rP1]                                  ; $42d4: $f0 $00
    dec c                                         ; $42d6: $0d
    add sp, $05                                   ; $42d7: $e8 $05
    ld a, l                                       ; $42d9: $7d
    ld b, $f8                                     ; $42da: $06 $f8
    dec b                                         ; $42dc: $05
    inc b                                         ; $42dd: $04
    nop                                           ; $42de: $00
    rst $38                                       ; $42df: $ff
    ld [de], a                                    ; $42e0: $12
    rst $38                                       ; $42e1: $ff
    add c                                         ; $42e2: $81
    ld a, a                                       ; $42e3: $7f
    ld b, l                                       ; $42e4: $45
    cp a                                          ; $42e5: $bf
    jp nc, Jump_000_2f00                          ; $42e6: $d2 $00 $2f

    ld d, c                                       ; $42e9: $51
    xor a                                         ; $42ea: $af
    ld b, d                                       ; $42eb: $42
    cp a                                          ; $42ec: $bf
    nop                                           ; $42ed: $00
    rst $38                                       ; $42ee: $ff
    cp e                                          ; $42ef: $bb
    nop                                           ; $42f0: $00
    ret nz                                        ; $42f1: $c0

    halt                                          ; $42f2: $76
    add c                                         ; $42f3: $81
    ld e, e                                       ; $42f4: $5b
    add b                                         ; $42f5: $80
    ld l, l                                       ; $42f6: $6d
    add b                                         ; $42f7: $80
    ld d, e                                       ; $42f8: $53
    nop                                           ; $42f9: $00
    add b                                         ; $42fa: $80
    ld [$bb80], a                                 ; $42fb: $ea $80 $bb
    ret nz                                        ; $42fe: $c0

    sub $80                                       ; $42ff: $d6 $80
    cp c                                          ; $4301: $b9
    nop                                           ; $4302: $00
    ld c, [hl]                                    ; $4303: $4e
    or h                                          ; $4304: $b4
    ld c, e                                       ; $4305: $4b
    jp hl                                         ; $4306: $e9


    ld e, $90                                     ; $4307: $1e $90
    ld l, e                                       ; $4309: $6b
    ld d, c                                       ; $430a: $51
    nop                                           ; $430b: $00
    dec hl                                        ; $430c: $2b
    jp nc, $c52b                                  ; $430d: $d2 $2b $c5

    ccf                                           ; $4310: $3f
    add sp, $17                                   ; $4311: $e8 $17
    add hl, bc                                    ; $4313: $09
    add b                                         ; $4314: $80
    ld a, [hl]                                    ; $4315: $7e
    ld bc, $ff05                                  ; $4316: $01 $05 $ff
    and b                                         ; $4319: $a0
    rst $38                                       ; $431a: $ff
    ld b, l                                       ; $431b: $45
    cp e                                          ; $431c: $bb
    ld [hl+], a                                   ; $431d: $22
    ld [hl+], a                                   ; $431e: $22
    db $fd                                        ; $431f: $fd
    ld b, d                                       ; $4320: $42
    ld h, d                                       ; $4321: $62
    nop                                           ; $4322: $00
    halt                                          ; $4323: $76
    add b                                         ; $4324: $80
    xor l                                         ; $4325: $ad
    ld e, [hl]                                    ; $4326: $5e
    ld [bc], a                                    ; $4327: $02
    or l                                          ; $4328: $b5
    nop                                           ; $4329: $00
    ld a, [bc]                                    ; $432a: $0a
    sbc a                                         ; $432b: $9f
    jr nz, jr_0c4_42c9                            ; $432c: $20 $9b

    inc h                                         ; $432e: $24
    daa                                           ; $432f: $27
    ret c                                         ; $4330: $d8

    di                                            ; $4331: $f3
    nop                                           ; $4332: $00
    adc h                                         ; $4333: $8c
    ld d, b                                       ; $4334: $50
    cp a                                          ; $4335: $bf
    ld h, h                                       ; $4336: $64
    dec de                                        ; $4337: $1b
    ld b, d                                       ; $4338: $42
    cp l                                          ; $4339: $bd
    ld a, [c]                                     ; $433a: $f2
    nop                                           ; $433b: $00
    dec c                                         ; $433c: $0d
    and l                                         ; $433d: $a5
    ld a, [de]                                    ; $433e: $1a
    ld [hl], d                                    ; $433f: $72
    dec c                                         ; $4340: $0d
    cp $05                                        ; $4341: $fe $05
    ldh a, [rP1]                                  ; $4343: $f0 $00
    rrca                                          ; $4345: $0f
    ld [de], a                                    ; $4346: $12
    rst $38                                       ; $4347: $ff
    ld c, c                                       ; $4348: $49
    cp $05                                        ; $4349: $fe $05
    cp $4c                                        ; $434b: $fe $4c
    nop                                           ; $434d: $00
    cp a                                          ; $434e: $bf
    sbc b                                         ; $434f: $98
    ld l, a                                       ; $4350: $6f
    and l                                         ; $4351: $a5
    ld e, a                                       ; $4352: $5f
    adc l                                         ; $4353: $8d
    ld [hl], a                                    ; $4354: $77
    ld bc, $ff00                                  ; $4355: $01 $00 $ff
    db $ed                                        ; $4358: $ed
    ld [bc], a                                    ; $4359: $02
    jp c, Jump_0c4_6f05                           ; $435a: $da $05 $6f

    nop                                           ; $435d: $00
    ld l, h                                       ; $435e: $6c
    nop                                           ; $435f: $00
    ld bc, $002b                                  ; $4360: $01 $2b $00
    ld l, c                                       ; $4363: $69
    nop                                           ; $4364: $00
    rst $10                                       ; $4365: $d7
    add b                                         ; $4366: $80
    dec a                                         ; $4367: $3d
    nop                                           ; $4368: $00
    add b                                         ; $4369: $80
    ld b, $06                                     ; $436a: $06 $06
    dec hl                                        ; $436c: $2b
    rst $18                                       ; $436d: $df
    add a                                         ; $436e: $87
    rst $38                                       ; $436f: $ff
    xor e                                         ; $4370: $ab
    nop                                           ; $4371: $00
    inc d                                         ; $4372: $14
    ld a, [c]                                     ; $4373: $f2
    dec c                                         ; $4374: $0d
    ld a, [c]                                     ; $4375: $f2
    dec c                                         ; $4376: $0d
    jp hl                                         ; $4377: $e9


    ld b, $7f                                     ; $4378: $06 $7f
    ld [$5000], sp                                ; $437a: $08 $00 $50
    ldh [$6d], a                                  ; $437d: $e0 $6d
    ld h, b                                       ; $437f: $60
    inc bc                                        ; $4380: $03
    cp $ff                                        ; $4381: $fe $ff
    db $f4                                        ; $4383: $f4
    nop                                           ; $4384: $00
    ei                                            ; $4385: $fb
    and b                                         ; $4386: $a0
    rst $38                                       ; $4387: $ff
    push de                                       ; $4388: $d5
    ld a, [$bf90]                                 ; $4389: $fa $90 $bf
    ld a, [bc]                                    ; $438c: $0a
    ld [$2767], sp                                ; $438d: $08 $67 $27
    rst $18                                       ; $4390: $df
    sbc a                                         ; $4391: $9f
    and b                                         ; $4392: $a0
    ld [bc], a                                    ; $4393: $02
    dec c                                         ; $4394: $0d
    cp $69                                        ; $4395: $fe $69
    nop                                           ; $4397: $00
    cp [hl]                                       ; $4398: $be
    rrca                                          ; $4399: $0f
    db $fc                                        ; $439a: $fc
    add d                                         ; $439b: $82
    ld a, l                                       ; $439c: $7d
    nop                                           ; $439d: $00
    ld b, $11                                     ; $439e: $06 $11
    nop                                           ; $43a0: $00
    xor $b1                                       ; $43a1: $ee $b1
    rst $38                                       ; $43a3: $ff
    and e                                         ; $43a4: $a3
    rst $18                                       ; $43a5: $df
    ccf                                           ; $43a6: $3f
    add b                                         ; $43a7: $80
    ld a, [$0100]                                 ; $43a8: $fa $00 $01
    ccf                                           ; $43ab: $3f
    add b                                         ; $43ac: $80
    push de                                       ; $43ad: $d5
    nop                                           ; $43ae: $00
    db $10                                        ; $43af: $10
    ldh [$4e], a                                  ; $43b0: $e0 $4e
    nop                                           ; $43b2: $00
    ldh a, [$f4]                                  ; $43b3: $f0 $f4
    ei                                            ; $43b5: $fb
    push hl                                       ; $43b6: $e5
    ei                                            ; $43b7: $fb
    ld c, b                                       ; $43b8: $48
    rst $38                                       ; $43b9: $ff
    xor c                                         ; $43ba: $a9
    nop                                           ; $43bb: $00
    or $52                                        ; $43bc: $f6 $52
    db $ed                                        ; $43be: $ed
    and c                                         ; $43bf: $a1
    ld e, [hl]                                    ; $43c0: $5e
    ld l, [hl]                                    ; $43c1: $6e
    inc bc                                        ; $43c2: $03
    db $eb                                        ; $43c3: $eb
    nop                                           ; $43c4: $00
    rlca                                          ; $43c5: $07
    rst $20                                       ; $43c6: $e7
    rra                                           ; $43c7: $1f
    ld c, l                                       ; $43c8: $4d
    cp $f7                                        ; $43c9: $fe $f7
    db $fc                                        ; $43cb: $fc
    xor [hl]                                      ; $43cc: $ae
    nop                                           ; $43cd: $00
    ld sp, hl                                     ; $43ce: $f9
    ld e, e                                       ; $43cf: $5b
    db $fc                                        ; $43d0: $fc
    ld b, l                                       ; $43d1: $45
    cp b                                          ; $43d2: $b8
    ld b, $06                                     ; $43d3: $06 $06
    dec c                                         ; $43d5: $0d
    jr nz, @+$01                                  ; $43d6: $20 $ff

    rlca                                          ; $43d8: $07
    ld h, b                                       ; $43d9: $60
    nop                                           ; $43da: $00
    ld [hl], b                                    ; $43db: $70
    adc a                                         ; $43dc: $8f
    ld l, c                                       ; $43dd: $69
    ld b, $f2                                     ; $43de: $06 $f2
    nop                                           ; $43e0: $00
    dec b                                         ; $43e1: $05
    xor a                                         ; $43e2: $af
    nop                                           ; $43e3: $00
    ld b, b                                       ; $43e4: $40
    ldh [rIE], a                                  ; $43e5: $e0 $ff
    ldh [$ef], a                                  ; $43e7: $e0 $ef
    nop                                           ; $43e9: $00
    ldh a, [$7d]                                  ; $43ea: $f0 $7d
    rst $38                                       ; $43ec: $ff
    add sp, $7f                                   ; $43ed: $e8 $7f
    ret nc                                        ; $43ef: $d0

    rst $38                                       ; $43f0: $ff
    ld l, d                                       ; $43f1: $6a
    nop                                           ; $43f2: $00
    db $fd                                        ; $43f3: $fd
    ret z                                         ; $43f4: $c8

    ld e, a                                       ; $43f5: $5f
    ld a, [de]                                    ; $43f6: $1a
    and [hl]                                      ; $43f7: $a6
    ld h, $df                                     ; $43f8: $26 $df
    ld e, a                                       ; $43fa: $5f
    nop                                           ; $43fb: $00
    cp a                                          ; $43fc: $bf
    rst $38                                       ; $43fd: $ff
    rst $38                                       ; $43fe: $ff
    rrca                                          ; $43ff: $0f

Jump_0c4_4400:
    cp $16                                        ; $4400: $fe $16
    db $fd                                        ; $4402: $fd
    add l                                         ; $4403: $85
    nop                                           ; $4404: $00
    ld a, [hl]                                    ; $4405: $7e
    ld b, c                                       ; $4406: $41
    cp h                                          ; $4407: $bc
    ld bc, $100a                                  ; $4408: $01 $0a $10
    rst $28                                       ; $440b: $ef
    pop de                                        ; $440c: $d1
    nop                                           ; $440d: $00
    rst $38                                       ; $440e: $ff
    ld h, e                                       ; $440f: $63
    rst $18                                       ; $4410: $df
    ld a, a                                       ; $4411: $7f
    add b                                         ; $4412: $80
    db $fc                                        ; $4413: $fc
    ld bc, $089f                                  ; $4414: $01 $9f $08
    ld b, b                                       ; $4417: $40
    ld l, e                                       ; $4418: $6b
    add b                                         ; $4419: $80
    nop                                           ; $441a: $00
    ld h, [hl]                                    ; $441b: $66
    ld bc, $fdf2                                  ; $441c: $01 $f2 $fd
    ldh [rP1], a                                  ; $441f: $e0 $00

jr_0c4_4421:
    rst $38                                       ; $4421: $ff
    ld l, c                                       ; $4422: $69
    cp $d0                                        ; $4423: $fe $d0
    ld a, a                                       ; $4425: $7f
    xor c                                         ; $4426: $a9
    halt                                          ; $4427: $76
    ret nc                                        ; $4428: $d0

    ld [$ae2f], sp                                ; $4429: $08 $2f $ae
    ld [bc], a                                    ; $442c: $02
    ld a, [$0060]                                 ; $442d: $fa $60 $00
    rst $08                                       ; $4430: $cf
    cp $f5                                        ; $4431: $fe $f5
    nop                                           ; $4433: $00
    cp $de                                        ; $4434: $fe $de
    ld a, l                                       ; $4436: $7d
    dec l                                         ; $4437: $2d
    cp $a2                                        ; $4438: $fe $a2
    ld e, h                                       ; $443a: $5c
    ld a, [bc]                                    ; $443b: $0a
    nop                                           ; $443c: $00
    dec bc                                        ; $443d: $0b
    ld c, $ff                                     ; $443e: $0e $ff
    dec bc                                        ; $4440: $0b
    rst $38                                       ; $4441: $ff
    di                                            ; $4442: $f3
    inc c                                         ; $4443: $0c
    ld l, c                                       ; $4444: $69
    nop                                           ; $4445: $00
    add [hl]                                      ; $4446: $86
    or h                                          ; $4447: $b4
    inc bc                                        ; $4448: $03
    ld l, c                                       ; $4449: $69
    ld [bc], a                                    ; $444a: $02
    rst $30                                       ; $444b: $f7
    nop                                           ; $444c: $00
    ld h, b                                       ; $444d: $60
    nop                                           ; $444e: $00
    ret nz                                        ; $444f: $c0

    jp c, $efe1                                   ; $4450: $da $e1 $ef

    ldh a, [$7f]                                  ; $4453: $f0 $7f
    rst $38                                       ; $4455: $ff
    ld a, b                                       ; $4456: $78
    add b                                         ; $4457: $80
    ld h, d                                       ; $4458: $62
    nop                                           ; $4459: $00
    inc [hl]                                      ; $445a: $34
    rst $38                                       ; $445b: $ff
    add sp, $2f                                   ; $445c: $e8 $2f
    inc e                                         ; $445e: $1c
    and [hl]                                      ; $445f: $a6
    sub [hl]                                      ; $4460: $96
    nop                                           ; $4461: $00
    ld l, a                                       ; $4462: $6f
    ld l, a                                       ; $4463: $6f
    cp a                                          ; $4464: $bf
    ld a, a                                       ; $4465: $7f
    rst $38                                       ; $4466: $ff
    ld c, $ff                                     ; $4467: $0e $ff
    adc e                                         ; $4469: $8b
    nop                                           ; $446a: $00
    ld a, [hl]                                    ; $446b: $7e
    ld b, d                                       ; $446c: $42
    cp a                                          ; $446d: $bf
    db $10                                        ; $446e: $10
    xor $01                                       ; $446f: $ee $01
    ld a, [bc]                                    ; $4471: $0a
    ld [$f701], sp                                ; $4472: $08 $01 $f7
    jp nc, Jump_0c4_4aff                          ; $4475: $d2 $ff $4a

    rst $30                                       ; $4478: $f7
    ld a, a                                       ; $4479: $7f
    add b                                         ; $447a: $80
    sub h                                         ; $447b: $94
    inc bc                                        ; $447c: $03
    ld [$bd40], sp                                ; $447d: $08 $40 $bd
    ld b, b                                       ; $4480: $40
    jr nz, jr_0c4_4421                            ; $4481: $20 $9e

    ld bc, $fdf2                                  ; $4483: $01 $f2 $fd
    ldh a, [$80]                                  ; $4486: $f0 $80
    ld h, b                                       ; $4488: $60
    nop                                           ; $4489: $00
    ld l, b                                       ; $448a: $68
    cp a                                          ; $448b: $bf
    call nc, $e83b                                ; $448c: $d4 $3b $e8
    rla                                           ; $448f: $17
    xor h                                         ; $4490: $ac
    nop                                           ; $4491: $00
    ld b, $7e                                     ; $4492: $06 $7e
    rlca                                          ; $4494: $07
    rst $10                                       ; $4495: $d7
    cpl                                           ; $4496: $2f
    adc $ff                                       ; $4497: $ce $ff
    ld l, l                                       ; $4499: $6d
    nop                                           ; $449a: $00
    cp $2f                                        ; $449b: $fe $2f
    cp $9a                                        ; $449d: $fe $9a
    ld a, a                                       ; $449f: $7f
    ld de, $0cee                                  ; $44a0: $11 $ee $0c
    nop                                           ; $44a3: $00
    dec c                                         ; $44a4: $0d
    ld d, [hl]                                    ; $44a5: $56
    cp a                                          ; $44a6: $bf
    rrca                                          ; $44a7: $0f
    rst $38                                       ; $44a8: $ff
    push de                                       ; $44a9: $d5
    ld a, [bc]                                    ; $44aa: $0a
    ld a, c                                       ; $44ab: $79
    nop                                           ; $44ac: $00
    add [hl]                                      ; $44ad: $86
    ld e, c                                       ; $44ae: $59
    add d                                         ; $44af: $82
    or [hl]                                       ; $44b0: $b6
    ld bc, $007a                                  ; $44b1: $01 $7a $00
    and b                                         ; $44b4: $a0
    add b                                         ; $44b5: $80
    ld h, b                                       ; $44b6: $60
    nop                                           ; $44b7: $00
    xor a                                         ; $44b8: $af
    ldh a, [rIE]                                  ; $44b9: $f0 $ff
    ld a, a                                       ; $44bb: $7f
    ld a, d                                       ; $44bc: $7a
    db $fd                                        ; $44bd: $fd
    jr c, jr_0c4_44c0                             ; $44be: $38 $00

jr_0c4_44c0:
    rst $38                                       ; $44c0: $ff
    sbc d                                         ; $44c1: $9a
    ld a, a                                       ; $44c2: $7f
    db $f4                                        ; $44c3: $f4
    rra                                           ; $44c4: $1f
    sbc $01                                       ; $44c5: $de $01
    ld l, a                                       ; $44c7: $6f
    nop                                           ; $44c8: $00
    add b                                         ; $44c9: $80
    xor a                                         ; $44ca: $af
    ld bc, $01de                                  ; $44cb: $01 $de $01
    adc a                                         ; $44ce: $8f
    ld bc, $00ad                                  ; $44cf: $01 $ad $00
    ld [bc], a                                    ; $44d2: $02
    cp b                                          ; $44d3: $b8
    rlca                                          ; $44d4: $07
    cp h                                          ; $44d5: $bc
    dec b                                         ; $44d6: $05
    sub b                                         ; $44d7: $90
    rst $38                                       ; $44d8: $ff
    jr z, jr_0c4_44db                             ; $44d9: $28 $00

jr_0c4_44db:
    rst $10                                       ; $44db: $d7
    ld b, b                                       ; $44dc: $40
    rst $38                                       ; $44dd: $ff
    add hl, bc                                    ; $44de: $09
    rst $38                                       ; $44df: $ff
    ld b, d                                       ; $44e0: $42
    cp l                                          ; $44e1: $bd
    ld c, b                                       ; $44e2: $48
    nop                                           ; $44e3: $00
    cp a                                          ; $44e4: $bf
    add e                                         ; $44e5: $83
    ld a, a                                       ; $44e6: $7f
    ld a, [bc]                                    ; $44e7: $0a
    rst $38                                       ; $44e8: $ff
    sub [hl]                                      ; $44e9: $96
    ld a, c                                       ; $44ea: $79
    dec c                                         ; $44eb: $0d
    nop                                           ; $44ec: $00
    ldh a, [$2d]                                  ; $44ed: $f0 $2d
    ld a, [c]                                     ; $44ef: $f2
    ld d, $e0                                     ; $44f0: $16 $e0
    add a                                         ; $44f2: $87
    ldh a, [$95]                                  ; $44f3: $f0 $95
    ld [bc], a                                    ; $44f5: $02
    ldh [$7b], a                                  ; $44f6: $e0 $7b
    and b                                         ; $44f8: $a0
    rra                                           ; $44f9: $1f
    ldh [$6f], a                                  ; $44fa: $e0 $6f
    ld c, $04                                     ; $44fc: $0e $04
    or $00                                        ; $44fe: $f6 $00
    ld bc, $50ad                                  ; $4500: $01 $ad $50
    db $db                                        ; $4503: $db
    inc b                                         ; $4504: $04
    cp e                                          ; $4505: $bb
    ld b, l                                       ; $4506: $45
    push de                                       ; $4507: $d5
    nop                                           ; $4508: $00
    dec hl                                        ; $4509: $2b
    xor [hl]                                      ; $450a: $ae
    ld d, c                                       ; $450b: $51
    sub c                                         ; $450c: $91
    cp $14                                        ; $450d: $fe $14
    cp a                                          ; $450f: $bf
    ld b, c                                       ; $4510: $41
    nop                                           ; $4511: $00
    cp $52                                        ; $4512: $fe $52
    db $fd                                        ; $4514: $fd
    dec h                                         ; $4515: $25
    ld a, [$724d]                                 ; $4516: $fa $4d $72
    or c                                          ; $4519: $b1
    nop                                           ; $451a: $00
    xor $08                                       ; $451b: $ee $08
    rst $30                                       ; $451d: $f7
    dec bc                                        ; $451e: $0b
    db $fc                                        ; $451f: $fc
    add [hl]                                      ; $4520: $86
    ld a, c                                       ; $4521: $79
    dec hl                                        ; $4522: $2b
    nop                                           ; $4523: $00
    call nc, $b348                                ; $4524: $d4 $48 $b3
    xor d                                         ; $4527: $aa
    ld d, c                                       ; $4528: $51
    inc hl                                        ; $4529: $23
    call c, Call_000_0011                         ; $452a: $dc $11 $00
    cp $07                                        ; $452d: $fe $07
    ldh a, [$7f]                                  ; $452f: $f0 $7f
    add b                                         ; $4531: $80
    sbc l                                         ; $4532: $9d
    ld b, b                                       ; $4533: $40
    db $eb                                        ; $4534: $eb
    ld [bc], a                                    ; $4535: $02
    nop                                           ; $4536: $00
    or a                                          ; $4537: $b7
    nop                                           ; $4538: $00
    ld h, e                                       ; $4539: $63
    nop                                           ; $453a: $00
    and [hl]                                      ; $453b: $a6
    ld c, $05                                     ; $453c: $0e $05
    or a                                          ; $453e: $b7
    nop                                           ; $453f: $00
    nop                                           ; $4540: $00
    ld l, h                                       ; $4541: $6c
    db $db                                        ; $4542: $db
    add b                                         ; $4543: $80
    ld e, a                                       ; $4544: $5f
    ret nc                                        ; $4545: $d0

    ld a, a                                       ; $4546: $7f
    add d                                         ; $4547: $82
    nop                                           ; $4548: $00
    ld a, a                                       ; $4549: $7f
    ret nc                                        ; $454a: $d0

    ld l, a                                       ; $454b: $6f
    ld hl, $149f                                  ; $454c: $21 $9f $14
    db $eb                                        ; $454f: $eb
    add c                                         ; $4550: $81
    nop                                           ; $4551: $00
    cp a                                          ; $4552: $bf
    add l                                         ; $4553: $85
    ld a, h                                       ; $4554: $7c
    ld de, $0bec                                  ; $4555: $11 $ec $0b
    db $fc                                        ; $4558: $fc
    ld b, l                                       ; $4559: $45
    nop                                           ; $455a: $00
    ld hl, sp-$5f                                 ; $455b: $f8 $a1
    ld a, h                                       ; $455d: $7c
    dec d                                         ; $455e: $15
    ld hl, sp-$51                                 ; $455f: $f8 $af
    ld hl, sp+$41                                 ; $4561: $f8 $41
    nop                                           ; $4563: $00
    db $fc                                        ; $4564: $fc
    dec a                                         ; $4565: $3d
    add b                                         ; $4566: $80
    db $db                                        ; $4567: $db
    nop                                           ; $4568: $00
    ld a, l                                       ; $4569: $7d
    add b                                         ; $456a: $80
    xor e                                         ; $456b: $ab
    nop                                           ; $456c: $00
    inc d                                         ; $456d: $14
    or $01                                        ; $456e: $f6 $01
    ld l, [hl]                                    ; $4570: $6e
    ld de, $05da                                  ; $4571: $11 $da $05
    push af                                       ; $4574: $f5
    nop                                           ; $4575: $00
    ld a, [bc]                                    ; $4576: $0a
    and h                                         ; $4577: $a4
    ld a, a                                       ; $4578: $7f
    srl [hl]                                      ; $4579: $cb $3e
    sub b                                         ; $457b: $90
    ld a, a                                       ; $457c: $7f
    ld d, h                                       ; $457d: $54
    nop                                           ; $457e: $00
    ccf                                           ; $457f: $3f
    ret                                           ; $4580: $c9


    ld a, $f1                                     ; $4581: $3e $f1
    ld a, $3a                                     ; $4583: $3e $3a
    ld a, l                                       ; $4585: $7d
    ret nz                                        ; $4586: $c0

    nop                                           ; $4587: $00
    ccf                                           ; $4588: $3f
    dec b                                         ; $4589: $05
    cp $12                                        ; $458a: $fe $12
    db $ec                                        ; $458c: $ec
    ld c, d                                       ; $458d: $4a
    or l                                          ; $458e: $b5
    sub d                                         ; $458f: $92
    nop                                           ; $4590: $00
    ld l, h                                       ; $4591: $6c
    ld l, d                                       ; $4592: $6a
    sub h                                         ; $4593: $94
    ld d, h                                       ; $4594: $54
    xor d                                         ; $4595: $aa
    adc d                                         ; $4596: $8a
    ld [hl], a                                    ; $4597: $77
    ld bc, $fe00                                  ; $4598: $01 $00 $fe
    cp e                                          ; $459b: $bb
    ld b, b                                       ; $459c: $40
    ld l, l                                       ; $459d: $6d
    sub b                                         ; $459e: $90
    ld a, [$2d00]                                 ; $459f: $fa $00 $2d
    nop                                           ; $45a2: $00
    ret nz                                        ; $45a3: $c0

    sbc b                                         ; $45a4: $98
    ld b, b                                       ; $45a5: $40
    ld h, l                                       ; $45a6: $65
    add b                                         ; $45a7: $80
    cp e                                          ; $45a8: $bb
    ld b, b                                       ; $45a9: $40
    rst $30                                       ; $45aa: $f7
    nop                                           ; $45ab: $00
    nop                                           ; $45ac: $00
    ld a, [c]                                     ; $45ad: $f2
    cpl                                           ; $45ae: $2f
    push bc                                       ; $45af: $c5
    ld a, [hl+]                                   ; $45b0: $2a
    db $f4                                        ; $45b1: $f4
    rra                                           ; $45b2: $1f
    ldh [rP1], a                                  ; $45b3: $e0 $00
    rra                                           ; $45b5: $1f
    db $f4                                        ; $45b6: $f4

jr_0c4_45b7:
    dec de                                        ; $45b7: $1b
    ld h, d                                       ; $45b8: $62
    dec d                                         ; $45b9: $15
    ret nz                                        ; $45ba: $c0

    ccf                                           ; $45bb: $3f
    ldh a, [rP1]                                  ; $45bc: $f0 $00
    rla                                           ; $45be: $17
    ld [de], a                                    ; $45bf: $12
    rst $28                                       ; $45c0: $ef
    ld hl, $02de                                  ; $45c1: $21 $de $02
    rst $38                                       ; $45c4: $ff
    sub c                                         ; $45c5: $91
    nop                                           ; $45c6: $00
    cp $28                                        ; $45c7: $fe $28
    rst $18                                       ; $45c9: $df

jr_0c4_45ca:
    ld b, h                                       ; $45ca: $44
    rst $38                                       ; $45cb: $ff
    sub a                                         ; $45cc: $97
    ld a, l                                       ; $45cd: $7d
    jr jr_0c4_45d0                                ; $45ce: $18 $00

jr_0c4_45d0:
    rst $38                                       ; $45d0: $ff
    sbc $20                                       ; $45d1: $de $20
    cp a                                          ; $45d3: $bf
    nop                                           ; $45d4: $00
    rst $18                                       ; $45d5: $df
    jr nz, jr_0c4_4642                            ; $45d6: $20 $6a

    nop                                           ; $45d8: $00
    dec b                                         ; $45d9: $05
    ld a, l                                       ; $45da: $7d
    nop                                           ; $45db: $00
    xor l                                         ; $45dc: $ad
    ld [bc], a                                    ; $45dd: $02
    rst $18                                       ; $45de: $df
    nop                                           ; $45df: $00
    ld a, $00                                     ; $45e0: $3e $00
    add c                                         ; $45e2: $81
    jp nc, $a43f                                  ; $45e3: $d2 $3f $a4

    rla                                           ; $45e6: $17
    ld h, h                                       ; $45e7: $64
    rra                                           ; $45e8: $1f
    push de                                       ; $45e9: $d5
    nop                                           ; $45ea: $00
    rrca                                          ; $45eb: $0f
    or d                                          ; $45ec: $b2
    ld c, a                                       ; $45ed: $4f
    jp c, $2d2b                                   ; $45ee: $da $2b $2d

    rst $08                                       ; $45f1: $cf
    cp b                                          ; $45f2: $b8
    nop                                           ; $45f3: $00
    ld b, l                                       ; $45f4: $45
    ld hl, $90df                                  ; $45f5: $21 $df $90
    rst $28                                       ; $45f8: $ef
    ld [de], a                                    ; $45f9: $12
    db $ed                                        ; $45fa: $ed
    inc h                                         ; $45fb: $24
    nop                                           ; $45fc: $00
    db $db                                        ; $45fd: $db
    ld e, d                                       ; $45fe: $5a
    and l                                         ; $45ff: $a5
    ld l, d                                       ; $4600: $6a
    sub l                                         ; $4601: $95
    adc b                                         ; $4602: $88
    ld [hl], a                                    ; $4603: $77
    ld [bc], a                                    ; $4604: $02
    nop                                           ; $4605: $00
    db $fd                                        ; $4606: $fd
    rst $28                                       ; $4607: $ef
    db $10                                        ; $4608: $10
    ld d, d                                       ; $4609: $52
    jr z, jr_0c4_45ca                             ; $460a: $28 $be

    ld b, b                                       ; $460c: $40
    adc e                                         ; $460d: $8b
    nop                                           ; $460e: $00
    jr nc, jr_0c4_45b7                            ; $460f: $30 $a6

    db $10                                        ; $4611: $10
    dec c                                         ; $4612: $0d
    ret nc                                        ; $4613: $d0

    adc e                                         ; $4614: $8b
    ldh a, [$3f]                                  ; $4615: $f0 $3f
    nop                                           ; $4617: $00
    ret nz                                        ; $4618: $c0

    jp hl                                         ; $4619: $e9


    rra                                           ; $461a: $1f
    or d                                          ; $461b: $b2
    dec c                                         ; $461c: $0d
    cp l                                          ; $461d: $bd
    rlca                                          ; $461e: $07
    ld a, b                                       ; $461f: $78
    nop                                           ; $4620: $00
    rlca                                          ; $4621: $07
    dec a                                         ; $4622: $3d
    ld b, $35                                     ; $4623: $06 $35
    ld [bc], a                                    ; $4625: $02
    xor b                                         ; $4626: $a8
    rlca                                          ; $4627: $07
    rst $38                                       ; $4628: $ff
    nop                                           ; $4629: $00
    ld bc, $0e50                                  ; $462a: $01 $50 $0e
    ld l, h                                       ; $462d: $6c
    rra                                           ; $462e: $1f
    db $dd                                        ; $462f: $dd
    ccf                                           ; $4630: $3f
    dec de                                        ; $4631: $1b
    nop                                           ; $4632: $00
    db $fc                                        ; $4633: $fc
    sbc d                                         ; $4634: $9a
    push af                                       ; $4635: $f5
    ld d, l                                       ; $4636: $55
    ld a, [$759a]                                 ; $4637: $fa $9a $75
    sbc l                                         ; $463a: $9d
    nop                                           ; $463b: $00
    ld h, b                                       ; $463c: $60
    ld bc, $200b                                  ; $463d: $01 $0b $20
    rst $18                                       ; $4640: $df
    dec de                                        ; $4641: $1b

jr_0c4_4642:
    rst $38                                       ; $4642: $ff
    ld e, a                                       ; $4643: $5f
    nop                                           ; $4644: $00
    and b                                         ; $4645: $a0
    ld e, e                                       ; $4646: $5b
    add h                                         ; $4647: $84
    dec a                                         ; $4648: $3d
    add d                                         ; $4649: $82
    db $db                                        ; $464a: $db
    nop                                           ; $464b: $00
    rst $28                                       ; $464c: $ef
    nop                                           ; $464d: $00
    nop                                           ; $464e: $00
    ld [hl], b                                    ; $464f: $70
    ret nz                                        ; $4650: $c0

    rst $10                                       ; $4651: $d7
    ldh [$d7], a                                  ; $4652: $e0 $d7
    add sp, -$02                                  ; $4654: $e8 $fe
    adc b                                         ; $4656: $88
    ld [hl], $04                                  ; $4657: $36 $04
    ld [$4075], a                                 ; $4659: $ea $75 $40
    ld e, h                                       ; $465c: $5c
    ld bc, $0b55                                  ; $465d: $01 $55 $0b
    ld a, c                                       ; $4660: $79
    jr nz, jr_0c4_466a                            ; $4661: $20 $07

    cpl                                           ; $4663: $2f
    daa                                           ; $4664: $27
    inc b                                         ; $4665: $04
    cpl                                           ; $4666: $2f
    cp $16                                        ; $4667: $fe $16
    rst $38                                       ; $4669: $ff

jr_0c4_466a:
    call Call_0c4_7e02                            ; $466a: $cd $02 $7e
    dec l                                         ; $466d: $2d
    ld hl, sp+$02                                 ; $466e: $f8 $02
    ld bc, $4e58                                  ; $4670: $01 $58 $4e
    inc b                                         ; $4673: $04
    ret                                           ; $4674: $c9


    nop                                           ; $4675: $00
    rst $30                                       ; $4676: $f7
    db $fc                                        ; $4677: $fc
    ld bc, $00af                                  ; $4678: $01 $af $00
    ld a, [$be01]                                 ; $467b: $fa $01 $be
    nop                                           ; $467e: $00
    ld bc, $7018                                  ; $467f: $01 $18 $70
    inc [hl]                                      ; $4682: $34
    ei                                            ; $4683: $fb
    ld a, l                                       ; $4684: $7d
    cp $79                                        ; $4685: $fe $79
    nop                                           ; $4687: $00
    rst $38                                       ; $4688: $ff
    cp e                                          ; $4689: $bb
    ld a, a                                       ; $468a: $7f
    ld d, l                                       ; $468b: $55
    cp a                                          ; $468c: $bf
    cp d                                          ; $468d: $ba
    ld a, a                                       ; $468e: $7f
    add b                                         ; $468f: $80
    nop                                           ; $4690: $00
    ld l, a                                       ; $4691: $6f
    ld a, [bc]                                    ; $4692: $0a
    ld bc, $41bf                                  ; $4693: $01 $bf $41
    ld a, [hl]                                    ; $4696: $7e
    add e                                         ; $4697: $83
    ld d, e                                       ; $4698: $53
    ld [$c9ef], sp                                ; $4699: $08 $ef $c9
    cp a                                          ; $469c: $bf
    inc b                                         ; $469d: $04
    sbc b                                         ; $469e: $98
    inc bc                                        ; $469f: $03
    add h                                         ; $46a0: $84
    ld a, e                                       ; $46a1: $7b
    nop                                           ; $46a2: $00
    nop                                           ; $46a3: $00
    pop bc                                        ; $46a4: $c1
    add h                                         ; $46a5: $84
    ei                                            ; $46a6: $fb
    ld [c], a                                     ; $46a7: $e2
    rst $38                                       ; $46a8: $ff
    or l                                          ; $46a9: $b5
    jp z, $00a1                                   ; $46aa: $ca $a1 $00

    call c, $e897                                 ; $46ad: $dc $97 $e8
    dec l                                         ; $46b0: $2d
    ret nc                                        ; $46b1: $d0

    ld l, e                                       ; $46b2: $6b
    nop                                           ; $46b3: $00
    ld e, $00                                     ; $46b4: $1e $00
    ld e, b                                       ; $46b6: $58
    dec de                                        ; $46b7: $1b
    db $fc                                        ; $46b8: $fc
    cp h                                          ; $46b9: $bc
    rst $38                                       ; $46ba: $ff
    ld l, a                                       ; $46bb: $6f
    rra                                           ; $46bc: $1f
    sub $00                                       ; $46bd: $d6 $00
    cpl                                           ; $46bf: $2f
    sbc [hl]                                      ; $46c0: $9e
    daa                                           ; $46c1: $27
    db $f4                                        ; $46c2: $f4
    rrca                                          ; $46c3: $0f
    ld e, c                                       ; $46c4: $59
    ld b, $0a                                     ; $46c5: $06 $0a
    nop                                           ; $46c7: $00
    ld bc, $00df                                  ; $46c8: $01 $df $00
    db $eb                                        ; $46cb: $eb
    dec d                                         ; $46cc: $15
    rst $30                                       ; $46cd: $f7
    rst $38                                       ; $46ce: $ff
    dec b                                         ; $46cf: $05
    nop                                           ; $46d0: $00
    ei                                            ; $46d1: $fb
    add c                                         ; $46d2: $81
    ld a, a                                       ; $46d3: $7f
    ld a, [hl+]                                   ; $46d4: $2a
    rst $10                                       ; $46d5: $d7
    ld d, c                                       ; $46d6: $51
    xor a                                         ; $46d7: $af
    and b                                         ; $46d8: $a0
    jr nz, jr_0c4_474b                            ; $46d9: $20 $70

    dec sp                                        ; $46db: $3b
    ld bc, $f406                                  ; $46dc: $01 $06 $f4
    rst $38                                       ; $46df: $ff
    rst $28                                       ; $46e0: $ef

jr_0c4_46e1:
    ldh a, [rOCPD]                                ; $46e1: $f0 $6b
    nop                                           ; $46e3: $00
    ldh a, [$de]                                  ; $46e4: $f0 $de
    ldh [$6d], a                                  ; $46e6: $e0 $6d
    ret nz                                        ; $46e8: $c0

    ld b, d                                       ; $46e9: $42
    rra                                           ; $46ea: $1f
    daa                                           ; $46eb: $27
    nop                                           ; $46ec: $00
    rst $18                                       ; $46ed: $df
    rrca                                          ; $46ee: $0f
    rst $38                                       ; $46ef: $ff
    ld e, a                                       ; $46f0: $5f
    cp a                                          ; $46f1: $bf
    db $d3                                        ; $46f2: $d3
    rrca                                          ; $46f3: $0f
    push af                                       ; $46f4: $f5
    nop                                           ; $46f5: $00
    dec bc                                        ; $46f6: $0b
    xor e                                         ; $46f7: $ab
    rla                                           ; $46f8: $17
    db $f4                                        ; $46f9: $f4
    dec bc                                        ; $46fa: $0b
    ld bc, $a700                                  ; $46fb: $01 $00 $a7
    ld [bc], a                                    ; $46fe: $02
    ld e, b                                       ; $46ff: $58
    rst $10                                       ; $4700: $d7
    add sp, -$67                                  ; $4701: $e8 $99
    cp $78                                        ; $4703: $fe $78
    call nc, Call_0c4_6804                        ; $4705: $d4 $04 $68
    nop                                           ; $4708: $00
    rst $30                                       ; $4709: $f7
    inc b                                         ; $470a: $04
    ld a, e                                       ; $470b: $7b
    ld h, b                                       ; $470c: $60
    jr jr_0c4_46e1                                ; $470d: $18 $d2

    dec a                                         ; $470f: $3d
    xor d                                         ; $4710: $aa
    nop                                           ; $4711: $00
    ld a, a                                       ; $4712: $7f
    ccf                                           ; $4713: $3f
    ld hl, sp+$5c                                 ; $4714: $f8 $5c
    ei                                            ; $4716: $fb
    xor c                                         ; $4717: $a9
    ld a, [hl]                                    ; $4718: $7e
    ld d, h                                       ; $4719: $54
    nop                                           ; $471a: $00
    cp e                                          ; $471b: $bb
    dec hl                                        ; $471c: $2b
    ret nc                                        ; $471d: $d0

    inc bc                                        ; $471e: $03
    dec de                                        ; $471f: $1b
    and c                                         ; $4720: $a1
    ld e, a                                       ; $4721: $5f
    cpl                                           ; $4722: $2f
    nop                                           ; $4723: $00
    rst $38                                       ; $4724: $ff
    ld [hl], $c1                                  ; $4725: $36 $c1
    dec a                                         ; $4727: $3d
    jp nz, $815a                                  ; $4728: $c2 $5a $81

    cp l                                          ; $472b: $bd
    nop                                           ; $472c: $00
    nop                                           ; $472d: $00
    sbc $00                                       ; $472e: $de $00
    pop bc                                        ; $4730: $c1
    nop                                           ; $4731: $00
    ld a, e                                       ; $4732: $7b
    add b                                         ; $4733: $80
    xor $20                                       ; $4734: $ee $20
    pop de                                        ; $4736: $d1
    db $fd                                        ; $4737: $fd
    ld a, [de]                                    ; $4738: $1a
    inc b                                         ; $4739: $04
    pop de                                        ; $473a: $d1
    ld a, [hl]                                    ; $473b: $7e
    ld b, d                                       ; $473c: $42
    db $fd                                        ; $473d: $fd
    ret z                                         ; $473e: $c8

    inc bc                                        ; $473f: $03
    scf                                           ; $4740: $37
    ld b, h                                       ; $4741: $44
    ld e, $e7                                     ; $4742: $1e $e7
    rra                                           ; $4744: $1f
    sbc a                                         ; $4745: $9f
    ld bc, $6606                                  ; $4746: $01 $06 $66
    ld [bc], a                                    ; $4749: $02
    nop                                           ; $474a: $00

jr_0c4_474b:
    cp $25                                        ; $474b: $fe $25
    cp $93                                        ; $474d: $fe $93
    ld a, [hl]                                    ; $474f: $7e
    ld [$5403], sp                                ; $4750: $08 $03 $54
    nop                                           ; $4753: $00
    ei                                            ; $4754: $fb
    ldh [rIE], a                                  ; $4755: $e0 $ff
    ld d, [hl]                                    ; $4757: $56
    db $eb                                        ; $4758: $eb
    db $fd                                        ; $4759: $fd
    nop                                           ; $475a: $00
    ld [hl], a                                    ; $475b: $77
    jr nz, @-$7e                                  ; $475c: $20 $80

    xor $d4                                       ; $475e: $ee $d4
    nop                                           ; $4760: $00
    ld d, b                                       ; $4761: $50
    ldh [$e4], a                                  ; $4762: $e0 $e4
    ei                                            ; $4764: $fb
    db $f4                                        ; $4765: $f4
    nop                                           ; $4766: $00
    rst $38                                       ; $4767: $ff
    pop af                                        ; $4768: $f1
    rst $38                                       ; $4769: $ff
    ld [hl], a                                    ; $476a: $77
    cp a                                          ; $476b: $bf
    sbc e                                         ; $476c: $9b
    ld a, a                                       ; $476d: $7f
    or $00                                        ; $476e: $f6 $00
    ccf                                           ; $4770: $3f
    and c                                         ; $4771: $a1
    ld e, d                                       ; $4772: $5a
    inc e                                         ; $4773: $1c
    inc bc                                        ; $4774: $03
    db $db                                        ; $4775: $db
    rlca                                          ; $4776: $07
    ei                                            ; $4777: $fb
    nop                                           ; $4778: $00
    rlca                                          ; $4779: $07
    add e                                         ; $477a: $83
    rst $38                                       ; $477b: $ff
    and l                                         ; $477c: $a5
    rst $18                                       ; $477d: $df
    ld c, d                                       ; $477e: $4a
    or a                                          ; $477f: $b7
    and l                                         ; $4780: $a5
    nop                                           ; $4781: $00
    ld e, e                                       ; $4782: $5b
    add hl, hl                                    ; $4783: $29
    sub $2f                                       ; $4784: $d6 $2f
    ldh a, [$35]                                  ; $4786: $f0 $35
    ret nz                                        ; $4788: $c0

    cp d                                          ; $4789: $ba
    ld [bc], a                                    ; $478a: $02
    ret nz                                        ; $478b: $c0

    dec [hl]                                      ; $478c: $35
    ret nz                                        ; $478d: $c0

    ld d, c                                       ; $478e: $51
    add b                                         ; $478f: $80
    reti                                          ; $4790: $d9


    adc [hl]                                      ; $4791: $8e
    ld b, $be                                     ; $4792: $06 $be
    nop                                           ; $4794: $00
    nop                                           ; $4795: $00
    or $09                                        ; $4796: $f6 $09
    or [hl]                                       ; $4798: $b6
    ld c, c                                       ; $4799: $49
    ei                                            ; $479a: $fb
    dec b                                         ; $479b: $05
    xor d                                         ; $479c: $aa
    nop                                           ; $479d: $00
    dec d                                         ; $479e: $15
    ld l, h                                       ; $479f: $6c
    ld [de], a                                    ; $47a0: $12
    ld [hl], h                                    ; $47a1: $74
    ld a, [bc]                                    ; $47a2: $0a
    sub d                                         ; $47a3: $92
    cpl                                           ; $47a4: $2f
    db $f4                                        ; $47a5: $f4
    nop                                           ; $47a6: $00
    dec bc                                        ; $47a7: $0b
    sub h                                         ; $47a8: $94
    db $eb                                        ; $47a9: $eb
    ld d, b                                       ; $47aa: $50
    cpl                                           ; $47ab: $2f
    nop                                           ; $47ac: $00
    rst $38                                       ; $47ad: $ff
    ld [de], a                                    ; $47ae: $12
    ld [$407f], sp                                ; $47af: $08 $7f $40
    rst $38                                       ; $47b2: $ff
    adc b                                         ; $47b3: $88
    ld [hl], $04                                  ; $47b4: $36 $04
    ld d, b                                       ; $47b6: $50
    rst $38                                       ; $47b7: $ff
    rlc b                                         ; $47b8: $cb $00
    ld a, h                                       ; $47ba: $7c
    ld b, c                                       ; $47bb: $41
    cp b                                          ; $47bc: $b8
    ld c, a                                       ; $47bd: $4f
    ld hl, sp+$03                                 ; $47be: $f8 $03
    ld hl, sp+$39                                 ; $47c0: $f8 $39
    nop                                           ; $47c2: $00
    jp nc, Jump_0c4_7289                          ; $47c3: $d2 $89 $72

    add l                                         ; $47c6: $85
    ld [hl], d                                    ; $47c7: $72
    ld d, $f1                                     ; $47c8: $16 $f1
    reti                                          ; $47ca: $d9


    nop                                           ; $47cb: $00
    ld [bc], a                                    ; $47cc: $02
    or a                                          ; $47cd: $b7
    nop                                           ; $47ce: $00
    ld a, [hl]                                    ; $47cf: $7e
    ld bc, $50ab                                  ; $47d0: $01 $ab $50
    cp l                                          ; $47d3: $bd
    nop                                           ; $47d4: $00
    nop                                           ; $47d5: $00
    jp c, Jump_0c4_6f20                           ; $47d6: $da $20 $6f

    add b                                         ; $47d9: $80
    cp a                                          ; $47da: $bf
    ld b, b                                       ; $47db: $40
    and c                                         ; $47dc: $a1
    nop                                           ; $47dd: $00
    ld a, [hl]                                    ; $47de: $7e
    jp nz, $852d                                  ; $47df: $c2 $2d $85

    ld a, d                                       ; $47e2: $7a
    jp nz, $162d                                  ; $47e3: $c2 $2d $16

    nop                                           ; $47e6: $00
    ld c, c                                       ; $47e7: $49
    adc d                                         ; $47e8: $8a
    ld d, l                                       ; $47e9: $55
    push de                                       ; $47ea: $d5
    ld l, d                                       ; $47eb: $6a
    nop                                           ; $47ec: $00
    rst $18                                       ; $47ed: $df
    ld de, $4080                                  ; $47ee: $11 $80 $40
    inc b                                         ; $47f1: $04
    inc bc                                        ; $47f2: $03
    cp $95                                        ; $47f3: $fe $95
    ld a, [hl]                                    ; $47f5: $7e
    xor c                                         ; $47f6: $a9
    ld e, [hl]                                    ; $47f7: $5e
    rlc b                                         ; $47f8: $cb $00
    ld a, $16                                     ; $47fa: $3e $16
    rst $38                                       ; $47fc: $ff
    add l                                         ; $47fd: $85
    ld a, [hl]                                    ; $47fe: $7e
    rst $38                                       ; $47ff: $ff
    nop                                           ; $4800: $00
    ld e, h                                       ; $4801: $5c
    nop                                           ; $4802: $00
    ld bc, $00b7                                  ; $4803: $01 $b7 $00
    ld e, d                                       ; $4806: $5a
    nop                                           ; $4807: $00
    ld b, l                                       ; $4808: $45
    nop                                           ; $4809: $00
    ld h, l                                       ; $480a: $65
    jr nz, jr_0c4_480d                            ; $480b: $20 $00

jr_0c4_480d:
    ld [$06fc], a                                 ; $480d: $ea $fc $06
    or h                                          ; $4810: $b4
    ld c, a                                       ; $4811: $4f
    cp d                                          ; $4812: $ba
    ld b, l                                       ; $4813: $45
    db $ec                                        ; $4814: $ec
    nop                                           ; $4815: $00
    rla                                           ; $4816: $17
    ld e, b                                       ; $4817: $58
    and a                                         ; $4818: $a7
    or c                                          ; $4819: $b1
    ld c, e                                       ; $481a: $4b
    jp nc, $ad2b                                  ; $481b: $d2 $2b $ad

    nop                                           ; $481e: $00
    ld e, e                                       ; $481f: $5b
    ldh [rNR31], a                                ; $4820: $e0 $1b
    add [hl]                                      ; $4822: $86
    ld a, e                                       ; $4823: $7b
    ld c, b                                       ; $4824: $48
    or a                                          ; $4825: $b7
    add c                                         ; $4826: $81
    jr nz, jr_0c4_48a8                            ; $4827: $20 $7f

    ld d, h                                       ; $4829: $54
    push hl                                       ; $482a: $e5
    ld b, $22                                     ; $482b: $06 $22
    db $fd                                        ; $482d: $fd
    ld c, b                                       ; $482e: $48
    rst $30                                       ; $482f: $f7
    ret nz                                        ; $4830: $c0

    nop                                           ; $4831: $00
    rst $38                                       ; $4832: $ff
    jp c, $2d60                                   ; $4833: $da $60 $2d

    ret nz                                        ; $4836: $c0

    ld e, e                                       ; $4837: $5b
    ldh [$2d], a                                  ; $4838: $e0 $2d
    nop                                           ; $483a: $00
    jp nz, $48e6                                  ; $483b: $c2 $e6 $48

    daa                                           ; $483e: $27
    ret z                                         ; $483f: $c8

    add hl, bc                                    ; $4840: $09
    and $6a                                       ; $4841: $e6 $6a
    ld [$cdc5], sp                                ; $4843: $08 $c5 $cd
    inc de                                        ; $4846: $13
    or $60                                        ; $4847: $f6 $60
    dec b                                         ; $4849: $05
    sbc [hl]                                      ; $484a: $9e
    ld b, c                                       ; $484b: $41
    db $f4                                        ; $484c: $f4
    nop                                           ; $484d: $00
    ld bc, $816a                                  ; $484e: $01 $6a $81

jr_0c4_4851:
    rst $10                                       ; $4851: $d7
    nop                                           ; $4852: $00
    cp $01                                        ; $4853: $fe $01
    ld [$f700], sp                                ; $4855: $08 $00 $f7
    inc hl                                        ; $4858: $23
    ld e, l                                       ; $4859: $5d
    ld c, b                                       ; $485a: $48
    or a                                          ; $485b: $b7
    dec h                                         ; $485c: $25
    ld e, d                                       ; $485d: $5a
    ld e, d                                       ; $485e: $5a
    nop                                           ; $485f: $00
    dec h                                         ; $4860: $25
    dec hl                                        ; $4861: $2b

jr_0c4_4862:
    ld d, h                                       ; $4862: $54
    ret z                                         ; $4863: $c8

    or a                                          ; $4864: $b7
    db $10                                        ; $4865: $10
    rst $28                                       ; $4866: $ef
    sub a                                         ; $4867: $97
    jr nz, jr_0c4_4862                            ; $4868: $20 $f8

    ld b, [hl]                                    ; $486a: $46
    ret nz                                        ; $486b: $c0

    dec b                                         ; $486c: $05
    and [hl]                                      ; $486d: $a6
    ld hl, sp-$5b                                 ; $486e: $f8 $a5
    ld a, b                                       ; $4870: $78
    dec l                                         ; $4871: $2d
    nop                                           ; $4872: $00
    ld hl, sp-$56                                 ; $4873: $f8 $aa
    ld a, h                                       ; $4875: $7c
    dec c                                         ; $4876: $0d
    ld hl, sp-$45                                 ; $4877: $f8 $bb
    inc b                                         ; $4879: $04
    and [hl]                                      ; $487a: $a6
    nop                                           ; $487b: $00
    add hl, bc                                    ; $487c: $09
    ld a, a                                       ; $487d: $7f
    nop                                           ; $487e: $00
    or h                                          ; $487f: $b4
    inc bc                                        ; $4880: $03
    ld d, $01                                     ; $4881: $16 $01
    sub a                                         ; $4883: $97
    jr nz, jr_0c4_4886                            ; $4884: $20 $00

jr_0c4_4886:
    db $ed                                        ; $4886: $ed
    ld [$a403], sp                                ; $4887: $08 $03 $a4
    ld a, e                                       ; $488a: $7b
    jp nz, Jump_0c4_642d                          ; $488b: $c2 $2d $64

    nop                                           ; $488e: $00
    cp e                                          ; $488f: $bb
    jp nz, $c42f                                  ; $4890: $c2 $2f $c4

    cpl                                           ; $4893: $2f
    ld c, b                                       ; $4894: $48
    xor a                                         ; $4895: $af
    dec e                                         ; $4896: $1d

jr_0c4_4897:
    ld a, [bc]                                    ; $4897: $0a
    rst $30                                       ; $4898: $f7
    and d                                         ; $4899: $a2
    ld d, a                                       ; $489a: $57
    ld [hl], $92                                  ; $489b: $36 $92
    ld b, $09                                     ; $489d: $06 $09
    ld d, h                                       ; $489f: $54
    ld b, $03                                     ; $48a0: $06 $03
    ld [$88fd], sp                                ; $48a2: $08 $fd $88
    rst $30                                       ; $48a5: $f7
    inc b                                         ; $48a6: $04
    halt                                          ; $48a7: $76

jr_0c4_48a8:
    dec b                                         ; $48a8: $05
    sub $00                                       ; $48a9: $d6 $00
    ld a, $80                                     ; $48ab: $3e $80
    ld [hl], $02                                  ; $48ad: $36 $02
    ld [hl], l                                    ; $48af: $75
    ld a, [bc]                                    ; $48b0: $0a
    sbc e                                         ; $48b1: $9b
    jr nz, jr_0c4_4851                            ; $48b2: $20 $9d

    ld [hl+], a                                   ; $48b4: $22
    dec hl                                        ; $48b5: $2b
    nop                                           ; $48b6: $00
    call nc, $8af5                                ; $48b7: $d4 $f5 $8a
    ld c, b                                       ; $48ba: $48
    sbc a                                         ; $48bb: $9f
    ld sp, hl                                     ; $48bc: $f9
    ld b, $b0                                     ; $48bd: $06 $b0
    nop                                           ; $48bf: $00
    ld c, a                                       ; $48c0: $4f
    ld a, c                                       ; $48c1: $79
    ld b, $d1                                     ; $48c2: $06 $d1
    inc b                                         ; $48c4: $04
    xor b                                         ; $48c5: $a8
    dec b                                         ; $48c6: $05
    ld l, [hl]                                    ; $48c7: $6e
    add b                                         ; $48c8: $80
    ret nc                                        ; $48c9: $d0

    dec b                                         ; $48ca: $05
    ld b, h                                       ; $48cb: $44
    cp a                                          ; $48cc: $bf
    ld c, c                                       ; $48cd: $49
    cp a                                          ; $48ce: $bf
    and b                                         ; $48cf: $a0
    ld e, a                                       ; $48d0: $5f
    ld c, d                                       ; $48d1: $4a
    nop                                           ; $48d2: $00
    or a                                          ; $48d3: $b7
    ld l, d                                       ; $48d4: $6a
    sub l                                         ; $48d5: $95
    xor h                                         ; $48d6: $ac
    ld d, e                                       ; $48d7: $53
    adc c                                         ; $48d8: $89
    halt                                          ; $48d9: $76
    inc b                                         ; $48da: $04
    nop                                           ; $48db: $00
    ei                                            ; $48dc: $fb
    ld b, b                                       ; $48dd: $40
    add b                                         ; $48de: $80
    ld a, l                                       ; $48df: $7d
    add d                                         ; $48e0: $82
    cp [hl]                                       ; $48e1: $be
    pop bc                                        ; $48e2: $c1
    rst $30                                       ; $48e3: $f7
    ld [$50ff], sp                                ; $48e4: $08 $ff $50
    rst $28                                       ; $48e7: $ef
    add b                                         ; $48e8: $80
    inc b                                         ; $48e9: $04
    nop                                           ; $48ea: $00
    adc b                                         ; $48eb: $88
    rst $30                                       ; $48ec: $f7
    ld a, [de]                                    ; $48ed: $1a
    jr nz, jr_0c4_4897                            ; $48ee: $20 $a7

    ld c, [hl]                                    ; $48f0: $4e
    sub c                                         ; $48f1: $91
    rlca                                          ; $48f2: $07
    cp $ff                                        ; $48f3: $fe $ff
    ld a, [de]                                    ; $48f5: $1a
    db $fd                                        ; $48f6: $fd
    xor l                                         ; $48f7: $ad
    nop                                           ; $48f8: $00
    ld a, d                                       ; $48f9: $7a
    ld a, [de]                                    ; $48fa: $1a
    db $fd                                        ; $48fb: $fd
    add l                                         ; $48fc: $85
    ld a, d                                       ; $48fd: $7a
    nop                                           ; $48fe: $00
    dec b                                         ; $48ff: $05
    inc d                                         ; $4900: $14
    ld [bc], a                                    ; $4901: $02
    db $eb                                        ; $4902: $eb
    pop de                                        ; $4903: $d1
    rst $38                                       ; $4904: $ff
    sub d                                         ; $4905: $92
    rst $28                                       ; $4906: $ef
    cp a                                          ; $4907: $bf
    ld a, [hl]                                    ; $4908: $7e
    db $10                                        ; $4909: $10
    db $dd                                        ; $490a: $dd
    nop                                           ; $490b: $00
    nop                                           ; $490c: $00
    ld c, b                                       ; $490d: $48
    jr nc, @+$29                                  ; $490e: $30 $27

    ld hl, sp+$7e                                 ; $4910: $f8 $7e
    db $fd                                        ; $4912: $fd
    pop af                                        ; $4913: $f1
    nop                                           ; $4914: $00
    cp $e4                                        ; $4915: $fe $e4
    ld a, a                                       ; $4917: $7f
    ld c, d                                       ; $4918: $4a
    db $fd                                        ; $4919: $fd
    and b                                         ; $491a: $a0
    ld a, a                                       ; $491b: $7f
    jp nz, $2d00                                  ; $491c: $c2 $00 $2d

    dec d                                         ; $491f: $15
    nop                                           ; $4920: $00
    cp e                                          ; $4921: $bb
    nop                                           ; $4922: $00
    cp d                                          ; $4923: $ba
    ld b, l                                       ; $4924: $45
    ld d, c                                       ; $4925: $51
    nop                                           ; $4926: $00
    rst $38                                       ; $4927: $ff
    dec sp                                        ; $4928: $3b
    rst $38                                       ; $4929: $ff
    ld d, l                                       ; $492a: $55
    cp a                                          ; $492b: $bf
    or l                                          ; $492c: $b5
    ld e, a                                       ; $492d: $5f
    ld b, b                                       ; $492e: $40
    ld [$c0bf], sp                                ; $492f: $08 $bf $c0
    ld h, b                                       ; $4932: $60
    ld h, h                                       ; $4933: $64
    ret nz                                        ; $4934: $c0

    ld bc, $c1be                                  ; $4935: $01 $be $c1
    ld l, l                                       ; $4938: $6d
    nop                                           ; $4939: $00
    sub b                                         ; $493a: $90
    sub $20                                       ; $493b: $d6 $20
    ld a, l                                       ; $493d: $7d
    add b                                         ; $493e: $80
    sub [hl]                                      ; $493f: $96
    nop                                           ; $4940: $00
    ld h, d                                       ; $4941: $62
    nop                                           ; $4942: $00
    ld l, a                                       ; $4943: $6f
    sub $ff                                       ; $4944: $d6 $ff
    cp a                                          ; $4946: $bf
    rst $38                                       ; $4947: $ff
    or a                                          ; $4948: $b7
    ld c, a                                       ; $4949: $4f
    rla                                           ; $494a: $17
    nop                                           ; $494b: $00
    rst $28                                       ; $494c: $ef
    and [hl]                                      ; $494d: $a6
    ld e, a                                       ; $494e: $5f
    ld c, e                                       ; $494f: $4b
    scf                                           ; $4950: $37
    cp $02                                        ; $4951: $fe $02
    add b                                         ; $4953: $80

jr_0c4_4954:
    ld [bc], a                                    ; $4954: $02
    ld [bc], a                                    ; $4955: $02
    ld [$7d05], a                                 ; $4956: $ea $05 $7d
    add d                                         ; $4959: $82
    ei                                            ; $495a: $fb
    ld b, $07                                     ; $495b: $06 $07
    add h                                         ; $495d: $84
    nop                                           ; $495e: $00
    ei                                            ; $495f: $fb
    ld d, d                                       ; $4960: $52
    db $ed                                        ; $4961: $ed
    ld c, c                                       ; $4962: $49
    or $28                                        ; $4963: $f6 $28
    sbc h                                         ; $4965: $9c
    cp h                                          ; $4966: $bc
    jr nz, jr_0c4_49c8                            ; $4967: $20 $5f

    ld e, a                                       ; $4969: $5f
    ld a, [hl+]                                   ; $496a: $2a
    rlca                                          ; $496b: $07
    ld a, [hl-]                                   ; $496c: $3a
    db $fd                                        ; $496d: $fd
    or l                                          ; $496e: $b5
    ld a, d                                       ; $496f: $7a
    dec de                                        ; $4970: $1b
    nop                                           ; $4971: $00
    db $fc                                        ; $4972: $fc
    ld [bc], a                                    ; $4973: $02
    ld sp, hl                                     ; $4974: $f9
    ld b, b                                       ; $4975: $40
    ldh [$e0], a                                  ; $4976: $e0 $e0
    rst $38                                       ; $4978: $ff
    ld a, [$ff00]                                 ; $4979: $fa $00 $ff
    push af                                       ; $497c: $f5
    cp $ea                                        ; $497d: $fe $ea
    db $f4                                        ; $497f: $f4
    ld d, a                                       ; $4980: $57
    add sp, $6d                                   ; $4981: $e8 $6d
    nop                                           ; $4983: $00
    ld a, [c]                                     ; $4984: $f2
    dec bc                                        ; $4985: $0b
    db $e4                                        ; $4986: $e4
    inc bc                                        ; $4987: $03
    jr z, jr_0c4_4954                             ; $4988: $28 $ca

    dec [hl]                                      ; $498a: $35
    push hl                                       ; $498b: $e5
    jr nz, jr_0c4_49ad                            ; $498c: $20 $1f

    ld e, a                                       ; $498e: $5f
    ld [hl], h                                    ; $498f: $74
    rlca                                          ; $4990: $07
    dec h                                         ; $4991: $25
    db $db                                        ; $4992: $db
    sub b                                         ; $4993: $90
    ld l, a                                       ; $4994: $6f
    ld c, d                                       ; $4995: $4a
    nop                                           ; $4996: $00
    or l                                          ; $4997: $b5
    inc sp                                        ; $4998: $33
    nop                                           ; $4999: $00
    ld d, [hl]                                    ; $499a: $56
    ld bc, $8b75                                  ; $499b: $01 $75 $8b
    ld d, e                                       ; $499e: $53
    ld bc, $bdff                                  ; $499f: $01 $ff $bd
    ld a, a                                       ; $49a2: $7f
    ld e, e                                       ; $49a3: $5b
    cp a                                          ; $49a4: $bf
    xor e                                         ; $49a5: $ab
    ld e, a                                       ; $49a6: $5f
    ld l, h                                       ; $49a7: $6c
    ld bc, $8102                                  ; $49a8: $01 $02 $81
    ret                                           ; $49ab: $c9


    rst $30                                       ; $49ac: $f7

jr_0c4_49ad:
    ldh [rIE], a                                  ; $49ad: $e0 $ff
    or [hl]                                       ; $49af: $b6
    ld [hl], b                                    ; $49b0: $70
    nop                                           ; $49b1: $00
    sbc $00                                       ; $49b2: $de $00
    jr nz, jr_0c4_4a23                            ; $49b4: $20 $6d

    add b                                         ; $49b6: $80
    sbc [hl]                                      ; $49b7: $9e
    nop                                           ; $49b8: $00
    ld c, d                                       ; $49b9: $4a
    ld e, h                                       ; $49ba: $5c
    xor a                                         ; $49bb: $af

jr_0c4_49bc:
    jr nz, jr_0c4_49bc                            ; $49bc: $20 $fe

    cp $70                                        ; $49be: $fe $70

jr_0c4_49c0:
    nop                                           ; $49c0: $00
    rrca                                          ; $49c1: $0f
    rst $30                                       ; $49c2: $f7
    sub [hl]                                      ; $49c3: $96
    ld l, a                                       ; $49c4: $6f
    ld d, e                                       ; $49c5: $53
    nop                                           ; $49c6: $00
    cpl                                           ; $49c7: $2f

jr_0c4_49c8:
    sbc $02                                       ; $49c8: $de $02
    nop                                           ; $49ca: $00
    dec b                                         ; $49cb: $05
    push de                                       ; $49cc: $d5
    ld a, [bc]                                    ; $49cd: $0a
    ld a, [$0500]                                 ; $49ce: $fa $00 $05
    db $eb                                        ; $49d1: $eb
    rst $38                                       ; $49d2: $ff
    ld h, b                                       ; $49d3: $60
    rst $18                                       ; $49d4: $df
    add h                                         ; $49d5: $84
    ei                                            ; $49d6: $fb
    ld [hl+], a                                   ; $49d7: $22
    nop                                           ; $49d8: $00
    db $fd                                        ; $49d9: $fd
    ld c, c                                       ; $49da: $49
    or $d0                                        ; $49db: $f6 $d0
    jr c, jr_0c4_4a37                             ; $49dd: $38 $58

    cp a                                          ; $49df: $bf
    cp [hl]                                       ; $49e0: $be
    add b                                         ; $49e1: $80
    sbc b                                         ; $49e2: $98
    rlca                                          ; $49e3: $07
    add hl, sp                                    ; $49e4: $39
    cp $55                                        ; $49e5: $fe $55
    ld a, [$fc1b]                                 ; $49e7: $fa $1b $fc
    ld b, d                                       ; $49ea: $42
    ld [bc], a                                    ; $49eb: $02
    cp c                                          ; $49ec: $b9
    ld [bc], a                                    ; $49ed: $02
    add hl, de                                    ; $49ee: $19
    ld [de], a                                    ; $49ef: $12
    db $ed                                        ; $49f0: $ed
    jp $07da                                      ; $49f1: $c3 $da $07


    ld a, a                                       ; $49f4: $7f
    nop                                           ; $49f5: $00
    nop                                           ; $49f6: $00
    xor $01                                       ; $49f7: $ee $01
    ld [hl], a                                    ; $49f9: $77
    add b                                         ; $49fa: $80
    ld a, [$0000]                                 ; $49fb: $fa $00 $00
    jr nz, jr_0c4_49c0                            ; $49fe: $20 $c0

    sbc [hl]                                      ; $4a00: $9e
    ld [hl], b                                    ; $4a01: $70
    dec b                                         ; $4a02: $05
    ld a, [c]                                     ; $4a03: $f2
    db $fd                                        ; $4a04: $fd
    ld l, b                                       ; $4a05: $68
    rst $38                                       ; $4a06: $ff
    call z, Call_0c4_7b40                         ; $4a07: $cc $40 $7b
    or b                                          ; $4a0a: $b0
    rrca                                          ; $4a0b: $0f
    xor [hl]                                      ; $4a0c: $ae
    inc bc                                        ; $4a0d: $03
    cp l                                          ; $4a0e: $bd
    inc bc                                        ; $4a0f: $03
    db $eb                                        ; $4a10: $eb
    rla                                           ; $4a11: $17
    nop                                           ; $4a12: $00
    ld h, e                                       ; $4a13: $63
    rst $38                                       ; $4a14: $ff
    or l                                          ; $4a15: $b5
    ld a, a                                       ; $4a16: $7f
    ld l, e                                       ; $4a17: $6b
    cp a                                          ; $4a18: $bf
    ld a, [hl+]                                   ; $4a19: $2a
    rst $18                                       ; $4a1a: $df
    ld bc, $f708                                  ; $4a1b: $01 $08 $f7
    ld [bc], a                                    ; $4a1e: $02
    ld [bc], a                                    ; $4a1f: $02
    sub d                                         ; $4a20: $92
    rst $28                                       ; $4a21: $ef
    pop bc                                        ; $4a22: $c1

jr_0c4_4a23:
    ld [hl], b                                    ; $4a23: $70
    nop                                           ; $4a24: $00
    nop                                           ; $4a25: $00
    ld e, l                                       ; $4a26: $5d
    and b                                         ; $4a27: $a0
    xor [hl]                                      ; $4a28: $ae
    ld b, b                                       ; $4a29: $40
    rst $28                                       ; $4a2a: $ef

Call_0c4_4a2b:
    add b                                         ; $4a2b: $80
    dec de                                        ; $4a2c: $1b
    add b                                         ; $4a2d: $80
    nop                                           ; $4a2e: $00
    call nz, $22bb                                ; $4a2f: $c4 $bb $22
    db $dd                                        ; $4a32: $dd
    nop                                           ; $4a33: $00
    rst $38                                       ; $4a34: $ff
    inc h                                         ; $4a35: $24
    rst $38                                       ; $4a36: $ff

jr_0c4_4a37:
    nop                                           ; $4a37: $00
    add hl, bc                                    ; $4a38: $09
    rst $30                                       ; $4a39: $f7
    ld hl, $4aff                                  ; $4a3a: $21 $ff $4a
    cp a                                          ; $4a3d: $bf
    inc d                                         ; $4a3e: $14
    rst $38                                       ; $4a3f: $ff
    nop                                           ; $4a40: $00
    ld h, $f1                                     ; $4a41: $26 $f1
    sub l                                         ; $4a43: $95
    ld h, b                                       ; $4a44: $60
    dec l                                         ; $4a45: $2d
    ld a, [c]                                     ; $4a46: $f2
    ld l, $c0                                     ; $4a47: $2e $c0
    ld b, b                                       ; $4a49: $40
    dec bc                                        ; $4a4a: $0b
    ld hl, sp+$06                                 ; $4a4b: $f8 $06
    or $40                                        ; $4a4d: $f6 $40
    rra                                           ; $4a4f: $1f
    ldh [$eb], a                                  ; $4a50: $e0 $eb
    nop                                           ; $4a52: $00
    nop                                           ; $4a53: $00
    ld [hl], a                                    ; $4a54: $77
    nop                                           ; $4a55: $00
    ei                                            ; $4a56: $fb
    nop                                           ; $4a57: $00
    xor [hl]                                      ; $4a58: $ae
    ld d, b                                       ; $4a59: $50
    ei                                            ; $4a5a: $fb
    inc b                                         ; $4a5b: $04
    nop                                           ; $4a5c: $00
    cp e                                          ; $4a5d: $bb
    ld b, h                                       ; $4a5e: $44
    add sp, $15                                   ; $4a5f: $e8 $15
    rst $10                                       ; $4a61: $d7
    jr z, jr_0c4_4aa8                             ; $4a62: $28 $44

    rst $38                                       ; $4a64: $ff
    nop                                           ; $4a65: $00
    adc c                                         ; $4a66: $89
    ld e, a                                       ; $4a67: $5f
    jr nz, @+$01                                  ; $4a68: $20 $ff

    sbc d                                         ; $4a6a: $9a
    ld e, l                                       ; $4a6b: $5d
    sub l                                         ; $4a6c: $95
    ld e, d                                       ; $4a6d: $5a
    nop                                           ; $4a6e: $00
    and d                                         ; $4a6f: $a2
    cp l                                          ; $4a70: $bd
    call nc, $00fb                                ; $4a71: $d4 $fb $00
    cp a                                          ; $4a74: $bf
    ld b, c                                       ; $4a75: $41
    cp a                                          ; $4a76: $bf
    nop                                           ; $4a77: $00
    jr z, @-$27                                   ; $4a78: $28 $d7

    ld d, h                                       ; $4a7a: $54
    xor e                                         ; $4a7b: $ab
    and c                                         ; $4a7c: $a1
    ld e, [hl]                                    ; $4a7d: $5e
    ld l, c                                       ; $4a7e: $69
    sub [hl]                                      ; $4a7f: $96
    nop                                           ; $4a80: $00
    call nc, Call_0c4_4a2b                        ; $4a81: $d4 $2b $4a
    or a                                          ; $4a84: $b7
    ld hl, $efde                                  ; $4a85: $21 $de $ef
    stop                                          ; $4a88: $10 $00
    ld e, c                                       ; $4a8a: $59
    inc h                                         ; $4a8b: $24
    ld a, a                                       ; $4a8c: $7f
    add b                                         ; $4a8d: $80
    dec l                                         ; $4a8e: $2d
    ld d, b                                       ; $4a8f: $50
    ld e, d                                       ; $4a90: $5a
    jr nz, jr_0c4_4a93                            ; $4a91: $20 $00

jr_0c4_4a93:
    ld [hl], d                                    ; $4a93: $72
    add b                                         ; $4a94: $80
    dec l                                         ; $4a95: $2d
    ret nz                                        ; $4a96: $c0

    ei                                            ; $4a97: $fb
    nop                                           ; $4a98: $00
    ld a, [$0007]                                 ; $4a99: $fa $07 $00
    ld e, h                                       ; $4a9c: $5c
    inc bc                                        ; $4a9d: $03
    xor [hl]                                      ; $4a9e: $ae
    inc bc                                        ; $4a9f: $03
    ld e, b                                       ; $4aa0: $58
    dec b                                         ; $4aa1: $05
    inc l                                         ; $4aa2: $2c
    dec b                                         ; $4aa3: $05
    nop                                           ; $4aa4: $00
    ld l, c                                       ; $4aa5: $69
    inc b                                         ; $4aa6: $04
    ld [hl], b                                    ; $4aa7: $70

jr_0c4_4aa8:
    rrca                                          ; $4aa8: $0f
    cp h                                          ; $4aa9: $bc
    dec b                                         ; $4aaa: $05
    ld h, d                                       ; $4aab: $62
    db $dd                                        ; $4aac: $dd
    nop                                           ; $4aad: $00
    sub b                                         ; $4aae: $90
    ld l, a                                       ; $4aaf: $6f
    add b                                         ; $4ab0: $80
    rst $38                                       ; $4ab1: $ff
    ld a, [hl+]                                   ; $4ab2: $2a
    rst $18                                       ; $4ab3: $df
    add b                                         ; $4ab4: $80
    ld a, a                                       ; $4ab5: $7f
    nop                                           ; $4ab6: $00
    ld c, b                                       ; $4ab7: $48
    cp a                                          ; $4ab8: $bf
    sub d                                         ; $4ab9: $92
    ld l, a                                       ; $4aba: $6f
    dec b                                         ; $4abb: $05
    rst $38                                       ; $4abc: $ff
    ld [de], a                                    ; $4abd: $12
    ld sp, hl                                     ; $4abe: $f9
    nop                                           ; $4abf: $00
    ld c, e                                       ; $4ac0: $4b
    or b                                          ; $4ac1: $b0
    ld d, $f9                                     ; $4ac2: $16 $f9
    dec hl                                        ; $4ac4: $2b
    ret nc                                        ; $4ac5: $d0

    add e                                         ; $4ac6: $83
    ld hl, sp+$01                                 ; $4ac7: $f8 $01
    ld c, d                                       ; $4ac9: $4a
    ldh a, [$bd]                                  ; $4aca: $f0 $bd
    ret nc                                        ; $4acc: $d0

    rlca                                          ; $4acd: $07
    ld hl, sp+$75                                 ; $4ace: $f8 $75
    sub b                                         ; $4ad0: $90
    ld bc, $fd00                                  ; $4ad1: $01 $00 $fd
    nop                                           ; $4ad4: $00
    ld e, e                                       ; $4ad5: $5b
    inc h                                         ; $4ad6: $24
    or $01                                        ; $4ad7: $f6 $01
    xor $11                                       ; $4ad9: $ee $11
    ld b, b                                       ; $4adb: $40
    cp d                                          ; $4adc: $ba
    nop                                           ; $4add: $00
    dec b                                         ; $4ade: $05
    and d                                         ; $4adf: $a2
    ld a, a                                       ; $4ae0: $7f
    push bc                                       ; $4ae1: $c5
    cpl                                           ; $4ae2: $2f
    sub b                                         ; $4ae3: $90
    ld a, a                                       ; $4ae4: $7f
    nop                                           ; $4ae5: $00
    ld c, d                                       ; $4ae6: $4a
    cpl                                           ; $4ae7: $2f
    push bc                                       ; $4ae8: $c5
    ld l, $e8                                     ; $4ae9: $2e $e8
    cpl                                           ; $4aeb: $2f
    dec [hl]                                      ; $4aec: $35
    ld a, [hl]                                    ; $4aed: $7e
    nop                                           ; $4aee: $00
    ret nz                                        ; $4aef: $c0

    cpl                                           ; $4af0: $2f
    ld hl, $94df                                  ; $4af1: $21 $df $94
    ld l, e                                       ; $4af4: $6b
    ld a, [hl+]                                   ; $4af5: $2a
    push de                                       ; $4af6: $d5
    nop                                           ; $4af7: $00
    ld d, h                                       ; $4af8: $54
    xor e                                         ; $4af9: $ab
    ld a, [hl-]                                   ; $4afa: $3a
    push bc                                       ; $4afb: $c5
    or l                                          ; $4afc: $b5
    ld c, d                                       ; $4afd: $4a
    ld [de], a                                    ; $4afe: $12

Jump_0c4_4aff:
    db $ed                                        ; $4aff: $ed
    nop                                           ; $4b00: $00
    ld [$77f7], sp                                ; $4b01: $08 $f7 $77
    adc b                                         ; $4b04: $88
    xor l                                         ; $4b05: $ad
    ld [de], a                                    ; $4b06: $12
    cp a                                          ; $4b07: $bf
    ld b, b                                       ; $4b08: $40
    nop                                           ; $4b09: $00
    dec d                                         ; $4b0a: $15
    xor b                                         ; $4b0b: $a8
    ld a, [hl+]                                   ; $4b0c: $2a
    sub b                                         ; $4b0d: $90
    inc e                                         ; $4b0e: $1c
    ldh [$8b], a                                  ; $4b0f: $e0 $8b
    ldh a, [rP1]                                  ; $4b11: $f0 $00
    ld a, [hl]                                    ; $4b13: $7e
    add b                                         ; $4b14: $80
    ld a, l                                       ; $4b15: $7d
    inc bc                                        ; $4b16: $03
    xor [hl]                                      ; $4b17: $ae
    ld bc, $0157                                  ; $4b18: $01 $57 $01
    nop                                           ; $4b1b: $00
    ld l, [hl]                                    ; $4b1c: $6e
    ld bc, $0197                                  ; $4b1d: $01 $97 $01
    sbc d                                         ; $4b20: $9a
    ld bc, $035c                                  ; $4b21: $01 $5c $03
    nop                                           ; $4b24: $00
    rst $28                                       ; $4b25: $ef
    ld bc, $ef30                                  ; $4b26: $01 $30 $ef
    ld c, b                                       ; $4b29: $48
    or a                                          ; $4b2a: $b7
    ld b, b                                       ; $4b2b: $40
    rst $38                                       ; $4b2c: $ff
    nop                                           ; $4b2d: $00
    inc d                                         ; $4b2e: $14
    ld l, a                                       ; $4b2f: $6f
    ld bc, $527e                                  ; $4b30: $01 $7e $52
    cpl                                           ; $4b33: $2f
    inc h                                         ; $4b34: $24
    db $db                                        ; $4b35: $db
    nop                                           ; $4b36: $00
    ld bc, $897f                                  ; $4b37: $01 $7f $89
    ld a, h                                       ; $4b3a: $7c
    dec h                                         ; $4b3b: $25
    ret c                                         ; $4b3c: $d8

    adc d                                         ; $4b3d: $8a
    ld a, l                                       ; $4b3e: $7d
    nop                                           ; $4b3f: $00
    add l                                         ; $4b40: $85
    ld hl, sp+$21                                 ; $4b41: $f8 $21
    db $fc                                        ; $4b43: $fc
    ld [de], a                                    ; $4b44: $12
    db $fc                                        ; $4b45: $fc
    xor a                                         ; $4b46: $af
    db $f4                                        ; $4b47: $f4
    ld [$fe41], sp                                ; $4b48: $08 $41 $fe
    dec sp                                        ; $4b4b: $3b
    add b                                         ; $4b4c: $80
    rst $38                                       ; $4b4d: $ff
    nop                                           ; $4b4e: $00
    nop                                           ; $4b4f: $00
    call Call_000_0012                            ; $4b50: $cd $12 $00
    ld a, e                                       ; $4b53: $7b
    nop                                           ; $4b54: $00
    cp e                                          ; $4b55: $bb
    inc b                                         ; $4b56: $04
    ld l, [hl]                                    ; $4b57: $6e
    ld bc, $02fd                                  ; $4b58: $01 $fd $02
    nop                                           ; $4b5b: $00
    pop de                                        ; $4b5c: $d1
    ccf                                           ; $4b5d: $3f
    ld h, d                                       ; $4b5e: $62
    rla                                           ; $4b5f: $17
    ret z                                         ; $4b60: $c8

    ccf                                           ; $4b61: $3f
    push de                                       ; $4b62: $d5
    rrca                                          ; $4b63: $0f
    nop                                           ; $4b64: $00
    ld [hl], d                                    ; $4b65: $72
    adc a                                         ; $4b66: $8f
    cp d                                          ; $4b67: $ba
    ld c, e                                       ; $4b68: $4b
    adc l                                         ; $4b69: $8d
    ld e, a                                       ; $4b6a: $5f
    ld [hl], b                                    ; $4b6b: $70
    adc e                                         ; $4b6c: $8b
    nop                                           ; $4b6d: $00
    db $10                                        ; $4b6e: $10
    rst $28                                       ; $4b6f: $ef
    jp z, Jump_000_14b5                           ; $4b70: $ca $b5 $14

    db $eb                                        ; $4b73: $eb
    ld d, d                                       ; $4b74: $52
    xor l                                         ; $4b75: $ad
    nop                                           ; $4b76: $00
    xor l                                         ; $4b77: $ad
    ld d, d                                       ; $4b78: $52
    dec l                                         ; $4b79: $2d
    jp nc, $bb44                                  ; $4b7a: $d2 $44 $bb

    ld [bc], a                                    ; $4b7d: $02
    db $fd                                        ; $4b7e: $fd
    nop                                           ; $4b7f: $00
    cp e                                          ; $4b80: $bb
    call nz, $8956                                ; $4b81: $c4 $56 $89
    ld e, a                                       ; $4b84: $5f
    and b                                         ; $4b85: $a0
    inc h                                         ; $4b86: $24
    jp z, Jump_000_2b00                           ; $4b87: $ca $00 $2b

    call nz, $b847                                ; $4b8a: $c4 $47 $b8
    and d                                         ; $4b8d: $a2
    ld a, h                                       ; $4b8e: $7c
    rra                                           ; $4b8f: $1f
    ldh [rLCDC], a                                ; $4b90: $e0 $40
    ld [bc], a                                    ; $4b92: $02
    jr nz, jr_0c4_4b99                            ; $4b93: $20 $04

    ld d, a                                       ; $4b95: $57
    rst $38                                       ; $4b96: $ff
    ld l, l                                       ; $4b97: $6d
    add e                                         ; $4b98: $83

jr_0c4_4b99:
    cp d                                          ; $4b99: $ba
    dec b                                         ; $4b9a: $05
    nop                                           ; $4b9b: $00
    db $eb                                        ; $4b9c: $eb
    inc b                                         ; $4b9d: $04
    halt                                          ; $4b9e: $76
    ld bc, $01b6                                  ; $4b9f: $01 $b6 $01
    ldh [$80], a                                  ; $4ba2: $e0 $80
    nop                                           ; $4ba4: $00
    or a                                          ; $4ba5: $b7
    ret nz                                        ; $4ba6: $c0

    xor a                                         ; $4ba7: $af
    ret nc                                        ; $4ba8: $d0

    cp $ff                                        ; $4ba9: $fe $ff
    ret nz                                        ; $4bab: $c0

    rst $38                                       ; $4bac: $ff
    nop                                           ; $4bad: $00
    jp nc, $84ed                                  ; $4bae: $d2 $ed $84

    ei                                            ; $4bb1: $fb
    jr z, jr_0c4_4c0b                             ; $4bb2: $28 $57

    ld d, d                                       ; $4bb4: $52
    dec b                                         ; $4bb5: $05
    ld bc, $037c                                  ; $4bb6: $01 $7c $03
    ld c, a                                       ; $4bb9: $4f
    cp a                                          ; $4bba: $bf
    cp a                                          ; $4bbb: $bf
    rst $38                                       ; $4bbc: $ff
    rla                                           ; $4bbd: $17
    and $06                                       ; $4bbe: $e6 $06
    ld bc, $7fa6                                  ; $4bc0: $01 $a6 $7f
    ld h, $fc                                     ; $4bc3: $26 $fc
    add b                                         ; $4bc5: $80
    ret nz                                        ; $4bc6: $c0

    ld [$048e], a                                 ; $4bc7: $ea $8e $04
    nop                                           ; $4bca: $00
    pop de                                        ; $4bcb: $d1
    cp $7f                                        ; $4bcc: $fe $7f
    add b                                         ; $4bce: $80
    ld e, e                                       ; $4bcf: $5b
    add b                                         ; $4bd0: $80
    or $00                                        ; $4bd1: $f6 $00
    nop                                           ; $4bd3: $00
    xor a                                         ; $4bd4: $af
    nop                                           ; $4bd5: $00
    add l                                         ; $4bd6: $85
    ld l, $4e                                     ; $4bd7: $2e $4e
    cp a                                          ; $4bd9: $bf
    rra                                           ; $4bda: $1f
    rst $38                                       ; $4bdb: $ff
    nop                                           ; $4bdc: $00
    ld e, a                                       ; $4bdd: $5f
    rst $38                                       ; $4bde: $ff
    ld d, [hl]                                    ; $4bdf: $56
    cpl                                           ; $4be0: $2f
    xor $17                                       ; $4be1: $ee $17
    or l                                          ; $4be3: $b5
    ld c, a                                       ; $4be4: $4f
    nop                                           ; $4be5: $00
    or b                                          ; $4be6: $b0
    ld c, l                                       ; $4be7: $4d
    nop                                           ; $4be8: $00
    nop                                           ; $4be9: $00
    xor e                                         ; $4bea: $ab
    ld d, h                                       ; $4beb: $54
    ld c, a                                       ; $4bec: $4f
    ldh a, [rP1]                                  ; $4bed: $f0 $00
    add hl, hl                                    ; $4bef: $29
    cp $b4                                        ; $4bf0: $fe $b4
    ei                                            ; $4bf2: $fb
    xor b                                         ; $4bf3: $a8
    rst $30                                       ; $4bf4: $f7
    ld d, h                                       ; $4bf5: $54
    db $eb                                        ; $4bf6: $eb
    nop                                           ; $4bf7: $00
    ld c, b                                       ; $4bf8: $48
    or a                                          ; $4bf9: $b7
    or b                                          ; $4bfa: $b0
    ld c, $ec                                     ; $4bfb: $0e $ec
    rra                                           ; $4bfd: $1f
    rst $10                                       ; $4bfe: $d7
    ccf                                           ; $4bff: $3f
    nop                                           ; $4c00: $00
    dec e                                         ; $4c01: $1d
    cp $4e                                        ; $4c02: $fe $4e
    db $fd                                        ; $4c04: $fd
    xor d                                         ; $4c05: $aa
    ld a, l                                       ; $4c06: $7d
    ld d, l                                       ; $4c07: $55
    cp d                                          ; $4c08: $ba
    nop                                           ; $4c09: $00
    ld c, e                                       ; $4c0a: $4b

jr_0c4_4c0b:
    or b                                          ; $4c0b: $b0
    nop                                           ; $4c0c: $00
    dec b                                         ; $4c0d: $05
    xor b                                         ; $4c0e: $a8
    ld d, a                                       ; $4c0f: $57
    ld a, [bc]                                    ; $4c10: $0a
    rst $38                                       ; $4c11: $ff
    nop                                           ; $4c12: $00
    xor l                                         ; $4c13: $ad
    ld d, b                                       ; $4c14: $50
    rla                                           ; $4c15: $17
    ldh [$ae], a                                  ; $4c16: $e0 $ae
    ld b, b                                       ; $4c18: $40
    ld d, a                                       ; $4c19: $57
    add b                                         ; $4c1a: $80
    nop                                           ; $4c1b: $00
    ld l, l                                       ; $4c1c: $6d
    nop                                           ; $4c1d: $00
    ld e, b                                       ; $4c1e: $58
    ld [hl], b                                    ; $4c1f: $70
    dec [hl]                                      ; $4c20: $35
    ld hl, sp-$0b                                 ; $4c21: $f8 $f5
    ld a, [$df00]                                 ; $4c23: $fa $00 $df
    ccf                                           ; $4c26: $3f
    ld a, b                                       ; $4c27: $78
    sbc a                                         ; $4c28: $9f
    or l                                          ; $4c29: $b5
    ld e, [hl]                                    ; $4c2a: $5e
    ld d, b                                       ; $4c2b: $50
    ccf                                           ; $4c2c: $3f
    ld de, $1562                                  ; $4c2d: $11 $62 $15
    ld a, [bc]                                    ; $4c30: $0a
    ld c, b                                       ; $4c31: $48
    dec b                                         ; $4c32: $05
    db $eb                                        ; $4c33: $eb
    dec d                                         ; $4c34: $15
    rst $10                                       ; $4c35: $d7
    nop                                           ; $4c36: $00
    dec b                                         ; $4c37: $05
    ld b, c                                       ; $4c38: $41
    ld hl, $0462                                  ; $4c39: $21 $62 $04
    sub c                                         ; $4c3c: $91
    ld l, a                                       ; $4c3d: $6f
    and b                                         ; $4c3e: $a0
    ld [hl], b                                    ; $4c3f: $70
    dec [hl]                                      ; $4c40: $35
    sbc [hl]                                      ; $4c41: $9e
    ld [bc], a                                    ; $4c42: $02
    ld b, b                                       ; $4c43: $40
    ld a, [$0500]                                 ; $4c44: $fa $00 $05
    ld [hl], l                                    ; $4c47: $75
    add sp, -$21                                  ; $4c48: $e8 $df
    ldh [rOCPS], a                                ; $4c4a: $e0 $6a
    ret nz                                        ; $4c4c: $c0

    nop                                           ; $4c4d: $00
    jr nz, jr_0c4_4c5b                            ; $4c4e: $20 $0b

    ld d, c                                       ; $4c50: $51
    rst $28                                       ; $4c51: $ef
    add e                                         ; $4c52: $83
    rst $38                                       ; $4c53: $ff
    ld c, e                                       ; $4c54: $4b
    cp a                                          ; $4c55: $bf
    nop                                           ; $4c56: $00
    ld a, [$bd05]                                 ; $4c57: $fa $05 $bd
    ld [bc], a                                    ; $4c5a: $02

jr_0c4_4c5b:
    ld l, d                                       ; $4c5b: $6a
    dec b                                         ; $4c5c: $05
    db $dd                                        ; $4c5d: $dd
    ld [bc], a                                    ; $4c5e: $02
    nop                                           ; $4c5f: $00
    and b                                         ; $4c60: $a0
    ret nz                                        ; $4c61: $c0

    jp nc, $eaed                                  ; $4c62: $d2 $ed $ea

    db $fd                                        ; $4c65: $fd
    db $e3                                        ; $4c66: $e3
    rst $38                                       ; $4c67: $ff
    nop                                           ; $4c68: $00
    rst $10                                       ; $4c69: $d7
    rst $38                                       ; $4c6a: $ff
    ld l, d                                       ; $4c6b: $6a
    rst $38                                       ; $4c6c: $ff
    push de                                       ; $4c6d: $d5
    cp $04                                        ; $4c6e: $fe $04
    db $db                                        ; $4c70: $db
    nop                                           ; $4c71: $00
    ld d, $01                                     ; $4c72: $16 $01
    db $dd                                        ; $4c74: $dd
    inc bc                                        ; $4c75: $03
    ld a, [$2307]                                 ; $4c76: $fa $07 $23
    rst $18                                       ; $4c79: $df
    nop                                           ; $4c7a: $00
    adc c                                         ; $4c7b: $89
    ld a, a                                       ; $4c7c: $7f
    add h                                         ; $4c7d: $84
    ld a, a                                       ; $4c7e: $7f
    ld c, c                                       ; $4c7f: $49
    or a                                          ; $4c80: $b7
    sub d                                         ; $4c81: $92
    ld l, l                                       ; $4c82: $6d
    inc b                                         ; $4c83: $04
    nop                                           ; $4c84: $00
    add b                                         ; $4c85: $80
    dec h                                         ; $4c86: $25
    jp c, $70d1                                   ; $4c87: $da $d1 $70

    dec b                                         ; $4c8a: $05
    jp nc, Jump_000_00ac                          ; $4c8b: $d2 $ac $00

    xor d                                         ; $4c8e: $aa
    call nc, $a855                                ; $4c8f: $d4 $55 $a8
    or [hl]                                       ; $4c92: $b6
    nop                                           ; $4c93: $00
    rla                                           ; $4c94: $17
    cp h                                          ; $4c95: $bc
    nop                                           ; $4c96: $00
    dec c                                         ; $4c97: $0d
    cp $5f                                        ; $4c98: $fe $5f
    rst $38                                       ; $4c9a: $ff
    cp e                                          ; $4c9b: $bb
    rlca                                          ; $4c9c: $07
    db $ed                                        ; $4c9d: $ed
    inc de                                        ; $4c9e: $13
    ld bc, $09d7                                  ; $4c9f: $01 $d7 $09
    ld l, l                                       ; $4ca2: $6d
    inc bc                                        ; $4ca3: $03
    db $db                                        ; $4ca4: $db
    nop                                           ; $4ca5: $00
    ld [bc], a                                    ; $4ca6: $02
    call c, Call_000_0006                         ; $4ca7: $dc $06 $00
    dec a                                         ; $4caa: $3d
    jp nz, $fffa                                  ; $4cab: $c2 $fa $ff

    add b                                         ; $4cae: $80
    rst $38                                       ; $4caf: $ff
    ld d, d                                       ; $4cb0: $52
    db $ed                                        ; $4cb1: $ed
    nop                                           ; $4cb2: $00
    inc b                                         ; $4cb3: $04
    ei                                            ; $4cb4: $fb
    add hl, hl                                    ; $4cb5: $29
    sub $94                                       ; $4cb6: $d6 $94
    ld l, $e6                                     ; $4cb8: $2e $e6
    rra                                           ; $4cba: $1f
    nop                                           ; $4cbb: $00
    ld e, a                                       ; $4cbc: $5f
    cp a                                          ; $4cbd: $bf
    rst $38                                       ; $4cbe: $ff
    rst $38                                       ; $4cbf: $ff
    xor l                                         ; $4cc0: $ad
    ld a, [hl]                                    ; $4cc1: $7e
    rla                                           ; $4cc2: $17
    cp $00                                        ; $4cc3: $fe $00
    ld c, l                                       ; $4cc5: $4d
    cp $13                                        ; $4cc6: $fe $13
    cp $04                                        ; $4cc8: $fe $04
    ld bc, $fdd2                                  ; $4cca: $01 $d2 $fd
    nop                                           ; $4ccd: $00
    ret nc                                        ; $4cce: $d0

    rst $38                                       ; $4ccf: $ff
    ld c, d                                       ; $4cd0: $4a
    push af                                       ; $4cd1: $f5
    cp $00                                        ; $4cd2: $fe $00
    ld e, a                                       ; $4cd4: $5f
    add b                                         ; $4cd5: $80
    nop                                           ; $4cd6: $00
    push af                                       ; $4cd7: $f5
    nop                                           ; $4cd8: $00
    xor l                                         ; $4cd9: $ad
    nop                                           ; $4cda: $00
    jr @+$72                                      ; $4cdb: $18 $70

    dec [hl]                                      ; $4cdd: $35
    ld a, [$7d00]                                 ; $4cde: $fa $00 $7d
    rst $38                                       ; $4ce1: $ff
    db $fc                                        ; $4ce2: $fc
    rst $38                                       ; $4ce3: $ff
    ld e, d                                       ; $4ce4: $5a

jr_0c4_4ce5:
    cp a                                          ; $4ce5: $bf
    sub $2f                                       ; $4ce6: $d6 $2f
    nop                                           ; $4ce8: $00
    ld l, l                                       ; $4ce9: $6d
    sbc a                                         ; $4cea: $9f
    ret c                                         ; $4ceb: $d8

    ld h, $dd                                     ; $4cec: $26 $dd
    inc hl                                        ; $4cee: $23
    ld l, [hl]                                    ; $4cef: $6e
    sub c                                         ; $4cf0: $91
    nop                                           ; $4cf1: $00
    or $0b                                        ; $4cf2: $f6 $0b
    ld c, h                                       ; $4cf4: $4c
    ld [hl-], a                                   ; $4cf5: $32
    ld e, h                                       ; $4cf6: $5c
    inc hl                                        ; $4cf7: $23
    jp hl                                         ; $4cf8: $e9


    rla                                           ; $4cf9: $17
    nop                                           ; $4cfa: $00
    ld d, d                                       ; $4cfb: $52
    cpl                                           ; $4cfc: $2f
    add sp, $15                                   ; $4cfd: $e8 $15
    inc d                                         ; $4cff: $14
    db $eb                                        ; $4d00: $eb
    ld c, c                                       ; $4d01: $49
    ld [hl], $00                                  ; $4d02: $36 $00
    jr nz, jr_0c4_4ce5                            ; $4d04: $20 $df

    ld [de], a                                    ; $4d06: $12
    rst $38                                       ; $4d07: $ff
    sub b                                         ; $4d08: $90
    rst $28                                       ; $4d09: $ef
    ld [$00ff], sp                                ; $4d0a: $08 $ff $00
    and d                                         ; $4d0d: $a2
    db $fd                                        ; $4d0e: $fd
    ld d, b                                       ; $4d0f: $50
    rst $38                                       ; $4d10: $ff
    call $2276                                    ; $4d11: $cd $76 $22
    call c, Call_000_2700                         ; $4d14: $dc $00 $27
    db $fc                                        ; $4d17: $fc
    add c                                         ; $4d18: $81
    ld a, h                                       ; $4d19: $7c
    ld e, l                                       ; $4d1a: $5d
    xor b                                         ; $4d1b: $a8
    and h                                         ; $4d1c: $a4
    ld e, c                                       ; $4d1d: $59
    nop                                           ; $4d1e: $00
    ld b, c                                       ; $4d1f: $41
    cp h                                          ; $4d20: $bc
    dec de                                        ; $4d21: $1b
    ldh a, [$d6]                                  ; $4d22: $f0 $d6
    nop                                           ; $4d24: $00
    ld l, a                                       ; $4d25: $6f
    nop                                           ; $4d26: $00
    nop                                           ; $4d27: $00
    cp a                                          ; $4d28: $bf
    nop                                           ; $4d29: $00
    jp c, Jump_0c4_6f24                           ; $4d2a: $da $24 $6f

jr_0c4_4d2d:
    add b                                         ; $4d2d: $80
    rst $30                                       ; $4d2e: $f7
    ld [$5d00], sp                                ; $4d2f: $08 $00 $5d
    and b                                         ; $4d32: $a0
    ld e, a                                       ; $4d33: $5f
    and b                                         ; $4d34: $a0
    ld h, h                                       ; $4d35: $64
    adc a                                         ; $4d36: $8f
    cp b                                          ; $4d37: $b8
    dec b                                         ; $4d38: $05
    nop                                           ; $4d39: $00
    or c                                          ; $4d3a: $b1
    ld c, [hl]                                    ; $4d3b: $4e
    ld hl, sp+$05                                 ; $4d3c: $f8 $05
    ld b, d                                       ; $4d3e: $42
    add hl, de                                    ; $4d3f: $19
    or c                                          ; $4d40: $b1
    ld a, [bc]                                    ; $4d41: $0a
    nop                                           ; $4d42: $00
    ld a, d                                       ; $4d43: $7a
    dec c                                         ; $4d44: $0d
    ldh [rNR31], a                                ; $4d45: $e0 $1b
    ld de, $a6ef                                  ; $4d47: $11 $ef $a6
    ld e, e                                       ; $4d4a: $5b
    nop                                           ; $4d4b: $00
    jr nz, jr_0c4_4d2d                            ; $4d4c: $20 $df

    ld d, l                                       ; $4d4e: $55
    xor e                                         ; $4d4f: $ab
    ld [$6c15], a                                 ; $4d50: $ea $15 $6c
    sub e                                         ; $4d53: $93
    nop                                           ; $4d54: $00
    ld d, d                                       ; $4d55: $52
    xor l                                         ; $4d56: $ad
    adc b                                         ; $4d57: $88
    ld [hl], a                                    ; $4d58: $77
    rla                                           ; $4d59: $17
    ld hl, sp-$76                                 ; $4d5a: $f8 $8a
    ldh a, [rP1]                                  ; $4d5c: $f0 $00
    dec l                                         ; $4d5e: $2d
    ldh a, [rWY]                                  ; $4d5f: $f0 $4a
    ldh a, [$89]                                  ; $4d61: $f0 $89
    ldh a, [$5b]                                  ; $4d63: $f0 $5b
    ldh a, [rP1]                                  ; $4d65: $f0 $00
    or l                                          ; $4d67: $b5
    ld hl, sp+$56                                 ; $4d68: $f8 $56
    ldh [$de], a                                  ; $4d6a: $e0 $de
    ld bc, $05b2                                  ; $4d6c: $01 $b2 $05
    ld b, b                                       ; $4d6f: $40
    ld e, a                                       ; $4d70: $5f
    db $fc                                        ; $4d71: $fc
    ld b, $2a                                     ; $4d72: $06 $2a
    ld bc, $0027                                  ; $4d74: $01 $27 $00
    ld e, d                                       ; $4d77: $5a
    ld bc, $ef00                                  ; $4d78: $01 $00 $ef
    nop                                           ; $4d7b: $00
    pop de                                        ; $4d7c: $d1
    ld a, $e4                                     ; $4d7d: $3e $e4
    inc de                                        ; $4d7f: $13
    or c                                          ; $4d80: $b1
    ld e, [hl]                                    ; $4d81: $5e
    nop                                           ; $4d82: $00
    ld h, b                                       ; $4d83: $60
    sub a                                         ; $4d84: $97
    ld [c], a                                     ; $4d85: $e2
    rla                                           ; $4d86: $17
    ld b, h                                       ; $4d87: $44
    or a                                          ; $4d88: $b7
    sbc d                                         ; $4d89: $9a
    ld [hl], a                                    ; $4d8a: $77
    nop                                           ; $4d8b: $00
    and c                                         ; $4d8c: $a1
    ld d, a                                       ; $4d8d: $57
    ld b, [hl]                                    ; $4d8e: $46
    cp e                                          ; $4d8f: $bb
    adc b                                         ; $4d90: $88
    ld [hl], a                                    ; $4d91: $77
    ld bc, $04ff                                  ; $4d92: $01 $ff $04
    sub h                                         ; $4d95: $94
    ei                                            ; $4d96: $fb
    ld b, b                                       ; $4d97: $40
    cp a                                          ; $4d98: $bf
    ld [hl+], a                                   ; $4d99: $22
    sub d                                         ; $4d9a: $92
    inc b                                         ; $4d9b: $04
    ld b, b                                       ; $4d9c: $40
    rst $38                                       ; $4d9d: $ff
    nop                                           ; $4d9e: $00
    db $dd                                        ; $4d9f: $dd
    ld h, b                                       ; $4da0: $60
    ld h, $c0                                     ; $4da1: $26 $c0
    ld e, l                                       ; $4da3: $5d
    ldh [$2e], a                                  ; $4da4: $e0 $2e
    pop bc                                        ; $4da6: $c1
    nop                                           ; $4da7: $00
    db $eb                                        ; $4da8: $eb
    ld b, h                                       ; $4da9: $44
    daa                                           ; $4daa: $27
    ret z                                         ; $4dab: $c8

    ld a, [bc]                                    ; $4dac: $0a
    push hl                                       ; $4dad: $e5
    ld l, l                                       ; $4dae: $6d
    jp nz, $7300                                  ; $4daf: $c2 $00 $73

    inc b                                         ; $4db2: $04
    db $ed                                        ; $4db3: $ed
    nop                                           ; $4db4: $00
    db $fd                                        ; $4db5: $fd
    ld [bc], a                                    ; $4db6: $02
    rst $10                                       ; $4db7: $d7
    jr nz, jr_0c4_4dba                            ; $4db8: $20 $00

jr_0c4_4dba:
    ld a, l                                       ; $4dba: $7d
    nop                                           ; $4dbb: $00
    cp d                                          ; $4dbc: $ba
    ld b, b                                       ; $4dbd: $40
    db $ed                                        ; $4dbe: $ed
    nop                                           ; $4dbf: $00
    ld a, a                                       ; $4dc0: $7f
    add b                                         ; $4dc1: $80
    nop                                           ; $4dc2: $00
    ld b, c                                       ; $4dc3: $41
    cp $8a                                        ; $4dc4: $fe $8a
    ld d, l                                       ; $4dc6: $55
    sub l                                         ; $4dc7: $95
    ld l, d                                       ; $4dc8: $6a
    jp z, Jump_000_0035                           ; $4dc9: $ca $35 $00

    dec bc                                        ; $4dcc: $0b
    ld h, h                                       ; $4dcd: $64
    push bc                                       ; $4dce: $c5
    ld a, [hl+]                                   ; $4dcf: $2a
    add sp, $37                                   ; $4dd0: $e8 $37
    add d                                         ; $4dd2: $82
    ld l, l                                       ; $4dd3: $6d
    nop                                           ; $4dd4: $00
    add hl, bc                                    ; $4dd5: $09
    rst $38                                       ; $4dd6: $ff
    ld h, h                                       ; $4dd7: $64
    cp a                                          ; $4dd8: $bf
    ld bc, $aaff                                  ; $4dd9: $01 $ff $aa
    ld e, a                                       ; $4ddc: $5f
    nop                                           ; $4ddd: $00
    ld d, h                                       ; $4dde: $54
    xor a                                         ; $4ddf: $af
    ld h, d                                       ; $4de0: $62
    sbc a                                         ; $4de1: $9f
    sub l                                         ; $4de2: $95
    ld l, a                                       ; $4de3: $6f
    ld hl, $80df                                  ; $4de4: $21 $df $80
    call z, Call_000_0007                         ; $4de7: $cc $07 $00
    ld l, e                                       ; $4dea: $6b
    add b                                         ; $4deb: $80
    ld d, [hl]                                    ; $4dec: $56
    add b                                         ; $4ded: $80
    ld c, b                                       ; $4dee: $48
    add b                                         ; $4def: $80
    nop                                           ; $4df0: $00
    call nc, $ad80                                ; $4df1: $d4 $80 $ad
    ret nz                                        ; $4df4: $c0

    ld e, e                                       ; $4df5: $5b
    add b                                         ; $4df6: $80
    xor $11                                       ; $4df7: $ee $11
    nop                                           ; $4df9: $00
    scf                                           ; $4dfa: $37
    ld c, b                                       ; $4dfb: $48
    db $fd                                        ; $4dfc: $fd
    ld [bc], a                                    ; $4dfd: $02
    xor e                                         ; $4dfe: $ab
    inc d                                         ; $4dff: $14
    xor e                                         ; $4e00: $ab
    inc b                                         ; $4e01: $04
    ld bc, $039c                                  ; $4e02: $01 $9c $03
    ld l, d                                       ; $4e05: $6a
    dec b                                         ; $4e06: $05
    cp [hl]                                       ; $4e07: $be
    ld bc, $e494                                  ; $4e08: $01 $94 $e4
    ld bc, $fa80                                  ; $4e0b: $01 $80 $fa
    inc b                                         ; $4e0e: $04
    cp a                                          ; $4e0f: $bf
    ld [de], a                                    ; $4e10: $12
    cp l                                          ; $4e11: $bd
    ld hl, $d4bf                                  ; $4e12: $21 $bf $d4
    cp a                                          ; $4e15: $bf
    nop                                           ; $4e16: $00
    add l                                         ; $4e17: $85
    ld e, a                                       ; $4e18: $5f
    ld h, [hl]                                    ; $4e19: $66
    cp e                                          ; $4e1a: $bb
    sub c                                         ; $4e1b: $91
    ld l, [hl]                                    ; $4e1c: $6e
    ld [de], a                                    ; $4e1d: $12
    rst $38                                       ; $4e1e: $ff
    inc b                                         ; $4e1f: $04
    add c                                         ; $4e20: $81
    cp $0b                                        ; $4e21: $fe $0b
    push af                                       ; $4e23: $f5
    inc d                                         ; $4e24: $14
    cp $01                                        ; $4e25: $fe $01
    ld bc, $10ff                                  ; $4e27: $01 $ff $10
    rst $10                                       ; $4e2a: $d7
    nop                                           ; $4e2b: $00
    ld l, [hl]                                    ; $4e2c: $6e
    ld b, [hl]                                    ; $4e2d: $46
    rlca                                          ; $4e2e: $07
    halt                                          ; $4e2f: $76
    add hl, bc                                    ; $4e30: $09
    xor l                                         ; $4e31: $ad
    stop                                          ; $4e32: $10 $00
    sbc [hl]                                      ; $4e34: $9e
    ld hl, $942b                                  ; $4e35: $21 $2b $94
    or l                                          ; $4e38: $b5
    ld a, [bc]                                    ; $4e39: $0a
    ld [hl-], a                                   ; $4e3a: $32
    ld b, a                                       ; $4e3b: $47
    nop                                           ; $4e3c: $00
    call c, $e802                                 ; $4e3d: $dc $02 $e8
    rla                                           ; $4e40: $17
    cp h                                          ; $4e41: $bc
    ld [bc], a                                    ; $4e42: $02
    add sp, $03                                   ; $4e43: $e8 $03
    nop                                           ; $4e45: $00
    sub $01                                       ; $4e46: $d6 $01
    ld l, a                                       ; $4e48: $6f
    ld bc, $01fe                                  ; $4e49: $01 $fe $01
    inc [hl]                                      ; $4e4c: $34
    adc [hl]                                      ; $4e4d: $8e
    ld d, b                                       ; $4e4e: $50
    ld e, h                                       ; $4e4f: $5c
    ld e, [hl]                                    ; $4e50: $5e
    ld [bc], a                                    ; $4e51: $02
    cp $10                                        ; $4e52: $fe $10
    inc b                                         ; $4e54: $04
    ld d, e                                       ; $4e55: $53
    db $fc                                        ; $4e56: $fc
    ld [hl], $f9                                  ; $4e57: $36 $f9
    nop                                           ; $4e59: $00
    dec b                                         ; $4e5a: $05
    ld a, [c]                                     ; $4e5b: $f2
    nop                                           ; $4e5c: $00
    ld [bc], a                                    ; $4e5d: $02
    inc d                                         ; $4e5e: $14
    db $eb                                        ; $4e5f: $eb
    ld d, b                                       ; $4e60: $50
    rst $38                                       ; $4e61: $ff
    db $10                                        ; $4e62: $10
    xor c                                         ; $4e63: $a9
    rst $10                                       ; $4e64: $d7
    ld a, a                                       ; $4e65: $7f
    ld l, [hl]                                    ; $4e66: $6e
    dec d                                         ; $4e67: $15
    jp c, Jump_0c4_4400                           ; $4e68: $da $00 $44

    cp b                                          ; $4e6b: $b8
    nop                                           ; $4e6c: $00
    sub e                                         ; $4e6d: $93
    ld a, h                                       ; $4e6e: $7c
    cp [hl]                                       ; $4e6f: $be
    rst $38                                       ; $4e70: $ff
    ld a, h                                       ; $4e71: $7c
    rst $38                                       ; $4e72: $ff
    or d                                          ; $4e73: $b2
    ld a, a                                       ; $4e74: $7f
    nop                                           ; $4e75: $00
    ld h, l                                       ; $4e76: $65
    cp [hl]                                       ; $4e77: $be
    jp nc, $e43d                                  ; $4e78: $d2 $3d $e4

    inc de                                        ; $4e7b: $13
    dec b                                         ; $4e7c: $05
    nop                                           ; $4e7d: $00
    nop                                           ; $4e7e: $00
    db $eb                                        ; $4e7f: $eb
    nop                                           ; $4e80: $00
    xor a                                         ; $4e81: $af
    ld d, b                                       ; $4e82: $50
    ld c, d                                       ; $4e83: $4a
    cp a                                          ; $4e84: $bf
    ld l, $df                                     ; $4e85: $2e $df
    nop                                           ; $4e87: $00
    dec d                                         ; $4e88: $15
    rst $28                                       ; $4e89: $ef
    ld a, [hl+]                                   ; $4e8a: $2a
    rst $10                                       ; $4e8b: $d7
    sub d                                         ; $4e8c: $92
    ld l, l                                       ; $4e8d: $6d
    jr c, jr_0c4_4e9c                             ; $4e8e: $38 $0c

    nop                                           ; $4e90: $00
    ld a, b                                       ; $4e91: $78
    rra                                           ; $4e92: $1f
    ld e, h                                       ; $4e93: $5c
    cp a                                          ; $4e94: $bf
    scf                                           ; $4e95: $37
    ld hl, sp-$53                                 ; $4e96: $f8 $ad
    ld a, [c]                                     ; $4e98: $f2
    nop                                           ; $4e99: $00
    ld a, d                                       ; $4e9a: $7a
    db $e4                                        ; $4e9b: $e4

jr_0c4_4e9c:
    xor l                                         ; $4e9c: $ad
    ldh a, [rNR13]                                ; $4e9d: $f0 $13
    ldh [rTIMA], a                                ; $4e9f: $e0 $05
    dec b                                         ; $4ea1: $05
    nop                                           ; $4ea2: $00
    sub l                                         ; $4ea3: $95

jr_0c4_4ea4:
    ld a, a                                       ; $4ea4: $7f
    dec bc                                        ; $4ea5: $0b
    rst $38                                       ; $4ea6: $ff
    ld l, e                                       ; $4ea7: $6b
    inc d                                         ; $4ea8: $14
    pop de                                        ; $4ea9: $d1
    ld c, $00                                     ; $4eaa: $0e $00
    ld [$d505], a                                 ; $4eac: $ea $05 $d5
    ld [bc], a                                    ; $4eaf: $02
    ld l, l                                       ; $4eb0: $6d
    nop                                           ; $4eb1: $00
    jr z, jr_0c4_4ea4                             ; $4eb2: $28 $f0

    nop                                           ; $4eb4: $00
    ld [hl], a                                    ; $4eb5: $77
    ld hl, sp-$15                                 ; $4eb6: $f8 $eb
    db $fc                                        ; $4eb8: $fc
    cp a                                          ; $4eb9: $bf
    ld a, a                                       ; $4eba: $7f
    ld a, d                                       ; $4ebb: $7a
    cp a                                          ; $4ebc: $bf
    nop                                           ; $4ebd: $00
    or h                                          ; $4ebe: $b4

jr_0c4_4ebf:
    ld a, a                                       ; $4ebf: $7f
    ld e, c                                       ; $4ec0: $59
    cp a                                          ; $4ec1: $bf
    ld a, [c]                                     ; $4ec2: $f2
    rla                                           ; $4ec3: $17
    nop                                           ; $4ec4: $00
    ld a, [bc]                                    ; $4ec5: $0a
    nop                                           ; $4ec6: $00
    ld l, d                                       ; $4ec7: $6a
    dec d                                         ; $4ec8: $15
    push af                                       ; $4ec9: $f5
    dec bc                                        ; $4eca: $0b
    xor a                                         ; $4ecb: $af
    rst $38                                       ; $4ecc: $ff
    add b                                         ; $4ecd: $80
    ld a, a                                       ; $4ece: $7f
    jr nz, @+$14                                  ; $4ecf: $20 $12

    db $ed                                        ; $4ed1: $ed
    ld hl, sp+$05                                 ; $4ed2: $f8 $05
    jp c, $38d0                                   ; $4ed4: $da $d0 $38

    cp b                                          ; $4ed7: $b8
    ld a, a                                       ; $4ed8: $7f
    ld b, d                                       ; $4ed9: $42
    ld a, [hl]                                    ; $4eda: $7e
    ld h, d                                       ; $4edb: $62
    rlca                                          ; $4edc: $07
    ld [hl], l                                    ; $4edd: $75
    ld a, [$f4ab]                                 ; $4ede: $fa $ab $f4
    add b                                         ; $4ee1: $80
    ld [$0201], sp                                ; $4ee2: $08 $01 $02
    ld a, [bc]                                    ; $4ee5: $0a
    jr z, jr_0c4_4ebf                             ; $4ee6: $28 $d7

    and c                                         ; $4ee8: $a1
    rst $38                                       ; $4ee9: $ff
    ld d, e                                       ; $4eea: $53
    sub b                                         ; $4eeb: $90
    inc b                                         ; $4eec: $04
    db $ec                                        ; $4eed: $ec
    add b                                         ; $4eee: $80
    ld l, b                                       ; $4eef: $68
    ld b, $db                                     ; $4ef0: $06 $db
    nop                                           ; $4ef2: $00
    db $10                                        ; $4ef3: $10
    ldh [rVBK], a                                 ; $4ef4: $e0 $4f
    ldh a, [$fa]                                  ; $4ef6: $f0 $fa
    add h                                         ; $4ef8: $84
    ld [hl], b                                    ; $4ef9: $70
    dec b                                         ; $4efa: $05
    ld h, h                                       ; $4efb: $64
    rst $38                                       ; $4efc: $ff
    jp z, $907d                                   ; $4efd: $ca $7d $90

    inc c                                         ; $4f00: $0c
    db $10                                        ; $4f01: $10
    dec b                                         ; $4f02: $05
    add $03                                       ; $4f03: $c6 $03

jr_0c4_4f05:
    nop                                           ; $4f05: $00
    ret nc                                        ; $4f06: $d0

    nop                                           ; $4f07: $00
    call nz, $a203                                ; $4f08: $c4 $03 $a2
    inc b                                         ; $4f0b: $04
    ret c                                         ; $4f0c: $d8

    inc b                                         ; $4f0d: $04
    nop                                           ; $4f0e: $00
    db $e4                                        ; $4f0f: $e4
    ld [$08f0], sp                                ; $4f10: $08 $f0 $08
    and h                                         ; $4f13: $a4
    ld [$08f7], sp                                ; $4f14: $08 $f7 $08
    nop                                           ; $4f17: $00
    nop                                           ; $4f18: $00
    nop                                           ; $4f19: $00
    ld b, b                                       ; $4f1a: $40
    add b                                         ; $4f1b: $80
    jr nz, jr_0c4_4f5e                            ; $4f1c: $20 $40

    db $10                                        ; $4f1e: $10
    jr nz, jr_0c4_4f21                            ; $4f1f: $20 $00

jr_0c4_4f21:
    jr nz, jr_0c4_4f33                            ; $4f21: $20 $10

    ld [$8210], sp                                ; $4f23: $08 $10 $82
    inc a                                         ; $4f26: $3c
    dec h                                         ; $4f27: $25
    ld b, d                                       ; $4f28: $42
    nop                                           ; $4f29: $00
    ld [$0f0f], sp                                ; $4f2a: $08 $0f $0f
    rlca                                          ; $4f2d: $07
    inc bc                                        ; $4f2e: $03
    nop                                           ; $4f2f: $00
    dec b                                         ; $4f30: $05
    nop                                           ; $4f31: $00
    nop                                           ; $4f32: $00

jr_0c4_4f33:
    ld [bc], a                                    ; $4f33: $02
    nop                                           ; $4f34: $00

jr_0c4_4f35:
    jr nz, jr_0c4_4f37                            ; $4f35: $20 $00

jr_0c4_4f37:
    ld b, d                                       ; $4f37: $42
    nop                                           ; $4f38: $00

jr_0c4_4f39:
    stop                                          ; $4f39: $10 $00
    nop                                           ; $4f3b: $00
    jr c, jr_0c4_4f35                             ; $4f3c: $38 $f7

    rst $20                                       ; $4f3e: $e7
    ret nz                                        ; $4f3f: $c0

    and b                                         ; $4f40: $a0
    ret nz                                        ; $4f41: $c0

    or b                                          ; $4f42: $b0
    ret nz                                        ; $4f43: $c0

    nop                                           ; $4f44: $00
    adc $71                                       ; $4f45: $ce $71
    ld a, a                                       ; $4f47: $7f
    ccf                                           ; $4f48: $3f
    rra                                           ; $4f49: $1f
    nop                                           ; $4f4a: $00
    add l                                         ; $4f4b: $85
    nop                                           ; $4f4c: $00
    nop                                           ; $4f4d: $00
    ld l, b                                       ; $4f4e: $68
    ret nz                                        ; $4f4f: $c0

    ld [hl], b                                    ; $4f50: $70
    ret nz                                        ; $4f51: $c0

    ld l, b                                       ; $4f52: $68
    jr nz, jr_0c4_4f05                            ; $4f53: $20 $b0

    ld h, b                                       ; $4f55: $60
    nop                                           ; $4f56: $00
    jr nz, jr_0c4_4f39                            ; $4f57: $20 $e0

    add sp, -$40                                  ; $4f59: $e8 $c0
    add b                                         ; $4f5b: $80
    nop                                           ; $4f5c: $00
    ld l, d                                       ; $4f5d: $6a

jr_0c4_4f5e:
    nop                                           ; $4f5e: $00
    adc l                                         ; $4f5f: $8d
    ld bc, $2038                                  ; $4f60: $01 $38 $20
    nop                                           ; $4f63: $00
    ld b, b                                       ; $4f64: $40
    jr nc, jr_0c4_4f67                            ; $4f65: $30 $00

jr_0c4_4f67:
    db $10                                        ; $4f67: $10
    ld c, b                                       ; $4f68: $48
    ld [de], a                                    ; $4f69: $12
    jr nc, jr_0c4_4f6c                            ; $4f6a: $30 $00

jr_0c4_4f6c:
    sub c                                         ; $4f6c: $91
    ld hl, $0838                                  ; $4f6d: $21 $38 $08
    nop                                           ; $4f70: $00
    jr nc, jr_0c4_4fcb                            ; $4f71: $30 $58

    stop                                          ; $4f73: $10 $00
    add d                                         ; $4f75: $82
    ld l, b                                       ; $4f76: $68
    nop                                           ; $4f77: $00
    add b                                         ; $4f78: $80
    ld b, c                                       ; $4f79: $41
    jr jr_0c4_4f83                                ; $4f7a: $18 $07

    nop                                           ; $4f7c: $00
    ld [$2007], sp                                ; $4f7d: $08 $07 $20
    ld [$0044], sp                                ; $4f80: $08 $44 $00

jr_0c4_4f83:
    ld [$1804], sp                                ; $4f83: $08 $04 $18
    ld b, l                                       ; $4f86: $45
    ld [hl+], a                                   ; $4f87: $22
    ld b, d                                       ; $4f88: $42
    ld hl, $0040                                  ; $4f89: $21 $40 $00
    ld hl, $2061                                  ; $4f8c: $21 $61 $20
    ld [hl], b                                    ; $4f8f: $70
    and b                                         ; $4f90: $a0
    ld sp, $2160                                  ; $4f91: $31 $60 $21
    ld a, [bc]                                    ; $4f94: $0a
    jr nc, @+$2d                                  ; $4f95: $30 $2b

    jr nc, jr_0c4_4fb5                            ; $4f97: $30 $1c

    ld h, d                                       ; $4f99: $62
    nop                                           ; $4f9a: $00
    add b                                         ; $4f9b: $80
    inc bc                                        ; $4f9c: $03
    ld [$0180], sp                                ; $4f9d: $08 $80 $01
    ld c, b                                       ; $4fa0: $48
    add b                                         ; $4fa1: $80
    ld b, b                                       ; $4fa2: $40
    add b                                         ; $4fa3: $80
    ld [$1380], a                                 ; $4fa4: $ea $80 $13
    sbc h                                         ; $4fa7: $9c
    nop                                           ; $4fa8: $00
    inc b                                         ; $4fa9: $04
    dec bc                                        ; $4faa: $0b
    nop                                           ; $4fab: $00
    rla                                           ; $4fac: $17
    nop                                           ; $4fad: $00
    inc hl                                        ; $4fae: $23
    inc b                                         ; $4faf: $04
    nop                                           ; $4fb0: $00
    adc a                                         ; $4fb1: $8f
    nop                                           ; $4fb2: $00
    nop                                           ; $4fb3: $00
    dec e                                         ; $4fb4: $1d

jr_0c4_4fb5:
    nop                                           ; $4fb5: $00
    ld a, [c]                                     ; $4fb6: $f2
    inc c                                         ; $4fb7: $0c
    ld sp, hl                                     ; $4fb8: $f9
    ld c, $fc                                     ; $4fb9: $0e $fc
    rlca                                          ; $4fbb: $07
    nop                                           ; $4fbc: $00
    rst $38                                       ; $4fbd: $ff
    inc bc                                        ; $4fbe: $03
    rst $30                                       ; $4fbf: $f7
    ld [$00ff], sp                                ; $4fc0: $08 $ff $00
    push af                                       ; $4fc3: $f5
    ld a, [bc]                                    ; $4fc4: $0a
    nop                                           ; $4fc5: $00
    xor d                                         ; $4fc6: $aa
    ld d, l                                       ; $4fc7: $55
    add d                                         ; $4fc8: $82
    ld b, c                                       ; $4fc9: $41
    ld b, b                                       ; $4fca: $40

jr_0c4_4fcb:
    add c                                         ; $4fcb: $81
    ld b, c                                       ; $4fcc: $41
    add b                                         ; $4fcd: $80
    add b                                         ; $4fce: $80
    ld [bc], a                                    ; $4fcf: $02
    ld [$8069], sp                                ; $4fd0: $08 $69 $80
    or [hl]                                       ; $4fd3: $b6
    pop bc                                        ; $4fd4: $c1
    sbc h                                         ; $4fd5: $9c
    db $e3                                        ; $4fd6: $e3
    and d                                         ; $4fd7: $a2
    nop                                           ; $4fd8: $00
    nop                                           ; $4fd9: $00
    push de                                       ; $4fda: $d5
    nop                                           ; $4fdb: $00
    ld a, d                                       ; $4fdc: $7a
    add b                                         ; $4fdd: $80
    ld e, l                                       ; $4fde: $5d

jr_0c4_4fdf:
    add b                                         ; $4fdf: $80
    ld a, a                                       ; $4fe0: $7f
    nop                                           ; $4fe1: $00
    add b                                         ; $4fe2: $80

jr_0c4_4fe3:
    rst $38                                       ; $4fe3: $ff
    add b                                         ; $4fe4: $80
    ei                                            ; $4fe5: $fb
    add h                                         ; $4fe6: $84
    xor l                                         ; $4fe7: $ad
    jp nc, $002a                                  ; $4fe8: $d2 $2a $00

    nop                                           ; $4feb: $00
    ld d, a                                       ; $4fec: $57
    nop                                           ; $4fed: $00
    ei                                            ; $4fee: $fb
    nop                                           ; $4fef: $00
    ld a, a                                       ; $4ff0: $7f
    nop                                           ; $4ff1: $00
    db $db                                        ; $4ff2: $db
    nop                                           ; $4ff3: $00
    inc h                                         ; $4ff4: $24
    cp a                                          ; $4ff5: $bf
    ld b, b                                       ; $4ff6: $40
    push de                                       ; $4ff7: $d5
    ld a, [hl+]                                   ; $4ff8: $2a
    xor d                                         ; $4ff9: $aa
    ld d, l                                       ; $4ffa: $55
    db $f4                                        ; $4ffb: $f4
    nop                                           ; $4ffc: $00
    nop                                           ; $4ffd: $00
    xor b                                         ; $4ffe: $a8
    nop                                           ; $4fff: $00
    push af                                       ; $5000: $f5
    nop                                           ; $5001: $00
    cp $00                                        ; $5002: $fe $00
    ld a, a                                       ; $5004: $7f
    nop                                           ; $5005: $00
    add b                                         ; $5006: $80

jr_0c4_5007:
    rst $18                                       ; $5007: $df
    jr nz, jr_0c4_5007                            ; $5008: $20 $fd

    ld [bc], a                                    ; $500a: $02
    ld d, a                                       ; $500b: $57
    xor b                                         ; $500c: $a8
    and d                                         ; $500d: $a2
    nop                                           ; $500e: $00

Call_0c4_500f:
    nop                                           ; $500f: $00
    ld d, l                                       ; $5010: $55
    nop                                           ; $5011: $00
    ld a, [$dd00]                                 ; $5012: $fa $00 $dd
    nop                                           ; $5015: $00
    rst $38                                       ; $5016: $ff
    add b                                         ; $5017: $80
    ld [de], a                                    ; $5018: $12
    nop                                           ; $5019: $00
    ei                                            ; $501a: $fb
    inc b                                         ; $501b: $04
    xor l                                         ; $501c: $ad
    ld d, d                                       ; $501d: $52
    ld e, [hl]                                    ; $501e: $5e
    nop                                           ; $501f: $00
    or a                                          ; $5020: $b7
    sub b                                         ; $5021: $90
    ld l, $00                                     ; $5022: $2e $00
    rst $18                                       ; $5024: $df
    nop                                           ; $5025: $00
    ld h, b                                       ; $5026: $60
    jr z, jr_0c4_4fdf                             ; $5027: $28 $b6

    jr jr_0c4_5086                                ; $5029: $18 $5b

    inc c                                         ; $502b: $0c
    nop                                           ; $502c: $00
    ld hl, sp+$0f                                 ; $502d: $f8 $0f
    db $dd                                        ; $502f: $dd
    rlca                                          ; $5030: $07

Jump_0c4_5031:
    cp $03                                        ; $5031: $fe $03
    ld a, a                                       ; $5033: $7f

jr_0c4_5034:
    add d                                         ; $5034: $82
    nop                                           ; $5035: $00
    ei                                            ; $5036: $fb
    ld b, $af                                     ; $5037: $06 $af
    ld d, d                                       ; $5039: $52
    ld l, a                                       ; $503a: $6f
    jr nc, jr_0c4_4fe3                            ; $503b: $30 $a6

    ld a, c                                       ; $503d: $79
    nop                                           ; $503e: $00
    ret nz                                        ; $503f: $c0

    rst $38                                       ; $5040: $ff
    and c                                         ; $5041: $a1
    rra                                           ; $5042: $1f
    rla                                           ; $5043: $17

jr_0c4_5044:
    ld c, $0e                                     ; $5044: $0e $0e
    ld [$0400], sp                                ; $5046: $08 $00 $04
    ld [$080c], sp                                ; $5049: $08 $0c $08
    db $f4                                        ; $504c: $f4
    add b                                         ; $504d: $80
    xor b                                         ; $504e: $a8
    add b                                         ; $504f: $80
    jr nz, @-$09                                  ; $5050: $20 $f5

    add b                                         ; $5052: $80
    ld d, b                                       ; $5053: $50
    ld [$601f], sp                                ; $5054: $08 $1f $60
    ld a, l                                       ; $5057: $7d
    ld [hl+], a                                   ; $5058: $22
    scf                                           ; $5059: $37
    jr z, jr_0c4_50c4                             ; $505a: $28 $68

jr_0c4_505c:
    ld e, a                                       ; $505c: $5f
    ld b, b                                       ; $505d: $40
    db $10                                        ; $505e: $10
    rst $38                                       ; $505f: $ff
    ld b, b                                       ; $5060: $40
    jr nc, jr_0c4_5034                            ; $5061: $30 $d1

    ld l, $22                                     ; $5063: $2e $22
    jr nz, jr_0c4_5044                            ; $5065: $20 $dd

    add b                                         ; $5067: $80
    ld de, $0800                                  ; $5068: $11 $00 $08
    rst $38                                       ; $506b: $ff
    sub l                                         ; $506c: $95
    rst $38                                       ; $506d: $ff
    ld a, [hl]                                    ; $506e: $7e

jr_0c4_506f:
    nop                                           ; $506f: $00
    rst $38                                       ; $5070: $ff
    rst $38                                       ; $5071: $ff
    rst $38                                       ; $5072: $ff
    push bc                                       ; $5073: $c5
    ld a, e                                       ; $5074: $7b
    ld sp, $8eff                                  ; $5075: $31 $ff $8e
    add b                                         ; $5078: $80
    db $10                                        ; $5079: $10
    ld b, b                                       ; $507a: $40
    rra                                           ; $507b: $1f
    ldh [$0a], a                                  ; $507c: $e0 $0a

jr_0c4_507e:
    push af                                       ; $507e: $f5
    ld de, $00ff                                  ; $507f: $11 $ff $00
    ld [bc], a                                    ; $5082: $02
    rst $38                                       ; $5083: $ff
    ld [hl+], a                                   ; $5084: $22
    rst $38                                       ; $5085: $ff

jr_0c4_5086:
    ld b, h                                       ; $5086: $44
    rst $38                                       ; $5087: $ff
    sbc d                                         ; $5088: $9a
    jr nz, jr_0c4_508b                            ; $5089: $20 $00

jr_0c4_508b:
    ld b, b                                       ; $508b: $40
    db $10                                        ; $508c: $10
    cp a                                          ; $508d: $bf
    jr nz, jr_0c4_506f                            ; $508e: $20 $df

    adc l                                         ; $5090: $8d
    nop                                           ; $5091: $00
    rst $38                                       ; $5092: $ff
    ld hl, $52ff                                  ; $5093: $21 $ff $52
    jr nz, @+$01                                  ; $5096: $20 $ff

    jp hl                                         ; $5098: $e9


    jr nc, jr_0c4_509b                            ; $5099: $30 $00

jr_0c4_509b:
    adc d                                         ; $509b: $8a
    ld [hl], l                                    ; $509c: $75
    jr nz, jr_0c4_507e                            ; $509d: $20 $df

    ld [bc], a                                    ; $509f: $02
    ld b, h                                       ; $50a0: $44
    db $fd                                        ; $50a1: $fd
    jr nz, jr_0c4_50ac                            ; $50a2: $20 $08

    ld d, h                                       ; $50a4: $54
    rst $38                                       ; $50a5: $ff
    ld a, [$0830]                                 ; $50a6: $fa $30 $08
    ld [c], a                                     ; $50a9: $e2
    dec bc                                        ; $50aa: $0b
    ld a, [bc]                                    ; $50ab: $0a

jr_0c4_50ac:
    or $12                                        ; $50ac: $f6 $12
    rst $38                                       ; $50ae: $ff
    ld [bc], a                                    ; $50af: $02
    jr nc, jr_0c4_50b2                            ; $50b0: $30 $00

jr_0c4_50b2:
    ld b, [hl]                                    ; $50b2: $46
    jr nc, jr_0c4_50c5                            ; $50b3: $30 $10

    ld [bc], a                                    ; $50b5: $02
    nop                                           ; $50b6: $00
    inc c                                         ; $50b7: $0c
    adc c                                         ; $50b8: $89
    ld c, $88                                     ; $50b9: $0e $88
    rrca                                          ; $50bb: $0f
    sbc a                                         ; $50bc: $9f
    rrca                                          ; $50bd: $0f
    ld sp, hl                                     ; $50be: $f9
    ld [$6a0f], sp                                ; $50bf: $08 $0f $6a
    sbc a                                         ; $50c2: $9f
    add hl, bc                                    ; $50c3: $09

jr_0c4_50c4:
    ld h, b                                       ; $50c4: $60

jr_0c4_50c5:
    nop                                           ; $50c5: $00
    jp z, Jump_0c4_6075                           ; $50c6: $ca $75 $60

    ld [hl-], a                                   ; $50c9: $32
    rst $18                                       ; $50ca: $df
    jp nz, $4030                                  ; $50cb: $c2 $30 $40

    add b                                         ; $50ce: $80
    ld [$7e81], sp                                ; $50cf: $08 $81 $7e
    add b                                         ; $50d2: $80
    jr c, jr_0c4_505c                             ; $50d3: $38 $87

    nop                                           ; $50d5: $00
    ld hl, sp-$13                                 ; $50d6: $f8 $ed
    ld a, [c]                                     ; $50d8: $f2
    rla                                           ; $50d9: $17
    ldh [$da], a                                  ; $50da: $e0 $da
    dec b                                         ; $50dc: $05
    or a                                          ; $50dd: $b7
    nop                                           ; $50de: $00
    ld c, b                                       ; $50df: $48
    ld a, [hl]                                    ; $50e0: $7e
    add c                                         ; $50e1: $81
    rst $18                                       ; $50e2: $df
    jr nz, jr_0c4_5156                            ; $50e3: $20 $71

    add b                                         ; $50e5: $80
    ld l, a                                       ; $50e6: $6f
    nop                                           ; $50e7: $00
    add b                                         ; $50e8: $80
    db $fd                                        ; $50e9: $fd

jr_0c4_50ea:
    ld [bc], a                                    ; $50ea: $02
    xor [hl]                                      ; $50eb: $ae
    ld de, $04fb                                  ; $50ec: $11 $fb $04
    db $dd                                        ; $50ef: $dd
    nop                                           ; $50f0: $00
    jr nz, jr_0c4_50ea                            ; $50f1: $20 $f7

    nop                                           ; $50f3: $00
    or a                                          ; $50f4: $b7
    ld [$20df], sp                                ; $50f5: $08 $df $20
    adc e                                         ; $50f8: $8b
    nop                                           ; $50f9: $00
    ld [hl], h                                    ; $50fa: $74
    ret nz                                        ; $50fb: $c0

    ld a, a                                       ; $50fc: $7f
    or l                                          ; $50fd: $b5
    ld a, a                                       ; $50fe: $7f
    ld e, [hl]                                    ; $50ff: $5e
    cp a                                          ; $5100: $bf
    ei                                            ; $5101: $fb
    nop                                           ; $5102: $00
    rlca                                          ; $5103: $07
    ld l, a                                       ; $5104: $6f
    sub b                                         ; $5105: $90
    rst $30                                       ; $5106: $f7
    ld [$01fe], sp                                ; $5107: $08 $fe $01
    rst $28                                       ; $510a: $ef
    nop                                           ; $510b: $00
    db $10                                        ; $510c: $10
    ld d, a                                       ; $510d: $57
    xor b                                         ; $510e: $a8
    ld c, $f9                                     ; $510f: $0e $f9
    or [hl]                                       ; $5111: $b6
    ld sp, hl                                     ; $5112: $f9
    rst $08                                       ; $5113: $cf
    nop                                           ; $5114: $00
    ldh a, [$5d]                                  ; $5115: $f0 $5d
    and d                                         ; $5117: $a2
    xor a                                         ; $5118: $af
    ld d, b                                       ; $5119: $50
    rst $30                                       ; $511a: $f7
    ld [$8087], sp                                ; $511b: $08 $87 $80
    and b                                         ; $511e: $a0
    ld de, $8054                                  ; $511f: $11 $54 $80
    ld l, a                                       ; $5122: $6f
    ldh a, [$ee]                                  ; $5123: $f0 $ee
    rra                                           ; $5125: $1f
    rst $18                                       ; $5126: $df
    ld de, $eb20                                  ; $5127: $11 $20 $eb
    db $10                                        ; $512a: $10
    cp e                                          ; $512b: $bb
    nop                                           ; $512c: $00
    nop                                           ; $512d: $00
    ld e, a                                       ; $512e: $5f
    jr nz, jr_0c4_516f                            ; $512f: $20 $3e

    add hl, de                                    ; $5131: $19
    nop                                           ; $5132: $00
    cp a                                          ; $5133: $bf
    ld b, b                                       ; $5134: $40
    ld l, a                                       ; $5135: $6f
    sub b                                         ; $5136: $90
    ld l, [hl]                                    ; $5137: $6e
    sub b                                         ; $5138: $90
    db $fd                                        ; $5139: $fd
    ld [bc], a                                    ; $513a: $02
    ld [$03fd], sp                                ; $513b: $08 $fd $03
    cp $01                                        ; $513e: $fe $01
    jr jr_0c4_514a                                ; $5140: $18 $08

    cp e                                          ; $5142: $bb
    ld b, h                                       ; $5143: $44
    rst $38                                       ; $5144: $ff
    nop                                           ; $5145: $00
    nop                                           ; $5146: $00
    ld c, $07                                     ; $5147: $0e $07
    dec bc                                        ; $5149: $0b

jr_0c4_514a:
    rlca                                          ; $514a: $07
    ld l, [hl]                                    ; $514b: $6e
    sub c                                         ; $514c: $91
    db $ed                                        ; $514d: $ed
    ld h, b                                       ; $514e: $60
    ld a, [c]                                     ; $514f: $f2
    xor [hl]                                      ; $5150: $ae
    ld bc, $01b2                                  ; $5151: $01 $b2 $01
    ld a, a                                       ; $5154: $7f
    add b                                         ; $5155: $80

jr_0c4_5156:
    add sp, $10                                   ; $5156: $e8 $10
    push hl                                       ; $5158: $e5
    nop                                           ; $5159: $00
    jr @-$08                                      ; $515a: $18 $f6

jr_0c4_515c:
    rrca                                          ; $515c: $0f
    adc a                                         ; $515d: $8f
    ld [hl], b                                    ; $515e: $70
    jr nc, @-$2f                                  ; $515f: $30 $cf

    ld a, a                                       ; $5161: $7f
    nop                                           ; $5162: $00
    add b                                         ; $5163: $80
    dec b                                         ; $5164: $05
    ld a, [$ffa0]                                 ; $5165: $fa $a0 $ff
    rst $38                                       ; $5168: $ff
    nop                                           ; $5169: $00
    pop hl                                        ; $516a: $e1
    nop                                           ; $516b: $00
    nop                                           ; $516c: $00
    ret nz                                        ; $516d: $c0

    nop                                           ; $516e: $00

jr_0c4_516f:
    and b                                         ; $516f: $a0
    ld b, b                                       ; $5170: $40
    cp d                                          ; $5171: $ba
    ld h, c                                       ; $5172: $61
    ld e, l                                       ; $5173: $5d
    ld [bc], a                                    ; $5174: $02
    cp [hl]                                       ; $5175: $be
    ccf                                           ; $5176: $3f
    ret nz                                        ; $5177: $c0

    cpl                                           ; $5178: $2f
    ret nc                                        ; $5179: $d0

jr_0c4_517a:
    ei                                            ; $517a: $fb
    inc a                                         ; $517b: $3c
    ld hl, $00ff                                  ; $517c: $21 $ff $00
    nop                                           ; $517f: $00
    rst $18                                       ; $5180: $df
    jr nz, jr_0c4_517a                            ; $5181: $20 $f7

    ld [$847b], sp                                ; $5183: $08 $7b $84
    ld a, a                                       ; $5186: $7f
    ld [hl], b                                    ; $5187: $70
    add b                                         ; $5188: $80
    ld c, h                                       ; $5189: $4c
    jr jr_0c4_515c                                ; $518a: $18 $d0

    ld bc, $01a4                                  ; $518c: $01 $a4 $01
    rst $28                                       ; $518f: $ef
    db $10                                        ; $5190: $10
    ei                                            ; $5191: $fb
    inc b                                         ; $5192: $04
    ld bc, $09f6                                  ; $5193: $01 $f6 $09
    rst $38                                       ; $5196: $ff
    nop                                           ; $5197: $00
    ld a, [$ef04]                                 ; $5198: $fa $04 $ef
    ld a, d                                       ; $519b: $7a
    nop                                           ; $519c: $00
    add d                                         ; $519d: $82
    inc d                                         ; $519e: $14
    ld [$40bf], sp                                ; $519f: $08 $bf $40
    db $eb                                        ; $51a2: $eb
    inc d                                         ; $51a3: $14
    rst $30                                       ; $51a4: $f7
    cp b                                          ; $51a5: $b8

jr_0c4_51a6:
    nop                                           ; $51a6: $00
    db $ed                                        ; $51a7: $ed
    nop                                           ; $51a8: $00
    ld [bc], a                                    ; $51a9: $02
    ld e, a                                       ; $51aa: $5f
    and b                                         ; $51ab: $a0
    or $00                                        ; $51ac: $f6 $00
    db $dd                                        ; $51ae: $dd
    ld [hl+], a                                   ; $51af: $22
    add c                                         ; $51b0: $81
    ld [bc], a                                    ; $51b1: $02
    ld a, [hl]                                    ; $51b2: $7e
    ld e, $e1                                     ; $51b3: $1e $e1
    and [hl]                                      ; $51b5: $a6
    ld sp, hl                                     ; $51b6: $f9
    call nc, $016c                                ; $51b7: $d4 $6c $01
    push af                                       ; $51ba: $f5
    inc b                                         ; $51bb: $04
    ld a, [bc]                                    ; $51bc: $0a
    rra                                           ; $51bd: $1f
    nop                                           ; $51be: $00
    ld c, $01                                     ; $51bf: $0e $01
    sub h                                         ; $51c1: $94
    ld [$827d], sp                                ; $51c2: $08 $7d $82
    ld b, b                                       ; $51c5: $40
    ld a, a                                       ; $51c6: $7f
    and $00                                       ; $51c7: $e6 $00
    sbc $21                                       ; $51c9: $de $21
    ei                                            ; $51cb: $fb
    dec b                                         ; $51cc: $05
    db $fd                                        ; $51cd: $fd
    inc bc                                        ; $51ce: $03
    nop                                           ; $51cf: $00
    pop de                                        ; $51d0: $d1
    rst $38                                       ; $51d1: $ff
    ld a, $ff                                     ; $51d2: $3e $ff
    xor l                                         ; $51d4: $ad
    ld d, d                                       ; $51d5: $52
    ei                                            ; $51d6: $fb
    inc b                                         ; $51d7: $04
    jr nz, @-$20                                  ; $51d8: $20 $de

    ld hl, $08ba                                  ; $51da: $21 $ba $08
    rst $38                                       ; $51dd: $ff
    nop                                           ; $51de: $00
    push de                                       ; $51df: $d5
    xor b                                         ; $51e0: $a8
    xor [hl]                                      ; $51e1: $ae
    add hl, bc                                    ; $51e2: $09
    ld b, c                                       ; $51e3: $41
    ld e, c                                       ; $51e4: $59
    and d                                         ; $51e5: $a2
    ld e, a                                       ; $51e6: $5f
    ld d, d                                       ; $51e7: $52
    nop                                           ; $51e8: $00
    ld l, a                                       ; $51e9: $6f
    sub b                                         ; $51ea: $90
    ld [de], a                                    ; $51eb: $12
    jr jr_0c4_51ee                                ; $51ec: $18 $00

jr_0c4_51ee:
    rst $18                                       ; $51ee: $df
    jr nz, jr_0c4_5267                            ; $51ef: $20 $76

    ld [$52ad], sp                                ; $51f1: $08 $ad $52
    rst $10                                       ; $51f4: $d7
    nop                                           ; $51f5: $00
    jr nz, jr_0c4_51a6                            ; $51f6: $20 $ae

    ld d, c                                       ; $51f8: $51
    inc d                                         ; $51f9: $14
    ld a, [bc]                                    ; $51fa: $0a
    db $fc                                        ; $51fb: $fc
    inc bc                                        ; $51fc: $03
    ld [hl], c                                    ; $51fd: $71
    adc [hl]                                      ; $51fe: $8e
    or b                                          ; $51ff: $b0
    nop                                           ; $5200: $00
    ld e, a                                       ; $5201: $5f
    ld a, [$6d1f]                                 ; $5202: $fa $1f $6d
    sbc a                                         ; $5205: $9f
    db $d3                                        ; $5206: $d3
    cpl                                           ; $5207: $2f
    add d                                         ; $5208: $82
    nop                                           ; $5209: $00
    ld bc, $8043                                  ; $520a: $01 $43 $80
    rrca                                          ; $520d: $0f
    ldh a, [$f0]                                  ; $520e: $f0 $f0
    rrca                                          ; $5210: $0f
    ld e, $00                                     ; $5211: $1e $00
    pop hl                                        ; $5213: $e1
    ld c, $f1                                     ; $5214: $0e $f1
    ld d, e                                       ; $5216: $53
    rst $38                                       ; $5217: $ff
    db $fd                                        ; $5218: $fd
    cp $16                                        ; $5219: $fe $16
    ld b, b                                       ; $521b: $40
    jp hl                                         ; $521c: $e9


    db $ec                                        ; $521d: $ec
    ld [$09f6], sp                                ; $521e: $08 $f6 $09
    ld l, e                                       ; $5221: $6b
    sub h                                         ; $5222: $94
    cp $81                                        ; $5223: $fe $81
    nop                                           ; $5225: $00
    ld d, l                                       ; $5226: $55
    and d                                         ; $5227: $a2
    ld d, a                                       ; $5228: $57
    ld [$51aa], sp                                ; $5229: $08 $aa $51
    ld a, a                                       ; $522c: $7f
    add b                                         ; $522d: $80
    nop                                           ; $522e: $00
    ld [hl], a                                    ; $522f: $77
    adc b                                         ; $5230: $88
    xor $f1                                       ; $5231: $ee $f1
    cp a                                          ; $5233: $bf
    ld b, b                                       ; $5234: $40
    rst $10                                       ; $5235: $d7
    ld [$fd00], sp                                ; $5236: $08 $00 $fd
    ld [bc], a                                    ; $5239: $02
    cp [hl]                                       ; $523a: $be
    ld b, c                                       ; $523b: $41
    xor e                                         ; $523c: $ab
    inc b                                         ; $523d: $04
    rst $18                                       ; $523e: $df
    jr nz, jr_0c4_5241                            ; $523f: $20 $00

jr_0c4_5241:
    add sp, $17                                   ; $5241: $e8 $17
    db $fd                                        ; $5243: $fd
    ld [bc], a                                    ; $5244: $02
    cp $01                                        ; $5245: $fe $01
    ei                                            ; $5247: $fb
    inc b                                         ; $5248: $04
    jr nz, @+$01                                  ; $5249: $20 $ff

    nop                                           ; $524b: $00
    ld c, h                                       ; $524c: $4c
    add hl, bc                                    ; $524d: $09
    ld e, a                                       ; $524e: $5f
    add b                                         ; $524f: $80
    cp a                                          ; $5250: $bf
    ld b, b                                       ; $5251: $40
    rst $38                                       ; $5252: $ff
    stop                                          ; $5253: $10 $00
    ld [hl], a                                    ; $5255: $77
    adc b                                         ; $5256: $88
    jp z, $bc08                                   ; $5257: $ca $08 $bc

    ld b, e                                       ; $525a: $43
    ld l, c                                       ; $525b: $69
    ld b, $24                                     ; $525c: $06 $24
    cp h                                          ; $525e: $bc
    ld b, a                                       ; $525f: $47
    ret z                                         ; $5260: $c8

    ld a, [bc]                                    ; $5261: $0a
    db $fd                                        ; $5262: $fd
    ld [bc], a                                    ; $5263: $02
    ld b, [hl]                                    ; $5264: $46
    add hl, bc                                    ; $5265: $09
    dec de                                        ; $5266: $1b

jr_0c4_5267:
    db $e4                                        ; $5267: $e4
    ld [$11ee], sp                                ; $5268: $08 $ee $11
    dec [hl]                                      ; $526b: $35
    jp z, $0950                                   ; $526c: $ca $50 $09

    db $fd                                        ; $526f: $fd
    ld [bc], a                                    ; $5270: $02
    db $db                                        ; $5271: $db
    sub b                                         ; $5272: $90
    ld d, d                                       ; $5273: $52
    ld bc, $25da                                  ; $5274: $01 $da $25
    rst $30                                       ; $5277: $f7
    ld bc, $5500                                  ; $5278: $01 $00 $55
    ld [c], a                                     ; $527b: $e2
    cp l                                          ; $527c: $bd
    ld bc, $f77e                                  ; $527d: $01 $7e $f7
    ld [$50af], sp                                ; $5280: $08 $af $50
    ld a, l                                       ; $5283: $7d
    ld [bc], a                                    ; $5284: $02
    db $10                                        ; $5285: $10
    ld bc, $0022                                  ; $5286: $01 $22 $00
    ei                                            ; $5289: $fb
    ld hl, sp+$00                                 ; $528a: $f8 $00
    cp [hl]                                       ; $528c: $be

jr_0c4_528d:
    ld b, c                                       ; $528d: $41
    rst $10                                       ; $528e: $d7
    db $fc                                        ; $528f: $fc
    ld [bc], a                                    ; $5290: $02

jr_0c4_5291:
    db $eb                                        ; $5291: $eb
    inc bc                                        ; $5292: $03
    inc b                                         ; $5293: $04
    ld e, a                                       ; $5294: $5f
    jr nz, jr_0c4_5291                            ; $5295: $20 $fa

    inc b                                         ; $5297: $04
    rst $30                                       ; $5298: $f7
    cp b                                          ; $5299: $b8
    ld [bc], a                                    ; $529a: $02
    ld e, h                                       ; $529b: $5c
    ld [$1ec0], sp                                ; $529c: $08 $c0 $1e
    add hl, de                                    ; $529f: $19
    ld c, $09                                     ; $52a0: $0e $09
    cp $00                                        ; $52a2: $fe $00
    or a                                          ; $52a4: $b7
    ld c, b                                       ; $52a5: $48
    cp $01                                        ; $52a6: $fe $01
    ld h, l                                       ; $52a8: $65
    db $ed                                        ; $52a9: $ed
    sbc b                                         ; $52aa: $98
    ld de, $0986                                  ; $52ab: $11 $86 $09
    rst $30                                       ; $52ae: $f7
    ld [$084c], sp                                ; $52af: $08 $4c $08
    ld [$019c], a                                 ; $52b2: $ea $9c $01
    nop                                           ; $52b5: $00
    db $eb                                        ; $52b6: $eb
    inc d                                         ; $52b7: $14
    rst $18                                       ; $52b8: $df
    nop                                           ; $52b9: $00
    cp l                                          ; $52ba: $bd
    ld b, d                                       ; $52bb: $42
    db $eb                                        ; $52bc: $eb

jr_0c4_52bd:
    rla                                           ; $52bd: $17
    db $10                                        ; $52be: $10
    rst $38                                       ; $52bf: $ff
    nop                                           ; $52c0: $00
    db $e3                                        ; $52c1: $e3
    ld [hl], d                                    ; $52c2: $72
    ld bc, $20d4                                  ; $52c3: $01 $d4 $20
    and a                                         ; $52c6: $a7
    ld a, b                                       ; $52c7: $78
    nop                                           ; $52c8: $00
    rst $18                                       ; $52c9: $df
    ccf                                           ; $52ca: $3f
    and c                                         ; $52cb: $a1
    ld e, [hl]                                    ; $52cc: $5e
    adc a                                         ; $52cd: $8f
    ld hl, sp+$76                                 ; $52ce: $f8 $76
    ld hl, sp-$80                                 ; $52d0: $f8 $80
    call nz, Call_000_3709                        ; $52d2: $c4 $09 $37
    ld b, b                                       ; $52d5: $40
    ld e, a                                       ; $52d6: $5f
    ldh [$bf], a                                  ; $52d7: $e0 $bf
    ret nz                                        ; $52d9: $c0

    rst $18                                       ; $52da: $df
    dec bc                                        ; $52db: $0b
    jr nz, jr_0c4_528d                            ; $52dc: $20 $af

    ld d, b                                       ; $52de: $50
    ei                                            ; $52df: $fb
    sub b                                         ; $52e0: $90
    nop                                           ; $52e1: $00
    ld e, a                                       ; $52e2: $5f
    ld l, [hl]                                    ; $52e3: $6e
    ld de, $08b6                                  ; $52e4: $11 $b6 $08
    add b                                         ; $52e7: $80
    ld d, $29                                     ; $52e8: $16 $29
    db $db                                        ; $52ea: $db
    inc h                                         ; $52eb: $24
    rst $38                                       ; $52ec: $ff
    nop                                           ; $52ed: $00
    db $dd                                        ; $52ee: $dd
    ld [bc], a                                    ; $52ef: $02
    ld [hl], a                                    ; $52f0: $77

jr_0c4_52f1:
    ret nz                                        ; $52f1: $c0

    xor [hl]                                      ; $52f2: $ae
    ld [$031c], sp                                ; $52f3: $08 $1c $03
    cp $01                                        ; $52f6: $fe $01
    db $eb                                        ; $52f8: $eb

jr_0c4_52f9:
    inc b                                         ; $52f9: $04
    cp [hl]                                       ; $52fa: $be
    ld b, b                                       ; $52fb: $40
    ld [$10ef], sp                                ; $52fc: $08 $ef $10
    or l                                          ; $52ff: $b5
    ld [bc], a                                    ; $5300: $02
    sbc b                                         ; $5301: $98
    add hl, bc                                    ; $5302: $09
    ldh [rP1], a                                  ; $5303: $e0 $00
    ret nc                                        ; $5305: $d0

    nop                                           ; $5306: $00
    jr nz, jr_0c4_52f1                            ; $5307: $20 $e8

    jr nc, jr_0c4_52f9                            ; $5309: $30 $ee

    rra                                           ; $530b: $1f
    rst $38                                       ; $530c: $ff
    nop                                           ; $530d: $00
    ld e, [hl]                                    ; $530e: $5e
    and b                                         ; $530f: $a0
    adc b                                         ; $5310: $88
    jr nz, jr_0c4_5392                            ; $5311: $20 $7f

jr_0c4_5313:
    sbc b                                         ; $5313: $98
    ld bc, $807f                                  ; $5314: $01 $7f $80
    rlca                                          ; $5317: $07
    nop                                           ; $5318: $00
    add e                                         ; $5319: $83
    or b                                          ; $531a: $b0
    ld h, h                                       ; $531b: $64
    ld de, $e1ee                                  ; $531c: $11 $ee $e1
    ld a, [bc]                                    ; $531f: $0a
    sub b                                         ; $5320: $90
    db $10                                        ; $5321: $10
    rst $18                                       ; $5322: $df
    jr nz, jr_0c4_5313                            ; $5323: $20 $ee

    ld de, $fd20                                  ; $5325: $11 $20 $fd
    ld [bc], a                                    ; $5328: $02
    ld e, b                                       ; $5329: $58
    ld a, [bc]                                    ; $532a: $0a
    dec e                                         ; $532b: $1d
    ld [c], a                                     ; $532c: $e2
    swap h                                        ; $532d: $cb $34
    push af                                       ; $532f: $f5
    jr @+$0c                                      ; $5330: $18 $0a

    rla                                           ; $5332: $17
    add sp, $10                                   ; $5333: $e8 $10
    add hl, bc                                    ; $5335: $09
    adc [hl]                                      ; $5336: $8e
    add hl, bc                                    ; $5337: $09
    push af                                       ; $5338: $f5
    ld a, [bc]                                    ; $5339: $0a
    ld e, a                                       ; $533a: $5f
    jr nz, jr_0c4_52bd                            ; $533b: $20 $80

    ld l, l                                       ; $533d: $6d
    sbc $01                                       ; $533e: $de $01

jr_0c4_5340:
    ld [hl], l                                    ; $5340: $75
    add d                                         ; $5341: $82
    rst $18                                       ; $5342: $df
    jr nz, jr_0c4_5340                            ; $5343: $20 $fb

    nop                                           ; $5345: $00
    inc b                                         ; $5346: $04
    rst $10                                       ; $5347: $d7
    ld [$14eb], sp                                ; $5348: $08 $eb $14
    ld a, a                                       ; $534b: $7f
    add b                                         ; $534c: $80
    and b                                         ; $534d: $a0
    nop                                           ; $534e: $00
    ld e, a                                       ; $534f: $5f
    ld e, a                                       ; $5350: $5f
    and b                                         ; $5351: $a0
    cp $01                                        ; $5352: $fe $01
    or a                                          ; $5354: $b7
    ld c, b                                       ; $5355: $48
    ld a, a                                       ; $5356: $7f
    nop                                           ; $5357: $00
    add b                                         ; $5358: $80
    sbc $20                                       ; $5359: $de $20
    ld a, l                                       ; $535b: $7d
    add d                                         ; $535c: $82
    push af                                       ; $535d: $f5
    dec bc                                        ; $535e: $0b
    ld a, [hl]                                    ; $535f: $7e
    ld [$9f81], sp                                ; $5360: $08 $81 $9f
    ld h, b                                       ; $5363: $60
    xor $aa                                       ; $5364: $ee $aa
    inc bc                                        ; $5366: $03
    dec a                                         ; $5367: $3d
    ld [bc], a                                    ; $5368: $02
    rlca                                          ; $5369: $07
    nop                                           ; $536a: $00
    nop                                           ; $536b: $00
    ld b, e                                       ; $536c: $43
    nop                                           ; $536d: $00
    ld l, l                                       ; $536e: $6d
    add d                                         ; $536f: $82
    ei                                            ; $5370: $fb
    db $fc                                        ; $5371: $fc
    rst $38                                       ; $5372: $ff
    nop                                           ; $5373: $00
    nop                                           ; $5374: $00
    or $09                                        ; $5375: $f6 $09
    rst $18                                       ; $5377: $df
    ld bc, $44bb                                  ; $5378: $01 $bb $44
    db $fd                                        ; $537b: $fd
    db $10                                        ; $537c: $10
    ld [bc], a                                    ; $537d: $02
    halt                                          ; $537e: $76
    adc c                                         ; $537f: $89
    ld [de], a                                    ; $5380: $12
    ld a, [bc]                                    ; $5381: $0a
    rst $38                                       ; $5382: $ff
    nop                                           ; $5383: $00
    ld d, a                                       ; $5384: $57
    add b                                         ; $5385: $80
    jr nz, jr_0c4_53a3                            ; $5386: $20 $1b

    db $e4                                        ; $5388: $e4
    jp nc, $bd08                                  ; $5389: $d2 $08 $bd

    ld b, d                                       ; $538c: $42
    push de                                       ; $538d: $d5
    ld [$605f], sp                                ; $538e: $08 $5f $60
    and b                                         ; $5391: $a0

jr_0c4_5392:
    ld a, b                                       ; $5392: $78
    add hl, bc                                    ; $5393: $09
    db $ec                                        ; $5394: $ec
    ld bc, $d701                                  ; $5395: $01 $01 $d7
    jr nz, jr_0c4_5406                            ; $5398: $20 $6c

    inc de                                        ; $539a: $13
    nop                                           ; $539b: $00
    ld a, e                                       ; $539c: $7b
    add h                                         ; $539d: $84
    ld hl, sp+$07                                 ; $539e: $f8 $07
    inc e                                         ; $53a0: $1c
    rlca                                          ; $53a1: $07
    and b                                         ; $53a2: $a0

jr_0c4_53a3:
    dec b                                         ; $53a3: $05
    ld c, $03                                     ; $53a4: $0e $03
    inc de                                        ; $53a6: $13
    ld a, a                                       ; $53a7: $7f
    nop                                           ; $53a8: $00

jr_0c4_53a9:
    rst $38                                       ; $53a9: $ff
    ld [bc], a                                    ; $53aa: $02
    db $10                                        ; $53ab: $10
    rst $28                                       ; $53ac: $ef
    db $10                                        ; $53ad: $10
    ld [$0e18], sp                                ; $53ae: $08 $18 $0e
    jr jr_0c4_53b3                                ; $53b1: $18 $00

jr_0c4_53b3:
    rst $18                                       ; $53b3: $df
    jr nz, @-$02                                  ; $53b4: $20 $fc

    nop                                           ; $53b6: $00
    db $fc                                        ; $53b7: $fc
    ld bc, $00fd                                  ; $53b8: $01 $fd $00
    ld l, b                                       ; $53bb: $68
    db $fd                                        ; $53bc: $fd
    inc d                                         ; $53bd: $14
    jr nc, jr_0c4_53c1                            ; $53be: $30 $01

    nop                                           ; $53c0: $00

jr_0c4_53c1:
    rst $38                                       ; $53c1: $ff
    ld a, [hl+]                                   ; $53c2: $2a
    nop                                           ; $53c3: $00
    rst $38                                       ; $53c4: $ff
    ret nz                                        ; $53c5: $c0

    cp a                                          ; $53c6: $bf
    or l                                          ; $53c7: $b5
    ld [bc], a                                    ; $53c8: $02
    ld [$0880], sp                                ; $53c9: $08 $80 $08
    nop                                           ; $53cc: $00
    inc b                                         ; $53cd: $04
    jr jr_0c4_53d1                                ; $53ce: $18 $01

    ld [bc], a                                    ; $53d0: $02

jr_0c4_53d1:
    db $10                                        ; $53d1: $10
    dec b                                         ; $53d2: $05
    ld [$1200], sp                                ; $53d3: $08 $00 $12
    dec bc                                        ; $53d6: $0b
    rst $38                                       ; $53d7: $ff
    ld b, c                                       ; $53d8: $41
    inc b                                         ; $53d9: $04
    nop                                           ; $53da: $00
    rst $18                                       ; $53db: $df
    jr nz, jr_0c4_542e                            ; $53dc: $20 $50

    jr @+$3d                                      ; $53de: $18 $3b

    ld [bc], a                                    ; $53e0: $02
    inc b                                         ; $53e1: $04
    ccf                                           ; $53e2: $3f
    add b                                         ; $53e3: $80
    cp a                                          ; $53e4: $bf
    nop                                           ; $53e5: $00
    cp a                                          ; $53e6: $bf
    ld e, [hl]                                    ; $53e7: $5e
    db $10                                        ; $53e8: $10
    ei                                            ; $53e9: $fb
    ld b, c                                       ; $53ea: $41
    inc b                                         ; $53eb: $04
    ld e, h                                       ; $53ec: $5c

jr_0c4_53ed:
    jr z, jr_0c4_546e                             ; $53ed: $28 $7f

    nop                                           ; $53ef: $00
    ld a, [hl+]                                   ; $53f0: $2a
    ccf                                           ; $53f1: $3f
    ld a, a                                       ; $53f2: $7f
    ld bc, $4600                                  ; $53f3: $01 $00 $46
    rst $38                                       ; $53f6: $ff
    ld bc, $7f20                                  ; $53f7: $01 $20 $7f
    ld a, a                                       ; $53fa: $7f
    xor d                                         ; $53fb: $aa
    dec bc                                        ; $53fc: $0b
    jr z, @+$15                                   ; $53fd: $28 $13

    jr nz, jr_0c4_53a9                            ; $53ff: $20 $a8

    ld [hl+], a                                   ; $5401: $22
    rst $38                                       ; $5402: $ff
    db $fd                                        ; $5403: $fd
    ld [de], a                                    ; $5404: $12
    ld d, b                                       ; $5405: $50

jr_0c4_5406:
    nop                                           ; $5406: $00
    rst $38                                       ; $5407: $ff
    ld d, l                                       ; $5408: $55
    ld [hl+], a                                   ; $5409: $22
    ld d, b                                       ; $540a: $50
    ld l, a                                       ; $540b: $6f
    nop                                           ; $540c: $00
    ret nc                                        ; $540d: $d0

    ld a, [hl]                                    ; $540e: $7e
    pop bc                                        ; $540f: $c1
    db $fd                                        ; $5410: $fd
    jp nz, $c5fa                                  ; $5411: $c2 $fa $c5

    push af                                       ; $5414: $f5
    nop                                           ; $5415: $00
    jp z, $d7e8                                   ; $5416: $ca $e8 $d7

    db $f4                                        ; $5419: $f4
    set 5, b                                      ; $541a: $cb $e8
    rst $10                                       ; $541c: $d7
    ld d, h                                       ; $541d: $54
    ld [bc], a                                    ; $541e: $02
    xor e                                         ; $541f: $ab

Jump_0c4_5420:
    and b                                         ; $5420: $a0
    ld e, a                                       ; $5421: $5f
    ld [$80f7], sp                                ; $5422: $08 $f7 $80
    rst $00                                       ; $5425: $c7
    nop                                           ; $5426: $00
    ld b, b                                       ; $5427: $40
    ld [hl+], a                                   ; $5428: $22
    cp a                                          ; $5429: $bf
    ld bc, $00cb                                  ; $542a: $01 $cb $00
    dec b                                         ; $542d: $05

jr_0c4_542e:
    rst $38                                       ; $542e: $ff
    ld [bc], a                                    ; $542f: $02
    adc [hl]                                      ; $5430: $8e
    nop                                           ; $5431: $00
    dec hl                                        ; $5432: $2b
    nop                                           ; $5433: $00
    rst $38                                       ; $5434: $ff
    ld d, a                                       ; $5435: $57
    rst $38                                       ; $5436: $ff
    cpl                                           ; $5437: $2f
    rst $38                                       ; $5438: $ff
    ld e, a                                       ; $5439: $5f
    rst $38                                       ; $543a: $ff
    cp [hl]                                       ; $543b: $be
    nop                                           ; $543c: $00
    rst $38                                       ; $543d: $ff
    ld a, d                                       ; $543e: $7a
    db $fd                                        ; $543f: $fd
    ei                                            ; $5440: $fb
    db $fd                                        ; $5441: $fd
    ldh a, [rIE]                                  ; $5442: $f0 $ff
    db $eb                                        ; $5444: $eb
    nop                                           ; $5445: $00
    db $fd                                        ; $5446: $fd
    ret nc                                        ; $5447: $d0

    rst $38                                       ; $5448: $ff
    xor e                                         ; $5449: $ab
    db $fd                                        ; $544a: $fd
    ld b, c                                       ; $544b: $41
    rst $38                                       ; $544c: $ff
    ld hl, $ff0c                                  ; $544d: $21 $0c $ff
    add b                                         ; $5450: $80
    rst $38                                       ; $5451: $ff
    push de                                       ; $5452: $d5
    ld a, h                                       ; $5453: $7c
    jr z, jr_0c4_545a                             ; $5454: $28 $04

    stop                                          ; $5456: $10 $00
    rst $38                                       ; $5458: $ff
    ld l, e                                       ; $5459: $6b

jr_0c4_545a:
    ld d, h                                       ; $545a: $54
    add d                                         ; $545b: $82
    ld e, b                                       ; $545c: $58
    xor [hl]                                      ; $545d: $ae
    ld b, b                                       ; $545e: $40
    rst $30                                       ; $545f: $f7
    inc e                                         ; $5460: $1c
    ld bc, $04ed                                  ; $5461: $01 $ed $04
    ld bc, $4802                                  ; $5464: $01 $02 $48
    ret nc                                        ; $5467: $d0

    jr c, jr_0c4_5492                             ; $5468: $38 $28

    ld b, b                                       ; $546a: $40
    jr z, jr_0c4_53ed                             ; $546b: $28 $80

    ld [bc], a                                    ; $546d: $02

jr_0c4_546e:
    db $10                                        ; $546e: $10
    adc b                                         ; $546f: $88
    rst $38                                       ; $5470: $ff
    add l                                         ; $5471: $85
    rst $38                                       ; $5472: $ff
    ld de, $ffc2                                  ; $5473: $11 $c2 $ff
    push hl                                       ; $5476: $e5
    inc b                                         ; $5477: $04
    nop                                           ; $5478: $00

jr_0c4_5479:
    dec d                                         ; $5479: $15
    rst $38                                       ; $547a: $ff
    xor e                                         ; $547b: $ab
    inc b                                         ; $547c: $04
    nop                                           ; $547d: $00
    ld d, b                                       ; $547e: $50
    dec hl                                        ; $547f: $2b
    or [hl]                                       ; $5480: $b6
    nop                                           ; $5481: $00
    xor a                                         ; $5482: $af
    add b                                         ; $5483: $80
    nop                                           ; $5484: $00
    xor l                                         ; $5485: $ad
    rst $38                                       ; $5486: $ff
    cp a                                          ; $5487: $bf
    nop                                           ; $5488: $00
    ld a, $bb                                     ; $5489: $3e $bb
    inc b                                         ; $548b: $04
    ld [$0409], sp                                ; $548c: $08 $09 $04
    jr z, @+$64                                   ; $548f: $28 $62

    add hl, sp                                    ; $5491: $39

jr_0c4_5492:
    jr jr_0c4_5495                                ; $5492: $18 $01

    ld [de], a                                    ; $5494: $12

jr_0c4_5495:
    add hl, bc                                    ; $5495: $09
    ld a, a                                       ; $5496: $7f
    nop                                           ; $5497: $00
    ccf                                           ; $5498: $3f
    ccf                                           ; $5499: $3f
    rra                                           ; $549a: $1f
    rra                                           ; $549b: $1f
    rrca                                          ; $549c: $0f
    rrca                                          ; $549d: $0f
    rlca                                          ; $549e: $07
    rlca                                          ; $549f: $07
    inc c                                         ; $54a0: $0c
    inc bc                                        ; $54a1: $03
    inc bc                                        ; $54a2: $03
    ld bc, $6501                                  ; $54a3: $01 $01 $65
    add hl, bc                                    ; $54a6: $09
    inc e                                         ; $54a7: $1c
    add hl, de                                    ; $54a8: $19
    xor d                                         ; $54a9: $aa
    rst $38                                       ; $54aa: $ff
    inc b                                         ; $54ab: $04
    ld h, b                                       ; $54ac: $60
    rst $38                                       ; $54ad: $ff
    cp b                                          ; $54ae: $b8
    rst $38                                       ; $54af: $ff
    sub $29                                       ; $54b0: $d6 $29
    ld hl, $fffd                                  ; $54b2: $21 $fd $ff
    ld e, d                                       ; $54b5: $5a
    and b                                         ; $54b6: $a0
    and a                                         ; $54b7: $a7
    ld bc, $be02                                  ; $54b8: $01 $02 $be
    nop                                           ; $54bb: $00
    ld a, [hl-]                                   ; $54bc: $3a
    add hl, de                                    ; $54bd: $19
    ld d, l                                       ; $54be: $55
    or l                                          ; $54bf: $b5
    ld bc, $0010                                  ; $54c0: $01 $10 $00
    rst $28                                       ; $54c3: $ef
    nop                                           ; $54c4: $00
    rst $38                                       ; $54c5: $ff
    jr nz, @+$01                                  ; $54c6: $20 $ff

    db $f4                                        ; $54c8: $f4
    set 0, b                                      ; $54c9: $cb $c0
    ld [bc], a                                    ; $54cb: $02
    rst $38                                       ; $54cc: $ff
    ldh [rIE], a                                  ; $54cd: $e0 $ff
    rra                                           ; $54cf: $1f
    rst $38                                       ; $54d0: $ff

jr_0c4_54d1:
    ld a, [bc]                                    ; $54d1: $0a
    rst $00                                       ; $54d2: $c7
    ld de, $a804                                  ; $54d3: $11 $04 $a8

jr_0c4_54d6:
    adc d                                         ; $54d6: $8a
    ld bc, $320a                                  ; $54d7: $01 $0a $32
    ld de, $d7aa                                  ; $54da: $11 $aa $d7
    ld bc, $fe01                                  ; $54dd: $01 $01 $fe
    nop                                           ; $54e0: $00
    inc bc                                        ; $54e1: $03
    rst $38                                       ; $54e2: $ff
    ld a, l                                       ; $54e3: $7d
    rst $38                                       ; $54e4: $ff
    ld a, [$f5ff]                                 ; $54e5: $fa $ff $f5
    db $10                                        ; $54e8: $10
    jr nz, jr_0c4_54d6                            ; $54e9: $20 $eb

    add hl, bc                                    ; $54eb: $09
    cp l                                          ; $54ec: $bd
    or b                                          ; $54ed: $b0
    add hl, bc                                    ; $54ee: $09
    ld [bc], a                                    ; $54ef: $02
    ld h, h                                       ; $54f0: $64
    ld bc, $2810                                  ; $54f1: $01 $10 $28
    ld [$1c09], sp                                ; $54f4: $08 $09 $1c
    jr jr_0c4_5479                                ; $54f7: $18 $80

    db $10                                        ; $54f9: $10
    jr nz, jr_0c4_54d1                            ; $54fa: $20 $d5

    ld e, h                                       ; $54fc: $5c
    ld [$083a], sp                                ; $54fd: $08 $3a $08
    add d                                         ; $5500: $82
    dec de                                        ; $5501: $1b
    ld [bc], a                                    ; $5502: $02
    ld bc, $01a9                                  ; $5503: $01 $a9 $01
    ld d, h                                       ; $5506: $54

jr_0c4_5507:
    jr c, @+$22                                   ; $5507: $38 $20

    nop                                           ; $5509: $00
    ld b, $ff                                     ; $550a: $06 $ff
    dec e                                         ; $550c: $1d
    rst $38                                       ; $550d: $ff
    ld l, e                                       ; $550e: $6b
    rst $38                                       ; $550f: $ff
    ld sp, hl                                     ; $5510: $f9
    ld b, $00                                     ; $5511: $06 $00
    or d                                          ; $5513: $b2
    ld c, c                                       ; $5514: $49
    ld e, l                                       ; $5515: $5d
    or e                                          ; $5516: $b3
    xor [hl]                                      ; $5517: $ae
    ld e, a                                       ; $5518: $5f
    ld [hl], l                                    ; $5519: $75
    ld a, [hl+]                                   ; $551a: $2a
    ld bc, $78e7                                  ; $551b: $01 $e7 $78
    xor e                                         ; $551e: $ab
    call nz, $e69d                                ; $551f: $c4 $9d $e6
    cp l                                          ; $5522: $bd
    jr nz, jr_0c4_5556                            ; $5523: $20 $31

    ld [hl+], a                                   ; $5525: $22
    cp l                                          ; $5526: $bd
    ld b, b                                       ; $5527: $40
    jr nc, jr_0c4_5534                            ; $5528: $30 $0a

    push de                                       ; $552a: $d5
    rst $38                                       ; $552b: $ff
    ld [$0162], a                                 ; $552c: $ea $62 $01
    db $eb                                        ; $552f: $eb
    cpl                                           ; $5530: $2f
    rst $38                                       ; $5531: $ff
    rst $10                                       ; $5532: $d7
    db $e3                                        ; $5533: $e3

jr_0c4_5534:
    ld hl, $6c5f                                  ; $5534: $21 $5f $6c
    ld sp, $19f4                                  ; $5537: $31 $f4 $19
    inc c                                         ; $553a: $0c
    ld c, c                                       ; $553b: $49
    jr nz, jr_0c4_5548                            ; $553c: $20 $0a

    add c                                         ; $553e: $81
    ld bc, $3a68                                  ; $553f: $01 $68 $3a
    ccf                                           ; $5542: $3f
    dec c                                         ; $5543: $0d
    rrca                                          ; $5544: $0f
    inc bc                                        ; $5545: $03
    inc bc                                        ; $5546: $03
    rla                                           ; $5547: $17

jr_0c4_5548:
    jr c, jr_0c4_554a                             ; $5548: $38 $00

jr_0c4_554a:
    ld [hl], b                                    ; $554a: $70
    rst $38                                       ; $554b: $ff
    dec c                                         ; $554c: $0d
    rst $38                                       ; $554d: $ff
    add h                                         ; $554e: $84
    ei                                            ; $554f: $fb
    ld [hl], b                                    ; $5550: $70
    ld a, a                                       ; $5551: $7f
    jr nc, jr_0c4_5563                            ; $5552: $30 $0f

    rrca                                          ; $5554: $0f
    dec hl                                        ; $5555: $2b

jr_0c4_5556:
    jr nz, jr_0c4_5507                            ; $5556: $20 $af

    ld [bc], a                                    ; $5558: $02
    xor b                                         ; $5559: $a8
    rst $38                                       ; $555a: $ff
    xor l                                         ; $555b: $ad
    ld d, a                                       ; $555c: $57
    nop                                           ; $555d: $00
    dec d                                         ; $555e: $15
    ld [$fdfa], a                                 ; $555f: $ea $fa $fd
    rlca                                          ; $5562: $07

jr_0c4_5563:
    rlca                                          ; $5563: $07
    nop                                           ; $5564: $00
    nop                                           ; $5565: $00
    ld b, b                                       ; $5566: $40
    ld b, b                                       ; $5567: $40
    ld h, e                                       ; $5568: $63
    ld [de], a                                    ; $5569: $12
    ld d, b                                       ; $556a: $50
    rst $38                                       ; $556b: $ff
    ld l, d                                       ; $556c: $6a
    sbc a                                         ; $556d: $9f
    cp a                                          ; $556e: $bf
    ld b, b                                       ; $556f: $40
    dec [hl]                                      ; $5570: $35

jr_0c4_5571:
    di                                            ; $5571: $f3
    db $fc                                        ; $5572: $fc
    ld h, $00                                     ; $5573: $26 $00
    rst $08                                       ; $5575: $cf
    ld [bc], a                                    ; $5576: $02
    ld [$01b9], sp                                ; $5577: $08 $b9 $01
    xor e                                         ; $557a: $ab
    xor [hl]                                      ; $557b: $ae
    ld a, [bc]                                    ; $557c: $0a
    push af                                       ; $557d: $f5
    or e                                          ; $557e: $b3
    ld [de], a                                    ; $557f: $12
    reti                                          ; $5580: $d9


    ld a, [de]                                    ; $5581: $1a
    ld b, [hl]                                    ; $5582: $46
    ld [bc], a                                    ; $5583: $02
    rst $28                                       ; $5584: $ef
    db $10                                        ; $5585: $10
    ld [de], a                                    ; $5586: $12
    ld [hl], $01                                  ; $5587: $36 $01
    nop                                           ; $5589: $00
    ld l, $01                                     ; $558a: $2e $01
    nop                                           ; $558c: $00
    ld d, [hl]                                    ; $558d: $56
    ld sp, hl                                     ; $558e: $f9
    db $fd                                        ; $558f: $fd
    ld [bc], a                                    ; $5590: $02
    rst $08                                       ; $5591: $cf
    ccf                                           ; $5592: $3f
    ldh a, [$f0]                                  ; $5593: $f0 $f0
    add b                                         ; $5595: $80
    ld b, h                                       ; $5596: $44
    ld bc, $15df                                  ; $5597: $01 $df $15
    rst $38                                       ; $559a: $ff
    or l                                          ; $559b: $b5
    ld [$57a8], a                                 ; $559c: $ea $a8 $57
    nop                                           ; $559f: $00
    ld e, a                                       ; $55a0: $5f
    cp a                                          ; $55a1: $bf
    ldh [$e0], a                                  ; $55a2: $e0 $e0
    nop                                           ; $55a4: $00
    nop                                           ; $55a5: $00
    ld a, [hl]                                    ; $55a6: $7e
    db $fd                                        ; $55a7: $fd
    nop                                           ; $55a8: $00
    rst $18                                       ; $55a9: $df
    ld a, $a9                                     ; $55aa: $3e $a9
    ld [hl], e                                    ; $55ac: $73
    ld e, e                                       ; $55ad: $5b
    pop hl                                        ; $55ae: $e1
    ld hl, $00ff                                  ; $55af: $21 $ff $00
    ccf                                           ; $55b2: $3f
    ld e, $7b                                     ; $55b3: $1e $7b
    sub h                                         ; $55b5: $94
    rst $30                                       ; $55b6: $f7
    add sp, -$03                                  ; $55b7: $e8 $fd
    nop                                           ; $55b9: $00
    cp c                                          ; $55ba: $b9
    ld a, [bc]                                    ; $55bb: $0a
    inc bc                                        ; $55bc: $03
    inc bc                                        ; $55bd: $03
    or [hl]                                       ; $55be: $b6
    ld c, c                                       ; $55bf: $49
    ld a, [bc]                                    ; $55c0: $0a
    inc hl                                        ; $55c1: $23
    jr c, jr_0c4_55c7                             ; $55c2: $38 $03

    cp a                                          ; $55c4: $bf
    ld b, b                                       ; $55c5: $40
    ld a, [de]                                    ; $55c6: $1a

jr_0c4_55c7:
    dec hl                                        ; $55c7: $2b
    rst $00                                       ; $55c8: $c7
    ret c                                         ; $55c9: $d8

    add hl, sp                                    ; $55ca: $39
    jr nz, jr_0c4_5605                            ; $55cb: $20 $38

    ei                                            ; $55cd: $fb
    nop                                           ; $55ce: $00
    ld a, a                                       ; $55cf: $7f
    ld d, e                                       ; $55d0: $53
    ld de, $3830                                  ; $55d1: $11 $30 $38
    ld e, b                                       ; $55d4: $58
    dec bc                                        ; $55d5: $0b
    ld [bc], a                                    ; $55d6: $02
    cp a                                          ; $55d7: $bf
    nop                                           ; $55d8: $00
    ccf                                           ; $55d9: $3f
    nop                                           ; $55da: $00
    scf                                           ; $55db: $37
    ret z                                         ; $55dc: $c8

    ld b, b                                       ; $55dd: $40
    ld c, b                                       ; $55de: $48
    rst $38                                       ; $55df: $ff
    rst $00                                       ; $55e0: $c7
    ld h, [hl]                                    ; $55e1: $66
    inc bc                                        ; $55e2: $03
    ld b, b                                       ; $55e3: $40
    ld c, b                                       ; $55e4: $48
    ei                                            ; $55e5: $fb
    inc b                                         ; $55e6: $04
    rst $18                                       ; $55e7: $df
    ld [hl], $1b                                  ; $55e8: $36 $1b
    ld b, b                                       ; $55ea: $40
    jr nz, jr_0c4_5571                            ; $55eb: $20 $84

    dec sp                                        ; $55ed: $3b
    rst $18                                       ; $55ee: $df
    ld [hl], $1a                                  ; $55ef: $36 $1a
    sbc b                                         ; $55f1: $98
    ld [bc], a                                    ; $55f2: $02
    ld [$5840], sp                                ; $55f3: $08 $40 $58
    ld h, h                                       ; $55f6: $64
    ld e, e                                       ; $55f7: $5b
    ret z                                         ; $55f8: $c8

    dec hl                                        ; $55f9: $2b
    ld d, h                                       ; $55fa: $54
    ld d, b                                       ; $55fb: $50
    ld d, $38                                     ; $55fc: $16 $38
    ret nz                                        ; $55fe: $c0

    inc [hl]                                      ; $55ff: $34
    ld b, b                                       ; $5600: $40
    ld a, [$a30b]                                 ; $5601: $fa $0b $a3
    ld e, h                                       ; $5604: $5c

jr_0c4_5605:
    ld d, l                                       ; $5605: $55
    and d                                         ; $5606: $a2
    jp hl                                         ; $5607: $e9


    scf                                           ; $5608: $37
    nop                                           ; $5609: $00
    cp a                                          ; $560a: $bf
    ld a, [hl]                                    ; $560b: $7e
    ld a, [hl+]                                   ; $560c: $2a
    rst $00                                       ; $560d: $c7
    di                                            ; $560e: $f3
    adc [hl]                                      ; $560f: $8e
    add [hl]                                      ; $5610: $86
    db $fd                                        ; $5611: $fd
    nop                                           ; $5612: $00
    db $fd                                        ; $5613: $fd
    ld a, d                                       ; $5614: $7a
    rst $18                                       ; $5615: $df

jr_0c4_5616:
    ld hl, $9f62                                  ; $5616: $21 $62 $9f
    db $dd                                        ; $5619: $dd
    inc hl                                        ; $561a: $23
    nop                                           ; $561b: $00
    and [hl]                                      ; $561c: $a6
    ld b, c                                       ; $561d: $41
    reti                                          ; $561e: $d9


    ld h, a                                       ; $561f: $67
    db $e3                                        ; $5620: $e3
    ccf                                           ; $5621: $3f
    cp [hl]                                       ; $5622: $be

jr_0c4_5623:
    ld e, a                                       ; $5623: $5f
    nop                                           ; $5624: $00
    rst $10                                       ; $5625: $d7
    jr z, jr_0c4_5623                             ; $5626: $28 $fb

    call nz, $fc23                                ; $5628: $c4 $23 $fc
    db $ed                                        ; $562b: $ed
    jp nz, $a200                                  ; $562c: $c2 $00 $a2

    pop bc                                        ; $562f: $c1
    sub c                                         ; $5630: $91
    rst $28                                       ; $5631: $ef
    rst $20                                       ; $5632: $e7
    cp $9a                                        ; $5633: $fe $9a
    dec a                                         ; $5635: $3d
    ld [hl-], a                                   ; $5636: $32
    push af                                       ; $5637: $f5
    ld [$042a], a                                 ; $5638: $ea $2a $04
    ld h, d                                       ; $563b: $62
    ld b, b                                       ; $563c: $40
    ei                                            ; $563d: $fb
    inc b                                         ; $563e: $04
    sbc [hl]                                      ; $563f: $9e
    ld l, b                                       ; $5640: $68
    db $fd                                        ; $5641: $fd
    nop                                           ; $5642: $00
    ld [bc], a                                    ; $5643: $02
    adc $31                                       ; $5644: $ce $31
    and e                                         ; $5646: $a3
    ld c, h                                       ; $5647: $4c
    ld d, l                                       ; $5648: $55
    and d                                         ; $5649: $a2
    jr z, jr_0c4_564d                             ; $564a: $28 $01

    rst $10                                       ; $564c: $d7

jr_0c4_564d:
    add c                                         ; $564d: $81
    rst $38                                       ; $564e: $ff
    db $e3                                        ; $564f: $e3
    ld a, [hl]                                    ; $5650: $7e
    ld e, a                                       ; $5651: $5f
    cp l                                          ; $5652: $bd
    ld a, b                                       ; $5653: $78
    sbc b                                         ; $5654: $98
    add b                                         ; $5655: $80
    ld b, h                                       ; $5656: $44
    jr c, jr_0c4_5616                             ; $5657: $38 $bd

    ld b, a                                       ; $5659: $47
    db $e3                                        ; $565a: $e3
    ld e, $5f                                     ; $565b: $1e $5f
    and d                                         ; $565d: $a2
    xor e                                         ; $565e: $ab
    nop                                           ; $565f: $00
    ld b, [hl]                                    ; $5660: $46
    rst $00                                       ; $5661: $c7
    ld a, l                                       ; $5662: $7d
    cp c                                          ; $5663: $b9
    ld a, c                                       ; $5664: $79
    ld a, e                                       ; $5665: $7b
    sub c                                         ; $5666: $91
    cp a                                          ; $5667: $bf
    nop                                           ; $5668: $00
    ld e, [hl]                                    ; $5669: $5e
    pop af                                        ; $566a: $f1
    ld c, $aa                                     ; $566b: $0e $aa
    ld d, c                                       ; $566d: $51
    ret nc                                        ; $566e: $d0

    jr nz, jr_0c4_56bd                            ; $566f: $20 $4c

    nop                                           ; $5671: $00
    or b                                          ; $5672: $b0
    or c                                          ; $5673: $b1
    ld a, [hl]                                    ; $5674: $7e
    rst $18                                       ; $5675: $df
    ccf                                           ; $5676: $3f
    push af                                       ; $5677: $f5
    ld a, [bc]                                    ; $5678: $0a
    cp e                                          ; $5679: $bb
    nop                                           ; $567a: $00
    ld b, h                                       ; $567b: $44
    rst $38                                       ; $567c: $ff
    nop                                           ; $567d: $00
    di                                            ; $567e: $f3
    inc c                                         ; $567f: $0c
    ld sp, hl                                     ; $5680: $f9
    ld [de], a                                    ; $5681: $12
    rst $18                                       ; $5682: $df

jr_0c4_5683:
    nop                                           ; $5683: $00
    ld sp, $4ebf                                  ; $5684: $31 $bf $4e
    ld c, a                                       ; $5687: $4f
    add d                                         ; $5688: $82
    rla                                           ; $5689: $17
    jp nz, Jump_000_009f                          ; $568a: $c2 $9f $00

    db $e4                                        ; $568d: $e4
    push bc                                       ; $568e: $c5
    ld a, [hl-]                                   ; $568f: $3a
    xor e                                         ; $5690: $ab
    ld b, h                                       ; $5691: $44
    ld c, c                                       ; $5692: $49
    add [hl]                                      ; $5693: $86
    and d                                         ; $5694: $a2
    nop                                           ; $5695: $00
    rst $18                                       ; $5696: $df
    rst $38                                       ; $5697: $ff
    ld a, h                                       ; $5698: $7c
    ld [hl], c                                    ; $5699: $71
    sbc [hl]                                      ; $569a: $9e
    rst $18                                       ; $569b: $df
    cpl                                           ; $569c: $2f
    db $eb                                        ; $569d: $eb
    ld b, b                                       ; $569e: $40
    inc d                                         ; $569f: $14
    cp [hl]                                       ; $56a0: $be
    inc c                                         ; $56a1: $0c
    pop hl                                        ; $56a2: $e1
    ld e, $42                                     ; $56a3: $1e $42
    and c                                         ; $56a5: $a1
    or c                                          ; $56a6: $b1
    ld h, b                                       ; $56a7: $60
    nop                                           ; $56a8: $00
    call c, $ab3f                                 ; $56a9: $dc $3f $ab
    ld d, h                                       ; $56ac: $54

jr_0c4_56ad:
    rst $30                                       ; $56ad: $f7
    dec bc                                        ; $56ae: $0b
    pop hl                                        ; $56af: $e1
    ld e, $00                                     ; $56b0: $1e $00
    ld d, d                                       ; $56b2: $52
    and c                                         ; $56b3: $a1
    and a                                         ; $56b4: $a7
    ld a, d                                       ; $56b5: $7a
    sbc $3d                                       ; $56b6: $de $3d
    push af                                       ; $56b8: $f5
    adc d                                         ; $56b9: $8a
    nop                                           ; $56ba: $00
    rst $38                                       ; $56bb: $ff
    add h                                         ; $56bc: $84

jr_0c4_56bd:
    db $fd                                        ; $56bd: $fd
    add [hl]                                      ; $56be: $86
    rst $00                                       ; $56bf: $c7
    ccf                                           ; $56c0: $3f
    rst $30                                       ; $56c1: $f7
    ld [$eb00], sp                                ; $56c2: $08 $00 $eb
    inc d                                         ; $56c5: $14

jr_0c4_56c6:
    push bc                                       ; $56c6: $c5
    ld a, [hl-]                                   ; $56c7: $3a
    scf                                           ; $56c8: $37
    call z, Call_000_069b                         ; $56c9: $cc $9b $06
    nop                                           ; $56cc: $00
    di                                            ; $56cd: $f3
    ld c, $87                                     ; $56ce: $0e $87
    ld a, h                                       ; $56d0: $7c
    ld d, [hl]                                    ; $56d1: $56
    db $fd                                        ; $56d2: $fd
    rst $38                                       ; $56d3: $ff
    nop                                           ; $56d4: $00
    nop                                           ; $56d5: $00

jr_0c4_56d6:
    ldh [$1f], a                                  ; $56d6: $e0 $1f
    pop de                                        ; $56d8: $d1
    jr nz, jr_0c4_5683                            ; $56d9: $20 $a8

    ld b, b                                       ; $56db: $40
    db $dd                                        ; $56dc: $dd
    ld h, b                                       ; $56dd: $60
    jr nz, jr_0c4_56c6                            ; $56de: $20 $e6

    add hl, sp                                    ; $56e0: $39
    scf                                           ; $56e1: $37

jr_0c4_56e2:
    inc bc                                        ; $56e2: $03
    nop                                           ; $56e3: $00
    ei                                            ; $56e4: $fb
    ld a, h                                       ; $56e5: $7c
    reti                                          ; $56e6: $d9


    ld h, [hl]                                    ; $56e7: $66
    nop                                           ; $56e8: $00
    adc l                                         ; $56e9: $8d
    di                                            ; $56ea: $f3
    pop hl                                        ; $56eb: $e1
    ld a, a                                       ; $56ec: $7f

jr_0c4_56ed:
    rst $28                                       ; $56ed: $ef
    ld e, [hl]                                    ; $56ee: $5e
    rst $18                                       ; $56ef: $df
    add h                                         ; $56f0: $84
    nop                                           ; $56f1: $00
    rst $38                                       ; $56f2: $ff
    ld c, b                                       ; $56f3: $48
    rst $38                                       ; $56f4: $ff
    jr nc, jr_0c4_56d6                            ; $56f5: $30 $df

    jr nz, jr_0c4_56ed                            ; $56f7: $20 $f4

    dec bc                                        ; $56f9: $0b
    nop                                           ; $56fa: $00
    add sp, $14                                   ; $56fb: $e8 $14
    cp $04                                        ; $56fd: $fe $04
    ld a, [c]                                     ; $56ff: $f2
    rrca                                          ; $5700: $0f
    ld l, e                                       ; $5701: $6b
    sub c                                         ; $5702: $91
    nop                                           ; $5703: $00
    sub l                                         ; $5704: $95
    ld h, b                                       ; $5705: $60
    rst $28                                       ; $5706: $ef
    jr nc, jr_0c4_56ad                            ; $5707: $30 $a4

    ld b, e                                       ; $5709: $43
    ld d, b                                       ; $570a: $50
    ldh [rP1], a                                  ; $570b: $e0 $00
    ld l, d                                       ; $570d: $6a
    jr nc, @+$39                                  ; $570e: $30 $37

    jr jr_0c4_56ed                                ; $5710: $18 $db

    ccf                                           ; $5712: $3f
    ld [$00f7], a                                 ; $5713: $ea $f7 $00
    ld d, e                                       ; $5716: $53
    and $4a                                       ; $5717: $e6 $4a
    rst $30                                       ; $5719: $f7
    cp e                                          ; $571a: $bb
    db $fc                                        ; $571b: $fc
    or l                                          ; $571c: $b5
    ld a, d                                       ; $571d: $7a
    nop                                           ; $571e: $00
    xor e                                         ; $571f: $ab
    inc [hl]                                      ; $5720: $34
    ccf                                           ; $5721: $3f
    ldh [$f1], a                                  ; $5722: $e0 $f1
    adc $a2                                       ; $5724: $ce $a2
    ld d, c                                       ; $5726: $51
    nop                                           ; $5727: $00
    ld c, l                                       ; $5728: $4d
    or e                                          ; $5729: $b3
    rst $38                                       ; $572a: $ff
    ld e, $ea                                     ; $572b: $1e $ea
    dec d                                         ; $572d: $15
    ret nc                                        ; $572e: $d0

    cpl                                           ; $572f: $2f
    nop                                           ; $5730: $00
    jp hl                                         ; $5731: $e9


    db $10                                        ; $5732: $10
    db $d3                                        ; $5733: $d3
    jr nz, jr_0c4_56e2                            ; $5734: $20 $ac

    ld [hl], e                                    ; $5736: $73
    rst $38                                       ; $5737: $ff
    rra                                           ; $5738: $1f
    nop                                           ; $5739: $00
    sub $2b                                       ; $573a: $d6 $2b
    ld a, [$fe07]                                 ; $573c: $fa $07 $fe
    ld bc, $8877                                  ; $573f: $01 $77 $88
    nop                                           ; $5742: $00
    add sp, $57                                   ; $5743: $e8 $57
    ld d, b                                       ; $5745: $50
    add sp, -$2c                                  ; $5746: $e8 $d4
    ld hl, sp+$4b                                 ; $5748: $f8 $4b
    cp h                                          ; $574a: $bc
    ld bc, $0fd4                                  ; $574b: $01 $d4 $0f
    daa                                           ; $574e: $27
    rst $08                                       ; $574f: $cf
    pop de                                        ; $5750: $d1
    ccf                                           ; $5751: $3f
    xor [hl]                                      ; $5752: $ae
    ld b, [hl]                                    ; $5753: $46
    add hl, bc                                    ; $5754: $09
    nop                                           ; $5755: $00
    inc b                                         ; $5756: $04
    pop hl                                        ; $5757: $e1
    ld e, $d5                                     ; $5758: $1e $d5
    inc hl                                        ; $575a: $23

jr_0c4_575b:
    ld [$fd37], a                                 ; $575b: $ea $37 $fd
    nop                                           ; $575e: $00
    ld e, $d7                                     ; $575f: $1e $d7
    xor $ad                                       ; $5761: $ee $ad
    cp $7b                                        ; $5763: $fe $7b
    db $fc                                        ; $5765: $fc
    xor l                                         ; $5766: $ad
    inc b                                         ; $5767: $04
    ld d, d                                       ; $5768: $52
    rst $18                                       ; $5769: $df
    jr nz, jr_0c4_575b                            ; $576a: $20 $ef

    db $10                                        ; $576c: $10
    ld b, b                                       ; $576d: $40
    ld a, [bc]                                    ; $576e: $0a
    db $dd                                        ; $576f: $dd
    inc hl                                        ; $5770: $23
    nop                                           ; $5771: $00
    ld a, [$9d05]                                 ; $5772: $fa $05 $9d
    ld h, d                                       ; $5775: $62
    ld h, d                                       ; $5776: $62
    sbc l                                         ; $5777: $9d
    push bc                                       ; $5778: $c5
    add d                                         ; $5779: $82
    nop                                           ; $577a: $00
    sbc a                                         ; $577b: $9f
    db $e4                                        ; $577c: $e4
    db $fd                                        ; $577d: $fd
    ld a, d                                       ; $577e: $7a
    ei                                            ; $577f: $fb
    inc b                                         ; $5780: $04
    or l                                          ; $5781: $b5
    adc $00                                       ; $5782: $ce $00
    call c, Call_0c4_7bf8                         ; $5784: $dc $f8 $7b
    cp h                                          ; $5787: $bc
    xor h                                         ; $5788: $ac
    ld e, a                                       ; $5789: $5f
    rst $10                                       ; $578a: $d7
    cpl                                           ; $578b: $2f
    nop                                           ; $578c: $00
    cp a                                          ; $578d: $bf
    ld b, d                                       ; $578e: $42
    halt                                          ; $578f: $76
    adc e                                         ; $5790: $8b
    rst $38                                       ; $5791: $ff

jr_0c4_5792:
    ld bc, $0d10                                  ; $5792: $01 $10 $0d
    ld c, e                                       ; $5795: $4b
    dec bc                                        ; $5796: $0b
    nop                                           ; $5797: $00
    jr nz, jr_0c4_579a                            ; $5798: $20 $00

jr_0c4_579a:
    ld b, h                                       ; $579a: $44
    nop                                           ; $579b: $00
    and b                                         ; $579c: $a0
    nop                                           ; $579d: $00
    ld d, d                                       ; $579e: $52
    nop                                           ; $579f: $00
    nop                                           ; $57a0: $00
    db $ed                                        ; $57a1: $ed
    nop                                           ; $57a2: $00
    or $00                                        ; $57a3: $f6 $00
    xor $00                                       ; $57a5: $ee $00
    rst $38                                       ; $57a7: $ff
    nop                                           ; $57a8: $00
    nop                                           ; $57a9: $00
    cpl                                           ; $57aa: $2f
    nop                                           ; $57ab: $00
    sbc l                                         ; $57ac: $9d
    ld [bc], a                                    ; $57ad: $02
    ld a, $01                                     ; $57ae: $3e $01
    ld e, a                                       ; $57b0: $5f
    nop                                           ; $57b1: $00
    nop                                           ; $57b2: $00
    dec sp                                        ; $57b3: $3b
    inc b                                         ; $57b4: $04
    ld e, l                                       ; $57b5: $5d
    ld [bc], a                                    ; $57b6: $02
    cp d                                          ; $57b7: $ba
    dec b                                         ; $57b8: $05
    ld a, h                                       ; $57b9: $7c
    inc bc                                        ; $57ba: $03
    ld bc, $00a8                                  ; $57bb: $01 $a8 $00
    pop de                                        ; $57be: $d1
    nop                                           ; $57bf: $00
    db $eb                                        ; $57c0: $eb
    nop                                           ; $57c1: $00
    rst $10                                       ; $57c2: $d7
    ld a, [de]                                    ; $57c3: $1a
    nop                                           ; $57c4: $00
    nop                                           ; $57c5: $00
    ld l, a                                       ; $57c6: $6f
    add b                                         ; $57c7: $80
    rst $38                                       ; $57c8: $ff
    nop                                           ; $57c9: $00
    ld e, a                                       ; $57ca: $5f
    and b                                         ; $57cb: $a0
    ld b, b                                       ; $57cc: $40
    nop                                           ; $57cd: $00
    nop                                           ; $57ce: $00
    adc c                                         ; $57cf: $89
    nop                                           ; $57d0: $00
    call nc, $e900                                ; $57d1: $d4 $00 $e9
    nop                                           ; $57d4: $00
    ei                                            ; $57d5: $fb
    nop                                           ; $57d6: $00
    ld b, b                                       ; $57d7: $40
    db $fd                                        ; $57d8: $fd
    ld l, $00                                     ; $57d9: $2e $00
    rst $38                                       ; $57db: $ff
    nop                                           ; $57dc: $00
    adc e                                         ; $57dd: $8b
    adc [hl]                                      ; $57de: $8e
    dec b                                         ; $57df: $05
    adc a                                         ; $57e0: $8f
    nop                                           ; $57e1: $00
    add h                                         ; $57e2: $84
    adc a                                         ; $57e3: $8f
    ld [bc], a                                    ; $57e4: $02
    add a                                         ; $57e5: $87
    add c                                         ; $57e6: $81
    add a                                         ; $57e7: $87
    nop                                           ; $57e8: $00
    add e                                         ; $57e9: $83
    ld b, b                                       ; $57ea: $40
    rst $38                                       ; $57eb: $ff
    ld bc, $d100                                  ; $57ec: $01 $00 $d1
    ccf                                           ; $57ef: $3f
    xor $1f                                       ; $57f0: $ee $1f
    pop bc                                        ; $57f2: $c1
    rst $38                                       ; $57f3: $ff
    jr jr_0c4_5834                                ; $57f4: $18 $3e

    rst $38                                       ; $57f6: $ff
    pop bc                                        ; $57f7: $c1
    dec e                                         ; $57f8: $1d
    nop                                           ; $57f9: $00
    db $10                                        ; $57fa: $10
    ld [$10f0], sp                                ; $57fb: $08 $f0 $10
    ret nc                                        ; $57fe: $d0

    nop                                           ; $57ff: $00
    jr nc, jr_0c4_5792                            ; $5800: $30 $90

    ldh a, [rNR41]                                ; $5802: $f0 $20
    ldh [$c0], a                                  ; $5804: $e0 $c0
    ldh [rP1], a                                  ; $5806: $e0 $00
    ld b, b                                       ; $5808: $40
    ret nz                                        ; $5809: $c0

    jr nz, @+$0a                                  ; $580a: $20 $08

    halt                                          ; $580c: $76
    ld c, a                                       ; $580d: $4f
    ld a, a                                       ; $580e: $7f
    ld b, b                                       ; $580f: $40
    ld c, a                                       ; $5810: $4f
    ld a, a                                       ; $5811: $7f
    ld [bc], a                                    ; $5812: $02
    jr nz, jr_0c4_5894                            ; $5813: $20 $7f

    rra                                           ; $5815: $1f
    ld a, a                                       ; $5816: $7f
    nop                                           ; $5817: $00
    ccf                                           ; $5818: $3f
    jr nc, jr_0c4_5823                            ; $5819: $30 $08

Call_0c4_581b:
    ld a, [$0e00]                                 ; $581b: $fa $00 $0e
    ld a, [c]                                     ; $581e: $f2
    ld a, $84                                     ; $581f: $3e $84
    cp $18                                        ; $5821: $fe $18

jr_0c4_5823:
    cp $e0                                        ; $5823: $fe $e0
    db $10                                        ; $5825: $10
    db $fc                                        ; $5826: $fc
    nop                                           ; $5827: $00
    ld hl, sp+$40                                 ; $5828: $f8 $40

jr_0c4_582a:
    ld [$080f], sp                                ; $582a: $08 $0f $08
    rrca                                          ; $582d: $0f
    ld [$0b00], sp                                ; $582e: $08 $00 $0b
    inc c                                         ; $5831: $0c
    add hl, bc                                    ; $5832: $09
    rrca                                          ; $5833: $0f

jr_0c4_5834:
    inc b                                         ; $5834: $04
    rlca                                          ; $5835: $07
    inc bc                                        ; $5836: $03
    rlca                                          ; $5837: $07
    add b                                         ; $5838: $80
    ld d, b                                       ; $5839: $50
    ld [$e6bd], sp                                ; $583a: $08 $bd $e6
    adc e                                         ; $583d: $8b
    db $fc                                        ; $583e: $fc
    ld [hl], a                                    ; $583f: $77
    ld hl, sp-$7d                                 ; $5840: $f8 $83
    db $10                                        ; $5842: $10
    rst $38                                       ; $5843: $ff
    ld a, h                                       ; $5844: $7c
    rst $38                                       ; $5845: $ff
    ld e, a                                       ; $5846: $5f
    db $10                                        ; $5847: $10
    rst $38                                       ; $5848: $ff
    ret nc                                        ; $5849: $d0

    jr nc, @-$2e                                  ; $584a: $30 $d0

    nop                                           ; $584c: $00
    ld [hl], b                                    ; $584d: $70
    and b                                         ; $584e: $a0
    ldh a, [rNR41]                                ; $584f: $f0 $20
    ldh a, [rLCDC]                                ; $5851: $f0 $40
    ldh [$80], a                                  ; $5853: $e0 $80
    ld b, b                                       ; $5855: $40
    ldh [$61], a                                  ; $5856: $e0 $61
    stop                                          ; $5858: $10 $00
    push af                                       ; $585a: $f5
    ld a, [bc]                                    ; $585b: $0a
    xor $11                                       ; $585c: $ee $11
    db $fd                                        ; $585e: $fd
    nop                                           ; $585f: $00
    ld [bc], a                                    ; $5860: $02
    ld a, [$d505]                                 ; $5861: $fa $05 $d5
    ld a, [hl+]                                   ; $5864: $2a
    ld l, b                                       ; $5865: $68
    sub a                                         ; $5866: $97
    call nc, Call_000_2b00                        ; $5867: $d4 $00 $2b
    sbc $21                                       ; $586a: $de $21
    db $f4                                        ; $586c: $f4
    dec bc                                        ; $586d: $0b
    cp $01                                        ; $586e: $fe $01
    call c, $2300                                 ; $5870: $dc $00 $23
    ld [$5c15], a                                 ; $5873: $ea $15 $5c
    and e                                         ; $5876: $a3
    xor b                                         ; $5877: $a8
    ld d, a                                       ; $5878: $57
    dec d                                         ; $5879: $15

jr_0c4_587a:
    nop                                           ; $587a: $00
    ld [$40bf], a                                 ; $587b: $ea $bf $40
    ld l, a                                       ; $587e: $6f
    sub b                                         ; $587f: $90
    ccf                                           ; $5880: $3f
    ret nz                                        ; $5881: $c0

    ld [hl], l                                    ; $5882: $75
    nop                                           ; $5883: $00
    adc d                                         ; $5884: $8a
    cpl                                           ; $5885: $2f
    ret nc                                        ; $5886: $d0

    ld d, [hl]                                    ; $5887: $56
    xor c                                         ; $5888: $a9
    inc hl                                        ; $5889: $23
    call c, Call_000_0005                         ; $588a: $dc $05 $00
    ld a, [$50af]                                 ; $588d: $fa $af $50
    ld e, a                                       ; $5890: $5f
    and b                                         ; $5891: $a0
    db $ed                                        ; $5892: $ed
    ld [de], a                                    ; $5893: $12

jr_0c4_5894:
    sbc $00                                       ; $5894: $de $00
    ld hl, $50af                                  ; $5896: $21 $af $50
    rst $10                                       ; $5899: $d7
    jr z, jr_0c4_582a                             ; $589a: $28 $8e

    ld [hl], c                                    ; $589c: $71
    dec h                                         ; $589d: $25
    nop                                           ; $589e: $00
    jp c, $2056                                   ; $589f: $da $56 $20

    ld d, l                                       ; $58a2: $55
    jr nz, jr_0c4_587a                            ; $58a3: $20 $d5

    ld a, [hl+]                                   ; $58a5: $2a
    ld l, d                                       ; $58a6: $6a
    nop                                           ; $58a7: $00
    cp a                                          ; $58a8: $bf
    ld d, l                                       ; $58a9: $55
    xor d                                         ; $58aa: $aa
    rst $38                                       ; $58ab: $ff
    nop                                           ; $58ac: $00
    ld e, e                                       ; $58ad: $5b
    nop                                           ; $58ae: $00
    sub l                                         ; $58af: $95
    ld a, a                                       ; $58b0: $7f
    ld l, d                                       ; $58b1: $6a
    push de                                       ; $58b2: $d5
    ld [$4820], sp                                ; $58b3: $08 $20 $48
    push hl                                       ; $58b6: $e5
    ld [$4860], sp                                ; $58b7: $08 $60 $48
    push af                                       ; $58ba: $f5
    ld [$4860], sp                                ; $58bb: $08 $60 $48
    dec b                                         ; $58be: $05
    add hl, bc                                    ; $58bf: $09
    add b                                         ; $58c0: $80
    ld h, b                                       ; $58c1: $60
    ld c, b                                       ; $58c2: $48
    and b                                         ; $58c3: $a0
    ld e, a                                       ; $58c4: $5f
    ld b, h                                       ; $58c5: $44
    cp e                                          ; $58c6: $bb
    nop                                           ; $58c7: $00
    rst $38                                       ; $58c8: $ff
    jr nz, jr_0c4_58cb                            ; $58c9: $20 $00

jr_0c4_58cb:
    rst $18                                       ; $58cb: $df
    nop                                           ; $58cc: $00
    rst $38                                       ; $58cd: $ff
    add d                                         ; $58ce: $82
    rst $38                                       ; $58cf: $ff
    ld d, l                                       ; $58d0: $55
    rst $38                                       ; $58d1: $ff
    cp e                                          ; $58d2: $bb
    db $10                                        ; $58d3: $10
    rst $38                                       ; $58d4: $ff
    adc b                                         ; $58d5: $88
    ld [hl], a                                    ; $58d6: $77
    ld c, $18                                     ; $58d7: $0e $18
    ld b, h                                       ; $58d9: $44
    rst $38                                       ; $58da: $ff
    add b                                         ; $58db: $80
    rst $38                                       ; $58dc: $ff
    nop                                           ; $58dd: $00
    ld d, b                                       ; $58de: $50
    rst $38                                       ; $58df: $ff
    db $eb                                        ; $58e0: $eb
    rst $38                                       ; $58e1: $ff
    ld [hl+], a                                   ; $58e2: $22
    db $dd                                        ; $58e3: $dd
    sub c                                         ; $58e4: $91
    ld l, [hl]                                    ; $58e5: $6e
    add d                                         ; $58e6: $82
    add hl, sp                                    ; $58e7: $39
    add hl, bc                                    ; $58e8: $09
    dec b                                         ; $58e9: $05
    rst $38                                       ; $58ea: $ff
    xor d                                         ; $58eb: $aa
    rst $38                                       ; $58ec: $ff
    rlca                                          ; $58ed: $07
    jr nz, jr_0c4_58f0                            ; $58ee: $20 $00

jr_0c4_58f0:
    add d                                         ; $58f0: $82
    nop                                           ; $58f1: $00
    ld a, l                                       ; $58f2: $7d
    ld [$10f7], sp                                ; $58f3: $08 $f7 $10
    rst $28                                       ; $58f6: $ef
    ld [$00f7], sp                                ; $58f7: $08 $f7 $00
    nop                                           ; $58fa: $00
    rst $38                                       ; $58fb: $ff
    and b                                         ; $58fc: $a0
    rst $38                                       ; $58fd: $ff
    ld [hl], l                                    ; $58fe: $75
    rst $38                                       ; $58ff: $ff
    cp d                                          ; $5900: $ba
    rst $38                                       ; $5901: $ff
    add a                                         ; $5902: $87
    nop                                           ; $5903: $00
    add a                                         ; $5904: $87
    dec bc                                        ; $5905: $0b
    adc h                                         ; $5906: $8c
    sbc a                                         ; $5907: $9f
    sub b                                         ; $5908: $90
    cpl                                           ; $5909: $2f
    or c                                          ; $590a: $b1
    cp [hl]                                       ; $590b: $be
    nop                                           ; $590c: $00

jr_0c4_590d:
    and e                                         ; $590d: $a3
    ccf                                           ; $590e: $3f
    and e                                         ; $590f: $a3
    cp a                                          ; $5910: $bf
    and d                                         ; $5911: $a2
    cpl                                           ; $5912: $2f
    or c                                          ; $5913: $b1
    ldh [rP1], a                                  ; $5914: $e0 $00
    ldh [$dc], a                                  ; $5916: $e0 $dc
    inc a                                         ; $5918: $3c
    ei                                            ; $5919: $fb
    rlca                                          ; $591a: $07
    xor $f1                                       ; $591b: $ee $f1
    rra                                           ; $591d: $1f
    nop                                           ; $591e: $00
    db $fd                                        ; $591f: $fd
    ld [c], a                                     ; $5920: $e2
    rst $38                                       ; $5921: $ff
    sbc $3f                                       ; $5922: $de $3f
    rst $38                                       ; $5924: $ff
    rst $08                                       ; $5925: $cf
    nop                                           ; $5926: $00
    nop                                           ; $5927: $00
    nop                                           ; $5928: $00
    rra                                           ; $5929: $1f
    rra                                           ; $592a: $1f
    cpl                                           ; $592b: $2f
    jr nc, jr_0c4_590d                            ; $592c: $30 $df

    ldh [$bf], a                                  ; $592e: $e0 $bf
    nop                                           ; $5930: $00
    jp $c7bc                                      ; $5931: $c3 $bc $c7


jr_0c4_5934:
    cp h                                          ; $5934: $bc
    rst $00                                       ; $5935: $c7
    cp a                                          ; $5936: $bf
    rst $00                                       ; $5937: $c7
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    nop                                           ; $593a: $00
    ldh [$e0], a                                  ; $593b: $e0 $e0
    ret c                                         ; $593d: $d8

    jr c, jr_0c4_5934                             ; $593e: $38 $f4

    inc c                                         ; $5940: $0c
    ld a, [$8600]                                 ; $5941: $fa $00 $86
    ld a, [hl]                                    ; $5944: $7e
    jp nz, $e33d                                  ; $5945: $c2 $3d $e3

    xor a                                         ; $5948: $af
    pop af                                        ; $5949: $f1
    rrca                                          ; $594a: $0f
    nop                                           ; $594b: $00

jr_0c4_594c:
    rrca                                          ; $594c: $0f
    rla                                           ; $594d: $17
    jr jr_0c4_598f                                ; $594e: $18 $3f

    jr nz, jr_0c4_59b1                            ; $5950: $20 $5f

    ld h, e                                       ; $5952: $63
    ld a, h                                       ; $5953: $7c
    nop                                           ; $5954: $00
    ld b, a                                       ; $5955: $47
    ld a, a                                       ; $5956: $7f
    ld b, a                                       ; $5957: $47
    ld a, a                                       ; $5958: $7f
    ld b, h                                       ; $5959: $44
    ld e, a                                       ; $595a: $5f
    ld h, e                                       ; $595b: $63
    ret nz                                        ; $595c: $c0

    nop                                           ; $595d: $00
    ret nz                                        ; $595e: $c0

    cp b                                          ; $595f: $b8
    ld a, b                                       ; $5960: $78
    or $0e                                        ; $5961: $f6 $0e
    db $dd                                        ; $5963: $dd
    db $e3                                        ; $5964: $e3
    ccf                                           ; $5965: $3f
    nop                                           ; $5966: $00
    ei                                            ; $5967: $fb
    push bc                                       ; $5968: $c5
    rst $38                                       ; $5969: $ff
    cp l                                          ; $596a: $bd
    ld a, a                                       ; $596b: $7f
    rst $38                                       ; $596c: $ff
    sbc a                                         ; $596d: $9f
    rrca                                          ; $596e: $0f
    nop                                           ; $596f: $00
    rrca                                          ; $5970: $0f
    scf                                           ; $5971: $37
    jr c, @+$61                                   ; $5972: $38 $5f

    ld h, b                                       ; $5974: $60
    cp a                                          ; $5975: $bf
    jp Jump_000_00fc                              ; $5976: $c3 $fc $00


    add a                                         ; $5979: $87
    ld a, b                                       ; $597a: $78
    adc a                                         ; $597b: $8f
    db $eb                                        ; $597c: $eb
    rra                                           ; $597d: $1f
    rst $30                                       ; $597e: $f7
    inc e                                         ; $597f: $1c
    ldh a, [rNR10]                                ; $5980: $f0 $10
    ldh a, [$e8]                                  ; $5982: $f0 $e8
    jr jr_0c4_59c4                                ; $5984: $18 $3e

    ld [$c67a], sp                                ; $5986: $08 $7a $c6
    ld a, d                                       ; $5989: $7a
    add $01                                       ; $598a: $c6 $01
    ld a, [$bac6]                                 ; $598c: $fa $c6 $ba

jr_0c4_598f:
    add $75                                       ; $598f: $c6 $75
    nop                                           ; $5991: $00
    ld h, h                                       ; $5992: $64
    ldh a, [rSB]                                  ; $5993: $f0 $01
    nop                                           ; $5995: $00
    inc d                                         ; $5996: $14
    db $eb                                        ; $5997: $eb
    ld c, c                                       ; $5998: $49
    ld [hl], $df                                  ; $5999: $36 $df
    jr nz, jr_0c4_594c                            ; $599b: $20 $af

    ld b, b                                       ; $599d: $40
    nop                                           ; $599e: $00
    cp b                                          ; $599f: $b8
    ld b, d                                       ; $59a0: $42
    ld b, b                                       ; $59a1: $40
    ld a, [hl-]                                   ; $59a2: $3a
    jp z, $8075                                   ; $59a3: $ca $75 $80

Call_0c4_59a6:
    ld a, a                                       ; $59a6: $7f
    nop                                           ; $59a7: $00
    rst $38                                       ; $59a8: $ff
    ld a, a                                       ; $59a9: $7f
    ld c, d                                       ; $59aa: $4a
    or l                                          ; $59ab: $b5
    cp d                                          ; $59ac: $ba
    ld bc, $53ac                                  ; $59ad: $01 $ac $53
    nop                                           ; $59b0: $00

jr_0c4_59b1:
    db $dd                                        ; $59b1: $dd
    inc bc                                        ; $59b2: $03
    add b                                         ; $59b3: $80
    ld [hl], a                                    ; $59b4: $77
    inc de                                        ; $59b5: $13
    xor $01                                       ; $59b6: $ee $01
    cp $40                                        ; $59b8: $fe $40
    cp $fb                                        ; $59ba: $fe $fb
    ld bc, $eb94                                  ; $59bc: $01 $94 $eb
    dec l                                         ; $59bf: $2d
    ret nz                                        ; $59c0: $c0

    nop                                           ; $59c1: $00
    rst $38                                       ; $59c2: $ff
    nop                                           ; $59c3: $00

jr_0c4_59c4:
    db $dd                                        ; $59c4: $dd
    nop                                           ; $59c5: $00
    cp e                                          ; $59c6: $bb
    nop                                           ; $59c7: $00
    ld c, d                                       ; $59c8: $4a
    or l                                          ; $59c9: $b5
    or l                                          ; $59ca: $b5
    rst $38                                       ; $59cb: $ff
    nop                                           ; $59cc: $00
    dec b                                         ; $59cd: $05
    ld hl, sp+$4c                                 ; $59ce: $f8 $4c
    cp b                                          ; $59d0: $b8
    ld b, d                                       ; $59d1: $42
    jr c, jr_0c4_59dd                             ; $59d2: $38 $09

    ld hl, sp+$00                                 ; $59d4: $f8 $00
    ret nc                                        ; $59d6: $d0

    dec c                                         ; $59d7: $0d
    and [hl]                                      ; $59d8: $a6
    jr jr_0c4_5a20                                ; $59d9: $18 $45

    cp d                                          ; $59db: $ba
    or a                                          ; $59dc: $b7

jr_0c4_59dd:
    ld hl, sp+$00                                 ; $59dd: $f8 $00
    or l                                          ; $59df: $b5
    ld a, [bc]                                    ; $59e0: $0a
    rst $10                                       ; $59e1: $d7
    ld [$102f], sp                                ; $59e2: $08 $2f $10
    ld l, [hl]                                    ; $59e5: $6e
    stop                                          ; $59e6: $10 $00
    add c                                         ; $59e8: $81
    ld a, [hl+]                                   ; $59e9: $2a
    adc $10                                       ; $59ea: $ce $10
    inc hl                                        ; $59ec: $23
    ld d, h                                       ; $59ed: $54
    ld [hl], e                                    ; $59ee: $73
    nop                                           ; $59ef: $00
    nop                                           ; $59f0: $00
    ld a, [hl]                                    ; $59f1: $7e
    nop                                           ; $59f2: $00
    add d                                         ; $59f3: $82
    ld d, h                                       ; $59f4: $54
    rst $08                                       ; $59f5: $cf
    db $10                                        ; $59f6: $10
    ld l, l                                       ; $59f7: $6d
    sub b                                         ; $59f8: $90
    nop                                           ; $59f9: $00
    xor d                                         ; $59fa: $aa
    ld b, b                                       ; $59fb: $40
    ld b, c                                       ; $59fc: $41
    add b                                         ; $59fd: $80
    ld l, l                                       ; $59fe: $6d
    add b                                         ; $59ff: $80
    ld d, d                                       ; $5a00: $52
    xor l                                         ; $5a01: $ad
    nop                                           ; $5a02: $00
    ld d, a                                       ; $5a03: $57
    add b                                         ; $5a04: $80
    ld c, l                                       ; $5a05: $4d
    add b                                         ; $5a06: $80
    ld d, c                                       ; $5a07: $51
    add b                                         ; $5a08: $80
    ld d, l                                       ; $5a09: $55
    add b                                         ; $5a0a: $80
    nop                                           ; $5a0b: $00
    and $01                                       ; $5a0c: $e6 $01
    and e                                         ; $5a0e: $a3
    ld bc, $01b6                                  ; $5a0f: $01 $b6 $01
    ld c, e                                       ; $5a12: $4b
    or l                                          ; $5a13: $b5
    nop                                           ; $5a14: $00
    inc d                                         ; $5a15: $14
    db $eb                                        ; $5a16: $eb
    ld a, a                                       ; $5a17: $7f
    add b                                         ; $5a18: $80
    halt                                          ; $5a19: $76
    add c                                         ; $5a1a: $81
    ld l, e                                       ; $5a1b: $6b
    add h                                         ; $5a1c: $84
    ld [$b245], sp                                ; $5a1d: $08 $45 $b2

jr_0c4_5a20:
    add hl, hl                                    ; $5a20: $29
    sub $3a                                       ; $5a21: $d6 $3a
    ld a, [bc]                                    ; $5a23: $0a
    xor b                                         ; $5a24: $a8
    ld d, a                                       ; $5a25: $57
    ld l, h                                       ; $5a26: $6c
    nop                                           ; $5a27: $00
    rlca                                          ; $5a28: $07
    sub c                                         ; $5a29: $91
    ld c, [hl]                                    ; $5a2a: $4e
    ld h, h                                       ; $5a2b: $64
    rrca                                          ; $5a2c: $0f
    ld [bc], a                                    ; $5a2d: $02
    cp h                                          ; $5a2e: $bc
    ld d, a                                       ; $5a2f: $57
    ld [$04b8], sp                                ; $5a30: $08 $b8 $04
    ei                                            ; $5a33: $fb
    ei                                            ; $5a34: $fb
    ld l, e                                       ; $5a35: $6b
    ld [bc], a                                    ; $5a36: $02
    ld c, b                                       ; $5a37: $48
    or a                                          ; $5a38: $b7
    ld [hl], l                                    ; $5a39: $75
    nop                                           ; $5a3a: $00
    add b                                         ; $5a3b: $80
    nop                                           ; $5a3c: $00
    rst $38                                       ; $5a3d: $ff
    xor e                                         ; $5a3e: $ab
    nop                                           ; $5a3f: $00
    ld [$a500], a                                 ; $5a40: $ea $00 $a5
    nop                                           ; $5a43: $00
    ld e, d                                       ; $5a44: $5a
    ld e, d                                       ; $5a45: $5a
    rst $38                                       ; $5a46: $ff
    ld a, [de]                                    ; $5a47: $1a
    ldh [$b5], a                                  ; $5a48: $e0 $b5
    ld h, b                                       ; $5a4a: $60
    inc d                                         ; $5a4b: $14
    nop                                           ; $5a4c: $00
    ldh [$35], a                                  ; $5a4d: $e0 $35
    ldh [$94], a                                  ; $5a4f: $e0 $94
    ld l, c                                       ; $5a51: $69
    cp e                                          ; $5a52: $bb
    ld b, b                                       ; $5a53: $40
    inc h                                         ; $5a54: $24
    nop                                           ; $5a55: $00
    ret                                           ; $5a56: $c9


    db $fd                                        ; $5a57: $fd
    ret nz                                        ; $5a58: $c0

    or l                                          ; $5a59: $b5
    ld c, b                                       ; $5a5a: $48
    ld l, $41                                     ; $5a5b: $2e $41
    ld e, l                                       ; $5a5d: $5d
    nop                                           ; $5a5e: $00
    jr nz, jr_0c4_5abb                            ; $5a5f: $20 $5a

    ld hl, $b8af                                  ; $5a61: $21 $af $b8
    daa                                           ; $5a64: $27
    cp [hl]                                       ; $5a65: $be
    sub b                                         ; $5a66: $90
    ld bc, $0cbf                                  ; $5a67: $01 $bf $0c
    cp a                                          ; $5a6a: $bf
    add e                                         ; $5a6b: $83
    sbc a                                         ; $5a6c: $9f
    nop                                           ; $5a6d: $00
    adc a                                         ; $5a6e: $8f
    sub b                                         ; $5a6f: $90
    ld a, [bc]                                    ; $5a70: $0a
    nop                                           ; $5a71: $00
    or a                                          ; $5a72: $b7
    ld a, c                                       ; $5a73: $79
    rst $38                                       ; $5a74: $ff

jr_0c4_5a75:
    ld bc, $fff9                                  ; $5a75: $01 $f9 $ff
    ld [bc], a                                    ; $5a78: $02
    rst $38                                       ; $5a79: $ff
    ld [$fffc], sp                                ; $5a7a: $08 $fc $ff
    nop                                           ; $5a7d: $00
    cp $a0                                        ; $5a7e: $fe $a0
    ld a, [bc]                                    ; $5a80: $0a
    cp e                                          ; $5a81: $bb
    add $bd                                       ; $5a82: $c6 $bd
    nop                                           ; $5a84: $00
    db $e3                                        ; $5a85: $e3
    ld e, [hl]                                    ; $5a86: $5e
    pop af                                        ; $5a87: $f1
    ld c, h                                       ; $5a88: $4c
    rst $38                                       ; $5a89: $ff
    inc hl                                        ; $5a8a: $23
    ld a, a                                       ; $5a8b: $7f
    inc e                                         ; $5a8c: $1c
    ld b, b                                       ; $5a8d: $40
    ld a, a                                       ; $5a8e: $7f
    or b                                          ; $5a8f: $b0
    ld a, [bc]                                    ; $5a90: $0a
    rst $18                                       ; $5a91: $df
    ld [hl], c                                    ; $5a92: $71
    rra                                           ; $5a93: $1f
    pop af                                        ; $5a94: $f1
    db $ed                                        ; $5a95: $ed
    di                                            ; $5a96: $f3
    inc b                                         ; $5a97: $04
    add hl, de                                    ; $5a98: $19
    rst $38                                       ; $5a99: $ff
    ld [c], a                                     ; $5a9a: $e2
    cp $1c                                        ; $5a9b: $fe $1c
    jr nz, jr_0c4_5aaf                            ; $5a9d: $20 $10

    ld l, a                                       ; $5a9f: $6f
    di                                            ; $5aa0: $f3
    nop                                           ; $5aa1: $00
    rst $38                                       ; $5aa2: $ff
    inc bc                                        ; $5aa3: $03
    di                                            ; $5aa4: $f3
    rst $38                                       ; $5aa5: $ff
    inc b                                         ; $5aa6: $04
    cp $f8                                        ; $5aa7: $fe $f8
    cp $20                                        ; $5aa9: $fe $20
    nop                                           ; $5aab: $00
    db $fc                                        ; $5aac: $fc
    ret nc                                        ; $5aad: $d0

    ld a, [bc]                                    ; $5aae: $0a

jr_0c4_5aaf:
    pop af                                        ; $5aaf: $f1
    rra                                           ; $5ab0: $1f
    ld l, [hl]                                    ; $5ab1: $6e
    sbc a                                         ; $5ab2: $9f
    jr nc, jr_0c4_5ab7                            ; $5ab3: $30 $02

    rst $38                                       ; $5ab5: $ff
    adc a                                         ; $5ab6: $8f

jr_0c4_5ab7:
    rst $38                                       ; $5ab7: $ff
    ld [hl], b                                    ; $5ab8: $70
    rst $38                                       ; $5ab9: $ff
    nop                                           ; $5aba: $00

jr_0c4_5abb:
    jr nc, jr_0c4_5acd                            ; $5abb: $30 $10

    ld a, d                                       ; $5abd: $7a
    nop                                           ; $5abe: $00
    adc [hl]                                      ; $5abf: $8e
    db $f4                                        ; $5ac0: $f4
    ld e, $64                                     ; $5ac1: $1e $64
    cp $88                                        ; $5ac3: $fe $88
    db $fc                                        ; $5ac5: $fc
    ld [hl], b                                    ; $5ac6: $70
    add b                                         ; $5ac7: $80
    or b                                          ; $5ac8: $b0
    ld [hl+], a                                   ; $5ac9: $22
    and l                                         ; $5aca: $a5
    ld c, d                                       ; $5acb: $4a
    cp d                                          ; $5acc: $ba

jr_0c4_5acd:
    ld b, b                                       ; $5acd: $40
    and l                                         ; $5ace: $a5
    ld c, d                                       ; $5acf: $4a
    ld a, d                                       ; $5ad0: $7a
    nop                                           ; $5ad1: $00
    add b                                         ; $5ad2: $80
    ld l, e                                       ; $5ad3: $6b
    sub b                                         ; $5ad4: $90
    db $dd                                        ; $5ad5: $dd
    add d                                         ; $5ad6: $82
    ld a, d                                       ; $5ad7: $7a
    add b                                         ; $5ad8: $80
    push af                                       ; $5ad9: $f5
    nop                                           ; $5ada: $00
    add d                                         ; $5adb: $82
    inc c                                         ; $5adc: $0c
    ld d, e                                       ; $5add: $53
    cp l                                          ; $5ade: $bd
    ld b, e                                       ; $5adf: $43
    inc c                                         ; $5ae0: $0c
    ld d, e                                       ; $5ae1: $53
    sbc d                                         ; $5ae2: $9a
    nop                                           ; $5ae3: $00
    rlca                                          ; $5ae4: $07
    ld hl, sp+$07                                 ; $5ae5: $f8 $07
    ld a, [de]                                    ; $5ae7: $1a
    and a                                         ; $5ae8: $a7
    ld l, c                                       ; $5ae9: $69
    add [hl]                                      ; $5aea: $86
    ld e, d                                       ; $5aeb: $5a
    nop                                           ; $5aec: $00
    add a                                         ; $5aed: $87
    call nc, Call_000_0229                        ; $5aee: $d4 $29 $02
    db $fd                                        ; $5af1: $fd
    pop de                                        ; $5af2: $d1
    jr nz, jr_0c4_5a75                            ; $5af3: $20 $80

    nop                                           ; $5af5: $00
    ld a, a                                       ; $5af6: $7f
    ld l, c                                       ; $5af7: $69
    add [hl]                                      ; $5af8: $86
    sub h                                         ; $5af9: $94
    ld l, e                                       ; $5afa: $6b
    ld h, d                                       ; $5afb: $62
    sbc h                                         ; $5afc: $9c
    ld a, [bc]                                    ; $5afd: $0a
    nop                                           ; $5afe: $00
    pop af                                        ; $5aff: $f1
    ld h, d                                       ; $5b00: $62
    sbc b                                         ; $5b01: $98
    add hl, bc                                    ; $5b02: $09
    ld hl, sp-$5e                                 ; $5b03: $f8 $a2
    jr jr_0c4_5b1b                                ; $5b05: $18 $14

    nop                                           ; $5b07: $00
    ei                                            ; $5b08: $fb
    ld b, c                                       ; $5b09: $41
    cp [hl]                                       ; $5b0a: $be

jr_0c4_5b0b:
    rla                                           ; $5b0b: $17
    ld hl, sp-$79                                 ; $5b0c: $f8 $87
    ld a, b                                       ; $5b0e: $78
    ld d, h                                       ; $5b0f: $54
    nop                                           ; $5b10: $00
    cp e                                          ; $5b11: $bb
    ld l, e                                       ; $5b12: $6b
    db $10                                        ; $5b13: $10
    ld a, [hl+]                                   ; $5b14: $2a
    db $10                                        ; $5b15: $10
    xor d                                         ; $5b16: $aa
    dec d                                         ; $5b17: $15
    cp d                                          ; $5b18: $ba
    nop                                           ; $5b19: $00
    ld e, a                                       ; $5b1a: $5f

jr_0c4_5b1b:
    ld d, d                                       ; $5b1b: $52
    xor l                                         ; $5b1c: $ad
    rst $38                                       ; $5b1d: $ff
    nop                                           ; $5b1e: $00
    ld e, [hl]                                    ; $5b1f: $5e
    nop                                           ; $5b20: $00
    sub e                                         ; $5b21: $93
    nop                                           ; $5b22: $00
    ld l, h                                       ; $5b23: $6c
    or a                                          ; $5b24: $b7
    nop                                           ; $5b25: $00
    cp a                                          ; $5b26: $bf
    nop                                           ; $5b27: $00
    ld d, d                                       ; $5b28: $52
    xor l                                         ; $5b29: $ad
    or l                                          ; $5b2a: $b5
    ld [bc], a                                    ; $5b2b: $02
    rst $38                                       ; $5b2c: $ff
    or l                                          ; $5b2d: $b5

jr_0c4_5b2e:
    ld b, b                                       ; $5b2e: $40
    xor d                                         ; $5b2f: $aa
    ld b, b                                       ; $5b30: $40
    or b                                          ; $5b31: $b0
    inc b                                         ; $5b32: $04
    nop                                           ; $5b33: $00
    ld d, l                                       ; $5b34: $55
    add b                                         ; $5b35: $80
    ld h, $01                                     ; $5b36: $26 $01
    ld e, e                                       ; $5b38: $5b
    add b                                         ; $5b39: $80
    call nc, $00ab                                ; $5b3a: $d4 $ab $00
    rst $38                                       ; $5b3d: $ff
    xor c                                         ; $5b3e: $a9
    nop                                           ; $5b3f: $00
    rst $10                                       ; $5b40: $d7
    nop                                           ; $5b41: $00
    rst $30                                       ; $5b42: $f7
    adc c                                         ; $5b43: $89
    rst $30                                       ; $5b44: $f7
    ld d, d                                       ; $5b45: $52
    and l                                         ; $5b46: $a5
    ld l, [hl]                                    ; $5b47: $6e
    nop                                           ; $5b48: $00
    add c                                         ; $5b49: $81
    ld d, d                                       ; $5b4a: $52
    and l                                         ; $5b4b: $a5
    push af                                       ; $5b4c: $f5
    nop                                           ; $5b4d: $00
    rst $10                                       ; $5b4e: $d7
    jr nz, jr_0c4_5b0b                            ; $5b4f: $20 $ba

    nop                                           ; $5b51: $00
    dec b                                         ; $5b52: $05
    db $f4                                        ; $5b53: $f4
    ld bc, $05ea                                  ; $5b54: $01 $ea $05
    ld [de], a                                    ; $5b57: $12
    ld c, h                                       ; $5b58: $4c
    db $e4                                        ; $5b59: $e4
    nop                                           ; $5b5a: $00
    rrca                                          ; $5b5b: $0f
    ld [hl-], a                                   ; $5b5c: $32

jr_0c4_5b5d:
    ld c, h                                       ; $5b5d: $4c
    dec [hl]                                      ; $5b5e: $35
    ld c, $f0                                     ; $5b5f: $0e $f0
    rrca                                          ; $5b61: $0f
    dec [hl]                                      ; $5b62: $35
    nop                                           ; $5b63: $00
    ld c, [hl]                                    ; $5b64: $4e
    jp nc, $b40d                                  ; $5b65: $d2 $0d $b4

    rrca                                          ; $5b68: $0f
    sub h                                         ; $5b69: $94
    ld h, e                                       ; $5b6a: $63
    ld a, [bc]                                    ; $5b6b: $0a
    nop                                           ; $5b6c: $00
    push af                                       ; $5b6d: $f5
    add l                                         ; $5b6e: $85
    ld b, b                                       ; $5b6f: $40
    nop                                           ; $5b70: $00
    rst $38                                       ; $5b71: $ff
    db $d2, $0d, $28                              ; $5b72: $d2 $0d $28

    nop                                           ; $5b75: $00
    rst $10                                       ; $5b76: $d7
    push bc                                       ; $5b77: $c5
    jr c, jr_0c4_5b8e                             ; $5b78: $38 $14

    db $e3                                        ; $5b7a: $e3
    sub l                                         ; $5b7b: $95
    ld h, b                                       ; $5b7c: $60
    inc [hl]                                      ; $5b7d: $34
    nop                                           ; $5b7e: $00
    ldh [$96], a                                  ; $5b7f: $e0 $96
    ld h, b                                       ; $5b81: $60
    add hl, hl                                    ; $5b82: $29
    or $82                                        ; $5b83: $f6 $82
    ld a, l                                       ; $5b85: $7d
    cpl                                           ; $5b86: $2f
    nop                                           ; $5b87: $00
    ldh a, [$0e]                                  ; $5b88: $f0 $0e
    ldh a, [$a9]                                  ; $5b8a: $f0 $a9
    halt                                          ; $5b8c: $76
    ld c, l                                       ; $5b8d: $4d

jr_0c4_5b8e:
    jr nz, jr_0c4_5bdb                            ; $5b8e: $20 $4b

    nop                                           ; $5b90: $00
    jr nz, jr_0c4_5b5d                            ; $5b91: $20 $ca

    dec [hl]                                      ; $5b93: $35
    ld [hl], l                                    ; $5b94: $75
    cp a                                          ; $5b95: $bf
    and l                                         ; $5b96: $a5
    ld e, d                                       ; $5b97: $5a
    rst $38                                       ; $5b98: $ff
    nop                                           ; $5b99: $00
    nop                                           ; $5b9a: $00
    cp l                                          ; $5b9b: $bd
    nop                                           ; $5b9c: $00
    daa                                           ; $5b9d: $27
    ret c                                         ; $5b9e: $d8

    push de                                       ; $5b9f: $d5
    ld [bc], a                                    ; $5ba0: $02
    push af                                       ; $5ba1: $f5
    nop                                           ; $5ba2: $00
    ld [bc], a                                    ; $5ba3: $02
    ld d, c                                       ; $5ba4: $51
    xor [hl]                                      ; $5ba5: $ae
    ld l, e                                       ; $5ba6: $6b
    rst $38                                       ; $5ba7: $ff
    ld l, d                                       ; $5ba8: $6a
    add c                                         ; $5ba9: $81
    ld d, l                                       ; $5baa: $55
    jr nz, jr_0c4_5b2e                            ; $5bab: $20 $81

    ld h, b                                       ; $5bad: $60
    inc b                                         ; $5bae: $04
    nop                                           ; $5baf: $00
    add hl, hl                                    ; $5bb0: $29
    ret nz                                        ; $5bb1: $c0

    ld h, h                                       ; $5bb2: $64
    ret nz                                        ; $5bb3: $c0

    ld a, [hl+]                                   ; $5bb4: $2a
    nop                                           ; $5bb5: $00
    ret nz                                        ; $5bb6: $c0

    ld d, l                                       ; $5bb7: $55
    ld [$7a85], a                                 ; $5bb8: $ea $85 $7a
    cpl                                           ; $5bbb: $2f
    ldh a, [$0d]                                  ; $5bbc: $f0 $0d
    nop                                           ; $5bbe: $00
    ldh a, [$aa]                                  ; $5bbf: $f0 $aa
    ld [hl], l                                    ; $5bc1: $75
    xor c                                         ; $5bc2: $a9
    ld b, [hl]                                    ; $5bc3: $46
    inc d                                         ; $5bc4: $14
    db $eb                                        ; $5bc5: $eb
    adc e                                         ; $5bc6: $8b
    nop                                           ; $5bc7: $00
    nop                                           ; $5bc8: $00
    nop                                           ; $5bc9: $00
    rst $38                                       ; $5bca: $ff

jr_0c4_5bcb:
    and h                                         ; $5bcb: $a4
    dec de                                        ; $5bcc: $1b

jr_0c4_5bcd:
    ld d, d                                       ; $5bcd: $52
    xor l                                         ; $5bce: $ad
    adc c                                         ; $5bcf: $89
    nop                                           ; $5bd0: $00
    ld [hl], b                                    ; $5bd1: $70
    ld a, [hl+]                                   ; $5bd2: $2a
    push bc                                       ; $5bd3: $c5
    jp z, Jump_0c4_5031                           ; $5bd4: $ca $31 $50

    ccf                                           ; $5bd7: $3f
    jp z, Jump_000_3100                           ; $5bd8: $ca $00 $31

jr_0c4_5bdb:
    call nc, $423b                                ; $5bdb: $d4 $3b $42
    inc a                                         ; $5bde: $3c
    ld d, l                                       ; $5bdf: $55
    ld a, [hl-]                                   ; $5be0: $3a
    jp z, Jump_000_3400                           ; $5be1: $ca $00 $34

    ld d, b                                       ; $5be4: $50
    ccf                                           ; $5be5: $3f
    xor c                                         ; $5be6: $a9
    ld [de], a                                    ; $5be7: $12
    ld l, $10                                     ; $5be8: $2e $10
    ld l, c                                       ; $5bea: $69
    nop                                           ; $5beb: $00
    ld [de], a                                    ; $5bec: $12
    xor a                                         ; $5bed: $af
    ld d, b                                       ; $5bee: $50
    dec c                                         ; $5bef: $0d
    ld a, [c]                                     ; $5bf0: $f2
    dec hl                                        ; $5bf1: $2b
    ldh a, [rIF]                                  ; $5bf2: $f0 $0f
    nop                                           ; $5bf4: $00
    ldh a, [$2e]                                  ; $5bf5: $f0 $2e
    ldh a, [$d4]                                  ; $5bf7: $f0 $d4
    jr nz, jr_0c4_5bcd                            ; $5bf9: $20 $d2

    jr nz, @-$69                                  ; $5bfb: $20 $95

    nop                                           ; $5bfd: $00
    ld h, b                                       ; $5bfe: $60
    ld l, d                                       ; $5bff: $6a
    push af                                       ; $5c00: $f5
    ld h, b                                       ; $5c01: $60
    rra                                           ; $5c02: $1f
    or l                                          ; $5c03: $b5
    ld a, [de]                                    ; $5c04: $1a
    jr nz, jr_0c4_5c07                            ; $5c05: $20 $00

jr_0c4_5c07:
    ld e, $b1                                     ; $5c07: $1e $b1
    ld e, $5a                                     ; $5c09: $1e $5a
    nop                                           ; $5c0b: $00
    sbc $00                                       ; $5c0c: $de $00
    xor d                                         ; $5c0e: $aa
    nop                                           ; $5c0f: $00
    ld d, l                                       ; $5c10: $55
    ld d, l                                       ; $5c11: $55
    rst $38                                       ; $5c12: $ff
    ld d, l                                       ; $5c13: $55
    and b                                         ; $5c14: $a0
    jp nc, Jump_0c4_5420                          ; $5c15: $d2 $20 $54

    and c                                         ; $5c18: $a1
    inc e                                         ; $5c19: $1c
    nop                                           ; $5c1a: $00
    xor e                                         ; $5c1b: $ab
    ldh a, [rP1]                                  ; $5c1c: $f0 $00
    ld l, d                                       ; $5c1e: $6a
    dec d                                         ; $5c1f: $15
    or l                                          ; $5c20: $b5
    ld e, a                                       ; $5c21: $5f
    ld [hl], b                                    ; $5c22: $70
    dec hl                                        ; $5c23: $2b
    nop                                           ; $5c24: $00
    or a                                          ; $5c25: $b7
    nop                                           ; $5c26: $00
    xor a                                         ; $5c27: $af
    nop                                           ; $5c28: $00
    xor c                                         ; $5c29: $a9
    ld d, [hl]                                    ; $5c2a: $56
    ld d, [hl]                                    ; $5c2b: $56
    rst $38                                       ; $5c2c: $ff
    inc b                                         ; $5c2d: $04
    ld d, h                                       ; $5c2e: $54
    inc bc                                        ; $5c2f: $03

jr_0c4_5c30:
    ld d, a                                       ; $5c30: $57
    ld [bc], a                                    ; $5c31: $02
    add h                                         ; $5c32: $84
    inc b                                         ; $5c33: $04
    nop                                           ; $5c34: $00
    ld d, d                                       ; $5c35: $52
    inc c                                         ; $5c36: $0c
    inc b                                         ; $5c37: $04
    call nc, Call_0c4_500f                        ; $5c38: $d4 $0f $50
    xor a                                         ; $5c3b: $af
    xor a                                         ; $5c3c: $af
    ld e, e                                       ; $5c3d: $5b
    inc b                                         ; $5c3e: $04
    ld d, d                                       ; $5c3f: $52
    inc c                                         ; $5c40: $0c
    nop                                           ; $5c41: $00
    nop                                           ; $5c42: $00
    rst $38                                       ; $5c43: $ff
    ld d, b                                       ; $5c44: $50
    and a                                         ; $5c45: $a7
    add b                                         ; $5c46: $80
    ld a, a                                       ; $5c47: $7f
    and l                                         ; $5c48: $a5
    jr jr_0c4_5bcb                                ; $5c49: $18 $80

    ld c, d                                       ; $5c4b: $4a
    inc c                                         ; $5c4c: $0c
    ld [bc], a                                    ; $5c4d: $02
    db $fd                                        ; $5c4e: $fd
    sub a                                         ; $5c4f: $97
    ld a, b                                       ; $5c50: $78
    and l                                         ; $5c51: $a5
    jr @+$13                                      ; $5c52: $18 $11

    nop                                           ; $5c54: $00
    cp $0e                                        ; $5c55: $fe $0e
    ldh a, [$6d]                                  ; $5c57: $f0 $6d
    jr nc, jr_0c4_5c69                            ; $5c59: $30 $0e

    pop af                                        ; $5c5b: $f1
    xor $00                                       ; $5c5c: $ee $00
    ldh a, [$8b]                                  ; $5c5e: $f0 $8b
    ld [hl], b                                    ; $5c60: $70
    rst $08                                       ; $5c61: $cf
    jr nc, jr_0c4_5c30                            ; $5c62: $30 $cc

    jr nc, @+$47                                  ; $5c64: $30 $45

    nop                                           ; $5c66: $00
    cp d                                          ; $5c67: $ba
    db $fd                                        ; $5c68: $fd

jr_0c4_5c69:
    nop                                           ; $5c69: $00
    adc e                                         ; $5c6a: $8b
    nop                                           ; $5c6b: $00
    dec sp                                        ; $5c6c: $3b
    call nz, Call_000_00f7                        ; $5c6d: $c4 $f7 $00
    nop                                           ; $5c70: $00
    sbc e                                         ; $5c71: $9b
    nop                                           ; $5c72: $00
    call $9d32                                    ; $5c73: $cd $32 $9d
    nop                                           ; $5c76: $00
    ld c, e                                       ; $5c77: $4b
    nop                                           ; $5c78: $00
    sub b                                         ; $5c79: $90
    ld d, e                                       ; $5c7a: $53
    add b                                         ; $5c7b: $80
    ld c, c                                       ; $5c7c: $49
    add b                                         ; $5c7d: $80
    ld d, a                                       ; $5c7e: $57
    add b                                         ; $5c7f: $80
    add hl, hl                                    ; $5c80: $29
    nop                                           ; $5c81: $00
    sub $14                                       ; $5c82: $d6 $14
    db $eb                                        ; $5c84: $eb
    ld a, $c1                                     ; $5c85: $3e $c1
    ld [hl], $c1                                  ; $5c87: $36 $c1
    ld a, [hl+]                                   ; $5c89: $2a
    nop                                           ; $5c8a: $00
    push de                                       ; $5c8b: $d5
    jr z, @-$27                                   ; $5c8c: $28 $d7

    add d                                         ; $5c8e: $82
    rst $38                                       ; $5c8f: $ff
    ld [$a3f7], sp                                ; $5c90: $08 $f7 $a3

jr_0c4_5c93:
    ld [$01df], sp                                ; $5c93: $08 $df $01
    sbc $93                                       ; $5c96: $de $93
    cp b                                          ; $5c98: $b8
    ld [bc], a                                    ; $5c99: $02
    sub e                                         ; $5c9a: $93

jr_0c4_5c9b:
    xor $bb                                       ; $5c9b: $ee $bb
    pop bc                                        ; $5c9d: $c1

jr_0c4_5c9e:
    or b                                          ; $5c9e: $b0
    ld [bc], a                                    ; $5c9f: $02
    ld b, b                                       ; $5ca0: $40
    ld a, [bc]                                    ; $5ca1: $0a
    ld e, h                                       ; $5ca2: $5c
    inc bc                                        ; $5ca3: $03
    ld d, [hl]                                    ; $5ca4: $56
    inc bc                                        ; $5ca5: $03
    ld b, h                                       ; $5ca6: $44
    inc b                                         ; $5ca7: $04
    nop                                           ; $5ca8: $00
    ld bc, $0c72                                  ; $5ca9: $01 $72 $0c
    db $f4                                        ; $5cac: $f4
    rrca                                          ; $5cad: $0f
    ld b, b                                       ; $5cae: $40
    cp a                                          ; $5caf: $bf
    cp a                                          ; $5cb0: $bf
    rlc h                                         ; $5cb1: $cb $04
    nop                                           ; $5cb3: $00
    push de                                       ; $5cb4: $d5
    ld a, [bc]                                    ; $5cb5: $0a
    ld [bc], a                                    ; $5cb6: $02
    db $fd                                        ; $5cb7: $fd
    ld d, h                                       ; $5cb8: $54
    and e                                         ; $5cb9: $a3
    jr nz, jr_0c4_5c9b                            ; $5cba: $20 $df

    jr nz, jr_0c4_5c93                            ; $5cbc: $20 $d5

    jr z, jr_0c4_5d30                             ; $5cbe: $28 $70

    jr z, jr_0c4_5ce9                             ; $5cc0: $28 $27

    sbc b                                         ; $5cc2: $98
    inc d                                         ; $5cc3: $14
    ei                                            ; $5cc4: $fb
    rrca                                          ; $5cc5: $0f
    nop                                           ; $5cc6: $00
    ldh a, [$ae]                                  ; $5cc7: $f0 $ae
    ld [hl], b                                    ; $5cc9: $70
    dec c                                         ; $5cca: $0d
    ld a, [c]                                     ; $5ccb: $f2
    rst $28                                       ; $5ccc: $ef
    ldh a, [rWY]                                  ; $5ccd: $f0 $4a
    nop                                           ; $5ccf: $00
    or b                                          ; $5cd0: $b0
    rst $08                                       ; $5cd1: $cf
    jr nc, jr_0c4_5c9e                            ; $5cd2: $30 $ca

    jr nc, jr_0c4_5d1f                            ; $5cd4: $30 $49

    or [hl]                                       ; $5cd6: $b6
    ld a, e                                       ; $5cd7: $7b
    nop                                           ; $5cd8: $00
    nop                                           ; $5cd9: $00
    adc l                                         ; $5cda: $8d
    nop                                           ; $5cdb: $00
    scf                                           ; $5cdc: $37
    ret z                                         ; $5cdd: $c8

    ld a, l                                       ; $5cde: $7d
    nop                                           ; $5cdf: $00
    sbc a                                         ; $5ce0: $9f
    ld bc, $d500                                  ; $5ce1: $01 $00 $d5
    ld a, [hl+]                                   ; $5ce4: $2a
    sub a                                         ; $5ce5: $97
    nop                                           ; $5ce6: $00
    ld d, a                                       ; $5ce7: $57
    adc b                                         ; $5ce8: $88

jr_0c4_5ce9:
    and b                                         ; $5ce9: $a0
    add hl, de                                    ; $5cea: $19
    nop                                           ; $5ceb: $00
    dec h                                         ; $5cec: $25
    jp c, $f50a                                   ; $5ced: $da $0a $f5

    ld a, $c1                                     ; $5cf0: $3e $c1
    ld a, $c1                                     ; $5cf2: $3e $c1
    nop                                           ; $5cf4: $00
    ld [hl-], a                                   ; $5cf5: $32
    call Call_0c4_6094                            ; $5cf6: $cd $94 $60
    ld [hl-], a                                   ; $5cf9: $32
    ldh [$95], a                                  ; $5cfa: $e0 $95
    ld h, b                                       ; $5cfc: $60
    jr nz, jr_0c4_5d29                            ; $5cfd: $20 $2a

    push af                                       ; $5cff: $f5
    ld b, b                                       ; $5d00: $40
    add hl, hl                                    ; $5d01: $29
    ld d, h                                       ; $5d02: $54

jr_0c4_5d03:
    and e                                         ; $5d03: $a3
    ld a, [bc]                                    ; $5d04: $0a
    push af                                       ; $5d05: $f5
    ld b, l                                       ; $5d06: $45
    add d                                         ; $5d07: $82
    cp b                                          ; $5d08: $b8
    ld [bc], a                                    ; $5d09: $02
    ld d, d                                       ; $5d0a: $52
    dec c                                         ; $5d0b: $0d
    xor b                                         ; $5d0c: $a8
    ld d, a                                       ; $5d0d: $57
    ld b, l                                       ; $5d0e: $45
    sub b                                         ; $5d0f: $90
    ld bc, $0065                                  ; $5d10: $01 $65 $00
    jr @-$56                                      ; $5d13: $18 $a8

    rra                                           ; $5d15: $1f
    push hl                                       ; $5d16: $e5
    jr jr_0c4_5d03                                ; $5d17: $18 $ea

    dec e                                         ; $5d19: $1d
    and c                                         ; $5d1a: $a1
    nop                                           ; $5d1b: $00
    ld e, $aa                                     ; $5d1c: $1e $aa
    dec e                                         ; $5d1e: $1d

jr_0c4_5d1f:
    ld h, l                                       ; $5d1f: $65
    ld a, [de]                                    ; $5d20: $1a
    xor b                                         ; $5d21: $a8
    rra                                           ; $5d22: $1f
    sub b                                         ; $5d23: $90
    ld [bc], a                                    ; $5d24: $02
    dec h                                         ; $5d25: $25
    ld l, e                                       ; $5d26: $6b
    inc b                                         ; $5d27: $04
    sub b                                         ; $5d28: $90

jr_0c4_5d29:
    dec h                                         ; $5d29: $25
    or h                                          ; $5d2a: $b4
    or $01                                        ; $5d2b: $f6 $01
    ret z                                         ; $5d2d: $c8

    nop                                           ; $5d2e: $00
    dec h                                         ; $5d2f: $25

jr_0c4_5d30:
    or e                                          ; $5d30: $b3
    inc b                                         ; $5d31: $04
    ld e, d                                       ; $5d32: $5a
    inc h                                         ; $5d33: $24
    ld d, h                                       ; $5d34: $54
    add hl, bc                                    ; $5d35: $09
    rla                                           ; $5d36: $17
    nop                                           ; $5d37: $00
    ld [$09b4], sp                                ; $5d38: $08 $b4 $09
    ld d, a                                       ; $5d3b: $57
    xor b                                         ; $5d3c: $a8
    ld b, $f9                                     ; $5d3d: $06 $f9
    sub l                                         ; $5d3f: $95
    nop                                           ; $5d40: $00
    ld a, b                                       ; $5d41: $78
    rlca                                          ; $5d42: $07
    ld a, b                                       ; $5d43: $78
    sub a                                         ; $5d44: $97
    ld a, b                                       ; $5d45: $78
    ld l, d                                       ; $5d46: $6a
    db $10                                        ; $5d47: $10
    ld l, c                                       ; $5d48: $69
    nop                                           ; $5d49: $00
    db $10                                        ; $5d4a: $10
    ld c, d                                       ; $5d4b: $4a
    or b                                          ; $5d4c: $b0
    or l                                          ; $5d4d: $b5
    ld a, [$0fb0]                                 ; $5d4e: $fa $b0 $0f
    ld e, d                                       ; $5d51: $5a
    nop                                           ; $5d52: $00
    dec c                                         ; $5d53: $0d
    db $10                                        ; $5d54: $10
    rrca                                          ; $5d55: $0f
    ld e, b                                       ; $5d56: $58
    rrca                                          ; $5d57: $0f
    xor l                                         ; $5d58: $ad
    nop                                           ; $5d59: $00
    ld l, a                                       ; $5d5a: $6f
    nop                                           ; $5d5b: $00
    nop                                           ; $5d5c: $00
    ld d, l                                       ; $5d5d: $55
    xor d                                         ; $5d5e: $aa
    xor d                                         ; $5d5f: $aa
    rst $38                                       ; $5d60: $ff
    xor d                                         ; $5d61: $aa
    ld d, b                                       ; $5d62: $50
    jp hl                                         ; $5d63: $e9


    nop                                           ; $5d64: $00
    db $10                                        ; $5d65: $10
    xor d                                         ; $5d66: $aa
    db $10                                        ; $5d67: $10
    jp hl                                         ; $5d68: $e9


    db $10                                        ; $5d69: $10
    sub h                                         ; $5d6a: $94
    inc bc                                        ; $5d6b: $03
    ld b, [hl]                                    ; $5d6c: $46
    nop                                           ; $5d6d: $00
    inc bc                                        ; $5d6e: $03
    ld e, b                                       ; $5d6f: $58
    rlca                                          ; $5d70: $07
    xor h                                         ; $5d71: $ac
    ld d, a                                       ; $5d72: $57
    ld d, b                                       ; $5d73: $50
    xor [hl]                                      ; $5d74: $ae
    db $f4                                        ; $5d75: $f4
    nop                                           ; $5d76: $00
    rrca                                          ; $5d77: $0f
    or c                                          ; $5d78: $b1
    ld c, $a8                                     ; $5d79: $0e $a8
    ld e, a                                       ; $5d7b: $5f
    sub d                                         ; $5d7c: $92
    inc c                                         ; $5d7d: $0c
    ld c, c                                       ; $5d7e: $49
    nop                                           ; $5d7f: $00
    or [hl]                                       ; $5d80: $b6
    ld c, e                                       ; $5d81: $4b
    or b                                          ; $5d82: $b0
    nop                                           ; $5d83: $00
    rst $38                                       ; $5d84: $ff
    and c                                         ; $5d85: $a1
    ld [bc], a                                    ; $5d86: $02
    ld d, b                                       ; $5d87: $50
    nop                                           ; $5d88: $00
    xor a                                         ; $5d89: $af
    add hl, hl                                    ; $5d8a: $29
    add $00                                       ; $5d8b: $c6 $00
    rst $38                                       ; $5d8d: $ff
    and e                                         ; $5d8e: $a3
    ld e, b                                       ; $5d8f: $58
    ld d, h                                       ; $5d90: $54
    nop                                           ; $5d91: $00
    cp b                                          ; $5d92: $b8
    add hl, bc                                    ; $5d93: $09
    or $ab                                        ; $5d94: $f6 $ab
    ld [hl], b                                    ; $5d96: $70
    ld c, l                                       ; $5d97: $4d
    jr nc, jr_0c4_5dc7                            ; $5d98: $30 $2d

    nop                                           ; $5d9a: $00
    ld a, [c]                                     ; $5d9b: $f2
    ld c, l                                       ; $5d9c: $4d
    jr nc, @+$57                                  ; $5d9d: $30 $55

    add sp, -$36                                  ; $5d9f: $e8 $ca
    jr nc, jr_0c4_5df0                            ; $5da1: $30 $4d

    nop                                           ; $5da3: $00
    jr nc, @-$6a                                  ; $5da4: $30 $94

    ld l, e                                       ; $5da6: $6b
    xor e                                         ; $5da7: $ab
    ld a, a                                       ; $5da8: $7f
    xor e                                         ; $5da9: $ab
    ld b, b                                       ; $5daa: $40
    and h                                         ; $5dab: $a4
    nop                                           ; $5dac: $00
    ld b, b                                       ; $5dad: $40
    xor [hl]                                      ; $5dae: $ae
    ld b, b                                       ; $5daf: $40
    ld c, b                                       ; $5db0: $48
    add b                                         ; $5db1: $80
    push af                                       ; $5db2: $f5
    nop                                           ; $5db3: $00
    ld l, e                                       ; $5db4: $6b
    nop                                           ; $5db5: $00
    nop                                           ; $5db6: $00
    xor b                                         ; $5db7: $a8
    ld d, a                                       ; $5db8: $57
    ld d, a                                       ; $5db9: $57
    rst $38                                       ; $5dba: $ff
    add b                                         ; $5dbb: $80
    ld a, a                                       ; $5dbc: $7f
    push de                                       ; $5dbd: $d5
    nop                                           ; $5dbe: $00
    ld l, e                                       ; $5dbf: $6b
    add b                                         ; $5dc0: $80
    ld a, a                                       ; $5dc1: $7f
    jp hl                                         ; $5dc2: $e9


    ld b, a                                       ; $5dc3: $47
    ld a, $c1                                     ; $5dc4: $3e $c1
    ld a, [hl+]                                   ; $5dc6: $2a

jr_0c4_5dc7:
    nop                                           ; $5dc7: $00
    pop bc                                        ; $5dc8: $c1
    ld a, b                                       ; $5dc9: $78
    add a                                         ; $5dca: $87
    ld [hl], l                                    ; $5dcb: $75
    add e                                         ; $5dcc: $83
    ld e, b                                       ; $5dcd: $58
    add e                                         ; $5dce: $83
    ld d, h                                       ; $5dcf: $54
    ld bc, $54ab                                  ; $5dd0: $01 $ab $54
    add e                                         ; $5dd3: $83
    ld c, h                                       ; $5dd4: $4c
    sub e                                         ; $5dd5: $93
    ld bc, $38ee                                  ; $5dd6: $01 $ee $38
    add hl, bc                                    ; $5dd9: $09
    nop                                           ; $5dda: $00
    cp $ff                                        ; $5ddb: $fe $ff
    ld d, h                                       ; $5ddd: $54
    xor e                                         ; $5dde: $ab
    rst $38                                       ; $5ddf: $ff
    nop                                           ; $5de0: $00
    or a                                          ; $5de1: $b7
    nop                                           ; $5de2: $00
    db $10                                        ; $5de3: $10
    db $e4                                        ; $5de4: $e4
    dec de                                        ; $5de5: $1b

jr_0c4_5de6:
    ld d, h                                       ; $5de6: $54
    ld [hl], b                                    ; $5de7: $70
    nop                                           ; $5de8: $00
    xor h                                         ; $5de9: $ac
    inc bc                                        ; $5dea: $03
    ld d, [hl]                                    ; $5deb: $56
    xor e                                         ; $5dec: $ab
    ld [$57a8], sp                                ; $5ded: $08 $a8 $57

jr_0c4_5df0:
    ld a, [$7807]                                 ; $5df0: $fa $07 $78
    ld [$8e11], sp                                ; $5df3: $08 $11 $8e
    ld c, d                                       ; $5df6: $4a
    db $10                                        ; $5df7: $10
    or l                                          ; $5df8: $b5
    dec h                                         ; $5df9: $25
    ret c                                         ; $5dfa: $d8

    xor d                                         ; $5dfb: $aa
    ld bc, $2801                                  ; $5dfc: $01 $01 $28
    rst $10                                       ; $5dff: $d7
    sub h                                         ; $5e00: $94
    nop                                           ; $5e01: $00
    ld h, e                                       ; $5e02: $63
    nop                                           ; $5e03: $00
    rst $38                                       ; $5e04: $ff
    and l                                         ; $5e05: $a5
    ld e, b                                       ; $5e06: $58
    ld d, [hl]                                    ; $5e07: $56
    cp b                                          ; $5e08: $b8
    add h                                         ; $5e09: $84
    nop                                           ; $5e0a: $00
    ld a, e                                       ; $5e0b: $7b
    ld d, l                                       ; $5e0c: $55
    cp b                                          ; $5e0d: $b8
    and [hl]                                      ; $5e0e: $a6
    jr jr_0c4_5e27                                ; $5e0f: $18 $16

    ld sp, hl                                     ; $5e11: $f9
    and [hl]                                      ; $5e12: $a6
    nop                                           ; $5e13: $00
    jr jr_0c4_5e2b                                ; $5e14: $18 $15

    ld a, [$30ce]                                 ; $5e16: $fa $ce $30
    ld c, e                                       ; $5e19: $4b
    jr nc, jr_0c4_5de6                            ; $5e1a: $30 $ca

    ld a, [bc]                                    ; $5e1c: $0a
    dec [hl]                                      ; $5e1d: $35
    push de                                       ; $5e1e: $d5
    ccf                                           ; $5e1f: $3f
    push de                                       ; $5e20: $d5
    jr jr_0c4_5e25                                ; $5e21: $18 $02

    rst $10                                       ; $5e23: $d7
    inc e                                         ; $5e24: $1c

jr_0c4_5e25:
    ld [bc], a                                    ; $5e25: $02
    ei                                            ; $5e26: $fb

jr_0c4_5e27:
    nop                                           ; $5e27: $00
    nop                                           ; $5e28: $00
    ld h, a                                       ; $5e29: $67
    nop                                           ; $5e2a: $00

jr_0c4_5e2b:
    ld d, h                                       ; $5e2b: $54
    xor e                                         ; $5e2c: $ab
    xor e                                         ; $5e2d: $ab
    rst $38                                       ; $5e2e: $ff
    ret nz                                        ; $5e2f: $c0

    nop                                           ; $5e30: $00
    ccf                                           ; $5e31: $3f
    ld l, d                                       ; $5e32: $6a
    dec [hl]                                      ; $5e33: $35
    ld b, b                                       ; $5e34: $40
    ccf                                           ; $5e35: $3f
    ld l, d                                       ; $5e36: $6a
    ld sp, $003e                                  ; $5e37: $31 $3e $00
    pop bc                                        ; $5e3a: $c1
    ld h, $c1                                     ; $5e3b: $26 $c1
    inc a                                         ; $5e3d: $3c
    jp $c1ba                                      ; $5e3e: $c3 $ba $c1


    inc l                                         ; $5e41: $2c
    nop                                           ; $5e42: $00
    pop bc                                        ; $5e43: $c1
    xor d                                         ; $5e44: $aa
    push de                                       ; $5e45: $d5
    ld a, [hl+]                                   ; $5e46: $2a
    pop bc                                        ; $5e47: $c1
    ld l, e                                       ; $5e48: $6b

jr_0c4_5e49:
    call nz, $0055                                ; $5e49: $c4 $55 $00
    ld [$0815], sp                                ; $5e4c: $08 $15 $08
    or l                                          ; $5e4f: $b5
    ld a, [bc]                                    ; $5e50: $0a
    ld e, d                                       ; $5e51: $5a
    xor a                                         ; $5e52: $af
    xor d                                         ; $5e53: $aa
    ld [$ff55], sp                                ; $5e54: $08 $55 $ff
    nop                                           ; $5e57: $00
    xor l                                         ; $5e58: $ad
    ld e, d                                       ; $5e59: $5a
    inc b                                         ; $5e5a: $04
    ld c, d                                       ; $5e5b: $4a
    or b                                          ; $5e5c: $b0
    add hl, de                                    ; $5e5d: $19
    nop                                           ; $5e5e: $00
    ldh a, [$ca]                                  ; $5e5f: $f0 $ca
    jr nc, jr_0c4_5e78                            ; $5e61: $30 $15

    ld a, [$bd42]                                 ; $5e63: $fa $42 $bd
    rla                                           ; $5e66: $17
    nop                                           ; $5e67: $00
    ld hl, sp-$7a                                 ; $5e68: $f8 $86
    ld a, b                                       ; $5e6a: $78
    ld d, l                                       ; $5e6b: $55

jr_0c4_5e6c:
    cp d                                          ; $5e6c: $ba
    xor d                                         ; $5e6d: $aa
    ld d, c                                       ; $5e6e: $51
    dec b                                         ; $5e6f: $05
    jr nz, jr_0c4_5e6c                            ; $5e70: $20 $fa

    and d                                         ; $5e72: $a2
    ldh [rSC], a                                  ; $5e73: $e0 $02
    ld d, d                                       ; $5e75: $52
    dec c                                         ; $5e76: $0d
    xor c                                         ; $5e77: $a9

jr_0c4_5e78:
    ld d, [hl]                                    ; $5e78: $56
    ld b, h                                       ; $5e79: $44
    nop                                           ; $5e7a: $00
    jr c, @+$17                                   ; $5e7b: $38 $15

    ld [c], a                                     ; $5e7d: $e2
    ld [hl-], a                                   ; $5e7e: $32
    adc h                                         ; $5e7f: $8c
    call nc, Call_0c4_720f                        ; $5e80: $d4 $0f $72
    db $10                                        ; $5e83: $10
    adc h                                         ; $5e84: $8c
    ld [hl], l                                    ; $5e85: $75
    ld c, $50                                     ; $5e86: $0e $50
    add hl, hl                                    ; $5e88: $29
    dec h                                         ; $5e89: $25
    jp z, $c03a                                   ; $5e8a: $ca $3a $c0

    nop                                           ; $5e8d: $00
    inc b                                         ; $5e8e: $04
    jp hl                                         ; $5e8f: $e9


    db $dd                                        ; $5e90: $dd
    ldh [$d5], a                                  ; $5e91: $e0 $d5
    jr z, jr_0c4_5ee3                             ; $5e93: $28 $4e

    ld hl, $5d01                                  ; $5e95: $21 $01 $5d
    jr nz, @+$5f                                  ; $5e98: $20 $5d

    jr nz, jr_0c4_5e49                            ; $5e9a: $20 $ad

    nop                                           ; $5e9c: $00
    or l                                          ; $5e9d: $b5
    jr nc, jr_0c4_5eb1                            ; $5e9e: $30 $11

    inc b                                         ; $5ea0: $04
    ld a, [hl+]                                   ; $5ea1: $2a
    ret nz                                        ; $5ea2: $c0

    ld h, l                                       ; $5ea3: $65
    ret nz                                        ; $5ea4: $c0

    jr z, jr_0c4_5eab                             ; $5ea5: $28 $04

    nop                                           ; $5ea7: $00
    dec [hl]                                      ; $5ea8: $35
    ret nz                                        ; $5ea9: $c0

    inc b                                         ; $5eaa: $04

jr_0c4_5eab:
    or a                                          ; $5eab: $b7
    ret nz                                        ; $5eac: $c0

    dec d                                         ; $5ead: $15
    ld [$bbea], a                                 ; $5eae: $ea $ea $bb

jr_0c4_5eb1:
    ld b, $a5                                     ; $5eb1: $06 $a5
    ld e, d                                       ; $5eb3: $5a
    nop                                           ; $5eb4: $00
    jp nc, Jump_000_0001                          ; $5eb5: $d2 $01 $00

    rst $38                                       ; $5eb8: $ff
    ldh [rNR34], a                                ; $5eb9: $e0 $1e
    ld l, c                                       ; $5ebb: $69
    ld e, $00                                     ; $5ebc: $1e $00
    ldh [$1f], a                                  ; $5ebe: $e0 $1f
    rst $28                                       ; $5ec0: $ef
    rra                                           ; $5ec1: $1f
    ld b, h                                       ; $5ec2: $44
    dec sp                                        ; $5ec3: $3b
    rst $08                                       ; $5ec4: $cf
    jr nc, jr_0c4_5ec7                            ; $5ec5: $30 $00

jr_0c4_5ec7:
    ld c, a                                       ; $5ec7: $4f
    jr nc, jr_0c4_5f16                            ; $5ec8: $30 $4c

    or e                                          ; $5eca: $b3
    ld e, d                                       ; $5ecb: $5a
    ld bc, $d52a                                  ; $5ecc: $01 $2a $d5
    add d                                         ; $5ecf: $82
    cp d                                          ; $5ed0: $ba
    ld c, $b5                                     ; $5ed1: $0e $b5
    ld b, b                                       ; $5ed3: $40
    and d                                         ; $5ed4: $a2
    ld b, b                                       ; $5ed5: $40
    xor c                                         ; $5ed6: $a9
    inc b                                         ; $5ed7: $04
    nop                                           ; $5ed8: $00
    rra                                           ; $5ed9: $1f
    db $10                                        ; $5eda: $10
    ldh [rRP], a                                  ; $5edb: $e0 $56
    ldh [$30], a                                  ; $5edd: $e0 $30
    ld [$6a15], sp                                ; $5edf: $08 $15 $6a
    ccf                                           ; $5ee2: $3f

jr_0c4_5ee3:
    ld b, b                                       ; $5ee3: $40
    ld bc, $4035                                  ; $5ee4: $01 $35 $40
    ld a, [hl+]                                   ; $5ee7: $2a
    ld d, l                                       ; $5ee8: $55
    ld e, b                                       ; $5ee9: $58
    add b                                         ; $5eea: $80
    ld c, d                                       ; $5eeb: $4a
    or [hl]                                       ; $5eec: $b6
    inc b                                         ; $5eed: $04
    nop                                           ; $5eee: $00
    xor d                                         ; $5eef: $aa
    push de                                       ; $5ef0: $d5
    ld d, d                                       ; $5ef1: $52
    xor l                                         ; $5ef2: $ad
    cp $01                                        ; $5ef3: $fe $01
    ld l, d                                       ; $5ef5: $6a
    ld bc, $5600                                  ; $5ef6: $01 $00 $56
    xor c                                         ; $5ef9: $a9
    and b                                         ; $5efa: $a0
    ld e, a                                       ; $5efb: $5f
    push de                                       ; $5efc: $d5
    ld l, e                                       ; $5efd: $6b
    adc b                                         ; $5efe: $88
    ld [hl], e                                    ; $5eff: $73

Jump_0c4_5f00:
    nop                                           ; $5f00: $00
    pop bc                                        ; $5f01: $c1
    ld a, a                                       ; $5f02: $7f
    ld hl, $93c2                                  ; $5f03: $21 $c2 $93
    xor $29                                       ; $5f06: $ee $29
    add $00                                       ; $5f08: $c6 $00
    add e                                         ; $5f0a: $83
    cp $74                                        ; $5f0b: $fe $74
    add e                                         ; $5f0d: $83
    ld l, h                                       ; $5f0e: $6c
    add e                                         ; $5f0f: $83
    ld c, b                                       ; $5f10: $48
    or a                                          ; $5f11: $b7
    ld bc, $ffb6                                  ; $5f12: $01 $b6 $ff
    xor d                                         ; $5f15: $aa

jr_0c4_5f16:
    ld bc, $0112                                  ; $5f16: $01 $12 $01
    ld c, d                                       ; $5f19: $4a
    inc b                                         ; $5f1a: $04
    nop                                           ; $5f1b: $00
    nop                                           ; $5f1c: $00
    sbc $00                                       ; $5f1d: $de $00
    xor c                                         ; $5f1f: $a9
    nop                                           ; $5f20: $00
    db $ec                                        ; $5f21: $ec
    inc de                                        ; $5f22: $13
    cp [hl]                                       ; $5f23: $be
    nop                                           ; $5f24: $00
    nop                                           ; $5f25: $00
    reti                                          ; $5f26: $d9


    nop                                           ; $5f27: $00
    ld l, e                                       ; $5f28: $6b
    sub h                                         ; $5f29: $94
    jp hl                                         ; $5f2a: $e9


    nop                                           ; $5f2b: $00
    xor d                                         ; $5f2c: $aa
    ld de, $b800                                  ; $5f2d: $11 $00 $b8
    rlca                                          ; $5f30: $07
    ld e, l                                       ; $5f31: $5d
    ld b, $b8                                     ; $5f32: $06 $b8
    ld b, a                                       ; $5f34: $47
    cp a                                          ; $5f35: $bf
    rlca                                          ; $5f36: $07
    nop                                           ; $5f37: $00
    ld [hl], c                                    ; $5f38: $71
    ld c, $f3                                     ; $5f39: $0e $f3
    inc c                                         ; $5f3b: $0c
    inc sp                                        ; $5f3c: $33
    inc c                                         ; $5f3d: $0c
    sub e                                         ; $5f3e: $93
    ld l, h                                       ; $5f3f: $6c
    ld [$0097], sp                                ; $5f40: $08 $97 $00
    ld c, c                                       ; $5f43: $49
    or [hl]                                       ; $5f44: $b6
    ld a, [hl+]                                   ; $5f45: $2a
    rrca                                          ; $5f46: $0f
    ld d, l                                       ; $5f47: $55
    xor b                                         ; $5f48: $a8
    db $f4                                        ; $5f49: $f4
    nop                                           ; $5f4a: $00
    ld [$08b6], sp                                ; $5f4b: $08 $b6 $08
    ld d, h                                       ; $5f4e: $54
    xor b                                         ; $5f4f: $a8
    ld b, a                                       ; $5f50: $47
    cp b                                          ; $5f51: $b8
    dec d                                         ; $5f52: $15
    ld b, b                                       ; $5f53: $40
    ld hl, sp-$10                                 ; $5f54: $f8 $f0
    inc c                                         ; $5f56: $0c
    ld d, d                                       ; $5f57: $52
    dec c                                         ; $5f58: $0d
    sub a                                         ; $5f59: $97
    ld [$0857], sp                                ; $5f5a: $08 $57 $08
    ld b, $94                                     ; $5f5d: $06 $94
    dec bc                                        ; $5f5f: $0b
    sub $20                                       ; $5f60: $d6 $20
    ld d, d                                       ; $5f62: $52
    ld d, b                                       ; $5f63: $50
    inc de                                        ; $5f64: $13
    and b                                         ; $5f65: $a0
    ld l, $48                                     ; $5f66: $2e $48
    nop                                           ; $5f68: $00
    scf                                           ; $5f69: $37
    push hl                                       ; $5f6a: $e5
    ld a, [hl-]                                   ; $5f6b: $3a
    jp nz, $603c                                  ; $5f6c: $c2 $3c $60

    cp a                                          ; $5f6f: $bf
    ld [$f000], sp                                ; $5f70: $08 $00 $f0
    and h                                         ; $5f73: $a4
    ld a, e                                       ; $5f74: $7b
    ld a, [bc]                                    ; $5f75: $0a
    ld [hl], c                                    ; $5f76: $71
    and b                                         ; $5f77: $a0
    ld a, a                                       ; $5f78: $7f
    dec a                                         ; $5f79: $3d
    nop                                           ; $5f7a: $00
    ret nz                                        ; $5f7b: $c0

    ld [hl], e                                    ; $5f7c: $73
    ret nz                                        ; $5f7d: $c0

    ld a, [hl+]                                   ; $5f7e: $2a
    push de                                       ; $5f7f: $d5
    ld d, l                                       ; $5f80: $55
    rst $38                                       ; $5f81: $ff
    ld a, [hl-]                                   ; $5f82: $3a
    add b                                         ; $5f83: $80
    cp b                                          ; $5f84: $b8
    inc de                                        ; $5f85: $13
    ld h, h                                       ; $5f86: $64
    ret nz                                        ; $5f87: $c0

    cpl                                           ; $5f88: $2f
    ret nz                                        ; $5f89: $c0

    inc [hl]                                      ; $5f8a: $34
    ret nz                                        ; $5f8b: $c0

    scf                                           ; $5f8c: $37
    nop                                           ; $5f8d: $00
    ret z                                         ; $5f8e: $c8

    cp e                                          ; $5f8f: $bb
    ret nz                                        ; $5f90: $c0

    cp d                                          ; $5f91: $ba
    ld b, b                                       ; $5f92: $40

jr_0c4_5f93:
    xor h                                         ; $5f93: $ac
    ld d, e                                       ; $5f94: $53
    xor [hl]                                      ; $5f95: $ae
    nop                                           ; $5f96: $00
    ld b, b                                       ; $5f97: $40
    or h                                          ; $5f98: $b4
    ld b, d                                       ; $5f99: $42
    cp h                                          ; $5f9a: $bc
    inc bc                                        ; $5f9b: $03
    ld e, l                                       ; $5f9c: $5d
    inc bc                                        ; $5f9d: $03
    inc l                                         ; $5f9e: $2c
    ld [bc], a                                    ; $5f9f: $02
    db $d3                                        ; $5fa0: $d3
    cp l                                          ; $5fa1: $bd
    inc bc                                        ; $5fa2: $03
    ld e, d                                       ; $5fa3: $5a
    ld bc, $90fe                                  ; $5fa4: $01 $fe $90
    nop                                           ; $5fa7: $00
    xor d                                         ; $5fa8: $aa
    inc b                                         ; $5fa9: $04
    ld d, l                                       ; $5faa: $55
    daa                                           ; $5fab: $27
    ret nz                                        ; $5fac: $c0

    ld d, c                                       ; $5fad: $51
    xor [hl]                                      ; $5fae: $ae
    ld [hl], b                                    ; $5faf: $70
    db $10                                        ; $5fb0: $10
    xor d                                         ; $5fb1: $aa
    ld a, l                                       ; $5fb2: $7d
    nop                                           ; $5fb3: $00
    add d                                         ; $5fb4: $82
    ld l, l                                       ; $5fb5: $6d
    add d                                         ; $5fb6: $82
    ld d, l                                       ; $5fb7: $55
    xor d                                         ; $5fb8: $aa
    ld d, c                                       ; $5fb9: $51
    ld l, $44                                     ; $5fba: $2e $44
    ld b, b                                       ; $5fbc: $40
    cp [hl]                                       ; $5fbd: $be
    xor d                                         ; $5fbe: $aa
    rrca                                          ; $5fbf: $0f
    or h                                          ; $5fc0: $b4
    inc bc                                        ; $5fc1: $03
    dec h                                         ; $5fc2: $25
    ld [bc], a                                    ; $5fc3: $02
    ld d, l                                       ; $5fc4: $55
    ld [bc], a                                    ; $5fc5: $02
    nop                                           ; $5fc6: $00
    dec h                                         ; $5fc7: $25
    ld [bc], a                                    ; $5fc8: $02
    push af                                       ; $5fc9: $f5
    ld [$08d5], sp                                ; $5fca: $08 $d5 $08
    and l                                         ; $5fcd: $a5
    ld e, b                                       ; $5fce: $58
    nop                                           ; $5fcf: $00
    ld e, d                                       ; $5fd0: $5a
    db $fd                                        ; $5fd1: $fd
    xor c                                         ; $5fd2: $a9
    ld d, [hl]                                    ; $5fd3: $56
    rst $38                                       ; $5fd4: $ff
    nop                                           ; $5fd5: $00
    xor [hl]                                      ; $5fd6: $ae
    nop                                           ; $5fd7: $00
    nop                                           ; $5fd8: $00
    ld d, c                                       ; $5fd9: $51
    xor [hl]                                      ; $5fda: $ae
    ld [de], a                                    ; $5fdb: $12
    dec c                                         ; $5fdc: $0d
    ld e, c                                       ; $5fdd: $59
    ld c, $b0                                     ; $5fde: $0e $b0
    rrca                                          ; $5fe0: $0f
    db $10                                        ; $5fe1: $10
    ld e, b                                       ; $5fe2: $58
    xor a                                         ; $5fe3: $af
    ld d, c                                       ; $5fe4: $51
    ld h, b                                       ; $5fe5: $60
    ld [bc], a                                    ; $5fe6: $02
    pop de                                        ; $5fe7: $d1
    ld c, $74                                     ; $5fe8: $0e $74
    adc a                                         ; $5fea: $8f
    nop                                           ; $5feb: $00
    rrca                                          ; $5fec: $0f

jr_0c4_5fed:
    ldh a, [$2c]                                  ; $5fed: $f0 $2c
    ldh a, [$8a]                                  ; $5fef: $f0 $8a
    ld [hl], l                                    ; $5ff1: $75
    dec [hl]                                      ; $5ff2: $35
    rst $38                                       ; $5ff3: $ff
    nop                                           ; $5ff4: $00
    dec c                                         ; $5ff5: $0d
    jr nc, @+$1a                                  ; $5ff6: $30 $18

    ldh a, [$8a]                                  ; $5ff8: $f0 $8a
    ld [hl], b                                    ; $5ffa: $70
    jr jr_0c4_5fed                                ; $5ffb: $18 $f0

    nop                                           ; $5ffd: $00
    rst $08                                       ; $5ffe: $cf
    jr nc, jr_0c4_5f93                            ; $5fff: $30 $92

    ld h, b                                       ; $6001: $60
    ld e, $e1                                     ; $6002: $1e $e1
    db $dd                                        ; $6004: $dd
    ldh [rP1], a                                  ; $6005: $e0 $00
    ld d, $e0                                     ; $6007: $16 $e0
    ld d, l                                       ; $6009: $55
    ld [$c02b], a                                 ; $600a: $ea $2b $c0
    xor e                                         ; $600d: $ab
    call nz, $ab00                                ; $600e: $c4 $00 $ab
    ld b, b                                       ; $6011: $40
    ld b, h                                       ; $6012: $44
    add b                                         ; $6013: $80
    ld b, [hl]                                    ; $6014: $46
    add b                                         ; $6015: $80
    ld d, h                                       ; $6016: $54
    add b                                         ; $6017: $80
    ld d, b                                       ; $6018: $50
    ld b, d                                       ; $6019: $42
    inc b                                         ; $601a: $04
    nop                                           ; $601b: $00
    ld h, l                                       ; $601c: $65
    adc h                                         ; $601d: $8c
    inc bc                                        ; $601e: $03
    ld a, [hl-]                                   ; $601f: $3a
    ld b, b                                       ; $6020: $40
    cp d                                          ; $6021: $ba
    ld b, b                                       ; $6022: $40
    db $10                                        ; $6023: $10
    or h                                          ; $6024: $b4
    ld c, e                                       ; $6025: $4b
    cp l                                          ; $6026: $bd
    adc $04                                       ; $6027: $ce $04
    cp a                                          ; $6029: $bf
    ld b, b                                       ; $602a: $40
    ld d, d                                       ; $602b: $52
    add b                                         ; $602c: $80
    nop                                           ; $602d: $00
    ld d, l                                       ; $602e: $55
    xor d                                         ; $602f: $aa
    cp $01                                        ; $6030: $fe $01
    ld a, [hl+]                                   ; $6032: $2a
    ld bc, $11ee                                  ; $6033: $01 $ee $11
    nop                                           ; $6036: $00
    jp c, Jump_0c4_6e01                           ; $6037: $da $01 $6e

    ld bc, $a55a                                  ; $603a: $01 $5a $a5
    or l                                          ; $603d: $b5
    ld [bc], a                                    ; $603e: $02
    nop                                           ; $603f: $00
    xor l                                         ; $6040: $ad
    ld b, d                                       ; $6041: $42
    dec l                                         ; $6042: $2d
    jp nz, $d6ab                                  ; $6043: $c2 $ab $d6

    ld bc, $00fe                                  ; $6046: $01 $fe $00
    rst $38                                       ; $6049: $ff
    cp $d7                                        ; $604a: $fe $d7
    nop                                           ; $604c: $00
    and e                                         ; $604d: $a3
    nop                                           ; $604e: $00
    ld c, d                                       ; $604f: $4a
    nop                                           ; $6050: $00
    nop                                           ; $6051: $00
    ld [hl+], a                                   ; $6052: $22
    nop                                           ; $6053: $00
    ld e, d                                       ; $6054: $5a
    ld bc, $0215                                  ; $6055: $01 $15 $02
    dec e                                         ; $6058: $1d
    ld [bc], a                                    ; $6059: $02
    db $10                                        ; $605a: $10
    ld d, [hl]                                    ; $605b: $56
    inc bc                                        ; $605c: $03
    inc c                                         ; $605d: $0c
    and b                                         ; $605e: $a0
    inc bc                                        ; $605f: $03
    sub h                                         ; $6060: $94
    inc bc                                        ; $6061: $03
    ld h, $03                                     ; $6062: $26 $03
    ld de, $00df                                  ; $6064: $11 $df $00
    and a                                         ; $6067: $a7
    jr nc, jr_0c4_607c                            ; $6068: $30 $12

    nop                                           ; $606a: $00
    rst $38                                       ; $606b: $ff
    ld b, $9a                                     ; $606c: $06 $9a
    rlca                                          ; $606e: $07
    nop                                           ; $606f: $00
    inc c                                         ; $6070: $0c
    rst $38                                       ; $6071: $ff
    ld [hl], e                                    ; $6072: $73
    inc c                                         ; $6073: $0c
    ld d, d                                       ; $6074: $52

Jump_0c4_6075:
    inc c                                         ; $6075: $0c
    and e                                         ; $6076: $a3
    ld e, h                                       ; $6077: $5c
    nop                                           ; $6078: $00
    ld e, e                                       ; $6079: $5b
    db $fc                                        ; $607a: $fc
    ld [bc], a                                    ; $607b: $02

jr_0c4_607c:
    db $fc                                        ; $607c: $fc
    xor d                                         ; $607d: $aa
    ld e, l                                       ; $607e: $5d
    ld [bc], a                                    ; $607f: $02
    ld a, h                                       ; $6080: $7c
    nop                                           ; $6081: $00
    adc d                                         ; $6082: $8a
    ld a, h                                       ; $6083: $7c
    or $08                                        ; $6084: $f6 $08
    ld c, b                                       ; $6086: $48
    db $10                                        ; $6087: $10
    ret z                                         ; $6088: $c8

    jr nc, jr_0c4_608b                            ; $6089: $30 $00

jr_0c4_608b:
    xor d                                         ; $608b: $aa
    db $10                                        ; $608c: $10
    ret z                                         ; $608d: $c8

    db $10                                        ; $608e: $10
    xor d                                         ; $608f: $aa
    ld d, b                                       ; $6090: $50
    ld [$0010], a                                 ; $6091: $ea $10 $00

Call_0c4_6094:
    xor b                                         ; $6094: $a8
    ld d, b                                       ; $6095: $50
    rst $10                                       ; $6096: $d7
    ld [$0897], sp                                ; $6097: $08 $97 $08
    sub $09                                       ; $609a: $d6 $09

jr_0c4_609c:
    inc d                                         ; $609c: $14
    sub a                                         ; $609d: $97
    ld [$0855], sp                                ; $609e: $08 $55 $08
    nop                                           ; $60a1: $00
    ld d, l                                       ; $60a2: $55
    ld b, b                                       ; $60a3: $40
    ld bc, $00be                                  ; $60a4: $01 $be $00
    nop                                           ; $60a7: $00
    ld b, l                                       ; $60a8: $45
    nop                                           ; $60a9: $00
    sbc l                                         ; $60aa: $9d
    ld h, d                                       ; $60ab: $62
    cp e                                          ; $60ac: $bb
    nop                                           ; $60ad: $00
    ld c, l                                       ; $60ae: $4d
    nop                                           ; $60af: $00
    nop                                           ; $60b0: $00
    db $eb                                        ; $60b1: $eb
    inc d                                         ; $60b2: $14
    ld c, e                                       ; $60b3: $4b
    nop                                           ; $60b4: $00
    xor d                                         ; $60b5: $aa
    ld b, h                                       ; $60b6: $44
    adc e                                         ; $60b7: $8b
    ld [hl], b                                    ; $60b8: $70
    nop                                           ; $60b9: $00
    ld d, l                                       ; $60ba: $55
    ld a, [hl-]                                   ; $60bb: $3a
    ret nz                                        ; $60bc: $c0

    ccf                                           ; $60bd: $3f
    ld e, a                                       ; $60be: $5f
    ccf                                           ; $60bf: $3f
    jp c, RST_20                                  ; $60c0: $da $20 $00

    ld d, h                                       ; $60c3: $54
    and b                                         ; $60c4: $a0
    ld d, l                                       ; $60c5: $55
    jr nz, jr_0c4_609c                            ; $60c6: $20 $d4

    jr nz, jr_0c4_60f8                            ; $60c8: $20 $2e

    ret nz                                        ; $60ca: $c0

    nop                                           ; $60cb: $00
    ld h, d                                       ; $60cc: $62
    ret nz                                        ; $60cd: $c0

    inc hl                                        ; $60ce: $23
    ret nz                                        ; $60cf: $c0

    ld [$e1c0], a                                 ; $60d0: $ea $c0 $e1
    nop                                           ; $60d3: $00
    nop                                           ; $60d4: $00
    ld l, d                                       ; $60d5: $6a
    nop                                           ; $60d6: $00
    ld l, c                                       ; $60d7: $69
    nop                                           ; $60d8: $00
    ld h, d                                       ; $60d9: $62
    nop                                           ; $60da: $00
    xor e                                         ; $60db: $ab
    ld b, b                                       ; $60dc: $40
    nop                                           ; $60dd: $00
    or h                                          ; $60de: $b4
    ld b, b                                       ; $60df: $40
    xor d                                         ; $60e0: $aa
    ld d, l                                       ; $60e1: $55
    push de                                       ; $60e2: $d5
    ld a, a                                       ; $60e3: $7f
    add b                                         ; $60e4: $80
    ld a, a                                       ; $60e5: $7f
    nop                                           ; $60e6: $00
    ret nz                                        ; $60e7: $c0

    ld a, a                                       ; $60e8: $7f
    ld b, b                                       ; $60e9: $40
    ccf                                           ; $60ea: $3f
    ld h, b                                       ; $60eb: $60
    ccf                                           ; $60ec: $3f
    sub $01                                       ; $60ed: $d6 $01
    inc b                                         ; $60ef: $04
    ld [$9401], a                                 ; $60f0: $ea $01 $94
    ld l, e                                       ; $60f3: $6b
    ld l, e                                       ; $60f4: $6b
    jr nz, @+$0e                                  ; $60f5: $20 $0c

    db $eb                                        ; $60f7: $eb

jr_0c4_60f8:
    nop                                           ; $60f8: $00
    nop                                           ; $60f9: $00
    rst $30                                       ; $60fa: $f7
    ret z                                         ; $60fb: $c8

    rst $30                                       ; $60fc: $f7
    ld a, l                                       ; $60fd: $7d
    add d                                         ; $60fe: $82
    ld c, c                                       ; $60ff: $49
    add d                                         ; $6100: $82
    ld a, c                                       ; $6101: $79
    ld [$7586], sp                                ; $6102: $08 $86 $75
    add d                                         ; $6105: $82
    ld e, c                                       ; $6106: $59
    inc a                                         ; $6107: $3c
    ld bc, $8156                                  ; $6108: $01 $56 $81
    sub $00                                       ; $610b: $d6 $00
    adc c                                         ; $610d: $89
    ld [hl], l                                    ; $610e: $75
    ld [bc], a                                    ; $610f: $02
    ld [de], a                                    ; $6110: $12
    ld bc, $011a                                  ; $6111: $01 $1a $01
    ld d, d                                       ; $6114: $52
    jr nz, jr_0c4_6118                            ; $6115: $20 $01

    ld a, [bc]                                    ; $6117: $0a

jr_0c4_6118:
    inc b                                         ; $6118: $04
    nop                                           ; $6119: $00
    and [hl]                                      ; $611a: $a6
    ld bc, $018a                                  ; $611b: $01 $8a $01
    rst $10                                       ; $611e: $d7
    ld [bc], a                                    ; $611f: $02
    nop                                           ; $6120: $00
    add sp, $00                                   ; $6121: $e8 $00
    db $d3                                        ; $6123: $d3
    inc l                                         ; $6124: $2c
    rst $30                                       ; $6125: $f7
    or $01                                        ; $6126: $f6 $01
    db $fd                                        ; $6128: $fd
    nop                                           ; $6129: $00
    ld [bc], a                                    ; $612a: $02
    and h                                         ; $612b: $a4
    nop                                           ; $612c: $00
    xor d                                         ; $612d: $aa
    ld d, h                                       ; $612e: $54
    or c                                          ; $612f: $b1
    ld c, $aa                                     ; $6130: $0e $aa
    nop                                           ; $6132: $00

jr_0c4_6133:
    rlca                                          ; $6133: $07
    cp b                                          ; $6134: $b8
    ld b, a                                       ; $6135: $47
    ld l, e                                       ; $6136: $6b
    rlca                                          ; $6137: $07
    cp e                                          ; $6138: $bb
    inc b                                         ; $6139: $04
    ld l, d                                       ; $613a: $6a
    nop                                           ; $613b: $00
    sub h                                         ; $613c: $94
    cp d                                          ; $613d: $ba
    inc b                                         ; $613e: $04
    xor d                                         ; $613f: $aa
    ld b, h                                       ; $6140: $44
    jp z, $ac30                                   ; $6141: $ca $30 $ac

    ld [bc], a                                    ; $6144: $02
    ld e, b                                       ; $6145: $58
    inc b                                         ; $6146: $04
    ld hl, sp-$03                                 ; $6147: $f8 $fd
    ld hl, sp+$5c                                 ; $6149: $f8 $5c
    ld c, b                                       ; $614b: $48
    inc b                                         ; $614c: $04
    sub [hl]                                      ; $614d: $96
    inc bc                                        ; $614e: $03

jr_0c4_614f:
    nop                                           ; $614f: $00
    ld b, [hl]                                    ; $6150: $46
    nop                                           ; $6151: $00
    dec a                                         ; $6152: $3d
    ret nz                                        ; $6153: $c0

    or e                                          ; $6154: $b3
    ret nz                                        ; $6155: $c0

    ld bc, $08e0                                  ; $6156: $01 $e0 $08
    nop                                           ; $6159: $00
    adc d                                         ; $615a: $8a
    push af                                       ; $615b: $f5
    jr z, jr_0c4_6133                             ; $615c: $28 $d5

    add d                                         ; $615e: $82
    db $dd                                        ; $615f: $dd
    ld h, l                                       ; $6160: $65
    add b                                         ; $6161: $80
    nop                                           ; $6162: $00
    ld b, c                                       ; $6163: $41
    add b                                         ; $6164: $80
    ld l, e                                       ; $6165: $6b
    add b                                         ; $6166: $80
    ld d, e                                       ; $6167: $53
    xor l                                         ; $6168: $ad
    nop                                           ; $6169: $00
    rst $38                                       ; $616a: $ff
    ld bc, $6f92                                  ; $616b: $01 $92 $6f
    jr nz, jr_0c4_614f                            ; $616e: $20 $df

    ld d, d                                       ; $6170: $52
    adc a                                         ; $6171: $8f
    ld l, e                                       ; $6172: $6b
    inc h                                         ; $6173: $24
    rlca                                          ; $6174: $07
    ld b, b                                       ; $6175: $40
    ld d, l                                       ; $6176: $55
    dec c                                         ; $6177: $0d
    inc bc                                        ; $6178: $03
    ld d, l                                       ; $6179: $55
    xor d                                         ; $617a: $aa
    or l                                          ; $617b: $b5
    nop                                           ; $617c: $00
    rl h                                          ; $617d: $cb $14
    nop                                           ; $617f: $00
    or [hl]                                       ; $6180: $b6
    nop                                           ; $6181: $00
    push de                                       ; $6182: $d5
    ld [bc], a                                    ; $6183: $02
    xor l                                         ; $6184: $ad
    ld [bc], a                                    ; $6185: $02
    add hl, hl                                    ; $6186: $29
    sub $00                                       ; $6187: $d6 $00
    ld d, [hl]                                    ; $6189: $56
    cp $54                                        ; $618a: $fe $54
    xor d                                         ; $618c: $aa
    db $fc                                        ; $618d: $fc

jr_0c4_618e:
    ld [bc], a                                    ; $618e: $02
    or h                                          ; $618f: $b4
    ld [bc], a                                    ; $6190: $02
    ld de, $825c                                  ; $6191: $11 $5c $82
    ld l, d                                       ; $6194: $6a
    inc [hl]                                      ; $6195: $34
    ld bc, $0062                                  ; $6196: $01 $62 $00
    ld d, l                                       ; $6199: $55
    inc a                                         ; $619a: $3c
    dec b                                         ; $619b: $05
    xor b                                         ; $619c: $a8
    jr nc, jr_0c4_61a8                            ; $619d: $30 $09

    ld b, [hl]                                    ; $619f: $46
    inc [hl]                                      ; $61a0: $34
    ld bc, $a006                                  ; $61a1: $01 $06 $a0
    inc bc                                        ; $61a4: $03
    ld d, a                                       ; $61a5: $57
    xor e                                         ; $61a6: $ab
    inc bc                                        ; $61a7: $03

jr_0c4_61a8:
    db $10                                        ; $61a8: $10
    db $fc                                        ; $61a9: $fc
    ld b, $fc                                     ; $61aa: $06 $fc
    inc b                                         ; $61ac: $04
    ld [$fe01], sp                                ; $61ad: $08 $01 $fe
    inc c                                         ; $61b0: $0c
    rst $38                                       ; $61b1: $ff
    nop                                           ; $61b2: $00
    ld bc, $fcfe                                  ; $61b3: $01 $fe $fc
    rst $38                                       ; $61b6: $ff
    ld e, b                                       ; $61b7: $58
    rlca                                          ; $61b8: $07
    adc h                                         ; $61b9: $8c
    rlca                                          ; $61ba: $07
    ld b, b                                       ; $61bb: $40
    jr z, jr_0c4_61c2                             ; $61bc: $28 $04

    nop                                           ; $61be: $00
    inc hl                                        ; $61bf: $23
    ld e, h                                       ; $61c0: $5c
    adc e                                         ; $61c1: $8b

jr_0c4_61c2:
    ld a, h                                       ; $61c2: $7c
    ld [bc], a                                    ; $61c3: $02
    ld a, l                                       ; $61c4: $7d
    nop                                           ; $61c5: $00
    dec l                                         ; $61c6: $2d
    ld e, a                                       ; $61c7: $5f
    nop                                           ; $61c8: $00
    ld e, a                                       ; $61c9: $5f
    xor h                                         ; $61ca: $ac
    ld e, a                                       ; $61cb: $5f
    nop                                           ; $61cc: $00
    rst $18                                       ; $61cd: $df
    nop                                           ; $61ce: $00
    xor h                                         ; $61cf: $ac
    ld e, a                                       ; $61d0: $5f
    ld [$6810], a                                 ; $61d1: $ea $10 $68
    db $10                                        ; $61d4: $10
    adc d                                         ; $61d5: $8a
    ld [hl], b                                    ; $61d6: $70
    jr nz, jr_0c4_618e                            ; $61d7: $20 $b5

    ld a, [$0660]                                 ; $61d9: $fa $60 $06
    ld d, [hl]                                    ; $61dc: $56
    add d                                         ; $61dd: $82
    ld e, l                                       ; $61de: $5d
    dec h                                         ; $61df: $25
    ret c                                         ; $61e0: $d8

    ld b, b                                       ; $61e1: $40
    ld d, a                                       ; $61e2: $57
    add b                                         ; $61e3: $80
    inc bc                                        ; $61e4: $03
    or h                                          ; $61e5: $b4
    dec bc                                        ; $61e6: $0b
    ld e, e                                       ; $61e7: $5b
    xor a                                         ; $61e8: $af
    ld [bc], a                                    ; $61e9: $02
    db $fd                                        ; $61ea: $fd
    nop                                           ; $61eb: $00
    ld d, l                                       ; $61ec: $55
    cp b                                          ; $61ed: $b8
    ld b, $b9                                     ; $61ee: $06 $b9
    ld d, l                                       ; $61f0: $55
    cp b                                          ; $61f1: $b8
    ld a, l                                       ; $61f2: $7d
    nop                                           ; $61f3: $00
    ld b, b                                       ; $61f4: $40
    or d                                          ; $61f5: $b2
    ret nz                                        ; $61f6: $c0

    dec e                                         ; $61f7: $1d
    xor d                                         ; $61f8: $aa
    ld e, a                                       ; $61f9: $5f
    nop                                           ; $61fa: $00
    cp e                                          ; $61fb: $bb
    ld b, b                                       ; $61fc: $40
    ld h, l                                       ; $61fd: $65
    ld b, b                                       ; $61fe: $40
    ld [$0934], sp                                ; $61ff: $08 $34 $09
    sub h                                         ; $6202: $94
    ld h, b                                       ; $6203: $60
    ld [hl], e                                    ; $6204: $73
    ldh [rHDMA4], a                               ; $6205: $e0 $54
    and b                                         ; $6207: $a0
    ld de, $20d3                                  ; $6208: $11 $d3 $20
    ld d, l                                       ; $620b: $55
    db $ec                                        ; $620c: $ec
    dec b                                         ; $620d: $05
    ld l, c                                       ; $620e: $69
    nop                                           ; $620f: $00
    ld h, b                                       ; $6210: $60
    ld a, [hl-]                                   ; $6211: $3a
    ld bc, $5530                                  ; $6212: $01 $30 $55
    ld a, [hl+]                                   ; $6215: $2a
    inc l                                         ; $6216: $2c
    add hl, bc                                    ; $6217: $09
    inc b                                         ; $6218: $04
    jr z, @-$3e                                   ; $6219: $28 $c0

    ccf                                           ; $621b: $3f
    ld a, a                                       ; $621c: $7f
    cp a                                          ; $621d: $bf
    ret nz                                        ; $621e: $c0

    adc h                                         ; $621f: $8c
    ld a, [bc]                                    ; $6220: $0a
    ld c, h                                       ; $6221: $4c
    ld c, $12                                     ; $6222: $0e $12
    push hl                                       ; $6224: $e5
    ret z                                         ; $6225: $c8

    rst $30                                       ; $6226: $f7
    db $10                                        ; $6227: $10
    rst $20                                       ; $6228: $e7
    nop                                           ; $6229: $00
    jp nz, $80f5                                  ; $622a: $c2 $f5 $80

    ld [hl], l                                    ; $622d: $75
    jp z, $8075                                   ; $622e: $ca $75 $80

    ld a, l                                       ; $6231: $7d
    nop                                           ; $6232: $00
    jp z, Jump_0c4_7a75                           ; $6233: $ca $75 $7a

    add c                                         ; $6236: $81
    and $81                                       ; $6237: $e6 $81
    ld d, h                                       ; $6239: $54
    xor e                                         ; $623a: $ab
    ld b, b                                       ; $623b: $40
    push de                                       ; $623c: $d5
    ret nc                                        ; $623d: $d0

    rlca                                          ; $623e: $07
    push bc                                       ; $623f: $c5
    ld a, [$ea14]                                 ; $6240: $fa $14 $ea
    pop bc                                        ; $6243: $c1
    xor $00                                       ; $6244: $ee $00
    and [hl]                                      ; $6246: $a6
    ld bc, $0182                                  ; $6247: $01 $82 $01
    xor d                                         ; $624a: $aa
    ld bc, $aad5                                  ; $624b: $01 $d5 $aa
    nop                                           ; $624e: $00
    nop                                           ; $624f: $00
    rst $38                                       ; $6250: $ff
    dec d                                         ; $6251: $15
    db $eb                                        ; $6252: $eb
    jr nz, @-$23                                  ; $6253: $20 $db

    ld d, l                                       ; $6255: $55
    adc e                                         ; $6256: $8b
    jr @-$27                                      ; $6257: $18 $d7

    nop                                           ; $6259: $00
    xor e                                         ; $625a: $ab
    jr nc, jr_0c4_6263                            ; $625b: $30 $06

    or b                                          ; $625d: $b0
    inc bc                                        ; $625e: $03
    push de                                       ; $625f: $d5
    ld e, d                                       ; $6260: $5a
    add b                                         ; $6261: $80
    nop                                           ; $6262: $00

jr_0c4_6263:
    ld h, l                                       ; $6263: $65
    adc d                                         ; $6264: $8a
    ld e, e                                       ; $6265: $5b
    add b                                         ; $6266: $80
    jp c, Jump_000_2a04                           ; $6267: $da $04 $2a

    inc b                                         ; $626a: $04
    ld bc, $5ca2                                  ; $626b: $01 $a2 $5c
    rst $10                                       ; $626e: $d7
    cp $95                                        ; $626f: $fe $95
    ld l, d                                       ; $6271: $6a
    db $fd                                        ; $6272: $fd
    xor d                                         ; $6273: $aa
    ld b, $10                                     ; $6274: $06 $10
    dec e                                         ; $6276: $1d
    ld b, d                                       ; $6277: $42
    sub $34                                       ; $6278: $d6 $34
    ld bc, $00c6                                  ; $627a: $01 $c6 $00
    ld a, [hl+]                                   ; $627d: $2a
    ld bc, $4210                                  ; $627e: $01 $10 $42
    ld bc, $602b                                  ; $6281: $01 $2b $60
    inc bc                                        ; $6284: $03
    inc hl                                        ; $6285: $23
    ld bc, $b209                                  ; $6286: $01 $09 $b2
    nop                                           ; $6289: $00
    ld d, h                                       ; $628a: $54
    xor e                                         ; $628b: $ab
    ld [$51a3], sp                                ; $628c: $08 $a3 $51
    xor d                                         ; $628f: $aa
    ld b, b                                       ; $6290: $40
    cp d                                          ; $6291: $ba
    ld [$d52a], sp                                ; $6292: $08 $2a $d5
    ld bc, $bcfc                                  ; $6295: $01 $fc $bc
    inc bc                                        ; $6298: $03
    or a                                          ; $6299: $b7
    ld l, d                                       ; $629a: $6a
    sub a                                         ; $629b: $97
    nop                                           ; $629c: $00
    add b                                         ; $629d: $80
    ld e, a                                       ; $629e: $5f
    ld a, [hl+]                                   ; $629f: $2a
    rst $10                                       ; $62a0: $d7
    sub b                                         ; $62a1: $90
    ld l, a                                       ; $62a2: $6f
    sub l                                         ; $62a3: $95
    ld l, [hl]                                    ; $62a4: $6e
    nop                                           ; $62a5: $00
    ld bc, $b56e                                  ; $62a6: $01 $6e $b5
    ld c, [hl]                                    ; $62a9: $4e
    jp nz, $b529                                  ; $62aa: $c2 $29 $b5

    ld [$c210], sp                                ; $62ad: $08 $10 $c2
    add hl, hl                                    ; $62b0: $29
    db $eb                                        ; $62b1: $eb
    ld d, [hl]                                    ; $62b2: $56
    rlca                                          ; $62b3: $07
    ld b, h                                       ; $62b4: $44
    add hl, hl                                    ; $62b5: $29
    or e                                          ; $62b6: $b3
    ld [$5600], sp                                ; $62b7: $08 $00 $56
    add hl, bc                                    ; $62ba: $09
    ld c, d                                       ; $62bb: $4a
    inc h                                         ; $62bc: $24
    cp d                                          ; $62bd: $ba
    inc b                                         ; $62be: $04
    ld c, e                                       ; $62bf: $4b
    inc h                                         ; $62c0: $24
    nop                                           ; $62c1: $00
    ld a, d                                       ; $62c2: $7a
    dec b                                         ; $62c3: $05
    ld e, b                                       ; $62c4: $58
    daa                                           ; $62c5: $27
    di                                            ; $62c6: $f3
    inc c                                         ; $62c7: $0c
    ld [hl], d                                    ; $62c8: $72
    inc c                                         ; $62c9: $0c
    jr nz, @-$4b                                  ; $62ca: $20 $b3

    inc c                                         ; $62cc: $0c
    jr nc, @+$0b                                  ; $62cd: $30 $09

    ld d, h                                       ; $62cf: $54
    inc bc                                        ; $62d0: $03
    xor e                                         ; $62d1: $ab
    ld d, a                                       ; $62d2: $57
    xor c                                         ; $62d3: $a9
    nop                                           ; $62d4: $00
    ld d, [hl]                                    ; $62d5: $56
    ld a, [$dd00]                                 ; $62d6: $fa $00 $dd
    ld [bc], a                                    ; $62d9: $02
    and [hl]                                      ; $62da: $a6
    db $10                                        ; $62db: $10
    dec b                                         ; $62dc: $05
    nop                                           ; $62dd: $00
    ld hl, sp+$0c                                 ; $62de: $f8 $0c
    ld hl, sp+$05                                 ; $62e0: $f8 $05
    ld hl, sp-$04                                 ; $62e2: $f8 $fc
    ld hl, sp+$55                                 ; $62e4: $f8 $55
    nop                                           ; $62e6: $00
    xor b                                         ; $62e7: $a8
    call nc, $3508                                ; $62e8: $d4 $08 $35
    adc b                                         ; $62eb: $88
    call nc, $a808                                ; $62ec: $d4 $08 $a8
    add d                                         ; $62ef: $82
    jr c, jr_0c4_62f3                             ; $62f0: $38 $01

    adc b                                         ; $62f2: $88

jr_0c4_62f3:
    rlca                                          ; $62f3: $07
    xor a                                         ; $62f4: $af

jr_0c4_62f5:
    rlca                                          ; $62f5: $07
    dec c                                         ; $62f6: $0d
    adc [hl]                                      ; $62f7: $8e
    inc b                                         ; $62f8: $04
    ld l, $80                                     ; $62f9: $2e $80
    db $fc                                        ; $62fb: $fc
    dec b                                         ; $62fc: $05
    ld b, b                                       ; $62fd: $40
    dec a                                         ; $62fe: $3d
    sbc d                                         ; $62ff: $9a

Call_0c4_6300:
    ld a, l                                       ; $6300: $7d
    nop                                           ; $6301: $00
    db $fd                                        ; $6302: $fd
    ld a, [$fd00]                                 ; $6303: $fa $00 $fd
    ld d, d                                       ; $6306: $52
    dec c                                         ; $6307: $0d
    ld e, b                                       ; $6308: $58
    dec c                                         ; $6309: $0d
    ld [de], a                                    ; $630a: $12
    dec c                                         ; $630b: $0d
    ld e, b                                       ; $630c: $58
    nop                                           ; $630d: $00
    rrca                                          ; $630e: $0f
    ld c, b                                       ; $630f: $48
    sub l                                         ; $6310: $95
    and e                                         ; $6311: $a3
    ld e, h                                       ; $6312: $5c
    ld b, h                                       ; $6313: $44
    ld a, [de]                                    ; $6314: $1a
    adc c                                         ; $6315: $89
    nop                                           ; $6316: $00
    ld d, [hl]                                    ; $6317: $56
    inc b                                         ; $6318: $04
    db $d3                                        ; $6319: $d3
    xor d                                         ; $631a: $aa
    ld d, l                                       ; $631b: $55

jr_0c4_631c:
    inc b                                         ; $631c: $04
    pop af                                        ; $631d: $f1
    xor d                                         ; $631e: $aa

jr_0c4_631f:
    ld b, b                                       ; $631f: $40
    ld d, l                                       ; $6320: $55

jr_0c4_6321:
    inc [hl]                                      ; $6321: $34
    add hl, bc                                    ; $6322: $09
    ld b, $f9                                     ; $6323: $06 $f9
    ld d, a                                       ; $6325: $57
    cp b                                          ; $6326: $b8
    add l                                         ; $6327: $85
    ld a, b                                       ; $6328: $78
    nop                                           ; $6329: $00
    ld d, h                                       ; $632a: $54
    cp c                                          ; $632b: $b9
    rlca                                          ; $632c: $07
    cp b                                          ; $632d: $b8
    push de                                       ; $632e: $d5
    jr c, jr_0c4_6343                             ; $632f: $38 $12

    ld c, c                                       ; $6331: $49
    nop                                           ; $6332: $00
    xor l                                         ; $6333: $ad
    ld b, b                                       ; $6334: $40
    ld [de], a                                    ; $6335: $12
    ld c, c                                       ; $6336: $49
    ld e, e                                       ; $6337: $5b
    nop                                           ; $6338: $00
    ld a, [$0001]                                 ; $6339: $fa $01 $00
    daa                                           ; $633c: $27
    ld c, b                                       ; $633d: $48
    sbc e                                         ; $633e: $9b
    ld b, b                                       ; $633f: $40
    or l                                          ; $6340: $b5
    ld c, b                                       ; $6341: $48
    ld d, h                                       ; $6342: $54

jr_0c4_6343:
    jr nz, jr_0c4_6345                            ; $6343: $20 $00

jr_0c4_6345:
    ret nc                                        ; $6345: $d0

    jr nz, jr_0c4_63a2                            ; $6346: $20 $5a

    jr nz, jr_0c4_631f                            ; $6348: $20 $d5

    ld a, [hl+]                                   ; $634a: $2a
    push bc                                       ; $634b: $c5
    ld a, [hl-]                                   ; $634c: $3a
    nop                                           ; $634d: $00
    ld c, a                                       ; $634e: $4f
    jr nc, jr_0c4_631c                            ; $634f: $30 $cb

    jr nc, jr_0c4_6321                            ; $6351: $30 $ce

    jr nc, jr_0c4_62f5                            ; $6353: $30 $a0

    rra                                           ; $6355: $1f
    nop                                           ; $6356: $00
    jr nc, jr_0c4_6378                            ; $6357: $30 $1f

    and b                                         ; $6359: $a0
    rra                                           ; $635a: $1f
    ld e, a                                       ; $635b: $5f
    cp a                                          ; $635c: $bf
    ld c, d                                       ; $635d: $4a
    or l                                          ; $635e: $b5
    ld bc, $00eb                                  ; $635f: $01 $eb $00
    ld [hl], h                                    ; $6362: $74
    ld a, [bc]                                    ; $6363: $0a
    sbc e                                         ; $6364: $9b
    ld b, b                                       ; $6365: $40
    dec l                                         ; $6366: $2d
    add b                                         ; $6367: $80
    rlca                                          ; $6368: $07
    ld bc, $c02c                                  ; $6369: $01 $2c $c0
    push hl                                       ; $636c: $e5
    ret nz                                        ; $636d: $c0

    xor b                                         ; $636e: $a8
    ld b, b                                       ; $636f: $40
    dec h                                         ; $6370: $25
    add b                                         ; $6371: $80
    inc b                                         ; $6372: $04

jr_0c4_6373:
    nop                                           ; $6373: $00
    inc h                                         ; $6374: $24
    ld b, b                                       ; $6375: $40

jr_0c4_6376:
    ld b, d                                       ; $6376: $42
    add hl, sp                                    ; $6377: $39

jr_0c4_6378:
    ld h, h                                       ; $6378: $64
    dec sp                                        ; $6379: $3b
    ld b, b                                       ; $637a: $40
    ccf                                           ; $637b: $3f
    ld bc, $3f7f                                  ; $637c: $01 $7f $3f
    ld l, d                                       ; $637f: $6a
    nop                                           ; $6380: $00
    ld h, l                                       ; $6381: $65
    nop                                           ; $6382: $00
    ld l, b                                       ; $6383: $68
    inc b                                         ; $6384: $04
    nop                                           ; $6385: $00
    nop                                           ; $6386: $00
    ld [bc], a                                    ; $6387: $02
    db $ec                                        ; $6388: $ec
    push de                                       ; $6389: $d5
    ld [$e802], a                                 ; $638a: $ea $02 $e8
    call nc, Call_000_00ea                        ; $638d: $d4 $ea $00
    sub b                                         ; $6390: $90
    ld l, [hl]                                    ; $6391: $6e
    ld h, d                                       ; $6392: $62
    dec [hl]                                      ; $6393: $35
    ld c, b                                       ; $6394: $48
    scf                                           ; $6395: $37
    ld h, d                                       ; $6396: $62
    dec a                                         ; $6397: $3d
    nop                                           ; $6398: $00
    ld b, b                                       ; $6399: $40
    xor l                                         ; $639a: $ad
    ld a, [de]                                    ; $639b: $1a
    push hl                                       ; $639c: $e5
    jr nz, jr_0c4_6376                            ; $639d: $20 $d7

jr_0c4_639f:
    ld c, d                                       ; $639f: $4a
    or l                                          ; $63a0: $b5
    nop                                           ; $63a1: $00

jr_0c4_63a2:
    inc h                                         ; $63a2: $24
    sbc e                                         ; $63a3: $9b
    and d                                         ; $63a4: $a2
    ld e, l                                       ; $63a5: $5d
    db $10                                        ; $63a6: $10
    call Call_0c4_59a6                            ; $63a7: $cd $a6 $59
    ld bc, $ca30                                  ; $63aa: $01 $30 $ca
    xor l                                         ; $63ad: $ad
    jp nz, $ca30                                  ; $63ae: $c2 $30 $ca

    cp d                                          ; $63b1: $ba
    ld [$0004], sp                                ; $63b2: $08 $04 $00
    xor b                                         ; $63b5: $a8
    push bc                                       ; $63b6: $c5
    ld [hl], $c1                                  ; $63b7: $36 $c1
    xor d                                         ; $63b9: $aa
    pop bc                                        ; $63ba: $c1
    sub d                                         ; $63bb: $92
    ld c, c                                       ; $63bc: $49
    nop                                           ; $63bd: $00
    ld l, [hl]                                    ; $63be: $6e
    ld bc, $4992                                  ; $63bf: $01 $92 $49
    sbc $01                                       ; $63c2: $de $01
    sub $09                                       ; $63c4: $d6 $09
    nop                                           ; $63c6: $00
    sbc l                                         ; $63c7: $9d
    jr nz, jr_0c4_6439                            ; $63c8: $20 $6f

    nop                                           ; $63ca: $00
    rst $10                                       ; $63cb: $d7
    jr nz, jr_0c4_6373                            ; $63cc: $20 $a5

    nop                                           ; $63ce: $00
    ld de, $0081                                  ; $63cf: $11 $81 $00
    push de                                       ; $63d2: $d5
    sub d                                         ; $63d3: $92
    rlca                                          ; $63d4: $07
    ld a, [hl+]                                   ; $63d5: $2a
    push de                                       ; $63d6: $d5
    ccf                                           ; $63d7: $3f
    inc l                                         ; $63d8: $2c
    inc b                                         ; $63d9: $04
    ld [bc], a                                    ; $63da: $02
    jr c, jr_0c4_639f                             ; $63db: $38 $c2

    dec b                                         ; $63dd: $05
    jp nc, $d728                                  ; $63de: $d2 $28 $d7

    ld h, b                                       ; $63e1: $60
    rrca                                          ; $63e2: $0f
    and b                                         ; $63e3: $a0
    nop                                           ; $63e4: $00
    ld e, a                                       ; $63e5: $5f
    ld h, h                                       ; $63e6: $64
    rrca                                          ; $63e7: $0f
    sub c                                         ; $63e8: $91
    ld c, [hl]                                    ; $63e9: $4e
    call nc, $010f                                ; $63ea: $d4 $0f $01
    ld [bc], a                                    ; $63ed: $02
    sbc $a5                                       ; $63ee: $de $a5
    ld e, [hl]                                    ; $63f0: $5e
    ld [bc], a                                    ; $63f1: $02
    db $fd                                        ; $63f2: $fd
    db $fd                                        ; $63f3: $fd
    add b                                         ; $63f4: $80
    rlca                                          ; $63f5: $07
    ld d, h                                       ; $63f6: $54
    ld [hl+], a                                   ; $63f7: $22
    xor e                                         ; $63f8: $ab
    ld e, d                                       ; $63f9: $5a
    cp b                                          ; $63fa: $b8
    ld b, $ad                                     ; $63fb: $06 $ad
    nop                                           ; $63fd: $00
    cp l                                          ; $63fe: $bd
    ret nz                                        ; $63ff: $c0

    rla                                           ; $6400: $17
    dec b                                         ; $6401: $05
    ld bc, $acf8                                  ; $6402: $01 $f8 $ac
    ld e, b                                       ; $6405: $58
    ld b, l                                       ; $6406: $45
    jr c, @+$1b                                   ; $6407: $38 $19

jr_0c4_6409:
    ldh a, [$34]                                  ; $6409: $f0 $34
    add hl, bc                                    ; $640b: $09
    ld b, b                                       ; $640c: $40
    and d                                         ; $640d: $a2
    add b                                         ; $640e: $80
    inc bc                                        ; $640f: $03
    ld e, e                                       ; $6410: $5b

jr_0c4_6411:
    inc b                                         ; $6411: $04
    xor d                                         ; $6412: $aa
    inc b                                         ; $6413: $04
    dec bc                                        ; $6414: $0b
    inc b                                         ; $6415: $04
    nop                                           ; $6416: $00
    ld d, a                                       ; $6417: $57
    ld [$9248], sp                                ; $6418: $08 $48 $92
    or l                                          ; $641b: $b5
    ld [bc], a                                    ; $641c: $02
    ld c, b                                       ; $641d: $48
    sub d                                         ; $641e: $92
    nop                                           ; $641f: $00
    jp c, Jump_0c4_5f00                           ; $6420: $da $00 $5f

    add b                                         ; $6423: $80
    db $e4                                        ; $6424: $e4
    ld [de], a                                    ; $6425: $12
    reti                                          ; $6426: $d9


    ld [bc], a                                    ; $6427: $02
    jr nz, jr_0c4_6484                            ; $6428: $20 $5a

    inc h                                         ; $642a: $24
    inc [hl]                                      ; $642b: $34
    add hl, bc                                    ; $642c: $09

Jump_0c4_642d:
    ld l, l                                       ; $642d: $6d
    sub b                                         ; $642e: $90
    ld l, d                                       ; $642f: $6a
    dec d                                         ; $6430: $15
    ld [$1000], a                                 ; $6431: $ea $00 $10
    ld l, c                                       ; $6434: $69
    sub b                                         ; $6435: $90
    xor d                                         ; $6436: $aa
    db $10                                        ; $6437: $10
    xor c                                         ; $6438: $a9

jr_0c4_6439:
    db $10                                        ; $6439: $10
    ld l, $09                                     ; $643a: $2e $09
    nop                                           ; $643c: $00
    dec c                                         ; $643d: $0d
    nop                                           ; $643e: $00
    ld e, d                                       ; $643f: $5a
    ld [hl], d                                    ; $6440: $72
    rlca                                          ; $6441: $07
    or d                                          ; $6442: $b2
    dec c                                         ; $6443: $0d
    ld e, d                                       ; $6444: $5a
    ld a, [bc]                                    ; $6445: $0a
    nop                                           ; $6446: $00
    ld d, a                                       ; $6447: $57
    ld [$0d52], sp                                ; $6448: $08 $52 $0d
    jr jr_0c4_645c                                ; $644b: $18 $0f

    or b                                          ; $644d: $b0
    rrca                                          ; $644e: $0f
    ld b, b                                       ; $644f: $40
    ld e, a                                       ; $6450: $5f
    ldh [rTIMA], a                                ; $6451: $e0 $05
    push af                                       ; $6453: $f5
    nop                                           ; $6454: $00
    cp d                                          ; $6455: $ba
    dec b                                         ; $6456: $05
    ld c, l                                       ; $6457: $4d
    jr nz, jr_0c4_6462                            ; $6458: $20 $08

    inc d                                         ; $645a: $14
    ld c, e                                       ; $645b: $4b

jr_0c4_645c:
    and d                                         ; $645c: $a2

jr_0c4_645d:
    ld e, l                                       ; $645d: $5d
    add b                                         ; $645e: $80
    jr jr_0c4_6409                                ; $645f: $18 $a8

    rra                                           ; $6461: $1f

jr_0c4_6462:
    ld h, d                                       ; $6462: $62
    jr jr_0c4_6482                                ; $6463: $18 $1d

    xor b                                         ; $6465: $a8
    rra                                           ; $6466: $1f
    db $f4                                        ; $6467: $f4
    ld c, $00                                     ; $6468: $0e $00
    dec c                                         ; $646a: $0d
    nop                                           ; $646b: $00
    rst $38                                       ; $646c: $ff
    xor b                                         ; $646d: $a8
    nop                                           ; $646e: $00
    ld d, a                                       ; $646f: $57
    or l                                          ; $6470: $b5
    nop                                           ; $6471: $00
    nop                                           ; $6472: $00
    rst $38                                       ; $6473: $ff
    ld l, e                                       ; $6474: $6b
    nop                                           ; $6475: $00
    db $ed                                        ; $6476: $ed
    add b                                         ; $6477: $80
    add b                                         ; $6478: $80
    ld [de], a                                    ; $6479: $12
    dec d                                         ; $647a: $15
    ldh [$b2], a                                  ; $647b: $e0 $b2
    ld h, b                                       ; $647d: $60
    inc d                                         ; $647e: $14
    ldh [$32], a                                  ; $647f: $e0 $32
    nop                                           ; $6481: $00

jr_0c4_6482:
    ldh [rOBP1], a                                ; $6482: $e0 $49

jr_0c4_6484:
    ld [hl-], a                                   ; $6484: $32
    ld c, [hl]                                    ; $6485: $4e
    jr nc, jr_0c4_6411                            ; $6486: $30 $89

    ld [hl], d                                    ; $6488: $72
    ld l, a                                       ; $6489: $6f
    nop                                           ; $648a: $00
    ldh a, [$6d]                                  ; $648b: $f0 $6d
    ld [de], a                                    ; $648d: $12
    xor e                                         ; $648e: $ab
    db $10                                        ; $648f: $10
    cpl                                           ; $6490: $2f
    db $10                                        ; $6491: $10
    xor [hl]                                      ; $6492: $ae
    nop                                           ; $6493: $00
    db $10                                        ; $6494: $10
    jr nz, jr_0c4_64e1                            ; $6495: $20 $4a

    rst $10                                       ; $6497: $d7
    ld [$4a21], sp                                ; $6498: $08 $21 $4a
    ld l, c                                       ; $649b: $69
    nop                                           ; $649c: $00
    nop                                           ; $649d: $00
    ld a, a                                       ; $649e: $7f
    nop                                           ; $649f: $00
    sub c                                         ; $64a0: $91
    ld c, d                                       ; $64a1: $4a
    ld h, [hl]                                    ; $64a2: $66
    ld [$02b5], sp                                ; $64a3: $08 $b5 $02
    ld c, b                                       ; $64a6: $48
    xor c                                         ; $64a7: $a9
    ld b, b                                       ; $64a8: $40
    jr nz, jr_0c4_64eb                            ; $64a9: $20 $40

    jp c, $0160                                   ; $64ab: $da $60 $01

    ld d, l                                       ; $64ae: $55
    and b                                         ; $64af: $a0
    jr c, jr_0c4_64b7                             ; $64b0: $38 $05

    call nc, $053c                                ; $64b2: $d4 $3c $05
    ld l, c                                       ; $64b5: $69
    nop                                           ; $64b6: $00

jr_0c4_64b7:
    ld h, h                                       ; $64b7: $64
    nop                                           ; $64b8: $00
    cp d                                          ; $64b9: $ba
    nop                                           ; $64ba: $00

jr_0c4_64bb:
    nop                                           ; $64bb: $00
    ld b, l                                       ; $64bc: $45
    cp d                                          ; $64bd: $ba
    ld h, d                                       ; $64be: $62
    dec e                                         ; $64bf: $1d
    xor a                                         ; $64c0: $af
    db $10                                        ; $64c1: $10
    ld l, $84                                     ; $64c2: $2e $84
    jr nc, jr_0c4_64c6                            ; $64c4: $30 $00

jr_0c4_64c6:
    ld c, b                                       ; $64c6: $48
    dec [hl]                                      ; $64c7: $35
    ld h, d                                       ; $64c8: $62
    dec a                                         ; $64c9: $3d
    and b                                         ; $64ca: $a0
    ld a, [bc]                                    ; $64cb: $0a
    xor d                                         ; $64cc: $aa
    ld d, l                                       ; $64cd: $55
    nop                                           ; $64ce: $00
    sub $00                                       ; $64cf: $d6 $00
    jp hl                                         ; $64d1: $e9


    inc d                                         ; $64d2: $14
    sbc e                                         ; $64d3: $9b
    ld b, b                                       ; $64d4: $40
    ld d, b                                       ; $64d5: $50
    dec hl                                        ; $64d6: $2b
    jr nz, jr_0c4_645d                            ; $64d7: $20 $84

    ld a, e                                       ; $64d9: $7b
    ldh a, [rIF]                                  ; $64da: $f0 $0f
    add b                                         ; $64dc: $80
    ld a, a                                       ; $64dd: $7f
    and d                                         ; $64de: $a2
    ld a, l                                       ; $64df: $7d
    adc d                                         ; $64e0: $8a

jr_0c4_64e1:
    nop                                           ; $64e1: $00
    ld [hl], h                                    ; $64e2: $74
    ld d, b                                       ; $64e3: $50
    ccf                                           ; $64e4: $3f
    ld h, b                                       ; $64e5: $60
    ld a, [bc]                                    ; $64e6: $0a
    sub [hl]                                      ; $64e7: $96
    ld [$7000], sp                                ; $64e8: $08 $00 $70

jr_0c4_64eb:
    ld [hl], b                                    ; $64eb: $70
    and b                                         ; $64ec: $a0
    jr nz, @+$4a                                  ; $64ed: $20 $48

    nop                                           ; $64ef: $00
    push af                                       ; $64f0: $f5
    nop                                           ; $64f1: $00
    nop                                           ; $64f2: $00
    rst $38                                       ; $64f3: $ff
    nop                                           ; $64f4: $00
    ld b, l                                       ; $64f5: $45
    cp d                                          ; $64f6: $ba
    db $10                                        ; $64f7: $10
    rst $28                                       ; $64f8: $ef
    xor d                                         ; $64f9: $aa
    rst $38                                       ; $64fa: $ff
    nop                                           ; $64fb: $00
    inc bc                                        ; $64fc: $03
    ld bc, $0124                                  ; $64fd: $01 $24 $01
    add e                                         ; $6500: $83
    ld bc, $0156                                  ; $6501: $01 $56 $01
    nop                                           ; $6504: $00
    db $eb                                        ; $6505: $eb
    ld bc, $a15e                                  ; $6506: $01 $5e $a1
    ld bc, $aaff                                  ; $6509: $01 $ff $aa
    rst $38                                       ; $650c: $ff
    nop                                           ; $650d: $00
    ld [hl], a                                    ; $650e: $77
    set 3, e                                      ; $650f: $cb $db
    sbc a                                         ; $6511: $9f
    cp a                                          ; $6512: $bf
    push de                                       ; $6513: $d5
    ld d, a                                       ; $6514: $57
    push af                                       ; $6515: $f5
    dec h                                         ; $6516: $25
    ld l, a                                       ; $6517: $6f
    or l                                          ; $6518: $b5
    ld [bc], a                                    ; $6519: $02
    jr jr_0c4_64bb                                ; $651a: $18 $9f

    pop af                                        ; $651c: $f1
    ld [bc], a                                    ; $651d: $02
    ld [$01ff], sp                                ; $651e: $08 $ff $01
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    ldh a, [$1f]                                  ; $6523: $f0 $1f
    ldh a, [$1f]                                  ; $6525: $f0 $1f
    ld a, [$1fff]                                 ; $6527: $fa $ff $1f
    pop af                                        ; $652a: $f1
    ldh [rSC], a                                  ; $652b: $e0 $02
    ld [$0810], sp                                ; $652d: $08 $10 $08
    ld a, [bc]                                    ; $6530: $0a
    ld [$ffb1], sp                                ; $6531: $08 $b1 $ff
    xor $f1                                       ; $6534: $ee $f1
    ldh [rP1], a                                  ; $6536: $e0 $00
    pop af                                        ; $6538: $f1
    ldh [rNR11], a                                ; $6539: $e0 $11
    ld [$1f11], sp                                ; $653b: $08 $11 $1f
    rra                                           ; $653e: $1f
    sub c                                         ; $653f: $91
    nop                                           ; $6540: $00
    ld de, $f1f1                                  ; $6541: $11 $f1 $f1
    push af                                       ; $6544: $f5
    dec d                                         ; $6545: $15
    xor $11                                       ; $6546: $ee $11
    nop                                           ; $6548: $00
    sbc d                                         ; $6549: $9a
    ld [bc], a                                    ; $654a: $02
    nop                                           ; $654b: $00
    add b                                         ; $654c: $80
    ld de, $3020                                  ; $654d: $11 $20 $30
    db $10                                        ; $6550: $10
    db $10                                        ; $6551: $10
    adc b                                         ; $6552: $88
    stop                                          ; $6553: $10 $00
    ld de, $1f00                                  ; $6555: $11 $00 $1f
    ld de, $f51f                                  ; $6558: $11 $1f $f5
    rst $38                                       ; $655b: $ff
    xor $1f                                       ; $655c: $ee $1f
    ld c, $88                                     ; $655e: $0e $88
    jr nz, jr_0c4_6572                            ; $6560: $20 $10

    pop af                                        ; $6562: $f1
    pop af                                        ; $6563: $f1
    rra                                           ; $6564: $1f
    ld c, h                                       ; $6565: $4c
    nop                                           ; $6566: $00
    cp a                                          ; $6567: $bf
    pop af                                        ; $6568: $f1
    rst $28                                       ; $6569: $ef
    jr nz, jr_0c4_657c                            ; $656a: $20 $10

    nop                                           ; $656c: $00
    ld [bc], a                                    ; $656d: $02
    nop                                           ; $656e: $00
    adc b                                         ; $656f: $88
    db $10                                        ; $6570: $10
    rst $38                                       ; $6571: $ff

jr_0c4_6572:
    rst $38                                       ; $6572: $ff
    db $10                                        ; $6573: $10
    xor [hl]                                      ; $6574: $ae
    ld [bc], a                                    ; $6575: $02
    nop                                           ; $6576: $00
    ld a, [$2030]                                 ; $6577: $fa $30 $20
    jr nz, @+$42                                  ; $657a: $20 $40

jr_0c4_657c:
    jr nc, @-$7e                                  ; $657c: $30 $80

    jr c, @+$7a                                   ; $657e: $38 $78

    db $10                                        ; $6580: $10
    push af                                       ; $6581: $f5
    nop                                           ; $6582: $00
    xor $d3                                       ; $6583: $ee $d3
    rst $18                                       ; $6585: $df
    ld sp, hl                                     ; $6586: $f9
    db $fd                                        ; $6587: $fd
    xor e                                         ; $6588: $ab
    ld a, [$20af]                                 ; $6589: $fa $af $20
    or $ad                                        ; $658c: $f6 $ad
    ld [bc], a                                    ; $658e: $02
    jr jr_0c4_65aa                                ; $658f: $18 $19

    cp $9a                                        ; $6591: $fe $9a
    db $fd                                        ; $6593: $fd
    ld bc, $fe00                                  ; $6594: $01 $00 $fe
    sbc d                                         ; $6597: $9a
    rst $38                                       ; $6598: $ff
    ld a, [bc]                                    ; $6599: $0a
    rst $38                                       ; $659a: $ff
    sbc e                                         ; $659b: $9b
    rst $38                                       ; $659c: $ff
    nop                                           ; $659d: $00
    add b                                         ; $659e: $80
    ret nz                                        ; $659f: $c0

    nop                                           ; $65a0: $00
    ld e, h                                       ; $65a1: $5c
    and b                                         ; $65a2: $a0
    ld a, [hl]                                    ; $65a3: $7e
    add b                                         ; $65a4: $80
    dec c                                         ; $65a5: $0d
    ldh a, [rIE]                                  ; $65a6: $f0 $ff
    nop                                           ; $65a8: $00
    pop af                                        ; $65a9: $f1

jr_0c4_65aa:
    rst $30                                       ; $65aa: $f7
    ld sp, hl                                     ; $65ab: $f9
    ei                                            ; $65ac: $fb
    db $f4                                        ; $65ad: $f4
    dec b                                         ; $65ae: $05
    ld a, [$00aa]                                 ; $65af: $fa $aa $00
    rst $38                                       ; $65b2: $ff
    nop                                           ; $65b3: $00
    nop                                           ; $65b4: $00

jr_0c4_65b5:
    jr nz, jr_0c4_65d7                            ; $65b5: $20 $20

    dec h                                         ; $65b7: $25
    jr nz, jr_0c4_65b5                            ; $65b8: $20 $fb

    ld bc, $2ffb                                  ; $65ba: $01 $fb $2f
    dec hl                                        ; $65bd: $2b
    ei                                            ; $65be: $fb
    ei                                            ; $65bf: $fb
    ld e, a                                       ; $65c0: $5f
    and b                                         ; $65c1: $a0
    db $10                                        ; $65c2: $10
    ld [$4200], sp                                ; $65c3: $08 $00 $42
    nop                                           ; $65c6: $00
    nop                                           ; $65c7: $00
    nop                                           ; $65c8: $00
    jp c, $ffd0                                   ; $65c9: $da $d0 $ff

    ret nc                                        ; $65cc: $d0

    ld [$d8ff], sp                                ; $65cd: $08 $ff $d8
    rst $38                                       ; $65d0: $ff
    nop                                           ; $65d1: $00
    jr nz, jr_0c4_65dc                            ; $65d2: $20 $08

    nop                                           ; $65d4: $00
    nop                                           ; $65d5: $00
    add d                                         ; $65d6: $82

jr_0c4_65d7:
    inc c                                         ; $65d7: $0c
    nop                                           ; $65d8: $00
    ld d, l                                       ; $65d9: $55
    nop                                           ; $65da: $00
    db $eb                                        ; $65db: $eb

jr_0c4_65dc:
    ld [de], a                                    ; $65dc: $12
    ld bc, $0810                                  ; $65dd: $01 $10 $08
    stop                                          ; $65e0: $10 $00
    inc b                                         ; $65e2: $04
    ld a, [bc]                                    ; $65e3: $0a
    nop                                           ; $65e4: $00
    sub l                                         ; $65e5: $95
    nop                                           ; $65e6: $00
    ld l, e                                       ; $65e7: $6b
    jr nz, jr_0c4_65eb                            ; $65e8: $20 $01

    ei                                            ; $65ea: $fb

jr_0c4_65eb:
    inc b                                         ; $65eb: $04
    jr nc, @-$5a                                  ; $65ec: $30 $a4

    ld e, e                                       ; $65ee: $5b
    jr nz, jr_0c4_6601                            ; $65ef: $20 $10

    db $fd                                        ; $65f1: $fd
    nop                                           ; $65f2: $00
    ld a, a                                       ; $65f3: $7f
    rst $38                                       ; $65f4: $ff
    ld h, b                                       ; $65f5: $60
    rst $38                                       ; $65f6: $ff
    jr nc, jr_0c4_6678                            ; $65f7: $30 $7f

    rst $28                                       ; $65f9: $ef
    ld [bc], a                                    ; $65fa: $02
    ld [$1810], sp                                ; $65fb: $08 $10 $18
    rst $38                                       ; $65fe: $ff
    cp $07                                        ; $65ff: $fe $07

jr_0c4_6601:
    cp $42                                        ; $6601: $fe $42
    rst $30                                       ; $6603: $f7
    ld [bc], a                                    ; $6604: $02
    db $10                                        ; $6605: $10
    push af                                       ; $6606: $f5
    rst $38                                       ; $6607: $ff
    ld a, [$221f]                                 ; $6608: $fa $1f $22
    nop                                           ; $660b: $00
    nop                                           ; $660c: $00
    nop                                           ; $660d: $00
    db $fd                                        ; $660e: $fd
    ld [bc], a                                    ; $660f: $02
    ei                                            ; $6610: $fb
    inc b                                         ; $6611: $04
    db $fd                                        ; $6612: $fd
    ld [bc], a                                    ; $6613: $02
    rst $38                                       ; $6614: $ff

jr_0c4_6615:
    nop                                           ; $6615: $00
    nop                                           ; $6616: $00
    ld e, a                                       ; $6617: $5f
    rst $38                                       ; $6618: $ff
    cp a                                          ; $6619: $bf
    rst $38                                       ; $661a: $ff
    dec b                                         ; $661b: $05
    rst $38                                       ; $661c: $ff
    rst $38                                       ; $661d: $ff
    dec b                                         ; $661e: $05
    nop                                           ; $661f: $00
    sbc a                                         ; $6620: $9f
    ld h, l                                       ; $6621: $65
    ld e, l                                       ; $6622: $5d
    and a                                         ; $6623: $a7
    rra                                           ; $6624: $1f
    push hl                                       ; $6625: $e5
    rra                                           ; $6626: $1f
    push hl                                       ; $6627: $e5
    nop                                           ; $6628: $00
    ei                                            ; $6629: $fb
    dec de                                        ; $662a: $1b
    push af                                       ; $662b: $f5
    push af                                       ; $662c: $f5
    pop af                                        ; $662d: $f1
    pop af                                        ; $662e: $f1
    pop af                                        ; $662f: $f1
    ld de, $0283                                  ; $6630: $11 $83 $02
    jr @+$01                                      ; $6633: $18 $ff

jr_0c4_6635:
    rst $38                                       ; $6635: $ff
    ld d, c                                       ; $6636: $51
    rst $38                                       ; $6637: $ff
    or c                                          ; $6638: $b1
    inc b                                         ; $6639: $04
    nop                                           ; $663a: $00
    ld b, [hl]                                    ; $663b: $46
    add hl, de                                    ; $663c: $19
    adc h                                         ; $663d: $8c
    ld c, b                                       ; $663e: $48
    add hl, bc                                    ; $663f: $09
    ei                                            ; $6640: $fb
    rst $38                                       ; $6641: $ff
    dec d                                         ; $6642: $15
    jr jr_0c4_6646                                ; $6643: $18 $01

    ld [bc], a                                    ; $6645: $02

jr_0c4_6646:
    jr z, @+$01                                   ; $6646: $28 $ff

    rst $38                                       ; $6648: $ff
    ld b, $f5                                     ; $6649: $06 $f5
    rst $38                                       ; $664b: $ff
    ld a, [de]                                    ; $664c: $1a
    rst $38                                       ; $664d: $ff
    dec d                                         ; $664e: $15
    inc c                                         ; $664f: $0c
    ld de, $0910                                  ; $6650: $11 $10 $09
    rst $38                                       ; $6653: $ff
    ld h, b                                       ; $6654: $60
    rst $38                                       ; $6655: $ff
    ld d, b                                       ; $6656: $50
    ld [$4830], sp                                ; $6657: $08 $30 $48
    rst $38                                       ; $665a: $ff
    ei                                            ; $665b: $fb
    rra                                           ; $665c: $1f
    push af                                       ; $665d: $f5
    jr nz, jr_0c4_6660                            ; $665e: $20 $00

jr_0c4_6660:
    rst $38                                       ; $6660: $ff
    ccf                                           ; $6661: $3f
    ldh [$39], a                                  ; $6662: $e0 $39
    and $ba                                       ; $6664: $e6 $ba
    push hl                                       ; $6666: $e5
    ld hl, sp+$18                                 ; $6667: $f8 $18
    and a                                         ; $6669: $a7
    ld hl, sp-$59                                 ; $666a: $f8 $a7
    ld [hl], b                                    ; $666c: $70
    ld [$0880], sp                                ; $666d: $08 $80 $08
    cp a                                          ; $6670: $bf
    ld b, b                                       ; $6671: $40
    rst $18                                       ; $6672: $df
    inc b                                         ; $6673: $04
    jr nz, jr_0c4_6635                            ; $6674: $20 $bf

    ld b, b                                       ; $6676: $40
    rst $38                                       ; $6677: $ff

jr_0c4_6678:
    nop                                           ; $6678: $00
    sub b                                         ; $6679: $90
    add hl, bc                                    ; $667a: $09
    ld h, b                                       ; $667b: $60
    sub c                                         ; $667c: $91
    dec b                                         ; $667d: $05
    ld [$1f91], sp                                ; $667e: $08 $91 $1f
    sbc a                                         ; $6681: $9f
    ld de, $01b7                                  ; $6682: $11 $b7 $01
    sub l                                         ; $6685: $95
    or [hl]                                       ; $6686: $b6
    jr nz, jr_0c4_6615                            ; $6687: $20 $8c

    ld b, $20                                     ; $6689: $06 $20
    ldh [$7f], a                                  ; $668b: $e0 $7f
    rst $38                                       ; $668d: $ff
    or [hl]                                       ; $668e: $b6
    jr jr_0c4_6697                                ; $668f: $18 $06

    jr nz, jr_0c4_66a1                            ; $6691: $20 $0e

    rst $38                                       ; $6693: $ff
    ld a, c                                       ; $6694: $79
    cp $3d                                        ; $6695: $fe $3d

jr_0c4_6697:
    db $10                                        ; $6697: $10
    ld b, d                                       ; $6698: $42

Jump_0c4_6699:
    ld [$2006], sp                                ; $6699: $08 $06 $20
    cp l                                          ; $669c: $bd
    nop                                           ; $669d: $00
    db $fd                                        ; $669e: $fd
    rlca                                          ; $669f: $07
    ld [bc], a                                    ; $66a0: $02

jr_0c4_66a1:
    nop                                           ; $66a1: $00
    db $10                                        ; $66a2: $10
    rst $38                                       ; $66a3: $ff
    rst $38                                       ; $66a4: $ff
    ld bc, $0002                                  ; $66a5: $01 $02 $00
    rst $38                                       ; $66a8: $ff
    rst $38                                       ; $66a9: $ff
    adc [hl]                                      ; $66aa: $8e
    ld [hl], h                                    ; $66ab: $74
    nop                                           ; $66ac: $00
    inc de                                        ; $66ad: $13
    db $ec                                        ; $66ae: $ec
    ld b, $fc                                     ; $66af: $06 $fc
    ld b, c                                       ; $66b1: $41
    cp b                                          ; $66b2: $b8
    inc d                                         ; $66b3: $14
    db $ec                                        ; $66b4: $ec
    nop                                           ; $66b5: $00
    ld [bc], a                                    ; $66b6: $02
    db $ec                                        ; $66b7: $ec
    ld b, $ec                                     ; $66b8: $06 $ec
    ld bc, $cff8                                  ; $66ba: $01 $f8 $cf
    stop                                          ; $66bd: $10 $00
    ld d, a                                       ; $66bf: $57
    nop                                           ; $66c0: $00
    adc [hl]                                      ; $66c1: $8e
    db $10                                        ; $66c2: $10
    dec sp                                        ; $66c3: $3b
    nop                                           ; $66c4: $00
    rst $00                                       ; $66c5: $c7
    stop                                          ; $66c6: $10 $00
    sub a                                         ; $66c8: $97
    nop                                           ; $66c9: $00
    ld c, [hl]                                    ; $66ca: $4e
    db $10                                        ; $66cb: $10
    ld a, e                                       ; $66cc: $7b
    nop                                           ; $66cd: $00
    sbc d                                         ; $66ce: $9a
    ld b, c                                       ; $66cf: $41
    nop                                           ; $66d0: $00
    ld a, [hl]                                    ; $66d1: $7e
    ld bc, $419e                                  ; $66d2: $01 $9e $41
    cp $01                                        ; $66d5: $fe $01
    ld d, h                                       ; $66d7: $54
    add e                                         ; $66d8: $83
    ld bc, $01fa                                  ; $66d9: $01 $fa $01
    ld [hl], h                                    ; $66dc: $74
    add e                                         ; $66dd: $83
    jp c, $8f01                                   ; $66de: $da $01 $8f

    jr nc, jr_0c4_66e3                            ; $66e1: $30 $00

jr_0c4_66e3:
    ld b, b                                       ; $66e3: $40
    rlca                                          ; $66e4: $07
    jr nc, jr_0c4_66e7                            ; $66e5: $30 $00

jr_0c4_66e7:
    add hl, de                                    ; $66e7: $19
    ld l, b                                       ; $66e8: $68
    inc bc                                        ; $66e9: $03
    ld l, b                                       ; $66ea: $68
    adc d                                         ; $66eb: $8a
    ld l, b                                       ; $66ec: $68
    nop                                           ; $66ed: $00
    ld hl, $5fd8                                  ; $66ee: $21 $d8 $5f
    jr nz, @+$79                                  ; $66f1: $20 $77

    nop                                           ; $66f3: $00
    ld e, $20                                     ; $66f4: $1e $20
    nop                                           ; $66f6: $00
    ld a, [hl-]                                   ; $66f7: $3a
    nop                                           ; $66f8: $00
    ld e, e                                       ; $66f9: $5b
    jr nz, jr_0c4_673b                            ; $66fa: $20 $3f

    nop                                           ; $66fc: $00
    ld e, a                                       ; $66fd: $5f
    jr nz, jr_0c4_6700                            ; $66fe: $20 $00

jr_0c4_6700:
    rst $38                                       ; $6700: $ff
    nop                                           ; $6701: $00
    ld e, b                                       ; $6702: $58
    add e                                         ; $6703: $83
    or $01                                        ; $6704: $f6 $01
    ld e, h                                       ; $6706: $5c
    add e                                         ; $6707: $83
    nop                                           ; $6708: $00
    or l                                          ; $6709: $b5
    ld [bc], a                                    ; $670a: $02
    ld a, h                                       ; $670b: $7c
    add e                                         ; $670c: $83
    cp $01                                        ; $670d: $fe $01
    ld a, h                                       ; $670f: $7c
    add e                                         ; $6710: $83
    ld de, $03fc                                  ; $6711: $11 $fc $03
    sbc e                                         ; $6714: $9b
    ld a, [c]                                     ; $6715: $f2
    nop                                           ; $6716: $00
    pop af                                        ; $6717: $f1
    rst $38                                       ; $6718: $ff
    sub c                                         ; $6719: $91
    ld [bc], a                                    ; $671a: $02
    jr nz, jr_0c4_671d                            ; $671b: $20 $00

jr_0c4_671d:
    rst $38                                       ; $671d: $ff
    rst $38                                       ; $671e: $ff
    ld l, b                                       ; $671f: $68
    rla                                           ; $6720: $17
    ldh a, [$2f]                                  ; $6721: $f0 $2f
    jp nz, $003d                                  ; $6723: $c2 $3d $00

    di                                            ; $6726: $f3
    dec l                                         ; $6727: $2d
    jp nc, $c02d                                  ; $6728: $d2 $2d $c0

    ld a, a                                       ; $672b: $7f
    add l                                         ; $672c: $85
    ld a, d                                       ; $672d: $7a
    nop                                           ; $672e: $00
    cp $7f                                        ; $672f: $fe $7f
    ld a, h                                       ; $6731: $7c
    add e                                         ; $6732: $83
    ld a, h                                       ; $6733: $7c
    rlca                                          ; $6734: $07
    ld bc, $00fe                                  ; $6735: $01 $fe $00
    db $fc                                        ; $6738: $fc
    rst $38                                       ; $6739: $ff
    ret z                                         ; $673a: $c8

jr_0c4_673b:
    rlca                                          ; $673b: $07
    ld a, [hl+]                                   ; $673c: $2a
    dec c                                         ; $673d: $0d
    sub b                                         ; $673e: $90
    rrca                                          ; $673f: $0f
    nop                                           ; $6740: $00
    jr z, jr_0c4_6752                             ; $6741: $28 $0f

    ld l, a                                       ; $6743: $6f
    sub b                                         ; $6744: $90
    dec bc                                        ; $6745: $0b
    ld [hl], b                                    ; $6746: $70
    sbc a                                         ; $6747: $9f
    ld h, b                                       ; $6748: $60
    nop                                           ; $6749: $00
    adc a                                         ; $674a: $8f
    ld [hl], b                                    ; $674b: $70
    dec d                                         ; $674c: $15
    ldh [$1f], a                                  ; $674d: $e0 $1f
    and b                                         ; $674f: $a0
    ld c, a                                       ; $6750: $4f
    and b                                         ; $6751: $a0

jr_0c4_6752:
    nop                                           ; $6752: $00
    dec e                                         ; $6753: $1d
    ldh [$d0], a                                  ; $6754: $e0 $d0
    cpl                                           ; $6756: $2f
    ldh [$5e], a                                  ; $6757: $e0 $5e
    add h                                         ; $6759: $84
    ld a, e                                       ; $675a: $7b
    nop                                           ; $675b: $00
    rst $20                                       ; $675c: $e7
    ld e, e                                       ; $675d: $5b
    adc c                                         ; $675e: $89
    halt                                          ; $675f: $76
    add b                                         ; $6760: $80
    cp $03                                        ; $6761: $fe $03
    db $fc                                        ; $6763: $fc
    nop                                           ; $6764: $00
    db $fc                                        ; $6765: $fc
    cp $f8                                        ; $6766: $fe $f8
    rlca                                          ; $6768: $07
    ld hl, sp+$0e                                 ; $6769: $f8 $0e
    inc bc                                        ; $676b: $03
    db $fc                                        ; $676c: $fc
    nop                                           ; $676d: $00
    ld sp, hl                                     ; $676e: $f9
    cp $90                                        ; $676f: $fe $90
    rrca                                          ; $6771: $0f
    ld c, h                                       ; $6772: $4c
    dec bc                                        ; $6773: $0b
    jr nz, jr_0c4_6785                            ; $6774: $20 $0f

    nop                                           ; $6776: $00
    ld c, b                                       ; $6777: $48
    rrca                                          ; $6778: $0f
    rst $18                                       ; $6779: $df
    jr nz, jr_0c4_6793                            ; $677a: $20 $17

    ldh [$3f], a                                  ; $677c: $e0 $3f
    ret nz                                        ; $677e: $c0

    nop                                           ; $677f: $00
    rra                                           ; $6780: $1f
    ldh [rWX], a                                  ; $6781: $e0 $4b
    and b                                         ; $6783: $a0
    dec e                                         ; $6784: $1d

jr_0c4_6785:
    ld h, c                                       ; $6785: $61
    cp [hl]                                       ; $6786: $be
    ld b, c                                       ; $6787: $41
    nop                                           ; $6788: $00
    dec de                                        ; $6789: $1b
    pop hl                                        ; $678a: $e1
    ld hl, $c1de                                  ; $678b: $21 $de $c1
    cp h                                          ; $678e: $bc
    ld [$00f7], sp                                ; $678f: $08 $f7 $00
    rst $08                                       ; $6792: $cf

jr_0c4_6793:
    or a                                          ; $6793: $b7
    inc de                                        ; $6794: $13
    db $ec                                        ; $6795: $ec
    ld b, b                                       ; $6796: $40
    cp h                                          ; $6797: $bc
    dec b                                         ; $6798: $05
    ld hl, sp+$00                                 ; $6799: $f8 $00
    ld hl, sp-$04                                 ; $679b: $f8 $fc
    pop af                                        ; $679d: $f1
    ld c, $f0                                     ; $679e: $0e $f0
    dec e                                         ; $67a0: $1d
    ld b, $f9                                     ; $67a1: $06 $f9
    nop                                           ; $67a3: $00
    ld a, [c]                                     ; $67a4: $f2
    db $fd                                        ; $67a5: $fd
    jr nz, @+$11                                  ; $67a6: $20 $0f

    sub d                                         ; $67a8: $92
    dec e                                         ; $67a9: $1d
    jr nz, jr_0c4_67c9                            ; $67aa: $20 $1d

    nop                                           ; $67ac: $00
    sub b                                         ; $67ad: $90
    dec e                                         ; $67ae: $1d
    ld a, $41                                     ; $67af: $3e $41
    cpl                                           ; $67b1: $2f
    pop bc                                        ; $67b2: $c1
    ld a, [hl]                                    ; $67b3: $7e
    add c                                         ; $67b4: $81
    ld bc, $c13f                                  ; $67b5: $01 $3f $c1
    sbc [hl]                                      ; $67b8: $9e
    ld b, c                                       ; $67b9: $41
    dec hl                                        ; $67ba: $2b
    pop bc                                        ; $67bb: $c1
    ld l, [hl]                                    ; $67bc: $6e
    ld [$0000], sp                                ; $67bd: $08 $00 $00
    ld [bc], a                                    ; $67c0: $02
    db $fc                                        ; $67c1: $fc
    add e                                         ; $67c2: $83
    ld a, b                                       ; $67c3: $78
    db $10                                        ; $67c4: $10
    rst $28                                       ; $67c5: $ef
    sbc a                                         ; $67c6: $9f
    ld l, a                                       ; $67c7: $6f
    nop                                           ; $67c8: $00

jr_0c4_67c9:
    ld h, $d8                                     ; $67c9: $26 $d8
    add c                                         ; $67cb: $81
    ld a, b                                       ; $67cc: $78
    ld [de], a                                    ; $67cd: $12
    add sp, -$07                                  ; $67ce: $e8 $f9
    ld hl, sp+$00                                 ; $67d0: $f8 $00
    ld [c], a                                     ; $67d2: $e2
    inc d                                         ; $67d3: $14
    ldh [$3b], a                                  ; $67d4: $e0 $3b
    inc c                                         ; $67d6: $0c
    di                                            ; $67d7: $f3
    db $e4                                        ; $67d8: $e4
    ei                                            ; $67d9: $fb
    nop                                           ; $67da: $00
    ld b, c                                       ; $67db: $41
    ld e, $24                                     ; $67dc: $1e $24
    dec sp                                        ; $67de: $3b
    ld b, b                                       ; $67df: $40
    dec sp                                        ; $67e0: $3b
    jr nz, jr_0c4_681e                            ; $67e1: $20 $3b

    nop                                           ; $67e3: $00
    ld a, h                                       ; $67e4: $7c
    add e                                         ; $67e5: $83
    ld e, a                                       ; $67e6: $5f
    add d                                         ; $67e7: $82
    db $fc                                        ; $67e8: $fc
    inc bc                                        ; $67e9: $03
    ld a, a                                       ; $67ea: $7f
    add d                                         ; $67eb: $82
    nop                                           ; $67ec: $00
    ld a, b                                       ; $67ed: $78
    add e                                         ; $67ee: $83
    ld a, [hl]                                    ; $67ef: $7e
    add e                                         ; $67f0: $83
    cp h                                          ; $67f1: $bc
    inc bc                                        ; $67f2: $03
    ld a, a                                       ; $67f3: $7f
    add e                                         ; $67f4: $83
    nop                                           ; $67f5: $00
    dec b                                         ; $67f6: $05
    ld hl, sp+$07                                 ; $67f7: $f8 $07
    ldh a, [rNR41]                                ; $67f9: $f0 $20
    rst $18                                       ; $67fb: $df
    ccf                                           ; $67fc: $3f
    rst $18                                       ; $67fd: $df
    nop                                           ; $67fe: $00
    ld c, d                                       ; $67ff: $4a
    or b                                          ; $6800: $b0
    ld bc, $0cf8                                  ; $6801: $01 $f8 $0c

Call_0c4_6804:
    ldh a, [$f1]                                  ; $6804: $f0 $f1
    ld hl, sp+$00                                 ; $6806: $f8 $00
    rst $38                                       ; $6808: $ff
    nop                                           ; $6809: $00
    ld a, l                                       ; $680a: $7d
    add d                                         ; $680b: $82
    or $00                                        ; $680c: $f6 $00
    ld [hl], l                                    ; $680e: $75
    add d                                         ; $680f: $82
    nop                                           ; $6810: $00
    xor $00                                       ; $6811: $ee $00
    ret c                                         ; $6813: $d8

    inc b                                         ; $6814: $04
    sbc $00                                       ; $6815: $de $00
    ld a, [$0004]                                 ; $6817: $fa $04 $00
    and d                                         ; $681a: $a2
    dec b                                         ; $681b: $05
    jr z, jr_0c4_6829                             ; $681c: $28 $0b

jr_0c4_681e:
    ld h, b                                       ; $681e: $60
    dec bc                                        ; $681f: $0b
    ld c, h                                       ; $6820: $4c
    dec bc                                        ; $6821: $0b
    nop                                           ; $6822: $00
    ld b, b                                       ; $6823: $40
    rrca                                          ; $6824: $0f
    ret nc                                        ; $6825: $d0

    rra                                           ; $6826: $1f
    ld b, b                                       ; $6827: $40
    rra                                           ; $6828: $1f

jr_0c4_6829:
    jp nc, $001d                                  ; $6829: $d2 $1d $00

    dec c                                         ; $682c: $0d
    ldh [$ba], a                                  ; $682d: $e0 $ba
    ld b, c                                       ; $682f: $41
    cpl                                           ; $6830: $2f
    ld b, b                                       ; $6831: $40
    inc a                                         ; $6832: $3c
    ld b, c                                       ; $6833: $41
    nop                                           ; $6834: $00
    xor l                                         ; $6835: $ad
    ld b, b                                       ; $6836: $40
    ld a, [hl-]                                   ; $6837: $3a
    pop bc                                        ; $6838: $c1
    ld l, a                                       ; $6839: $6f
    add b                                         ; $683a: $80
    ld a, [de]                                    ; $683b: $1a
    pop bc                                        ; $683c: $c1
    nop                                           ; $683d: $00
    xor $00                                       ; $683e: $ee $00
    cp c                                          ; $6840: $b9
    inc b                                         ; $6841: $04
    db $f4                                        ; $6842: $f4
    nop                                           ; $6843: $00
    ld [hl], c                                    ; $6844: $71
    inc b                                         ; $6845: $04
    inc b                                         ; $6846: $04
    db $fc                                        ; $6847: $fc
    nop                                           ; $6848: $00
    ld a, b                                       ; $6849: $78
    inc b                                         ; $684a: $04
    xor $30                                       ; $684b: $ee $30
    nop                                           ; $684d: $00
    pop bc                                        ; $684e: $c1
    ld c, $00                                     ; $684f: $0e $00
    jr nc, jr_0c4_6872                            ; $6851: $30 $1f

    and b                                         ; $6853: $a0
    rra                                           ; $6854: $1f
    sub b                                         ; $6855: $90
    rra                                           ; $6856: $1f
    add b                                         ; $6857: $80
    rra                                           ; $6858: $1f
    nop                                           ; $6859: $00
    ret nc                                        ; $685a: $d0

    rra                                           ; $685b: $1f
    ret z                                         ; $685c: $c8

    rla                                           ; $685d: $17
    pop de                                        ; $685e: $d1
    ld e, $7f                                     ; $685f: $1e $7f
    add b                                         ; $6861: $80
    nop                                           ; $6862: $00
    ld [hl], l                                    ; $6863: $75
    add d                                         ; $6864: $82
    rst $38                                       ; $6865: $ff
    nop                                           ; $6866: $00
    ld a, h                                       ; $6867: $7c
    add d                                         ; $6868: $82
    ld a, e                                       ; $6869: $7b
    add b                                         ; $686a: $80
    nop                                           ; $686b: $00
    ld a, c                                       ; $686c: $79
    add d                                         ; $686d: $82
    ld a, [hl]                                    ; $686e: $7e
    add b                                         ; $686f: $80
    ld e, c                                       ; $6870: $59
    add d                                         ; $6871: $82

jr_0c4_6872:
    ei                                            ; $6872: $fb
    nop                                           ; $6873: $00
    nop                                           ; $6874: $00
    db $f4                                        ; $6875: $f4
    ld [$00f9], sp                                ; $6876: $08 $f9 $00
    or l                                          ; $6879: $b5
    ld [$00fc], sp                                ; $687a: $08 $fc $00
    nop                                           ; $687d: $00
    ld [hl], c                                    ; $687e: $71
    ld [$00ea], sp                                ; $687f: $08 $ea $00
    di                                            ; $6882: $f3
    ld [$00de], sp                                ; $6883: $08 $de $00
    ld b, b                                       ; $6886: $40
    or c                                          ; $6887: $b1
    inc c                                         ; $6888: $0c
    nop                                           ; $6889: $00
    push af                                       ; $688a: $f5
    ld [$00bb], sp                                ; $688b: $08 $bb $00
    ld h, l                                       ; $688e: $65
    stop                                          ; $688f: $10 $00
    ld a, [c]                                     ; $6891: $f2
    nop                                           ; $6892: $00
    and [hl]                                      ; $6893: $a6
    db $10                                        ; $6894: $10
    ld c, b                                       ; $6895: $48
    dec d                                         ; $6896: $15
    inc h                                         ; $6897: $24
    dec sp                                        ; $6898: $3b
    nop                                           ; $6899: $00
    add b                                         ; $689a: $80
    dec sp                                        ; $689b: $3b
    and b                                         ; $689c: $a0
    dec sp                                        ; $689d: $3b
    add h                                         ; $689e: $84
    dec sp                                        ; $689f: $3b
    ldh [$5f], a                                  ; $68a0: $e0 $5f
    nop                                           ; $68a2: $00
    add l                                         ; $68a3: $85
    ld a, e                                       ; $68a4: $7b
    call Call_0c4_7f72                            ; $68a5: $cd $72 $7f
    add b                                         ; $68a8: $80
    ld l, h                                       ; $68a9: $6c
    add d                                         ; $68aa: $82
    ld b, b                                       ; $68ab: $40
    rst $28                                       ; $68ac: $ef
    sub h                                         ; $68ad: $94
    nop                                           ; $68ae: $00
    rst $38                                       ; $68af: $ff
    nop                                           ; $68b0: $00
    ld [bc], a                                    ; $68b1: $02
    db $fc                                        ; $68b2: $fc
    cp $fc                                        ; $68b3: $fe $fc
    ld b, h                                       ; $68b5: $44
    ld c, e                                       ; $68b6: $4b
    sub h                                         ; $68b7: $94
    nop                                           ; $68b8: $00
    or c                                          ; $68b9: $b1
    ld [$38fa], sp                                ; $68ba: $08 $fa $38
    nop                                           ; $68bd: $00
    xor e                                         ; $68be: $ab
    nop                                           ; $68bf: $00
    inc b                                         ; $68c0: $04
    push hl                                       ; $68c1: $e5
    db $10                                        ; $68c2: $10
    pop de                                        ; $68c3: $d1
    nop                                           ; $68c4: $00
    and l                                         ; $68c5: $a5
    jr nc, jr_0c4_68c8                            ; $68c6: $30 $00

jr_0c4_68c8:
    inc [hl]                                      ; $68c8: $34
    dec hl                                        ; $68c9: $2b
    nop                                           ; $68ca: $00
    add b                                         ; $68cb: $80
    dec sp                                        ; $68cc: $3b
    ld [hl], b                                    ; $68cd: $70
    dec hl                                        ; $68ce: $2b
    add b                                         ; $68cf: $80
    ccf                                           ; $68d0: $3f
    and d                                         ; $68d1: $a2
    dec a                                         ; $68d2: $3d
    ld [$3f80], sp                                ; $68d3: $08 $80 $3f
    or h                                          ; $68d6: $b4
    dec hl                                        ; $68d7: $2b
    jr nc, jr_0c4_6902                            ; $68d8: $30 $28

    ld a, a                                       ; $68da: $7f
    add b                                         ; $68db: $80
    ld bc, $fe04                                  ; $68dc: $01 $04 $fe
    rst $38                                       ; $68df: $ff
    db $fc                                        ; $68e0: $fc
    ret                                           ; $68e1: $c9


    ld [bc], a                                    ; $68e2: $02
    jr nc, @+$2a                                  ; $68e3: $30 $28

    ld l, [hl]                                    ; $68e5: $6e
    nop                                           ; $68e6: $00
    ld b, b                                       ; $68e7: $40
    or h                                          ; $68e8: $b4
    ld a, b                                       ; $68e9: $78
    nop                                           ; $68ea: $00
    push af                                       ; $68eb: $f5
    ld [$1548], sp                                ; $68ec: $08 $48 $15
    jr nc, jr_0c4_6920                            ; $68ef: $30 $2f

    nop                                           ; $68f1: $00
    adc b                                         ; $68f2: $88
    scf                                           ; $68f3: $37
    ld [hl], c                                    ; $68f4: $71
    ld l, $80                                     ; $68f5: $2e $80
    rra                                           ; $68f7: $1f
    or b                                          ; $68f8: $b0
    cpl                                           ; $68f9: $2f
    nop                                           ; $68fa: $00
    add d                                         ; $68fb: $82
    dec a                                         ; $68fc: $3d
    and [hl]                                      ; $68fd: $a6
    add hl, sp                                    ; $68fe: $39
    ld a, a                                       ; $68ff: $7f
    add b                                         ; $6900: $80
    ld a, b                                       ; $6901: $78

jr_0c4_6902:
    add d                                         ; $6902: $82
    dec b                                         ; $6903: $05
    ld e, a                                       ; $6904: $5f
    add b                                         ; $6905: $80
    ld a, l                                       ; $6906: $7d
    add d                                         ; $6907: $82
    ld l, a                                       ; $6908: $6f
    jr nc, jr_0c4_691b                            ; $6909: $30 $10

    and l                                         ; $690b: $a5
    jr nc, jr_0c4_690e                            ; $690c: $30 $00

jr_0c4_690e:
    ld d, b                                       ; $690e: $50
    pop af                                        ; $690f: $f1
    sbc b                                         ; $6910: $98
    nop                                           ; $6911: $00
    ld [hl], e                                    ; $6912: $73
    sbc b                                         ; $6913: $98
    nop                                           ; $6914: $00
    ld [hl], d                                    ; $6915: $72
    ld [$0069], sp                                ; $6916: $08 $69 $00
    ld b, b                                       ; $6919: $40
    db $d3                                        ; $691a: $d3

jr_0c4_691b:
    jr nc, jr_0c4_694d                            ; $691b: $30 $30

    jp nz, $f11d                                  ; $691d: $c2 $1d $f1

jr_0c4_6920:
    ld l, $42                                     ; $6920: $2e $42
    dec a                                         ; $6922: $3d
    jr nz, @+$6c                                  ; $6923: $20 $6a

    dec [hl]                                      ; $6925: $35
    jr nc, jr_0c4_6950                            ; $6926: $30 $28

    ld a, a                                       ; $6928: $7f
    add b                                         ; $6929: $80
    nop                                           ; $692a: $00
    rst $38                                       ; $692b: $ff
    ld a, a                                       ; $692c: $7f
    ld [bc], a                                    ; $692d: $02
    cp $64                                        ; $692e: $fe $64
    add c                                         ; $6930: $81

jr_0c4_6931:
    sbc $00                                       ; $6931: $de $00
    ld hl, sp-$08                                 ; $6933: $f8 $f8
    nop                                           ; $6935: $00
    ld a, d                                       ; $6936: $7a
    jr z, jr_0c4_693d                             ; $6937: $28 $04

    db $dd                                        ; $6939: $dd
    inc b                                         ; $693a: $04
    nop                                           ; $693b: $00
    ld l, h                                       ; $693c: $6c

jr_0c4_693d:
    jr nc, jr_0c4_6940                            ; $693d: $30 $01

    or h                                          ; $693f: $b4

jr_0c4_6940:
    nop                                           ; $6940: $00
    ret                                           ; $6941: $c9


    nop                                           ; $6942: $00
    jr nz, jr_0c4_6931                            ; $6943: $20 $ec

    nop                                           ; $6945: $00
    ret nz                                        ; $6946: $c0

    ccf                                           ; $6947: $3f
    rst $38                                       ; $6948: $ff
    ccf                                           ; $6949: $3f
    rst $38                                       ; $694a: $ff
    nop                                           ; $694b: $00
    nop                                           ; $694c: $00

jr_0c4_694d:
    xor a                                         ; $694d: $af
    ld b, b                                       ; $694e: $40
    db $fd                                        ; $694f: $fd

jr_0c4_6950:
    nop                                           ; $6950: $00
    ld [de], a                                    ; $6951: $12
    ld l, l                                       ; $6952: $6d
    adc c                                         ; $6953: $89
    nop                                           ; $6954: $00
    jp nc, $db00                                  ; $6955: $d2 $00 $db

    and l                                         ; $6958: $a5
    jp c, $fb84                                   ; $6959: $da $84 $fb

    jp nz, $bc00                                  ; $695c: $c2 $00 $bc

    ld b, c                                       ; $695f: $41
    cp [hl]                                       ; $6960: $be
    adc d                                         ; $6961: $8a
    db $f4                                        ; $6962: $f4
    inc hl                                        ; $6963: $23
    nop                                           ; $6964: $00
    sub c                                         ; $6965: $91
    nop                                           ; $6966: $00
    inc b                                         ; $6967: $04
    daa                                           ; $6968: $27
    nop                                           ; $6969: $00
    and c                                         ; $696a: $a1
    inc b                                         ; $696b: $04
    sub a                                         ; $696c: $97
    nop                                           ; $696d: $00
    ld h, a                                       ; $696e: $67
    ld [$4f08], sp                                ; $696f: $08 $08 $4f
    nop                                           ; $6972: $00
    ld b, [hl]                                    ; $6973: $46
    ld [$e801], sp                                ; $6974: $08 $01 $e8
    db $10                                        ; $6977: $10
    ld a, d                                       ; $6978: $7a
    nop                                           ; $6979: $00
    nop                                           ; $697a: $00
    ldh [$1f], a                                  ; $697b: $e0 $1f
    ld a, a                                       ; $697d: $7f
    rra                                           ; $697e: $1f
    rst $38                                       ; $697f: $ff
    nop                                           ; $6980: $00
    rst $10                                       ; $6981: $d7
    nop                                           ; $6982: $00

jr_0c4_6983:
    jr nz, jr_0c4_6983                            ; $6983: $20 $fe

    nop                                           ; $6985: $00
    inc b                                         ; $6986: $04
    dec sp                                        ; $6987: $3b
    push bc                                       ; $6988: $c5
    ld [hl], d                                    ; $6989: $72
    ld [$7700], sp                                ; $698a: $08 $00 $77
    ld b, c                                       ; $698d: $41
    cp $c2                                        ; $698e: $fe $c2
    db $fd                                        ; $6990: $fd
    pop hl                                        ; $6991: $e1
    ld e, [hl]                                    ; $6992: $5e
    and b                                         ; $6993: $a0
    nop                                           ; $6994: $00
    ld e, a                                       ; $6995: $5f
    push bc                                       ; $6996: $c5
    ld a, d                                       ; $6997: $7a
    inc de                                        ; $6998: $13
    add b                                         ; $6999: $80
    ld c, d                                       ; $699a: $4a
    inc b                                         ; $699b: $04
    dec h                                         ; $699c: $25
    nop                                           ; $699d: $00
    nop                                           ; $699e: $00
    ld h, d                                       ; $699f: $62
    inc b                                         ; $69a0: $04
    ld c, e                                       ; $69a1: $4b
    nop                                           ; $69a2: $00
    inc sp                                        ; $69a3: $33
    inc b                                         ; $69a4: $04
    and a                                         ; $69a5: $a7
    ld [$2300], sp                                ; $69a6: $08 $00 $23
    inc b                                         ; $69a9: $04
    jp c, $0140                                   ; $69aa: $da $40 $01

    db $dd                                        ; $69ad: $dd
    nop                                           ; $69ae: $00
    ldh a, [rP1]                                  ; $69af: $f0 $00
    rrca                                          ; $69b1: $0f
    cp a                                          ; $69b2: $bf
    rrca                                          ; $69b3: $0f
    rst $38                                       ; $69b4: $ff
    nop                                           ; $69b5: $00
    db $eb                                        ; $69b6: $eb
    db $10                                        ; $69b7: $10
    ld a, a                                       ; $69b8: $7f
    nop                                           ; $69b9: $00
    nop                                           ; $69ba: $00
    add hl, bc                                    ; $69bb: $09
    ld [hl], $a2                                  ; $69bc: $36 $a2
    add hl, sp                                    ; $69be: $39
    inc b                                         ; $69bf: $04
    dec sp                                        ; $69c0: $3b
    jr nz, jr_0c4_69c3                            ; $69c1: $20 $00

jr_0c4_69c3:
    rst $38                                       ; $69c3: $ff
    push bc                                       ; $69c4: $c5
    ld a, [$2ff0]                                 ; $69c5: $fa $f0 $2f
    ret nc                                        ; $69c8: $d0

    cpl                                           ; $69c9: $2f
    ld h, d                                       ; $69ca: $62
    nop                                           ; $69cb: $00
    dec a                                         ; $69cc: $3d
    add hl, bc                                    ; $69cd: $09
    ret nz                                        ; $69ce: $c0

    push bc                                       ; $69cf: $c5
    ld [bc], a                                    ; $69d0: $02
    ld [de], a                                    ; $69d1: $12
    add b                                         ; $69d2: $80
    pop de                                        ; $69d3: $d1
    nop                                           ; $69d4: $00
    ld [bc], a                                    ; $69d5: $02
    dec h                                         ; $69d6: $25
    add b                                         ; $69d7: $80
    sbc c                                         ; $69d8: $99
    ld [bc], a                                    ; $69d9: $02
    ld d, e                                       ; $69da: $53
    add b                                         ; $69db: $80
    sub c                                         ; $69dc: $91
    ld [$fe02], sp                                ; $69dd: $08 $02 $fe
    nop                                           ; $69e0: $00
    ld a, [c]                                     ; $69e1: $f2
    inc l                                         ; $69e2: $2c
    ld bc, $0ff0                                  ; $69e3: $01 $f0 $0f
    rst $38                                       ; $69e6: $ff
    jr nz, jr_0c4_69f0                            ; $69e7: $20 $07

    rst $38                                       ; $69e9: $ff
    ld h, [hl]                                    ; $69ea: $66
    ld bc, $00bf                                  ; $69eb: $01 $bf $00
    ld [bc], a                                    ; $69ee: $02
    dec e                                         ; $69ef: $1d

jr_0c4_69f0:
    ld h, d                                       ; $69f0: $62
    nop                                           ; $69f1: $00
    inc [hl]                                      ; $69f2: $34
    nop                                           ; $69f3: $00
    ld [hl], $29                                  ; $69f4: $36 $29
    or $e2                                        ; $69f6: $f6 $e2
    db $fd                                        ; $69f8: $fd
    ld hl, sp+$00                                 ; $69f9: $f8 $00
    rla                                           ; $69fb: $17
    add sp, $17                                   ; $69fc: $e8 $17
    or c                                          ; $69fe: $b1
    ld e, $09                                     ; $69ff: $1e $09
    ret nz                                        ; $6a01: $c0

    ld h, h                                       ; $6a02: $64
    nop                                           ; $6a03: $00
    add c                                         ; $6a04: $81
    add hl, bc                                    ; $6a05: $09
    ret nz                                        ; $6a06: $c0

    ld l, b                                       ; $6a07: $68
    add c                                         ; $6a08: $81
    inc de                                        ; $6a09: $13
    ret nz                                        ; $6a0a: $c0

    ld c, h                                       ; $6a0b: $4c
    nop                                           ; $6a0c: $00
    add c                                         ; $6a0d: $81
    add hl, hl                                    ; $6a0e: $29
    ret nz                                        ; $6a0f: $c0

    ld c, b                                       ; $6a10: $48
    add c                                         ; $6a11: $81
    db $ed                                        ; $6a12: $ed
    nop                                           ; $6a13: $00
    ld sp, hl                                     ; $6a14: $f9
    add d                                         ; $6a15: $82
    call z, $f800                                 ; $6a16: $cc $00 $f8
    rlca                                          ; $6a19: $07
    ld a, a                                       ; $6a1a: $7f
    inc bc                                        ; $6a1b: $03
    rst $38                                       ; $6a1c: $ff
    cp $01                                        ; $6a1d: $fe $01
    rst $18                                       ; $6a1f: $df
    add b                                         ; $6a20: $80
    call nz, $eb00                                ; $6a21: $c4 $00 $eb
    ld bc, $815a                                  ; $6a24: $01 $5a $81
    rst $38                                       ; $6a27: $ff
    ld bc, $006e                                  ; $6a28: $01 $6e $00
    add c                                         ; $6a2b: $81
    cp a                                          ; $6a2c: $bf
    nop                                           ; $6a2d: $00
    db $f4                                        ; $6a2e: $f4
    ld [bc], a                                    ; $6a2f: $02
    ld [hl], a                                    ; $6a30: $77
    nop                                           ; $6a31: $00
    ld d, b                                       ; $6a32: $50
    nop                                           ; $6a33: $00
    xor [hl]                                      ; $6a34: $ae
    add l                                         ; $6a35: $85
    ld a, b                                       ; $6a36: $78
    ld bc, $fdfc                                  ; $6a37: $01 $fc $fd
    ld hl, sp+$10                                 ; $6a3a: $f8 $10
    add b                                         ; $6a3c: $80
    sub d                                         ; $6a3d: $92
    nop                                           ; $6a3e: $00
    ld d, d                                       ; $6a3f: $52
    ld [$0029], sp                                ; $6a40: $08 $29 $00
    ld e, a                                       ; $6a43: $5f
    nop                                           ; $6a44: $00
    ld l, e                                       ; $6a45: $6b
    nop                                           ; $6a46: $00
    db $10                                        ; $6a47: $10
    cp e                                          ; $6a48: $bb
    nop                                           ; $6a49: $00
    dec hl                                        ; $6a4a: $2b
    db $10                                        ; $6a4b: $10
    adc a                                         ; $6a4c: $8f
    nop                                           ; $6a4d: $00
    dec b                                         ; $6a4e: $05

jr_0c4_6a4f:
    nop                                           ; $6a4f: $00
    db $10                                        ; $6a50: $10
    ld e, a                                       ; $6a51: $5f
    nop                                           ; $6a52: $00
    ld c, l                                       ; $6a53: $4d
    db $10                                        ; $6a54: $10
    rst $10                                       ; $6a55: $d7
    jr nz, jr_0c4_6a4f                            ; $6a56: $20 $f7

    ld [bc], a                                    ; $6a58: $02
    nop                                           ; $6a59: $00
    ld c, a                                       ; $6a5a: $4f
    jr nz, jr_0c4_6ad8                            ; $6a5b: $20 $7b

    nop                                           ; $6a5d: $00
    ld d, a                                       ; $6a5e: $57
    inc a                                         ; $6a5f: $3c
    inc bc                                        ; $6a60: $03
    cp h                                          ; $6a61: $bc
    nop                                           ; $6a62: $00
    ld b, c                                       ; $6a63: $41
    push de                                       ; $6a64: $d5
    nop                                           ; $6a65: $00
    adc b                                         ; $6a66: $88
    ld [hl], a                                    ; $6a67: $77
    add h                                         ; $6a68: $84
    ld a, [$0000]                                 ; $6a69: $fa $00 $00
    cp $fe                                        ; $6a6c: $fe $fe
    cp $08                                        ; $6a6e: $fe $08
    add c                                         ; $6a70: $81
    ld d, e                                       ; $6a71: $53
    nop                                           ; $6a72: $00
    add hl, de                                    ; $6a73: $19
    nop                                           ; $6a74: $00
    ld [bc], a                                    ; $6a75: $02
    ld d, d                                       ; $6a76: $52
    nop                                           ; $6a77: $00
    cpl                                           ; $6a78: $2f
    nop                                           ; $6a79: $00
    or c                                          ; $6a7a: $b1
    inc b                                         ; $6a7b: $04
    push de                                       ; $6a7c: $d5
    add b                                         ; $6a7d: $80
    inc b                                         ; $6a7e: $04
    ld de, $0845                                  ; $6a7f: $11 $45 $08
    rra                                           ; $6a82: $1f
    nop                                           ; $6a83: $00
    ld d, a                                       ; $6a84: $57
    ld [$00f2], sp                                ; $6a85: $08 $f2 $00
    ld [$00ff], sp                                ; $6a88: $08 $ff $00
    ld l, a                                       ; $6a8b: $6f
    db $10                                        ; $6a8c: $10
    ld a, l                                       ; $6a8d: $7d
    nop                                           ; $6a8e: $00
    rst $28                                       ; $6a8f: $ef
    jr nz, @+$12                                  ; $6a90: $20 $10

    or a                                          ; $6a92: $b7
    inc b                                         ; $6a93: $04
    nop                                           ; $6a94: $00
    cp l                                          ; $6a95: $bd
    nop                                           ; $6a96: $00
    call nz, $d23b                                ; $6a97: $c4 $3b $d2
    nop                                           ; $6a9a: $00
    ld l, l                                       ; $6a9b: $6d
    add b                                         ; $6a9c: $80
    ld a, a                                       ; $6a9d: $7f
    rst $38                                       ; $6a9e: $ff
    ld a, a                                       ; $6a9f: $7f
    jp nz, $d920                                  ; $6aa0: $c2 $20 $d9

    jr nz, jr_0c4_6aa5                            ; $6aa3: $20 $00

jr_0c4_6aa5:
    adc d                                         ; $6aa5: $8a
    ld b, b                                       ; $6aa6: $40
    nop                                           ; $6aa7: $00
    rla                                           ; $6aa8: $17
    add b                                         ; $6aa9: $80
    ret                                           ; $6aaa: $c9


    ld [bc], a                                    ; $6aab: $02
    ld e, e                                       ; $6aac: $5b
    add d                                         ; $6aad: $82
    inc b                                         ; $6aae: $04
    nop                                           ; $6aaf: $00
    inc de                                        ; $6ab0: $13
    add b                                         ; $6ab1: $80
    ld d, c                                       ; $6ab2: $51
    ld [bc], a                                    ; $6ab3: $02
    ld c, e                                       ; $6ab4: $4b
    ld b, d                                       ; $6ab5: $42
    nop                                           ; $6ab6: $00
    ei                                            ; $6ab7: $fb
    jr nz, jr_0c4_6abe                            ; $6ab8: $20 $04

    rst $38                                       ; $6aba: $ff
    ld a, $02                                     ; $6abb: $3e $02
    cp a                                          ; $6abd: $bf

jr_0c4_6abe:
    nop                                           ; $6abe: $00
    ld [$bd04], a                                 ; $6abf: $ea $04 $bd
    jr nz, jr_0c4_6ac4                            ; $6ac2: $20 $00

jr_0c4_6ac4:
    rst $30                                       ; $6ac4: $f7
    ld [hl], $02                                  ; $6ac5: $36 $02
    ld h, d                                       ; $6ac7: $62
    dec e                                         ; $6ac8: $1d
    cp b                                          ; $6ac9: $b8
    rla                                           ; $6aca: $17
    and b                                         ; $6acb: $a0
    add b                                         ; $6acc: $80
    sbc e                                         ; $6acd: $9b
    dec b                                         ; $6ace: $05
    pop hl                                        ; $6acf: $e1
    db $10                                        ; $6ad0: $10
    ld a, [$a300]                                 ; $6ad1: $fa $00 $a3
    db $10                                        ; $6ad4: $10
    cp c                                          ; $6ad5: $b9
    nop                                           ; $6ad6: $00
    nop                                           ; $6ad7: $00

jr_0c4_6ad8:
    ld a, [bc]                                    ; $6ad8: $0a
    ld b, b                                       ; $6ad9: $40
    ld h, [hl]                                    ; $6ada: $66
    add c                                         ; $6adb: $81
    dec hl                                        ; $6adc: $2b
    ret nz                                        ; $6add: $c0

    ld [c], a                                     ; $6ade: $e2
    nop                                           ; $6adf: $00
    add c                                         ; $6ae0: $81
    inc b                                         ; $6ae1: $04
    ld b, b                                       ; $6ae2: $40
    ld e, b                                       ; $6ae3: $58
    ld bc, $4013                                  ; $6ae4: $01 $13 $40
    ld c, d                                       ; $6ae7: $4a
    nop                                           ; $6ae8: $00
    ld bc, $02fd                                  ; $6ae9: $01 $fd $02
    cp a                                          ; $6aec: $bf
    nop                                           ; $6aed: $00
    or h                                          ; $6aee: $b4
    ld [bc], a                                    ; $6aef: $02
    or a                                          ; $6af0: $b7
    pop bc                                        ; $6af1: $c1
    ldh a, [rDIV]                                 ; $6af2: $f0 $04
    inc b                                         ; $6af4: $04
    ld [$00f7], sp                                ; $6af5: $08 $f7 $00
    ld e, h                                       ; $6af8: $5c
    add d                                         ; $6af9: $82
    cp l                                          ; $6afa: $bd
    ld [c], a                                     ; $6afb: $e2
    nop                                           ; $6afc: $00
    nop                                           ; $6afd: $00
    db $fd                                        ; $6afe: $fd
    nop                                           ; $6aff: $00
    xor c                                         ; $6b00: $a9
    inc b                                         ; $6b01: $04
    ld sp, hl                                     ; $6b02: $f9
    nop                                           ; $6b03: $00
    ld [hl], b                                    ; $6b04: $70
    ld [$f811], sp                                ; $6b05: $08 $11 $f8
    nop                                           ; $6b08: $00
    add d                                         ; $6b09: $82
    call nz, Call_0c4_4100                        ; $6b0a: $c4 $00 $41
    ld [$8e2c], sp                                ; $6b0d: $08 $2c $8e
    nop                                           ; $6b10: $00
    nop                                           ; $6b11: $00
    ld e, c                                       ; $6b12: $59
    nop                                           ; $6b13: $00
    add d                                         ; $6b14: $82
    db $10                                        ; $6b15: $10
    sbc c                                         ; $6b16: $99
    nop                                           ; $6b17: $00
    sbc l                                         ; $6b18: $9d
    nop                                           ; $6b19: $00
    nop                                           ; $6b1a: $00
    nop                                           ; $6b1b: $00
    ccf                                           ; $6b1c: $3f
    cp a                                          ; $6b1d: $bf
    ccf                                           ; $6b1e: $3f
    and b                                         ; $6b1f: $a0
    ccf                                           ; $6b20: $3f
    ld b, b                                       ; $6b21: $40
    ccf                                           ; $6b22: $3f
    nop                                           ; $6b23: $00
    ld d, d                                       ; $6b24: $52
    ld l, l                                       ; $6b25: $6d
    ld [bc], a                                    ; $6b26: $02
    ld l, l                                       ; $6b27: $6d
    ld b, b                                       ; $6b28: $40
    ld l, l                                       ; $6b29: $6d
    cp l                                          ; $6b2a: $bd
    ld b, b                                       ; $6b2b: $40
    nop                                           ; $6b2c: $00
    cpl                                           ; $6b2d: $2f
    add b                                         ; $6b2e: $80
    cp $81                                        ; $6b2f: $fe $81
    ccf                                           ; $6b31: $3f
    add b                                         ; $6b32: $80
    ld a, [hl+]                                   ; $6b33: $2a
    pop bc                                        ; $6b34: $c1
    nop                                           ; $6b35: $00
    cp $00                                        ; $6b36: $fe $00
    ld e, b                                       ; $6b38: $58
    add d                                         ; $6b39: $82
    ld a, [$2000]                                 ; $6b3a: $fa $00 $20
    add d                                         ; $6b3d: $82
    nop                                           ; $6b3e: $00
    ld c, h                                       ; $6b3f: $4c
    nop                                           ; $6b40: $00
    ld d, b                                       ; $6b41: $50
    inc b                                         ; $6b42: $04
    ld c, l                                       ; $6b43: $4d
    nop                                           ; $6b44: $00
    ld d, c                                       ; $6b45: $51
    ld [bc], a                                    ; $6b46: $02
    db $10                                        ; $6b47: $10
    ld d, l                                       ; $6b48: $55
    nop                                           ; $6b49: $00
    jr nz, @-$64                                  ; $6b4a: $20 $9a

    ld bc, $00c5                                  ; $6b4c: $01 $c5 $00
    ld b, b                                       ; $6b4f: $40
    rrca                                          ; $6b50: $0f
    nop                                           ; $6b51: $00
    ld l, a                                       ; $6b52: $6f
    rrca                                          ; $6b53: $0f
    ld l, b                                       ; $6b54: $68
    rrca                                          ; $6b55: $0f
    ld d, b                                       ; $6b56: $50
    rrca                                          ; $6b57: $0f
    ld d, l                                       ; $6b58: $55
    ld a, [de]                                    ; $6b59: $1a
    nop                                           ; $6b5a: $00
    add b                                         ; $6b5b: $80
    ld a, [de]                                    ; $6b5c: $1a
    ld d, c                                       ; $6b5d: $51
    ld a, [de]                                    ; $6b5e: $1a
    ld l, a                                       ; $6b5f: $6f
    db $10                                        ; $6b60: $10
    dec bc                                        ; $6b61: $0b
    ldh [rP1], a                                  ; $6b62: $e0 $00
    rst $38                                       ; $6b64: $ff
    ldh [rIF], a                                  ; $6b65: $e0 $0f
    ldh [$0a], a                                  ; $6b67: $e0 $0a
    ldh a, [$3f]                                  ; $6b69: $f0 $3f
    ret nz                                        ; $6b6b: $c0

    nop                                           ; $6b6c: $00
    ld e, $e0                                     ; $6b6d: $1e $e0
    ld a, $c0                                     ; $6b6f: $3e $c0
    ld [$e340], sp                                ; $6b71: $08 $40 $e3
    nop                                           ; $6b74: $00
    nop                                           ; $6b75: $00
    or h                                          ; $6b76: $b4
    ld b, c                                       ; $6b77: $41
    db $e3                                        ; $6b78: $e3
    nop                                           ; $6b79: $00
    sub h                                         ; $6b7a: $94
    ld b, b                                       ; $6b7b: $40
    push de                                       ; $6b7c: $d5
    nop                                           ; $6b7d: $00
    nop                                           ; $6b7e: $00
    add h                                         ; $6b7f: $84
    ld b, c                                       ; $6b80: $41
    ret                                           ; $6b81: $c9


    nop                                           ; $6b82: $00
    ld d, e                                       ; $6b83: $53
    add b                                         ; $6b84: $80
    jr nz, jr_0c4_6b8a                            ; $6b85: $20 $03

    nop                                           ; $6b87: $00
    dec hl                                        ; $6b88: $2b
    inc bc                                        ; $6b89: $03

jr_0c4_6b8a:
    ld e, d                                       ; $6b8a: $5a
    inc bc                                        ; $6b8b: $03
    ld d, h                                       ; $6b8c: $54
    add e                                         ; $6b8d: $83
    ld d, e                                       ; $6b8e: $53
    ld [bc], a                                    ; $6b8f: $02
    nop                                           ; $6b90: $00
    jr nz, jr_0c4_6b95                            ; $6b91: $20 $02

    ld d, d                                       ; $6b93: $52
    ld [bc], a                                    ; $6b94: $02

jr_0c4_6b95:
    ld a, d                                       ; $6b95: $7a
    inc b                                         ; $6b96: $04

jr_0c4_6b97:
    dec bc                                        ; $6b97: $0b
    ldh a, [rP1]                                  ; $6b98: $f0 $00
    rst $30                                       ; $6b9a: $f7
    ld hl, sp+$0b                                 ; $6b9b: $f8 $0b
    ldh a, [rSC]                                  ; $6b9d: $f0 $02
    db $fc                                        ; $6b9f: $fc
    ld c, l                                       ; $6ba0: $4d
    or b                                          ; $6ba1: $b0
    nop                                           ; $6ba2: $00
    rlca                                          ; $6ba3: $07
    cp b                                          ; $6ba4: $b8
    ld c, l                                       ; $6ba5: $4d
    or b                                          ; $6ba6: $b0
    ld [c], a                                     ; $6ba7: $e2
    db $10                                        ; $6ba8: $10
    ld sp, hl                                     ; $6ba9: $f9
    nop                                           ; $6baa: $00
    db $10                                        ; $6bab: $10
    ld l, l                                       ; $6bac: $6d
    db $10                                        ; $6bad: $10
    ld a, c                                       ; $6bae: $79
    jp c, $f402                                   ; $6baf: $da $02 $f4

    nop                                           ; $6bb2: $00
    and c                                         ; $6bb3: $a1
    db $10                                        ; $6bb4: $10
    db $10                                        ; $6bb5: $10
    or d                                          ; $6bb6: $b2
    nop                                           ; $6bb7: $00
    inc d                                         ; $6bb8: $14
    cp $06                                        ; $6bb9: $fe $06
    ld a, [bc]                                    ; $6bbb: $0a
    ld b, b                                       ; $6bbc: $40
    ld d, [hl]                                    ; $6bbd: $56
    nop                                           ; $6bbe: $00
    nop                                           ; $6bbf: $00
    dec d                                         ; $6bc0: $15
    jr nz, jr_0c4_6b97                            ; $6bc1: $20 $d4

    nop                                           ; $6bc3: $00
    ld [$5440], sp                                ; $6bc4: $08 $40 $54
    nop                                           ; $6bc7: $00
    nop                                           ; $6bc8: $00
    db $ed                                        ; $6bc9: $ed
    ld [bc], a                                    ; $6bca: $02
    ld [bc], a                                    ; $6bcb: $02
    db $fc                                        ; $6bcc: $fc
    db $fd                                        ; $6bcd: $fd
    cp $82                                        ; $6bce: $fe $82

jr_0c4_6bd0:
    db $fc                                        ; $6bd0: $fc
    nop                                           ; $6bd1: $00
    nop                                           ; $6bd2: $00
    rst $38                                       ; $6bd3: $ff
    sub e                                         ; $6bd4: $93
    db $ec                                        ; $6bd5: $ec
    ld bc, $93ee                                  ; $6bd6: $01 $ee $93
    db $ec                                        ; $6bd9: $ec

jr_0c4_6bda:
    dec b                                         ; $6bda: $05
    ld [c], a                                     ; $6bdb: $e2
    ld [$00f1], sp                                ; $6bdc: $08 $f1 $00
    ld b, h                                       ; $6bdf: $44
    ld a, [hl-]                                   ; $6be0: $3a
    inc bc                                        ; $6be1: $03
    ld d, d                                       ; $6be2: $52
    ld d, [hl]                                    ; $6be3: $56
    inc bc                                        ; $6be4: $03
    ld b, b                                       ; $6be5: $40
    db $e4                                        ; $6be6: $e4
    inc a                                         ; $6be7: $3c
    nop                                           ; $6be8: $00
    add $10                                       ; $6be9: $c6 $10
    xor [hl]                                      ; $6beb: $ae
    nop                                           ; $6bec: $00
    adc e                                         ; $6bed: $8b
    jr nz, jr_0c4_6bf0                            ; $6bee: $20 $00

jr_0c4_6bf0:
    ld h, l                                       ; $6bf0: $65
    nop                                           ; $6bf1: $00
    adc l                                         ; $6bf2: $8d
    jr nz, @-$2e                                  ; $6bf3: $20 $d0

    nop                                           ; $6bf5: $00
    ld [de], a                                    ; $6bf6: $12
    ld b, b                                       ; $6bf7: $40
    nop                                           ; $6bf8: $00
    call nc, $9000                                ; $6bf9: $d4 $00 $90
    ld l, a                                       ; $6bfc: $6f
    ld b, c                                       ; $6bfd: $41
    ld a, [hl]                                    ; $6bfe: $7e
    ld [$0077], sp                                ; $6bff: $08 $77 $00
    ld h, c                                       ; $6c02: $61
    ld d, [hl]                                    ; $6c03: $56
    ld [bc], a                                    ; $6c04: $02
    ld [hl], l                                    ; $6c05: $75
    sub c                                         ; $6c06: $91
    xor $14                                       ; $6c07: $ee $14
    db $eb                                        ; $6c09: $eb
    db $10                                        ; $6c0a: $10
    add l                                         ; $6c0b: $85
    ld a, [$b27a]                                 ; $6c0c: $fa $7a $b2
    ld [bc], a                                    ; $6c0f: $02
    or h                                          ; $6c10: $b4
    ld [bc], a                                    ; $6c11: $02
    cp [hl]                                       ; $6c12: $be
    nop                                           ; $6c13: $00
    inc d                                         ; $6c14: $14
    db $ec                                        ; $6c15: $ec
    ld [bc], a                                    ; $6c16: $02
    ld e, l                                       ; $6c17: $5d
    cp d                                          ; $6c18: $ba
    ld [bc], a                                    ; $6c19: $02
    cp l                                          ; $6c1a: $bd
    ld [$5a01], sp                                ; $6c1b: $08 $01 $5a
    nop                                           ; $6c1e: $00
    inc d                                         ; $6c1f: $14
    and d                                         ; $6c20: $a2
    ld [$6288], sp                                ; $6c21: $08 $88 $62
    ld [bc], a                                    ; $6c24: $02
    ld a, [hl-]                                   ; $6c25: $3a
    inc c                                         ; $6c26: $0c
    ld bc, $003b                                  ; $6c27: $01 $3b $00
    ld b, b                                       ; $6c2a: $40
    and b                                         ; $6c2b: $a0
    add sp, $13                                   ; $6c2c: $e8 $13
    call nc, $a41b                                ; $6c2e: $d4 $1b $a4
    ld a, [de]                                    ; $6c31: $1a
    ld [de], a                                    ; $6c32: $12
    dec e                                         ; $6c33: $1d
    nop                                           ; $6c34: $00
    ld b, d                                       ; $6c35: $42
    dec e                                         ; $6c36: $1d
    db $10                                        ; $6c37: $10
    rra                                           ; $6c38: $1f
    ld e, $a0                                     ; $6c39: $1e $a0
    scf                                           ; $6c3b: $37
    ld b, b                                       ; $6c3c: $40
    jr nz, jr_0c4_6bda                            ; $6c3d: $20 $9b

    ld h, b                                       ; $6c3f: $60
    call z, Call_000_2b08                         ; $6c40: $cc $08 $2b
    ret nz                                        ; $6c43: $c0

    cp a                                          ; $6c44: $bf
    ld b, b                                       ; $6c45: $40
    or a                                          ; $6c46: $b7
    nop                                           ; $6c47: $00
    ld b, b                                       ; $6c48: $40
    sbc d                                         ; $6c49: $9a
    ld b, c                                       ; $6c4a: $41
    adc l                                         ; $6c4b: $8d
    nop                                           ; $6c4c: $00
    jr z, jr_0c4_6bd0                             ; $6c4d: $28 $81

    sub e                                         ; $6c4f: $93
    nop                                           ; $6c50: $00
    nop                                           ; $6c51: $00
    sub h                                         ; $6c52: $94
    ld b, c                                       ; $6c53: $41
    xor e                                         ; $6c54: $ab
    nop                                           ; $6c55: $00
    db $10                                        ; $6c56: $10
    add c                                         ; $6c57: $81
    xor e                                         ; $6c58: $ab
    nop                                           ; $6c59: $00
    nop                                           ; $6c5a: $00
    ld e, b                                       ; $6c5b: $58
    inc bc                                        ; $6c5c: $03
    ld [hl], d                                    ; $6c5d: $72
    inc bc                                        ; $6c5e: $03
    ld e, b                                       ; $6c5f: $58
    inc bc                                        ; $6c60: $03
    dec hl                                        ; $6c61: $2b
    nop                                           ; $6c62: $00
    ld [bc], a                                    ; $6c63: $02
    ld e, b                                       ; $6c64: $58
    inc bc                                        ; $6c65: $03
    add h                                         ; $6c66: $84
    rlca                                          ; $6c67: $07
    adc b                                         ; $6c68: $88
    rlca                                          ; $6c69: $07
    and l                                         ; $6c6a: $a5
    nop                                           ; $6c6b: $00
    ld b, $83                                     ; $6c6c: $06 $83
    ld l, h                                       ; $6c6e: $6c
    rrca                                          ; $6c6f: $0f
    ldh a, [rLYC]                                 ; $6c70: $f0 $45
    cp b                                          ; $6c72: $b8
    dec c                                         ; $6c73: $0d
    nop                                           ; $6c74: $00
    or b                                          ; $6c75: $b0
    inc de                                        ; $6c76: $13

jr_0c4_6c77:
    xor h                                         ; $6c77: $ac
    ld c, l                                       ; $6c78: $4d
    or b                                          ; $6c79: $b0
    ld b, a                                       ; $6c7a: $47
    cp b                                          ; $6c7b: $b8
    rrca                                          ; $6c7c: $0f
    dec hl                                        ; $6c7d: $2b
    ldh a, [$e6]                                  ; $6c7e: $f0 $e6
    sub $03                                       ; $6c80: $d6 $03
    xor c                                         ; $6c82: $a9
    call z, Call_0c4_6300                         ; $6c83: $cc $00 $63
    ret c                                         ; $6c86: $d8

    nop                                           ; $6c87: $00
    and b                                         ; $6c88: $a0
    ld [$9540], sp                                ; $6c89: $08 $40 $95
    ret z                                         ; $6c8c: $c8

    nop                                           ; $6c8d: $00
    ld d, $40                                     ; $6c8e: $16 $40
    add $00                                       ; $6c90: $c6 $00
    dec c                                         ; $6c92: $0d
    jr nz, @+$42                                  ; $6c93: $20 $40

    ld d, b                                       ; $6c95: $50
    and b                                         ; $6c96: $a0
    nop                                           ; $6c97: $00
    ld d, h                                       ; $6c98: $54
    nop                                           ; $6c99: $00
    jr nz, jr_0c4_6c77                            ; $6c9a: $20 $db

    add c                                         ; $6c9c: $81
    ld a, [$1400]                                 ; $6c9d: $fa $00 $14
    db $eb                                        ; $6ca0: $eb
    add c                                         ; $6ca1: $81
    xor $20                                       ; $6ca2: $ee $20
    ld d, a                                       ; $6ca4: $57
    add c                                         ; $6ca5: $81
    cp $01                                        ; $6ca6: $fe $01
    inc b                                         ; $6ca8: $04
    ei                                            ; $6ca9: $fb
    and l                                         ; $6caa: $a5
    jp c, $10a9                                   ; $6cab: $da $a9 $10

    ld h, b                                       ; $6cae: $60
    ld a, $13                                     ; $6caf: $3e $13
    jr nz, jr_0c4_6cf3                            ; $6cb1: $20 $40

    ccf                                           ; $6cb3: $3f
    ld [$d20a], sp                                ; $6cb4: $08 $0a $d2
    ld l, l                                       ; $6cb7: $6d
    nop                                           ; $6cb8: $00
    ld a, a                                       ; $6cb9: $7f
    ld a, a                                       ; $6cba: $7f
    nop                                           ; $6cbb: $00
    ld a, a                                       ; $6cbc: $7f
    ld a, [hl]                                    ; $6cbd: $7e
    add c                                         ; $6cbe: $81
    sub a                                         ; $6cbf: $97
    pop bc                                        ; $6cc0: $c1
    ld a, h                                       ; $6cc1: $7c
    add c                                         ; $6cc2: $81
    ld l, a                                       ; $6cc3: $6f
    nop                                           ; $6cc4: $00
    add c                                         ; $6cc5: $81
    ld a, [$7b01]                                 ; $6cc6: $fa $01 $7b
    add c                                         ; $6cc9: $81
    nop                                           ; $6cca: $00
    rst $18                                       ; $6ccb: $df
    ld b, e                                       ; $6ccc: $43
    nop                                           ; $6ccd: $00
    xor h                                         ; $6cce: $ac
    ld de, $43ee                                  ; $6ccf: $11 $ee $43
    cp h                                          ; $6cd2: $bc
    ld de, $0aae                                  ; $6cd3: $11 $ae $0a
    nop                                           ; $6cd6: $00
    ld d, h                                       ; $6cd7: $54
    and e                                         ; $6cd8: $a3
    ld d, h                                       ; $6cd9: $54
    add hl, bc                                    ; $6cda: $09
    db $f4                                        ; $6cdb: $f4
    push de                                       ; $6cdc: $d5
    ld [bc], a                                    ; $6cdd: $02
    db $ec                                        ; $6cde: $ec
    nop                                           ; $6cdf: $00
    nop                                           ; $6ce0: $00
    ld a, b                                       ; $6ce1: $78
    rlca                                          ; $6ce2: $07
    ld a, a                                       ; $6ce3: $7f
    rlca                                          ; $6ce4: $07
    ld l, b                                       ; $6ce5: $68
    rlca                                          ; $6ce6: $07
    ld a, d                                       ; $6ce7: $7a
    ld bc, $b00d                                  ; $6ce8: $01 $0d $b0
    rrca                                          ; $6ceb: $0f
    ld a, [$200d]                                 ; $6cec: $fa $0d $20
    rrca                                          ; $6cef: $0f
    ld bc, $0000                                  ; $6cf0: $01 $00 $00

jr_0c4_6cf3:
    ldh a, [$f2]                                  ; $6cf3: $f0 $f2
    ld hl, sp+$0f                                 ; $6cf5: $f8 $0f
    ldh a, [$0b]                                  ; $6cf7: $f0 $0b
    ldh a, [$9f]                                  ; $6cf9: $f0 $9f
    nop                                           ; $6cfb: $00
    ld h, b                                       ; $6cfc: $60
    dec bc                                        ; $6cfd: $0b
    ld [hl], b                                    ; $6cfe: $70
    nop                                           ; $6cff: $00
    ei                                            ; $6d00: $fb
    add sp, -$0b                                  ; $6d01: $e8 $f5
    jp nz, $3d00                                  ; $6d03: $c2 $00 $3d

    add sp, $37                                   ; $6d06: $e8 $37
    and d                                         ; $6d08: $a2
    dec d                                         ; $6d09: $15
    pop hl                                        ; $6d0a: $e1
    ld a, [hl-]                                   ; $6d0b: $3a
    ld b, h                                       ; $6d0c: $44
    nop                                           ; $6d0d: $00
    ld a, [hl-]                                   ; $6d0e: $3a
    ld h, c                                       ; $6d0f: $61
    ld a, $1a                                     ; $6d10: $3e $1a
    ldh [$7d], a                                  ; $6d12: $e0 $7d
    add b                                         ; $6d14: $80
    cpl                                           ; $6d15: $2f
    nop                                           ; $6d16: $00
    ret nz                                        ; $6d17: $c0

    ld l, a                                       ; $6d18: $6f
    add b                                         ; $6d19: $80
    xor a                                         ; $6d1a: $af
    ld b, b                                       ; $6d1b: $40
    ld l, a                                       ; $6d1c: $6f
    add b                                         ; $6d1d: $80
    dec [hl]                                      ; $6d1e: $35
    nop                                           ; $6d1f: $00
    ret nz                                        ; $6d20: $c0

    ld a, l                                       ; $6d21: $7d
    add b                                         ; $6d22: $80
    inc h                                         ; $6d23: $24
    add c                                         ; $6d24: $81
    add c                                         ; $6d25: $81
    ld bc, $0001                                  ; $6d26: $01 $01 $00
    cp $fe                                        ; $6d29: $fe $fe
    rst $38                                       ; $6d2b: $ff
    ld bc, $c5fe                                  ; $6d2c: $01 $fe $c5
    cp d                                          ; $6d2f: $ba
    ld de, $ee02                                  ; $6d30: $11 $02 $ee
    push bc                                       ; $6d33: $c5
    xor d                                         ; $6d34: $aa
    nop                                           ; $6d35: $00
    rst $38                                       ; $6d36: $ff
    db $fd                                        ; $6d37: $fd
    sub h                                         ; $6d38: $94
    dec b                                         ; $6d39: $05
    ld e, l                                       ; $6d3a: $5d
    nop                                           ; $6d3b: $00
    ld b, $f4                                     ; $6d3c: $06 $f4
    inc bc                                        ; $6d3e: $03
    ld e, h                                       ; $6d3f: $5c
    ld b, $b9                                     ; $6d40: $06 $b9
    ld b, $7c                                     ; $6d42: $06 $7c
    inc b                                         ; $6d44: $04
    rlca                                          ; $6d45: $07
    ld b, c                                       ; $6d46: $41
    cp h                                          ; $6d47: $bc
    rrca                                          ; $6d48: $0f
    or b                                          ; $6d49: $b0
    ret nc                                        ; $6d4a: $d0

    nop                                           ; $6d4b: $00
    ldh a, [rHDMA1]                               ; $6d4c: $f0 $51
    nop                                           ; $6d4e: $00
    xor h                                         ; $6d4f: $ac
    dec l                                         ; $6d50: $2d
    ret nc                                        ; $6d51: $d0

    rlca                                          ; $6d52: $07
    ret c                                         ; $6d53: $d8

    dec hl                                        ; $6d54: $2b
    ret nc                                        ; $6d55: $d0

    ld h, l                                       ; $6d56: $65
    jr nz, jr_0c4_6d69                            ; $6d57: $20 $10

    or b                                          ; $6d59: $b0
    xor [hl]                                      ; $6d5a: $ae
    inc bc                                        ; $6d5b: $03
    rst $38                                       ; $6d5c: $ff
    rra                                           ; $6d5d: $1f
    ldh [$1f], a                                  ; $6d5e: $e0 $1f
    ldh a, [rSB]                                  ; $6d60: $f0 $01
    rra                                           ; $6d62: $1f
    and d                                         ; $6d63: $a2
    dec e                                         ; $6d64: $1d
    or b                                          ; $6d65: $b0
    dec e                                         ; $6d66: $1d
    nop                                           ; $6d67: $00
    ccf                                           ; $6d68: $3f

jr_0c4_6d69:
    ld bc, $2000                                  ; $6d69: $01 $00 $20
    ret nz                                        ; $6d6c: $c0

    set 5, d                                      ; $6d6d: $cb $ea
    ld bc, $609b                                  ; $6d6f: $01 $9b $60
    ld [hl], $c0                                  ; $6d72: $36 $c0
    sbc [hl]                                      ; $6d74: $9e
    inc b                                         ; $6d75: $04
    ld h, b                                       ; $6d76: $60
    ld [$a1f7], sp                                ; $6d77: $08 $f7 $a1
    sub $04                                       ; $6d7a: $d6 $04
    nop                                           ; $6d7c: $00
    sbc $8a                                       ; $6d7d: $de $8a
    nop                                           ; $6d7f: $00
    ld [hl], l                                    ; $6d80: $75
    add c                                         ; $6d81: $81
    sub $28                                       ; $6d82: $d6 $28
    rst $10                                       ; $6d84: $d7
    add c                                         ; $6d85: $81
    cp $84                                        ; $6d86: $fe $84
    nop                                           ; $6d88: $00
    ld l, c                                       ; $6d89: $69
    add h                                         ; $6d8a: $84
    db $db                                        ; $6d8b: $db
    ld de, $a4ce                                  ; $6d8c: $11 $ce $a4
    db $db                                        ; $6d8f: $db
    ld bc, $fe08                                  ; $6d90: $01 $08 $fe
    ld d, c                                       ; $6d93: $51
    xor [hl]                                      ; $6d94: $ae
    ld [bc], a                                    ; $6d95: $02
    or d                                          ; $6d96: $b2
    ld bc, $01ee                                  ; $6d97: $01 $ee $01
    sbc $00                                       ; $6d9a: $de $00
    inc bc                                        ; $6d9c: $03
    cp h                                          ; $6d9d: $bc
    inc bc                                        ; $6d9e: $03
    or $03                                        ; $6d9f: $f6 $03
    ld l, h                                       ; $6da1: $6c
    inc bc                                        ; $6da2: $03
    cp l                                          ; $6da3: $bd
    ld a, [bc]                                    ; $6da4: $0a
    ld b, $b8                                     ; $6da5: $06 $b8
    rlca                                          ; $6da7: $07
    rst $28                                       ; $6da8: $ef
    inc l                                         ; $6da9: $2c
    ld b, $85                                     ; $6daa: $06 $85
    or b                                          ; $6dac: $b0
    dec b                                         ; $6dad: $05
    sub a                                         ; $6dae: $97
    nop                                           ; $6daf: $00
    ld l, a                                       ; $6db0: $6f
    sub l                                         ; $6db1: $95
    ld l, b                                       ; $6db2: $68
    nop                                           ; $6db3: $00
    ld hl, sp+$0a                                 ; $6db4: $f8 $0a
    ldh a, [$f0]                                  ; $6db6: $f0 $f0
    db $10                                        ; $6db8: $10
    ld hl, sp+$60                                 ; $6db9: $f8 $60

Call_0c4_6dbb:
    dec c                                         ; $6dbb: $0d
    db $10                                        ; $6dbc: $10
    ld e, $20                                     ; $6dbd: $1e $20
    rrca                                          ; $6dbf: $0f
    sub l                                         ; $6dc0: $95
    ld a, [de]                                    ; $6dc1: $1a
    nop                                           ; $6dc2: $00
    ld b, b                                       ; $6dc3: $40
    ld e, $90                                     ; $6dc4: $1e $90
    ld e, $de                                     ; $6dc6: $1e $de
    jr nz, jr_0c4_6e15                            ; $6dc8: $20 $4b

    or b                                          ; $6dca: $b0
    ld bc, $e017                                  ; $6dcb: $01 $17 $e0
    ld c, a                                       ; $6dce: $4f
    or b                                          ; $6dcf: $b0
    ld d, l                                       ; $6dd0: $55
    and b                                         ; $6dd1: $a0
    dec de                                        ; $6dd2: $1b
    add d                                         ; $6dd3: $82
    ld bc, $1f00                                  ; $6dd4: $01 $00 $1f
    ldh [$c8], a                                  ; $6dd7: $e0 $c8
    scf                                           ; $6dd9: $37
    db $f4                                        ; $6dda: $f4
    dec hl                                        ; $6ddb: $2b
    push bc                                       ; $6ddc: $c5
    ld a, [hl-]                                   ; $6ddd: $3a
    nop                                           ; $6dde: $00
    ld [hl], c                                    ; $6ddf: $71
    ld l, $45                                     ; $6de0: $2e $45
    ld a, [hl-]                                   ; $6de2: $3a
    ret nc                                        ; $6de3: $d0

    ld l, a                                       ; $6de4: $6f
    add d                                         ; $6de5: $82
    ld a, l                                       ; $6de6: $7d
    ld [bc], a                                    ; $6de7: $02
    rst $38                                       ; $6de8: $ff
    ld a, a                                       ; $6de9: $7f
    dec a                                         ; $6dea: $3d
    ret nz                                        ; $6deb: $c0

    cpl                                           ; $6dec: $2f
    add c                                         ; $6ded: $81
    ld a, [c]                                     ; $6dee: $f2
    rrca                                          ; $6def: $0f
    ld h, d                                       ; $6df0: $62
    nop                                           ; $6df1: $00
    add b                                         ; $6df2: $80
    add hl, bc                                    ; $6df3: $09
    add c                                         ; $6df4: $81
    and h                                         ; $6df5: $a4
    ld bc, $8109                                  ; $6df6: $01 $09 $81
    add hl, de                                    ; $6df9: $19
    nop                                           ; $6dfa: $00
    ld [c], a                                     ; $6dfb: $e2
    ld bc, $33ae                                  ; $6dfc: $01 $ae $33
    adc h                                         ; $6dff: $8c
    ld d, c                                       ; $6e00: $51

Jump_0c4_6e01:
    xor [hl]                                      ; $6e01: $ae
    dec b                                         ; $6e02: $05
    nop                                           ; $6e03: $00
    ld a, [$b641]                                 ; $6e04: $fa $41 $b6
    ld a, [bc]                                    ; $6e07: $0a
    db $f4                                        ; $6e08: $f4
    ld bc, $ddfe                                  ; $6e09: $01 $fe $dd
    nop                                           ; $6e0c: $00
    ld [bc], a                                    ; $6e0d: $02
    cp l                                          ; $6e0e: $bd
    ld b, $78                                     ; $6e0f: $06 $78
    rlca                                          ; $6e11: $07
    db $fd                                        ; $6e12: $fd
    ld b, $d5                                     ; $6e13: $06 $d5

jr_0c4_6e15:
    ld [hl+], a                                   ; $6e15: $22
    ld [bc], a                                    ; $6e16: $02
    xor l                                         ; $6e17: $ad
    ld [hl], b                                    ; $6e18: $70
    nop                                           ; $6e19: $00
    rst $38                                       ; $6e1a: $ff
    rlca                                          ; $6e1b: $07
    ld b, $6c                                     ; $6e1c: $06 $6c
    ld [bc], a                                    ; $6e1e: $02
    jr nz, jr_0c4_6e21                            ; $6e1f: $20 $00

jr_0c4_6e21:
    rst $18                                       ; $6e21: $df
    cpl                                           ; $6e22: $2f
    rst $18                                       ; $6e23: $df
    ld d, d                                       ; $6e24: $52
    xor b                                         ; $6e25: $a8
    ld bc, $2af8                                  ; $6e26: $01 $f8 $2a
    inc b                                         ; $6e29: $04
    ret nc                                        ; $6e2a: $d0

    pop af                                        ; $6e2b: $f1
    ld hl, sp-$1f                                 ; $6e2c: $f8 $e1
    ld a, [de]                                    ; $6e2e: $1a
    ld d, b                                       ; $6e2f: $50
    ld h, $1f                                     ; $6e30: $26 $1f
    inc d                                         ; $6e32: $14
    nop                                           ; $6e33: $00
    dec de                                        ; $6e34: $1b
    ld b, b                                       ; $6e35: $40
    rra                                           ; $6e36: $1f
    db $10                                        ; $6e37: $10
    rra                                           ; $6e38: $1f
    cp a                                          ; $6e39: $bf
    ld b, b                                       ; $6e3a: $40
    sub a                                         ; $6e3b: $97
    add b                                         ; $6e3c: $80
    xor $01                                       ; $6e3d: $ee $01
    sbc [hl]                                      ; $6e3f: $9e
    ld h, b                                       ; $6e40: $60
    dec l                                         ; $6e41: $2d
    ret nz                                        ; $6e42: $c0

    ld e, $60                                     ; $6e43: $1e $60
    xor a                                         ; $6e45: $af
    nop                                           ; $6e46: $00
    ld b, b                                       ; $6e47: $40
    dec e                                         ; $6e48: $1d
    ldh [$90], a                                  ; $6e49: $e0 $90
    ld l, a                                       ; $6e4b: $6f
    ret z                                         ; $6e4c: $c8

    ld [hl], a                                    ; $6e4d: $77
    adc d                                         ; $6e4e: $8a
    ld bc, $c275                                  ; $6e4f: $01 $75 $c2
    ld a, l                                       ; $6e52: $7d
    sub h                                         ; $6e53: $94
    ld l, e                                       ; $6e54: $6b
    ret nz                                        ; $6e55: $c0

    ld a, a                                       ; $6e56: $7f
    ld [hl], b                                    ; $6e57: $70
    ld [$5000], sp                                ; $6e58: $08 $00 $50
    xor [hl]                                      ; $6e5b: $ae
    add hl, bc                                    ; $6e5c: $09
    halt                                          ; $6e5d: $76
    ld [bc], a                                    ; $6e5e: $02
    ld [hl], h                                    ; $6e5f: $74
    add c                                         ; $6e60: $81
    halt                                          ; $6e61: $76
    nop                                           ; $6e62: $00
    dec hl                                        ; $6e63: $2b
    call nc, $fc03                                ; $6e64: $d4 $03 $fc
    rlca                                          ; $6e67: $07
    ld hl, sp+$53                                 ; $6e68: $f8 $53
    xor h                                         ; $6e6a: $ac
    db $10                                        ; $6e6b: $10
    rst $28                                       ; $6e6c: $ef
    nop                                           ; $6e6d: $00
    ld e, c                                       ; $6e6e: $59
    sub d                                         ; $6e6f: $92
    inc bc                                        ; $6e70: $03
    ld l, e                                       ; $6e71: $6b
    inc b                                         ; $6e72: $04
    db $ed                                        ; $6e73: $ed
    nop                                           ; $6e74: $00
    inc d                                         ; $6e75: $14
    push de                                       ; $6e76: $d5
    ld [$d0fb], sp                                ; $6e77: $08 $fb $d0
    inc bc                                        ; $6e7a: $03
    cp d                                          ; $6e7b: $ba
    ldh [rTIMA], a                                ; $6e7c: $e0 $05
    reti                                          ; $6e7e: $d9


    nop                                           ; $6e7f: $00
    ld bc, $0855                                  ; $6e80: $01 $55 $08
    ld a, c                                       ; $6e83: $79
    nop                                           ; $6e84: $00
    pop hl                                        ; $6e85: $e1
    db $10                                        ; $6e86: $10
    or l                                          ; $6e87: $b5
    and h                                         ; $6e88: $a4
    dec b                                         ; $6e89: $05
    db $10                                        ; $6e8a: $10
    add l                                         ; $6e8b: $85
    ld a, [de]                                    ; $6e8c: $1a
    ld d, b                                       ; $6e8d: $50
    jr c, jr_0c4_6e96                             ; $6e8e: $38 $06

    db $10                                        ; $6e90: $10
    rra                                           ; $6e91: $1f
    nop                                           ; $6e92: $00
    rra                                           ; $6e93: $1f
    nop                                           ; $6e94: $00
    and b                                         ; $6e95: $a0

jr_0c4_6e96:
    ccf                                           ; $6e96: $3f
    adc b                                         ; $6e97: $88
    scf                                           ; $6e98: $37
    or d                                          ; $6e99: $b2
    dec l                                         ; $6e9a: $2d
    ld c, $e0                                     ; $6e9b: $0e $e0
    nop                                           ; $6e9d: $00
    sub l                                         ; $6e9e: $95
    ld h, b                                       ; $6e9f: $60
    ccf                                           ; $6ea0: $3f
    ld b, b                                       ; $6ea1: $40
    ld d, $60                                     ; $6ea2: $16 $60
    or [hl]                                       ; $6ea4: $b6
    ld b, b                                       ; $6ea5: $40
    nop                                           ; $6ea6: $00
    ccf                                           ; $6ea7: $3f
    ret nz                                        ; $6ea8: $c0

    ld [hl], a                                    ; $6ea9: $77
    add b                                         ; $6eaa: $80
    dec hl                                        ; $6eab: $2b
    ret nz                                        ; $6eac: $c0

    ei                                            ; $6ead: $fb
    nop                                           ; $6eae: $00
    ld b, b                                       ; $6eaf: $40
    cp a                                          ; $6eb0: $bf
    ld h, $05                                     ; $6eb1: $26 $05
    sub l                                         ; $6eb3: $95
    ld b, b                                       ; $6eb4: $40
    rst $18                                       ; $6eb5: $df
    nop                                           ; $6eb6: $00
    ld d, [hl]                                    ; $6eb7: $56
    add c                                         ; $6eb8: $81
    nop                                           ; $6eb9: $00
    or l                                          ; $6eba: $b5
    nop                                           ; $6ebb: $00
    ld a, [hl]                                    ; $6ebc: $7e
    add c                                         ; $6ebd: $81
    xor b                                         ; $6ebe: $a8
    ld bc, $8125                                  ; $6ebf: $01 $25 $81
    nop                                           ; $6ec2: $00
    sub h                                         ; $6ec3: $94
    ld bc, $8131                                  ; $6ec4: $01 $31 $81
    adc b                                         ; $6ec7: $88
    ld bc, $0115                                  ; $6ec8: $01 $15 $01
    ld [$014c], sp                 ; $6ecb: $08 $4c $01
    ld d, l                                       ; $6ece: $55
    ld bc, $0070                                  ; $6ecf: $01 $70 $00
    or $03                                        ; $6ed2: $f6 $03
    db $f4                                        ; $6ed4: $f4
    nop                                           ; $6ed5: $00
    ld bc, $13f6                                  ; $6ed6: $01 $f6 $13
    db $ec                                        ; $6ed9: $ec
    ld bc, $83fe                                  ; $6eda: $01 $fe $83
    ld a, h                                       ; $6edd: $7c
    inc b                                         ; $6ede: $04
    add hl, hl                                    ; $6edf: $29
    sub $ef                                       ; $6ee0: $d6 $ef
    nop                                           ; $6ee2: $00
    jp c, $0402                                   ; $6ee3: $da $02 $04

    jp hl                                         ; $6ee6: $e9


    inc b                                         ; $6ee7: $04
    ld de, $007d                                  ; $6ee8: $11 $7d $00
    db $eb                                        ; $6eeb: $eb
    inc b                                         ; $6eec: $04
    nop                                           ; $6eed: $00
    xor e                                         ; $6eee: $ab
    inc b                                         ; $6eef: $04
    cp d                                          ; $6ef0: $ba
    ldh [rDIV], a                                 ; $6ef1: $e0 $04
    ld d, [hl]                                    ; $6ef3: $56
    reti                                          ; $6ef4: $d9


    xor b                                         ; $6ef5: $a8
    dec b                                         ; $6ef6: $05
    cp b                                          ; $6ef7: $b8
    ld d, b                                       ; $6ef8: $50
    ld b, $5a                                     ; $6ef9: $06 $5a
    ld d, b                                       ; $6efb: $50
    ld b, $70                                     ; $6efc: $06 $70
    nop                                           ; $6efe: $00
    dec de                                        ; $6eff: $1b
    nop                                           ; $6f00: $00
    ld b, b                                       ; $6f01: $40
    dec de                                        ; $6f02: $1b
    inc d                                         ; $6f03: $14
    dec de                                        ; $6f04: $1b

Jump_0c4_6f05:
    add c                                         ; $6f05: $81
    ld e, $50                                     ; $6f06: $1e $50
    rra                                           ; $6f08: $1f
    nop                                           ; $6f09: $00
    call nz, Call_0c4_581b                        ; $6f0a: $c4 $1b $58
    rla                                           ; $6f0d: $17
    ld c, $e0                                     ; $6f0e: $0e $e0
    sbc e                                         ; $6f10: $9b
    ld h, b                                       ; $6f11: $60
    nop                                           ; $6f12: $00
    scf                                           ; $6f13: $37
    ld b, b                                       ; $6f14: $40
    ld a, [de]                                    ; $6f15: $1a
    ld h, b                                       ; $6f16: $60

jr_0c4_6f17:
    ld d, a                                       ; $6f17: $57
    and b                                         ; $6f18: $a0

jr_0c4_6f19:
    rra                                           ; $6f19: $1f
    ldh [rDIV], a                                 ; $6f1a: $e0 $04
    dec sp                                        ; $6f1c: $3b
    ret nz                                        ; $6f1d: $c0

    sub l                                         ; $6f1e: $95
    ld h, b                                       ; $6f1f: $60

Jump_0c4_6f20:
    ei                                            ; $6f20: $fb
    sub [hl]                                      ; $6f21: $96
    dec d                                         ; $6f22: $15
    sbc l                                         ; $6f23: $9d

Jump_0c4_6f24:
    ld b, b                                       ; $6f24: $40
    inc b                                         ; $6f25: $04
    ld a, e                                       ; $6f26: $7b
    nop                                           ; $6f27: $00
    xor e                                         ; $6f28: $ab
    ld b, b                                       ; $6f29: $40
    db $db                                        ; $6f2a: $db
    ld a, h                                       ; $6f2b: $7c
    nop                                           ; $6f2c: $00
    ld h, b                                       ; $6f2d: $60
    dec b                                         ; $6f2e: $05
    add a                                         ; $6f2f: $87
    inc b                                         ; $6f30: $04
    nop                                           ; $6f31: $00
    ld [bc], a                                    ; $6f32: $02
    rst $38                                       ; $6f33: $ff

jr_0c4_6f34:
    nop                                           ; $6f34: $00
    rst $38                                       ; $6f35: $ff
    jr nz, jr_0c4_6f17                            ; $6f36: $20 $df

    nop                                           ; $6f38: $00
    rst $38                                       ; $6f39: $ff
    nop                                           ; $6f3a: $00
    sub b                                         ; $6f3b: $90

jr_0c4_6f3c:
    ld l, a                                       ; $6f3c: $6f
    ld [hl+], a                                   ; $6f3d: $22
    db $dd                                        ; $6f3e: $dd
    ld c, b                                       ; $6f3f: $48
    or a                                          ; $6f40: $b7
    jp nc, $002d                                  ; $6f41: $d2 $2d $00

    nop                                           ; $6f44: $00
    rst $38                                       ; $6f45: $ff
    inc b                                         ; $6f46: $04
    ei                                            ; $6f47: $fb
    nop                                           ; $6f48: $00
    rst $38                                       ; $6f49: $ff
    ld de, $00ee                                  ; $6f4a: $11 $ee $00
    inc h                                         ; $6f4d: $24
    db $db                                        ; $6f4e: $db
    ld [$55f7], sp                                ; $6f4f: $08 $f7 $55
    xor d                                         ; $6f52: $aa
    xor d                                         ; $6f53: $aa
    ld d, l                                       ; $6f54: $55
    inc b                                         ; $6f55: $04
    nop                                           ; $6f56: $00
    rst $38                                       ; $6f57: $ff
    ld hl, $00de                                  ; $6f58: $21 $de $00
    inc h                                         ; $6f5b: $24
    nop                                           ; $6f5c: $00
    ld [hl+], a                                   ; $6f5d: $22
    db $dd                                        ; $6f5e: $dd
    nop                                           ; $6f5f: $00
    ld b, l                                       ; $6f60: $45
    cp d                                          ; $6f61: $ba
    ld [de], a                                    ; $6f62: $12
    db $ed                                        ; $6f63: $ed
    ld b, a                                       ; $6f64: $47
    cp b                                          ; $6f65: $b8
    add hl, bc                                    ; $6f66: $09
    push af                                       ; $6f67: $f5
    nop                                           ; $6f68: $00
    ld d, [hl]                                    ; $6f69: $56
    xor e                                         ; $6f6a: $ab
    adc e                                         ; $6f6b: $8b
    halt                                          ; $6f6c: $76
    ld d, d                                       ; $6f6d: $52
    xor l                                         ; $6f6e: $ad
    inc h                                         ; $6f6f: $24
    db $db                                        ; $6f70: $db
    nop                                           ; $6f71: $00
    ld l, b                                       ; $6f72: $68
    sub a                                         ; $6f73: $97
    pop de                                        ; $6f74: $d1
    ld l, $aa                                     ; $6f75: $2e $aa
    ld d, l                                       ; $6f77: $55
    jr jr_0c4_6f34                                ; $6f78: $18 $ba

    nop                                           ; $6f7a: $00
    inc hl                                        ; $6f7b: $23
    cp e                                          ; $6f7c: $bb
    ld h, d                                       ; $6f7d: $62
    cp e                                          ; $6f7e: $bb
    ld b, [hl]                                    ; $6f7f: $46
    cp e                                          ; $6f80: $bb
    sub [hl]                                      ; $6f81: $96
    ld l, e                                       ; $6f82: $6b
    add b                                         ; $6f83: $80
    ld b, b                                       ; $6f84: $40
    jr jr_0c4_6f19                                ; $6f85: $18 $92

    jr nz, jr_0c4_6f3c                            ; $6f87: $20 $b3

    inc sp                                        ; $6f89: $33
    and [hl]                                      ; $6f8a: $a6
    inc sp                                        ; $6f8b: $33
    ld sp, $a600                                  ; $6f8c: $31 $00 $a6
    ld h, h                                       ; $6f8f: $64
    or a                                          ; $6f90: $b7
    ld l, l                                       ; $6f91: $6d
    or [hl]                                       ; $6f92: $b6
    inc d                                         ; $6f93: $14
    ld [$00ab], a                                 ; $6f94: $ea $ab $00
    ld d, [hl]                                    ; $6f97: $56
    ld e, [hl]                                    ; $6f98: $5e
    ld bc, $0061                                  ; $6f99: $01 $61 $00
    nop                                           ; $6f9c: $00
    ld h, b                                       ; $6f9d: $60
    ld a, e                                       ; $6f9e: $7b
    nop                                           ; $6f9f: $00
    ld h, b                                       ; $6fa0: $60
    sbc $5f                                       ; $6fa1: $de $5f
    dec [hl]                                      ; $6fa3: $35
    sbc d                                         ; $6fa4: $9a
    ld a, l                                       ; $6fa5: $7d
    jr nz, jr_0c4_701d                            ; $6fa6: $20 $75

    nop                                           ; $6fa8: $00

jr_0c4_6fa9:
    inc bc                                        ; $6fa9: $03
    ld l, [hl]                                    ; $6faa: $6e
    dec l                                         ; $6fab: $2d
    call c, Call_000_1123                         ; $6fac: $dc $23 $11
    ld [bc], a                                    ; $6faf: $02

jr_0c4_6fb0:
    and $00                                       ; $6fb0: $e6 $00
    db $e3                                        ; $6fb2: $e3
    inc [hl]                                      ; $6fb3: $34
    rst $08                                       ; $6fb4: $cf
    ret c                                         ; $6fb5: $d8

    scf                                           ; $6fb6: $37
    ld d, c                                       ; $6fb7: $51
    xor $aa                                       ; $6fb8: $ee $aa
    ld [bc], a                                    ; $6fba: $02

Call_0c4_6fbb:
    ld d, l                                       ; $6fbb: $55
    ld [$50f7], sp                                ; $6fbc: $08 $f7 $50
    xor a                                         ; $6fbf: $af
    adc c                                         ; $6fc0: $89
    ld d, b                                       ; $6fc1: $50
    ld b, b                                       ; $6fc2: $40
    ld de, $ff00                                  ; $6fc3: $11 $00 $ff
    ld b, b                                       ; $6fc6: $40
    cp a                                          ; $6fc7: $bf
    jr nz, jr_0c4_6fa9                            ; $6fc8: $20 $df

    ld [$12f7], sp                                ; $6fca: $08 $f7 $12
    nop                                           ; $6fcd: $00
    db $ed                                        ; $6fce: $ed
    or a                                          ; $6fcf: $b7
    ld c, b                                       ; $6fd0: $48
    ld l, d                                       ; $6fd1: $6a
    sub l                                         ; $6fd2: $95
    or [hl]                                       ; $6fd3: $b6
    ld c, c                                       ; $6fd4: $49
    ld de, $e000                                  ; $6fd5: $11 $00 $e0
    ld a, [de]                                    ; $6fd8: $1a
    push af                                       ; $6fd9: $f5
    rrca                                          ; $6fda: $0f
    rst $38                                       ; $6fdb: $ff
    dec de                                        ; $6fdc: $1b
    pop af                                        ; $6fdd: $f1
    dec [hl]                                      ; $6fde: $35
    nop                                           ; $6fdf: $00
    ldh [$09], a                                  ; $6fe0: $e0 $09
    ldh [$61], a                                  ; $6fe2: $e0 $61
    ret nz                                        ; $6fe4: $c0

    ld d, d                                       ; $6fe5: $52
    pop hl                                        ; $6fe6: $e1
    ld a, a                                       ; $6fe7: $7f
    nop                                           ; $6fe8: $00
    rst $38                                       ; $6fe9: $ff
    ei                                            ; $6fea: $fb
    pop hl                                        ; $6feb: $e1
    push hl                                       ; $6fec: $e5
    ret nz                                        ; $6fed: $c0

    ldh [$c0], a                                  ; $6fee: $e0 $c0
    reti                                          ; $6ff0: $d9


    nop                                           ; $6ff1: $00
    ldh [$cb], a                                  ; $6ff2: $e0 $cb
    push af                                       ; $6ff4: $f5
    rst $38                                       ; $6ff5: $ff
    rst $38                                       ; $6ff6: $ff
    sub $86                                       ; $6ff7: $d6 $86
    ld d, c                                       ; $6ff9: $51
    nop                                           ; $6ffa: $00
    ccf                                           ; $6ffb: $3f
    nop                                           ; $6ffc: $00
    rra                                           ; $6ffd: $1f
    ldh [$9f], a                                  ; $6ffe: $e0 $9f
    add sp, -$49                                  ; $7000: $e8 $b7
    jp nc, $ed00                                  ; $7002: $d2 $00 $ed

    rst $30                                       ; $7005: $f7
    ret z                                         ; $7006: $c8

    ld c, d                                       ; $7007: $4a
    dec d                                         ; $7008: $15
    ld h, $09                                     ; $7009: $26 $09
    ld h, c                                       ; $700b: $61
    ld bc, $ca9e                                  ; $700c: $01 $9e $ca
    dec [hl]                                      ; $700f: $35
    ld [hl], l                                    ; $7010: $75
    adc d                                         ; $7011: $8a
    db $eb                                        ; $7012: $eb
    inc d                                         ; $7013: $14
    rst $10                                       ; $7014: $d7
    nop                                           ; $7015: $00
    add b                                         ; $7016: $80
    ld [bc], a                                    ; $7017: $02
    db $10                                        ; $7018: $10
    ld [hl], h                                    ; $7019: $74
    adc e                                         ; $701a: $8b
    db $fd                                        ; $701b: $fd
    ld [bc], a                                    ; $701c: $02

jr_0c4_701d:
    xor $11                                       ; $701d: $ee $11
    db $dd                                        ; $701f: $dd
    ld b, b                                       ; $7020: $40
    ld [hl+], a                                   ; $7021: $22
    db $10                                        ; $7022: $10
    jr z, jr_0c4_6fb0                             ; $7023: $28 $8b

    ld [hl], h                                    ; $7025: $74
    ld a, a                                       ; $7026: $7f
    add b                                         ; $7027: $80
    rst $28                                       ; $7028: $ef
    db $10                                        ; $7029: $10
    jr nz, @-$20                                  ; $702a: $20 $de

    ld hl, $1820                                  ; $702c: $21 $20 $18
    rst $28                                       ; $702f: $ef
    db $10                                        ; $7030: $10
    rst $30                                       ; $7031: $f7
    ld [$11ee], sp                                ; $7032: $08 $ee $11
    ld de, $807f                                  ; $7035: $11 $7f $80
    ld l, $28                                     ; $7038: $2e $28
    rst $38                                       ; $703a: $ff
    nop                                           ; $703b: $00

jr_0c4_703c:
    ld [hl], l                                    ; $703c: $75
    jr nc, @+$62                                  ; $703d: $30 $60

    nop                                           ; $703f: $00
    ld c, a                                       ; $7040: $4f
    add h                                         ; $7041: $84
    rra                                           ; $7042: $1f
    adc b                                         ; $7043: $88
    rst $18                                       ; $7044: $df
    add b                                         ; $7045: $80
    adc $61                                       ; $7046: $ce $61
    nop                                           ; $7048: $00
    db $e3                                        ; $7049: $e3
    db $10                                        ; $704a: $10
    ld sp, hl                                     ; $704b: $f9
    ld a, [bc]                                    ; $704c: $0a
    rst $38                                       ; $704d: $ff
    inc b                                         ; $704e: $04
    ld [$0016], a                                 ; $704f: $ea $16 $00
    ld l, l                                       ; $7052: $6d
    sub d                                         ; $7053: $92
    ei                                            ; $7054: $fb
    inc b                                         ; $7055: $04
    rst $38                                       ; $7056: $ff
    nop                                           ; $7057: $00
    rst $30                                       ; $7058: $f7
    ld [$6080], sp                                ; $7059: $08 $80 $60
    jr jr_0c4_703c                                ; $705c: $18 $de

    ld hl, $df71                                  ; $705e: $21 $71 $df
    rra                                           ; $7061: $1f
    rst $08                                       ; $7062: $cf
    rst $08                                       ; $7063: $cf
    nop                                           ; $7064: $00
    add a                                         ; $7065: $87
    db $dd                                        ; $7066: $dd
    add a                                         ; $7067: $87
    ld h, l                                       ; $7068: $65
    sbc $ba                                       ; $7069: $de $ba
    ld a, [hl]                                    ; $706b: $7e

jr_0c4_706c:
    add e                                         ; $706c: $83
    nop                                           ; $706d: $00
    ld a, [hl]                                    ; $706e: $7e
    pop bc                                        ; $706f: $c1
    ccf                                           ; $7070: $3f
    inc hl                                        ; $7071: $23
    ld [bc], a                                    ; $7072: $02
    add [hl]                                      ; $7073: $86
    inc bc                                        ; $7074: $03
    ld l, [hl]                                    ; $7075: $6e
    nop                                           ; $7076: $00
    add e                                         ; $7077: $83
    rst $18                                       ; $7078: $df
    rst $20                                       ; $7079: $e7
    ld a, d                                       ; $707a: $7a
    db $fc                                        ; $707b: $fc
    or l                                          ; $707c: $b5
    jr jr_0c4_70fe                                ; $707d: $18 $7f

    nop                                           ; $707f: $00
    rra                                           ; $7080: $1f
    pop hl                                        ; $7081: $e1
    cp $0d                                        ; $7082: $fe $0d
    ld [bc], a                                    ; $7084: $02
    sbc e                                         ; $7085: $9b
    inc c                                         ; $7086: $0c
    ccf                                           ; $7087: $3f
    nop                                           ; $7088: $00
    ret nc                                        ; $7089: $d0

    rst $20                                       ; $708a: $e7
    ld hl, sp-$21                                 ; $708b: $f8 $df
    ldh [$bf], a                                  ; $708d: $e0 $bf
    ret nz                                        ; $708f: $c0

    ld a, a                                       ; $7090: $7f
    ld b, b                                       ; $7091: $40
    add b                                         ; $7092: $80
    ld a, b                                       ; $7093: $78
    ld [$48b7], sp                                ; $7094: $08 $b7 $48
    ld l, l                                       ; $7097: $6d
    sub d                                         ; $7098: $92
    dec bc                                        ; $7099: $0b
    db $f4                                        ; $709a: $f4
    nop                                           ; $709b: $00
    ld d, $e9                                     ; $709c: $16 $e9
    ld [$00f7], sp                                ; $709e: $08 $f7 $00
    rst $38                                       ; $70a1: $ff
    xor d                                         ; $70a2: $aa
    rst $38                                       ; $70a3: $ff
    nop                                           ; $70a4: $00
    rst $38                                       ; $70a5: $ff
    nop                                           ; $70a6: $00
    db $db                                        ; $70a7: $db
    inc h                                         ; $70a8: $24
    cp $01                                        ; $70a9: $fe $01
    or h                                          ; $70ab: $b4
    ld c, e                                       ; $70ac: $4b
    nop                                           ; $70ad: $00
    ld l, b                                       ; $70ae: $68
    sub a                                         ; $70af: $97
    dec d                                         ; $70b0: $15
    ld [$f708], a                                 ; $70b1: $ea $08 $f7
    xor d                                         ; $70b4: $aa
    rst $38                                       ; $70b5: $ff
    nop                                           ; $70b6: $00
    db $db                                        ; $70b7: $db
    inc h                                         ; $70b8: $24
    ld a, [hl]                                    ; $70b9: $7e
    add c                                         ; $70ba: $81
    cp l                                          ; $70bb: $bd
    ld b, d                                       ; $70bc: $42
    ld d, [hl]                                    ; $70bd: $56
    xor c                                         ; $70be: $a9
    ld [$728d], sp                                ; $70bf: $08 $8d $72
    ld [de], a                                    ; $70c2: $12
    db $ed                                        ; $70c3: $ed
    jr nz, @+$0a                                  ; $70c4: $20 $08

    ld a, d                                       ; $70c6: $7a
    add l                                         ; $70c7: $85
    push de                                       ; $70c8: $d5
    nop                                           ; $70c9: $00
    ld a, [hl+]                                   ; $70ca: $2a
    ld l, e                                       ; $70cb: $6b
    sub h                                         ; $70cc: $94
    call nz, $213b                                ; $70cd: $c4 $3b $21
    sbc $42                                       ; $70d0: $de $42
    ld h, b                                       ; $70d2: $60
    cp l                                          ; $70d3: $bd
    jr nc, jr_0c4_70ee                            ; $70d4: $30 $18

    ld b, b                                       ; $70d6: $40
    ld [$ffff], sp                                ; $70d7: $08 $ff $ff
    and d                                         ; $70da: $a2
    rst $18                                       ; $70db: $df
    add l                                         ; $70dc: $85
    ld [$aaff], sp                                ; $70dd: $08 $ff $aa
    rst $18                                       ; $70e0: $df

jr_0c4_70e1:
    add b                                         ; $70e1: $80
    ld b, b                                       ; $70e2: $40
    jr nz, jr_0c4_706c                            ; $70e3: $20 $87

    ret nz                                        ; $70e5: $c0

    and b                                         ; $70e6: $a0
    jr nz, jr_0c4_70e1                            ; $70e7: $20 $f8

    ldh a, [$4e]                                  ; $70e9: $f0 $4e
    nop                                           ; $70eb: $00
    ld e, $e0                                     ; $70ec: $1e $e0

jr_0c4_70ee:
    sub $24                                       ; $70ee: $d6 $24
    ld a, [hl]                                    ; $70f0: $7e
    nop                                           ; $70f1: $00
    add b                                         ; $70f2: $80
    xor [hl]                                      ; $70f3: $ae
    ld c, b                                       ; $70f4: $48
    ld d, d                                       ; $70f5: $52
    sbc h                                         ; $70f6: $9c
    and d                                         ; $70f7: $a2
    inc a                                         ; $70f8: $3c
    inc sp                                        ; $70f9: $33
    nop                                           ; $70fa: $00
    db $fc                                        ; $70fb: $fc
    xor l                                         ; $70fc: $ad
    ld sp, hl                                     ; $70fd: $f9

jr_0c4_70fe:
    dec b                                         ; $70fe: $05
    inc bc                                        ; $70ff: $03
    ld a, d                                       ; $7100: $7a
    add l                                         ; $7101: $85
    ld d, l                                       ; $7102: $55
    nop                                           ; $7103: $00
    xor d                                         ; $7104: $aa
    db $eb                                        ; $7105: $eb
    sub h                                         ; $7106: $94
    ld a, a                                       ; $7107: $7f
    rst $38                                       ; $7108: $ff
    dec b                                         ; $7109: $05
    ei                                            ; $710a: $fb
    ld b, c                                       ; $710b: $41
    nop                                           ; $710c: $00
    rst $38                                       ; $710d: $ff
    and l                                         ; $710e: $a5
    ei                                            ; $710f: $fb
    ld d, c                                       ; $7110: $51
    rst $38                                       ; $7111: $ff
    ei                                            ; $7112: $fb
    inc b                                         ; $7113: $04
    cp a                                          ; $7114: $bf
    ld bc, $6b40                                  ; $7115: $01 $40 $6b
    sub h                                         ; $7118: $94
    sub $29                                       ; $7119: $d6 $29
    xor l                                         ; $711b: $ad
    ld d, d                                       ; $711c: $52
    ld d, b                                       ; $711d: $50
    jr jr_0c4_7144                                ; $711e: $18 $24

    ret c                                         ; $7120: $d8

    daa                                           ; $7121: $27
    ld [hl], b                                    ; $7122: $70
    ld e, b                                       ; $7123: $58
    ld a, [bc]                                    ; $7124: $0a
    push af                                       ; $7125: $f5
    ld [hl], b                                    ; $7126: $70
    ld e, b                                       ; $7127: $58
    ldh a, [rIF]                                  ; $7128: $f0 $0f
    nop                                           ; $712a: $00
    rrca                                          ; $712b: $0f
    ldh a, [$63]                                  ; $712c: $f0 $63
    sbc h                                         ; $712e: $9c
    db $fc                                        ; $712f: $fc
    inc bc                                        ; $7130: $03
    rst $38                                       ; $7131: $ff
    nop                                           ; $7132: $00
    nop                                           ; $7133: $00
    nop                                           ; $7134: $00
    rst $38                                       ; $7135: $ff
    ld a, a                                       ; $7136: $7f
    nop                                           ; $7137: $00
    ld l, a                                       ; $7138: $6f
    sub b                                         ; $7139: $90
    ld e, $e1                                     ; $713a: $1e $e1
    ld b, b                                       ; $713c: $40
    ld a, e                                       ; $713d: $7b
    rrca                                          ; $713e: $0f

jr_0c4_713f:
    ld [bc], a                                    ; $713f: $02
    add $18                                       ; $7140: $c6 $18
    ld a, b                                       ; $7142: $78
    add a                                         ; $7143: $87

jr_0c4_7144:
    ldh a, [rIF]                                  ; $7144: $f0 $0f
    nop                                           ; $7146: $00
    ld hl, sp+$07                                 ; $7147: $f8 $07
    xor [hl]                                      ; $7149: $ae
    ld de, $ff00                                  ; $714a: $11 $00 $ff
    cp $01                                        ; $714d: $fe $01
    nop                                           ; $714f: $00
    or $01                                        ; $7150: $f6 $01
    cp d                                          ; $7152: $ba
    dec b                                         ; $7153: $05
    inc bc                                        ; $7154: $03
    db $fc                                        ; $7155: $fc
    db $fd                                        ; $7156: $fd
    ld [bc], a                                    ; $7157: $02
    nop                                           ; $7158: $00
    ld e, b                                       ; $7159: $58
    and a                                         ; $715a: $a7
    inc b                                         ; $715b: $04
    ld hl, sp-$72                                 ; $715c: $f8 $8e
    ld [hl], c                                    ; $715e: $71
    ld [hl], b                                    ; $715f: $70
    adc a                                         ; $7160: $8f
    nop                                           ; $7161: $00
    rst $38                                       ; $7162: $ff
    nop                                           ; $7163: $00
    ld a, $c1                                     ; $7164: $3e $c1
    ret nz                                        ; $7166: $c0

    ccf                                           ; $7167: $3f
    db $fc                                        ; $7168: $fc
    ld bc, $0701                                  ; $7169: $01 $01 $07
    ld hl, sp+$19                                 ; $716c: $f8 $19
    ld b, $a0                                     ; $716e: $06 $a0
    rst $18                                       ; $7170: $df
    add c                                         ; $7171: $81
    xor h                                         ; $7172: $ac
    nop                                           ; $7173: $00
    inc b                                         ; $7174: $04
    cp a                                          ; $7175: $bf
    ret nz                                        ; $7176: $c0

    ret nz                                        ; $7177: $c0

    cp a                                          ; $7178: $bf
    rst $38                                       ; $7179: $ff
    ld bc, $7010                                  ; $717a: $01 $10 $70
    db $fc                                        ; $717d: $fc
    inc c                                         ; $717e: $0c
    ld d, h                                       ; $717f: $54
    cp $ae                                        ; $7180: $fe $ae
    pop af                                        ; $7182: $f1
    ld c, [hl]                                    ; $7183: $4e
    ld [$1810], sp                                ; $7184: $08 $10 $18
    ld [hl], $0f                                  ; $7187: $36 $0f
    ld a, [de]                                    ; $7189: $1a
    or l                                          ; $718a: $b5
    ld a, a                                       ; $718b: $7f
    xor b                                         ; $718c: $a8
    ld b, $01                                     ; $718d: $06 $01
    db $10                                        ; $718f: $10
    jr z, jr_0c4_713f                             ; $7190: $28 $ad

    xor b                                         ; $7192: $a8
    nop                                           ; $7193: $00
    dec b                                         ; $7194: $05
    inc b                                         ; $7195: $04
    ei                                            ; $7196: $fb
    db $fd                                        ; $7197: $fd
    inc bc                                        ; $7198: $03
    inc bc                                        ; $7199: $03
    db $fd                                        ; $719a: $fd
    jr nc, jr_0c4_71b5                            ; $719b: $30 $18

    jp nz, $8001                                  ; $719d: $c2 $01 $80

    ld a, [hl]                                    ; $71a0: $7e
    ld [bc], a                                    ; $71a1: $02
    db $fd                                        ; $71a2: $fd
    dec bc                                        ; $71a3: $0b
    db $fc                                        ; $71a4: $fc
    ld d, a                                       ; $71a5: $57
    ld hl, sp-$13                                 ; $71a6: $f8 $ed
    ld a, [c]                                     ; $71a8: $f2
    sbc b                                         ; $71a9: $98
    call nc, $df09                                ; $71aa: $d4 $09 $df
    jr nz, jr_0c4_71e9                            ; $71ad: $20 $3a

    nop                                           ; $71af: $00
    ld h, b                                       ; $71b0: $60
    db $10                                        ; $71b1: $10
    rst $38                                       ; $71b2: $ff
    nop                                           ; $71b3: $00
    add b                                         ; $71b4: $80

jr_0c4_71b5:
    nop                                           ; $71b5: $00
    ld a, a                                       ; $71b6: $7f
    nop                                           ; $71b7: $00
    rst $38                                       ; $71b8: $ff
    rst $18                                       ; $71b9: $df
    jr nz, @+$05                                  ; $71ba: $20 $03

    db $fc                                        ; $71bc: $fc
    ld d, l                                       ; $71bd: $55
    jr nz, @+$04                                  ; $71be: $20 $02

    xor d                                         ; $71c0: $aa
    ld h, $00                                     ; $71c1: $26 $00
    ld d, l                                       ; $71c3: $55
    add b                                         ; $71c4: $80
    add b                                         ; $71c5: $80
    ld a, a                                       ; $71c6: $7f
    rra                                           ; $71c7: $1f
    nop                                           ; $71c8: $00
    ldh [$81], a                                  ; $71c9: $e0 $81
    ld a, [hl]                                    ; $71cb: $7e

jr_0c4_71cc:
    ld b, d                                       ; $71cc: $42
    add c                                         ; $71cd: $81
    add c                                         ; $71ce: $81
    ld a, [hl]                                    ; $71cf: $7e
    db $fd                                        ; $71d0: $fd
    nop                                           ; $71d1: $00
    nop                                           ; $71d2: $00
    scf                                           ; $71d3: $37
    ret nz                                        ; $71d4: $c0

    ld e, a                                       ; $71d5: $5f
    jr nz, jr_0c4_71f9                            ; $71d6: $20 $21

    sbc $ea                                       ; $71d8: $de $ea
    nop                                           ; $71da: $00
    ld de, $10ec                                  ; $71db: $11 $ec $10
    pop de                                        ; $71de: $d1
    ld l, $7e                                     ; $71df: $2e $7e
    ld bc, $00f8                                  ; $71e1: $01 $f8 $00
    dec b                                         ; $71e4: $05
    ld e, [hl]                                    ; $71e5: $5e
    add c                                         ; $71e6: $81
    ld a, l                                       ; $71e7: $7d
    ld [bc], a                                    ; $71e8: $02

jr_0c4_71e9:
    ldh [$1f], a                                  ; $71e9: $e0 $1f
    ret c                                         ; $71eb: $d8

    nop                                           ; $71ec: $00
    jr nz, @+$04                                  ; $71ed: $20 $02

    ld bc, $0384                                  ; $71ef: $01 $84 $03
    ld [bc], a                                    ; $71f2: $02
    db $fc                                        ; $71f3: $fc
    add sp, $00                                   ; $71f4: $e8 $00
    inc d                                         ; $71f6: $14
    nop                                           ; $71f7: $00
    rst $38                                       ; $71f8: $ff

jr_0c4_71f9:
    dec b                                         ; $71f9: $05
    ld [bc], a                                    ; $71fa: $02
    jr nc, jr_0c4_71cc                            ; $71fb: $30 $cf

    ld c, b                                       ; $71fd: $48
    nop                                           ; $71fe: $00
    jr nc, @+$01                                  ; $71ff: $30 $ff

    nop                                           ; $7201: $00
    rrca                                          ; $7202: $0f
    ldh a, [rNR13]                                ; $7203: $f0 $13
    inc c                                         ; $7205: $0c
    dec b                                         ; $7206: $05
    jr nz, jr_0c4_720b                            ; $7207: $20 $02

    ld [bc], a                                    ; $7209: $02
    ret nz                                        ; $720a: $c0

jr_0c4_720b:
    nop                                           ; $720b: $00
    rrca                                          ; $720c: $0f
    ldh a, [rNR21]                                ; $720d: $f0 $16

Call_0c4_720f:
    add hl, bc                                    ; $720f: $09
    dec d                                         ; $7210: $15
    nop                                           ; $7211: $00
    rst $38                                       ; $7212: $ff
    cp [hl]                                       ; $7213: $be
    ld a, a                                       ; $7214: $7f
    dec [hl]                                      ; $7215: $35
    ld [$06f9], sp                                ; $7216: $08 $f9 $06
    db $f4                                        ; $7219: $f4
    nop                                           ; $721a: $00
    inc bc                                        ; $721b: $03
    rst $30                                       ; $721c: $f7
    nop                                           ; $721d: $00
    inc bc                                        ; $721e: $03
    db $fc                                        ; $721f: $fc
    add h                                         ; $7220: $84
    inc bc                                        ; $7221: $03
    cpl                                           ; $7222: $2f
    inc d                                         ; $7223: $14
    db $10                                        ; $7224: $10
    inc bc                                        ; $7225: $03
    db $fc                                        ; $7226: $fc
    nop                                           ; $7227: $00
    dec bc                                        ; $7228: $0b
    ld d, l                                       ; $7229: $55
    jr jr_0c4_722c                                ; $722a: $18 $00

jr_0c4_722c:
    or $08                                        ; $722c: $f6 $08
    ld bc, $40b7                                  ; $722e: $01 $b7 $40
    jp nc, $e021                                  ; $7231: $d2 $21 $e0

    ld e, $ff                                     ; $7234: $1e $ff
    ld [$0001], sp                                ; $7236: $08 $01 $00
    ld l, e                                       ; $7239: $6b
    add b                                         ; $723a: $80
    ldh [$1f], a                                  ; $723b: $e0 $1f
    sub b                                         ; $723d: $90
    ld h, b                                       ; $723e: $60
    ld b, c                                       ; $723f: $41
    add b                                         ; $7240: $80
    nop                                           ; $7241: $00
    add $38                                       ; $7242: $c6 $38
    ld hl, sp+$07                                 ; $7244: $f8 $07
    rst $28                                       ; $7246: $ef
    nop                                           ; $7247: $00
    ld a, a                                       ; $7248: $7f
    add b                                         ; $7249: $80
    nop                                           ; $724a: $00
    ld hl, sp+$05                                 ; $724b: $f8 $05
    ld [hl], $c9                                  ; $724d: $36 $c9
    cp [hl]                                       ; $724f: $be
    ld b, c                                       ; $7250: $41
    xor a                                         ; $7251: $af
    ld d, b                                       ; $7252: $50
    nop                                           ; $7253: $00
    daa                                           ; $7254: $27
    jr jr_0c4_726f                                ; $7255: $18 $18

    rst $20                                       ; $7257: $e7
    db $ed                                        ; $7258: $ed
    nop                                           ; $7259: $00
    rst $30                                       ; $725a: $f7
    nop                                           ; $725b: $00
    nop                                           ; $725c: $00
    ld bc, $0afe                                  ; $725d: $01 $fe $0a
    rst $38                                       ; $7260: $ff
    ld a, h                                       ; $7261: $7c
    rst $38                                       ; $7262: $ff
    ld a, d                                       ; $7263: $7a
    add h                                         ; $7264: $84
    nop                                           ; $7265: $00
    ld h, $19                                     ; $7266: $26 $19
    dec e                                         ; $7268: $1d
    ld [c], a                                     ; $7269: $e2
    rst $08                                       ; $726a: $cf
    db $10                                        ; $726b: $10
    ld a, [$2200]                                 ; $726c: $fa $00 $22

jr_0c4_726f:
    db $ed                                        ; $726f: $ed
    db $10                                        ; $7270: $10
    ld l, d                                       ; $7271: $6a
    ld [$0807], sp                                ; $7272: $08 $07 $08
    ret nz                                        ; $7275: $c0

    ld c, b                                       ; $7276: $48
    ld bc, $003e                                  ; $7277: $01 $3e $00
    ld b, c                                       ; $727a: $41
    db $fd                                        ; $727b: $fd
    ld [bc], a                                    ; $727c: $02
    or $01                                        ; $727d: $f6 $01
    rst $38                                       ; $727f: $ff
    nop                                           ; $7280: $00
    cp a                                          ; $7281: $bf
    nop                                           ; $7282: $00
    nop                                           ; $7283: $00
    ld a, e                                       ; $7284: $7b
    add b                                         ; $7285: $80
    ld a, l                                       ; $7286: $7d
    add d                                         ; $7287: $82
    cp a                                          ; $7288: $bf

Jump_0c4_7289:
    ld b, b                                       ; $7289: $40
    rst $18                                       ; $728a: $df
    nop                                           ; $728b: $00
    jr nz, jr_0c4_72c6                            ; $728c: $20 $38

    rst $00                                       ; $728e: $c7
    rst $30                                       ; $728f: $f7
    ld [$07f0], sp                                ; $7290: $08 $f0 $07
    ld [hl], h                                    ; $7293: $74
    ld [bc], a                                    ; $7294: $02
    dec bc                                        ; $7295: $0b
    jp nc, $8024                                  ; $7296: $d2 $24 $80

    ld a, a                                       ; $7299: $7f
    rst $10                                       ; $729a: $d7
    ld l, a                                       ; $729b: $6f
    inc bc                                        ; $729c: $03
    dec a                                         ; $729d: $3d
    nop                                           ; $729e: $00
    ret nz                                        ; $729f: $c0

    rst $10                                       ; $72a0: $d7
    jr nz, jr_0c4_72c0                            ; $72a1: $20 $1d

    ld [c], a                                     ; $72a3: $e2
    rst $28                                       ; $72a4: $ef
    db $10                                        ; $72a5: $10
    rlca                                          ; $72a6: $07
    nop                                           ; $72a7: $00
    ld [$807f], sp                                ; $72a8: $08 $7f $80
    or h                                          ; $72ab: $b4
    dec bc                                        ; $72ac: $0b
    ld hl, sp+$07                                 ; $72ad: $f8 $07
    add e                                         ; $72af: $83
    ld [$067f], sp                                ; $72b0: $08 $7f $06
    add c                                         ; $72b3: $81
    ld h, b                                       ; $72b4: $60
    ldh [rP1], a                                  ; $72b5: $e0 $00
    db $fd                                        ; $72b7: $fd
    nop                                           ; $72b8: $00
    db $f4                                        ; $72b9: $f4
    nop                                           ; $72ba: $00
    ld [$e41b], sp                                ; $72bb: $08 $1b $e4
    inc b                                         ; $72be: $04
    ei                                            ; $72bf: $fb

jr_0c4_72c0:
    dec e                                         ; $72c0: $1d
    ldh [rIE], a                                  ; $72c1: $e0 $ff
    nop                                           ; $72c3: $00
    ret nz                                        ; $72c4: $c0

    ret nz                                        ; $72c5: $c0

jr_0c4_72c6:
    ccf                                           ; $72c6: $3f
    add hl, de                                    ; $72c7: $19
    ldh [$df], a                                  ; $72c8: $e0 $df
    jr nz, jr_0c4_72d7                            ; $72ca: $20 $0b

    nop                                           ; $72cc: $00
    inc b                                         ; $72cd: $04
    daa                                           ; $72ce: $27
    jr jr_0c4_72ee                                ; $72cf: $18 $1d

    ldh [$cf], a                                  ; $72d1: $e0 $cf
    jr nz, @+$7e                                  ; $72d3: $20 $7c

    nop                                           ; $72d5: $00
    inc bc                                        ; $72d6: $03

jr_0c4_72d7:
    ld a, [$0c04]                                 ; $72d7: $fa $04 $0c
    di                                            ; $72da: $f3
    cpl                                           ; $72db: $2f
    db $10                                        ; $72dc: $10
    ldh a, [rP1]                                  ; $72dd: $f0 $00
    rrca                                          ; $72df: $0f
    rst $28                                       ; $72e0: $ef
    db $10                                        ; $72e1: $10
    and c                                         ; $72e2: $a1
    ld e, [hl]                                    ; $72e3: $5e
    ld c, $f1                                     ; $72e4: $0e $f1
    sub e                                         ; $72e6: $93
    jr nz, @+$0e                                  ; $72e7: $20 $0c

    dec a                                         ; $72e9: $3d
    call nc, $bf00                                ; $72ea: $d4 $00 $bf
    ld b, b                                       ; $72ed: $40

jr_0c4_72ee:
    db $f4                                        ; $72ee: $f4
    ld [$00f8], sp                                ; $72ef: $08 $f8 $00
    rlca                                          ; $72f2: $07
    rrca                                          ; $72f3: $0f
    ldh a, [$f3]                                  ; $72f4: $f0 $f3
    inc c                                         ; $72f6: $0c
    db $fd                                        ; $72f7: $fd
    ld [bc], a                                    ; $72f8: $02

jr_0c4_72f9:
    nop                                           ; $72f9: $00

jr_0c4_72fa:
    ld b, b                                       ; $72fa: $40
    rst $38                                       ; $72fb: $ff
    ld a, [bc]                                    ; $72fc: $0a
    inc bc                                        ; $72fd: $03
    ld bc, $040a                                  ; $72fe: $01 $0a $04
    rlca                                          ; $7301: $07
    ld hl, sp-$16                                 ; $7302: $f8 $ea
    nop                                           ; $7304: $00
    dec d                                         ; $7305: $15

jr_0c4_7306:
    rst $38                                       ; $7306: $ff
    nop                                           ; $7307: $00
    add c                                         ; $7308: $81
    ld a, [hl]                                    ; $7309: $7e
    ld b, [hl]                                    ; $730a: $46
    add c                                         ; $730b: $81
    xor d                                         ; $730c: $aa
    nop                                           ; $730d: $00
    ld bc, $fe01                                  ; $730e: $01 $01 $fe
    pop af                                        ; $7311: $f1
    ld c, $ee                                     ; $7312: $0e $ee
    ld de, $00cf                                  ; $7314: $11 $cf $00
    db $10                                        ; $7317: $10
    ld h, b                                       ; $7318: $60
    rra                                           ; $7319: $1f
    ret nc                                        ; $731a: $d0

    jr nz, jr_0c4_72f9                            ; $731b: $20 $dc

    jr nz, jr_0c4_7306                            ; $731d: $20 $e7

    nop                                           ; $731f: $00
    jr jr_0c4_72fa                                ; $7320: $18 $d8

    daa                                           ; $7322: $27
    ldh [$1f], a                                  ; $7323: $e0 $1f
    ld e, [hl]                                    ; $7325: $5e

jr_0c4_7326:
    add c                                         ; $7326: $81
    xor a                                         ; $7327: $af
    nop                                           ; $7328: $00
    ld b, b                                       ; $7329: $40
    rlca                                          ; $732a: $07
    ld hl, sp+$03                                 ; $732b: $f8 $03
    inc b                                         ; $732d: $04
    ld a, [bc]                                    ; $732e: $0a
    dec b                                         ; $732f: $05
    push bc                                       ; $7330: $c5
    nop                                           ; $7331: $00
    ld a, [hl-]                                   ; $7332: $3a
    ccf                                           ; $7333: $3f
    ret nz                                        ; $7334: $c0

    ld e, $e1                                     ; $7335: $1e $e1
    rst $28                                       ; $7337: $ef
    nop                                           ; $7338: $00
    or a                                          ; $7339: $b7
    jr nz, jr_0c4_7344                            ; $733a: $20 $08

    db $fd                                        ; $733c: $fd
    jp nc, $bb00                                  ; $733d: $d2 $00 $bb

    inc b                                         ; $7340: $04
    db $fc                                        ; $7341: $fc
    inc bc                                        ; $7342: $03
    ld [c], a                                     ; $7343: $e2

jr_0c4_7344:
    ld c, b                                       ; $7344: $48
    inc e                                         ; $7345: $1c
    inc [hl]                                      ; $7346: $34
    inc bc                                        ; $7347: $03
    nop                                           ; $7348: $00
    or b                                          ; $7349: $b0
    ld h, h                                       ; $734a: $64
    nop                                           ; $734b: $00
    db $e3                                        ; $734c: $e3
    inc e                                         ; $734d: $1c
    ld a, h                                       ; $734e: $7c
    ld [$0f83], sp                                ; $734f: $08 $83 $0f
    ldh [rIF], a                                  ; $7352: $e0 $0f
    ld e, $01                                     ; $7354: $1e $01
    dec b                                         ; $7356: $05
    ld [bc], a                                    ; $7357: $02
    dec c                                         ; $7358: $0d
    nop                                           ; $7359: $00
    ld [bc], a                                    ; $735a: $02
    inc bc                                        ; $735b: $03
    db $fc                                        ; $735c: $fc
    rst $30                                       ; $735d: $f7
    ld [$3cc3], sp                                ; $735e: $08 $c3 $3c
    dec a                                         ; $7361: $3d
    jr nz, jr_0c4_7326                            ; $7362: $20 $c2

    cp $d6                                        ; $7364: $fe $d6
    nop                                           ; $7366: $00
    ret nz                                        ; $7367: $c0

    ccf                                           ; $7368: $3f
    add b                                         ; $7369: $80
    ld a, a                                       ; $736a: $7f
    dec b                                         ; $736b: $05
    nop                                           ; $736c: $00
    rst $38                                       ; $736d: $ff
    sbc [hl]                                      ; $736e: $9e
    ld a, a                                       ; $736f: $7f
    rst $38                                       ; $7370: $ff
    nop                                           ; $7371: $00
    rst $10                                       ; $7372: $d7
    jr nz, @+$01                                  ; $7373: $20 $ff

    nop                                           ; $7375: $00
    nop                                           ; $7376: $00
    ld sp, hl                                     ; $7377: $f9
    inc b                                         ; $7378: $04
    ld a, $c0                                     ; $7379: $3e $c0
    ld e, a                                       ; $737b: $5f
    ldh [$b7], a                                  ; $737c: $e0 $b7
    nop                                           ; $737e: $00
    ret nz                                        ; $737f: $c0

    cp b                                          ; $7380: $b8
    ld b, a                                       ; $7381: $47
    rst $30                                       ; $7382: $f7
    ld [$1ee1], sp                                ; $7383: $08 $e1 $1e
    ld h, b                                       ; $7386: $60
    add b                                         ; $7387: $80
    inc [hl]                                      ; $7388: $34
    ld [bc], a                                    ; $7389: $02
    db $e4                                        ; $738a: $e4
    jr @-$26                                      ; $738b: $18 $d8

    jr nz, jr_0c4_73cf                            ; $738d: $20 $40

    ccf                                           ; $738f: $3f
    dec e                                         ; $7390: $1d

jr_0c4_7391:
    nop                                           ; $7391: $00
    ldh [$27], a                                  ; $7392: $e0 $27
    jr jr_0c4_7391                                ; $7394: $18 $fb

    inc b                                         ; $7396: $04
    nop                                           ; $7397: $00
    rst $38                                       ; $7398: $ff
    jr jr_0c4_739b                                ; $7399: $18 $00

jr_0c4_739b:
    ldh [rP1], a                                  ; $739b: $e0 $00
    rra                                           ; $739d: $1f
    ld l, e                                       ; $739e: $6b
    db $10                                        ; $739f: $10
    rla                                           ; $73a0: $17
    ldh [$fe], a                                  ; $73a1: $e0 $fe
    nop                                           ; $73a3: $00
    ld bc, $03dc                                  ; $73a4: $01 $dc $03
    cp $01                                        ; $73a7: $fe $01
    ld e, $e0                                     ; $73a9: $1e $e0

jr_0c4_73ab:
    rst $30                                       ; $73ab: $f7
    nop                                           ; $73ac: $00
    ld [$fb04], sp                                ; $73ad: $08 $04 $fb
    cp $01                                        ; $73b0: $fe $01
    add b                                         ; $73b2: $80
    ld a, a                                       ; $73b3: $7f
    inc bc                                        ; $73b4: $03
    nop                                           ; $73b5: $00
    db $fc                                        ; $73b6: $fc
    dec d                                         ; $73b7: $15
    ld a, [$f1ee]                                 ; $73b8: $fa $ee $f1
    cp l                                          ; $73bb: $bd
    ld b, d                                       ; $73bc: $42
    nop                                           ; $73bd: $00
    ld bc, $54ff                                  ; $73be: $01 $ff $54
    ld [$10ee], sp                                ; $73c1: $08 $ee $10
    ld [hl], b                                    ; $73c4: $70
    rrca                                          ; $73c5: $0f
    ld a, b                                       ; $73c6: $78
    ld [$5c81], sp                                ; $73c7: $08 $81 $5c
    nop                                           ; $73ca: $00
    rrca                                          ; $73cb: $0f
    rlca                                          ; $73cc: $07
    ldh a, [rNR11]                                ; $73cd: $f0 $11

jr_0c4_73cf:
    ld c, $06                                     ; $73cf: $0e $06
    cp b                                          ; $73d1: $b8
    nop                                           ; $73d2: $00
    ld bc, $3fc0                                  ; $73d3: $01 $c0 $3f
    or h                                          ; $73d6: $b4
    ld a, a                                       ; $73d7: $7f
    rst $18                                       ; $73d8: $df
    ccf                                           ; $73d9: $3f
    xor a                                         ; $73da: $af
    ld [de], a                                    ; $73db: $12
    ld [de], a                                    ; $73dc: $12
    nop                                           ; $73dd: $00
    cp a                                          ; $73de: $bf
    ld b, b                                       ; $73df: $40
    db $eb                                        ; $73e0: $eb
    nop                                           ; $73e1: $00
    jr c, jr_0c4_73ab                             ; $73e2: $38 $c7

    scf                                           ; $73e4: $37
    ret z                                         ; $73e5: $c8

    ld bc, $8679                                  ; $73e6: $01 $79 $86
    ld l, h                                       ; $73e9: $6c
    add e                                         ; $73ea: $83
    ret nz                                        ; $73eb: $c0

    ccf                                           ; $73ec: $3f
    add l                                         ; $73ed: $85
    jr jr_0c4_73f0                                ; $73ee: $18 $00

jr_0c4_73f0:
    nop                                           ; $73f0: $00
    ld a, h                                       ; $73f1: $7c
    add b                                         ; $73f2: $80
    ld a, [hl]                                    ; $73f3: $7e
    add c                                         ; $73f4: $81
    adc l                                         ; $73f5: $8d
    ld [hl], d                                    ; $73f6: $72
    and $19                                       ; $73f7: $e6 $19
    nop                                           ; $73f9: $00
    dec bc                                        ; $73fa: $0b
    ldh a, [$0e]                                  ; $73fb: $f0 $0e
    pop af                                        ; $73fd: $f1
    ld e, h                                       ; $73fe: $5c
    db $e3                                        ; $73ff: $e3
    or d                                          ; $7400: $b2
    call z, $e700                                 ; $7401: $cc $00 $e7
    ld [$ff00], sp                                ; $7404: $08 $00 $ff
    add l                                         ; $7407: $85
    nop                                           ; $7408: $00
    ld a, [hl-]                                   ; $7409: $3a
    ret nz                                        ; $740a: $c0

    nop                                           ; $740b: $00
    nop                                           ; $740c: $00
    rst $38                                       ; $740d: $ff
    cp [hl]                                       ; $740e: $be
    ld b, c                                       ; $740f: $41
    dec e                                         ; $7410: $1d
    ld [c], a                                     ; $7411: $e2
    daa                                           ; $7412: $27
    jr jr_0c4_7415                                ; $7413: $18 $00

jr_0c4_7415:
    ld sp, hl                                     ; $7415: $f9
    inc b                                         ; $7416: $04
    rst $20                                       ; $7417: $e7
    jr jr_0c4_7438                                ; $7418: $18 $1e

    ldh [$9d], a                                  ; $741a: $e0 $9d
    ld h, b                                       ; $741c: $60
    nop                                           ; $741d: $00
    ld c, $f0                                     ; $741e: $0e $f0
    jp hl                                         ; $7420: $e9


    db $10                                        ; $7421: $10
    rst $20                                       ; $7422: $e7
    jr @+$32                                      ; $7423: $18 $30

    rst $08                                       ; $7425: $cf
    nop                                           ; $7426: $00
    inc e                                         ; $7427: $1c
    inc hl                                        ; $7428: $23
    ccf                                           ; $7429: $3f
    ret nz                                        ; $742a: $c0

    ld hl, sp+$07                                 ; $742b: $f8 $07
    rlca                                          ; $742d: $07
    ld hl, sp+$00                                 ; $742e: $f8 $00
    ei                                            ; $7430: $fb
    inc b                                         ; $7431: $04
    rrca                                          ; $7432: $0f
    ldh a, [$93]                                  ; $7433: $f0 $93

Jump_0c4_7435:
    inc c                                         ; $7435: $0c
    ld [hl], l                                    ; $7436: $75
    add d                                         ; $7437: $82

jr_0c4_7438:
    jr nz, jr_0c4_743d                            ; $7438: $20 $03

    db $fc                                        ; $743a: $fc
    jr @+$0c                                      ; $743b: $18 $0a

jr_0c4_743d:
    or $09                                        ; $743d: $f6 $09
    db $ed                                        ; $743f: $ed
    ld [de], a                                    ; $7440: $12
    rst $38                                       ; $7441: $ff
    nop                                           ; $7442: $00
    nop                                           ; $7443: $00
    cp b                                          ; $7444: $b8
    rlca                                          ; $7445: $07
    or $0f                                        ; $7446: $f6 $0f
    cp e                                          ; $7448: $bb
    ld b, a                                       ; $7449: $47
    rst $38                                       ; $744a: $ff
    ld [bc], a                                    ; $744b: $02
    nop                                           ; $744c: $00
    rlca                                          ; $744d: $07
    ld hl, sp-$37                                 ; $744e: $f8 $c9
    ld b, $82                                     ; $7450: $06 $82
    or [hl]                                       ; $7452: $b6
    ld bc, $001d                                  ; $7453: $01 $1d $00
    jp nz, $e01f                                  ; $7456: $c2 $1f $e0

    or b                                          ; $7459: $b0
    rst $08                                       ; $745a: $cf
    rst $28                                       ; $745b: $ef
    db $10                                        ; $745c: $10
    rst $28                                       ; $745d: $ef
    xor b                                         ; $745e: $a8

jr_0c4_745f:
    ld l, h                                       ; $745f: $6c
    ld bc, $0adf                                  ; $7460: $01 $df $0a
    inc b                                         ; $7463: $04
    xor a                                         ; $7464: $af
    ld b, h                                       ; $7465: $44
    inc b                                         ; $7466: $04
    add sp, $17                                   ; $7467: $e8 $17
    dec de                                        ; $7469: $1b
    nop                                           ; $746a: $00
    ldh [$ef], a                                  ; $746b: $e0 $ef

jr_0c4_746d:
    db $10                                        ; $746d: $10
    ld bc, $42fe                                  ; $746e: $01 $fe $42
    add c                                         ; $7471: $81
    rst $28                                       ; $7472: $ef
    nop                                           ; $7473: $00
    db $10                                        ; $7474: $10
    ldh [$1f], a                                  ; $7475: $e0 $1f

Jump_0c4_7477:
    adc b                                         ; $7477: $88
    ld [hl], b                                    ; $7478: $70
    ld e, h                                       ; $7479: $5c
    and b                                         ; $747a: $a0
    ldh [rP1], a                                  ; $747b: $e0 $00
    rra                                           ; $747d: $1f
    rst $38                                       ; $747e: $ff
    nop                                           ; $747f: $00
    db $fc                                        ; $7480: $fc
    inc bc                                        ; $7481: $03
    db $e3                                        ; $7482: $e3
    inc e                                         ; $7483: $1c
    jr nz, jr_0c4_7490                            ; $7484: $20 $0a

    pop hl                                        ; $7486: $e1
    ld [$3c00], sp                                ; $7487: $08 $00 $3c
    jp $827d                                      ; $748a: $c3 $7d $82


    ccf                                           ; $748d: $3f
    ret nz                                        ; $748e: $c0

    rla                                           ; $748f: $17

jr_0c4_7490:
    add sp, $00                                   ; $7490: $e8 $00
    ld a, [bc]                                    ; $7492: $0a
    push af                                       ; $7493: $f5
    dec d                                         ; $7494: $15
    ld [$f50a], a                                 ; $7495: $ea $0a $f5
    add l                                         ; $7498: $85
    ld a, [$ff20]                                 ; $7499: $fa $20 $ff
    nop                                           ; $749c: $00
    ld [bc], a                                    ; $749d: $02
    jr z, jr_0c4_745f                             ; $749e: $28 $bf

    ld b, b                                       ; $74a0: $40
    rst $18                                       ; $74a1: $df
    jr nz, jr_0c4_7523                            ; $74a2: $20 $7f

    ld c, h                                       ; $74a4: $4c
    add b                                         ; $74a5: $80
    db $10                                        ; $74a6: $10
    jr c, @+$01                                   ; $74a7: $38 $ff

    nop                                           ; $74a9: $00

jr_0c4_74aa:
    ld c, $08                                     ; $74aa: $0e $08
    ld [de], a                                    ; $74ac: $12
    ld e, b                                       ; $74ad: $58
    cp a                                          ; $74ae: $bf
    ld b, b                                       ; $74af: $40
    ret nz                                        ; $74b0: $c0

    jr nz, jr_0c4_74fb                            ; $74b1: $20 $48

    inc c                                         ; $74b3: $0c
    ld l, b                                       ; $74b4: $68
    db $fd                                        ; $74b5: $fd
    ld [bc], a                                    ; $74b6: $02
    rst $38                                       ; $74b7: $ff
    nop                                           ; $74b8: $00
    and b                                         ; $74b9: $a0
    ld e, a                                       ; $74ba: $5f
    nop                                           ; $74bb: $00
    ret z                                         ; $74bc: $c8

    scf                                           ; $74bd: $37
    add b                                         ; $74be: $80
    ld a, a                                       ; $74bf: $7f
    ld b, b                                       ; $74c0: $40
    cp a                                          ; $74c1: $bf
    add b                                         ; $74c2: $80
    ld a, a                                       ; $74c3: $7f
    nop                                           ; $74c4: $00
    nop                                           ; $74c5: $00
    rst $38                                       ; $74c6: $ff
    add b                                         ; $74c7: $80
    ld a, a                                       ; $74c8: $7f
    jr nz, jr_0c4_74aa                            ; $74c9: $20 $df

    ld [hl], l                                    ; $74cb: $75
    ld e, e                                       ; $74cc: $5b
    nop                                           ; $74cd: $00
    ld h, l                                       ; $74ce: $65
    ld e, e                                       ; $74cf: $5b

jr_0c4_74d0:
    ld e, b                                       ; $74d0: $58
    ld l, a                                       ; $74d1: $6f
    dec a                                         ; $74d2: $3d
    dec hl                                        ; $74d3: $2b
    inc h                                         ; $74d4: $24
    ccf                                           ; $74d5: $3f
    nop                                           ; $74d6: $00
    jr jr_0c4_74f0                                ; $74d7: $18 $17

    dec d                                         ; $74d9: $15
    dec de                                        ; $74da: $1b
    add hl, hl                                    ; $74db: $29
    ccf                                           ; $74dc: $3f
    nop                                           ; $74dd: $00
    add b                                         ; $74de: $80
    nop                                           ; $74df: $00
    add c                                         ; $74e0: $81
    nop                                           ; $74e1: $00
    inc bc                                        ; $74e2: $03
    add b                                         ; $74e3: $80
    add a                                         ; $74e4: $87
    nop                                           ; $74e5: $00
    ld c, $80                                     ; $74e6: $0e $80
    nop                                           ; $74e8: $00
    sbc h                                         ; $74e9: $9c
    nop                                           ; $74ea: $00
    jr c, jr_0c4_746d                             ; $74eb: $38 $80

    ldh a, [rP1]                                  ; $74ed: $f0 $00
    ret nz                                        ; $74ef: $c0

jr_0c4_74f0:
    nop                                           ; $74f0: $00
    ld h, $80                                     ; $74f1: $26 $80
    nop                                           ; $74f3: $00
    ld bc, $0150                                  ; $74f4: $01 $50 $01
    ld bc, $5804                                  ; $74f7: $01 $04 $58
    ld [hl], c                                    ; $74fa: $71

jr_0c4_74fb:
    ld h, b                                       ; $74fb: $60
    inc b                                         ; $74fc: $04
    inc b                                         ; $74fd: $04
    ei                                            ; $74fe: $fb
    ld [$40f7], sp                                ; $74ff: $08 $f7 $40
    cp a                                          ; $7502: $bf
    or l                                          ; $7503: $b5
    jr jr_0c4_7507                                ; $7504: $18 $01

    rst $38                                       ; $7506: $ff

jr_0c4_7507:
    nop                                           ; $7507: $00
    dec b                                         ; $7508: $05
    ei                                            ; $7509: $fb
    cp e                                          ; $750a: $bb
    ld b, h                                       ; $750b: $44
    ld e, a                                       ; $750c: $5f
    and b                                         ; $750d: $a0
    scf                                           ; $750e: $37
    ret z                                         ; $750f: $c8

    nop                                           ; $7510: $00
    rst $18                                       ; $7511: $df
    and b                                         ; $7512: $a0
    ld l, $d1                                     ; $7513: $2e $d1
    rst $10                                       ; $7515: $d7
    xor b                                         ; $7516: $a8
    cpl                                           ; $7517: $2f
    ret nc                                        ; $7518: $d0

    nop                                           ; $7519: $00
    ld d, l                                       ; $751a: $55
    xor d                                         ; $751b: $aa
    ret nc                                        ; $751c: $d0

    cpl                                           ; $751d: $2f
    cp b                                          ; $751e: $b8
    ld b, a                                       ; $751f: $47
    db $fc                                        ; $7520: $fc

jr_0c4_7521:
    inc bc                                        ; $7521: $03
    nop                                           ; $7522: $00

jr_0c4_7523:
    add sp, $17                                   ; $7523: $e8 $17
    ld d, b                                       ; $7525: $50
    xor a                                         ; $7526: $af
    xor b                                         ; $7527: $a8
    ld d, a                                       ; $7528: $57
    ld d, b                                       ; $7529: $50
    xor a                                         ; $752a: $af

jr_0c4_752b:
    nop                                           ; $752b: $00
    and c                                         ; $752c: $a1
    ld e, a                                       ; $752d: $5f
    ld [$80f7], sp                                ; $752e: $08 $f7 $80
    rst $38                                       ; $7531: $ff
    ld b, c                                       ; $7532: $41
    cp $00                                        ; $7533: $fe $00
    add b                                         ; $7535: $80
    rst $38                                       ; $7536: $ff
    ld b, b                                       ; $7537: $40
    rst $38                                       ; $7538: $ff
    add b                                         ; $7539: $80
    rst $38                                       ; $753a: $ff
    ld c, b                                       ; $753b: $48
    rst $38                                       ; $753c: $ff
    nop                                           ; $753d: $00
    db $e4                                        ; $753e: $e4
    rst $38                                       ; $753f: $ff
    xor e                                         ; $7540: $ab
    ld d, h                                       ; $7541: $54
    dec d                                         ; $7542: $15
    ld [$fd02], a                                 ; $7543: $ea $02 $fd
    jr nz, jr_0c4_74d0                            ; $7546: $20 $88

    ld [hl], a                                    ; $7548: $77
    rst $30                                       ; $7549: $f7
    jr z, jr_0c4_752b                             ; $754a: $28 $df

    jr nz, @+$6c                                  ; $754c: $20 $6a

    sub l                                         ; $754e: $95
    sub l                                         ; $754f: $95
    ld bc, $426a                                  ; $7550: $01 $6a $42
    cp l                                          ; $7553: $bd
    inc b                                         ; $7554: $04
    ei                                            ; $7555: $fb
    add d                                         ; $7556: $82
    ld a, l                                       ; $7557: $7d
    db $10                                        ; $7558: $10
    jr jr_0c4_755b                                ; $7559: $18 $00

jr_0c4_755b:
    rst $38                                       ; $755b: $ff
    nop                                           ; $755c: $00
    ld e, a                                       ; $755d: $5f
    and b                                         ; $755e: $a0
    xor d                                         ; $755f: $aa
    ld d, l                                       ; $7560: $55
    ld b, l                                       ; $7561: $45
    cp d                                          ; $7562: $ba
    nop                                           ; $7563: $00
    db $10                                        ; $7564: $10
    rst $28                                       ; $7565: $ef
    ld [$84f7], sp                                ; $7566: $08 $f7 $84
    ld a, e                                       ; $7569: $7b
    cp $01                                        ; $756a: $fe $01
    nop                                           ; $756c: $00
    ld a, a                                       ; $756d: $7f
    add b                                         ; $756e: $80
    cp a                                          ; $756f: $bf
    ld b, b                                       ; $7570: $40
    rst $28                                       ; $7571: $ef
    db $10                                        ; $7572: $10
    ld d, l                                       ; $7573: $55
    xor d                                         ; $7574: $aa
    jr nz, jr_0c4_7521                            ; $7575: $20 $aa

    ld d, l                                       ; $7577: $55
    ld [hl-], a                                   ; $7578: $32
    add hl, bc                                    ; $7579: $09
    rst $30                                       ; $757a: $f7
    ld [$02fd], sp                                ; $757b: $08 $fd $02
    xor d                                         ; $757e: $aa
    nop                                           ; $757f: $00
    ld d, l                                       ; $7580: $55
    db $f4                                        ; $7581: $f4
    dec bc                                        ; $7582: $0b

jr_0c4_7583:
    jp c, $b425                                   ; $7583: $da $25 $b4

    ld c, e                                       ; $7586: $4b
    ld b, b                                       ; $7587: $40
    ld b, $bf                                     ; $7588: $06 $bf
    ld [$00f7], sp                                ; $758a: $08 $f7 $00
    rst $38                                       ; $758d: $ff
    adc [hl]                                      ; $758e: $8e
    jr z, jr_0c4_7583                             ; $758f: $28 $f2

    ld [$0000], sp                                ; $7591: $08 $00 $00
    rst $38                                       ; $7594: $ff
    ld c, c                                       ; $7595: $49
    ld a, a                                       ; $7596: $7f
    ld d, l                                       ; $7597: $55
    ld l, a                                       ; $7598: $6f
    ld l, b                                       ; $7599: $68
    ld d, a                                       ; $759a: $57
    ld d, l                                       ; $759b: $55
    nop                                           ; $759c: $00
    ld l, e                                       ; $759d: $6b
    inc l                                         ; $759e: $2c
    inc sp                                        ; $759f: $33
    rla                                           ; $75a0: $17
    add hl, de                                    ; $75a1: $19
    jr z, jr_0c4_75e3                             ; $75a2: $28 $3f

    inc hl                                        ; $75a4: $23
    ld bc, $603d                                  ; $75a5: $01 $3d $60
    add b                                         ; $75a8: $80
    ret nz                                        ; $75a9: $c0

    nop                                           ; $75aa: $00
    nop                                           ; $75ab: $00
    add b                                         ; $75ac: $80
    db $e4                                        ; $75ad: $e4
    nop                                           ; $75ae: $00
    ret nz                                        ; $75af: $c0

    inc b                                         ; $75b0: $04
    jr z, @+$04                                   ; $75b1: $28 $02

    ld l, b                                       ; $75b3: $68
    ld bc, $0003                                  ; $75b4: $01 $03 $00
    ld b, $01                                     ; $75b7: $06 $01
    rrca                                          ; $75b9: $0f
    nop                                           ; $75ba: $00
    nop                                           ; $75bb: $00
    inc e                                         ; $75bc: $1c
    ld bc, $003b                                  ; $75bd: $01 $3b $00
    ld [hl], h                                    ; $75c0: $74
    ld bc, $0a69                                  ; $75c1: $01 $69 $0a
    nop                                           ; $75c4: $00
    ld bc, $02ff                                  ; $75c5: $01 $ff $02
    ld [bc], a                                    ; $75c8: $02
    db $10                                        ; $75c9: $10
    inc b                                         ; $75ca: $04
    ld [bc], a                                    ; $75cb: $02
    nop                                           ; $75cc: $00
    inc c                                         ; $75cd: $0c
    add b                                         ; $75ce: $80
    ld [bc], a                                    ; $75cf: $02
    nop                                           ; $75d0: $00
    adc e                                         ; $75d1: $8b
    ld [hl], h                                    ; $75d2: $74
    ld de, $02ee                                  ; $75d3: $11 $ee $02
    db $fd                                        ; $75d6: $fd
    ld b, c                                       ; $75d7: $41
    nop                                           ; $75d8: $00
    cp [hl]                                       ; $75d9: $be
    add d                                         ; $75da: $82
    ld a, l                                       ; $75db: $7d
    ld bc, $08fe                                  ; $75dc: $01 $fe $08
    rst $30                                       ; $75df: $f7
    stop                                          ; $75e0: $10 $00
    rst $28                                       ; $75e2: $ef

jr_0c4_75e3:
    pop de                                        ; $75e3: $d1
    rst $38                                       ; $75e4: $ff
    add sp, -$01                                  ; $75e5: $e8 $ff
    push af                                       ; $75e7: $f5
    rst $38                                       ; $75e8: $ff
    jp c, $ff07                                   ; $75e9: $da $07 $ff

    rst $28                                       ; $75ec: $ef
    rst $38                                       ; $75ed: $ff
    rst $30                                       ; $75ee: $f7
    rst $38                                       ; $75ef: $ff
    ld bc, $6608                                  ; $75f0: $01 $08 $66
    ld bc, $002c                                  ; $75f3: $01 $2c $00
    dec b                                         ; $75f6: $05
    and d                                         ; $75f7: $a2
    rst $38                                       ; $75f8: $ff
    ld d, l                                       ; $75f9: $55
    rst $38                                       ; $75fa: $ff
    cp d                                          ; $75fb: $ba
    stop                                          ; $75fc: $10 $00
    db $fd                                        ; $75fe: $fd
    rst $08                                       ; $75ff: $cf
    ld de, $1001                                  ; $7600: $11 $01 $10
    rst $38                                       ; $7603: $ff
    adc b                                         ; $7604: $88
    rst $38                                       ; $7605: $ff

jr_0c4_7606:
    pop de                                        ; $7606: $d1
    rst $38                                       ; $7607: $ff
    xor d                                         ; $7608: $aa
    jr nz, jr_0c4_760b                            ; $7609: $20 $00

jr_0c4_760b:
    ld b, h                                       ; $760b: $44
    ld e, e                                       ; $760c: $5b
    rst $18                                       ; $760d: $df
    ld hl, $ff08                                  ; $760e: $21 $08 $ff
    ld b, h                                       ; $7611: $44
    stop                                          ; $7612: $10 $00
    rst $18                                       ; $7614: $df
    rst $38                                       ; $7615: $ff
    ld [bc], a                                    ; $7616: $02
    ld a, [$41ff]                                 ; $7617: $fa $ff $41
    cp [hl]                                       ; $761a: $be
    db $10                                        ; $761b: $10
    rst $28                                       ; $761c: $ef
    inc a                                         ; $761d: $3c
    add hl, de                                    ; $761e: $19
    xor d                                         ; $761f: $aa
    add l                                         ; $7620: $85
    ld c, b                                       ; $7621: $48
    nop                                           ; $7622: $00
    cp a                                          ; $7623: $bf
    rst $38                                       ; $7624: $ff
    jr nz, jr_0c4_7606                            ; $7625: $20 $df

    pop de                                        ; $7627: $d1
    ld c, c                                       ; $7628: $49
    ld [$320f], a                                 ; $7629: $ea $0f $32
    add d                                         ; $762c: $82
    add hl, bc                                    ; $762d: $09
    ld a, [bc]                                    ; $762e: $0a
    db $10                                        ; $762f: $10
    rst $38                                       ; $7630: $ff
    and b                                         ; $7631: $a0
    rst $38                                       ; $7632: $ff
    add hl, de                                    ; $7633: $19
    or [hl]                                       ; $7634: $b6
    ld bc, $000b                                  ; $7635: $01 $0b $00
    dec c                                         ; $7638: $0d
    inc c                                         ; $7639: $0c
    dec bc                                        ; $763a: $0b
    dec bc                                        ; $763b: $0b
    dec c                                         ; $763c: $0d
    inc d                                         ; $763d: $14
    dec de                                        ; $763e: $1b
    dec l                                         ; $763f: $2d
    ld e, $33                                     ; $7640: $1e $33
    dec l                                         ; $7642: $2d
    inc sp                                        ; $7643: $33
    call z, Call_000_2e50                         ; $7644: $cc $50 $2e
    ld [bc], a                                    ; $7647: $02
    or c                                          ; $7648: $b1
    ld bc, $0002                                  ; $7649: $01 $02 $00
    ld [bc], a                                    ; $764c: $02
    ld [bc], a                                    ; $764d: $02
    nop                                           ; $764e: $00
    dec b                                         ; $764f: $05
    nop                                           ; $7650: $00
    ld a, [bc]                                    ; $7651: $0a
    nop                                           ; $7652: $00
    inc d                                         ; $7653: $14
    ld c, h                                       ; $7654: $4c
    ld [bc], a                                    ; $7655: $02
    ret nc                                        ; $7656: $d0

    inc bc                                        ; $7657: $03
    ld bc, $00a1                                  ; $7658: $01 $a1 $00
    ld b, b                                       ; $765b: $40
    ld bc, $c881                                  ; $765c: $01 $81 $c8
    ld hl, $0020                                  ; $765f: $21 $20 $00
    and e                                         ; $7662: $a3
    ld d, c                                       ; $7663: $51
    ld b, d                                       ; $7664: $42
    dec b                                         ; $7665: $05
    sub b                                         ; $7666: $90
    nop                                           ; $7667: $00
    ld b, $ff                                     ; $7668: $06 $ff
    inc bc                                        ; $766a: $03
    cp b                                          ; $766b: $b8
    ld bc, $1894                                  ; $766c: $01 $94 $18
    ld h, b                                       ; $766f: $60
    ld d, l                                       ; $7670: $55
    add $00                                       ; $7671: $c6 $00
    ld l, h                                       ; $7673: $6c
    jr @-$3e                                      ; $7674: $18 $c0

    rst $38                                       ; $7676: $ff
    ldh [rIE], a                                  ; $7677: $e0 $ff
    ld [hl], h                                    ; $7679: $74
    jr nz, @+$01                                  ; $767a: $20 $ff

    ld hl, sp-$2e                                 ; $767c: $f8 $d2
    nop                                           ; $767e: $00
    db $e4                                        ; $767f: $e4
    cp a                                          ; $7680: $bf
    ret c                                         ; $7681: $d8

    ld [hl], a                                    ; $7682: $77
    ld c, h                                       ; $7683: $4c
    nop                                           ; $7684: $00
    rst $30                                       ; $7685: $f7
    ldh [$57], a                                  ; $7686: $e0 $57
    ld b, h                                       ; $7688: $44
    ld [hl], a                                    ; $7689: $77
    add sp, $57                                   ; $768a: $e8 $57
    adc c                                         ; $768c: $89
    nop                                           ; $768d: $00
    rst $18                                       ; $768e: $df
    call Call_0c4_6dbb                            ; $768f: $cd $bb $6d
    ret c                                         ; $7692: $d8

    sbc $fb                                       ; $7693: $de $fb
    ei                                            ; $7695: $fb
    nop                                           ; $7696: $00
    push de                                       ; $7697: $d5
    call $abbb                                    ; $7698: $cd $bb $ab
    db $fd                                        ; $769b: $fd
    call Call_0c4_6fbb                            ; $769c: $cd $bb $6f
    nop                                           ; $769f: $00
    xor d                                         ; $76a0: $aa
    and d                                         ; $76a1: $a2
    ld e, d                                       ; $76a2: $5a
    ld [$4383], a                                 ; $76a3: $ea $83 $43
    ld a, [hl+]                                   ; $76a6: $2a
    sub l                                         ; $76a7: $95
    nop                                           ; $76a8: $00
    ld h, e                                       ; $76a9: $63
    ld b, e                                       ; $76aa: $43
    ld l, e                                       ; $76ab: $6b
    rst $10                                       ; $76ac: $d7
    ld b, d                                       ; $76ad: $42
    cpl                                           ; $76ae: $2f
    ld b, a                                       ; $76af: $47
    ld l, $00                                     ; $76b0: $2e $00
    add a                                         ; $76b2: $87
    call z, $b71f                                 ; $76b3: $cc $1f $b7
    call c, $f8ba                                 ; $76b6: $dc $ba $f8
    ld c, l                                       ; $76b9: $4d
    nop                                           ; $76ba: $00
    ld hl, sp-$14                                 ; $76bb: $f8 $ec
    cp b                                          ; $76bd: $b8
    sub c                                         ; $76be: $91
    ld hl, sp+$36                                 ; $76bf: $f8 $36
    call c, $00ca                                 ; $76c1: $dc $ca $00
    cp b                                          ; $76c4: $b8
    sbc l                                         ; $76c5: $9d
    ld a, d                                       ; $76c6: $7a
    adc l                                         ; $76c7: $8d
    xor [hl]                                      ; $76c8: $ae
    db $dd                                        ; $76c9: $dd
    ld d, $02                                     ; $76ca: $16 $02
    nop                                           ; $76cc: $00
    db $dd                                        ; $76cd: $dd
    db $dd                                        ; $76ce: $dd
    ld e, $b3                                     ; $76cf: $1e $b3
    sbc l                                         ; $76d1: $9d
    db $dd                                        ; $76d2: $dd
    rra                                           ; $76d3: $1f
    ld a, [hl+]                                   ; $76d4: $2a
    nop                                           ; $76d5: $00
    ld [hl], l                                    ; $76d6: $75
    db $fd                                        ; $76d7: $fd
    xor a                                         ; $76d8: $af
    ld d, h                                       ; $76d9: $54
    cp e                                          ; $76da: $bb
    and e                                         ; $76db: $a3
    db $fc                                        ; $76dc: $fc
    db $f4                                        ; $76dd: $f4
    nop                                           ; $76de: $00
    ld a, c                                       ; $76df: $79
    add hl, hl                                    ; $76e0: $29
    ldh a, [$b4]                                  ; $76e1: $f0 $b4
    ld [hl], c                                    ; $76e3: $71
    ld h, d                                       ; $76e4: $62
    or l                                          ; $76e5: $b5
    ld d, c                                       ; $76e6: $51
    nop                                           ; $76e7: $00
    xor $e6                                       ; $76e8: $ee $e6
    push af                                       ; $76ea: $f5
    ld l, [hl]                                    ; $76eb: $6e
    push af                                       ; $76ec: $f5
    xor l                                         ; $76ed: $ad
    rst $10                                       ; $76ee: $d7
    db $d3                                        ; $76ef: $d3
    nop                                           ; $76f0: $00
    adc l                                         ; $76f1: $8d
    and c                                         ; $76f2: $a1
    rst $18                                       ; $76f3: $df
    db $d3                                        ; $76f4: $d3
    xor l                                         ; $76f5: $ad
    sbc c                                         ; $76f6: $99
    rst $20                                       ; $76f7: $e7
    rlc b                                         ; $76f8: $cb $00
    sub l                                         ; $76fa: $95
    push de                                       ; $76fb: $d5
    cp e                                          ; $76fc: $bb
    and e                                         ; $76fd: $a3
    ld a, [$ff43]                                 ; $76fe: $fa $43 $ff
    inc sp                                        ; $7701: $33
    db $10                                        ; $7702: $10
    rst $28                                       ; $7703: $ef
    add d                                         ; $7704: $82
    ld [hl], a                                    ; $7705: $77
    inc b                                         ; $7706: $04
    nop                                           ; $7707: $00
    ld a, a                                       ; $7708: $7f
    dec hl                                        ; $7709: $2b
    or $b2                                        ; $770a: $f6 $b2
    nop                                           ; $770c: $00
    ld l, a                                       ; $770d: $6f
    ld e, [hl]                                    ; $770e: $5e
    db $e4                                        ; $770f: $e4
    ld a, [$6dac]                                 ; $7710: $fa $ac $6d
    sub $b6                                       ; $7713: $d6 $b6
    nop                                           ; $7715: $00
    ld l, [hl]                                    ; $7716: $6e
    ld l, [hl]                                    ; $7717: $6e
    or a                                          ; $7718: $b7
    or h                                          ; $7719: $b4
    ld l, [hl]                                    ; $771a: $6e
    cp h                                          ; $771b: $bc
    sbc d                                         ; $771c: $9a
    adc d                                         ; $771d: $8a
    nop                                           ; $771e: $00
    ld e, b                                       ; $771f: $58
    db $dd                                        ; $7720: $dd
    ld c, $1f                                     ; $7721: $0e $1f
    cp e                                          ; $7723: $bb
    ld h, l                                       ; $7724: $65
    sbc a                                         ; $7725: $9f
    rrca                                          ; $7726: $0f
    nop                                           ; $7727: $00
    cp a                                          ; $7728: $bf
    halt                                          ; $7729: $76
    dec de                                        ; $772a: $1b
    or h                                          ; $772b: $b4
    ccf                                           ; $772c: $3f
    ld a, e                                       ; $772d: $7b
    dec e                                         ; $772e: $1d
    or h                                          ; $772f: $b4
    nop                                           ; $7730: $00
    ld a, e                                       ; $7731: $7b
    ld a, h                                       ; $7732: $7c
    push hl                                       ; $7733: $e5
    ld l, l                                       ; $7734: $6d
    ldh [$b8], a                                  ; $7735: $e0 $b8
    ld h, l                                       ; $7737: $65
    dec [hl]                                      ; $7738: $35
    nop                                           ; $7739: $00
    ldh [$ca], a                                  ; $773a: $e0 $ca
    ld h, [hl]                                    ; $773c: $66
    sbc l                                         ; $773d: $9d
    ldh a, [rNR50]                                ; $773e: $f0 $24
    pop hl                                        ; $7740: $e1
    ld l, e                                       ; $7741: $6b
    nop                                           ; $7742: $00
    and $52                                       ; $7743: $e6 $52
    ld a, l                                       ; $7745: $7d
    ld [hl], a                                    ; $7746: $77
    ld l, e                                       ; $7747: $6b
    dec hl                                        ; $7748: $2b
    ld d, l                                       ; $7749: $55
    ld d, l                                       ; $774a: $55
    nop                                           ; $774b: $00
    ld a, e                                       ; $774c: $7b
    rst $28                                       ; $774d: $ef
    ld d, l                                       ; $774e: $55
    ld d, l                                       ; $774f: $55
    ld a, a                                       ; $7750: $7f
    jp z, $7675                                   ; $7751: $ca $75 $76

    nop                                           ; $7754: $00
    ld a, a                                       ; $7755: $7f
    sub b                                         ; $7756: $90
    rst $08                                       ; $7757: $cf
    call z, $d1ab                                 ; $7758: $cc $ab $d1
    xor a                                         ; $775b: $af
    jp z, $f200                                   ; $775c: $ca $00 $f2

    and a                                         ; $775f: $a7
    jp c, $afc2                                   ; $7760: $da $c2 $af

    rst $28                                       ; $7763: $ef
    sbc d                                         ; $7764: $9a
    jp nz, $af00                                  ; $7765: $c2 $00 $af

    ld d, e                                       ; $7768: $53
    ld l, [hl]                                    ; $7769: $6e
    ld l, h                                       ; $776a: $6c
    jp c, Jump_0c4_6699                           ; $776b: $da $99 $66

    ld d, [hl]                                    ; $776e: $56
    nop                                           ; $776f: $00
    xor a                                         ; $7770: $af
    ld c, $b4                                     ; $7771: $0e $b4
    or $1f                                        ; $7773: $f6 $1f
    ld b, $bc                                     ; $7775: $06 $bc
    rst $10                                       ; $7777: $d7
    nop                                           ; $7778: $00
    ld l, $2f                                     ; $7779: $2e $2f
    ld d, a                                       ; $777b: $57
    ld c, l                                       ; $777c: $4d
    sbc a                                         ; $777d: $9f
    ld c, e                                       ; $777e: $4b
    and a                                         ; $777f: $a7
    ld l, d                                       ; $7780: $6a
    nop                                           ; $7781: $00
    rrca                                          ; $7782: $0f
    sub a                                         ; $7783: $97
    ld l, a                                       ; $7784: $6f
    ld c, [hl]                                    ; $7785: $4e
    dec l                                         ; $7786: $2d
    sbc l                                         ; $7787: $9d
    ld l, $2a                                     ; $7788: $2e $2a
    nop                                           ; $778a: $00
    ld c, h                                       ; $778b: $4c
    db $eb                                        ; $778c: $eb
    cp b                                          ; $778d: $b8
    ld e, l                                       ; $778e: $5d
    cp d                                          ; $778f: $ba
    xor d                                         ; $7790: $aa
    ld a, b                                       ; $7791: $78
    or a                                          ; $7792: $b7
    nop                                           ; $7793: $00
    pop af                                        ; $7794: $f1
    xor d                                         ; $7795: $aa
    ld hl, sp-$4a                                 ; $7796: $f8 $b6
    ld [hl], b                                    ; $7798: $70
    sub e                                         ; $7799: $93
    pop af                                        ; $779a: $f1
    ld l, [hl]                                    ; $779b: $6e
    nop                                           ; $779c: $00
    cp a                                          ; $779d: $bf
    dec bc                                        ; $779e: $0b
    ld [hl], l                                    ; $779f: $75
    db $fd                                        ; $77a0: $fd
    xor e                                         ; $77a1: $ab
    ld l, $75                                     ; $77a2: $2e $75
    ld a, [c]                                     ; $77a4: $f2
    nop                                           ; $77a5: $00
    ld l, l                                       ; $77a6: $6d
    dec l                                         ; $77a7: $2d
    dec sp                                        ; $77a8: $3b
    ld [$2f7d], a                                 ; $77a9: $ea $7d $2f
    dec sp                                        ; $77ac: $3b
    ld h, d                                       ; $77ad: $62
    nop                                           ; $77ae: $00
    db $fd                                        ; $77af: $fd
    ld [hl], l                                    ; $77b0: $75
    db $ec                                        ; $77b1: $ec
    ld a, [hl+]                                   ; $77b2: $2a
    push af                                       ; $77b3: $f5
    ld d, c                                       ; $77b4: $51
    db $e4                                        ; $77b5: $e4
    ld d, d                                       ; $77b6: $52
    nop                                           ; $77b7: $00
    db $ed                                        ; $77b8: $ed
    ld l, l                                       ; $77b9: $6d
    ld a, [c]                                     ; $77ba: $f2
    sub b                                         ; $77bb: $90
    ld a, e                                       ; $77bc: $7b
    ld a, c                                       ; $77bd: $79
    ld a, [c]                                     ; $77be: $f2
    push bc                                       ; $77bf: $c5
    nop                                           ; $77c0: $00
    ld a, e                                       ; $77c1: $7b
    cp e                                          ; $77c2: $bb
    push de                                       ; $77c3: $d5
    push hl                                       ; $77c4: $e5
    db $db                                        ; $77c5: $db
    call $d7f3                                    ; $77c6: $cd $f3 $d7
    nop                                           ; $77c9: $00
    cp a                                          ; $77ca: $bf
    rst $30                                       ; $77cb: $f7
    rst $38                                       ; $77cc: $ff
    sub l                                         ; $77cd: $95
    ei                                            ; $77ce: $fb
    db $db                                        ; $77cf: $db
    xor a                                         ; $77d0: $af
    and l                                         ; $77d1: $a5
    nop                                           ; $77d2: $00
    rst $38                                       ; $77d3: $ff
    ld c, c                                       ; $77d4: $49
    or a                                          ; $77d5: $b7
    or c                                          ; $77d6: $b1
    ld l, a                                       ; $77d7: $6f
    adc d                                         ; $77d8: $8a
    ld [hl], a                                    ; $77d9: $77
    sub h                                         ; $77da: $94
    nop                                           ; $77db: $00
    push hl                                       ; $77dc: $e5
    ld c, [hl]                                    ; $77dd: $4e
    or l                                          ; $77de: $b5
    add l                                         ; $77df: $85
    ld e, [hl]                                    ; $77e0: $5e
    sbc $35                                       ; $77e1: $de $35
    add l                                         ; $77e3: $85
    nop                                           ; $77e4: $00
    ld e, [hl]                                    ; $77e5: $5e
    ld c, l                                       ; $77e6: $4d
    cp b                                          ; $77e7: $b8
    or b                                          ; $77e8: $b0
    ld e, d                                       ; $77e9: $5a
    ld d, l                                       ; $77ea: $55
    adc d                                         ; $77eb: $8a
    xor h                                         ; $77ec: $ac
    nop                                           ; $77ed: $00
    ld e, [hl]                                    ; $77ee: $5e
    dec e                                         ; $77ef: $1d
    ld l, b                                       ; $77f0: $68
    db $ec                                        ; $77f1: $ec
    ld a, $0d                                     ; $77f2: $3e $0d
    ld a, b                                       ; $77f4: $78
    xor [hl]                                      ; $77f5: $ae
    nop                                           ; $77f6: $00
    ld e, h                                       ; $77f7: $5c
    dec sp                                        ; $77f8: $3b
    rst $18                                       ; $77f9: $df
    or [hl]                                       ; $77fa: $b6
    ld a, e                                       ; $77fb: $7b
    ld a, [hl+]                                   ; $77fc: $2a
    ld e, a                                       ; $77fd: $5f
    push de                                       ; $77fe: $d5
    nop                                           ; $77ff: $00
    rra                                           ; $7800: $1f
    cpl                                           ; $7801: $2f
    rst $18                                       ; $7802: $df
    sbc l                                         ; $7803: $9d
    ld e, d                                       ; $7804: $5a
    dec sp                                        ; $7805: $3b
    ld e, l                                       ; $7806: $5d
    ld d, h                                       ; $7807: $54
    jr nz, @-$65                                  ; $7808: $20 $99

    or h                                          ; $780a: $b4
    or h                                          ; $780b: $b4
    nop                                           ; $780c: $00
    or h                                          ; $780d: $b4
    pop af                                        ; $780e: $f1
    ld l, a                                       ; $780f: $6f
    ld [c], a                                     ; $7810: $e2
    ld d, h                                       ; $7811: $54
    nop                                           ; $7812: $00
    ldh a, [$6d]                                  ; $7813: $f0 $6d
    ldh [rNR52], a                                ; $7815: $e0 $26
    ld [c], a                                     ; $7817: $e2
    call c, $8e7f                                 ; $7818: $dc $7f $8e
    nop                                           ; $781b: $00
    ld [hl], l                                    ; $781c: $75
    ld [hl], l                                    ; $781d: $75
    ld l, [hl]                                    ; $781e: $6e
    ld e, d                                       ; $781f: $5a
    ld [hl], l                                    ; $7820: $75
    db $e4                                        ; $7821: $e4
    db $db                                        ; $7822: $db
    ld e, d                                       ; $7823: $5a
    nop                                           ; $7824: $00
    ld [hl], a                                    ; $7825: $77
    push de                                       ; $7826: $d5
    ld a, [$775e]                                 ; $7827: $fa $5e $77
    push bc                                       ; $782a: $c5
    ld a, [$004b]                                 ; $782b: $fa $4b $00
    or a                                          ; $782e: $b7
    adc [hl]                                      ; $782f: $8e
    ld e, e                                       ; $7830: $5b
    dec bc                                        ; $7831: $0b
    ld d, a                                       ; $7832: $57
    ld d, a                                       ; $7833: $57
    adc e                                         ; $7834: $8b
    rrca                                          ; $7835: $0f
    nop                                           ; $7836: $00
    halt                                          ; $7837: $76
    and l                                         ; $7838: $a5
    ld e, a                                       ; $7839: $5f
    cp b                                          ; $783a: $b8
    ld l, a                                       ; $783b: $6f
    ld d, l                                       ; $783c: $55
    rst $38                                       ; $783d: $ff
    db $dd                                        ; $783e: $dd
    nop                                           ; $783f: $00
    ld a, [$7aa8]                                 ; $7840: $fa $a8 $7a
    ld e, l                                       ; $7843: $5d
    xor b                                         ; $7844: $a8
    xor b                                         ; $7845: $a8
    ld hl, sp+$55                                 ; $7846: $f8 $55
    nop                                           ; $7848: $00
    xor d                                         ; $7849: $aa
    ld e, c                                       ; $784a: $59
    xor l                                         ; $784b: $ad
    ld [$185c], a                                 ; $784c: $ea $5c $18
    db $ed                                        ; $784f: $ed
    jp c, $9d00                                   ; $7850: $da $00 $9d

    dec e                                         ; $7853: $1d
    cp b                                          ; $7854: $b8
    push de                                       ; $7855: $d5
    cp d                                          ; $7856: $ba
    ld a, [de]                                    ; $7857: $1a
    or l                                          ; $7858: $b5
    push de                                       ; $7859: $d5
    nop                                           ; $785a: $00
    cp e                                          ; $785b: $bb
    ld d, l                                       ; $785c: $55
    dec de                                        ; $785d: $1b
    cp d                                          ; $785e: $ba
    ld e, a                                       ; $785f: $5f
    dec e                                         ; $7860: $1d
    ld e, b                                       ; $7861: $58
    ld a, e                                       ; $7862: $7b
    nop                                           ; $7863: $00
    and h                                         ; $7864: $a4
    xor d                                         ; $7865: $aa
    ld [hl], h                                    ; $7866: $74
    ld [hl], h                                    ; $7867: $74
    add hl, hl                                    ; $7868: $29
    xor e                                         ; $7869: $ab
    inc h                                         ; $786a: $24
    ldh a, [rP1]                                  ; $786b: $f0 $00
    ld a, [hl+]                                   ; $786d: $2a
    ld h, [hl]                                    ; $786e: $66
    cp c                                          ; $786f: $b9
    xor c                                         ; $7870: $a9
    ld [hl], h                                    ; $7871: $74
    ld h, $f9                                     ; $7872: $26 $f9
    sbc [hl]                                      ; $7874: $9e
    nop                                           ; $7875: $00
    ld l, e                                       ; $7876: $6b
    ld l, d                                       ; $7877: $6a
    db $dd                                        ; $7878: $dd
    sub $6b                                       ; $7879: $d6 $6b
    ld a, d                                       ; $787b: $7a
    db $dd                                        ; $787c: $dd
    ld d, [hl]                                    ; $787d: $56
    nop                                           ; $787e: $00
    db $eb                                        ; $787f: $eb
    push de                                       ; $7880: $d5
    ld a, [hl]                                    ; $7881: $7e
    ld e, d                                       ; $7882: $5a
    push af                                       ; $7883: $f5
    call nz, $d07f                                ; $7884: $c4 $7f $d0
    nop                                           ; $7887: $00
    res 4, a                                      ; $7888: $cb $a7
    db $db                                        ; $788a: $db
    ld d, e                                       ; $788b: $53
    rst $38                                       ; $788c: $ff
    rst $20                                       ; $788d: $e7
    rst $38                                       ; $788e: $ff
    rst $10                                       ; $788f: $d7
    nop                                           ; $7890: $00
    xor e                                         ; $7891: $ab
    inc de                                        ; $7892: $13
    or e                                          ; $7893: $b3
    ei                                            ; $7894: $fb
    sub l                                         ; $7895: $95
    add d                                         ; $7896: $82
    and a                                         ; $7897: $a7
    ld d, a                                       ; $7898: $57
    nop                                           ; $7899: $00
    cp [hl]                                       ; $789a: $be
    xor d                                         ; $789b: $aa
    rst $18                                       ; $789c: $df
    rst $10                                       ; $789d: $d7
    cp $ab                                        ; $789e: $fe $ab
    sbc $b6                                       ; $78a0: $de $b6
    nop                                           ; $78a2: $00
    rst $18                                       ; $78a3: $df
    ld e, d                                       ; $78a4: $5a
    or a                                          ; $78a5: $b7
    xor e                                         ; $78a6: $ab
    or $56                                        ; $78a7: $f6 $56
    cp a                                          ; $78a9: $bf
    ld b, a                                       ; $78aa: $47
    nop                                           ; $78ab: $00
    cp a                                          ; $78ac: $bf
    sbc h                                         ; $78ad: $9c
    ld d, a                                       ; $78ae: $57
    dec b                                         ; $78af: $05
    ld e, a                                       ; $78b0: $5f
    ld c, a                                       ; $78b1: $4f
    sub l                                         ; $78b2: $95
    dec c                                         ; $78b3: $0d
    nop                                           ; $78b4: $00
    ld a, [hl]                                    ; $78b5: $7e
    ld h, $dd                                     ; $78b6: $26 $dd
    add hl, sp                                    ; $78b8: $39
    xor $56                                       ; $78b9: $ee $56
    db $fd                                        ; $78bb: $fd
    db $ed                                        ; $78bc: $ed
    nop                                           ; $78bd: $00
    ld a, [$7ab8]                                 ; $78be: $fa $b8 $7a
    ld c, l                                       ; $78c1: $4d
    cp b                                          ; $78c2: $b8
    cp b                                          ; $78c3: $b8
    ld hl, sp+$45                                 ; $78c4: $f8 $45
    nop                                           ; $78c6: $00
    cp d                                          ; $78c7: $ba
    ret c                                         ; $78c8: $d8

    xor h                                         ; $78c9: $ac
    ld l, l                                       ; $78ca: $6d
    jp c, $ec98                                   ; $78cb: $da $98 $ec

    cp d                                          ; $78ce: $ba
    nop                                           ; $78cf: $00
    sbc l                                         ; $78d0: $9d
    dec e                                         ; $78d1: $1d
    ret c                                         ; $78d2: $d8

    or l                                          ; $78d3: $b5
    jp c, $d51a                                   ; $78d4: $da $1a $d5

    or l                                          ; $78d7: $b5
    nop                                           ; $78d8: $00
    db $db                                        ; $78d9: $db
    db $d3                                        ; $78da: $d3
    sbc l                                         ; $78db: $9d
    cp l                                          ; $78dc: $bd
    ld d, a                                       ; $78dd: $57
    rla                                           ; $78de: $17
    call c, Call_000_00bb                         ; $78df: $dc $bb $00
    ld h, h                                       ; $78e2: $64
    ld l, d                                       ; $78e3: $6a
    or l                                          ; $78e4: $b5
    or l                                          ; $78e5: $b5
    ld l, d                                       ; $78e6: $6a
    ld l, d                                       ; $78e7: $6a
    dec h                                         ; $78e8: $25
    or c                                          ; $78e9: $b1
    nop                                           ; $78ea: $00
    ld l, d                                       ; $78eb: $6a
    ld l, d                                       ; $78ec: $6a
    or l                                          ; $78ed: $b5
    and l                                         ; $78ee: $a5
    ld [hl], d                                    ; $78ef: $72
    ld a, [hl+]                                   ; $78f0: $2a
    push af                                       ; $78f1: $f5
    sbc [hl]                                      ; $78f2: $9e
    nop                                           ; $78f3: $00
    ld l, l                                       ; $78f4: $6d
    db $ec                                        ; $78f5: $ec
    ld e, e                                       ; $78f6: $5b
    sub $6d                                       ; $78f7: $d6 $6d
    db $fd                                        ; $78f9: $fd
    ld e, d                                       ; $78fa: $5a
    ld d, [hl]                                    ; $78fb: $56
    nop                                           ; $78fc: $00
    db $ed                                        ; $78fd: $ed
    db $db                                        ; $78fe: $db
    halt                                          ; $78ff: $76

Jump_0c4_7900:
    ld e, h                                       ; $7900: $5c
    db $eb                                        ; $7901: $eb
    jp z, Jump_0c4_7477                           ; $7902: $ca $77 $74

    nop                                           ; $7905: $00
    rst $38                                       ; $7906: $ff
    daa                                           ; $7907: $27
    ld h, $ab                                     ; $7908: $26 $ab
    ld c, $9c                                     ; $790a: $0e $9c
    rrca                                          ; $790c: $0f
    ld l, e                                       ; $790d: $6b
    nop                                           ; $790e: $00
    ld c, [hl]                                    ; $790f: $4e
    or [hl]                                       ; $7910: $b6
    dec bc                                        ; $7911: $0b
    ld de, $dd0e                                  ; $7912: $11 $0e $dd
    sub a                                         ; $7915: $97
    xor $00                                       ; $7916: $ee $00
    ld e, b                                       ; $7918: $58
    ld d, b                                       ; $7919: $50
    db $ed                                        ; $791a: $ed
    ld e, e                                       ; $791b: $5b
    db $f4                                        ; $791c: $f4
    or a                                          ; $791d: $b7
    ld d, c                                       ; $791e: $51
    db $db                                        ; $791f: $db
    nop                                           ; $7920: $00
    cp a                                          ; $7921: $bf
    cp b                                          ; $7922: $b8
    rst $18                                       ; $7923: $df
    rst $10                                       ; $7924: $d7
    cp [hl]                                       ; $7925: $be
    ld c, e                                       ; $7926: $4b
    or [hl]                                       ; $7927: $b6
    or d                                          ; $7928: $b2
    nop                                           ; $7929: $00
    dec e                                         ; $792a: $1d
    dec [hl]                                      ; $792b: $35
    ld a, $73                                     ; $792c: $3e $73
    inc h                                         ; $792e: $24
    rst $08                                       ; $792f: $cf
    ld [hl], h                                    ; $7930: $74
    push af                                       ; $7931: $f5
    nop                                           ; $7932: $00
    and $aa                                       ; $7933: $e6 $aa
    push af                                       ; $7935: $f5
    scf                                           ; $7936: $37
    ld hl, sp-$2c                                 ; $7937: $f8 $d4
    db $eb                                        ; $7939: $eb
    pop af                                        ; $793a: $f1
    nop                                           ; $793b: $00
    inc l                                         ; $793c: $2c
    ld h, h                                       ; $793d: $64
    cp c                                          ; $793e: $b9
    ld l, b                                       ; $793f: $68
    rst $00                                       ; $7940: $c7
    ld d, l                                       ; $7941: $55
    ld [$00e9], a                                 ; $7942: $ea $e9 $00
    ld d, d                                       ; $7945: $52
    pop af                                        ; $7946: $f1
    jp z, $c0ef                                   ; $7947: $ca $ef $c0

    or a                                          ; $794a: $b7
    rst $38                                       ; $794b: $ff
    ld b, [hl]                                    ; $794c: $46
    nop                                           ; $794d: $00
    ld a, l                                       ; $794e: $7d
    rst $30                                       ; $794f: $f7
    ld a, a                                       ; $7950: $7f
    ld d, c                                       ; $7951: $51
    xor e                                         ; $7952: $ab
    dec c                                         ; $7953: $0d
    db $eb                                        ; $7954: $eb
    db $db                                        ; $7955: $db
    nop                                           ; $7956: $00
    xor l                                         ; $7957: $ad
    xor a                                         ; $7958: $af
    or e                                          ; $7959: $b3
    ret                                           ; $795a: $c9


    xor a                                         ; $795b: $af
    sbc c                                         ; $795c: $99
    db $eb                                        ; $795d: $eb
    db $eb                                        ; $795e: $eb
    nop                                           ; $795f: $00
    sub l                                         ; $7960: $95
    pop de                                        ; $7961: $d1
    db $e3                                        ; $7962: $e3
    xor e                                         ; $7963: $ab
    ld d, a                                       ; $7964: $57
    sub d                                         ; $7965: $92
    jp $00ab                                      ; $7966: $c3 $ab $00


    rlca                                          ; $7969: $07
    add $93                                       ; $796a: $c6 $93
    ld [$5347], a                                 ; $796c: $ea $47 $53
    inc de                                        ; $796f: $13
    or a                                          ; $7970: $b7
    nop                                           ; $7971: $00
    rst $38                                       ; $7972: $ff
    ld l, [hl]                                    ; $7973: $6e
    cp $7b                                        ; $7974: $fe $7b
    sbc $d7                                       ; $7976: $de $d7
    ld a, [hl]                                    ; $7978: $7e
    ld a, [hl+]                                   ; $7979: $2a
    nop                                           ; $797a: $00
    rst $18                                       ; $797b: $df
    add l                                         ; $797c: $85
    ld a, [hl]                                    ; $797d: $7e
    ei                                            ; $797e: $fb
    ld d, [hl]                                    ; $797f: $56
    dec e                                         ; $7980: $1d
    db $fc                                        ; $7981: $fc
    push af                                       ; $7982: $f5
    nop                                           ; $7983: $00
    cp $26                                        ; $7984: $fe $26
    daa                                           ; $7986: $27
    push de                                       ; $7987: $d5
    add a                                         ; $7988: $87
    ld c, [hl]                                    ; $7989: $4e
    rlca                                          ; $798a: $07
    or l                                          ; $798b: $b5
    nop                                           ; $798c: $00
    and a                                         ; $798d: $a7
    ld e, e                                       ; $798e: $5b
    dec b                                         ; $798f: $05
    adc b                                         ; $7990: $88
    rlca                                          ; $7991: $07
    rst $30                                       ; $7992: $f7
    and [hl]                                      ; $7993: $a6
    ld l, l                                       ; $7994: $6d
    nop                                           ; $7995: $00
    ret c                                         ; $7996: $d8

    ld d, b                                       ; $7997: $50
    ld [$7aad], a                                 ; $7998: $ea $ad $7a
    ld e, e                                       ; $799b: $5b
    xor b                                         ; $799c: $a8
    db $ed                                        ; $799d: $ed
    nop                                           ; $799e: $00
    ld e, a                                       ; $799f: $5f
    ld e, h                                       ; $79a0: $5c
    rst $28                                       ; $79a1: $ef
    db $eb                                        ; $79a2: $eb
    ld e, a                                       ; $79a3: $5f
    ld d, c                                       ; $79a4: $51
    rst $28                                       ; $79a5: $ef

jr_0c4_79a6:
    cp b                                          ; $79a6: $b8
    nop                                           ; $79a7: $00
    rla                                           ; $79a8: $17
    ld [hl], $bb                                  ; $79a9: $36 $bb
    cp c                                          ; $79ab: $b9
    ld [de], a                                    ; $79ac: $12
    rst $20                                       ; $79ad: $e7
    cp d                                          ; $79ae: $ba
    ld a, [$f300]                                 ; $79af: $fa $00 $f3
    ld d, l                                       ; $79b2: $55
    ld a, [$7c9b]                                 ; $79b3: $fa $9b $7c
    db $f4                                        ; $79b6: $f4
    dec sp                                        ; $79b7: $3b
    pop af                                        ; $79b8: $f1
    nop                                           ; $79b9: $00
    ld l, $62                                     ; $79ba: $2e $62
    or l                                          ; $79bc: $b5
    or h                                          ; $79bd: $b4
    ld h, e                                       ; $79be: $63
    xor d                                         ; $79bf: $aa
    ld [hl], l                                    ; $79c0: $75
    db $f4                                        ; $79c1: $f4
    nop                                           ; $79c2: $00
    add hl, hl                                    ; $79c3: $29
    ld a, b                                       ; $79c4: $78
    push hl                                       ; $79c5: $e5
    rst $30                                       ; $79c6: $f7
    ld h, b                                       ; $79c7: $60
    ld l, l                                       ; $79c8: $6d
    cp a                                          ; $79c9: $bf
    ld d, d                                       ; $79ca: $52
    nop                                           ; $79cb: $00
    ld l, a                                       ; $79cc: $6f
    ei                                            ; $79cd: $fb
    ld a, a                                       ; $79ce: $7f
    jr z, jr_0c4_79a6                             ; $79cf: $28 $d5

    add [hl]                                      ; $79d1: $86
    ld [hl], l                                    ; $79d2: $75
    db $ed                                        ; $79d3: $ed
    nop                                           ; $79d4: $00
    ld d, [hl]                                    ; $79d5: $56
    rst $10                                       ; $79d6: $d7
    ld e, c                                       ; $79d7: $59
    db $e4                                        ; $79d8: $e4
    ld d, a                                       ; $79d9: $57
    sub $ea                                       ; $79da: $d6 $ea
    inc d                                         ; $79dc: $14
    nop                                           ; $79dd: $00
    ld e, a                                       ; $79de: $5f
    ld e, l                                       ; $79df: $5d
    ld d, $04                                     ; $79e0: $16 $04
    ld e, e                                       ; $79e2: $5b
    ld e, e                                       ; $79e3: $5b
    ld e, $6b                                     ; $79e4: $1e $6b
    nop                                           ; $79e6: $00
    dec [hl]                                      ; $79e7: $35
    or l                                          ; $79e8: $b5
    ccf                                           ; $79e9: $3f
    ld l, d                                       ; $79ea: $6a
    or l                                          ; $79eb: $b5
    cp l                                          ; $79ec: $bd
    cpl                                           ; $79ed: $2f
    sub h                                         ; $79ee: $94
    nop                                           ; $79ef: $00
    ld a, e                                       ; $79f0: $7b
    and c                                         ; $79f1: $a1
    cp $fa                                        ; $79f2: $fe $fa
    ld [hl], l                                    ; $79f4: $75
    dec h                                         ; $79f5: $25
    ld hl, sp+$74                                 ; $79f6: $f8 $74
    nop                                           ; $79f8: $00
    pop hl                                        ; $79f9: $e1
    jp nz, $5475                                  ; $79fa: $c2 $75 $54

    db $eb                                        ; $79fd: $eb
    ld h, e                                       ; $79fe: $63
    or $6b                                        ; $79ff: $f6 $6b
    nop                                           ; $7a01: $00
    ld a, [c]                                     ; $7a02: $f2
    rst $10                                       ; $7a03: $d7
    ld [$c56a], a                                 ; $7a04: $ea $6a $c5
    ld d, c                                       ; $7a07: $51
    xor $d1                                       ; $7a08: $ee $d1
    nop                                           ; $7a0a: $00
    ld l, h                                       ; $7a0b: $6c
    ld e, d                                       ; $7a0c: $5a
    push hl                                       ; $7a0d: $e5
    push bc                                       ; $7a0e: $c5
    ld d, d                                       ; $7a0f: $52
    ld e, d                                       ; $7a10: $5a
    push af                                       ; $7a11: $f5
    sub b                                         ; $7a12: $90
    nop                                           ; $7a13: $00
    db $fd                                        ; $7a14: $fd
    or b                                          ; $7a15: $b0
    rst $28                                       ; $7a16: $ef
    sbc h                                         ; $7a17: $9c
    db $eb                                        ; $7a18: $eb
    ret nz                                        ; $7a19: $c0

    xor l                                         ; $7a1a: $ad
    adc c                                         ; $7a1b: $89
    nop                                           ; $7a1c: $00
    rst $28                                       ; $7a1d: $ef
    pop de                                        ; $7a1e: $d1
    xor a                                         ; $7a1f: $af
    adc l                                         ; $7a20: $8d
    db $db                                        ; $7a21: $db
    ret                                           ; $7a22: $c9


    cp a                                          ; $7a23: $bf
    xor e                                         ; $7a24: $ab
    nop                                           ; $7a25: $00
    pop af                                        ; $7a26: $f1
    cp $eb                                        ; $7a27: $fe $eb
    db $db                                        ; $7a29: $db
    push af                                       ; $7a2a: $f5
    xor l                                         ; $7a2b: $ad
    db $db                                        ; $7a2c: $db
    ld e, e                                       ; $7a2d: $5b
    nop                                           ; $7a2e: $00
    xor $ae                                       ; $7a2f: $ee $ae
    ld e, d                                       ; $7a31: $5a
    ld l, a                                       ; $7a32: $6f
    and [hl]                                      ; $7a33: $a6
    and d                                         ; $7a34: $a2
    ld d, [hl]                                    ; $7a35: $56
    or [hl]                                       ; $7a36: $b6
    nop                                           ; $7a37: $00
    inc bc                                        ; $7a38: $03
    ld b, e                                       ; $7a39: $43
    dec de                                        ; $7a3a: $1b
    and h                                         ; $7a3b: $a4
    ld d, e                                       ; $7a3c: $53
    ld b, c                                       ; $7a3d: $41
    ld e, e                                       ; $7a3e: $5b
    sub [hl]                                      ; $7a3f: $96
    nop                                           ; $7a40: $00
    jp $872e                                      ; $7a41: $c3 $2e $87


    rla                                           ; $7a44: $17
    add e                                         ; $7a45: $83
    and [hl]                                      ; $7a46: $a6
    rrca                                          ; $7a47: $0f
    xor a                                         ; $7a48: $af
    nop                                           ; $7a49: $00
    call c, Call_0c4_7cdd                         ; $7a4a: $dc $dd $7c
    and [hl]                                      ; $7a4d: $a6
    db $fc                                        ; $7a4e: $fc
    or $dc                                        ; $7a4f: $f6 $dc
    sbc b                                         ; $7a51: $98
    nop                                           ; $7a52: $00
    db $ec                                        ; $7a53: $ec
    or e                                          ; $7a54: $b3
    sbc $64                                       ; $7a55: $de $64
    call c, $bc4d                                 ; $7a57: $dc $4d $bc
    add [hl]                                      ; $7a5a: $86
    nop                                           ; $7a5b: $00
    sub a                                         ; $7a5c: $97
    ld d, a                                       ; $7a5d: $57
    ld b, $82                                     ; $7a5e: $06 $82
    ld d, l                                       ; $7a60: $55
    ld d, l                                       ; $7a61: $55
    rlca                                          ; $7a62: $07
    cp d                                          ; $7a63: $ba
    nop                                           ; $7a64: $00
    ld l, l                                       ; $7a65: $6d
    ld l, l                                       ; $7a66: $6d
    rrca                                          ; $7a67: $0f
    sbc d                                         ; $7a68: $9a
    dec l                                         ; $7a69: $2d
    ld l, a                                       ; $7a6a: $6f
    xor e                                         ; $7a6b: $ab
    and h                                         ; $7a6c: $a4
    nop                                           ; $7a6d: $00
    ld e, a                                       ; $7a6e: $5f
    ld l, b                                       ; $7a6f: $68
    cp a                                          ; $7a70: $bf
    cp l                                          ; $7a71: $bd
    ld e, [hl]                                    ; $7a72: $5e
    ld c, b                                       ; $7a73: $48
    cp [hl]                                       ; $7a74: $be

Jump_0c4_7a75:
    db $ed                                        ; $7a75: $ed
    nop                                           ; $7a76: $00
    ld e, h                                       ; $7a77: $5c
    ld e, b                                       ; $7a78: $58
    db $ed                                        ; $7a79: $ed
    xor c                                         ; $7a7a: $a9
    ld e, [hl]                                    ; $7a7b: $5e
    ld l, h                                       ; $7a7c: $6c
    db $fd                                        ; $7a7d: $fd
    dec de                                        ; $7a7e: $1b
    nop                                           ; $7a7f: $00
    ld a, l                                       ; $7a80: $7d
    push af                                       ; $7a81: $f5
    dec sp                                        ; $7a82: $3b
    ld a, [de]                                    ; $7a83: $1a
    ld [hl], c                                    ; $7a84: $71
    ld d, h                                       ; $7a85: $54
    dec sp                                        ; $7a86: $3b
    ld a, [hl-]                                   ; $7a87: $3a
    nop                                           ; $7a88: $00
    ld d, l                                       ; $7a89: $55
    sub d                                         ; $7a8a: $92
    ld a, l                                       ; $7a8b: $7d
    add hl, sp                                    ; $7a8c: $39
    jp nc, $b7da                                  ; $7a8d: $d2 $da $b7

    and h                                         ; $7a90: $a4
    nop                                           ; $7a91: $00
    ld a, a                                       ; $7a92: $7f
    xor h                                         ; $7a93: $ac
    ld a, e                                       ; $7a94: $7b
    ld h, a                                       ; $7a95: $67
    cp d                                          ; $7a96: $ba
    or b                                          ; $7a97: $b0
    ld l, e                                       ; $7a98: $6b
    ld h, e                                       ; $7a99: $63
    nop                                           ; $7a9a: $00
    ld a, [hl-]                                   ; $7a9b: $3a
    or h                                          ; $7a9c: $b4
    ld l, e                                       ; $7a9d: $6b
    ld h, d                                       ; $7a9e: $62
    or a                                          ; $7a9f: $b7
    or e                                          ; $7aa0: $b3
    ld l, [hl]                                    ; $7aa1: $6e
    ld l, d                                       ; $7aa2: $6a
    nop                                           ; $7aa3: $00
    call c, $fa6f                                 ; $7aa4: $dc $6f $fa
    halt                                          ; $7aa7: $76
    db $ed                                        ; $7aa8: $ed
    ld l, e                                       ; $7aa9: $6b
    sub $56                                       ; $7aaa: $d6 $56
    nop                                           ; $7aac: $00
    ei                                            ; $7aad: $fb
    ld l, e                                       ; $7aae: $6b
    sub $db                                       ; $7aaf: $d6 $db
    ld l, c                                       ; $7ab1: $69
    ld l, b                                       ; $7ab2: $68
    push de                                       ; $7ab3: $d5
    ld c, e                                       ; $7ab4: $4b
    nop                                           ; $7ab5: $00
    or l                                          ; $7ab6: $b5
    ld a, d                                       ; $7ab7: $7a
    ld d, a                                       ; $7ab8: $57
    ld e, l                                       ; $7ab9: $5d
    ld l, d                                       ; $7aba: $6a
    ld [$55d5], a                                 ; $7abb: $ea $d5 $55
    nop                                           ; $7abe: $00
    ld a, e                                       ; $7abf: $7b
    jp z, $befd                                   ; $7ac0: $ca $fd $be

    rst $30                                       ; $7ac3: $f7
    add l                                         ; $7ac4: $85
    ld a, [$0076]                                 ; $7ac5: $fa $76 $00
    ld [$ed52], a                                 ; $7ac8: $ea $52 $ed
    and l                                         ; $7acb: $a5
    ret z                                         ; $7acc: $c8

    sub d                                         ; $7acd: $92
    db $ed                                        ; $7ace: $ed
    db $ed                                        ; $7acf: $ed
    nop                                           ; $7ad0: $00
    jp nc, $db30                                  ; $7ad1: $d2 $30 $db

    di                                            ; $7ad4: $f3
    push hl                                       ; $7ad5: $e5
    adc d                                         ; $7ad6: $8a
    rst $30                                       ; $7ad7: $f7
    push af                                       ; $7ad8: $f5
    nop                                           ; $7ad9: $00
    ld d, d                                       ; $7ada: $52
    push hl                                       ; $7adb: $e5
    db $db                                        ; $7adc: $db
    push de                                       ; $7add: $d5
    db $eb                                        ; $7ade: $eb
    xor a                                         ; $7adf: $af
    rst $18                                       ; $7ae0: $df
    rst $38                                       ; $7ae1: $ff
    ld [$cdff], sp                                ; $7ae2: $08 $ff $cd
    ei                                            ; $7ae5: $fb
    ld e, e                                       ; $7ae6: $5b
    ret nz                                        ; $7ae7: $c0

    ld [bc], a                                    ; $7ae8: $02
    sub h                                         ; $7ae9: $94
    res 3, b                                      ; $7aea: $cb $98
    nop                                           ; $7aec: $00
    ld d, a                                       ; $7aed: $57
    and l                                         ; $7aee: $a5
    ld e, e                                       ; $7aef: $5b
    ld c, c                                       ; $7af0: $49
    di                                            ; $7af1: $f3
    dec h                                         ; $7af2: $25
    db $db                                        ; $7af3: $db
    ld b, c                                       ; $7af4: $41
    nop                                           ; $7af5: $00
    xor a                                         ; $7af6: $af
    db $db                                        ; $7af7: $db
    ld [hl], $06                                  ; $7af8: $36 $06
    db $db                                        ; $7afa: $db
    ld d, e                                       ; $7afb: $53
    ld l, [hl]                                    ; $7afc: $6e
    call c, $aa00                                 ; $7afd: $dc $00 $aa
    add hl, hl                                    ; $7b00: $29
    add $57                                       ; $7b01: $c6 $57
    xor e                                         ; $7b03: $ab
    dec bc                                        ; $7b04: $0b
    or d                                          ; $7b05: $b2
    ld [hl], a                                    ; $7b06: $77
    nop                                           ; $7b07: $00
    sbc e                                         ; $7b08: $9b
    ld a, [bc]                                    ; $7b09: $0a
    or [hl]                                       ; $7b0a: $b6
    rst $10                                       ; $7b0b: $d7
    ld a, [hl+]                                   ; $7b0c: $2a
    ld d, a                                       ; $7b0d: $57
    dec hl                                        ; $7b0e: $2b
    dec l                                         ; $7b0f: $2d
    nop                                           ; $7b10: $00
    adc [hl]                                      ; $7b11: $8e
    ld c, d                                       ; $7b12: $4a
    sub a                                         ; $7b13: $97
    dec l                                         ; $7b14: $2d
    add a                                         ; $7b15: $87
    ld b, e                                       ; $7b16: $43
    ccf                                           ; $7b17: $3f
    daa                                           ; $7b18: $27
    nop                                           ; $7b19: $00
    adc [hl]                                      ; $7b1a: $8e
    adc [hl]                                      ; $7b1b: $8e
    daa                                           ; $7b1c: $27
    dec d                                         ; $7b1d: $15
    ld b, [hl]                                    ; $7b1e: $46
    or $dc                                        ; $7b1f: $f6 $dc
    xor h                                         ; $7b21: $ac
    nop                                           ; $7b22: $00
    db $dd                                        ; $7b23: $dd
    rst $10                                       ; $7b24: $d7
    cp [hl]                                       ; $7b25: $be
    ld c, l                                       ; $7b26: $4d
    db $fc                                        ; $7b27: $fc
    db $eb                                        ; $7b28: $eb
    cp $6d                                        ; $7b29: $fe $6d
    nop                                           ; $7b2b: $00
    sbc h                                         ; $7b2c: $9c
    xor c                                         ; $7b2d: $a9
    ld a, b                                       ; $7b2e: $78
    ld d, a                                       ; $7b2f: $57
    ccf                                           ; $7b30: $3f
    jp nc, $ef2d                                  ; $7b31: $d2 $2d $ef

    nop                                           ; $7b34: $00
    ld c, d                                       ; $7b35: $4a
    dec bc                                        ; $7b36: $0b
    dec l                                         ; $7b37: $2d
    db $fd                                        ; $7b38: $fd
    ld e, d                                       ; $7b39: $5a
    ld a, [bc]                                    ; $7b3a: $0a
    rrca                                          ; $7b3b: $0f
    cp c                                          ; $7b3c: $b9
    nop                                           ; $7b3d: $00
    rra                                           ; $7b3e: $1f
    ld c, e                                       ; $7b3f: $4b

Call_0c4_7b40:
    ld c, a                                       ; $7b40: $4f
    sbc b                                         ; $7b41: $98
    rst $38                                       ; $7b42: $ff
    db $ed                                        ; $7b43: $ed
    ld e, [hl]                                    ; $7b44: $5e
    ld c, d                                       ; $7b45: $4a
    nop                                           ; $7b46: $00
    db $fd                                        ; $7b47: $fd
    or h                                          ; $7b48: $b4
    ld e, c                                       ; $7b49: $59
    ld d, d                                       ; $7b4a: $52
    cp l                                          ; $7b4b: $bd
    cp l                                          ; $7b4c: $bd
    ld a, d                                       ; $7b4d: $7a
    ld b, [hl]                                    ; $7b4e: $46
    nop                                           ; $7b4f: $00
    cp e                                          ; $7b50: $bb
    db $db                                        ; $7b51: $db
    ld a, [hl]                                    ; $7b52: $7e
    inc [hl]                                      ; $7b53: $34
    db $db                                        ; $7b54: $db
    or a                                          ; $7b55: $b7
    sbc d                                         ; $7b56: $9a
    ld e, h                                       ; $7b57: $5c
    nop                                           ; $7b58: $00
    cp e                                          ; $7b59: $bb
    cp d                                          ; $7b5a: $ba
    dec e                                         ; $7b5b: $1d
    ld d, l                                       ; $7b5c: $55
    cp e                                          ; $7b5d: $bb
    cp a                                          ; $7b5e: $bf
    ld e, a                                       ; $7b5f: $5f
    add hl, de                                    ; $7b60: $19
    nop                                           ; $7b61: $00
    ld a, a                                       ; $7b62: $7f
    dec [hl]                                      ; $7b63: $35
    ld e, e                                       ; $7b64: $5b
    xor d                                         ; $7b65: $aa
    ld a, a                                       ; $7b66: $7f
    ld h, h                                       ; $7b67: $64
    or e                                          ; $7b68: $b3
    or e                                          ; $7b69: $b3
    nop                                           ; $7b6a: $00
    ld l, d                                       ; $7b6b: $6a
    or h                                          ; $7b6c: $b4
    ld l, e                                       ; $7b6d: $6b
    jp hl                                         ; $7b6e: $e9


    cp $e4                                        ; $7b6f: $fe $e4
    ei                                            ; $7b71: $fb
    xor b                                         ; $7b72: $a8
    nop                                           ; $7b73: $00
    ld [hl], l                                    ; $7b74: $75
    ld a, l                                       ; $7b75: $7d
    db $e3                                        ; $7b76: $e3
    xor b                                         ; $7b77: $a8
    push af                                       ; $7b78: $f5
    sub h                                         ; $7b79: $94
    ld e, e                                       ; $7b7a: $5b
    dec de                                        ; $7b7b: $1b
    nop                                           ; $7b7c: $00
    push af                                       ; $7b7d: $f5
    and l                                         ; $7b7e: $a5
    ld a, b                                       ; $7b7f: $78
    ld a, [hl+]                                   ; $7b80: $2a
    ld [hl], l                                    ; $7b81: $75
    and c                                         ; $7b82: $a1
    halt                                          ; $7b83: $76
    ld l, $00                                     ; $7b84: $2e $00
    di                                            ; $7b86: $f3
    or c                                          ; $7b87: $b1
    ld l, [hl]                                    ; $7b88: $6e
    ld l, d                                       ; $7b89: $6a
    or l                                          ; $7b8a: $b5
    ld a, $d5                                     ; $7b8b: $3e $d5
    call nc, $bb00                                ; $7b8d: $d4 $00 $bb
    xor [hl]                                      ; $7b90: $ae
    push de                                       ; $7b91: $d5
    db $eb                                        ; $7b92: $eb
    ld [hl], l                                    ; $7b93: $75
    ld e, l                                       ; $7b94: $5d
    xor e                                         ; $7b95: $ab
    ld l, d                                       ; $7b96: $6a
    nop                                           ; $7b97: $00
    db $dd                                        ; $7b98: $dd
    ld [hl], l                                    ; $7b99: $75
    xor e                                         ; $7b9a: $ab
    add hl, hl                                    ; $7b9b: $29
    rst $18                                       ; $7b9c: $df
    db $e4                                        ; $7b9d: $e4
    db $d3                                        ; $7b9e: $d3
    adc e                                         ; $7b9f: $8b
    nop                                           ; $7ba0: $00
    rst $30                                       ; $7ba1: $f7
    ld h, l                                       ; $7ba2: $65
    rst $38                                       ; $7ba3: $ff
    rst $08                                       ; $7ba4: $cf
    rst $38                                       ; $7ba5: $ff
    xor a                                         ; $7ba6: $af
    ld d, a                                       ; $7ba7: $57
    ld d, $00                                     ; $7ba8: $16 $00
    ld d, a                                       ; $7baa: $57
    cp e                                          ; $7bab: $bb
    rla                                           ; $7bac: $17
    ld b, h                                       ; $7bad: $44
    daa                                           ; $7bae: $27
    ld e, e                                       ; $7baf: $5b
    or a                                          ; $7bb0: $b7
    xor l                                         ; $7bb1: $ad
    nop                                           ; $7bb2: $00
    db $db                                        ; $7bb3: $db
    db $d3                                        ; $7bb4: $d3
    rst $38                                       ; $7bb5: $ff
    ld e, e                                       ; $7bb6: $5b
    or [hl]                                       ; $7bb7: $b6
    ld h, [hl]                                    ; $7bb8: $66
    cp a                                          ; $7bb9: $bf
    sbc d                                         ; $7bba: $9a
    nop                                           ; $7bbb: $00
    ld [hl], a                                    ; $7bbc: $77
    ld l, e                                       ; $7bbd: $6b
    sub $96                                       ; $7bbe: $d6 $96
    ld a, a                                       ; $7bc0: $7f
    ld c, e                                       ; $7bc1: $4b
    or a                                          ; $7bc2: $b7
    ld c, $20                                     ; $7bc3: $0e $20
    db $db                                        ; $7bc5: $db
    adc d                                         ; $7bc6: $8a
    jr nc, @+$15                                  ; $7bc7: $30 $13

    ld d, d                                       ; $7bc9: $52
    xor a                                         ; $7bca: $af
    ld e, l                                       ; $7bcb: $5d
    or [hl]                                       ; $7bcc: $b6
    ld a, [hl+]                                   ; $7bcd: $2a
    add b                                         ; $7bce: $80
    ld b, d                                       ; $7bcf: $42
    dec b                                         ; $7bd0: $05
    ld d, [hl]                                    ; $7bd1: $56
    cp a                                          ; $7bd2: $bf
    xor d                                         ; $7bd3: $aa
    sub $ac                                       ; $7bd4: $d6 $ac
    db $fc                                        ; $7bd6: $fc
    ld d, d                                       ; $7bd7: $52
    nop                                           ; $7bd8: $00
    xor l                                         ; $7bd9: $ad
    xor h                                         ; $7bda: $ac
    sub $76                                       ; $7bdb: $d6 $76
    xor l                                         ; $7bdd: $ad
    adc h                                         ; $7bde: $8c
    or $ee                                        ; $7bdf: $f6 $ee
    nop                                           ; $7be1: $00
    ld b, a                                       ; $7be2: $47
    rlca                                          ; $7be3: $07
    ld d, [hl]                                    ; $7be4: $56
    db $ed                                        ; $7be5: $ed
    ld d, [hl]                                    ; $7be6: $56
    dec b                                         ; $7be7: $05
    ld d, [hl]                                    ; $7be8: $56
    db $ec                                        ; $7be9: $ec
    nop                                           ; $7bea: $00
    ld d, a                                       ; $7beb: $57
    ld d, l                                       ; $7bec: $55
    ld b, [hl]                                    ; $7bed: $46
    xor [hl]                                      ; $7bee: $ae
    rla                                           ; $7bef: $17
    rlca                                          ; $7bf0: $07
    ld d, [hl]                                    ; $7bf1: $56
    adc [hl]                                      ; $7bf2: $8e
    nop                                           ; $7bf3: $00
    ld a, c                                       ; $7bf4: $79
    ld l, d                                       ; $7bf5: $6a
    dec e                                         ; $7bf6: $1d
    ld c, l                                       ; $7bf7: $4d

Call_0c4_7bf8:
    sbc d                                         ; $7bf8: $9a
    ld e, d                                       ; $7bf9: $5a
    adc c                                         ; $7bfa: $89
    db $ec                                        ; $7bfb: $ec
    nop                                           ; $7bfc: $00
    sbc d                                         ; $7bfd: $9a
    ld e, d                                       ; $7bfe: $5a
    db $ed                                        ; $7bff: $ed
    xor c                                         ; $7c00: $a9
    call c, Call_000_3d4a                         ; $7c01: $dc $4a $3d
    di                                            ; $7c04: $f3
    nop                                           ; $7c05: $00
    dec c                                         ; $7c06: $0d
    sbc l                                         ; $7c07: $9d
    dec hl                                        ; $7c08: $2b
    ld a, [hl-]                                   ; $7c09: $3a
    ld c, l                                       ; $7c0a: $4d
    rst $18                                       ; $7c0b: $df
    dec hl                                        ; $7c0c: $2b
    ld a, [hl+]                                   ; $7c0d: $2a
    nop                                           ; $7c0e: $00
    sbc l                                         ; $7c0f: $9d
    jp c, Jump_000_2b2f                           ; $7c10: $da $2f $2b

    sbc l                                         ; $7c13: $9d
    ret c                                         ; $7c14: $d8

    cpl                                           ; $7c15: $2f
    jp c, Jump_0c4_7900                           ; $7c16: $da $00 $79

    inc d                                         ; $7c19: $14
    ei                                            ; $7c1a: $fb
    jp z, $bc7f                                   ; $7c1b: $ca $7f $bc

    ld e, a                                       ; $7c1e: $5f
    jp c, $b500                                   ; $7c1f: $da $00 $b5

    and c                                         ; $7c22: $a1
    push de                                       ; $7c23: $d5
    ld e, e                                       ; $7c24: $5b
    or c                                          ; $7c25: $b1
    sub h                                         ; $7c26: $94
    ld a, [c]                                     ; $7c27: $f2
    ld b, l                                       ; $7c28: $45
    nop                                           ; $7c29: $00
    dec sp                                        ; $7c2a: $3b
    cp e                                          ; $7c2b: $bb
    ld a, l                                       ; $7c2c: $7d
    ld e, l                                       ; $7c2d: $5d
    rst $38                                       ; $7c2e: $ff
    ei                                            ; $7c2f: $fb
    db $fd                                        ; $7c30: $fd
    ei                                            ; $7c31: $fb
    nop                                           ; $7c32: $00
    ld e, l                                       ; $7c33: $5d
    dec [hl]                                      ; $7c34: $35
    dec sp                                        ; $7c35: $3b
    cp d                                          ; $7c36: $ba
    ld e, a                                       ; $7c37: $5f
    dec h                                         ; $7c38: $25
    ld a, e                                       ; $7c39: $7b
    ld [hl], h                                    ; $7c3a: $74
    nop                                           ; $7c3b: $00
    db $eb                                        ; $7c3c: $eb
    xor b                                         ; $7c3d: $a8
    ld [hl], l                                    ; $7c3e: $75
    ld [hl], b                                    ; $7c3f: $70
    push hl                                       ; $7c40: $e5
    or l                                          ; $7c41: $b5
    ld l, b                                       ; $7c42: $68
    ld h, b                                       ; $7c43: $60
    nop                                           ; $7c44: $00
    rst $30                                       ; $7c45: $f7
    and l                                         ; $7c46: $a5
    ld a, d                                       ; $7c47: $7a
    or l                                          ; $7c48: $b5
    ld l, e                                       ; $7c49: $6b
    ld h, d                                       ; $7c4a: $62
    rst $38                                       ; $7c4b: $ff
    cp l                                          ; $7c4c: $bd
    nop                                           ; $7c4d: $00
    ld a, a                                       ; $7c4e: $7f
    ld [c], a                                     ; $7c4f: $e2
    cp a                                          ; $7c50: $bf
    xor c                                         ; $7c51: $a9
    ld a, [hl]                                    ; $7c52: $7e
    ld a, l                                       ; $7c53: $7d
    xor a                                         ; $7c54: $af
    ld [$7500], a                                 ; $7c55: $ea $00 $75
    inc [hl]                                      ; $7c58: $34
    rst $28                                       ; $7c59: $ef
    bit 6, l                                      ; $7c5a: $cb $75
    or h                                          ; $7c5c: $b4
    rst $28                                       ; $7c5d: $ef
    sbc e                                         ; $7c5e: $9b
    nop                                           ; $7c5f: $00
    halt                                          ; $7c60: $76
    rst $18                                       ; $7c61: $df
    rst $38                                       ; $7c62: $ff
    ld c, e                                       ; $7c63: $4b
    and [hl]                                      ; $7c64: $a6
    scf                                           ; $7c65: $37
    xor e                                         ; $7c66: $ab
    ld l, e                                       ; $7c67: $6b
    nop                                           ; $7c68: $00
    or d                                          ; $7c69: $b2
    rst $28                                       ; $7c6a: $ef
    sbc [hl]                                      ; $7c6b: $9e
    ld d, a                                       ; $7c6c: $57
    db $ed                                        ; $7c6d: $ed
    ld h, l                                       ; $7c6e: $65
    xor h                                         ; $7c6f: $ac
    ld d, a                                       ; $7c70: $57
    inc b                                         ; $7c71: $04
    dec hl                                        ; $7c72: $2b
    ld [hl+], a                                   ; $7c73: $22

jr_0c4_7c74:
    add a                                         ; $7c74: $87
    ld d, a                                       ; $7c75: $57
    xor e                                         ; $7c76: $ab
    inc b                                         ; $7c77: $04
    nop                                           ; $7c78: $00
    dec bc                                        ; $7c79: $0b
    dec e                                         ; $7c7a: $1d
    nop                                           ; $7c7b: $00
    ld c, [hl]                                    ; $7c7c: $4e
    xor l                                         ; $7c7d: $ad
    ld d, $26                                     ; $7c7e: $16 $26
    ld h, a                                       ; $7c80: $67
    ld l, a                                       ; $7c81: $6f
    rst $38                                       ; $7c82: $ff
    call c, $fc00                                 ; $7c83: $dc $00 $fc
    halt                                          ; $7c86: $76
    db $fc                                        ; $7c87: $fc
    db $ed                                        ; $7c88: $ed
    ld a, h                                       ; $7c89: $7c
    inc d                                         ; $7c8a: $14
    db $fd                                        ; $7c8b: $fd
    add hl, bc                                    ; $7c8c: $09
    ld [bc], a                                    ; $7c8d: $02
    db $fc                                        ; $7c8e: $fc
    or $ac                                        ; $7c8f: $f6 $ac
    dec l                                         ; $7c91: $2d
    db $fc                                        ; $7c92: $fc
    ld [hl], l                                    ; $7c93: $75
    ret nz                                        ; $7c94: $c0

    ld a, [bc]                                    ; $7c95: $0a
    add [hl]                                      ; $7c96: $86
    add b                                         ; $7c97: $80
    ret nz                                        ; $7c98: $c0

    ld [bc], a                                    ; $7c99: $02
    and [hl]                                      ; $7c9a: $a6
    ld [hl], a                                    ; $7c9b: $77
    ld a, [bc]                                    ; $7c9c: $0a
    sub b                                         ; $7c9d: $90
    rrca                                          ; $7c9e: $0f
    rst $28                                       ; $7c9f: $ef
    xor d                                         ; $7ca0: $aa
    nop                                           ; $7ca1: $00
    ld [hl], a                                    ; $7ca2: $77
    xor h                                         ; $7ca3: $ac
    xor b                                         ; $7ca4: $a8
    halt                                          ; $7ca5: $76
    push de                                       ; $7ca6: $d5
    cp [hl]                                       ; $7ca7: $be
    xor [hl]                                      ; $7ca8: $ae
    ld d, h                                       ; $7ca9: $54
    nop                                           ; $7caa: $00
    rst $30                                       ; $7cab: $f7
    xor a                                         ; $7cac: $af
    ld e, l                                       ; $7cad: $5d
    xor $ea                                       ; $7cae: $ee $ea
    ld e, a                                       ; $7cb0: $5f
    ld d, d                                       ; $7cb1: $52
    db $ed                                        ; $7cb2: $ed
    nop                                           ; $7cb3: $00
    ld e, h                                       ; $7cb4: $5c
    dec bc                                        ; $7cb5: $0b
    dec de                                        ; $7cb6: $1b
    sbc l                                         ; $7cb7: $9d
    ld e, h                                       ; $7cb8: $5c
    add hl, bc                                    ; $7cb9: $09
    di                                            ; $7cba: $f3
    ld e, l                                       ; $7cbb: $5d
    nop                                           ; $7cbc: $00
    db $fd                                        ; $7cbd: $fd
    ld sp, hl                                     ; $7cbe: $f9
    ld a, [hl+]                                   ; $7cbf: $2a
    db $fd                                        ; $7cc0: $fd
    call $fabe                                    ; $7cc1: $cd $be $fa
    sbc l                                         ; $7cc4: $9d
    nop                                           ; $7cc5: $00
    cp h                                          ; $7cc6: $bc
    ld c, e                                       ; $7cc7: $4b
    ld e, b                                       ; $7cc8: $58
    xor l                                         ; $7cc9: $ad
    xor l                                         ; $7cca: $ad
    jr jr_0c4_7d37                                ; $7ccb: $18 $6a

    dec e                                         ; $7ccd: $1d
    nop                                           ; $7cce: $00
    dec a                                         ; $7ccf: $3d
    ld c, d                                       ; $7cd0: $4a
    call c, Call_0c4_7f3a                         ; $7cd1: $dc $3a $7f
    jr jr_0c4_7c74                                ; $7cd4: $18 $9e

    ld l, a                                       ; $7cd6: $6f
    nop                                           ; $7cd7: $00
    inc [hl]                                      ; $7cd8: $34
    sbc e                                         ; $7cd9: $9b
    sbc [hl]                                      ; $7cda: $9e
    ccf                                           ; $7cdb: $3f
    ld c, d                                       ; $7cdc: $4a

Call_0c4_7cdd:
    or l                                          ; $7cdd: $b5
    pop bc                                        ; $7cde: $c1
    dec a                                         ; $7cdf: $3d
    nop                                           ; $7ce0: $00
    dec sp                                        ; $7ce1: $3b
    ld d, l                                       ; $7ce2: $55
    or l                                          ; $7ce3: $b5
    ld d, [hl]                                    ; $7ce4: $56
    ld sp, hl                                     ; $7ce5: $f9
    dec d                                         ; $7ce6: $15
    push af                                       ; $7ce7: $f5
    ld a, [$da00]                                 ; $7ce8: $fa $00 $da
    or c                                          ; $7ceb: $b1
    ld sp, hl                                     ; $7cec: $f9
    db $fc                                        ; $7ced: $fc
    ld e, d                                       ; $7cee: $5a
    dec [hl]                                      ; $7cef: $35
    cp c                                          ; $7cf0: $b9
    ld e, h                                       ; $7cf1: $5c
    nop                                           ; $7cf2: $00
    ld e, d                                       ; $7cf3: $5a
    sub b                                         ; $7cf4: $90
    cp h                                          ; $7cf5: $bc
    ld a, c                                       ; $7cf6: $79
    ld e, [hl]                                    ; $7cf7: $5e
    or h                                          ; $7cf8: $b4
    sub h                                         ; $7cf9: $94
    or c                                          ; $7cfa: $b1
    nop                                           ; $7cfb: $00
    cp e                                          ; $7cfc: $bb
    ld e, a                                       ; $7cfd: $5f
    ld d, $3f                                     ; $7cfe: $16 $3f
    cp e                                          ; $7d00: $bb
    ld e, a                                       ; $7d01: $5f
    rla                                           ; $7d02: $17
    dec sp                                        ; $7d03: $3b
    nop                                           ; $7d04: $00
    cp b                                          ; $7d05: $b8

Jump_0c4_7d06:
    ld e, a                                       ; $7d06: $5f
    ld [hl], h                                    ; $7d07: $74
    dec sp                                        ; $7d08: $3b
    or a                                          ; $7d09: $b7
    ld e, e                                       ; $7d0a: $5b
    sbc c                                         ; $7d0b: $99
    sbc a                                         ; $7d0c: $9f
    nop                                           ; $7d0d: $00
    ld a, e                                       ; $7d0e: $7b
    rst $38                                       ; $7d0f: $ff
    pop hl                                        ; $7d10: $e1
    pop hl                                        ; $7d11: $e1
    or [hl]                                       ; $7d12: $b6
    db $e4                                        ; $7d13: $e4
    ld l, d                                       ; $7d14: $6a
    ldh [rP1], a                                  ; $7d15: $e0 $00
    and l                                         ; $7d17: $a5
    db $ed                                        ; $7d18: $ed
    ld c, d                                       ; $7d19: $4a
    ldh [$b4], a                                  ; $7d1a: $e0 $b4
    ld h, b                                       ; $7d1c: $60
    ld l, a                                       ; $7d1d: $6f
    push hl                                       ; $7d1e: $e5
    nop                                           ; $7d1f: $00
    xor e                                         ; $7d20: $ab
    push af                                       ; $7d21: $f5
    dec [hl]                                      ; $7d22: $35
    dec sp                                        ; $7d23: $3b
    xor [hl]                                      ; $7d24: $ae
    dec [hl]                                      ; $7d25: $35
    ld [hl], l                                    ; $7d26: $75
    ld a, [hl-]                                   ; $7d27: $3a
    nop                                           ; $7d28: $00
    xor a                                         ; $7d29: $af
    dec [hl]                                      ; $7d2a: $35
    db $dd                                        ; $7d2b: $dd
    dec hl                                        ; $7d2c: $2b
    ld b, e                                       ; $7d2d: $43
    dec a                                         ; $7d2e: $3d
    cp l                                          ; $7d2f: $bd
    dec hl                                        ; $7d30: $2b
    db $10                                        ; $7d31: $10
    xor [hl]                                      ; $7d32: $ae
    call nz, $f8f9                                ; $7d33: $c4 $f9 $f8
    inc bc                                        ; $7d36: $03

jr_0c4_7d37:
    cp d                                          ; $7d37: $ba
    ld l, d                                       ; $7d38: $6a
    ld l, [hl]                                    ; $7d39: $6e
    cp e                                          ; $7d3a: $bb
    nop                                           ; $7d3b: $00
    cp b                                          ; $7d3c: $b8
    ld l, d                                       ; $7d3d: $6a
    cp h                                          ; $7d3e: $bc
    sbc d                                         ; $7d3f: $9a
    ld a, [bc]                                    ; $7d40: $0a
    xor b                                         ; $7d41: $a8
    xor l                                         ; $7d42: $ad
    rlca                                          ; $7d43: $07
    nop                                           ; $7d44: $00
    rlca                                          ; $7d45: $07
    ld d, [hl]                                    ; $7d46: $56
    ld d, d                                       ; $7d47: $52
    adc a                                         ; $7d48: $8f
    rlca                                          ; $7d49: $07
    xor a                                         ; $7d4a: $af
    ld e, e                                       ; $7d4b: $5b
    dec c                                         ; $7d4c: $0d
    nop                                           ; $7d4d: $00
    cp d                                          ; $7d4e: $ba
    rra                                           ; $7d4f: $1f
    ld e, l                                       ; $7d50: $5d
    ld c, $9a                                     ; $7d51: $0e $9a
    dec a                                         ; $7d53: $3d
    ld d, a                                       ; $7d54: $57
    cp h                                          ; $7d55: $bc
    nop                                           ; $7d56: $00
    xor l                                         ; $7d57: $ad
    db $fc                                        ; $7d58: $fc
    xor l                                         ; $7d59: $ad
    ret c                                         ; $7d5a: $d8

    call z, Call_000_3178                         ; $7d5b: $cc $78 $31
    ret c                                         ; $7d5e: $d8

    nop                                           ; $7d5f: $00
    ld h, [hl]                                    ; $7d60: $66
    cp h                                          ; $7d61: $bc
    ret                                           ; $7d62: $c9


    cp b                                          ; $7d63: $b8
    dec [hl]                                      ; $7d64: $35
    ld a, [c]                                     ; $7d65: $f2
    adc d                                         ; $7d66: $8a
    xor a                                         ; $7d67: $af
    nop                                           ; $7d68: $00
    ld l, a                                       ; $7d69: $6f
    ld a, [bc]                                    ; $7d6a: $0a
    ld [bc], a                                    ; $7d6b: $02
    xor l                                         ; $7d6c: $ad
    xor l                                         ; $7d6d: $ad
    rrca                                          ; $7d6e: $0f
    ld e, d                                       ; $7d6f: $5a
    call $ad00                                    ; $7d70: $cd $00 $ad
    rrca                                          ; $7d73: $0f
    ld a, [de]                                    ; $7d74: $1a
    dec l                                         ; $7d75: $2d
    sbc $97                                       ; $7d76: $de $97
    and l                                         ; $7d78: $a5
    ld e, [hl]                                    ; $7d79: $5e
    nop                                           ; $7d7a: $00
    ld l, b                                       ; $7d7b: $68
    cp a                                          ; $7d7c: $bf
    cp [hl]                                       ; $7d7d: $be
    ld e, l                                       ; $7d7e: $5d
    ld c, c                                       ; $7d7f: $49
    cp [hl]                                       ; $7d80: $be
    xor $5c                                       ; $7d81: $ee $5c
    nop                                           ; $7d83: $00
    ld e, b                                       ; $7d84: $58
    xor $aa                                       ; $7d85: $ee $aa
    ld e, l                                       ; $7d87: $5d
    ret c                                         ; $7d88: $d8

    db $fd                                        ; $7d89: $fd
    dec c                                         ; $7d8a: $0d
    cp [hl]                                       ; $7d8b: $be
    nop                                           ; $7d8c: $00
    ld a, d                                       ; $7d8d: $7a
    sbc l                                         ; $7d8e: $9d
    sbc d                                         ; $7d8f: $9a
    ld sp, $3b14                                  ; $7d90: $31 $14 $3b
    sbc d                                         ; $7d93: $9a
    dec [hl]                                      ; $7d94: $35
    nop                                           ; $7d95: $00
    ld d, e                                       ; $7d96: $53
    cp h                                          ; $7d97: $bc
    sbc b                                         ; $7d98: $98
    ld [hl], d                                    ; $7d99: $72
    db $db                                        ; $7d9a: $db
    or [hl]                                       ; $7d9b: $b6
    ld l, d                                       ; $7d9c: $6a
    ld e, a                                       ; $7d9d: $5f
    nop                                           ; $7d9e: $00
    xor $5d                                       ; $7d9f: $ee $5d
    or e                                          ; $7da1: $b3
    ld e, l                                       ; $7da2: $5d
    ld e, b                                       ; $7da3: $58
    or l                                          ; $7da4: $b5
    ld sp, $009d                                  ; $7da5: $31 $9d $00
    ld e, d                                       ; $7da8: $5a
    or l                                          ; $7da9: $b5
    or c                                          ; $7daa: $b1
    ld e, e                                       ; $7dab: $5b
    ld e, c                                       ; $7dac: $59
    or a                                          ; $7dad: $b7
    ld a, [de]                                    ; $7dae: $1a
    or a                                          ; $7daf: $b7
    nop                                           ; $7db0: $00
    dec de                                        ; $7db1: $1b
    cp $9d                                        ; $7db2: $fe $9d
    ld a, e                                       ; $7db4: $7b
    ld a, [de]                                    ; $7db5: $1a
    or l                                          ; $7db6: $b5
    sub l                                         ; $7db7: $95
    ld a, [hl]                                    ; $7db8: $7e
    nop                                           ; $7db9: $00
    ld a, [de]                                    ; $7dba: $1a
    push af                                       ; $7dbb: $f5
    ld d, [hl]                                    ; $7dbc: $56
    cp d                                          ; $7dbd: $ba
    sbc d                                         ; $7dbe: $9a
    ld [hl], l                                    ; $7dbf: $75
    cp d                                          ; $7dc0: $ba
    stop                                          ; $7dc1: $10 $00
    db $e4                                        ; $7dc3: $e4
    or c                                          ; $7dc4: $b1
    cp d                                          ; $7dc5: $ba
    ld d, l                                       ; $7dc6: $55
    call nc, $bcb5                                ; $7dc7: $d4 $b5 $bc
    sub $00                                       ; $7dca: $d6 $00
    pop de                                        ; $7dcc: $d1
    or h                                          ; $7dcd: $b4
    ld hl, sp+$54                                 ; $7dce: $f8 $54
    dec d                                         ; $7dd0: $15
    ld d, b                                       ; $7dd1: $50
    or h                                          ; $7dd2: $b4
    rra                                           ; $7dd3: $1f
    nop                                           ; $7dd4: $00
    rra                                           ; $7dd5: $1f
    ld e, e                                       ; $7dd6: $5b
    and l                                         ; $7dd7: $a5
    rra                                           ; $7dd8: $1f
    rrca                                          ; $7dd9: $0f
    ld e, a                                       ; $7dda: $5f
    or [hl]                                       ; $7ddb: $b6
    dec de                                        ; $7ddc: $1b
    ld bc, $3f74                                  ; $7ddd: $01 $74 $3f
    cp e                                          ; $7de0: $bb
    dec e                                         ; $7de1: $1d
    inc [hl]                                      ; $7de2: $34
    ld a, e                                       ; $7de3: $7b
    cp h                                          ; $7de4: $bc
    cp h                                          ; $7de5: $bc
    nop                                           ; $7de6: $00
    nop                                           ; $7de7: $00
    or h                                          ; $7de8: $b4
    ld h, d                                       ; $7de9: $62
    ld [hl-], a                                   ; $7dea: $32
    ldh [$c5], a                                  ; $7deb: $e0 $c5
    ld h, e                                       ; $7ded: $63
    sbc d                                         ; $7dee: $9a
    ldh a, [rP1]                                  ; $7def: $f0 $00
    inc h                                         ; $7df1: $24
    ldh [rOCPD], a                                ; $7df2: $e0 $6b
    push hl                                       ; $7df4: $e5
    ld a, [hl+]                                   ; $7df5: $2a
    cp l                                          ; $7df6: $bd
    cp l                                          ; $7df7: $bd
    ld a, [hl+]                                   ; $7df8: $2a
    ld [$b50a], sp                                ; $7df9: $08 $0a $b5
    or l                                          ; $7dfc: $b5
    ld a, $b0                                     ; $7dfd: $3e $b0
    dec hl                                        ; $7dff: $2b

jr_0c4_7e00:
    adc l                                         ; $7e00: $8d
    ld a, b                                       ; $7e01: $78

Call_0c4_7e02:
    ld [hl], b                                    ; $7e02: $70
    nop                                           ; $7e03: $00
    xor d                                         ; $7e04: $aa
    and l                                         ; $7e05: $a5
    ld a, [de]                                    ; $7e06: $1a
    ld e, h                                       ; $7e07: $5c
    xor [hl]                                      ; $7e08: $ae
    ld e, d                                       ; $7e09: $5a
    sub c                                         ; $7e0a: $91
    cp c                                          ; $7e0b: $b9
    nop                                           ; $7e0c: $00
    call c, $b05a                                 ; $7e0d: $dc $5a $b0
    cp h                                          ; $7e10: $bc
    ld e, c                                       ; $7e11: $59
    ld e, l                                       ; $7e12: $5d
    xor a                                         ; $7e13: $af
    sbc e                                         ; $7e14: $9b
    nop                                           ; $7e15: $00
    dec a                                         ; $7e16: $3d
    dec d                                         ; $7e17: $15
    ld c, a                                       ; $7e18: $4f
    xor d                                         ; $7e19: $aa
    rrca                                          ; $7e1a: $0f
    cpl                                           ; $7e1b: $2f
    rst $18                                       ; $7e1c: $df
    dec e                                         ; $7e1d: $1d
    nop                                           ; $7e1e: $00
    ld e, d                                       ; $7e1f: $5a
    ld a, [hl-]                                   ; $7e20: $3a
    sbc l                                         ; $7e21: $9d
    ld d, l                                       ; $7e22: $55
    jr jr_0c4_7e00                                ; $7e23: $18 $db

    ldh a, [$35]                                  ; $7e25: $f0 $35
    nop                                           ; $7e27: $00
    ld a, [c]                                     ; $7e28: $f2
    ld e, d                                       ; $7e29: $5a
    ld hl, sp-$4b                                 ; $7e2a: $f8 $b5
    ldh a, [$aa]                                  ; $7e2c: $f0 $aa
    ld hl, sp-$49                                 ; $7e2e: $f8 $b7
    nop                                           ; $7e30: $00
    ld [hl], b                                    ; $7e31: $70
    sub d                                         ; $7e32: $92
    ldh a, [$6f]                                  ; $7e33: $f0 $6f
    cp a                                          ; $7e35: $bf
    dec h                                         ; $7e36: $25
    ld e, d                                       ; $7e37: $5a
    sbc $00                                       ; $7e38: $de $00
    sub l                                         ; $7e3a: $95
    rla                                           ; $7e3b: $17
    ld e, d                                       ; $7e3c: $5a
    ld a, [$15b5]                                 ; $7e3d: $fa $b5 $15
    ld e, $72                                     ; $7e40: $1e $72
    nop                                           ; $7e42: $00
    ccf                                           ; $7e43: $3f
    sub a                                         ; $7e44: $97
    sbc [hl]                                      ; $7e45: $9e
    jr nc, @+$01                                  ; $7e46: $30 $ff

    db $dd                                        ; $7e48: $dd
    cp d                                          ; $7e49: $ba
    xor d                                         ; $7e4a: $aa
    nop                                           ; $7e4b: $00
    db $dd                                        ; $7e4c: $dd
    ld d, h                                       ; $7e4d: $54
    cp c                                          ; $7e4e: $b9
    sub d                                         ; $7e4f: $92
    ld a, l                                       ; $7e50: $7d
    ld e, l                                       ; $7e51: $5d
    ld a, [$00a6]                                 ; $7e52: $fa $a6 $00
    ld e, e                                       ; $7e55: $5b
    db $db                                        ; $7e56: $db
    cp $b4                                        ; $7e57: $fe $b4
    ld e, e                                       ; $7e59: $5b
    or [hl]                                       ; $7e5a: $b6
    sbc d                                         ; $7e5b: $9a
    ld e, l                                       ; $7e5c: $5d
    ld b, b                                       ; $7e5d: $40
    cp d                                          ; $7e5e: $ba
    ret nz                                        ; $7e5f: $c0

    ld [hl-], a                                   ; $7e60: $32
    ld e, d                                       ; $7e61: $5a
    xor d                                         ; $7e62: $aa
    ld a, a                                       ; $7e63: $7f
    or d                                          ; $7e64: $b2
    ld e, c                                       ; $7e65: $59
    ld e, c                                       ; $7e66: $59
    nop                                           ; $7e67: $00
    or l                                          ; $7e68: $b5
    jp c, Jump_0c4_7435                           ; $7e69: $da $35 $74

    rst $38                                       ; $7e6c: $ff
    ld [hl], d                                    ; $7e6d: $72
    db $fd                                        ; $7e6e: $fd
    ld d, h                                       ; $7e6f: $54
    nop                                           ; $7e70: $00
    cp d                                          ; $7e71: $ba
    cp [hl]                                       ; $7e72: $be
    pop af                                        ; $7e73: $f1
    ld d, h                                       ; $7e74: $54
    ld a, [$b645]                                 ; $7e75: $fa $45 $b6
    add [hl]                                      ; $7e78: $86
    nop                                           ; $7e79: $00
    ld a, l                                       ; $7e7a: $7d
    ld e, c                                       ; $7e7b: $59
    or [hl]                                       ; $7e7c: $b6
    sub d                                         ; $7e7d: $92
    dec [hl]                                      ; $7e7e: $35
    ld e, b                                       ; $7e7f: $58
    or l                                          ; $7e80: $b5
    rla                                           ; $7e81: $17
    nop                                           ; $7e82: $00
    ld hl, sp-$28                                 ; $7e83: $f8 $d8
    or l                                          ; $7e85: $b5
    ld [hl], $d9                                  ; $7e86: $36 $d9
    ld a, [de]                                    ; $7e88: $1a
    pop af                                        ; $7e89: $f1
    pop hl                                        ; $7e8a: $e1
    jr jr_0c4_7ee1                                ; $7e8b: $18 $54

    ld c, d                                       ; $7e8d: $4a
    inc [hl]                                      ; $7e8e: $34
    add b                                         ; $7e8f: $80
    ld bc, $2080                                  ; $7e90: $01 $80 $20
    cp e                                          ; $7e93: $bb
    ld e, a                                       ; $7e94: $5f
    ld [hl], $08                                  ; $7e95: $36 $08
    ld a, e                                       ; $7e97: $7b
    ld a, [hl+]                                   ; $7e98: $2a
    sbc a                                         ; $7e99: $9f
    ld d, l                                       ; $7e9a: $55
    nop                                           ; $7e9b: $00
    ld b, $1d                                     ; $7e9c: $06 $1d
    ld e, d                                       ; $7e9e: $5a
    dec sp                                        ; $7e9f: $3b
    ld [$549d], sp                                ; $7ea0: $08 $9d $54
    add hl, de                                    ; $7ea3: $19
    or [hl]                                       ; $7ea4: $b6
    or h                                          ; $7ea5: $b4
    nop                                           ; $7ea6: $00
    or h                                          ; $7ea7: $b4
    ldh a, [rOCPD]                                ; $7ea8: $f0 $6b
    nop                                           ; $7eaa: $00
    pop hl                                        ; $7eab: $e1
    ld d, h                                       ; $7eac: $54
    ldh a, [$6e]                                  ; $7ead: $f0 $6e
    ldh [rNR51], a                                ; $7eaf: $e0 $25
    pop hl                                        ; $7eb1: $e1
    sbc $00                                       ; $7eb2: $de $00
    ld a, a                                       ; $7eb4: $7f
    ld c, e                                       ; $7eb5: $4b
    or l                                          ; $7eb6: $b5
    cp l                                          ; $7eb7: $bd
    dec hl                                        ; $7eb8: $2b
    ld l, $b5                                     ; $7eb9: $2e $b5
    push af                                       ; $7ebb: $f5
    nop                                           ; $7ebc: $00
    ld l, d                                       ; $7ebd: $6a
    ld a, [hl+]                                   ; $7ebe: $2a
    dec a                                         ; $7ebf: $3d
    push hl                                       ; $7ec0: $e5
    ld a, [hl]                                    ; $7ec1: $7e
    cpl                                           ; $7ec2: $2f
    dec a                                         ; $7ec3: $3d
    ld h, c                                       ; $7ec4: $61
    nop                                           ; $7ec5: $00
    cp $14                                        ; $7ec6: $fe $14
    nop                                           ; $7ec8: $00
    dec c                                         ; $7ec9: $0d
    nop                                           ; $7eca: $00
    jp c, RST_00                                  ; $7ecb: $da $00 $00

    ld l, b                                       ; $7ece: $68
    ld l, c                                       ; $7ecf: $69
    ld l, d                                       ; $7ed0: $6a
    ld l, e                                       ; $7ed1: $6b
    ld l, h                                       ; $7ed2: $6c
    ld l, l                                       ; $7ed3: $6d
    ld l, [hl]                                    ; $7ed4: $6e
    ld l, [hl]                                    ; $7ed5: $6e
    nop                                           ; $7ed6: $00
    ld l, a                                       ; $7ed7: $6f
    ld [hl], b                                    ; $7ed8: $70
    ld [hl], c                                    ; $7ed9: $71
    ld [hl], d                                    ; $7eda: $72
    ld [hl], e                                    ; $7edb: $73
    ld l, [hl]                                    ; $7edc: $6e
    ld l, [hl]                                    ; $7edd: $6e
    ld [hl], h                                    ; $7ede: $74
    nop                                           ; $7edf: $00
    ld [hl], l                                    ; $7ee0: $75

jr_0c4_7ee1:
    halt                                          ; $7ee1: $76
    ld [hl], a                                    ; $7ee2: $77
    ld a, b                                       ; $7ee3: $78
    ld a, c                                       ; $7ee4: $79
    ld a, d                                       ; $7ee5: $7a
    ld a, e                                       ; $7ee6: $7b
    ld a, e                                       ; $7ee7: $7b
    nop                                           ; $7ee8: $00
    ld a, h                                       ; $7ee9: $7c
    ld a, l                                       ; $7eea: $7d
    ld l, [hl]                                    ; $7eeb: $6e
    ld l, [hl]                                    ; $7eec: $6e
    ld a, [hl]                                    ; $7eed: $7e
    ld a, a                                       ; $7eee: $7f
    add b                                         ; $7eef: $80
    add c                                         ; $7ef0: $81
    nop                                           ; $7ef1: $00
    add d                                         ; $7ef2: $82
    ld l, [hl]                                    ; $7ef3: $6e
    ld l, [hl]                                    ; $7ef4: $6e
    add e                                         ; $7ef5: $83
    add h                                         ; $7ef6: $84
    add l                                         ; $7ef7: $85
    add [hl]                                      ; $7ef8: $86
    add a                                         ; $7ef9: $87
    nop                                           ; $7efa: $00
    ld a, c                                       ; $7efb: $79
    ld a, c                                       ; $7efc: $79
    adc b                                         ; $7efd: $88
    adc c                                         ; $7efe: $89
    adc d                                         ; $7eff: $8a
    adc e                                         ; $7f00: $8b

jr_0c4_7f01:
    adc h                                         ; $7f01: $8c
    adc l                                         ; $7f02: $8d
    nop                                           ; $7f03: $00
    adc [hl]                                      ; $7f04: $8e
    adc a                                         ; $7f05: $8f
    sub b                                         ; $7f06: $90
    sub c                                         ; $7f07: $91
    sub d                                         ; $7f08: $92
    sub e                                         ; $7f09: $93
    sub h                                         ; $7f0a: $94
    sub l                                         ; $7f0b: $95
    nop                                           ; $7f0c: $00
    sub [hl]                                      ; $7f0d: $96
    sub a                                         ; $7f0e: $97
    sbc b                                         ; $7f0f: $98
    sbc c                                         ; $7f10: $99
    sbc d                                         ; $7f11: $9a
    sbc e                                         ; $7f12: $9b
    sbc h                                         ; $7f13: $9c
    sbc l                                         ; $7f14: $9d
    ld b, c                                       ; $7f15: $41
    sbc [hl]                                      ; $7f16: $9e
    dec b                                         ; $7f17: $05
    ld h, b                                       ; $7f18: $60
    sbc a                                         ; $7f19: $9f
    and b                                         ; $7f1a: $a0
    and c                                         ; $7f1b: $a1
    and d                                         ; $7f1c: $a2
    and e                                         ; $7f1d: $a3
    dec b                                         ; $7f1e: $05
    ld h, b                                       ; $7f1f: $60
    inc b                                         ; $7f20: $04
    and h                                         ; $7f21: $a4
    and l                                         ; $7f22: $a5
    and [hl]                                      ; $7f23: $a6
    and a                                         ; $7f24: $a7

jr_0c4_7f25:
    xor b                                         ; $7f25: $a8
    dec b                                         ; $7f26: $05
    ld b, b                                       ; $7f27: $40
    rst $10                                       ; $7f28: $d7
    push de                                       ; $7f29: $d5
    ld bc, $a8a7                                  ; $7f2a: $01 $a7 $a8
    xor c                                         ; $7f2d: $a9
    xor d                                         ; $7f2e: $aa
    xor e                                         ; $7f2f: $ab
    xor h                                         ; $7f30: $ac
    xor l                                         ; $7f31: $ad
    dec b                                         ; $7f32: $05
    jr c, jr_0c4_7f76                             ; $7f33: $38 $41

    xor e                                         ; $7f35: $ab
    inc c                                         ; $7f36: $0c

jr_0c4_7f37:
    ld [$afae], sp                                ; $7f37: $08 $ae $af

Call_0c4_7f3a:
    or b                                          ; $7f3a: $b0
    or c                                          ; $7f3b: $b1
    or d                                          ; $7f3c: $b2
    dec b                                         ; $7f3d: $05
    jr z, jr_0c4_7f48                             ; $7f3e: $28 $08

    xor h                                         ; $7f40: $ac
    reti                                          ; $7f41: $d9


    jp c, $01d8                                   ; $7f42: $da $d8 $01

    nop                                           ; $7f45: $00
    or e                                          ; $7f46: $b3
    or h                                          ; $7f47: $b4

jr_0c4_7f48:
    or l                                          ; $7f48: $b5
    jr nz, jr_0c4_7f01                            ; $7f49: $20 $b6

    or a                                          ; $7f4b: $b7
    dec b                                         ; $7f4c: $05
    jr z, jr_0c4_7f25                             ; $7f4d: $28 $d6

    call nc, $d0d3                                ; $7f4f: $d4 $d3 $d0
    ret nc                                        ; $7f52: $d0

    ld bc, $d2d0                                  ; $7f53: $01 $d0 $d2
    cp b                                          ; $7f56: $b8
    cp c                                          ; $7f57: $b9
    cp d                                          ; $7f58: $ba
    cp e                                          ; $7f59: $bb
    cp h                                          ; $7f5a: $bc
    dec b                                         ; $7f5b: $05
    jr z, jr_0c4_7f5e                             ; $7f5c: $28 $00

jr_0c4_7f5e:
    xor h                                         ; $7f5e: $ac
    pop de                                        ; $7f5f: $d1
    rst $08                                       ; $7f60: $cf
    adc $cd                                       ; $7f61: $ce $cd
    call $bdcc                                    ; $7f63: $cd $cc $bd
    ld [$bfbe], sp                                ; $7f66: $08 $be $bf
    ret nz                                        ; $7f69: $c0

    pop bc                                        ; $7f6a: $c1
    dec b                                         ; $7f6b: $05
    ld h, b                                       ; $7f6c: $60
    jp nz, $c4c3                                  ; $7f6d: $c2 $c3 $c4

    jr nz, jr_0c4_7f37                            ; $7f70: $20 $c5

Call_0c4_7f72:
    add $05                                       ; $7f72: $c6 $05
    ld h, b                                       ; $7f74: $60
    rst $00                                       ; $7f75: $c7

jr_0c4_7f76:
    ret z                                         ; $7f76: $c8

    ret                                           ; $7f77: $c9


    jp z, $a8cb                                   ; $7f78: $ca $cb $a8

    dec b                                         ; $7f7b: $05
    ld h, b                                       ; $7f7c: $60
    ld b, $01                                     ; $7f7d: $06 $01
    ld h, b                                       ; $7f7f: $60
    rlca                                          ; $7f80: $07
    ld bc, $0f50                                  ; $7f81: $01 $50 $0f
    rrca                                          ; $7f84: $0f
    rrca                                          ; $7f85: $0f
    add e                                         ; $7f86: $83
    dec b                                         ; $7f87: $05
    db $10                                        ; $7f88: $10
    rrca                                          ; $7f89: $0f
    rrca                                          ; $7f8a: $0f
    dec b                                         ; $7f8b: $05
    dec b                                         ; $7f8c: $05
    dec c                                         ; $7f8d: $0d
    ld bc, $1550                                  ; $7f8e: $01 $50 $15
    ld [$0907], sp                                ; $7f91: $08 $07 $09
    dec bc                                        ; $7f94: $0b
    add hl, bc                                    ; $7f95: $09
    add hl, bc                                    ; $7f96: $09
    ld a, [bc]                                    ; $7f97: $0a
    ld [bc], a                                    ; $7f98: $02
    nop                                           ; $7f99: $00
    inc bc                                        ; $7f9a: $03
    ld [$180a], sp                                ; $7f9b: $08 $0a $18
    ld d, [hl]                                    ; $7f9e: $56
    dec bc                                        ; $7f9f: $0b
    ld [de], a                                    ; $7fa0: $12
    ld [$0f0a], sp                                ; $7fa1: $08 $0a $0f
    db $10                                        ; $7fa4: $10
    add hl, bc                                    ; $7fa5: $09
    dec c                                         ; $7fa6: $0d
    nop                                           ; $7fa7: $00
    dec e                                         ; $7fa8: $1d
    nop                                           ; $7fa9: $00
    ld a, [bc]                                    ; $7faa: $0a
    cp a                                          ; $7fab: $bf
    inc de                                        ; $7fac: $13
    ld [$2a0b], sp                                ; $7fad: $08 $0b $2a
    ld [$0811], sp                                ; $7fb0: $08 $11 $08
    dec d                                         ; $7fb3: $15
    ld [$1016], sp                                ; $7fb4: $08 $16 $10
    dec sp                                        ; $7fb7: $3b
    nop                                           ; $7fb8: $00
    dec [hl]                                      ; $7fb9: $35
    ld [$41ef], sp                                ; $7fba: $08 $ef $41
    db $10                                        ; $7fbd: $10
    ld [hl-], a                                   ; $7fbe: $32
    ld [$0028], sp                                ; $7fbf: $08 $28 $00
    add hl, bc                                    ; $7fc2: $09
    inc bc                                        ; $7fc3: $03
    nop                                           ; $7fc4: $00
    ld b, e                                       ; $7fc5: $43
    ld [$1016], sp                                ; $7fc6: $08 $16 $10
    ld e, c                                       ; $7fc9: $59
    nop                                           ; $7fca: $00
    dec a                                         ; $7fcb: $3d
    dec bc                                        ; $7fcc: $0b
    inc c                                         ; $7fcd: $0c
    ld bc, $2b08                                  ; $7fce: $01 $08 $2b
    ld [$081c], sp                                ; $7fd1: $08 $1c $08
    ld b, d                                       ; $7fd4: $42
    db $10                                        ; $7fd5: $10
    ld a, [bc]                                    ; $7fd6: $0a
    inc de                                        ; $7fd7: $13
    db $10                                        ; $7fd8: $10
    ld a, a                                       ; $7fd9: $7f
    inc c                                         ; $7fda: $0c
    inc a                                         ; $7fdb: $3c
    ld [$1045], sp                                ; $7fdc: $08 $45 $10
    ld b, $10                                     ; $7fdf: $06 $10
    inc d                                         ; $7fe1: $14
    jr z, @+$7f                                   ; $7fe2: $28 $7d

    ld [$2082], sp                                ; $7fe4: $08 $82 $20
    adc b                                         ; $7fe7: $88
    ld [$25ff], sp                                ; $7fe8: $08 $ff $25
    jr @+$65                                      ; $7feb: $18 $63

    jr nz, @+$72                                  ; $7fed: $20 $70

    jr @+$6d                                      ; $7fef: $18 $6b

    db $10                                        ; $7ff1: $10
    sub [hl]                                      ; $7ff2: $96
    nop                                           ; $7ff3: $00
    ld l, [hl]                                    ; $7ff4: $6e
    ld [$1007], sp                                ; $7ff5: $08 $07 $10
    adc l                                         ; $7ff8: $8d
    nop                                           ; $7ff9: $00
    add b                                         ; $7ffa: $80
    ld e, l                                       ; $7ffb: $5d
    nop                                           ; $7ffc: $00
    dec bc                                        ; $7ffd: $0b
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
